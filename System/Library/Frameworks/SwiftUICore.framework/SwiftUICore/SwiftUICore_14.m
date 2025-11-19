uint64_t initializeBufferWithCopyOfBuffer for ForEachState.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);

  return a1;
}

uint64_t closure #1 in ForEachChild.updateValue()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v43 = *a1;
  v5 = v43;
  v6 = *(v43 + 104);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v43 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v31 - v10;
  v34 = v7;
  v33 = swift_getAssociatedTypeWitness();
  v11 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v31 - v12;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  v17 = a1 + *(v5 + 160);
  swift_beginAccess();
  v18 = *(v5 + 112);
  v19 = v8;
  v39 = v8;
  v40 = *(v43 + 88);
  v41 = v6;
  v42 = v18;
  v20 = type metadata accessor for ForEach();
  result = (*(*(v20 - 8) + 48))(v17, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = *&v17[*(v20 + 60)];
    v23 = *&v17[*(v20 + 60) + 8];
    v31[0] = v19;
    v31[1] = v23;
    v43 = v22;
    (*(v13 + 16))(v16, v17, v19);
    v24 = *(*a2 + 192);
    swift_beginAccess();
    v25 = v32;
    v26 = v33;
    (*(v11 + 16))(v32, a2 + v24, v33);

    v27 = dispatch thunk of Collection.subscript.read();
    v29 = v35;
    v28 = v36;
    v30 = v37;
    (*(v36 + 16))(v35);
    v27(&v39, 0);
    (*(v11 + 8))(v25, v26);
    (*(v13 + 8))(v16, v31[0]);
    (v43)(v29);

    return (*(v28 + 8))(v29, v30);
  }

  return result;
}

uint64_t assignWithCopy for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 17 + a1) & ~*(v5 + 80), (*(v5 + 80) + 17 + a2) & ~*(v5 + 80));
  return a1;
}

unsigned __int8 *assignWithCopy for _ConditionalContent(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 16))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

void *initializeWithCopy for CodableOptional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

uint64_t destroy for CodableOptional(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void ForEachState.Transform.apply(sublist:)(SwiftUI::ViewTraitCollection *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  ForEachState.Transform.bindID(_:)(&a1[2], a2, a3 & 0x10101, a4, a5);

  MEMORY[0x193ABF170](v6);
  if (*((a1[9].storage._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[9].storage._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  ForEachState.Item.applyTraits(to:)(a1 + 10);
}

void protocol witness for _ViewList_SublistTransform_Item.apply(sublist:) in conformance ForEachState<A, B, C>.Transform(SwiftUI::ViewTraitCollection *a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 8);
  if (*(v2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  ForEachState.Transform.apply(sublist:)(a1, *v2, v4 | v5, *(a2 + 16), *(a2 + 24));
}

uint64_t ForEachState.Transform.bindID(_:)(uint64_t result, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = *(result + 168);
      v10 = *(result + 172);

      if ((v10 & 1) == 0)
      {
        v11 = a3 & 0x100;
        v12 = *a2;
        if ((a3 & 0x10000) != 0)
        {
          v13 = *(a2 + v12[25]);
          v14 = *(a2 + v12[21]);
          type metadata accessor for _AnyHashableBox<ForEachConstantID>();
          v15 = swift_allocObject();
          *(v15 + 16) = v13;
          *(v15 + 24) = v9;
          v16 = *(v8 + 8);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
            v16 = result;
          }

          v17 = *(v16 + 16);
          v18 = *(v16 + 24);
          v19 = v17 + 1;
          if (v17 >= v18 >> 1)
          {
            v21 = v16;
            v22 = *(v16 + 16);
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v21);
            v17 = v22;
            v16 = result;
          }

          *(v16 + 16) = v19;
          v20 = v16 + 24 * v17;
          *(v20 + 32) = v15;
          *(v20 + 40) = v14;
          *(v20 + 48) = v9;
          *(v20 + 52) = BYTE1(v11);
          *(v8 + 8) = v16;
        }

        else
        {
          return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(a2 + v12[20], v9, v11 != 0, *(a2 + v12[21]), a5);
        }
      }
    }
  }

  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc14ContentIDTraitK0V_Tt0g5(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  result = *v2 + 32;
  v7 = -*(*v2 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= v5[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v9 = result + 40;
    outlined init with copy of AnyTrackedValue(result, &v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    v12 = (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    result = v9;
    if (v12 == &type metadata for DynamicViewContentIDTraitKey)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
  *v3 = v5;
LABEL_7:
  v15 = v5[2];
  v14 = v5[3];
  if (v15 >= v14 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
    *v3 = v5;
  }

  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<DynamicViewContentIDTraitKey>, &type metadata for DynamicViewContentIDTraitKey, &protocol witness table for DynamicViewContentIDTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
  v19 = v16;
  v20 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
  *&v18 = a1;
  BYTE8(v18) = a2 & 1;
  v5[2] = v15 + 1;
  result = outlined init with take of AnyTrackedValue(&v18, &v5[5 * v15 + 4]);
  *v3 = v5;
  return result;
}

Swift::Void __swiftcall ForEachState.Item.applyTraits(to:)(SwiftUI::ViewTraitCollection *to)
{
  v2 = *v1;
  _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc14ContentIDTraitK0V_Tt0g5(*(v1 + *(*v1 + 208)), 0);
  v3 = *(*v1 + 200);
  _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdK0V_Tt0g5(*(v1 + v3), 0);
  if (*(v1 + *(*v1 + 224)) == 1)
  {
    _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA03TaggdK0VySiG_Tt0g5(*(v1 + v3), 0);
  }

  else
  {
    ViewTraitCollection.setTagIfUnset<A>(for:value:)(*(v2 + 120), v1 + *(*v1 + 160), *(v2 + 120));
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdK0V_Tt0g5(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  result = *v2 + 32;
  v7 = -*(*v2 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= v5[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v9 = result + 40;
    outlined init with copy of AnyTrackedValue(result, &v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    v12 = (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    result = v9;
    if (v12 == &type metadata for DynamicViewContentOffsetTraitKey)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
  *v3 = v5;
LABEL_7:
  v15 = v5[2];
  v14 = v5[3];
  if (v15 >= v14 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
    *v3 = v5;
  }

  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<DynamicViewContentOffsetTraitKey>, &type metadata for DynamicViewContentOffsetTraitKey, &protocol witness table for DynamicViewContentOffsetTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
  v19 = v16;
  v20 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
  *&v18 = a1;
  BYTE8(v18) = a2 & 1;
  v5[2] = v15 + 1;
  result = outlined init with take of AnyTrackedValue(&v18, &v5[5 * v15 + 4]);
  *v3 = v5;
  return result;
}

uint64_t ViewTraitCollection.setTagIfUnset<A>(for:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TagValueTraitKey.Value();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(a3 - 8);
  (*(v10 + 16))(&v13 - v8, a2, a3, v7);
  (*(v10 + 56))(v9, 0, 1, a3);
  v11 = type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  ViewTraitCollection.setValueIfUnset<A>(_:for:)(v9, v11, v11);
  return (*(v6 + 8))(v9, v5);
}

uint64_t ViewTraitCollection.setValueIfUnset<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ViewTraitCollection.AnyTrait();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v33 = &v28 - v14;
  v36 = v4;
  v15 = *v4;
  result = *v4 + 32;
  v17 = -*(*v4 + 16);
  v18 = -1;
  while (v17 + v18 != -1)
  {
    if (++v18 >= v15[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v19 = result + 40;
    outlined init with copy of AnyTrackedValue(result, v37);
    v20 = v38;
    v5 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v3 = (*(v5 + 1))(v20, v5);
    __swift_destroy_boxed_opaque_existential_1(v37);
    result = v19;
    if (v3 == a3)
    {
      return result;
    }
  }

  (*(v29 + 16))(v9, v31, v30, v13);
  v21 = swift_getAssociatedTypeWitness();
  v5 = v33;
  (*(*(v21 - 8) + 32))(v33, v9, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v36;
  *v36 = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
  *v3 = v15;
LABEL_7:
  v24 = v15[2];
  v23 = v15[3];
  if (v24 >= v23 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v15);
    *v3 = v15;
  }

  v26 = v34;
  v25 = v35;
  v27 = v32;
  (*(v34 + 16))(v32, v5, v35);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v24, v27, v3, v25, &protocol witness table for ViewTraitCollection.AnyTrait<A>);
  result = (*(v26 + 8))(v5, v25);
  *v3 = v15;
  return result;
}

uint64_t Font.init(_:)(uint64_t a1)
{
  _s7SwiftUI7FontBoxCyAA0C0V08PlatformC8ProviderVGMaTm_0(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void type metadata accessor for FontBox<Font.PlatformFontProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI7FontBoxCyAA0C0V08PlatformC8ProviderVGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for FontBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider()
{
  result = lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider;
  if (!lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider;
  if (!lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider;
  if (!lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Font.PlatformFontProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t SecondaryLookupTrackedValue.unwrap<A>()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  if (*(v7 + 64) == *(*(a1 - 8) + 64))
  {
    v8 = *(*(a1 - 8) + 16);

    return v8(a2, v2, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for AttributeScopes.SwiftUIAttributes()
{
  result = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AttributeScopes.FoundationAttributes();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  _ProposedSize.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      if (*(v10 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((a2 & 1) != 0 || *v10 != *&a1)
      {
        goto LABEL_4;
      }

      if (*(v10 + 24))
      {
        if (a4)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0 && *(v10 + 16) == *&a3)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer()
{
  result = lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer;
  if (!lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer);
  }

  return result;
}

uint64_t DisplayList.GraphicsRenderer.init(platformViewMode:)(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 48) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v3;
  *(v1 + 32) = v3;
  *(v1 + 40) = v3;
  *(v1 + 56) = 0;
  *(v1 + 72) = xmmword_18DDAB910;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = MEMORY[0x1E69E7CC0];
  *(v1 + 112) = v2;
  v4 = __CFADD__(lastIdentity, 1);
  v5 = ++lastIdentity;
  if (v4)
  {
    v7 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *(v1 + 48) = v5;
    v7 = 1;
  }

  *(v1 + 52) = v6;
  *(v1 + 64) = v7;
  return v1;
}

uint64_t protocol witness for ViewGraphOwner.viewGraph.getter in conformance ImageRendererHost<A>()
{
  specialized ImageRendererHost.viewGraph.getter();
}

uint64_t ImageRendererHost.render(ifNewerThan:renderer:)(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t (*)(CGFloat *a1), double), uint64_t a4)
{
  ImageRendererHost.renderUntilStable()();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v9 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)(v4, a1, a2 & 1, a3, a4);
  static Update.end()();
  result = _MovableLockUnlock(v9);
  *(v4 + 80) = 1;
  return result;
}

uint64_t ImageRendererHost.renderUntilStable()()
{
  v1 = 32;
  while (1)
  {
    *(v0 + 81) = 1;
    AGGraphClearUpdate();
    v4 = 0;
    v5 = 1;
    v2 = &v4;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(0.0, 1, *(&v2 - 1));
    result = AGGraphSetUpdate();
    if (*(v0 + 82) != 1)
    {
      break;
    }

    *(v0 + 81) = 0;
    if (!--v1)
    {
      return result;
    }
  }

  *(v0 + 81) = 0;
  return result;
}

double ImageRendererHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 64);
  *a1 = result;
  return result;
}

void type metadata accessor for PassthroughSubject<(), Never>()
{
  if (!lazy cache variable for type metadata for PassthroughSubject<(), Never>)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PassthroughSubject<(), Never>);
    }
  }
}

uint64_t ImageRendererHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ViewGraphOwner(0, &lazy cache variable for type metadata for ViewGraphOwner);
  if (result == a1)
  {
    v7 = v2;
    v8 = &protocol witness table for ImageRendererHost<A>;
    v2 = *(a1 - 8);
    if (*(v2 + 64) == 16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    v7 = v2;
    v8 = &protocol witness table for ImageRendererHost<A>;
    v2 = *(a1 - 8);
    if (*(v2 + 64) != 16)
    {
      __break(1u);
      return result;
    }

LABEL_9:
    (*(v2 + 16))(a2, &v7, a1);
    return (*(v2 + 56))(a2, 0, 1, a1);
  }

  result = type metadata accessor for ViewGraphOwner(0, &lazy cache variable for type metadata for ViewGraphDelegate);
  if (result == a1)
  {
    goto LABEL_8;
  }

  v6 = *(*(a1 - 8) + 56);

  return v6(a2, 1, 1, a1);
}

uint64_t type metadata accessor for CustomAttributeWriter(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for ViewGraphOwner(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ImageRendererHost.renderingPhase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 58);
  return result;
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance ImageRendererHost<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ImageRendererHost.currentTimestamp.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void _MovableLockSyncMain(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (pthread_self() == *(a1 + 112))
  {

    a3(a2);
  }

  else
  {
    *(a1 + 136) = a3;
    *(a1 + 144) = a2;
    if (*(a1 + 153) & 1) != 0 || (*(a1 + 152) & 1) == 0 && (*(a1 + 152) = 1, dispatch_async_f(MEMORY[0x1E69E96A0], a1, sync_main_callback), (*(a1 + 153)))
    {
      pthread_cond_signal_thread_np((a1 + 64), *(a1 + 112));
    }

    while (*(a1 + 136))
    {
      pthread_cond_wait((a1 + 64), a1);
    }
  }
}

uint64_t ImageRendererHost.valuesNeedingUpdate.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void specialized ImageRendererHost.requestUpdate(after:)()
{
  if (*(v0 + 81))
  {
    *(v0 + 82) = 1;
  }

  else
  {
    *(v0 + 136) = 1;
    if (*(v0 + 80) == 1)
    {
      *(v0 + 80) = 0;
      v1 = *(v0 + 32);

      v1(v2);
    }
  }
}

uint64_t closure #1 in ImageRenderer.initializeRenderer()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = objc_opt_self();

  if ([v7 isMainThread])
  {
    closure #1 in closure #1 in ImageRenderer.initializeRenderer()();
  }

  else
  {
    v8 = [objc_opt_self() mainRunLoop];
    type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDA6EB0;
    v10 = *MEMORY[0x1E695DA28];
    *(v9 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for NSRunLoopMode(0);
    v11 = v10;
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = partial apply for closure #1 in closure #1 in ImageRenderer.initializeRenderer();
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_78;
    v13 = _Block_copy(aBlock);

    [v8 performInModes:isa block:v13];

    _Block_release(v13);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = direct field offset for ImageRenderer.observationEnabled;
    v16 = result;
    swift_beginAccess();
    LODWORD(v15) = *(v16 + v15);

    if (v15 == 1)
    {
      v18 = 17;
      v17 = swift_allocObject();
      v17[2] = a2;
      v17[3] = a3;
      v17[4] = a1;

      static Update.enqueueAction(reason:_:)(&v18, partial apply for closure #2 in closure #1 in ImageRenderer.initializeRenderer(), v17);
    }
  }

  return result;
}

void *ImageRenderer.currentScale.didset(double a1)
{
  v2 = *(v1 + 32);
  if (v2 != a1)
  {
    v3 = *(v1 + 24);
    v4 = (v3 + *(*v3 + 240));
    swift_beginAccess();
    v5 = *v4;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v4, v2);

    if (v4[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v5, *v4);
    }

    swift_endAccess();
    return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(2u, 1, *v3, &protocol witness table for ImageRendererHost<A>);
  }

  return result;
}

uint64_t type metadata completion function for ImageRenderer()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *specialized ImageRenderer.init(content:)(uint64_t a1)
{
  type metadata accessor for PassthroughSubject<(), Never>();
  swift_allocObject();
  v1[2] = PassthroughSubject.init()();
  v1[4] = 0x3FF0000000000000;
  ObservationRegistrar.init()();
  *(v1 + direct field offset for ImageRenderer._seed) = 0;
  *(v1 + direct field offset for ImageRenderer.observationEnabled) = 0;
  type metadata accessor for ImageRendererHost();
  swift_allocObject();
  v1[3] = specialized ImageRendererHost.init(content:)(a1);
  ImageRenderer.initializeRenderer()();
  return v1;
}

void *ImageRenderer.init(content:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized ImageRenderer.init(content:)(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t type metadata completion function for ImageRendererHost()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void *specialized ImageRendererHost.init(content:)(uint64_t a1)
{
  v2 = v1;
  v55 = *MEMORY[0x1E69E9840];
  v49 = *v1;
  v4 = v49;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  *(v1 + 4) = -1;
  *(v1 + 10) = 0;
  *(v1 + 6) = 1;
  *(v1 + 28) = 3;
  v1[4] = _ViewInputs.base.modify;
  v1[5] = 0;
  *(v1 + 28) = 0;
  *(v1 + 58) = 0;
  v1[8] = 0;
  v1[9] = 0;
  *(v1 + 79) = 0;
  v52[0] = 3;
  type metadata accessor for DisplayList.GraphicsRenderer();
  swift_allocObject();
  v1[11] = DisplayList.GraphicsRenderer.init(platformViewMode:)(v52);
  v1[18] = 0;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 121) = 0u;
  v15 = v2 + *(*v2 + 248);
  *v15 = 0;
  v15[8] = 1;
  *(v15 + 2) = 0;
  v15[24] = 1;
  v16 = *(v4 + 80);
  v17 = *(*(v16 - 8) + 16);
  v18 = v2 + *(*v2 + 232);
  v47 = a1;
  v48 = v16;
  v17(v18, a1);
  EnvironmentValues.init()(&v53);
  static Locale.current.getter();
  v19 = *(v6 + 16);
  v19(v11, v14, v5);
  v20 = v53;
  v19(v8, v11, v5);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v53, v8);

  v21 = *(v6 + 8);
  v21(v8, v5);
  v22 = v54;
  if (v54)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v20, v53);
  }

  v21(v11, v5);
  v21(v14, v5);
  v23 = _CUIDefaultDisplayGamut();
  if (v23 > 1)
  {
    goto LABEL_15;
  }

  v24 = v23;
  v25 = v53;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(&v53, v24);

  if (v22)
  {
    v26 = v53;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayGamutK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v25, v53);
  }

  else
  {

    v26 = v53;
  }

  v28 = v48;
  v27 = v49;
  v29 = v54;
  v30 = (v2 + *(*v2 + 240));
  *v30 = v26;
  v30[1] = v29;

  specialized static Update.begin()();
  type metadata accessor for ViewGraph();
  v52[0] = 17;
  v31 = *(v27 + 88);
  v32 = ViewGraph.__allocating_init<A>(rootViewType:requestedOutputs:)(v28, v52, v28, v31);
  v2[6] = v32;
  swift_beginAccess();
  type metadata accessor for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>();
  v34 = v33;
  v35 = UnsafeHeterogeneousBuffer.allocate(bytes:)(16);
  *v35 = v34;
  v35[1] = 16;
  v36 = *(v32 + 216);
  if (!v36)
  {
LABEL_16:
    __break(1u);
  }

  v37 = v35 - v36;
  if (v37 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v37 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = *(v32 + 228);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v32 + 228) = v40;
  swift_endAccess();

  ViewGraph.setRootView<A>(_:)(v47, v28, v31, v41, v42, v43, v44, v45);

  swift_beginAccess();
  v50 = v26;
  v51 = 0;

  AGGraphSetValue();

  ViewGraphRootValueUpdater.initializeViewGraph()();
  ImageRendererHost.updateSizeThatFitsObserver()();
  static Update.end()();

  return v2;
}

uint64_t _CUIDefaultDisplayGamut()
{
  if (_CUIDefaultDisplayGamut_once != -1)
  {
    _CUIDefaultDisplayGamut_cold_1();
  }

  return _CUIDefaultDisplayGamut_defaultGamut;
}

void type metadata accessor for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>()
{
  if (!lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>)
  {
    v0 = type metadata accessor for ViewGraphFeatureBuffer._VTable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>);
    }
  }
}

uint64_t ImageRendererHost.updateSizeThatFitsObserver()()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 248);
  v3 = *v2;
  v4 = v2[8];
  v5 = *(v2 + 2);
  v6 = v2[24];
  v7 = v0[6];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v1 + 80);
  *(v9 + 24) = *(v1 + 88);
  *(v9 + 32) = v8;
  *(v9 + 40) = v3;
  *(v9 + 48) = v4;
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  swift_beginAccess();

  *(v7 + 352) = MEMORY[0x1E69E7CC8];
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer();
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 2;
  *(v10 + 56) = partial apply for closure #1 in ImageRendererHost.updateSizeThatFitsObserver();
  *(v10 + 64) = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v7 + 352);
  *(v7 + 352) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v3, v4, v5, v6, isUniquelyReferenced_nonNull_native);
  *(v7 + 352) = v13;
  swift_endAccess();
}

uint64_t sub_18D0BA1F4()
{

  return swift_deallocObject();
}

uint64_t ImageRenderer.initializeRenderer()()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;
  *(v2 + 32) = partial apply for closure #1 in ImageRenderer.initializeRenderer();
  *(v2 + 40) = v4;

  *(v2 + 80) = 1;
}

uint64_t sub_18D0BA308()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D0BA340()
{

  return swift_deallocObject();
}

void type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>)
  {
    type metadata accessor for NSRunLoopMode(255);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>);
    }
  }
}

uint64_t specialized ImageRendererHost.cgImage.getter()
{
  result = *(v0 + 96);
  if (!result || *(v0 + 136) == 1)
  {
    ImageRendererHost.render(ifNewerThan:renderer:)(*(v0 + 128), 0, partial apply for closure #1 in ImageRendererHost.cgImage.getter, v0);
    *(v0 + 136) = 0;
    return *(v0 + 96);
  }

  return result;
}

void *ImageRendererHost.cgImage.getter()
{
  v0 = specialized ImageRendererHost.cgImage.getter();
  v1 = v0;
  return v0;
}

void *ImageRenderer.scale.setter(double a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  return ImageRenderer.currentScale.didset(v2);
}

void specialized static CTFontDescriptorRef.fontDescriptor(textStyle:design:weight:sizeCategory:legibilityWeight:)(uint64_t a1, void *a2, uint64_t a3, char a4, char *a5, unsigned __int8 *a6)
{
  v8 = *a5;
  v9 = *a6;
  v10 = MEMORY[0x1E69E7CC8];
  if (!a2)
  {
    v17 = MEMORY[0x1E69E7CC8];
    if (a4)
    {
LABEL_5:
      if (*(v17 + 16))
      {
        v20 = *MEMORY[0x1E6965898];
        type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any]);
        v32 = v21;
        *&v31 = v17;
        outlined init with take of Any(&v31, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v20, isUniquelyReferenced_nonNull_native);
        if (v9 == 2)
        {
LABEL_8:
          v25 = *MEMORY[0x1E6965878];
          v32 = MEMORY[0x1E69E7668];
          LODWORD(v31) = 3;
          outlined init with take of Any(&v31, v30);
          v26 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v25, v26);
          LOBYTE(v31) = v8;
          v27 = specialized DynamicTypeSize.ctTextSize.getter();
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v28 = v27;
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          CTFontDescriptorCreateWithTextStyleAndAttributes();

          return;
        }
      }

      else
      {

        if (v9 == 2)
        {
          goto LABEL_8;
        }
      }

      v23 = *MEMORY[0x1E69657F0];
      v32 = MEMORY[0x1E69E6530];
      *&v31 = v9 & 1;
      outlined init with take of Any(&v31, v30);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v23, v24);
      goto LABEL_8;
    }

LABEL_4:
    v18 = *MEMORY[0x1E6965970];
    v32 = MEMORY[0x1E69E7DE0];
    *&v31 = a3;
    outlined init with take of Any(&v31, v30);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v18, v19);
    goto LABEL_5;
  }

  v11 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    type metadata accessor for CFStringRef(0);
    v32 = v13;
    *&v31 = a2;
    outlined init with take of Any(&v31, v30);
    v14 = a2;
    v15 = v11;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v15, v16);

    v17 = v10;
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __break(1u);
}

uint64_t specialized static DefaultFontDefinition.resolveTextStyleFont(textStyle:design:weight:in:)(char *a1, unsigned __int8 *a2, uint64_t a3, char a4, char *a5)
{
  LODWORD(v7) = *a2;
  v8 = *a5;
  v9 = a5[1];
  v17[1] = *a1;
  result = specialized Font.TextStyle.ctTextStyle.getter();
  v11 = result;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_9:
      v7 = *MEMORY[0x1E69658C8];
      if (!*MEMORY[0x1E69658C8])
      {
        __break(1u);
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (v7 != 3)
    {
LABEL_11:
      v7 = 0;
LABEL_14:
      v17[0] = v8;
      v16 = v9;
      v13 = v11;
      specialized static CTFontDescriptorRef.fontDescriptor(textStyle:design:weight:sizeCategory:legibilityWeight:)(v13, v7, a3, a4 & 1, v17, &v16);
      v15 = v14;

      return v15;
    }

    v7 = *MEMORY[0x1E69658C0];
    if (*MEMORY[0x1E69658C0])
    {
LABEL_13:
      v12 = v7;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v7)
  {
    v7 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.TextStyleProvider(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v10 = *(a1 + 3);
  v11 = a1[5];
  v5 = v1[1];
  v6 = *(v1 + 1);
  v7 = v1[16];
  v13 = *v1;
  v12 = v5;
  v9[0] = v3;
  v9[1] = v2;
  v9[2] = v4;
  return (*(v4 + 8))(&v13, &v12, v6, v7, v9);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef();
}

{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFStringRef(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for NSAttributedStringKey, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for RBImageRendererProperty, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for RBSymbolAnimationOptionKey, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for RBDisplayListInterpolatorOptionKey, specialized _NativeDictionary._insert(at:key:value:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v6 = -1 << *(v5 + 32);
  v7 = a2 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    a3(0);
    lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(a4, a5);
    do
    {
      v11 = *(*(v5 + 48) + 8 * v7);
      v12 = static _CFObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _DictionaryStorage<CFStringRef, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>)
  {
    type metadata accessor for CFStringRef(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>);
    }
  }
}

Swift::Void __swiftcall ViewGraph.isHiddenForReuseDidChange()()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    if (*(v0 + 41) == 1)
    {
      swift_beginAccess();
      v4 = *(v0 + 448);
      v5 = *(v4 + 16);
      if (v5)
      {
        v54 = v4 + 32;

        swift_beginAccess();
        swift_beginAccess();
        v6 = 0;
        v53 = *MEMORY[0x1E698D3F8];
        v50 = v5;
        while (v6 < *(v4 + 16))
        {
          v7 = (v54 + 24 * v6);
          v8 = *v7;
          v9 = v7[1];
          v10 = *(v7 + 4);
          if (swift_weakLoadStrong())
          {
            v11 = *(v3 + 72);
            v12 = *(v11 + 16);
            if (v12)
            {
              v13 = v11 + 48;
              while (*(v13 - 16) != v8)
              {
                v13 += 24;
                if (!--v12)
                {
                  goto LABEL_5;
                }
              }

              Attribute = AGWeakAttributeGetAttribute();
              if (Attribute != v53)
              {
                v52 = &v49;
                v56[0] = 0;
                MEMORY[0x1EEE9AC00](Attribute);
                *(&v49 - 4) = v8;
                *(&v49 - 3) = v9;
                *(&v49 - 4) = v10;
                *(&v49 - 1) = v56;
                v51 = v15;
                v16 = type metadata accessor for PreferenceCombiner();
                MEMORY[0x1EEE9AC00](v16);
                *(&v49 - 4) = v17;
                *(&v49 - 3) = partial apply for closure #1 in removeValue #1 <A>(key:) in PreferenceBridge.removeValue(_:for:isInvalidating:);
                *(&v49 - 2) = (&v49 - 6);
                v5 = v50;
                AGGraphMutateAttribute();
                if (v56[0] == 1)
                {
                  v56[0] = 0;
                  GraphHost.graphInvalidation(from:)(v10);
                }
              }
            }

LABEL_5:
          }

          if (++v6 == v5)
          {

            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_31:
      v32 = *(v0 + 56);
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v33 = AGWeakAttributeGetAttribute();
      if (v33 == *MEMORY[0x1E698D3F8] || (v56[0] = 0, MEMORY[0x1EEE9AC00](v33), *(&v49 - 2) = v56, *(&v49 - 2) = v32, MEMORY[0x1EEE9AC00](v34), *(&v49 - 2) = partial apply for closure #1 in PreferenceBridge.removeHostValues(for:isInvalidating:), *(&v49 - 1) = v35, AGGraphMutateAttribute(), (v56[0] & 1) == 0))
      {
LABEL_41:

LABEL_42:

        goto LABEL_43;
      }

      LOBYTE(v55[0]) = 0;
    }

    else
    {
      swift_beginAccess();
      v18 = *(v0 + 448);
      v19 = *(v18 + 16);
      if (v19)
      {
        v54 = v18 + 32;

        swift_beginAccess();
        swift_beginAccess();
        v20 = 0;
        v53 = *MEMORY[0x1E698D3F8];
        v50 = v19;
        while (v20 < *(v18 + 16))
        {
          v21 = (v54 + 24 * v20);
          v22 = *v21;
          v23 = v21[1];
          v24 = *(v21 + 4);
          if (swift_weakLoadStrong())
          {
            v25 = *(v3 + 72);
            v26 = *(v25 + 16);
            if (v26)
            {
              v27 = v25 + 48;
              while (*(v27 - 16) != v22)
              {
                v27 += 24;
                if (!--v26)
                {
                  goto LABEL_19;
                }
              }

              v28 = AGWeakAttributeGetAttribute();
              if (v28 != v53)
              {
                v52 = &v49;
                MEMORY[0x1EEE9AC00](v28);
                *(&v49 - 4) = v22;
                *(&v49 - 3) = v23;
                *(&v49 - 4) = v24;
                v51 = v29;
                v30 = type metadata accessor for PreferenceCombiner();
                MEMORY[0x1EEE9AC00](v30);
                *(&v49 - 4) = v31;
                *(&v49 - 3) = partial apply for closure #1 in addValue #1 <A>(key:) in PreferenceBridge.addValue(_:for:);
                *(&v49 - 2) = (&v49 - 6);
                v19 = v50;
                AGGraphMutateAttribute();
                v56[0] = 0;
                GraphHost.graphInvalidation(from:)(v24);
              }
            }

LABEL_19:
          }

          if (++v20 == v19)
          {

            goto LABEL_36;
          }
        }

        goto LABEL_56;
      }

LABEL_36:
      swift_beginAccess();
      if (static WeakAttribute.== infix(_:_:)())
      {
        goto LABEL_42;
      }

      v36 = *(v0 + 132);
      v32 = *(v0 + 56);
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v37 = AGWeakAttributeGetAttribute();
      if (v37 == *MEMORY[0x1E698D3F8])
      {
        goto LABEL_41;
      }

      MEMORY[0x1EEE9AC00](v37);
      *(&v49 - 4) = v32;
      *(&v49 - 12) = v36;
      MEMORY[0x1EEE9AC00](v38);
      *(&v49 - 2) = _s7SwiftUI16PreferenceBridgeC13addHostValues_3fory14AttributeGraph04WeakI0VyAA0cG0VG_AF0I0VyAA0C4KeysVGtFyAA0F19PreferencesCombinerVzXEfU_TA_0;
      *(&v49 - 1) = v39;
      AGGraphMutateAttribute();
      v56[0] = 0;
    }

    GraphHost.graphInvalidation(from:)(v32);
    goto LABEL_41;
  }

LABEL_43:
  swift_beginAccess();
  v40 = *(v0 + 228);
  if (v40)
  {
    v41 = *(v0 + 216);
    if (!v41)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v42 = 0;
    v43 = v40 - 1;
    do
    {
      v46 = (v41 + v42);
      if (v43)
      {
        v42 += *(v46 + 2);
      }

      else
      {
        v42 = 0;
      }

      v44 = v43 | v42;
      v45 = *v46;
      v55[0] = v46;
      (*(v45 + 136))(v55, v1);
      --v43;
    }

    while (v44);
  }

  swift_beginAccess();
  if ((*(v1 + 128) & 1) != 0 || (swift_beginAccess(), (*(v1 + 41) & 1) == 0))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = *(v1 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v47 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.isHiddenForReuseDidChange(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 32))(a2, v4);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v18 = a1;
    v19 = 0;

    v12 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v18);

    *&v17[0] = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    (v11[1])(v17, &type metadata for Font, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v18 = a1;
    v19 = 0;

    v13 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v18);

    *&v17[0] = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>();
    v20 = v14;
    v21 = &protocol witness table for DerivedValue<A>;
    v18 = v13;

    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  v15 = *&v17[0];
  os_unfair_lock_unlock((v3 + 16));

  return v15;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011DefaultFontF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 112), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>);
    }
  }
}

uint64_t EnvironmentValues.defaultForegroundStyle.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void))
{
  v7 = *v3;

  swift_retain_n();
  a2(v3, a1, &v9);

  if (v3[1])
  {
    a3(v7, *v3);
  }
}

uint64_t key path getter for EnvironmentValues.dynamicTypeSize : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
    v9 = v8;
  }

  else
  {
    result = a3(*a1);
    if (result)
    {
      v7 = *(result + 72);
      v9 = *(result + 80);
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  *a4 = v7;
  *(a4 + 8) = v9 & 1;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV09LineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>();
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);
  }

  if (result[9] != a2)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.lineLimit : EnvironmentValues, serialized(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a2;
  swift_retain_n();
  a5(a2, v9, v10, &v13);

  if (a2[1])
  {
    a6(v11, *a2);
  }
}

uint64_t View.lineLimit(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10 = a1;
  v11 = a2 & 1;
  View.environment<A>(_:_:)(KeyPath, &v10, a3, a4);
}

uint64_t sub_18D0BC1D0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>);
    }
  }
}

void *assignWithTake for ReusableInputStorage(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for AttributedString.AttributeRunBoundaries?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static CUIDesignLibraryCacheKey.Props.value(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v17 = *a1;
  v18 = v3;
  EnvironmentValues.colorScheme.getter(&v16);
  v5 = v16;
  if (v3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v4, &v16);

    v6 = v16;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v4, &v15);

    v7 = v15;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v4, &v17);

    LOBYTE(v9) = v18;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v4);
    if (v10)
    {
      v6 = *(v10 + 72);
    }

    else
    {
      v6 = 0;
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v4);
    if (v11)
    {
      v7 = *(v11 + 72);
    }

    else
    {
      v7 = 0;
    }

    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v4);
    if (!result)
    {
      goto LABEL_12;
    }

    v9 = *(result + 80);
    v17 = *(result + 72);
    result = outlined copy of Material?(v17, v9);
  }

  if (v9 == 0xFF)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_22;
  }

  outlined consume of Material?(v17, v9);
  if (v3)
  {

    v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021AllowsVibrantBlendingI0VG_Tt1g5(v4);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(v4);
    if (!result)
    {
      v12 = 1;
      goto LABEL_22;
    }

    v13 = *(result + 72);
  }

  v14 = 1;
  if ((v13 & 1) == 0)
  {
    v14 = 2;
  }

  if (v13 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = v14;
  }

LABEL_22:
  *a2 = v5;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 8) = v12;
  return result;
}

double specialized ColorProvider.resolveHDR(in:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {

    v8 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(a1);
    v10 = v9;
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a1);
    if (v11)
    {
      v8 = v11[9];
      v10 = v11[10];
    }

    else
    {
      v10 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v8 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v14 = a3 + 13;
  v13[0] = a1;
  v13[1] = a2;
  (v10[1])(v15, &v14, v13, v8, v10);
  result = v15[0];
  *a4 = *v15;
  *(a4 + 16) = 2143289344;
  return result;
}

double protocol witness for static SystemColorDefinition.value(for:environment:) in conformance CoreUIDefaultSystemColorDefinition@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  specialized static CoreUIDefaultSystemColorDefinition.value(for:environment:)(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

double specialized static CoreUIDefaultSystemColorDefinition.value(for:environment:)@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  switch(*a1)
  {
    case 1:
      v11 = *a2;
      v12 = v4;
      v6 = 1;
      goto LABEL_23;
    case 2:
      v11 = *a2;
      v12 = v4;
      v6 = 2;
      goto LABEL_23;
    case 3:
      v11 = *a2;
      v12 = v4;
      v6 = 3;
      goto LABEL_23;
    case 4:
      v11 = *a2;
      v12 = v4;
      v6 = 4;
      goto LABEL_23;
    case 5:
      v11 = *a2;
      v12 = v4;
      v6 = 5;
      goto LABEL_23;
    case 6:
      v11 = *a2;
      v12 = v4;
      v6 = 6;
      goto LABEL_23;
    case 7:
      v11 = *a2;
      v12 = v4;
      v6 = 7;
      goto LABEL_23;
    case 8:
      v11 = *a2;
      v12 = v4;
      v6 = 8;
      goto LABEL_23;
    case 9:
      v11 = *a2;
      v12 = v4;
      v6 = 9;
      goto LABEL_23;
    case 0xA:
      v11 = *a2;
      v12 = v4;
      v6 = 10;
      goto LABEL_23;
    case 0xB:
      v11 = *a2;
      v12 = v4;
      v6 = 14;
      goto LABEL_23;
    case 0xC:
      v11 = *a2;
      v12 = v4;
      v6 = 13;
      goto LABEL_23;
    case 0xD:
      v11 = *a2;
      v12 = v4;
      v6 = 15;
      goto LABEL_23;
    case 0xE:
      v11 = *a2;
      v12 = v4;
      v6 = 16;
      goto LABEL_23;
    case 0xF:
      v11 = *a2;
      v12 = v4;
      v6 = 17;
      goto LABEL_23;
    case 0x10:
      v11 = *a2;
      v12 = v4;
      v6 = 18;
      goto LABEL_23;
    case 0x11:
      v11 = *a2;
      v12 = v4;
      v6 = 19;
      goto LABEL_23;
    case 0x12:
      v7 = 18;
      goto LABEL_26;
    case 0x13:
      v7 = 19;
      goto LABEL_26;
    case 0x14:
      v7 = 20;
      goto LABEL_26;
    case 0x15:
      v7 = 21;
LABEL_26:
      v10 = v7;
      v11 = v5;
      v12 = v4;
      specialized static DefaultSystemColorDefinition_PhoneTV.value(for:environment:)(&v10, &v11, &v13);
      break;
    default:
      v11 = *a2;
      v12 = v4;
      v6 = 0;
LABEL_23:
      specialized static CoreUIDefaultSystemColorDefinition.value(named:in:)(v6, &v11, &v13);
      break;
  }

  result = *&v13;
  v9 = v14;
  *a3 = v13;
  *(a3 + 16) = v9;
  return result;
}

float specialized static CoreUIDefaultSystemColorDefinition.value(named:in:)@<S0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (a2[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA021CUIDesignLibraryCacheJ0V5PropsVG_Tt1g5(v5, &v11);
  }

  else
  {
    v14 = v5;

    static CUIDesignLibraryCacheKey.Props.value(in:)(&v14, &v11);
  }

  v6 = v11;
  v7 = BYTE1(v11);
  v8 = BYTE2(v11);
  v9 = v12;
  if (v12 == 1)
  {
    v9 = 2;
  }

  v11 = a1;
  LOBYTE(v12) = v6;
  BYTE1(v12) = v7;
  BYTE2(v12) = v8;
  v13 = v9;
  CUIDesignLibraryCacheKey.fetch()(&v14);
  result = v15;
  *a3 = v14;
  *(a3 + 16) = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA021CUIDesignLibraryCacheJ0V5PropsVG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v21 = a1;
    v22 = 0;

    static CUIDesignLibraryCacheKey.Props.value(in:)(&v21, a2);

    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props);
  v8 = v7;
  v9 = *(v5 + 40);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
    outlined init with take of AnyTrackedValue(v20, &v21);
    v12 = v23;
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    (v13[1])(&type metadata for CUIDesignLibraryCacheKey.Props, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    v21 = a1;
    v22 = 0;

    static CUIDesignLibraryCacheKey.Props.value(in:)(&v21, a2);

    v14 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 2);
    v17 = *(a2 + 8);
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>();
    v23 = v18;
    v24 = &protocol witness table for DerivedValue<A>;
    LOBYTE(v21) = v14;
    BYTE1(v21) = v15;
    BYTE2(v21) = v16;
    v22 = v17;
    specialized Dictionary.subscript.setter(&v21, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>);
    }
  }
}

uint64_t SystemColorType.apply(color:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return specialized ColorProvider._apply(color:to:)(a1, a2, v5);
    }
  }

  else if (static Semantics.forced < v6)
  {
    return specialized ColorProvider._apply(color:to:)(a1, a2, v5);
  }

  if ((v5 - 13) < 5)
  {
    LOBYTE(v22) = v5 - 13;
    v23 = a1;

    LegacyContentStyle._apply(to:)(a2);
  }

  v8 = *(a2 + 48);
  if (*(a2 + 56))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v8, &v22);

    v10 = v22;
    v9 = v23;
    goto LABEL_15;
  }

  v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a2 + 48));
  if (!v11)
  {
    return specialized ColorProvider._apply(color:to:)(a1, a2, v5);
  }

  v10 = v11[9];
  v9 = v11[10];
  outlined copy of Material?(v10, v9);
LABEL_15:
  if (v9 == 0xFF)
  {
    return specialized ColorProvider._apply(color:to:)(a1, a2, v5);
  }

  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v22 = v13;
  v23 = v12;
  v19 = v10;
  v20 = v9;
  v21 = HIDWORD(v9);

  v14 = EnvironmentValues.materialProvider(for:)(&v19);

  if (!v14)
  {
    if (v12)
    {

      v15 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017VibrantColorStyleI033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt1g5(v13);
      v17 = v16;

      if (!v15)
      {
LABEL_26:
        outlined consume of Material?(v10, v9);
        return specialized ColorProvider._apply(color:to:)(a1, a2, v5);
      }
    }

    else
    {
      v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(v13);
      if (!v18)
      {
        goto LABEL_26;
      }

      v15 = v18[9];
      v17 = v18[10];
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    LOBYTE(v19) = v5;
    v22 = v10;
    LOBYTE(v23) = v9;
    HIDWORD(v23) = HIDWORD(v9);
    (*(v17 + 8))(&v19, a1, &v22, a2, v15, v17);
    return outlined consume of Material?(v10, v9);
  }

  (*(*v14 + 104))(a1, a2);

  return outlined consume of Material?(v10, v9);
}

uint64_t LegacyContentStyle._apply(to:)(uint64_t a1)
{
  v3 = *v1;
  if (*(a1 + 24) != 5 || (*a1 == 1 ? (v4 = *(a1 + 8) == 0) : (v4 = 0), !v4))
  {
    v5 = *(a1 + 48);
    if (*(a1 + 56))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v5, &v13);

      v6 = v13;
      v7 = v14;
    }

    else
    {
      v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a1 + 48));
      if (!v8)
      {
LABEL_11:
        if (!v3)
        {
          return SystemColorsStyle._apply(to:)(a1);
        }

        return specialized OffsetShapeStyle._apply(to:)(a1, v3);
      }

      v6 = v8[9];
      v7 = v8[10];
      outlined copy of Material?(v6, v7);
    }

    if (v7 != 0xFF)
    {
      v13 = v6;
      LOBYTE(v14) = v7;
      HIDWORD(v14) = HIDWORD(v7);
      if (v3)
      {
        outlined copy of Material.ID(v6, v7);
        specialized OffsetShapeStyle._apply(to:)(a1, v6, v7 & 0xFFFFFFFF000000FFLL, v3);
        outlined consume of Material?(v6, v7);
        return outlined consume of Material.ID(v6, v7);
      }

      else
      {
        ForegroundMaterialStyle._apply(to:)(a1);
        return outlined consume of Material?(v6, v7);
      }
    }

    goto LABEL_11;
  }

  if (one-time initialization token for sharedPrimary != -1)
  {
    swift_once();
  }

  v10 = static LegacyContentStyle.sharedPrimary;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  result = outlined consume of _ShapeStyle_Shape.Result(v11, v12);
  *(a1 + 32) = v10;
  *(a1 + 40) = 2;
  return result;
}

void CUIDesignLibraryCacheKey.fetch()(uint64_t a1@<X8>)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = *(v1 + 16);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static CUIDesignLibraryCacheKey.cache);
  v8 = off_1ED534080;
  if (*(off_1ED534080 + 2) && (!v5 ? (v9 = 0) : (v9 = 256), (v10 = v9 | v4, !v6) ? (v11 = 0) : (v11 = 0x10000), v12 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v10 | v11, v7), (v13 & 1) != 0))
  {
    v14 = v8[7] + 24 * v12;
    v43 = *v14;
    v15 = *(v14 + 16);
    v16 = *(v14 + 20);
    os_unfair_lock_unlock(&static CUIDesignLibraryCacheKey.cache);
    if (v16 != 21)
    {
      *a1 = v43;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(&static CUIDesignLibraryCacheKey.cache);
  }

  v51 = v6;
  v52[0] = 0;
  *v47 = v3;
  *&v47[16] = 0;
  v48 = v4;
  v49 = v5;
  v50 = v7;
  v44 = v7;
  v17 = [objc_opt_self() colorWithTraits:v47 error:v52];
  v45 = v3;
  v46 = a1;
  if (v17)
  {
    v18 = v17;
    v19 = v52[0];
    v20 = [v18 cgColor];
    v21 = specialized Color.Resolved.init(failableCGColor:)(v20);
    if (v23)
    {

      v24 = 0;
      LODWORD(v25) = 0;
      v26 = 0;
      LODWORD(v27) = 0;
      v28 = NAN;
    }

    else
    {
      v24 = v21;
      v26 = v22;
      v25 = HIDWORD(v21);
      v27 = HIDWORD(v22);
      CGColorGetContentHeadroom();
      v28 = v37;

      if (v28 == 0.0)
      {
        v28 = NAN;
      }
    }

    v38 = [v18 blendMode];

    BlendMode.init(_:)(v38);
    v36 = v47[0];
  }

  else
  {
    v29 = v52[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDA6EB0;
    *v47 = 0;
    *&v47[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *v47 = 0xD000000000000056;
    *&v47[8] = 0x800000018DD7F380;
    v32 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v32);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v52[0] = 84;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v33);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    v35 = *&v47[8];
    v34 = *v47;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 32) = __PAIR128__(v35, v34);
    print(_:separator:terminator:)();

    v24 = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    LODWORD(v27) = 0;
    v36 = 0;
    v28 = NAN;
  }

  *v47 = v24;
  *&v47[4] = v25;
  *&v47[8] = v26;
  *&v47[12] = v27;
  *&v47[16] = v28;
  v47[20] = v36;
  os_unfair_lock_lock(&static CUIDesignLibraryCacheKey.cache);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = off_1ED534080;
  off_1ED534080 = 0x8000000000000000;
  if (v5)
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 | v4;
  if (v6)
  {
    v42 = 0x10000;
  }

  else
  {
    v42 = 0;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v45, v41 | v42, v44, isUniquelyReferenced_nonNull_native);
  off_1ED534080 = v52[0];

  os_unfair_lock_unlock(&static CUIDesignLibraryCacheKey.cache);
  *v46 = *v47;
  *(v46 + 13) = *&v47[13];
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  MEMORY[0x193AC11A0](a2 & 1);
  MEMORY[0x193AC11A0]((a2 >> 8) & 1);
  MEMORY[0x193AC11A0](HIWORD(a2) & 1);
  MEMORY[0x193AC11A0](a3);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0x10101, a3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      if (!((*v9 != a1) | (*(v9 + 8) ^ a2) & 1 | (*(v9 + 9) ^ ((a2 & 0x100) >> 8) | *(v9 + 10) ^ ((a2 & 0x10000u) >> 16)) & 1 | (*(v9 + 16) != a3)))
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

objc_class *CorePlatformColorForRGBA(int a1, double a2, double a3, double a4, double a5)
{
  result = CoreColorClass(a1);
  if (result)
  {
    v10 = [result alloc];

    return [v10 initWithRed:a2 green:a3 blue:a4 alpha:a5];
  }

  return result;
}

objc_class *specialized static CoreColor.platformColor(resolvedColor:)(float a1, float a2, float a3, float a4)
{
  v8 = -a1;
  if (a1 > 0.0)
  {
    v8 = a1;
  }

  if (v8 <= 0.0031308)
  {
    v9 = v8 * 12.92;
  }

  else
  {
    v9 = 1.0;
    if (v8 != 1.0)
    {
      v9 = (powf(v8, 0.41667) * 1.055) + -0.055;
    }
  }

  v10 = -a2;
  if (a2 > 0.0)
  {
    v10 = a2;
  }

  if (v10 <= 0.0031308)
  {
    v11 = v10 * 12.92;
  }

  else
  {
    v11 = 1.0;
    if (v10 != 1.0)
    {
      v11 = (powf(v10, 0.41667) * 1.055) + -0.055;
    }
  }

  v12 = -a3;
  if (a3 > 0.0)
  {
    v12 = a3;
  }

  if (v12 <= 0.0031308)
  {
    v13 = v12 * 12.92;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = (powf(v12, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a2 <= 0.0)
  {
    v14 = -v11;
  }

  else
  {
    v14 = v11;
  }

  v15 = -v9;
  if (a1 > 0.0)
  {
    v15 = v9;
  }

  v16 = -v13;
  if (a3 > 0.0)
  {
    v16 = v13;
  }

  v17 = v15;

  return CorePlatformColorForRGBA(0, v17, v14, v16, a4);
}

objc_class *closure #1 in variable initialization expression of static Color.Resolved.cache@<X0>(float *a1@<X0>, objc_class **a2@<X8>)
{
  result = specialized static CoreColor.platformColor(resolvedColor:)(*a1, a1[1], a1[2], a1[3]);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FontBox.resolveDescriptor(in:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return (*(*(v2 + 152) + 32))(v5, *(v2 + 144));
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void closure #1 in variable initialization expression of static Font.FontCache.shared(uint64_t *a1@<X0>, CTFontRef *a2@<X8>)
{
  v3 = *(a1 + 2);
  v21 = *(a1 + 1);
  v22 = v3;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v23 = *(a1 + 3);
  v6 = *a1;
  v7 = a1[1];
  v17 = v5;
  v18 = v4;
  v19 = *(a1 + 3);
  v8 = (*(*v6 + 96))(&v17);
  v20 = v8;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = CTFontCreateWithFontDescriptor(v8, 0.0, 0);

    *a2 = v13;
    return;
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AC03C0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      ++v10;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v12 = *(*v11 + 80);
      outlined init with copy of Font.Context(&v21, &v17);
      v12(&v20, &v14);

      v17 = v14;
      v18 = v15;
      v19 = v16;
      outlined destroy of Font.Context(&v17);
    }

    while (v9 != v10);
    v8 = v20;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t destroy for ObjectCache.Item(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  v12 = ~v11;
  v18 = v8;
  if (v9 | v6)
  {
    if (v6 >= v9)
    {
      result = (*(v5 + 48))(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = (*(v8 + 48))((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v12, v9, v7);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v8 + 64);
  if (!*(a1 + v14))
  {
    goto LABEL_21;
  }

  v15 = (*(a1 + v14) - 1) << (8 * v14);
  if (v14 > 3)
  {
    v15 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  v16 = v14 | v15;
  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_21:
    (*(v5 + 8))(a1, v4);
    v17 = *(v18 + 8);

    return v17((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v12, v7);
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a2 + 24);
  if (v10 <= 2)
  {
    v53 = v9;
    v54 = v8;
    v55 = v7;
    v56 = v6;
    v57 = v4;
    v58 = v5;
    v12 = result;
    v13 = *a2;
    if (v10)
    {
      if (v10 == 1)
      {
        v14 = *(a2 + 8);
        if (v14 == *(a2 + 16))
        {
          return result;
        }

        v15 = *(a2 + 56);

        a4(&v49, v18, v15, a3);

        v19 = v50;
        v20 = v51;
        v21 = v52;
        v22 = *(a2 + 56);
        v41 = *(a2 + 48);
        v42 = v22;
        v23 = *(*v12 + 168);

        v24 = v23(v14, &v41);

        v41 = v49;
        LODWORD(v42) = v19;
        *(&v42 + 1) = v20 * v24;
        v43 = v21;
        v44 = 0;
        v45 = 1065353216;
        v46 = 0;
        v47 = -1;
        v25 = MEMORY[0x1E69E7CC0];
        v48 = MEMORY[0x1E69E7CC0];
        v40 = v13;
        if (*(a2 + 40) == 1)
        {
          v25 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v26, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v41, &v40, v14);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v25;
        v27 = 1;
      }

      else
      {
        v34 = result;
        if (v13 > 0)
        {
          v35 = *(a2 + 56);
          v41 = *(a2 + 48);
          v42 = v35;
          v36 = *(*v12 + 168);

          v37 = v36(v13, &v41);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v34 = swift_allocObject();
          *(v34 + 16) = v12;
          *(v34 + 24) = v37;
        }

        v38 = *(a2 + 32);
        v39 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v38, v39);
        *(a2 + 32) = v34;
        v27 = 3;
      }

      *(a2 + 40) = v27;
    }

    else
    {
      v28 = result;
      if (v13 > 0)
      {
        v29 = *(a2 + 56);
        v41 = *(a2 + 48);
        v42 = v29;
        v30 = *(*v12 + 168);

        v31 = v30(v13, &v41);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v28 = swift_allocObject();
        *(v28 + 16) = v12;
        *(v28 + 24) = v31;
      }

      v32 = *(a2 + 32);
      v33 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v32, v33);
      *(a2 + 32) = v28;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized ColorProvider._apply(color:to:)(a1, a2, a3, specialized PlatformColorProvider.resolveHDR(in:));
}

{
  return specialized ColorProvider._apply(color:to:)(a1, a2, a3, specialized PlatformColorProvider.resolveHDR(in:));
}

uint64_t key path getter for EnvironmentValues.imageScale : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010ImageScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for SecondaryLookupTrackedValue(uint64_t *a1, uint64_t *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AppearsActiveI0VG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 3;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for DynamicTypeSize, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 3;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>);
    }
  }
}

void specialized PlatformColorProvider.resolveHDR(in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  v8 = static UIKitPlatformColorProvider.safeDefinition;
  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v9 = *(static UIKitPlatformColorProvider.safeDefinition + 10);
    v9(v26);
    if (CoreColorDependsOnEnvironment(a3, v26[0]))
    {
      v10 = MEMORY[0x193AC38C0]();
      v26[0] = a1;
      v26[1] = a2;
      v11 = v8[13](a3, v26);
      if ((v13 & 0x100000000) != 0)
      {
        v14 = 0;
        LODWORD(v16) = 0;
        v15 = 0;
        LODWORD(v17) = 0;
        v18 = NAN;
      }

      else
      {
        v14 = v11;
        v15 = v12;
        v16 = HIDWORD(v11);
        v17 = HIDWORD(v12);
        v18 = *&v13;
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v9(v26);
      v19 = CGColorForCoreColor(LOBYTE(v26[0]), a3);
      if (v19)
      {
        v20 = v19;
        v21 = specialized Color.Resolved.init(failableCGColor:)(v20);
        if ((v23 & 1) == 0)
        {
          v15 = v22;
          v16 = HIDWORD(v21);
          v17 = HIDWORD(v22);
          v24 = v21;
          CGColorGetContentHeadroom();
          v18 = v25;

          if (v18 == 0.0)
          {
            v18 = NAN;
          }

          v14 = v24;
          goto LABEL_16;
        }
      }

      v14 = 0;
      LODWORD(v16) = 0;
      v15 = 0;
      LODWORD(v17) = 0;
      v18 = NAN;
    }

LABEL_16:
    *a4 = v14;
    *(a4 + 4) = v16;
    *(a4 + 8) = v15;
    *(a4 + 12) = v17;
    *(a4 + 16) = v18;
    return;
  }

  __break(1u);
}

{
  v8 = swift_beginAccess();
  v9 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v8 = swift_beginAccess();
    v9 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1) || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), !swift_dynamicCastMetatype()) || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        __break(1u);
        goto LABEL_33;
      }

      type metadata accessor for PlatformColorDefinition();
      v8 = swift_dynamicCastMetatypeUnconditional();
      v9 = v8;
      static PlatformColorDefinition.appKit = v8;
    }
  }

  v9[10](v30, v8);
  if (!CoreColorDependsOnEnvironment(a3, v30[0]))
  {
    v20 = static PlatformColorDefinition.appKitInternal;
    if (!static PlatformColorDefinition.appKitInternal)
    {
      swift_beginAccess();
      v20 = static PlatformColorDefinition.appKit;
      if (!static PlatformColorDefinition.appKit)
      {
        if (!CoreColorGetKitColorClass(1))
        {
          goto LABEL_34;
        }

        swift_getObjCClassMetadata();
        type metadata accessor for NSObject();
        if (!swift_dynamicCastMetatype() || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
        {
          goto LABEL_34;
        }

        type metadata accessor for PlatformColorDefinition();
        v20 = swift_dynamicCastMetatypeUnconditional();
        static PlatformColorDefinition.appKit = v20;
      }
    }

    (*(v20 + 10))(v29);
    v21 = CGColorForCoreColor(LOBYTE(v29[0]), a3);
    if (v21)
    {
      v22 = v21;
      v23 = specialized Color.Resolved.init(failableCGColor:)(v22);
      if ((v25 & 1) == 0)
      {
        v16 = v24;
        v18 = HIDWORD(v23);
        v26 = HIDWORD(v24);
        v27 = v23;
        CGColorGetContentHeadroom();
        v19 = v28;

        if (v19 == 0.0)
        {
          v19 = NAN;
        }

        v15 = v27;
        LODWORD(v17) = v18;
        LODWORD(v18) = v26;
        goto LABEL_31;
      }
    }

    v15 = 0;
    LODWORD(v17) = 0;
    v16 = 0;
    LODWORD(v18) = 0;
    v19 = NAN;
LABEL_31:
    *a4 = v15;
    *(a4 + 4) = v17;
    *(a4 + 8) = v16;
    *(a4 + 12) = v18;
    *(a4 + 16) = v19;
    return;
  }

  v10 = MEMORY[0x193AC38C0]();
  v11 = static PlatformColorDefinition.appKitInternal;
  if (static PlatformColorDefinition.appKitInternal || (swift_beginAccess(), (v11 = static PlatformColorDefinition.appKit) != 0))
  {
LABEL_14:
    v29[0] = a1;
    v29[1] = a2;
    v12 = v11[13](a3, v29);
    if ((v14 & 0x100000000) != 0)
    {
      v15 = 0;
      LODWORD(v17) = 0;
      v16 = 0;
      LODWORD(v18) = 0;
      v19 = NAN;
    }

    else
    {
      v15 = v12;
      v16 = v13;
      v17 = HIDWORD(v12);
      v18 = HIDWORD(v13);
      v19 = *&v14;
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_31;
  }

  if (CoreColorGetKitColorClass(1))
  {
    swift_getObjCClassMetadata();
    type metadata accessor for NSObject();
    if (swift_dynamicCastMetatype())
    {
      if ([swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        type metadata accessor for PlatformColorDefinition();
        v11 = swift_dynamicCastMetatypeUnconditional();
        static PlatformColorDefinition.appKit = v11;
        goto LABEL_14;
      }
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

BOOL ResolvedStyledText.needsStyledRendering.getter()
{
  v1 = *(v0 + 260);
  if (v1)
  {
    return 1;
  }

  if (v1 & 2) != 0 && (*(v0 + 256))
  {
    if (*(v0 + 216))
    {
      return !NSAttributedString.isDynamic.getter();
    }

    return 1;
  }

  return 0;
}

void ResolvedStyledText.frame(in:renderer:)(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v22 = v3;
    v6 = *(*a1 + 112);

    v7 = v6(*&a2, 0, *&a3, 0, &v22);
    v9 = v8;
  }

  else
  {
    v7 = (*(*v3 + 248))();
    v9 = v10;
  }

  v11 = swift_beginAccess();
  v12 = v3[13];
  if (*(v3 + 43))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 0.0 - v12;
  }

  v14 = v7 + v12;
  v15 = (*(*v3 + 184))(v11);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  swift_beginAccess();
  CGRect.inset(by:)(v3[21] - v15 + 0.0, v3[22] - v17 + 0.0, v3[23] - v19 + 0.0, v3[24] - v21 + 0.0, v13, 0.0, v14, v9);
}

void ResolvedStyledText.StringDrawing.drawingMargins.getter()
{
  ResolvedStyledText.maxFontMetrics.getter(v1);
  swift_beginAccess();
  ResolvedStyledText.lineHeightScalingAdjustment(lineHeightMultiple:maximumLineHeight:minimumLineHeight:)(v0[8], v0[9], v0[10]);
}

double ResolvedStyledText.lineHeightScalingAdjustment(lineHeightMultiple:maximumLineHeight:minimumLineHeight:)(double a1, double a2, double a3)
{
  v6 = a1 != 0.0 && a1 < 1.0;
  v7 = 0.0;
  if (!v6 && a2 == 0.0 && a3 == 0.0)
  {
    return v7;
  }

  ResolvedStyledText.maxFontMetrics.getter(&v12);
  v8 = v13 - v14;
  if (a1 != 0.0)
  {
    v9 = v8 * a1;
    v10 = v8 * a1;
    if (a2 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = v13 - v14;
  v10 = v13 - v14;
  if (a2 != 0.0)
  {
LABEL_9:
    v10 = v9;
    v9 = a2;
  }

LABEL_10:
  if (v10 < a3)
  {
    v10 = a3;
  }

  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v9 < v8)
  {
    return v8 - v9;
  }

  return v7;
}

uint64_t ResolvedStyledText.needsRBDisplayList.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_6(v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
      return 0;
    }

    memset(v5, 0, sizeof(v5));
    _sypSgWOhTm_6(v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  }

  if ((*(v0 + 260) & 8) != 0)
  {
    return 1;
  }

  v4 = *(v0 + 256);
  if (v4)
  {
    return (v4 >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, NSObject>()
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>)
  {
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v0 = type metadata accessor for ObjectCache();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>);
    }
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Data()
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Data)
  {
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v0 = type metadata accessor for ObjectCache.Data();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Data);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Item()
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Item)
  {
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v0 = type metadata accessor for ObjectCache.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Item);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t one-time initialization function for kitForegroundColor()
{
  result = MEMORY[0x193ABEC20](0x726F6C6F43534ELL, 0xE700000000000000);
  static NSAttributedStringKey.kitForegroundColor = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>()
{
  if (!lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>)
  {
    type metadata accessor for CTFontRef(255);
    lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key();
    v0 = type metadata accessor for ObjectCache();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key()
{
  result = lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key;
  if (!lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key;
  if (!lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key);
  }

  return result;
}

uint64_t outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Data()
{
  if (!lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Data)
  {
    type metadata accessor for CTFontRef(255);
    lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key();
    v0 = type metadata accessor for ObjectCache.Data();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Data);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>, lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key()
{
  result = lazy protocol witness table cache variable for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key;
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key);
  }

  return result;
}

uint64_t one-time initialization function for kitParagraphStyle()
{
  result = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD7A050);
  static NSAttributedStringKey.kitParagraphStyle = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t one-time initialization function for kitLink()
{
  result = MEMORY[0x193ABEC20](0x6B6E694C534ELL, 0xE600000000000000);
  static NSAttributedStringKey.kitLink = result;
  return result;
}

uint64_t NSAttributedString.MetricsCache.findMetrics(requestedSize:wantsNumberOfLineFragments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = *(v4 + 80);
  v6 = *(v5 + 16);
  v7 = 0uLL;
  if (v6)
  {
    v8 = (v5 + 64);
    while (1)
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 1);
      v11 = *(v8 + 48);
      if ((result & 1) == 0 || (v11 & 1) == 0)
      {
        v12 = *&v10 >= v9 ? *(v8 - 4) : *(v8 - 2);
        if (v12 <= a3)
        {
          v13 = *(v8 - 3);
          if (v13 > *(&v10 + 1))
          {
            v14 = *(v8 - 3);
          }

          else
          {
            v14 = *(v8 - 1);
          }

          if (*(&v10 + 1) < v13)
          {
            v13 = *(v8 - 1);
          }

          if (v9 <= *&v10)
          {
            v9 = *(v8 - 2);
          }

          v15 = v9 < a3 || v13 > a4;
          if (!v15 && v14 >= a4)
          {
            break;
          }
        }
      }

      v8 = (v8 + 88);
      if (!--v6)
      {
        goto LABEL_25;
      }
    }

    v17 = *v8;
    v18 = v8[1];
    v19 = v8[2];
    v20 = v11 | (*(v8 + 49) << 8);
    v7 = *(v8 - 1);
  }

  else
  {
LABEL_25:
    v20 = 512;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  return result;
}

void Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 81);
  v5 = *(v3 + 8);
  v6 = 0.0;
  if (!*v3)
  {
    goto LABEL_4;
  }

  v7 = *(a3 + 96);
  if (*v3 == 1)
  {
    NSAttributedString.maxFontMetrics.getter(&v33);
    v9 = v34;
    *a2 = v33;
    *(a2 + 16) = v9;
    v10 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v10;
    *(a2 + 64) = 0;
    v11 = *(a2 + 24);
    if (v11 == 0.0)
    {
LABEL_4:
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      goto LABEL_13;
    }

    v20 = *(a2 + 8) - *(a2 + 16);
    v21 = v7 * ceil(v20 / v7);
    v22 = ceil(v20);
    if (v7 == 1.0)
    {
      v21 = v22;
    }

    v12 = (v11 + v20 - v21) * 0.5;
    v13 = 0.0;
    v14 = v12;
  }

  else
  {
    if (one-time initialization token for oversizedScalarsWithoutEmoji != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for CharacterSet();
    __swift_project_value_buffer(v15, static NSAttributedString.oversizedScalarsWithoutEmoji);
    v16 = NSAttributedString.oversizedDrawingMargin(from:)();
    if (v7 == 1.0)
    {
      v14 = ceil(v16);
      v13 = ceil(v17);
      v12 = ceil(v18);
      v6 = ceil(v19);
    }

    else
    {
      v14 = v7 * ceil(v16 / v7);
      v13 = v7 * ceil(v17 / v7);
      v12 = v7 * ceil(v18 / v7);
      v6 = v7 * ceil(v19 / v7);
    }
  }

LABEL_13:
  if (v4)
  {
    v23 = v13;
  }

  else
  {
    v23 = v14;
  }

  if (v4)
  {
    v13 = v12;
    v12 = v6;
    v24 = v14;
  }

  else
  {
    v24 = v6;
  }

  *&v33 = v23;
  *(&v33 + 1) = v13;
  *&v34 = v12;
  *(&v34 + 1) = v24;
  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  v25 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    do
    {
      while (1)
      {
        if (__OFSUB__(v25--, 1))
        {
          __break(1u);
          return;
        }

        if ((v5 & 0xC000000000000001) == 0)
        {
          break;
        }

        v26 = MEMORY[0x193AC03C0](v25, v5);
LABEL_23:
        (*(*v26 + 80))(&v33);

        if (!v25)
        {
          return;
        }
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v25 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(v5 + 32 + 8 * v25);

        goto LABEL_23;
      }

      __break(1u);
LABEL_33:
      v28 = v23;
      v29 = v13;
      v30 = v12;
      v31 = v24;
      v32 = __CocoaSet.count.getter();
      v24 = v31;
      v12 = v30;
      v13 = v29;
      v23 = v28;
      v25 = v32;
    }

    while (v32);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for StyledTextContentView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for TextLayoutProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v10 = v9;
  v137 = a2;
  v19 = type metadata accessor for CharacterSet();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v9[3];
  v151 = v9[2];
  v152 = v23;
  v153 = v9[4];
  v154 = *(v9 + 10);
  v24 = v9[1];
  v149 = *v9;
  v150 = v24;
  NSAttributedString.MetricsCache.findMetrics(requestedSize:wantsNumberOfLineFragments:)(a1, v147, a4, a5);
  v25 = v148;
  if ((v148 & 0xFF00) == 0x200)
  {
    swift_beginAccess();
    v26 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v26[4] = a4;
      v26[5] = 0.0;
      v26[6] = a5;
      *(v26 + 28) = 0;
    }

    v132 = a1;
    v121 = v22;
    v122 = v20;
    v123 = v19;
    v27 = a7 + a9;
    if (a4 - (a7 + a9) < 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = a4 - (a7 + a9);
    }

    v29 = a6 + a8;
    v30 = a5 - (a6 + a8);
    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v136 = v30;
    v31 = *(&v149 + 1);
    v135 = v150;
    v134 = BYTE8(v150);
    v131 = v151;
    v130 = BYTE8(v151);
    v139 = *(&v152 + 1);
    v32 = *&v152;
    v146 = 0;
    v33 = one-time initialization token for kitLink;
    v138 = v149;
    swift_unknownObjectRetain();
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = static NSAttributedStringKey.kitLink;
    v35 = [v31 length];
    v36 = swift_allocObject();
    *(v36 + 16) = &v146;
    v37 = swift_allocObject();
    v38 = v37;
    *(v37 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
    *(v37 + 24) = v36;
    v144 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v145 = v37;
    v140 = MEMORY[0x1E69E9820];
    *&v39 = 1107296256;
    v141 = 1107296256;
    v129 = &v142;
    v142 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v143 = &block_descriptor_29;
    v40 = _Block_copy(&v140);

    v133 = v31;
    [v31 enumerateAttribute:v34 inRange:0 options:v35 usingBlock:{0, v40}];
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_103;
    }

    v125 = v29;
    v42 = v146;

    v43 = *(*&v137 + 16);

    os_unfair_lock_lock((v43 + 16));
    v44 = *(v43 + 24);
    v45 = 0.0;
    if (v32 < 1.0)
    {
      v45 = v32;
    }

    if (v32 <= 0.0)
    {
      v45 = COERCE_DOUBLE(1);
    }

    [*(v43 + 24) setMinimumScaleFactor_];
    [v44 setScaledLineHeight_];
    [v44 setScaledBaselineOffset_];
    v46 = v135;
    if (v135 <= 1)
    {
      v46 = 1;
    }

    if (v134)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    [v44 setMaximumNumberOfLines_];
    [v44 setCachesLayout_];
    [v44 setLayout_];
    [v44 setWantsNumberOfLineFragments_];
    if (v42)
    {
      v48 = 8;
    }

    else
    {
      v48 = 0;
    }

    [v44 setActiveRenderers_];
    v144 = closure #2 in closure #1 in TextDrawingContext.withStringDrawingContext<A>(minScaleFactor:lineLimit:kitCache:useNSLayoutManager:do:);
    v145 = 0;
    v140 = MEMORY[0x1E69E9820];
    v141 = 1107296256;
    v142 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any]?, @unowned Int) -> (@owned [NSAttributedStringKey : Any]?);
    v143 = &block_descriptor_32_0;
    v49 = _Block_copy(&v140);
    [v44 setLinkTextAttributesProvider_];
    _Block_release(v49);
    if ((v132 & 1) != 0 || v139 > 0.0)
    {
      [v44 setWantsNumberOfLineFragments_];
    }

    v50 = v28 + v139;
    v51 = 0.0;
    v137 = v28 + v139;
    v52 = v133;
    v53 = v131;
    v127 = a4;
    v128 = a5;
    v126 = v27;
    v124 = a6;
    if ((v130 & 1) == 0 && v131 >= 1)
    {
      if ([v133 length] < 1)
      {
        v50 = v137;
      }

      else
      {
        *&v54 = COERCE_DOUBLE(NSAttributedString.limitedFontHeight(by:)(v53));
        v50 = v137;
        if ((v55 & 1) == 0)
        {
          v51 = *&v54;
        }
      }
    }

    if (v50 == INFINITY)
    {
      v63 = 1.79769313e308;
    }

    else
    {
      v63 = v50;
    }

    if (v50 > 0.0)
    {
      v64 = v63;
    }

    else
    {
      v64 = COERCE_DOUBLE(1);
    }

    if (v136 == INFINITY)
    {
      v65 = 1.79769313e308;
    }

    else
    {
      v65 = v136;
    }

    if (v136 <= 0.0)
    {
      v65 = COERCE_DOUBLE(1);
    }

    if (v51 > v65)
    {
      v66 = v51;
    }

    else
    {
      v66 = v65;
    }

    [v52 boundingRectWithSize:1048577 options:v44 context:{v64, v66}];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = [v44 layout];
    swift_unknownObjectRelease();
    *v10 = v75;
    [v44 setLayout_];
    [v44 scaledLineHeight];
    v77 = v76;
    v78 = v68;
    if (v76 == 0.0)
    {
      v155.origin.x = v68;
      v155.origin.y = v70;
      v155.size.width = v72;
      v155.size.height = v74;
      Height = CGRectGetHeight(v155);
    }

    else
    {
      [v44 scaledLineHeight];
    }

    v80 = Height;
    if (v139 > 0.0)
    {
      if ([v44 numberOfLineFragments] == 1)
      {
        goto LABEL_68;
      }

      v81 = [v52 string];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v140 = v82;
      v141 = v84;
      v85 = v121;
      static CharacterSet.newlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v86 = StringProtocol.components(separatedBy:)();
      (*(v122 + 8))(v85, v123);

      v87 = v86;
      v88 = *(v86 + 16);
      if (v88)
      {
        v89 = v87 + 16 * (v88 - 1);
        v90 = *(v89 + 32);
        v91 = *(v89 + 40);

        v92 = HIBYTE(v91) & 0xF;
        if ((v91 & 0x2000000000000000) == 0)
        {
          v92 = v90 & 0xFFFFFFFFFFFFLL;
        }

        v93 = v92 ? v88 : v88 - 1;
      }

      else
      {

        v93 = 0;
      }

      v94 = v135;
      if (v93 < v135)
      {
        v94 = v93;
      }

      v95 = (v134 ? v93 : v94);
      if (v95 == [v44 numberOfLineFragments])
      {
LABEL_68:
        v156.origin.x = v78;
        v156.origin.y = v70;
        v156.size.width = v72;
        v156.size.height = v74;
        v96 = v139 + CGRectGetWidth(v156);
        if (v64 >= v96)
        {
          v72 = v96;
        }

        else
        {
          v72 = v64;
        }
      }
    }

    if (v80 == COERCE_DOUBLE(1))
    {
      v80 = 0.0;
    }

    Width = v137;
    if ((BYTE8(v153) & 1) == 0)
    {
      v157.origin.x = v78;
      v157.origin.y = v70;
      v157.size.width = v72;
      v157.size.height = v74;
      v98 = CGRectGetWidth(v157) == COERCE_DOUBLE(1);
      Width = 0.0;
      if (!v98)
      {
        v158.origin.x = v78;
        v158.origin.y = v70;
        v158.size.width = v72;
        v158.size.height = v74;
        Width = CGRectGetWidth(v158);
      }
    }

    if ((BYTE10(v153) & (v136 < v80)) != 0)
    {
      v99 = 0.0;
    }

    else
    {
      v99 = Width;
    }

    if ((BYTE10(v153) & (v136 < v80)) != 0)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v80;
    }

    if (v100 > v51)
    {
      v101 = v100;
    }

    else
    {
      v101 = v51;
    }

    v102 = [v44 hasTruncatedRanges];
    [v44 actualScaleFactor];
    v29 = v103;
    [v44 firstBaselineOffset];
    v105 = v104;
    v106 = &selRef_baselineOffset;
    if (v77 != 0.0)
    {
      v106 = &selRef_scaledBaselineOffset;
    }

    [v44 *v106];
    v108 = v107;
    v109 = [v44 wantsNumberOfLineFragments];
    v110 = v109;
    if (v109)
    {
      isEscapingClosureAtFileLocation = [v44 numberOfLineFragments];
      a5 = v128;
      if ((isEscapingClosureAtFileLocation & 0x8000000000000000) == 0)
      {
        goto LABEL_91;
      }

      __break(1u);
    }

    isEscapingClosureAtFileLocation = 0;
    a5 = v128;
LABEL_91:
    v111 = *&v153;
    LOBYTE(v140) = v110 ^ 1;
    os_unfair_lock_unlock((v43 + 16));

    swift_unknownObjectRelease();
    if (v102)
    {
      LOWORD(v34) = 256;
    }

    else
    {
      LOWORD(v34) = 0;
    }

    if (v111 == 1.0)
    {
      v112 = ceil(v99);
      a6 = ceil(v101);
      v35 = v154;
      v113 = v105 + v124;
      v39 = round(v105 + v124);
      v114 = v108 + v124;
      v32 = v39 - v113;
      v28 = ceil(v39 - v113 + v114);
    }

    else
    {
      v112 = v111 * ceil(v99 / v111);
      a6 = v111 * ceil(v101 / v111);
      v35 = v154;
      v115 = v105 + v124;
      v39 = v111 * round((v105 + v124) / v111);
      v116 = v108 + v124;
      v32 = v39 - v115;
      v28 = v111 * ceil((v116 + v39 - v115) / v111);
    }

    v38 = v140;
    v27 = v112 - v139;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_98:
      v25 = v34 | v38;
      v57 = v125 + a6;
      v58 = v126 + v27;
      v118 = *(v35 + 2);
      v117 = *(v35 + 3);
      v62 = v137;
      if (v118 >= v117 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v35);
        v62 = v137;
        v35 = result;
      }

      *(v35 + 2) = v118 + 1;
      v119 = &v35[88 * v118];
      v119[4] = v127;
      v119[5] = a5;
      v119[6] = v58;
      v119[7] = v57;
      v119[8] = v29;
      v119[9] = v39;
      v119[10] = v28;
      v119[11] = v32;
      v119[12] = v62;
      *(v119 + 13) = isEscapingClosureAtFileLocation;
      *(v119 + 56) = v25;
      v10[10] = v35;
      goto LABEL_101;
    }

LABEL_103:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
    v35 = result;
    goto LABEL_98;
  }

  v56 = a5;
  v58 = *v147;
  v57 = *&v147[1];
  v39 = *&v147[3];
  v139 = *&v147[2];
  v28 = *&v147[4];
  v32 = *&v147[5];
  v59 = *&v147[6];
  isEscapingClosureAtFileLocation = v147[7];
  result = swift_beginAccess();
  v61 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    result = swift_beginAccess();
    v61[4] = a4;
    v61[5] = 0.0;
    v61[6] = v56;
    *(v61 + 28) = 256;
  }

  v62 = v59;
  v29 = v139;
LABEL_101:
  *a3 = v58;
  *(a3 + 8) = v57;
  *(a3 + 16) = v29;
  *(a3 + 24) = v39;
  *(a3 + 32) = v28;
  *(a3 + 40) = v32;
  *(a3 + 48) = v62;
  *(a3 + 56) = isEscapingClosureAtFileLocation;
  *(a3 + 64) = v25;
  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for Date?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_3(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    outlined init with take of Any(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return outlined destroy of Any?(v13);
}

uint64_t outlined init with copy of ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>)
  {
    type metadata accessor for (AGSubgraphRef, Int)(255, &lazy cache variable for type metadata for (CGSize, NSAttributedString.Metrics), type metadata accessor for CGSize);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>);
    }
  }
}

void type metadata accessor for AnyGesture<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t StyledTextLayoutEngine.sizeThatFits(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  if (a3)
  {
    v9 = a2;
    v7 = *(*a3 + 112);

    v7(v3, v4, v5, v6, &v9);
  }

  else
  {
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(result + 8);
    }

    if (((v8 | v6) & 1) != 0 || (v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = *result;
      v10 = v4;
      v11 = v5;
      v12 = v6;
      return (*(*a2 + 232))(&v9);
    }
  }

  return result;
}

double ResolvedStyledText.StringDrawing.sizeThatFits(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v1[21];
  v7 = v1[22];
  v9 = v1[23];
  v8 = v1[24];
  swift_beginAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = INFINITY;
  if (v5)
  {
    v11 = INFINITY;
  }

  else
  {
    v11 = v4;
  }

  if (!v3)
  {
    v10 = v2;
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, &v13, v10, v11, v6, v7, v9, v8);
  swift_endAccess();
  return v13;
}

void *outlined consume of ResolvedTextSuffix(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Layout.Line.Line(result);
  }

  return result;
}

uint64_t sub_18D0C17D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t destroy for ResolvedTextHelper.NextUpdate(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v4 = *(v3 + 48);
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }

  return result;
}

uint64_t ResolvedStyledText.StringDrawing.explicitAlignment(_:at:)(uint64_t a1, double a2, double a3)
{
  if (one-time initialization token for lastTextBaseline != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (static VerticalAlignment.lastTextBaseline == a1)
  {
    swift_beginAccess();
    v6 = v3[21];
    v7 = v3[22];
    v9 = v3[23];
    v8 = v3[24];
    swift_beginAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v25, a2, a3, v6, v7, v9, v8);
    swift_endAccess();
    return v27;
  }

  else
  {
    if (one-time initialization token for firstTextBaseline != -1)
    {
      v21 = a1;
      swift_once();
      a1 = v21;
    }

    if (static VerticalAlignment.firstTextBaseline == a1)
    {
      swift_beginAccess();
      v11 = v3[21];
      v12 = v3[22];
      v14 = v3[23];
      v13 = v3[24];
      swift_beginAccess();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v25, a2, a3, v11, v12, v14, v13);
      swift_endAccess();
      *&result = v26;
    }

    else
    {
      if (one-time initialization token for _firstTextLineCenter != -1)
      {
        v22 = a1;
        swift_once();
        a1 = v22;
      }

      if (static VerticalAlignment._firstTextLineCenter == a1)
      {
        swift_beginAccess();
        v15 = v3[21];
        v16 = v3[22];
        v18 = v3[23];
        v17 = v3[24];
        swift_beginAccess();
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v25, a2, a3, v15, v16, v18, v17);
        swift_endAccess();
        v19 = v26;
        ResolvedStyledText.maxFontMetrics.getter(v24);
        *&result = v19 + v24[0] * -0.5;
      }

      else
      {
        if (one-time initialization token for leadingText != -1)
        {
          v23 = a1;
          swift_once();
          a1 = v23;
        }

        if (static HorizontalAlignment.leadingText == a1)
        {
          swift_beginAccess();
          return *(v3 + 22);
        }

        else
        {
          *&result = 0.0;
        }
      }
    }
  }

  return result;
}

uint64_t ResolvedStyledText.maxFontMetrics.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 344))
  {
    if (*(v1 + 216))
    {
      v2 = a1;
      result = NSAttributedString.maxFontMetrics.getter(v14);
      a1 = v2;
      v5 = v14[0];
      v4 = v14[1];
      v7 = v14[2];
      v6 = v14[3];
      v9 = v14[4];
      v8 = v14[5];
      v11 = v14[6];
      v10 = v14[7];
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v8 = 0;
      v9 = 0;
      v6 = 0;
      v7 = 0;
      v4 = 0;
      v5 = 0;
    }

    *(v1 + 280) = v5;
    *(v1 + 288) = v4;
    *(v1 + 296) = v7;
    *(v1 + 304) = v6;
    *(v1 + 312) = v9;
    *(v1 + 320) = v8;
    *(v1 + 328) = v11;
    *(v1 + 336) = v10;
    *(v1 + 344) = 0;
    *a1 = v5;
    a1[1] = v4;
    a1[2] = v7;
    a1[3] = v6;
    a1[4] = v9;
    a1[5] = v8;
    a1[6] = v11;
    a1[7] = v10;
  }

  else
  {
    v12 = *(v1 + 296);
    *a1 = *(v1 + 280);
    *(a1 + 1) = v12;
    v13 = *(v1 + 328);
    *(a1 + 2) = *(v1 + 312);
    *(a1 + 3) = v13;
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

{
  v3 = *(v1 + 16);
  memcpy(__dst, v3, 0x1F9uLL);
  memcpy(a1, v3, 0x1F9uLL);
  return outlined init with copy of UnaryLayoutEngine<SpacingLayout>(__dst, &v5);
}

{
  return specialized closure #2 in StatefulRule<>.update<A>(to:)(*(v1 + 16), a1);
}

{
  v3 = *(v1 + 16);
  memcpy(__dst, v3, 0x161uLL);
  memcpy(a1, v3, 0x161uLL);
  return outlined init with copy of LeafLayoutEngine<Image.Resolved>(__dst, &v5);
}

uint64_t specialized StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v15 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    MEMORY[0x1EEE9AC00](OutputValue);
    v6 = one-time initialization token for lockAssertionsAreEnabled;

    if (v6 != -1)
    {
      IsOwner = swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    if ((IsOwner & 1) == 0)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      v8 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v5 + 80))(v8);

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v13);
    v11 = v13;
    v10 = v14;
    swift_beginAccess();
    if (static LayoutTrace.recorder)
    {
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<StyledTextLayoutEngine>, &type metadata for StyledTextLayoutEngine, &protocol witness table for StyledTextLayoutEngine, type metadata accessor for TracingLayoutEngineBox);
      swift_allocObject();
      v12 = specialized TracingLayoutEngineBox.init(_:)(v11, v10);
    }

    else
    {
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<StyledTextLayoutEngine>, &type metadata for StyledTextLayoutEngine, &protocol witness table for StyledTextLayoutEngine, type metadata accessor for LayoutEngineBox);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
    }

    v13 = v12;
    v14 = 0;
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12 = v5;
      v13 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA03AnyC0VG_Tt1g5(&v12, v11);
    v12 = v11[0];
    v13 = v11[1];
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12 = v5;
      v13 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA017ConcentricPaddingC033_7079FF89BCF97F81EB250A589B9A5CEDLLVG_Tt1g5(&v12, v11);
    v12 = v11[0];
    v13 = v11[1];
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v18 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>, type metadata accessor for SizeFittingTextLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v16 = v5;
      v17 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v14);
    v11 = v14;
    v12 = v15;
    swift_beginAccess();
    if (static LayoutTrace.recorder)
    {
      type metadata accessor for TracingLayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>, type metadata accessor for TracingLayoutEngineBox);
      swift_allocObject();
      v13 = specialized TracingLayoutEngineBox.init(_:)(v11, v12);
    }

    else
    {
      type metadata accessor for TracingLayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>(0, &lazy cache variable for type metadata for LayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>, type metadata accessor for LayoutEngineBox);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
    }

    v14 = v13;
    v15 = 0;
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12 = v5;
      v13 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA03AnyC0VG_Tt1g5(&v12, v11);
    v12 = v11[0];
    v13 = v11[1];
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t outlined init with copy of GesturePhase<TappableSpatialEvent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t closure #1 in NSAttributedString.hasLinkAttributes.getter(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v8 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v15, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
  URL.init(urlValue:)(v15, v12);
  v13 = type metadata accessor for URL();
  LODWORD(a1) = (*(*(v13 - 8) + 48))(v12, 1, v13);
  result = outlined destroy of GesturePhase<TappableSpatialEvent>(v12, &lazy cache variable for type metadata for URL?, v8, v9, type metadata accessor for URL?);
  if (a1 != 1)
  {
    *a5 = 1;
    *a4 = 1;
  }

  return result;
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t URL.init(urlValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1E69E7CA0];
  outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v22, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
  if (!v23)
  {
    outlined destroy of GesturePhase<TappableSpatialEvent>(v22, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    v16 = *(v11 + 56);
    v16(v9, 1, 1, v10);
LABEL_5:
    outlined destroy of GesturePhase<TappableSpatialEvent>(v9, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
    outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v22, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    if (v23)
    {
      if (swift_dynamicCast())
      {
        URL.init(string:)();

        outlined destroy of GesturePhase<TappableSpatialEvent>(a1, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
        if ((*(v11 + 48))(v6, 1, v10) != 1)
        {
          v9 = v6;
          goto LABEL_9;
        }

LABEL_12:
        outlined destroy of GesturePhase<TappableSpatialEvent>(v6, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
        v18 = a2;
        v19 = 1;
        return (v16)(v18, v19, 1, v10);
      }
    }

    else
    {
      outlined destroy of GesturePhase<TappableSpatialEvent>(v22, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    }

    outlined destroy of GesturePhase<TappableSpatialEvent>(a1, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    v16(v6, 1, 1, v10);
    goto LABEL_12;
  }

  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  v16(v9, v15 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_5;
  }

  outlined destroy of GesturePhase<TappableSpatialEvent>(a1, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
LABEL_9:
  v17 = *(v11 + 32);
  v17(v13, v9, v10);
  v17(a2, v13, v10);
  v18 = a2;
  v19 = 0;
  return (v16)(v18, v19, 1, v10);
}

uint64_t outlined destroy of GesturePhase<TappableSpatialEvent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void closure #1 in NSAttributedString.maxFontMetrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double *a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v40 = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E69E7CA0];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(a1, v37, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
  if (!v38)
  {
    outlined destroy of TimelineSchedule?(v37, &lazy cache variable for type metadata for Any?, v15 + 8, type metadata accessor for HitTestableEvent?);
    return;
  }

  outlined init with take of Any(v37, v39);
  outlined init with copy of Any(v39, v37);
  type metadata accessor for CTFontRef(0);
  swift_dynamicCast();
  Ascent = CTFontGetAscent(font);
  Descent = CTFontGetDescent(font);
  v18 = *a5;
  CapHeight = CTFontGetCapHeight(font);
  if (v18 > CapHeight)
  {
    CapHeight = v18;
  }

  *a5 = CapHeight;
  v20 = *a6;
  if (*a6 <= Ascent)
  {
    v20 = Ascent;
  }

  *a6 = v20;
  v21 = *a7;
  if (*a7 <= Descent)
  {
    v21 = Descent;
  }

  *a7 = v21;
  if (*(a8 + 8))
  {
    Leading = CTFontGetLeading(font);
  }

  else
  {
    v23 = *a8;
    Leading = CTFontGetLeading(font);
    if (v23 > Leading)
    {
      Leading = v23;
    }
  }

  *a8 = Leading;
  *(a8 + 8) = 0;
  v37[0] = 0.0;
  if (a9 & 1) != 0 || (SymbolicTraits = CTFontGetSymbolicTraits(font), (SymbolicTraits) || (v25 = SymbolicTraits, CTFontGetWeight(), *MEMORY[0x1E6965940] < v26) || (v25 & 0xF0000000) == 0xA0000000 || (v25 & 0xF0000000) == 0x90000000)
  {
    if (CTFontGetLanguageAwareOutsets())
    {
      __swift_destroy_boxed_opaque_existential_1(v39);

      v27 = 0;
      v28 = *a11;
      if (*(a11 + 8) > 0.0)
      {
        v27 = *(a11 + 8);
      }

      v29 = 0;
      v30 = *(a11 + 16);
      if (*(a11 + 24) > 0.0)
      {
        v29 = *(a11 + 24);
      }

      if (v28 <= v37[0])
      {
        v28 = v37[0];
      }

      *a11 = v28;
      *(a11 + 8) = v27;
      v31 = 0.0;
      if (v30 > 0.0)
      {
        v31 = v30;
      }

      *(a11 + 24) = v29;
LABEL_28:
      *(a11 + 16) = v31;
      return;
    }
  }

  if ((a10 & 1) != 0 && (CTFontIsSystemUIFont() & 1) == 0)
  {
    ClippingMetrics = CTFontGetClippingMetrics();

    __swift_destroy_boxed_opaque_existential_1(v39);
    if (ClippingMetrics)
    {
      v33 = *a11;
      v34 = Ascent - Ascent;
      if (Ascent - Ascent < 0.0)
      {
        v34 = 0.0;
      }

      if (v33 <= v34)
      {
        v33 = v34;
      }

      *a11 = v33;
      v31 = *(a11 + 16);
      v35 = Descent - Descent;
      if (Descent - Descent < 0.0)
      {
        v35 = 0.0;
      }

      if (v31 <= v35)
      {
        v31 = v35;
      }

      goto LABEL_28;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }
}

uint64_t NSAttributedString.maxFontMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = 0;
  v39 = 0;
  v37 = 0.0;
  v35 = 0.0;
  v36 = 1;
  v33 = 0u;
  v34 = 0u;
  v4 = [v1 string];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  aBlock = v5;
  v28 = v7;
  if (one-time initialization token for oversizedScalars != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CharacterSet();
  __swift_project_value_buffer(v8, static NSAttributedString.oversizedScalars);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v10 = v9;

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v11 = static Semantics_v5.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v12 = dyld_program_sdk_at_least();
  }

  else
  {
    v12 = static Semantics.forced >= v11;
  }

  v13 = v10 ^ 1;
  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  v14 = static NSAttributedStringKey.kitFont;
  v15 = [v2 length];
  v16 = swift_allocObject();
  *(v16 + 16) = &v39;
  *(v16 + 24) = &v38;
  *(v16 + 32) = &v37;
  *(v16 + 40) = &v35;
  *(v16 + 48) = v13 & 1;
  *(v16 + 49) = v12;
  *(v16 + 56) = &v33;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in NSAttributedString.maxFontMetrics.getter;
  *(v17 + 24) = v16;
  v31 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v32 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v30 = &block_descriptor_44;
  v18 = _Block_copy(&aBlock);

  [v2 enumerateAttribute:v14 inRange:0 options:v15 usingBlock:{0x100000, v18}];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v22 = v38;
    v21 = v39;
    if (v36)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v35;
    }

    v24 = -v37;
    v25 = v34;
    v26 = v33;

    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 16) = v24;
    *(a1 + 24) = v23;
    *(a1 + 32) = v26;
    *(a1 + 48) = v25;
  }

  return result;
}

uint64_t specialized InterpolatedDisplayList.updateValue()()
{
  v1 = v0;
  v530 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 80);
  if (v2 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 80) = *AGGraphGetValue() >> 1;

    *(v1 + 56) = 0;
    *(v1 + 88) = 0;
    (*(**v1 + 88))(v3);
  }

  type metadata accessor for ResolvedStyledText();
  Value = AGGraphGetValue();
  LOBYTE(v6) = v5;
  v7 = *Value;
  type metadata accessor for CGSize(0);

  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = v8[1];
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = *(v11 + 8);
  v480 = *v11;
  if (v13)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v12, &v527);
  }

  else
  {

    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v14);
    if (!v15)
    {
      if (one-time initialization token for defaultValue != -1)
      {
        goto LABEL_472;
      }

      goto LABEL_8;
    }

    v16 = *(v15 + 84);
    v17 = *(v15 + 20);
    v18 = v17 | (v16 << 32);
    v19 = *(v15 + 86);
    v20 = *(v15 + 87);
    v21 = v15[11];
    v22 = *(v15 + 24);
    *&v527 = v15[9];
    BYTE12(v527) = v16;
    DWORD2(v527) = v17;
    v23 = *(v15 + 85);
    BYTE13(v527) = v23;
    BYTE14(v527) = v19;
    HIBYTE(v527) = v20;
    i = v21;
    v529 = v22;
    v24 = v527;
LABEL_9:
    outlined copy of ContentTransition.Storage(v24, v18, v23);
  }

  v504 = ++static DisplayList.Version.lastValue;
  v481 = v13;
  if (!*(v1 + 56))
  {
    goto LABEL_19;
  }

  if (((v6 & 1) == 0 || (ResolvedStyledText.requiresTransition(to:)(v7) & 1) == 0) && *(v1 + 64) == v9 && *(v1 + 72) == v10)
  {

    goto LABEL_21;
  }

  AGGraphClearUpdate();
  v26 = *(v1 + 48);
  v524 = *(v1 + 32);
  *v525 = v26;
  v27 = *(v1 + 80);
  *&v525[16] = *(v1 + 64);
  v526 = v27;
  v28 = *(v1 + 16);
  v522 = *v1;
  v523 = v28;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v522, &v517, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
  v29 = *AGGraphGetValue();

  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v522, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
  AGGraphSetUpdate();
  v30 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v29);
  v31 = *&v525[8];

  if ((v30 & 1) == 0)
  {
    *(v1 + 88) = v504;
    if (BYTE13(v527))
    {
      goto LABEL_414;
    }

    v42 = v527;
    if ((v527 & 0x8000000000) == 0)
    {
      goto LABEL_414;
    }

    v56 = DWORD2(v527) | (BYTE12(v527) << 32);
    if (v527 ^ 0x8000000000 | DWORD2(v527) & 0xFFFFFFLL)
    {
      goto LABEL_413;
    }

    v57 = v7;
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v58 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if (dyld_program_sdk_at_least())
      {
LABEL_38:
        v59 = 0;
        v60 = 0;
        v61 = 0x302000000;
        v7 = v57;
        goto LABEL_406;
      }
    }

    else if (static Semantics.forced >= v58)
    {
      goto LABEL_38;
    }

    v7 = v57;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v59 = static ContentTransition.identity;
    v61 = dword_1EAB144D0 | (word_1EAB144D4 << 32);
    v60 = HIBYTE(word_1EAB144D4);
    outlined copy of ContentTransition.Storage(static ContentTransition.identity, v61, SHIBYTE(word_1EAB144D4));
LABEL_406:
    outlined consume of ContentTransition.Storage(v42, v56, 0);
    *&v527 = v59;
    DWORD2(v527) = v61;
    BYTE12(v527) = BYTE4(v61);
    BYTE13(v527) = v60;
    BYTE14(v527) = 1;
    v383 = (v59 & 0x8000000000) == 0 || v60 != 0;
    v42 = v59;
    v13 = v481;
    if (!v383)
    {
      goto LABEL_413;
    }

    goto LABEL_414;
  }

  if (!v31)
  {
LABEL_19:
    *(v1 + 88) = v504;
  }

LABEL_21:

  v32 = 0;
  v495 = 0;
  for (i = 0; ; v32 = i)
  {
    *(v1 + 56) = v7;
    *(v1 + 64) = v9;
    *(v1 + 72) = v10;
    v33 = v527;
    v34 = DWORD2(v527) | (BYTE12(v527) << 32);
    v35 = BYTE13(v527);
    v36 = BYTE14(v527);
    v522 = v527;
    *&v523 = v32;
    DWORD2(v523) = v529;

    ContentTransition.State.rasterizationOptions.getter(&v510);
    if ((*(v7 + 260) & 8) != 0)
    {
      v512 |= 1u;
    }

    v7 = *v1;
    v37 = *(v1 + 88);
    if (v37)
    {
      LODWORD(v37) = (2 * ((33 * (v37 >> 16)) ^ v37)) | 1;
    }

    LOWORD(v514) = v37;
    *&v522 = v33;
    BYTE12(v522) = BYTE4(v34);
    DWORD2(v522) = v34;
    BYTE13(v522) = v35;
    BYTE14(v522) = v36;
    LODWORD(v6) = *(v1 + 44);
    outlined copy of ContentTransition.Storage(v33, v34, v35);
    v38 = 1.0 / *AGGraphGetValue();
    LODWORD(v517) = v510;
    WORD2(v517) = v511;
    DWORD2(v517) = v512;
    BYTE12(v517) = v513;
    (*(*v7 + 128))(&v514, &v522, v32, v495, &v517, *(v1 + 54), v38);

    outlined consume of ContentTransition.Storage(v522, DWORD2(v522) | (BYTE12(v522) << 32), SBYTE13(v522));
    type metadata accessor for CGPoint(0);
    v39 = AGGraphGetValue();
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v1 + 20);
    v43 = AGGraphGetValue();
    v9 = v40 - *v43;
    v10 = v41 - v43[1];
    v44 = 0.0;
    v45 = 0.0;
    v46 = v9;
    v47 = v10;
    if ((*(v1 + 52) & 1) == 0)
    {
      v48 = AGGraphGetValue();
      v49 = *v48;
      v50 = v48[1];
      v51 = *AGGraphGetValue();
      v52 = v51 * 0.5;
      v53 = v49 + v51 * 0.5;
      if (v51 == 1.0)
      {
        v54 = floor(v53);
        v55 = floor(v50 + v52);
      }

      else
      {
        v54 = v51 * floor(v53 / v51);
        v55 = v51 * floor((v50 + v52) / v51);
      }

      v62 = AGGraphGetValue();
      v46 = v54 - *v62;
      v47 = v55 - v62[1];
      v44 = v46 - v9;
      v45 = v47 - v10;
    }

    if (*(v1 + 48) == *MEMORY[0x1E698D3F8])
    {
      break;
    }

    v66 = AGGraphGetValue();
    v63 = *v66;
    v65 = *(v66 + 8);
    v67 = *(v66 + 12);
    v514 = *v66;
    v515 = v65;
    v516 = v67;
    if (*(v1 + 53))
    {
      v64 = v67 << 32;

      goto LABEL_46;
    }

    v502 = *(v1 + 32);

    if ((v65 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    v515 = 0;
    v516 = 0;
    v469 = *(v63 + 2);
    if (!v469)
    {
      goto LABEL_47;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v63);
    }

    if (v504)
    {
      v70 = 2 * ((33 * (v504 >> 16)) ^ v504) + 1;
    }

    else
    {
      LOWORD(v70) = 0;
    }

    v443 = v70;
    if (!*(v63 + 2))
    {
      goto LABEL_446;
    }

    v71 = 0;
    v483 = 0;
    v487 = 0;
    v468 = v63 + 32;
    v72 = 1;
    v503 = v7;
    v416 = v9;
    v417 = v46;
    v458 = v47;
    v442 = v63;
    while (1)
    {
      v482 = v72;
      v73 = &v468[80 * v71];
      v74 = *(v73 + 8);
      if ((v74 >> 30) - 2 < 2)
      {
        v75 = v7;
        goto LABEL_391;
      }

      v76 = *(v73 + 5);
      v77 = *(v73 + 6);
      v78 = *(v73 + 7);
      if (v74 >> 30)
      {
        break;
      }

      v75 = v7;
      if (v76 >> 60 != 11)
      {
        v63 = v442;
        goto LABEL_391;
      }

      v430 = v73 + 7;
      v451 = v71;
      v453 = &v468[80 * v71];
      v1 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v79 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v427 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v424 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v421 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v418 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
      v413 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v410 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      if ((*((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0x10) == 0)
      {
        v499 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v491 = *((v76 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v80 = *(v73 + 5);
        v6 = *(v73 + 6);
        outlined copy of DisplayList.Item.Value(v76, v77, v78, v74);
        outlined copy of DisplayList.Item.Value(v80, v6, v78, v74);

        v7 = 0;
        goto LABEL_382;
      }

      v171 = *v73;
      v172 = v73[1];
      v7 = *(v1 + 16);
      v173 = *(v73 + 5);
      v174 = *(v73 + 6);
      outlined copy of DisplayList.Item.Value(v76, v77, v78, v74);
      v450 = v173;
      v441 = v174;
      v399 = v74;
      outlined copy of DisplayList.Item.Value(v173, v174, v78, v74);

      v473 = v7;
      if (v7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
        }

        v7 = v75;
        if (*(v1 + 16))
        {
          v175 = 0;
          v176 = 0;
          v499 = 0;
          LODWORD(v6) = 0;
          v435 = v47 + v172;
          v438 = v417 + v171;
          v464 = (v1 + 32);
          v177 = 1;
          v478 = v1;
          v497 = v78;
          v401 = v10;
          do
          {
            v485 = v177;
            v178 = &v464[80 * v175];
            v179 = *(v178 + 8);
            v489 = v6;
            v493 = v176;
            if ((v179 >> 30) - 2 < 2)
            {
              goto LABEL_232;
            }

            v180 = *(v178 + 5);
            v181 = *(v178 + 6);
            v182 = *(v178 + 7);
            v460 = v175;
            if (v179 >> 30 == 1)
            {
              v1 = HIDWORD(v181);
              *&v517 = *(v178 + 7);
              WORD4(v517) = v179;
              HIDWORD(v517) = HIDWORD(v179);
              v183 = v438 + *v178;
              v184 = v435 + *(v178 + 1);
              v456 = v180;
              if ((v179 & 0x10) != 0)
              {
                LOBYTE(v506) = 0;
                WORD4(v517) = 0;
                HIDWORD(v517) = 0;
                v194 = *(v182 + 2);
                v445 = v181;
                outlined copy of DisplayList.Effect(v180, v181, SBYTE4(v181));

                if (v194)
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (!*(v182 + 2))
                    {
                      goto LABEL_438;
                    }
                  }

                  else
                  {
                    v182 = specialized _ArrayBuffer._consumeAndCreateNew()(v182);
                    if (!*(v182 + 2))
                    {
                      goto LABEL_438;
                    }
                  }

                  v13 = 0;
                  v195 = 0;
                  v196 = 0;
                  v6 = (v182 + 32);
                  v7 = v194 - 1;
                  while (1)
                  {
                    closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v506, v183, v184, v44, v45);
                    if (v13 >= *(v182 + 2))
                    {
                      goto LABEL_441;
                    }

                    v522 = *v6;
                    v197 = *(v6 + 16);
                    v198 = *(v6 + 32);
                    v199 = *(v6 + 48);
                    *&v525[12] = *(v6 + 60);
                    v524 = v198;
                    *v525 = v199;
                    v523 = v197;
                    DisplayList.Item.features.getter(&v507);
                    if (v13 >= *(v182 + 2))
                    {
                      goto LABEL_443;
                    }

                    v195 |= v507;
                    v522 = *v6;
                    v200 = *(v6 + 16);
                    v201 = *(v6 + 32);
                    v202 = *(v6 + 48);
                    *&v525[12] = *(v6 + 60);
                    v524 = v201;
                    *v525 = v202;
                    v523 = v200;
                    DisplayList.Item.properties.getter(&v507);
                    v196 |= v507;
                    if (v7 == v13)
                    {
                      *&v517 = v182;
                      HIDWORD(v517) = v196;
                      WORD4(v517) = v195;
                      v187 = v506;
                      v13 = v481;
                      v7 = v503;
                      v175 = v460;
                      goto LABEL_202;
                    }

                    ++v13;
                    v6 += 80;
                    if (v13 >= *(v182 + 2))
                    {
                      goto LABEL_438;
                    }
                  }
                }

                v187 = 0;
LABEL_202:
                v186 = v445;
              }

              else
              {
                v185 = v181;
                outlined copy of DisplayList.Effect(v180, v181, SBYTE4(v181));

                v186 = v185;
                v187 = 0;
              }

              v78 = v497;
              if (v1 == 18)
              {
                v6 = v456;
                if (v7 == v456)
                {
                  v226 = *v178;
                  v227 = *(v178 + 1);
                  v228 = *(v178 + 2);
                  v229 = *(v178 + 3);
                  *&v522 = v504;
                  v230 = v186;
                  v231 = (*(*v7 + 136))(v226, v227, v228, v229, v183, v184, v44, v45);
                  outlined consume of DisplayList.Effect(v456, v230, 18);
                  v6 = 0;
                  v186 = 0;
                  v187 |= v231;
                  LOBYTE(v1) = 20;
                }

                else
                {
                  LOBYTE(v1) = 18;
                }
              }

              else
              {
                v6 = v456;
                if (v1 == 7)
                {
                  v447 = v186;
                  v1 = *(v456 + 16);
                  v216 = *(v456 + 24);
                  v408 = *(v456 + 32);
                  if ((v216 & 0x10) != 0)
                  {
                    LOBYTE(v506) = 0;
                    v218 = *(v1 + 16);

                    if (v218)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (!*(v1 + 16))
                        {
                          goto LABEL_457;
                        }
                      }

                      else
                      {
                        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                        if (!*(v1 + 16))
                        {
                          goto LABEL_457;
                        }
                      }

                      v13 = 0;
                      v216 = 0;
                      v217 = 0;
                      v6 = v1 + 32;
                      v7 = v218 - 1;
                      while (1)
                      {
                        closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v506, v183, v184, v44, v45);
                        if (v13 >= *(v1 + 16))
                        {
                          break;
                        }

                        v522 = *v6;
                        v219 = *(v6 + 16);
                        v220 = *(v6 + 32);
                        v221 = *(v6 + 48);
                        *&v525[12] = *(v6 + 60);
                        v524 = v220;
                        *v525 = v221;
                        v523 = v219;
                        DisplayList.Item.features.getter(&v507);
                        if (v13 >= *(v1 + 16))
                        {
                          goto LABEL_464;
                        }

                        v216 |= v507;
                        v522 = *v6;
                        v222 = *(v6 + 16);
                        v223 = *(v6 + 32);
                        v224 = *(v6 + 48);
                        *&v525[12] = *(v6 + 60);
                        v524 = v223;
                        *v525 = v224;
                        v523 = v222;
                        DisplayList.Item.properties.getter(&v507);
                        v217 |= v507;
                        if (v7 == v13)
                        {
                          v187 |= v506;
                          v13 = v481;
                          v7 = v503;
                          v175 = v460;
                          goto LABEL_228;
                        }

                        ++v13;
                        v6 += 80;
                        if (v13 >= *(v1 + 16))
                        {
                          goto LABEL_457;
                        }
                      }

LABEL_463:
                      __break(1u);
LABEL_464:
                      __break(1u);
LABEL_465:
                      __break(1u);
                      goto LABEL_466;
                    }

                    v216 = 0;
                    v217 = 0;
LABEL_228:
                    v6 = v456;
                  }

                  else
                  {
                    v217 = *(v456 + 28);
                  }

                  v238 = swift_allocObject();
                  *(v238 + 16) = v1;
                  *(v238 + 24) = v216;
                  *(v238 + 28) = v217;
                  *(v238 + 32) = v408;
                  outlined consume of DisplayList.Effect(v6, v447, 7);
                  v186 = 0;
                  v6 = v238;
                  LOBYTE(v1) = 7;
                  v78 = v497;
                }
              }

              v239 = v517;
              v240 = v186 | (v1 << 32);
              v241 = WORD4(v517) | (HIDWORD(v517) << 32) | 0x40000000;
              v242 = *(v178 + 5);
              v243 = *(v178 + 6);
              v244 = *(v178 + 7);
              v245 = *(v178 + 8);
              *(v178 + 5) = v6;
              *(v178 + 6) = v240;
              *(v178 + 7) = v239;
              *(v178 + 8) = v241;
              outlined consume of DisplayList.Item.Value(v242, v243, v244, v245);
              v1 = v478;
              if (v187)
              {
                goto LABEL_231;
              }
            }

            else
            {
              if (v180 >> 60 != 11)
              {
                v78 = v497;
                goto LABEL_232;
              }

              v10 = v79;
              v1 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v188 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v189 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v190 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
              v406 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
              v407 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              v404 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
              v405 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
              v403 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
              if ((v188 & 0x10) != 0)
              {
                v203 = *v178;
                v204 = *(v178 + 1);
                LOBYTE(v507) = 0;
                v205 = *(v1 + 16);
                v206 = v179;
                v6 = v180;
                v207 = v181;
                outlined copy of DisplayList.Item.Value(v180, v181, v182, v179);
                v457 = v6;
                v446 = v207;
                v400 = v206;
                outlined copy of DisplayList.Item.Value(v6, v207, v182, v206);

                if (v205)
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (!*(v1 + 16))
                    {
                      goto LABEL_449;
                    }
                  }

                  else
                  {
                    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                    if (!*(v1 + 16))
                    {
                      goto LABEL_449;
                    }
                  }

                  v13 = 0;
                  v188 = 0;
                  v191 = 0;
                  v208 = v438 + v203;
                  v209 = v435 + v204;
                  v6 = v1 + 32;
                  v7 = v205 - 1;
                  while (1)
                  {
                    closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v507, v208, v209, v44, v45);
                    if (v13 >= *(v1 + 16))
                    {
                      goto LABEL_455;
                    }

                    v522 = *v6;
                    v210 = *(v6 + 16);
                    v211 = *(v6 + 32);
                    v212 = *(v6 + 48);
                    *&v525[12] = *(v6 + 60);
                    v524 = v211;
                    *v525 = v212;
                    v523 = v210;
                    DisplayList.Item.features.getter(&v517);
                    if (v13 >= *(v1 + 16))
                    {
                      goto LABEL_456;
                    }

                    v188 |= v517;
                    v522 = *v6;
                    v213 = *(v6 + 16);
                    v214 = *(v6 + 32);
                    v215 = *(v6 + 48);
                    *&v525[12] = *(v6 + 60);
                    v524 = v214;
                    *v525 = v215;
                    v523 = v213;
                    DisplayList.Item.properties.getter(&v517);
                    v191 |= v517;
                    if (v7 == v13)
                    {
                      v225 = v507;
                      v13 = v481;
                      goto LABEL_222;
                    }

                    ++v13;
                    v6 += 80;
                    if (v13 >= *(v1 + 16))
                    {
                      goto LABEL_449;
                    }
                  }
                }

                v225 = 0;
                v188 = 0;
                v191 = 0;
LABEL_222:
                v402 = v225;
                v192 = v457;
                v193 = v446;
                LODWORD(v6) = v400;
              }

              else
              {
                v191 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                LODWORD(v6) = *(v178 + 8);
                v192 = *(v178 + 5);
                v193 = *(v178 + 6);
                outlined copy of DisplayList.Item.Value(v180, v181, v182, v179);
                outlined copy of DisplayList.Item.Value(v192, v193, v182, v6);

                v402 = 0;
              }

              v232 = swift_allocObject();
              *(v232 + 16) = v1;
              *(v232 + 24) = v188;
              *(v232 + 28) = v191;
              *(v232 + 32) = v189;
              *(v232 + 40) = v190;
              *(v232 + 48) = v407;
              *(v232 + 52) = v406;
              *(v232 + 53) = v405;
              *(v232 + 56) = v404;
              *(v232 + 60) = v403;
              outlined consume of DisplayList.Item.Value(v192, v193, v182, v6);
              v233 = v443;
              if ((v402 & 1) == 0)
              {
                v233 = v193;
              }

              v234 = *(v178 + 5);
              v235 = *(v178 + 6);
              v236 = *(v178 + 7);
              v237 = *(v178 + 8);
              *(v178 + 5) = v232 | 0xB000000000000000;
              *(v178 + 6) = v233;
              *(v178 + 7) = 0;
              *(v178 + 8) = 0;
              outlined consume of DisplayList.Item.Value(v234, v235, v236, v237);
              outlined consume of DisplayList.Item.Value(v192, v193, v182, v6);
              v47 = v458;
              v78 = v497;
              v79 = v10;
              v10 = v401;
              v1 = v478;
              v175 = v460;
              v7 = v503;
              if (v402)
              {
LABEL_231:
                *(v178 + 4) = v504;
                v489 = 1;
              }
            }

LABEL_232:
            if (v175 >= *(v1 + 16))
            {
              goto LABEL_461;
            }

            v518 = *(v178 + 1);
            v519 = *(v178 + 2);
            *v520 = *(v178 + 3);
            *&v520[12] = *(v178 + 60);
            v517 = *v178;
            DisplayList.Item.features.getter(&v507);
            if (v175 >= *(v1 + 16))
            {
              goto LABEL_462;
            }

            v246 = *(v178 + 3);
            v247 = *(v178 + 60);
            v248 = *(v178 + 1);
            v524 = *(v178 + 2);
            *&v525[12] = v247;
            v249 = *v178;
            *v525 = v246;
            v522 = v249;
            v523 = v248;
            v250 = *(&v524 + 1);
            v251 = *&v525[20];
            v252 = *&v525[16] >> 30;
            v499 |= v507;
            if (*&v525[16] >> 30 > 1u)
            {
              v176 = v493;
              v253 = v485;
              if (v252 != 2)
              {
                outlined destroy of DisplayList.Item(&v522);
                v1 = v478;
                if (v485 == v473)
                {
                  goto LABEL_379;
                }

                goto LABEL_173;
              }

              v255 = *(*(&v524 + 1) + 16);
              if (!v255)
              {
                v254 = 0;
LABEL_249:
                v1 = v478;
                goto LABEL_260;
              }

              v1 = v478;
              if (v255 > 7)
              {
                v256 = v255 & 0x7FFFFFFFFFFFFFF8;
                v260 = (*(&v524 + 1) + 188);
                v261 = 0uLL;
                v262 = v255 & 0x7FFFFFFFFFFFFFF8;
                v263 = 0uLL;
                do
                {
                  v264.i32[0] = *(v260 - 30);
                  v264.i32[1] = *(v260 - 20);
                  v264.i32[2] = *(v260 - 10);
                  v264.i32[3] = *v260;
                  v265.i32[0] = v260[10];
                  v265.i32[1] = v260[20];
                  v265.i32[2] = v260[30];
                  v265.i32[3] = v260[40];
                  v261 = vorrq_s8(v264, v261);
                  v263 = vorrq_s8(v265, v263);
                  v260 += 80;
                  v262 -= 8;
                }

                while (v262);
                v266 = vorrq_s8(v263, v261);
                *v266.i8 = vorr_s8(*v266.i8, *&vextq_s8(v266, v266, 8uLL));
                v254 = v266.i32[0] | v266.i32[1];
                if (v255 == v256)
                {
                  goto LABEL_260;
                }
              }

              else
              {
                v254 = 0;
                v256 = 0;
              }

              v267 = v255 - v256;
              v268 = (*(&v524 + 1) + 40 * v256 + 68);
              do
              {
                v269 = *v268;
                v268 += 10;
                v254 |= v269;
                --v267;
              }

              while (v267);
            }

            else
            {
              v176 = v493;
              if (v252)
              {
                v257 = v525[4];
                if (v525[4] == 2)
                {
                  outlined init with copy of DisplayList.Item(&v522, &v517);

                  v259 = v250;
                }

                else
                {
                  v258 = v525[0];
                  if (v525[4] == 7)
                  {
                    v259 = *(*(&v524 + 1) + 28);
                    outlined init with copy of DisplayList.Item(&v522, &v517);
                    outlined consume of DisplayList.Effect(v250, v258, 7);
                  }

                  else if (v525[4] == 18)
                  {
                    (*(**(&v524 + 1) + 120))(&v507);
                    outlined init with copy of DisplayList.Item(&v522, &v517);
                    outlined consume of DisplayList.Effect(v250, v258, 18);

                    v259 = v507;
                  }

                  else
                  {
                    outlined init with copy of DisplayList.Item(&v522, &v517);
                    outlined consume of DisplayList.Effect(v250, v258, v257);

                    v259 = 0;
                  }
                }

                v254 = v259 | v251;
                v1 = v478;
                v253 = v485;
                goto LABEL_260;
              }

              v253 = v485;
              if (*(&v524 + 1) >> 60 == 6)
              {
                v254 = *((*(&v524 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                goto LABEL_249;
              }

              v1 = v478;
              if (*(&v524 + 1) >> 60 != 11)
              {
                goto LABEL_261;
              }

              v254 = *((*(&v524 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            }

LABEL_260:
            v176 |= v254;
LABEL_261:
            if (v253 == v473)
            {
LABEL_379:
              v491 = v176;
              v75 = v7;
              v46 = v417;
              v80 = v450;
              v6 = v441;
              LODWORD(v74) = v399;
              v7 = v489;
              goto LABEL_382;
            }

LABEL_173:
            v175 = v253;
            v177 = v253 + 1;
            LODWORD(v6) = v489;
          }

          while (v253 < *(v1 + 16));
        }

LABEL_450:
        __break(1u);
LABEL_451:
        __break(1u);
LABEL_452:
        __break(1u);
LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:
        __break(1u);
LABEL_457:
        __break(1u);
        goto LABEL_458;
      }

      v499 = 0;
      v491 = 0;
      v46 = v417;
      v80 = v173;
      v6 = v441;
LABEL_382:
      v369 = swift_allocObject();
      *(v369 + 16) = v1;
      *(v369 + 24) = v499;
      *(v369 + 28) = v491;
      *(v369 + 32) = v79;
      *(v369 + 40) = v427;
      *(v369 + 48) = v424;
      *(v369 + 52) = v421;
      *(v369 + 53) = v418;
      *(v369 + 56) = v413;
      *(v369 + 60) = v410;
      outlined consume of DisplayList.Item.Value(v80, v6, v78, v74);
      v370 = v443;
      if ((v7 & 1) == 0)
      {
        v370 = v6;
      }

      v371 = *(v453 + 5);
      v372 = *(v453 + 6);
      v373 = *(v453 + 7);
      v374 = *(v453 + 8);
      *(v453 + 5) = v369 | 0xB000000000000000;
      *(v453 + 6) = v370;
      *v430 = 0;
      v430[1] = 0;
      outlined consume of DisplayList.Item.Value(v371, v372, v373, v374);
      outlined consume of DisplayList.Item.Value(v80, v6, v78, v74);
      v73 = v453;
      v71 = v451;
      v63 = v442;
      if (v7)
      {
        goto LABEL_390;
      }

LABEL_391:
      if (v71 >= *(v63 + 2))
      {
        goto LABEL_459;
      }

      v523 = *(v73 + 1);
      v524 = *(v73 + 2);
      *v525 = *(v73 + 3);
      *&v525[12] = *(v73 + 60);
      v522 = *v73;
      v381 = v71;
      v6 = v73;
      DisplayList.Item.features.getter(&v517);
      if (v381 >= *(v63 + 2))
      {
        goto LABEL_460;
      }

      v487 |= v517;
      v523 = *(v6 + 16);
      v524 = *(v6 + 32);
      *v525 = *(v6 + 48);
      *&v525[12] = *(v6 + 60);
      v522 = *v6;
      v42 = &v522;
      DisplayList.Item.properties.getter(&v517);
      if (v482 == v469)
      {
        v514 = v63;
        v516 = v517 | v483;
        v515 = v487;
        goto LABEL_47;
      }

      v483 |= v517;
      v71 = v482;
      v72 = v482 + 1;
      v7 = v75;
      if (v482 >= *(v63 + 2))
      {
        goto LABEL_446;
      }
    }

    v452 = v71;
    v454 = &v468[80 * v71];
    v507 = *(v73 + 7);
    v508 = v74;
    v509 = HIDWORD(v74);
    v81 = v46 + *v73;
    v459 = v47 + v73[1];
    v449 = v76;
    v440 = v77;
    if ((v74 & 0x10) != 0)
    {
      v508 = 0;
      v509 = 0;
      v83 = *(v78 + 2);
      v411 = HIDWORD(v77);
      outlined copy of DisplayList.Effect(v76, v77, SBYTE4(v77));

      v488 = v83;
      if (v83)
      {
        v6 = v7;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (*(v78 + 2))
          {
            goto LABEL_69;
          }

LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
LABEL_449:
          __break(1u);
          goto LABEL_450;
        }

        v78 = specialized _ArrayBuffer._consumeAndCreateNew()(v78);
        if (!*(v78 + 2))
        {
          goto LABEL_439;
        }

LABEL_69:
        v1 = 0;
        v500 = 0;
        v84 = 0;
        v455 = 0;
        v484 = v78 + 32;
        v85 = 1;
        v496 = v78;
        while (2)
        {
          v86 = &v484[80 * v1];
          v7 = *(v86 + 8);
          if ((v7 >> 30) - 2 < 2)
          {
LABEL_71:
            v7 = v6;
            goto LABEL_129;
          }

          v492 = v84;
          v88 = *(v86 + 5);
          v87 = *(v86 + 6);
          v89 = *(v86 + 7);
          if (v7 >> 30 != 1)
          {
            if (v88 >> 60 != 11)
            {
              v84 = v492;
              goto LABEL_71;
            }

            v470 = v85;
            v477 = v1;
            v9 = v81;
            v1 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v94 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v95 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v96 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v431 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
            v425 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            v428 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
            v422 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
            v433 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            if ((v94 & 0x10) != 0)
            {
              v107 = *v86;
              v108 = *(v86 + 1);
              LOBYTE(v506) = 0;
              v109 = *(v1 + 16);
              v110 = v87;
              outlined copy of DisplayList.Item.Value(v88, v87, v89, v7);
              v462 = v110;
              v414 = v7;
              outlined copy of DisplayList.Item.Value(v88, v110, v89, v7);

              if (v109)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (!*(v1 + 16))
                  {
                    goto LABEL_437;
                  }
                }

                else
                {
                  v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                  if (!*(v1 + 16))
                  {
                    goto LABEL_437;
                  }
                }

                v13 = 0;
                v94 = 0;
                v97 = 0;
                v111 = v9 + v107;
                v112 = v459 + v108;
                v6 = v1 + 32;
                v7 = v109 - 1;
                while (1)
                {
                  closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v506, v111, v112, v44, v45);
                  if (v13 >= *(v1 + 16))
                  {
                    goto LABEL_440;
                  }

                  v522 = *v6;
                  v113 = *(v6 + 16);
                  v114 = *(v6 + 32);
                  v115 = *(v6 + 48);
                  *&v525[12] = *(v6 + 60);
                  v524 = v114;
                  *v525 = v115;
                  v523 = v113;
                  DisplayList.Item.features.getter(&v517);
                  if (v13 >= *(v1 + 16))
                  {
                    goto LABEL_442;
                  }

                  v94 |= v517;
                  v522 = *v6;
                  v116 = *(v6 + 16);
                  v117 = *(v6 + 32);
                  v118 = *(v6 + 48);
                  *&v525[12] = *(v6 + 60);
                  v524 = v117;
                  *v525 = v118;
                  v523 = v116;
                  DisplayList.Item.properties.getter(&v517);
                  v97 |= v517;
                  if (v7 == v13)
                  {
                    break;
                  }

                  ++v13;
                  v6 += 80;
                  if (v13 >= *(v1 + 16))
                  {
                    goto LABEL_437;
                  }
                }

                v129 = v506;
                v6 = v503;
              }

              else
              {
                v129 = 0;
                v94 = 0;
                v97 = 0;
              }

              v419 = v129;
              v47 = v458;
              v98 = v462;
              LODWORD(v7) = v414;
            }

            else
            {
              v97 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
              v98 = *(v86 + 6);
              outlined copy of DisplayList.Item.Value(v88, v87, v89, v7);
              outlined copy of DisplayList.Item.Value(v88, v98, v89, v7);

              v419 = 0;
            }

            v136 = swift_allocObject();
            *(v136 + 16) = v1;
            *(v136 + 24) = v94;
            *(v136 + 28) = v97;
            *(v136 + 32) = v95;
            *(v136 + 40) = v96;
            *(v136 + 48) = v433;
            *(v136 + 52) = v431;
            *(v136 + 53) = v428;
            *(v136 + 56) = v425;
            *(v136 + 60) = v422;
            outlined consume of DisplayList.Item.Value(v88, v98, v89, v7);
            v137 = v443;
            if ((v419 & 1) == 0)
            {
              v137 = v98;
            }

            v138 = *(v86 + 5);
            v139 = *(v86 + 6);
            v140 = *(v86 + 7);
            v141 = *(v86 + 8);
            *(v86 + 5) = v136 | 0xB000000000000000;
            *(v86 + 6) = v137;
            *(v86 + 7) = 0;
            *(v86 + 8) = 0;
            outlined consume of DisplayList.Item.Value(v138, v139, v140, v141);
            outlined consume of DisplayList.Item.Value(v88, v98, v89, v7);
            v81 = v9;
            v9 = v416;
            v46 = v417;
            v84 = v492;
            v85 = v470;
            v1 = v477;
            v13 = v481;
            v7 = v6;
            if (v419)
            {
              goto LABEL_128;
            }

            goto LABEL_129;
          }

          v476 = v1;
          v1 = HIDWORD(v87);
          *&v517 = *(v86 + 7);
          WORD4(v517) = v7;
          HIDWORD(v517) = HIDWORD(v7);
          v90 = v81 + *v86;
          v91 = v459 + *(v86 + 1);
          if ((v7 & 0x10) != 0)
          {
            v505 = 0;
            WORD4(v517) = 0;
            HIDWORD(v517) = 0;
            v93 = *(v89 + 2);
            v461 = v87;
            outlined copy of DisplayList.Effect(v88, v87, SBYTE4(v87));

            if (v93)
            {
              v444 = v88;
              v471 = v85;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v89 + 2))
                {
                  goto LABEL_434;
                }
              }

              else
              {
                v89 = specialized _ArrayBuffer._consumeAndCreateNew()(v89);
                if (!*(v89 + 2))
                {
LABEL_434:
                  __break(1u);
LABEL_435:
                  __break(1u);
LABEL_436:
                  __break(1u);
LABEL_437:
                  __break(1u);
LABEL_438:
                  __break(1u);
                  goto LABEL_439;
                }
              }

              v99 = 0;
              v100 = 0;
              v13 = 0;
              v6 = (v89 + 32);
              v7 = v93 - 1;
              while (1)
              {
                closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v505, v90, v91, v44, v45);
                if (v99 >= *(v89 + 2))
                {
                  goto LABEL_435;
                }

                v522 = *v6;
                v101 = *(v6 + 16);
                v102 = *(v6 + 32);
                v103 = *(v6 + 48);
                *&v525[12] = *(v6 + 60);
                v524 = v102;
                *v525 = v103;
                v523 = v101;
                DisplayList.Item.features.getter(&v506);
                if (v99 >= *(v89 + 2))
                {
                  goto LABEL_436;
                }

                v100 |= v506;
                v522 = *v6;
                v104 = *(v6 + 16);
                v105 = *(v6 + 32);
                v106 = *(v6 + 48);
                *&v525[12] = *(v6 + 60);
                v524 = v105;
                *v525 = v106;
                v523 = v104;
                DisplayList.Item.properties.getter(&v506);
                v13 = (v506 | v13);
                if (v7 == v99)
                {
                  break;
                }

                ++v99;
                v6 += 80;
                if (v99 >= *(v89 + 2))
                {
                  goto LABEL_434;
                }
              }

              *&v517 = v89;
              HIDWORD(v517) = v13;
              WORD4(v517) = v100;
              LOBYTE(v93) = v505;
              v13 = v481;
              v7 = v503;
              v85 = v471;
              v88 = v444;
              v92 = v461;
            }

            else
            {
              v92 = v461;
              v7 = v6;
            }

            v84 = v492;
          }

          else
          {
            LODWORD(v93) = v87;
            outlined copy of DisplayList.Effect(v88, v87, SBYTE4(v87));

            v92 = v93;
            LOBYTE(v93) = 0;
            v84 = v492;
            v7 = v6;
          }

          if (v1 == 18)
          {
            if (v7 == v88)
            {
              v130 = *v86;
              v131 = *(v86 + 1);
              v132 = *(v86 + 2);
              v133 = *(v86 + 3);
              *&v522 = v504;
              v134 = v92;
              v135 = (*(*v7 + 136))(v130, v131, v132, v133, v90, v91, v44, v45);
              outlined consume of DisplayList.Effect(v88, v134, 18);
              v88 = 0;
              v92 = 0;
              LOBYTE(v93) = v135 | v93;
              v84 = v492;
              LOBYTE(v1) = 20;
              v47 = v458;
              goto LABEL_127;
            }

            LOBYTE(v1) = 18;
          }

          else if (v1 == 7)
          {
            v437 = v93;
            v463 = v92;
            v472 = v85;
            v119 = *(v88 + 16);
            v120 = *(v88 + 24);
            LODWORD(v6) = *(v88 + 32);
            if ((v120 & 0x10) != 0)
            {
              v505 = 0;
              v122 = *(v119 + 2);

              if (v122)
              {
                v434 = v6;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (!*(v119 + 2))
                  {
                    goto LABEL_444;
                  }
                }

                else
                {
                  v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v119);
                  if (!*(v119 + 2))
                  {
                    goto LABEL_444;
                  }
                }

                v13 = 0;
                v120 = 0;
                v121 = 0;
                v6 = (v119 + 32);
                v1 = v122 - 1;
                while (1)
                {
                  closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v7, v502, v504, &v505, v90, v91, v44, v45);
                  if (v13 >= *(v119 + 2))
                  {
                    goto LABEL_451;
                  }

                  v7 = &v517;
                  v522 = *v6;
                  v123 = *(v6 + 16);
                  v124 = *(v6 + 32);
                  v125 = *(v6 + 48);
                  *&v525[12] = *(v6 + 60);
                  v524 = v124;
                  *v525 = v125;
                  v523 = v123;
                  DisplayList.Item.features.getter(&v506);
                  if (v13 >= *(v119 + 2))
                  {
                    goto LABEL_452;
                  }

                  v120 |= v506;
                  v522 = *v6;
                  v126 = *(v6 + 16);
                  v127 = *(v6 + 32);
                  v128 = *(v6 + 48);
                  *&v525[12] = *(v6 + 60);
                  v524 = v127;
                  *v525 = v128;
                  v523 = v126;
                  DisplayList.Item.properties.getter(&v506);
                  v121 |= v506;
                  if (v1 == v13)
                  {
                    break;
                  }

                  ++v13;
                  v6 += 80;
                  v7 = v503;
                  if (v13 >= *(v119 + 2))
                  {
                    goto LABEL_444;
                  }
                }

                v437 |= v505;
                v13 = v481;
                v7 = v503;
                LODWORD(v6) = v434;
              }

              else
              {
                v120 = 0;
                v121 = 0;
              }
            }

            else
            {
              v121 = *(v88 + 28);
            }

            v47 = v458;
            v93 = swift_allocObject();
            *(v93 + 16) = v119;
            *(v93 + 24) = v120;
            *(v93 + 28) = v121;
            *(v93 + 32) = v6;
            outlined consume of DisplayList.Effect(v88, v463, 7);
            v92 = 0;
            v88 = v93;
            LOBYTE(v1) = 7;
            v84 = v492;
            v85 = v472;
            LOBYTE(v93) = v437;
LABEL_127:
            v142 = v517;
            v143 = v92 | (v1 << 32);
            v144 = WORD4(v517) | (HIDWORD(v517) << 32) | 0x40000000;
            v145 = *(v86 + 5);
            v146 = *(v86 + 6);
            v147 = *(v86 + 7);
            v148 = *(v86 + 8);
            *(v86 + 5) = v88;
            *(v86 + 6) = v143;
            *(v86 + 7) = v142;
            *(v86 + 8) = v144;
            outlined consume of DisplayList.Item.Value(v145, v146, v147, v148);
            v1 = v476;
            if (v93)
            {
LABEL_128:
              *(v86 + 4) = v504;
              v455 = 1;
            }

LABEL_129:
            if (v1 >= *(v496 + 2))
            {
              goto LABEL_447;
            }

            v518 = *(v86 + 1);
            v519 = *(v86 + 2);
            *v520 = *(v86 + 3);
            *&v520[12] = *(v86 + 60);
            v517 = *v86;
            DisplayList.Item.features.getter(&v506);
            if (v1 >= *(v496 + 2))
            {
              goto LABEL_448;
            }

            v84 |= v506;
            v149 = *(v86 + 3);
            v150 = *(v86 + 60);
            v151 = *(v86 + 1);
            v524 = *(v86 + 2);
            *&v525[12] = v150;
            v152 = *v86;
            *v525 = v149;
            v522 = v152;
            v523 = v151;
            v42 = *(&v524 + 1);
            v1 = *&v525[16];
            v153 = *&v525[16] >> 30;
            if (*&v525[16] >> 30 > 1u)
            {
              if (v153 != 2)
              {
                outlined destroy of DisplayList.Item(&v522);
                goto LABEL_157;
              }

              v155 = *(*(&v524 + 1) + 16);
              if (v155)
              {
                if (v155 > 7)
                {
                  v156 = v155 & 0x7FFFFFFFFFFFFFF8;
                  v160 = (*(&v524 + 1) + 188);
                  v161 = 0uLL;
                  v162 = v155 & 0x7FFFFFFFFFFFFFF8;
                  v163 = 0uLL;
                  do
                  {
                    v164.i32[0] = *(v160 - 30);
                    v164.i32[1] = *(v160 - 20);
                    v164.i32[2] = *(v160 - 10);
                    v164.i32[3] = *v160;
                    v165.i32[0] = v160[10];
                    v165.i32[1] = v160[20];
                    v165.i32[2] = v160[30];
                    v165.i32[3] = v160[40];
                    v161 = vorrq_s8(v164, v161);
                    v163 = vorrq_s8(v165, v163);
                    v160 += 80;
                    v162 -= 8;
                  }

                  while (v162);
                  v166 = vorrq_s8(v163, v161);
                  *v166.i8 = vorr_s8(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
                  v154 = v166.i32[0] | v166.i32[1];
                  if (v155 == v156)
                  {
                    goto LABEL_156;
                  }
                }

                else
                {
                  v154 = 0;
                  v156 = 0;
                }

                v167 = v155 - v156;
                v168 = (*(&v524 + 1) + 40 * v156 + 68);
                do
                {
                  v169 = *v168;
                  v168 += 10;
                  v154 |= v169;
                  --v167;
                }

                while (v167);
              }

              else
              {
                v154 = 0;
              }
            }

            else
            {
              if (!v153)
              {
                if (*(&v524 + 1) >> 60 == 6 || *(&v524 + 1) >> 60 == 11)
                {
                  v154 = *((*(&v524 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                  goto LABEL_156;
                }

LABEL_157:
                if (v85 == v488)
                {
                  v507 = v496;
                  v509 = v500;
                  v508 = v84;
                  goto LABEL_271;
                }

                v6 = v7;
                v1 = v85;
                if (v85++ >= *(v496 + 2))
                {
                  goto LABEL_439;
                }

                continue;
              }

              v157 = v525[4];
              if (v525[4] == 2)
              {
                outlined init with copy of DisplayList.Item(&v522, &v517);

                v159 = v42;
              }

              else
              {
                v158 = v525[0];
                if (v525[4] == 7)
                {
                  v159 = *(*(&v524 + 1) + 28);
                  outlined init with copy of DisplayList.Item(&v522, &v517);
                  outlined consume of DisplayList.Effect(v42, v158, 7);
                }

                else if (v525[4] == 18)
                {
                  (*(**(&v524 + 1) + 120))(&v506);
                  outlined init with copy of DisplayList.Item(&v522, &v517);
                  outlined consume of DisplayList.Effect(v42, v158, 18);

                  v159 = v506;
                }

                else
                {
                  outlined init with copy of DisplayList.Item(&v522, &v517);
                  outlined consume of DisplayList.Effect(v42, v158, v157);

                  v159 = 0;
                }
              }

              v154 = v159 | HIDWORD(v1);
              v7 = v503;
            }

LABEL_156:
            v500 |= v154;
            goto LABEL_157;
          }

          break;
        }

        v47 = v458;
        goto LABEL_127;
      }

      v455 = 0;
LABEL_271:
      LOBYTE(v82) = v411;
    }

    else
    {
      v82 = HIDWORD(v77);
      outlined copy of DisplayList.Effect(v76, v77, SBYTE4(v77));

      v455 = 0;
    }

    v63 = v442;
    if (v82 == 18)
    {
      v6 = v449;
      if (v7 == v449)
      {
        v364 = *v454;
        v365 = v454[1];
        v366 = v454[2];
        v367 = v454[3];
        *&v522 = v504;
        v75 = v7;
        v368 = (*(*v7 + 136))(v440, &v507, v502, &v522, v364, v365, v366, v367, v81, v459, v44, v45);
        outlined consume of DisplayList.Effect(v449, v440, 18);
        v6 = 0;
        v274 = 0;
        v455 |= v368;
        v273 = 20;
      }

      else
      {
        v75 = v7;
        v273 = 18;
        v274 = v440;
      }

      goto LABEL_389;
    }

    v6 = v449;
    if (v82 != 7)
    {
      v75 = v7;
      v274 = v440;
      v273 = v82;
      goto LABEL_389;
    }

    v270 = *(v449 + 16);
    v271 = *(v449 + 24);
    v436 = *(v449 + 32);
    if ((v271 & 0x10) == 0)
    {
      v1 = *(v449 + 28);
      v272 = v449;

      goto LABEL_388;
    }

    v275 = *(v270 + 2);

    v486 = v275;
    if (!v275)
    {
      v271 = 0;
      v1 = 0;
      v272 = v449;
LABEL_388:
      v75 = v7;
      v6 = swift_allocObject();
      *(v6 + 16) = v270;
      *(v6 + 24) = v271;
      *(v6 + 28) = v1;
      *(v6 + 32) = v436;
      outlined consume of DisplayList.Effect(v272, v440, 7);
      v274 = 0;
      v273 = 7;
      v63 = v442;
LABEL_389:
      v375 = v507;
      v376 = v508 | (v509 << 32) | 0x40000000;
      v377 = *(v454 + 5);
      v378 = *(v454 + 6);
      v379 = *(v454 + 7);
      v380 = *(v454 + 8);
      *(v454 + 5) = v6;
      *(v454 + 6) = v274 | (v273 << 32);
      *(v454 + 7) = v375;
      *(v454 + 8) = v376;
      outlined consume of DisplayList.Item.Value(v377, v378, v379, v380);
      v73 = v454;
      v71 = v452;
      if ((v455 & 1) == 0)
      {
        goto LABEL_391;
      }

LABEL_390:
      *(v73 + 4) = v504;
      goto LABEL_391;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v270 = specialized _ArrayBuffer._consumeAndCreateNew()(v270);
      if (!*(v270 + 2))
      {
        goto LABEL_399;
      }

LABEL_282:
      v276 = 0;
      LODWORD(v6) = 0;
      v277 = 0;
      v439 = 0;
      v479 = v270 + 32;
      v1 = 1;
      v448 = v270;
      while (2)
      {
        v278 = &v479[80 * v276];
        v13 = *(v278 + 8);
        v498 = v6;
        v494 = v1;
        v501 = v276;
        if ((v13 >> 30) - 2 < 2)
        {
          goto LABEL_342;
        }

        v490 = v277;
        v280 = *(v278 + 5);
        v279 = *(v278 + 6);
        v281 = *(v278 + 7);
        if (v13 >> 30 == 1)
        {
          v282 = HIDWORD(v279);
          *&v517 = *(v278 + 7);
          WORD4(v517) = v13;
          HIDWORD(v517) = HIDWORD(v13);
          v283 = v81 + *v278;
          v284 = v459 + *(v278 + 1);
          v474 = v279;
          if ((v13 & 0x10) != 0)
          {
            v505 = 0;
            WORD4(v517) = 0;
            HIDWORD(v517) = 0;
            v292 = v280;
            v293 = *(v281 + 2);
            v465 = v292;
            outlined copy of DisplayList.Effect(v292, v279, SBYTE4(v279));

            if (v293)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v281 + 2))
                {
                  goto LABEL_445;
                }
              }

              else
              {
                v281 = specialized _ArrayBuffer._consumeAndCreateNew()(v281);
                if (!*(v281 + 2))
                {
                  goto LABEL_445;
                }
              }

              v13 = 0;
              v1 = 0;
              v294 = 0;
              v6 = (v281 + 32);
              v7 = v293 - 1;
              while (1)
              {
                closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v505, v283, v284, v44, v45);
                if (v13 >= *(v281 + 2))
                {
                  goto LABEL_453;
                }

                v522 = *v6;
                v295 = *(v6 + 16);
                v296 = *(v6 + 32);
                v297 = *(v6 + 48);
                *&v525[12] = *(v6 + 60);
                v524 = v296;
                *v525 = v297;
                v523 = v295;
                DisplayList.Item.features.getter(&v506);
                if (v13 >= *(v281 + 2))
                {
                  goto LABEL_454;
                }

                v1 = v506 | v1;
                v522 = *v6;
                v298 = *(v6 + 16);
                v299 = *(v6 + 32);
                v300 = *(v6 + 48);
                *&v525[12] = *(v6 + 60);
                v524 = v299;
                *v525 = v300;
                v523 = v298;
                DisplayList.Item.properties.getter(&v506);
                v294 |= v506;
                if (v7 == v13)
                {
                  break;
                }

                ++v13;
                v6 += 80;
                if (v13 >= *(v281 + 2))
                {
                  goto LABEL_445;
                }
              }

              *&v517 = v281;
              HIDWORD(v517) = v294;
              WORD4(v517) = v1;
              v285 = v505;
              v7 = v503;
            }

            else
            {
              v285 = 0;
            }

            v280 = v465;
          }

          else
          {
            outlined copy of DisplayList.Effect(v280, v279, SBYTE4(v279));

            v285 = 0;
          }

          v277 = v490;
          if (v282 == 18)
          {
            if (MEMORY[0x193AC0FF0](v280, v7))
            {
              v315 = *v278;
              v316 = *(v278 + 1);
              v317 = *(v278 + 2);
              v318 = *(v278 + 3);
              *&v522 = v504;
              v1 = v474;
              v319 = (*(*v7 + 136))(v474, &v517, v502, &v522, v315, v316, v317, v318, v283, v284, v44, v45);
              outlined consume of DisplayList.Effect(v280, v474, 18);
              v280 = 0;
              v320 = 0;
              v285 |= v319;
              v277 = v490;
              LOBYTE(v282) = 20;
              v47 = v458;
              goto LABEL_340;
            }

            LOBYTE(v282) = 18;
          }

          else if (v282 == 7)
          {
            v312 = *(v280 + 16);
            LOWORD(v282) = *(v280 + 24);
            v1 = *(v280 + 32);
            if ((v282 & 0x10) != 0)
            {
              v467 = v280;
              v505 = 0;
              v321 = *(v312 + 2);

              if (v321)
              {
                v432 = v1;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (!*(v312 + 2))
                  {
                    goto LABEL_467;
                  }
                }

                else
                {
                  v312 = specialized _ArrayBuffer._consumeAndCreateNew()(v312);
                  if (!*(v312 + 2))
                  {
                    goto LABEL_467;
                  }
                }

                v13 = 0;
                LOWORD(v282) = 0;
                v313 = 0;
                v6 = (v312 + 32);
                v7 = v321 - 1;
                while (1)
                {
                  closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v505, v283, v284, v44, v45);
                  if (v13 >= *(v312 + 2))
                  {
                    goto LABEL_470;
                  }

                  v1 = &v517;
                  v522 = *v6;
                  v322 = *(v6 + 16);
                  v323 = *(v6 + 32);
                  v324 = *(v6 + 48);
                  *&v525[12] = *(v6 + 60);
                  v524 = v323;
                  *v525 = v324;
                  v523 = v322;
                  DisplayList.Item.features.getter(&v506);
                  if (v13 >= *(v312 + 2))
                  {
                    goto LABEL_471;
                  }

                  LOWORD(v282) = v506 | v282;
                  v522 = *v6;
                  v325 = *(v6 + 16);
                  v326 = *(v6 + 32);
                  v327 = *(v6 + 48);
                  *&v525[12] = *(v6 + 60);
                  v524 = v326;
                  *v525 = v327;
                  v523 = v325;
                  DisplayList.Item.properties.getter(&v506);
                  v313 |= v506;
                  if (v7 == v13)
                  {
                    break;
                  }

                  ++v13;
                  v6 += 80;
                  if (v13 >= *(v312 + 2))
                  {
                    goto LABEL_467;
                  }
                }

                v285 |= v505;
                v7 = v503;
                v1 = v432;
              }

              else
              {
                LOWORD(v282) = 0;
                v313 = 0;
              }

              v47 = v458;
              v314 = v467;
            }

            else
            {
              v313 = *(v280 + 28);

              v47 = v458;
              v314 = v280;
            }

            v280 = swift_allocObject();
            *(v280 + 16) = v312;
            *(v280 + 24) = v282;
            *(v280 + 28) = v313;
            *(v280 + 32) = v1;
            outlined consume of DisplayList.Effect(v314, v474, 7);
            v320 = 0;
            LOBYTE(v282) = 7;
            v277 = v490;
LABEL_340:
            v335 = v517;
            v336 = WORD4(v517) | (HIDWORD(v517) << 32) | 0x40000000;
            v337 = *(v278 + 5);
            v338 = *(v278 + 6);
            v339 = *(v278 + 7);
            v340 = *(v278 + 8);
            *(v278 + 5) = v280;
            *(v278 + 6) = v320 | (v282 << 32);
            *(v278 + 7) = v335;
            *(v278 + 8) = v336;
            outlined consume of DisplayList.Item.Value(v337, v338, v339, v340);
            v270 = v448;
            if (v285)
            {
LABEL_341:
              *(v278 + 4) = v504;
              v439 = 1;
            }

            goto LABEL_342;
          }

          v47 = v458;
          v320 = v474;
          goto LABEL_340;
        }

        if (v280 >> 60 == 11)
        {
          v9 = v81;
          v286 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v287 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v288 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v289 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v426 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v429 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v420 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v423 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
          v415 = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
          if ((v287 & 0x10) != 0)
          {
            v301 = *v278;
            v302 = *(v278 + 1);
            LOBYTE(v506) = 0;
            v6 = v280;
            v303 = *(v286 + 2);
            v1 = v279;
            outlined copy of DisplayList.Item.Value(v6, v279, v281, v13);
            v466 = v6;
            v475 = v1;
            outlined copy of DisplayList.Item.Value(v6, v1, v281, v13);

            v409 = v13;
            if (v303)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (*(v286 + 2))
                {
LABEL_304:
                  v13 = 0;
                  v287 = 0;
                  v1 = 0;
                  v304 = v9 + v301;
                  v305 = v459 + v302;
                  v6 = (v286 + 32);
                  v7 = v303 - 1;
                  while (1)
                  {
                    closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v503, v502, v504, &v506, v304, v305, v44, v45);
                    if (v13 >= *(v286 + 2))
                    {
                      goto LABEL_465;
                    }

                    v522 = *v6;
                    v306 = *(v6 + 16);
                    v307 = *(v6 + 32);
                    v308 = *(v6 + 48);
                    *&v525[12] = *(v6 + 60);
                    v524 = v307;
                    *v525 = v308;
                    v523 = v306;
                    DisplayList.Item.features.getter(&v517);
                    if (v13 >= *(v286 + 2))
                    {
                      break;
                    }

                    v287 |= v517;
                    v522 = *v6;
                    v309 = *(v6 + 16);
                    v310 = *(v6 + 32);
                    v311 = *(v6 + 48);
                    *&v525[12] = *(v6 + 60);
                    v524 = v310;
                    *v525 = v311;
                    v523 = v309;
                    DisplayList.Item.properties.getter(&v517);
                    v1 = v517 | v1;
                    if (v7 == v13)
                    {
                      v328 = v506;
                      v7 = v503;
                      goto LABEL_332;
                    }

                    ++v13;
                    v6 += 80;
                    if (v13 >= *(v286 + 2))
                    {
                      goto LABEL_458;
                    }
                  }

LABEL_466:
                  __break(1u);
LABEL_467:
                  __break(1u);
LABEL_468:
                  __break(1u);
LABEL_469:
                  __break(1u);
LABEL_470:
                  __break(1u);
LABEL_471:
                  __break(1u);
LABEL_472:
                  swift_once();
LABEL_8:
                  v24 = static ContentTransition.State.defaultValue;
                  v18 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
                  v527 = static ContentTransition.State.defaultValue;
                  v23 = BYTE13(static ContentTransition.State.defaultValue);
                  i = off_1ED536620;
                  v529 = dword_1ED536628;
                  goto LABEL_9;
                }
              }

              else
              {
                v286 = specialized _ArrayBuffer._consumeAndCreateNew()(v286);
                if (*(v286 + 2))
                {
                  goto LABEL_304;
                }
              }

LABEL_458:
              __break(1u);
LABEL_459:
              __break(1u);
LABEL_460:
              __break(1u);
LABEL_461:
              __break(1u);
LABEL_462:
              __break(1u);
              goto LABEL_463;
            }

            v328 = 0;
            v287 = 0;
            LODWORD(v1) = 0;
LABEL_332:
            v412 = v328;
            v47 = v458;
            v291 = v466;
            v290 = v475;
            v13 = v409;
          }

          else
          {
            LODWORD(v1) = *((v280 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v290 = *(v278 + 6);
            outlined copy of DisplayList.Item.Value(v280, v279, v281, v13);
            outlined copy of DisplayList.Item.Value(v280, v290, v281, v13);

            v412 = 0;
            v291 = v280;
          }

          v329 = swift_allocObject();
          *(v329 + 16) = v286;
          *(v329 + 24) = v287;
          *(v329 + 28) = v1;
          *(v329 + 32) = v288;
          *(v329 + 40) = v289;
          *(v329 + 48) = v429;
          *(v329 + 52) = v426;
          *(v329 + 53) = v423;
          *(v329 + 56) = v420;
          *(v329 + 60) = v415;
          outlined consume of DisplayList.Item.Value(v291, v290, v281, v13);
          v1 = v412;
          v330 = v443;
          if ((v412 & 1) == 0)
          {
            v330 = v290;
          }

          v331 = *(v278 + 5);
          v332 = *(v278 + 6);
          v333 = *(v278 + 7);
          v334 = *(v278 + 8);
          *(v278 + 5) = v329 | 0xB000000000000000;
          *(v278 + 6) = v330;
          *(v278 + 7) = 0;
          *(v278 + 8) = 0;
          outlined consume of DisplayList.Item.Value(v331, v332, v333, v334);
          outlined consume of DisplayList.Item.Value(v291, v290, v281, v13);
          v81 = v9;
          v9 = v416;
          v46 = v417;
          v270 = v448;
          v277 = v490;
          if (v412)
          {
            goto LABEL_341;
          }
        }

        else
        {
          v277 = v490;
        }

LABEL_342:
        LOBYTE(v6) = v501;
        if (v501 >= *(v270 + 2))
        {
          goto LABEL_468;
        }

        v518 = *(v278 + 1);
        v519 = *(v278 + 2);
        *v520 = *(v278 + 3);
        *&v520[12] = *(v278 + 60);
        v517 = *v278;
        DisplayList.Item.features.getter(&v506);
        if (v501 >= *(v270 + 2))
        {
          goto LABEL_469;
        }

        v277 |= v506;
        v341 = *(v278 + 3);
        v342 = *(v278 + 60);
        v343 = *(v278 + 1);
        v524 = *(v278 + 2);
        *&v525[12] = v342;
        v344 = *v278;
        *v525 = v341;
        v522 = v344;
        v523 = v343;
        v42 = *(&v524 + 1);
        v345 = *&v525[20];
        v346 = *&v525[16] >> 30;
        if (*&v525[16] >> 30 > 1u)
        {
          v6 = v498;
          v347 = v494;
          if (v346 != 2)
          {
            outlined destroy of DisplayList.Item(&v522);
            goto LABEL_370;
          }

          v349 = *(*(&v524 + 1) + 16);
          if (v349)
          {
            if (v349 > 7)
            {
              v350 = v349 & 0x7FFFFFFFFFFFFFF8;
              v354 = (*(&v524 + 1) + 188);
              v355 = 0uLL;
              v356 = v349 & 0x7FFFFFFFFFFFFFF8;
              v357 = 0uLL;
              do
              {
                v358.i32[0] = *(v354 - 30);
                v358.i32[1] = *(v354 - 20);
                v358.i32[2] = *(v354 - 10);
                v358.i32[3] = *v354;
                v359.i32[0] = v354[10];
                v359.i32[1] = v354[20];
                v359.i32[2] = v354[30];
                v359.i32[3] = v354[40];
                v355 = vorrq_s8(v358, v355);
                v357 = vorrq_s8(v359, v357);
                v354 += 80;
                v356 -= 8;
              }

              while (v356);
              v360 = vorrq_s8(v357, v355);
              *v360.i8 = vorr_s8(*v360.i8, *&vextq_s8(v360, v360, 8uLL));
              v348 = v360.i32[0] | v360.i32[1];
              if (v349 == v350)
              {
                break;
              }
            }

            else
            {
              v348 = 0;
              v350 = 0;
            }

            v361 = v349 - v350;
            v362 = (*(&v524 + 1) + 40 * v350 + 68);
            do
            {
              v363 = *v362;
              v362 += 10;
              v348 |= v363;
              --v361;
            }

            while (v361);
          }

          else
          {
            v348 = 0;
          }
        }

        else
        {
          if (!v346)
          {
            v6 = v498;
            v347 = v494;
            if (*(&v524 + 1) >> 60 == 6 || *(&v524 + 1) >> 60 == 11)
            {
              v348 = *((*(&v524 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
              break;
            }

LABEL_370:
            if (v347 == v486)
            {
              v271 = v277;
              v13 = v481;
              v455 |= v439;
              v272 = v449;
              v1 = v6;
              goto LABEL_388;
            }

            v276 = v347;
            v1 = v347 + 1;
            if (v347 >= *(v270 + 2))
            {
              goto LABEL_399;
            }

            continue;
          }

          v351 = v525[4];
          if (v525[4] == 2)
          {
            outlined init with copy of DisplayList.Item(&v522, &v517);

            v353 = v42;
          }

          else
          {
            v352 = v525[0];
            if (v525[4] == 7)
            {
              v353 = *(*(&v524 + 1) + 28);
              outlined init with copy of DisplayList.Item(&v522, &v517);
              outlined consume of DisplayList.Effect(v42, v352, 7);
            }

            else if (v525[4] == 18)
            {
              (*(**(&v524 + 1) + 120))(&v506);
              outlined init with copy of DisplayList.Item(&v522, &v517);
              outlined consume of DisplayList.Effect(v42, v352, 18);

              v353 = v506;
            }

            else
            {
              outlined init with copy of DisplayList.Item(&v522, &v517);
              outlined consume of DisplayList.Effect(v42, v352, v351);

              v353 = 0;
            }
          }

          v348 = v353 | v345;
          LODWORD(v6) = v498;
          v347 = v494;
        }

        break;
      }

      v6 = v348 | v6;
      goto LABEL_370;
    }

    if (*(v270 + 2))
    {
      goto LABEL_282;
    }

LABEL_399:
    __break(1u);
LABEL_413:
    if (!(v42 ^ 0x8000000001 | DWORD2(v527) & 0xFFFFFF))
    {
LABEL_416:
      if (v42 ^ 0x8000000001 | DWORD2(v527) & 0xFFFFFF)
      {
        goto LABEL_417;
      }

LABEL_423:

      v495 = 0;
      i = 0;
      goto LABEL_426;
    }

LABEL_414:
    ResolvedStyledText.modifyTransition(state:to:)(&v527, v7);
    if (!BYTE13(v527))
    {
      v42 = v527;
      if ((v527 & 0x8000000000) != 0)
      {
        goto LABEL_416;
      }
    }

LABEL_417:
    if (!AGGraphGetOutputValue())
    {
      goto LABEL_423;
    }

    if (i || (AGGraphClearUpdate(), v384 = *(v1 + 48), v519 = *(v1 + 32), *v520 = v384, v385 = *(v1 + 80), *&v520[16] = *(v1 + 64), v521 = v385, v386 = *(v1 + 16), v517 = *v1, v518 = v386, outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v517, &v514, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList), v387 = *AGGraphGetValue(), , outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v517, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList), AGGraphSetUpdate(), v388 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v387), , (i = v388) != 0))
    {
      AGGraphClearUpdate();
      v389 = *(v1 + 48);
      v519 = *(v1 + 32);
      *v520 = v389;
      v390 = *(v1 + 80);
      *&v520[16] = *(v1 + 64);
      v521 = v390;
      v391 = *(v1 + 16);
      v517 = *v1;
      v518 = v391;
      outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v517, &v514, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
      v392 = *AGGraphGetValue();

      outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v517, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
      AGGraphSetUpdate();
      v393 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE017AnimationListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v392);
      v394 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE024AnimationLogicalListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v392);

      if (v393)
      {
        v13 = v481;
        if (v394)
        {
          type metadata accessor for ListenerPair();
          v395 = swift_allocObject();
          *(v395 + 16) = v393;
          *(v395 + 24) = v394;
          v495 = v395;
        }

        else
        {
          v495 = v393;
        }
      }

      else
      {
        v495 = v394;
        v13 = v481;
      }

LABEL_426:
      v396 = v480;
    }

    else
    {
      v495 = 0;
      v396 = v480;
      v13 = v481;
    }

    LOBYTE(v517) = HIBYTE(v527);
    if (v13)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v396, &v514);

      v397 = v514;
    }

    else
    {
      v398 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v396);
      if (v398)
      {
        v397 = *(v398 + 72);
      }

      else
      {
        v397 = 0;
      }
    }

    LOBYTE(v507) = v397;
    ContentTransition.applyEnvironmentValues(style:layoutDirection:)(&v517, &v507);
  }

  v63 = MEMORY[0x1E69E7CC0];
  v514 = MEMORY[0x1E69E7CC0];
  v515 = 0;
  v516 = 0;
  if (*(v1 + 53))
  {
    v64 = 0;
    v65 = 0;
LABEL_46:
    v68 = swift_allocObject();
    *(v68 + 16) = v7;
    *(v68 + 24) = v46;
    *(v68 + 32) = v47;
    *(v68 + 40) = v44;
    *(v68 + 48) = v45;
    v522 = 0u;
    v523 = 0u;
    *&v524 = v504;
    *(&v524 + 1) = v68;
    *v525 = 0x1100000000;
    *&v525[8] = v63;
    *&v525[16] = v64 | v65 | 0x40000000;
    *&v525[24] = 0;

    DisplayList.init(_:)(&v522, &v517);
    v514 = v517;
    v515 = WORD4(v517);
    v516 = HIDWORD(v517);
  }

LABEL_47:
  *&v522 = v504;
  DisplayList.translate(by:version:)(__PAIR128__(*&v10, *&v9), &v522);
  *&v522 = v514;
  WORD4(v522) = v515;
  HIDWORD(v522) = v516;
  AGGraphSetOutputValue();

  outlined consume of ContentTransition.Storage(v527, DWORD2(v527) | (BYTE12(v527) << 32), SBYTE13(v527));
}

{
  v1 = v0;
  v2 = v597;
  v3 = v593;
  v4 = v582;
  v5 = v581;
  v601 = *MEMORY[0x1E69E9840];
  v6 = *(v0 + 264);
  if (v6 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 264) = *AGGraphGetValue() >> 1;
    v7 = *(v1 + 104);
    v582[2] = *(v1 + 88);
    v582[3] = v7;
    v8 = *(v1 + 72);
    v582[0] = *(v1 + 56);
    v582[1] = v8;
    v9 = *(v1 + 168);
    v582[6] = *(v1 + 152);
    v582[7] = v9;
    v10 = *(v1 + 136);
    v582[4] = *(v1 + 120);
    v582[5] = v10;
    *(&v582[10] + 11) = *(v1 + 227);
    v11 = *(v1 + 216);
    v12 = *(v1 + 184);
    v582[9] = *(v1 + 200);
    v582[10] = v11;
    v582[8] = v12;
    outlined destroy of GlassEntryView?(v582, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved, MEMORY[0x1E69E6720]);
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(__dst);
    v13 = __dst[9];
    *(v1 + 184) = __dst[8];
    *(v1 + 200) = v13;
    *(v1 + 216) = __dst[10];
    *(v1 + 227) = *(&__dst[10] + 11);
    v14 = __dst[5];
    *(v1 + 120) = __dst[4];
    *(v1 + 136) = v14;
    v15 = __dst[7];
    *(v1 + 152) = __dst[6];
    *(v1 + 168) = v15;
    v16 = __dst[1];
    *(v1 + 56) = __dst[0];
    *(v1 + 72) = v16;
    v17 = __dst[3];
    *(v1 + 88) = __dst[2];
    *(v1 + 104) = v17;
    *(v1 + 272) = 0;
    (*(**v1 + 88))();
  }

  v18 = v592;
  v19 = &v584;
  Value = AGGraphGetValue();
  LOBYTE(v22) = v21;
  v23 = Value[3];
  v25 = *Value;
  v24 = Value[1];
  v599[2] = Value[2];
  v599[3] = v23;
  v599[0] = v25;
  v599[1] = v24;
  v26 = Value[7];
  v28 = Value[4];
  v27 = Value[5];
  v599[6] = Value[6];
  v599[7] = v26;
  v599[4] = v28;
  v599[5] = v27;
  v30 = Value[9];
  v29 = Value[10];
  v31 = *(Value + 171);
  v599[8] = Value[8];
  *(v600 + 11) = v31;
  v599[9] = v30;
  v600[0] = v29;
  v32 = Value[9];
  v597[8] = Value[8];
  v597[9] = v32;
  v598[0] = Value[10];
  *(v598 + 11) = *(Value + 171);
  v33 = Value[5];
  v597[4] = Value[4];
  v597[5] = v33;
  v34 = Value[7];
  v597[6] = Value[6];
  v597[7] = v34;
  v35 = Value[1];
  v597[0] = *Value;
  v597[1] = v35;
  v36 = Value[3];
  v597[2] = Value[2];
  v597[3] = v36;
  type metadata accessor for CGSize(0);
  outlined init with copy of Image.Resolved(v599, __dst);
  v37 = AGGraphGetValue();
  v38 = *v37;
  v39 = v37[1];
  v40 = AGGraphGetValue();
  v41 = *v40;
  v537 = *v40;
  v538 = *(v40 + 8);
  if (v538)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v41, &v594);
  }

  else
  {

    v43 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v42);
    if (!v43)
    {
      if (one-time initialization token for defaultValue != -1)
      {
        goto LABEL_470;
      }

      goto LABEL_8;
    }

    v44 = *(v43 + 84);
    v45 = *(v43 + 20);
    v46 = v45 | (v44 << 32);
    v47 = *(v43 + 86);
    v48 = *(v43 + 87);
    v49 = v43[11];
    v50 = *(v43 + 24);
    *&v594 = v43[9];
    BYTE12(v594) = v44;
    DWORD2(v594) = v45;
    v51 = *(v43 + 85);
    BYTE13(v594) = v51;
    BYTE14(v594) = v47;
    HIBYTE(v594) = v48;
    v595 = v49;
    v596 = v50;
    v52 = v594;
LABEL_9:
    outlined copy of ContentTransition.Storage(v52, v46, v51);
  }

  v568 = ++static DisplayList.Version.lastValue;
  v53 = *(v1 + 200);
  *(v19 + 400) = *(v1 + 184);
  *(v19 + 416) = v53;
  *(v19 + 432) = *(v1 + 216);
  *(v18 + 171) = *(v1 + 227);
  v54 = *(v1 + 136);
  *(v18 + 64) = *(v1 + 120);
  *(v18 + 80) = v54;
  v55 = *(v1 + 168);
  *(v18 + 96) = *(v1 + 152);
  *(v18 + 112) = v55;
  v56 = *(v1 + 72);
  *v18 = *(v1 + 56);
  *(v18 + 16) = v56;
  v57 = *(v1 + 104);
  *(v18 + 32) = *(v1 + 88);
  *(v18 + 48) = v57;
  v58 = *(v1 + 200);
  *(v18 + 320) = *(v1 + 184);
  *(v18 + 336) = v58;
  *(v18 + 352) = *(v1 + 216);
  *(v3 + 171) = *(v1 + 227);
  v59 = *(v1 + 136);
  *(v3 + 64) = *(v1 + 120);
  *(v3 + 80) = v59;
  v60 = *(v1 + 168);
  *(v3 + 96) = *(v1 + 152);
  *(v3 + 112) = v60;
  v61 = *(v1 + 72);
  *v3 = *(v1 + 56);
  *(v3 + 16) = v61;
  v62 = *(v1 + 104);
  *(v3 + 32) = *(v1 + 88);
  *(v3 + 48) = v62;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v593) != 1)
  {
    v63 = *(v18 + 144);
    *(v19 + 208) = *(v18 + 128);
    *(v19 + 224) = v63;
    *(v19 + 240) = *(v18 + 160);
    *(v19 + 251) = *(v18 + 171);
    v64 = *(v18 + 80);
    *(v19 + 144) = *(v18 + 64);
    *(v19 + 160) = v64;
    v65 = *(v18 + 112);
    *(v19 + 176) = *(v18 + 96);
    *(v19 + 192) = v65;
    v66 = *(v18 + 16);
    *(v19 + 80) = *v18;
    *(v19 + 96) = v66;
    v67 = *(v18 + 48);
    *(v19 + 112) = *(v18 + 32);
    *(v19 + 128) = v67;
    if (v22)
    {
      v73 = v2[9];
      __dst[8] = v2[8];
      __dst[9] = v73;
      __dst[10] = v2[10];
      *(&__dst[10] + 11) = *(v2 + 171);
      v74 = v2[5];
      __dst[4] = v2[4];
      __dst[5] = v74;
      v75 = v2[7];
      __dst[6] = v2[6];
      __dst[7] = v75;
      v76 = v2[1];
      __dst[0] = *v2;
      __dst[1] = v76;
      v77 = v2[3];
      __dst[2] = v2[2];
      __dst[3] = v77;
      v78 = *(v18 + 144);
      *(v4 + 128) = *(v18 + 128);
      *(v4 + 144) = v78;
      *(v4 + 160) = *(v18 + 160);
      *(v4 + 171) = *(v18 + 171);
      v79 = *(v18 + 80);
      *(v4 + 64) = *(v18 + 64);
      *(v4 + 80) = v79;
      v80 = *(v18 + 112);
      *(v4 + 96) = *(v18 + 96);
      *(v4 + 112) = v80;
      v81 = *(v18 + 16);
      *v4 = *v18;
      *(v4 + 16) = v81;
      v82 = *(v18 + 48);
      *(v4 + 32) = *(v18 + 32);
      *(v4 + 48) = v82;
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v592, v581, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved, MEMORY[0x1E69E6720]);
      if (!specialized static Image.Resolved.== infix(_:_:)(v582, __dst))
      {
        goto LABEL_384;
      }
    }

    else
    {
      v68 = *(v18 + 144);
      __dst[8] = *(v18 + 128);
      __dst[9] = v68;
      __dst[10] = *(v18 + 160);
      *(&__dst[10] + 11) = *(v18 + 171);
      v69 = *(v18 + 80);
      __dst[4] = *(v18 + 64);
      __dst[5] = v69;
      v70 = *(v18 + 112);
      __dst[6] = *(v18 + 96);
      __dst[7] = v70;
      v71 = *(v18 + 16);
      __dst[0] = *v18;
      __dst[1] = v71;
      v72 = *(v18 + 48);
      __dst[2] = *(v18 + 32);
      __dst[3] = v72;
      outlined init with copy of Image.Resolved(__dst, v582);
    }

    v83 = *(v19 + 224);
    __dst[8] = *(v19 + 208);
    __dst[9] = v83;
    __dst[10] = *(v19 + 240);
    *(&__dst[10] + 11) = *(v19 + 251);
    v84 = *(v19 + 160);
    __dst[4] = *(v19 + 144);
    __dst[5] = v84;
    v85 = *(v19 + 192);
    __dst[6] = *(v19 + 176);
    __dst[7] = v85;
    v86 = *(v19 + 96);
    __dst[0] = *(v19 + 80);
    __dst[1] = v86;
    v87 = *(v19 + 128);
    __dst[2] = *(v19 + 112);
    __dst[3] = v87;
    outlined destroy of Image.Resolved(__dst);
  }

LABEL_15:
  v88 = *(v1 + 200);
  __dst[8] = *(v1 + 184);
  __dst[9] = v88;
  __dst[10] = *(v1 + 216);
  *(&__dst[10] + 11) = *(v1 + 227);
  v89 = *(v1 + 136);
  __dst[4] = *(v1 + 120);
  __dst[5] = v89;
  v90 = *(v1 + 168);
  __dst[6] = *(v1 + 152);
  __dst[7] = v90;
  v91 = *(v1 + 72);
  __dst[0] = *(v1 + 56);
  __dst[1] = v91;
  v92 = *(v1 + 104);
  __dst[2] = *(v1 + 88);
  __dst[3] = v92;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(__dst) == 1)
  {
    *(v1 + 272) = v568;
  }

  v93 = 0;
  v548 = 0;
  v595 = 0;
LABEL_18:
  v94 = *(v1 + 184);
  v95 = *(v1 + 216);
  *(v5 + 144) = *(v1 + 200);
  *(v5 + 160) = v95;
  *(v5 + 171) = *(v1 + 227);
  v96 = *(v1 + 120);
  v97 = *(v1 + 152);
  *(v5 + 80) = *(v1 + 136);
  *(v5 + 96) = v97;
  *(v5 + 112) = *(v1 + 168);
  *(v5 + 128) = v94;
  v98 = *(v1 + 72);
  v581[0] = *(v1 + 56);
  v581[1] = v98;
  v581[2] = *(v1 + 88);
  *(v5 + 48) = *(v1 + 104);
  *(v5 + 64) = v96;
  outlined destroy of GlassEntryView?(v581, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved, MEMORY[0x1E69E6720]);
  v100 = v2[8];
  v99 = v2[9];
  v101 = v2[7];
  *(v4 + 128) = v100;
  *(v4 + 144) = v99;
  v102 = v2[9];
  *(v4 + 160) = v2[10];
  *(v4 + 171) = *(v2 + 171);
  v104 = v2[4];
  v103 = v2[5];
  v105 = v2[3];
  *(v4 + 64) = v104;
  *(v4 + 80) = v103;
  v106 = v2[5];
  v108 = v2[6];
  v107 = v2[7];
  *(v4 + 96) = v108;
  *(v4 + 112) = v107;
  v109 = v2[1];
  *v4 = *v2;
  *(v4 + 16) = v109;
  v110 = v2[3];
  v112 = *v2;
  v111 = v2[1];
  v113 = v2[2];
  *(v4 + 32) = v113;
  *(v4 + 48) = v110;
  __dst[8] = v100;
  __dst[9] = v102;
  __dst[10] = v2[10];
  *(&__dst[10] + 11) = *(v2 + 171);
  __dst[4] = v104;
  __dst[5] = v106;
  __dst[6] = v108;
  __dst[7] = v101;
  __dst[0] = v112;
  __dst[1] = v111;
  __dst[2] = v113;
  __dst[3] = v105;
  _ViewInputs.base.modify(__dst, v114);
  v115 = __dst[9];
  *(v1 + 184) = __dst[8];
  *(v1 + 200) = v115;
  *(v1 + 216) = __dst[10];
  *(v1 + 227) = *(&__dst[10] + 11);
  v116 = __dst[5];
  *(v1 + 120) = __dst[4];
  *(v1 + 136) = v116;
  v117 = __dst[7];
  *(v1 + 152) = __dst[6];
  *(v1 + 168) = v117;
  v118 = __dst[1];
  *(v1 + 56) = __dst[0];
  *(v1 + 72) = v118;
  v119 = __dst[3];
  *(v1 + 88) = __dst[2];
  *(v1 + 104) = v119;
  *(v1 + 248) = v38;
  *(v1 + 256) = v39;
  v3 = v594;
  v5 = DWORD2(v594) | (BYTE12(v594) << 32);
  v120 = BYTE13(v594);
  v121 = BYTE14(v594);
  v584 = v594;
  *&v585 = v93;
  DWORD2(v585) = v596;
  outlined init with copy of Image.Resolved(v582, &v588);

  ContentTransition.State.rasterizationOptions.getter(&v577);
  v567 = *v1;
  v122 = *(v1 + 272);
  if (v122)
  {
    LODWORD(v122) = (2 * ((33 * (v122 >> 16)) ^ v122)) | 1;
  }

  LOWORD(v574) = v122;
  *&v588 = v3;
  BYTE12(v588) = BYTE4(v5);
  DWORD2(v588) = v5;
  BYTE13(v588) = v120;
  BYTE14(v588) = v121;
  outlined copy of ContentTransition.Storage(v3, v5, v120);
  v123 = 1.0 / *AGGraphGetValue();
  LODWORD(v584) = v577;
  WORD2(v584) = v578;
  DWORD2(v584) = v579;
  BYTE12(v584) = v580;
  v18 = v567;
  (*(*v567 + 128))(&v574, &v588, v93, v548, &v584, *(v1 + 54), v123);

  outlined consume of ContentTransition.Storage(v588, DWORD2(v588) | (BYTE12(v588) << 32), SBYTE13(v588));
  type metadata accessor for CGPoint(0);
  v124 = AGGraphGetValue();
  v125 = *v124;
  v126 = v124[1];
  v127 = AGGraphGetValue();
  v38 = v125 - *v127;
  v39 = v126 - v127[1];
  v128 = 0.0;
  v129 = 0.0;
  v130 = v38;
  v131 = v39;
  if ((*(v1 + 52) & 1) == 0)
  {
    v132 = AGGraphGetValue();
    v133 = *v132;
    v134 = v132[1];
    v135 = *AGGraphGetValue();
    v136 = v135 * 0.5;
    v137 = v133 + v135 * 0.5;
    if (v135 == 1.0)
    {
      v138 = floor(v137);
      v139 = floor(v134 + v136);
    }

    else
    {
      v138 = v135 * floor(v137 / v135);
      v139 = v135 * floor((v134 + v136) / v135);
    }

    v140 = AGGraphGetValue();
    v130 = v138 - *v140;
    v131 = v139 - v140[1];
    v128 = v130 - v38;
    v129 = v131 - v39;
  }

  if (*(v1 + 48) == *MEMORY[0x1E698D3F8])
  {
    v141 = MEMORY[0x1E69E7CC0];
    v574 = MEMORY[0x1E69E7CC0];
    v575 = 0;
    v576 = 0;
    if (*(v1 + 53))
    {
      v142 = 0;
      v22 = 0;
LABEL_30:
      v146 = swift_allocObject();
      *(v146 + 16) = v567;
      *(v146 + 24) = v130;
      *(v146 + 32) = v131;
      *(v146 + 40) = v128;
      *(v146 + 48) = v129;
      *(v19 + 80) = 0u;
      *(v19 + 96) = 0u;
      *&v590 = v568;
      *(&v590 + 1) = v146;
      *v591 = 0x1100000000;
      *&v591[8] = v141;
      *&v591[16] = v142 | v22 | 0x40000000;
      *&v591[24] = 0;

      DisplayList.init(_:)(&v588, &v584);
      v574 = v584;
      v575 = WORD4(v584);
      v576 = HIDWORD(v584);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v143 = AGGraphGetValue();
  v144 = *v143;
  v22 = *(v143 + 8);
  v145 = *(v143 + 12);
  v574 = *v143;
  v575 = v22;
  v576 = v145;
  if (*(v1 + 53))
  {
    v142 = v145 << 32;
    v141 = v144;

    goto LABEL_30;
  }

  v566 = *(v1 + 32);
  v552 = v144;

  if ((v22 & 0x10) != 0)
  {
    v575 = 0;
    v576 = 0;
    v530 = *(v552 + 2);
    if (v530)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v552 = specialized _ArrayBuffer._consumeAndCreateNew()(v552);
      }

      if (v568)
      {
        v153 = 2 * ((33 * (v568 >> 16)) ^ v568) + 1;
      }

      else
      {
        LOWORD(v153) = 0;
      }

      v508 = v153;
      v154 = v552;
      if (!*(v552 + 2))
      {
        goto LABEL_444;
      }

      v155 = 0;
      v540 = 0;
      v544 = 0;
      v529 = v552 + 32;
      v156 = 1;
      v483 = v38;
      v484 = v130;
      v526 = v131;
      while (1)
      {
        v539 = v156;
        v157 = &v529[80 * v155];
        v1 = *(v157 + 8);
        if ((v1 >> 30) - 2 < 2)
        {
          goto LABEL_373;
        }

        v158 = *(v157 + 5);
        v159 = *(v157 + 6);
        v22 = *(v157 + 7);
        if (v1 >> 30)
        {
          v512 = v155;
          v514 = &v529[80 * v155];
          v571 = *(v157 + 7);
          v572 = v1;
          v573 = HIDWORD(v1);
          v163 = v130 + *v157;
          v527 = v131 + v157[1];
          v509 = v158;
          v506 = v159;
          if ((v1 & 0x10) != 0)
          {
            v572 = 0;
            v573 = 0;
            v165 = *(v22 + 16);
            v478 = HIDWORD(v159);
            outlined copy of DisplayList.Effect(v158, v159, SBYTE4(v159));

            v545 = v165;
            if (v165)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v22 + 16))
                {
                  goto LABEL_437;
                }
              }

              else
              {
                v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                if (!*(v22 + 16))
                {
                  goto LABEL_437;
                }
              }

              v19 = 0;
              v549 = 0;
              v564 = 0;
              v522 = 0;
              v541 = v22 + 32;
              v3 = 1;
              v553 = v22;
              while (2)
              {
                v166 = v541 + 80 * v19;
                v5 = *(v166 + 64);
                v556 = v3;
                v560 = v19;
                if ((v5 >> 30) - 2 < 2)
                {
                  goto LABEL_111;
                }

                v167 = *(v166 + 40);
                v1 = *(v166 + 48);
                v22 = *(v166 + 56);
                if (v5 >> 30 == 1)
                {
                  *&v584 = *(v166 + 56);
                  WORD4(v584) = v5;
                  HIDWORD(v584) = HIDWORD(v5);
                  v168 = v163 + *v166;
                  v169 = v527 + *(v166 + 8);
                  v531 = v1;
                  if ((v5 & 0x10) != 0)
                  {
                    v569 = 0;
                    WORD4(v584) = 0;
                    HIDWORD(v584) = 0;
                    v172 = v167;
                    v173 = *(v22 + 16);
                    v515 = v172;
                    v502 = HIDWORD(v1);
                    outlined copy of DisplayList.Effect(v172, v1, SBYTE4(v1));

                    if (v173)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (*(v22 + 16))
                        {
                          goto LABEL_62;
                        }

LABEL_425:
                        __break(1u);
LABEL_426:
                        v548 = 0;
LABEL_427:
                        LOBYTE(v581[0]) = HIBYTE(v594);
                        if (v538)
                        {

                          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v537, &v584);

                          v457 = v584;
                        }

                        else
                        {
                          v458 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v537);
                          if (v458)
                          {
                            v457 = *(v458 + 72);
                          }

                          else
                          {
                            v457 = 0;
                          }
                        }

                        LOBYTE(v574) = v457;
                        ContentTransition.applyEnvironmentValues(style:layoutDirection:)(v581, &v574);
                        v459 = *(v19 + 224);
                        *(v4 + 128) = *(v19 + 208);
                        *(v4 + 144) = v459;
                        *(v4 + 160) = *(v19 + 240);
                        *(v4 + 171) = *(v19 + 251);
                        v460 = *(v19 + 160);
                        *(v4 + 64) = *(v19 + 144);
                        *(v4 + 80) = v460;
                        v461 = *(v19 + 192);
                        *(v4 + 96) = *(v19 + 176);
                        *(v4 + 112) = v461;
                        v462 = *(v19 + 96);
                        *v4 = *(v19 + 80);
                        *(v4 + 16) = v462;
                        v463 = *(v19 + 128);
                        *(v4 + 32) = *(v19 + 112);
                        *(v4 + 48) = v463;
                        outlined destroy of Image.Resolved(v582);
                        v93 = v595;
                        goto LABEL_18;
                      }

                      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                      if (!*(v22 + 16))
                      {
                        goto LABEL_425;
                      }

LABEL_62:
                      v18 = 0;
                      v4 = 0;
                      v5 = 0;
                      v1 = v22 + 32;
                      v19 = v173 - 1;
                      while (1)
                      {
                        closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v1, v567, v566, v568, &v569, v168, v169, v128, v129);
                        if (v18 >= *(v22 + 16))
                        {
                          break;
                        }

                        v3 = &v584;
                        v588 = *v1;
                        v174 = *(v1 + 16);
                        v175 = *(v1 + 32);
                        v176 = *(v1 + 48);
                        *&v591[12] = *(v1 + 60);
                        v590 = v175;
                        *v591 = v176;
                        v589 = v174;
                        DisplayList.Item.features.getter(&v570);
                        if (v18 >= *(v22 + 16))
                        {
                          goto LABEL_434;
                        }

                        v4 = v570 | v4;
                        v588 = *v1;
                        v177 = *(v1 + 16);
                        v178 = *(v1 + 32);
                        v179 = *(v1 + 48);
                        *&v591[12] = *(v1 + 60);
                        v590 = v178;
                        *v591 = v179;
                        v589 = v177;
                        DisplayList.Item.properties.getter(&v570);
                        v5 = v570 | v5;
                        if (v19 == v18)
                        {
                          *&v584 = v22;
                          HIDWORD(v584) = v5;
                          WORD4(v584) = v4;
                          v1 = v569;
                          v18 = v567;
                          goto LABEL_80;
                        }

                        ++v18;
                        v1 += 80;
                        if (v18 >= *(v22 + 16))
                        {
                          goto LABEL_425;
                        }
                      }

                      __break(1u);
LABEL_434:
                      __break(1u);
LABEL_435:
                      __break(1u);
LABEL_436:
                      __break(1u);
LABEL_437:
                      __break(1u);
LABEL_438:
                      __break(1u);
LABEL_439:
                      __break(1u);
LABEL_440:
                      __break(1u);
LABEL_441:
                      __break(1u);
LABEL_442:
                      __break(1u);
LABEL_443:
                      __break(1u);
LABEL_444:
                      __break(1u);
LABEL_445:
                      __break(1u);
LABEL_446:
                      __break(1u);
LABEL_447:
                      __break(1u);
LABEL_448:
                      __break(1u);
LABEL_449:
                      __break(1u);
LABEL_450:
                      __break(1u);
LABEL_451:
                      __break(1u);
LABEL_452:
                      __break(1u);
LABEL_453:
                      __break(1u);
LABEL_454:
                      __break(1u);
LABEL_455:
                      __break(1u);
                      goto LABEL_456;
                    }

                    v1 = 0;
LABEL_80:
                    v167 = v515;
                    v3 = v502;
                  }

                  else
                  {
                    v3 = HIDWORD(v1);
                    outlined copy of DisplayList.Effect(v167, v1, SBYTE4(v1));

                    v1 = 0;
                  }

                  v22 = v553;
                  if (v3 == 18)
                  {
                    if (v18 == v167)
                    {
                      v199 = *v166;
                      v200 = *(v166 + 8);
                      v201 = *(v166 + 16);
                      v202 = *(v166 + 24);
                      *&v588 = v568;
                      v19 = v531;
                      v203 = (*(*v18 + 136))(v531, &v584, v566, &v588, v199, v200, v201, v202, v168, v169, v128, v129);
                      outlined consume of DisplayList.Effect(v167, v531, 18);
                      v167 = 0;
                      v191 = 0;
                      v1 = v203 | v1;
                      v22 = v553;
                      LOBYTE(v3) = 20;
                      v131 = v526;
                      goto LABEL_109;
                    }

                    LOBYTE(v3) = 18;
                  }

                  else if (v3 == 7)
                  {
                    v22 = *(v167 + 16);
                    v18 = *(v167 + 24);
                    v5 = *(v167 + 32);
                    if ((v18 & 0x10) != 0)
                    {
                      v517 = v167;
                      v569 = 0;
                      v192 = *(v22 + 16);

                      if (v192)
                      {
                        v19 = &v584;
                        v503 = v5;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!*(v22 + 16))
                          {
                            goto LABEL_442;
                          }
                        }

                        else
                        {
                          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                          if (!*(v22 + 16))
                          {
                            goto LABEL_442;
                          }
                        }

                        v4 = 0;
                        v18 = 0;
                        v2 = 0;
                        v3 = v22 + 32;
                        v5 = v192 - 1;
                        while (1)
                        {
                          closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v3, v567, v566, v568, &v569, v168, v169, v128, v129);
                          if (v4 >= *(v22 + 16))
                          {
                            goto LABEL_449;
                          }

                          v588 = *v3;
                          v193 = *(v3 + 16);
                          v194 = *(v3 + 32);
                          v195 = *(v3 + 48);
                          *&v591[12] = *(v3 + 60);
                          v590 = v194;
                          *v591 = v195;
                          v589 = v193;
                          DisplayList.Item.features.getter(&v570);
                          if (v4 >= *(v22 + 16))
                          {
                            goto LABEL_450;
                          }

                          v18 = v570 | v18;
                          v588 = *v3;
                          v196 = *(v3 + 16);
                          v197 = *(v3 + 32);
                          v198 = *(v3 + 48);
                          *&v591[12] = *(v3 + 60);
                          v590 = v197;
                          *v591 = v198;
                          v589 = v196;
                          DisplayList.Item.properties.getter(&v570);
                          v2 = (v570 | v2);
                          if (v5 == v4)
                          {
                            break;
                          }

                          ++v4;
                          v3 += 80;
                          if (v4 >= *(v22 + 16))
                          {
                            goto LABEL_442;
                          }
                        }

                        v1 = v569 | v1;
                        v5 = v503;
                      }

                      else
                      {
                        LOWORD(v18) = 0;
                        LODWORD(v2) = 0;
                      }

                      v131 = v526;
                      v3 = v517;
                    }

                    else
                    {
                      LODWORD(v2) = *(v167 + 28);

                      v131 = v526;
                      v3 = v167;
                    }

                    v167 = swift_allocObject();
                    *(v167 + 16) = v22;
                    *(v167 + 24) = v18;
                    *(v167 + 28) = v2;
                    *(v167 + 32) = v5;
                    outlined consume of DisplayList.Effect(v3, v531, 7);
                    v191 = 0;
                    LOBYTE(v3) = 7;
                    v2 = v597;
                    v18 = v567;
                    v22 = v553;
LABEL_109:
                    v210 = v584;
                    v211 = WORD4(v584) | (HIDWORD(v584) << 32) | 0x40000000;
                    v212 = *(v166 + 40);
                    v213 = *(v166 + 48);
                    v214 = *(v166 + 56);
                    v215 = *(v166 + 64);
                    *(v166 + 40) = v167;
                    *(v166 + 48) = v191 | (v3 << 32);
                    *(v166 + 56) = v210;
                    *(v166 + 64) = v211;
                    outlined consume of DisplayList.Item.Value(v212, v213, v214, v215);
                    if (v1)
                    {
LABEL_110:
                      *(v166 + 32) = v568;
                      v522 = 1;
                    }

                    goto LABEL_111;
                  }

                  v131 = v526;
                  v191 = v531;
                  goto LABEL_109;
                }

                if (v167 >> 60 == 11)
                {
                  v38 = v163;
                  v3 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v2 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v170 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v171 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                  v18 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                  v495 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
                  v489 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
                  v492 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
                  v486 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
                  v497 = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                  if ((v2 & 0x10) != 0)
                  {
                    v180 = *v166;
                    v181 = *(v166 + 8);
                    LOBYTE(v570) = 0;
                    v19 = v167;
                    v182 = *(v3 + 16);
                    outlined copy of DisplayList.Item.Value(v19, v1, v22, v5);
                    v516 = v19;
                    v481 = v5;
                    outlined copy of DisplayList.Item.Value(v19, v1, v22, v5);

                    v532 = v1;
                    if (v182)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (!*(v3 + 16))
                        {
                          goto LABEL_435;
                        }
                      }

                      else
                      {
                        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                        if (!*(v3 + 16))
                        {
                          goto LABEL_435;
                        }
                      }

                      v4 = 0;
                      v2 = 0;
                      v18 = 0;
                      v183 = v38 + v180;
                      v184 = v527 + v181;
                      v1 = v3 + 32;
                      v19 = v182 - 1;
                      while (1)
                      {
                        closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v1, v567, v566, v568, &v570, v183, v184, v128, v129);
                        if (v4 >= *(v3 + 16))
                        {
                          goto LABEL_438;
                        }

                        v5 = &v584;
                        v588 = *v1;
                        v185 = *(v1 + 16);
                        v186 = *(v1 + 32);
                        v187 = *(v1 + 48);
                        *&v591[12] = *(v1 + 60);
                        v590 = v186;
                        *v591 = v187;
                        v589 = v185;
                        DisplayList.Item.features.getter(&v584);
                        if (v4 >= *(v3 + 16))
                        {
                          goto LABEL_440;
                        }

                        v2 = (v584 | v2);
                        v588 = *v1;
                        v188 = *(v1 + 16);
                        v189 = *(v1 + 32);
                        v190 = *(v1 + 48);
                        *&v591[12] = *(v1 + 60);
                        v590 = v189;
                        *v591 = v190;
                        v589 = v188;
                        DisplayList.Item.properties.getter(&v584);
                        v18 = v584 | v18;
                        if (v19 == v4)
                        {
                          break;
                        }

                        ++v4;
                        v1 += 80;
                        if (v4 >= *(v3 + 16))
                        {
                          goto LABEL_435;
                        }
                      }

                      v4 = v570;
                    }

                    else
                    {
                      v4 = 0;
                      LOWORD(v2) = 0;
                      LODWORD(v18) = 0;
                    }

                    v131 = v526;
                    v1 = v516;
                    v5 = v532;
                    v19 = v481;
                  }

                  else
                  {
                    LODWORD(v18) = *((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                    v19 = *(v166 + 64);
                    outlined copy of DisplayList.Item.Value(v167, v1, v22, v5);
                    outlined copy of DisplayList.Item.Value(v167, v1, v22, v5);

                    v4 = 0;
                    v5 = v1;
                    v1 = v167;
                  }

                  v204 = swift_allocObject();
                  *(v204 + 16) = v3;
                  *(v204 + 24) = v2;
                  *(v204 + 28) = v18;
                  *(v204 + 32) = v170;
                  *(v204 + 40) = v171;
                  *(v204 + 48) = v497;
                  *(v204 + 52) = v495;
                  *(v204 + 53) = v492;
                  *(v204 + 56) = v489;
                  *(v204 + 60) = v486;
                  outlined consume of DisplayList.Item.Value(v1, v5, v22, v19);
                  v205 = v508;
                  if ((v4 & 1) == 0)
                  {
                    v205 = v5;
                  }

                  v206 = *(v166 + 40);
                  v207 = *(v166 + 48);
                  v208 = *(v166 + 56);
                  v209 = *(v166 + 64);
                  *(v166 + 40) = v204 | 0xB000000000000000;
                  *(v166 + 48) = v205;
                  *(v166 + 56) = 0;
                  *(v166 + 64) = 0;
                  outlined consume of DisplayList.Item.Value(v206, v207, v208, v209);
                  outlined consume of DisplayList.Item.Value(v1, v5, v22, v19);
                  v2 = v597;
                  v18 = v567;
                  v22 = v553;
                  v163 = v38;
                  v38 = v483;
                  v130 = v484;
                  if (v4)
                  {
                    goto LABEL_110;
                  }
                }

                else
                {
                  v22 = v553;
                }

LABEL_111:
                v3 = v560;
                if (v560 >= *(v22 + 16))
                {
                  goto LABEL_445;
                }

                v585 = *(v166 + 16);
                v586 = *(v166 + 32);
                v587[0] = *(v166 + 48);
                v19 = &v584;
                *(v587 + 12) = *(v166 + 60);
                v584 = *v166;
                DisplayList.Item.features.getter(&v570);
                if (v560 >= *(v22 + 16))
                {
                  goto LABEL_446;
                }

                v216 = *(v166 + 48);
                v217 = *(v166 + 60);
                v218 = *(v166 + 16);
                v590 = *(v166 + 32);
                *&v591[12] = v217;
                v219 = *v166;
                *v591 = v216;
                v588 = v219;
                v589 = v218;
                v220 = *(&v590 + 1);
                v1 = *&v591[16];
                v221 = *&v591[16] >> 30;
                v564 |= v570;
                if (*&v591[16] >> 30 > 1u)
                {
                  if (v221 != 2)
                  {
                    outlined destroy of DisplayList.Item(&v588);
                    v228 = v545;
                    v222 = v556;
                    goto LABEL_140;
                  }

                  v224 = *(*(&v590 + 1) + 16);
                  v222 = v556;
                  if (v224)
                  {
                    if (v224 > 7)
                    {
                      v225 = v224 & 0x7FFFFFFFFFFFFFF8;
                      v229 = (*(&v590 + 1) + 188);
                      v230 = 0uLL;
                      v231 = v224 & 0x7FFFFFFFFFFFFFF8;
                      v232 = 0uLL;
                      do
                      {
                        v233.i32[0] = *(v229 - 30);
                        v233.i32[1] = *(v229 - 20);
                        v233.i32[2] = *(v229 - 10);
                        v233.i32[3] = *v229;
                        v234.i32[0] = v229[10];
                        v234.i32[1] = v229[20];
                        v234.i32[2] = v229[30];
                        v234.i32[3] = v229[40];
                        v230 = vorrq_s8(v233, v230);
                        v232 = vorrq_s8(v234, v232);
                        v229 += 80;
                        v231 -= 8;
                      }

                      while (v231);
                      v235 = vorrq_s8(v232, v230);
                      *v235.i8 = vorr_s8(*v235.i8, *&vextq_s8(v235, v235, 8uLL));
                      v223 = v235.i32[0] | v235.i32[1];
                      if (v224 == v225)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v223 = 0;
                      v225 = 0;
                    }

                    v236 = v224 - v225;
                    v237 = (*(&v590 + 1) + 40 * v225 + 68);
                    do
                    {
                      v238 = *v237;
                      v237 += 10;
                      v223 |= v238;
                      --v236;
                    }

                    while (v236);
                  }

                  else
                  {
                    v223 = 0;
                  }
                }

                else
                {
                  if (!v221)
                  {
                    v222 = v556;
                    if (*(&v590 + 1) >> 60 == 6 || *(&v590 + 1) >> 60 == 11)
                    {
                      v223 = *((*(&v590 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                      break;
                    }

LABEL_139:
                    v228 = v545;
LABEL_140:
                    if (v222 == v228)
                    {
                      v571 = v22;
                      v573 = v549;
                      v572 = v564;
                      goto LABEL_249;
                    }

                    v19 = v222;
                    v3 = v222 + 1;
                    if (v222 >= *(v22 + 16))
                    {
                      goto LABEL_437;
                    }

                    continue;
                  }

                  v226 = v591[4];
                  if (v591[4] == 2)
                  {
                    outlined init with copy of DisplayList.Item(&v588, &v584);

                    v3 = v220;
                  }

                  else
                  {
                    v227 = v591[0];
                    if (v591[4] == 7)
                    {
                      v3 = *(*(&v590 + 1) + 28);
                      outlined init with copy of DisplayList.Item(&v588, &v584);
                      outlined consume of DisplayList.Effect(v220, v227, 7);
                    }

                    else if (v591[4] == 18)
                    {
                      (*(**(&v590 + 1) + 120))(&v570);
                      outlined init with copy of DisplayList.Item(&v588, &v584);
                      outlined consume of DisplayList.Effect(v220, v227, 18);

                      v3 = v570;
                    }

                    else
                    {
                      outlined init with copy of DisplayList.Item(&v588, &v584);
                      outlined consume of DisplayList.Effect(v220, v227, v226);

                      v3 = 0;
                    }
                  }

                  v223 = v3 | HIDWORD(v1);
                  v22 = v553;
                  v222 = v556;
                }

                break;
              }

              v549 |= v223;
              goto LABEL_139;
            }

            v522 = 0;
LABEL_249:
            LOBYTE(v164) = v478;
          }

          else
          {
            v164 = HIDWORD(v159);
            outlined copy of DisplayList.Effect(v158, v159, SBYTE4(v159));

            v522 = 0;
          }

          if (v164 == 18)
          {
            v324 = v509;
            if (v18 == v509)
            {
              v414 = *v514;
              v415 = v514[1];
              v416 = v514[2];
              v417 = v514[3];
              *&v588 = v568;
              v3 = v506;
              v418 = (*(*v18 + 136))(v506, &v571, v566, &v588, v414, v415, v416, v417, v163, v527, v128, v129);
              outlined consume of DisplayList.Effect(v509, v506, 18);
              v324 = 0;
              v327 = 0;
              v522 |= v418;
              v326 = 20;
            }

            else
            {
              v326 = 18;
              v327 = v506;
            }
          }

          else
          {
            v324 = v509;
            if (v164 == 7)
            {
              v22 = *(v509 + 16);
              v5 = *(v509 + 24);
              v501 = *(v509 + 32);
              if ((v5 & 0x10) != 0)
              {
                v328 = *(v22 + 16);

                v555 = v328;
                if (v328)
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (*(v22 + 16))
                    {
                      goto LABEL_260;
                    }

LABEL_383:
                    __break(1u);
LABEL_384:
                    AGGraphClearUpdate();
                    memcpy(__dst, v1, 0x118uLL);
                    outlined init with copy of InterpolatedDisplayList<Image.Resolved>(__dst, v582);
                    v434 = *AGGraphGetValue();

                    outlined destroy of InterpolatedDisplayList<Image.Resolved>(__dst);
                    AGGraphSetUpdate();
                    v435 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v434);

                    if (v435)
                    {
                      v436 = *(v19 + 224);
                      *(v4 + 128) = *(v19 + 208);
                      *(v4 + 144) = v436;
                      *(v4 + 160) = *(v19 + 240);
                      *(v4 + 171) = *(v19 + 251);
                      v437 = *(v19 + 160);
                      *(v4 + 64) = *(v19 + 144);
                      *(v4 + 80) = v437;
                      v438 = *(v19 + 192);
                      *(v4 + 96) = *(v19 + 176);
                      *(v4 + 112) = v438;
                      v439 = *(v19 + 96);
                      *v4 = *(v19 + 80);
                      *(v4 + 16) = v439;
                      v440 = *(v19 + 128);
                      *(v4 + 32) = *(v19 + 112);
                      *(v4 + 48) = v440;
                      outlined destroy of Image.Resolved(v582);
                      goto LABEL_15;
                    }

                    *(v1 + 272) = v568;
                    if (BYTE13(v594))
                    {
                      goto LABEL_474;
                    }

                    v441 = v594;
                    if ((v594 & 0x8000000000) == 0)
                    {
                      goto LABEL_474;
                    }

                    v442 = DWORD2(v594) | (BYTE12(v594) << 32);
                    if (v594 ^ 0x8000000000 | DWORD2(v594) & 0xFFFFFFLL)
                    {
                      v445 = 0;
                    }

                    else
                    {
                      if (one-time initialization token for v4 != -1)
                      {
                        swift_once();
                      }

                      v443 = static Semantics.v4;
                      if (one-time initialization token for forced != -1)
                      {
                        swift_once();
                      }

                      swift_beginAccess();
                      if (byte_1ED53C51C == 1)
                      {
                        if ((dyld_program_sdk_at_least() & 1) == 0)
                        {
                          goto LABEL_395;
                        }

LABEL_401:
                        if (one-time initialization token for interpolate != -1)
                        {
                          swift_once();
                        }

                        v444 = &static ContentTransition.interpolate;
                      }

                      else
                      {
                        if (static Semantics.forced >= v443)
                        {
                          goto LABEL_401;
                        }

LABEL_395:
                        if (one-time initialization token for identity != -1)
                        {
                          swift_once();
                        }

                        v444 = &static ContentTransition.identity;
                      }

                      v446 = *(v444 + 12);
                      v447 = *(v444 + 2);
                      v448 = *v444;
                      v449 = *(v444 + 13);
                      outlined copy of ContentTransition.Storage(*v444, v447 | (v446 << 32), *(v444 + 13));
                      outlined consume of ContentTransition.Storage(v441, v442, 0);
                      *&v594 = v448;
                      BYTE12(v594) = v446;
                      DWORD2(v594) = v447;
                      BYTE13(v594) = v449;
                      BYTE14(v594) = 1;
                      v450 = (v448 & 0x8000000000) != 0 && v449 == 0;
                      v445 = !v450;
                      v441 = v448;
                      v19 = &v584;
                    }

                    if (v445 || v441 ^ 0x8000000001 | DWORD2(v594) & 0xFFFFFF)
                    {
LABEL_474:
                      Image.Resolved.modifyTransition(state:to:)(&v594, v597);
                      if (BYTE13(v594))
                      {
                        goto LABEL_473;
                      }

                      v441 = v594;
                      if ((v594 & 0x8000000000) == 0)
                      {
                        goto LABEL_473;
                      }
                    }

                    if (v441 ^ 0x8000000001 | DWORD2(v594) & 0xFFFFFF)
                    {
LABEL_473:
                      if (AGGraphGetOutputValue())
                      {
                        if (!v595)
                        {
                          AGGraphClearUpdate();
                          memcpy(v582, v1, 0x118uLL);
                          outlined init with copy of InterpolatedDisplayList<Image.Resolved>(v582, v581);
                          v451 = *AGGraphGetValue();

                          outlined destroy of InterpolatedDisplayList<Image.Resolved>(v582);
                          AGGraphSetUpdate();
                          v452 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v451);

                          v595 = v452;
                          if (!v452)
                          {
                            goto LABEL_426;
                          }
                        }

                        AGGraphClearUpdate();
                        memcpy(v582, v1, 0x118uLL);
                        outlined init with copy of InterpolatedDisplayList<Image.Resolved>(v582, v581);
                        v453 = *AGGraphGetValue();

                        outlined destroy of InterpolatedDisplayList<Image.Resolved>(v582);
                        AGGraphSetUpdate();
                        v454 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE017AnimationListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v453);
                        v455 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE024AnimationLogicalListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v453);

                        if (v454)
                        {
                          if (v455)
                          {
                            type metadata accessor for ListenerPair();
                            v456 = swift_allocObject();
                            *(v456 + 16) = v454;
                            *(v456 + 24) = v455;
                            v548 = v456;
                          }

                          else
                          {
                            v548 = v454;
                          }
                        }

                        else
                        {
                          v548 = v455;
                        }

                        goto LABEL_427;
                      }
                    }

                    v548 = 0;
                    v595 = 0;
                    goto LABEL_427;
                  }

                  v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                  if (!*(v22 + 16))
                  {
                    goto LABEL_383;
                  }

LABEL_260:
                  v1 = 0;
                  LODWORD(v3) = 0;
                  v5 = 0;
                  v505 = 0;
                  v551 = v22 + 32;
                  v329 = 1;
                  v547 = v22;
                  while (2)
                  {
                    v558 = v3;
                    v3 = v551 + 80 * v1;
                    v330 = *(v3 + 64);
                    v562 = v5;
                    v565 = v329;
                    if ((v330 >> 30) - 2 < 2)
                    {
                      goto LABEL_320;
                    }

                    v332 = *(v3 + 40);
                    v331 = *(v3 + 48);
                    v22 = *(v3 + 56);
                    v543 = v1;
                    if (v330 >> 30 == 1)
                    {
                      v2 = HIDWORD(v331);
                      *&v584 = *(v3 + 56);
                      WORD4(v584) = v330;
                      HIDWORD(v584) = HIDWORD(v330);
                      v333 = v163 + *v3;
                      v334 = v527 + *(v3 + 8);
                      v535 = v331;
                      if ((v330 & 0x10) != 0)
                      {
                        v569 = 0;
                        WORD4(v584) = 0;
                        HIDWORD(v584) = 0;
                        v339 = v332;
                        v340 = *(v22 + 16);
                        v519 = v339;
                        outlined copy of DisplayList.Effect(v339, v331, SBYTE4(v331));

                        if (v340)
                        {
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            if (!*(v22 + 16))
                            {
                              goto LABEL_443;
                            }
                          }

                          else
                          {
                            v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                            if (!*(v22 + 16))
                            {
                              goto LABEL_443;
                            }
                          }

                          v5 = 0;
                          v1 = 0;
                          v4 = 0;
                          v341 = (v22 + 32);
                          v19 = v340 - 1;
                          while (1)
                          {
                            closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v341, v18, v566, v568, &v569, v333, v334, v128, v129);
                            if (v5 >= *(v22 + 16))
                            {
                              goto LABEL_451;
                            }

                            v18 = &v584;
                            v588 = *v341;
                            v342 = v341[1];
                            v343 = v341[2];
                            v344 = v341[3];
                            *&v591[12] = *(v341 + 60);
                            v590 = v343;
                            *v591 = v344;
                            v589 = v342;
                            DisplayList.Item.features.getter(&v570);
                            if (v5 >= *(v22 + 16))
                            {
                              goto LABEL_452;
                            }

                            v1 = v570 | v1;
                            v588 = *v341;
                            v345 = v341[1];
                            v346 = v341[2];
                            v347 = v341[3];
                            *&v591[12] = *(v341 + 60);
                            v590 = v346;
                            *v591 = v347;
                            v589 = v345;
                            DisplayList.Item.properties.getter(&v570);
                            v4 = v570 | v4;
                            if (v19 == v5)
                            {
                              break;
                            }

                            ++v5;
                            v341 += 5;
                            v18 = v567;
                            if (v5 >= *(v22 + 16))
                            {
                              goto LABEL_443;
                            }
                          }

                          *&v584 = v22;
                          HIDWORD(v584) = v4;
                          WORD4(v584) = v1;
                          v5 = v569;
                          v19 = &v584;
                          v18 = v567;
                          v1 = v543;
                        }

                        else
                        {
                          v5 = 0;
                        }

                        v332 = v519;
                      }

                      else
                      {
                        outlined copy of DisplayList.Effect(v332, v331, SBYTE4(v331));

                        v5 = 0;
                      }

                      v22 = v547;
                      if (v2 == 18)
                      {
                        if (MEMORY[0x193AC0FF0](v332, v18))
                        {
                          v362 = *v3;
                          v363 = *(v3 + 8);
                          v364 = *(v3 + 16);
                          v365 = *(v3 + 24);
                          *&v588 = v568;
                          v366 = (*(*v18 + 136))(v535, &v584, v566, &v588, v362, v363, v364, v365, v333, v334, v128, v129);
                          outlined consume of DisplayList.Effect(v332, v535, 18);
                          v332 = 0;
                          v367 = 0;
                          v5 = v366 | v5;
                          v22 = v547;
                          LOBYTE(v2) = 20;
                          v131 = v526;
                          goto LABEL_318;
                        }

                        LOBYTE(v2) = 18;
                      }

                      else if (v2 == 7)
                      {
                        v22 = *(v332 + 16);
                        v18 = *(v332 + 24);
                        v2 = *(v332 + 32);
                        v496 = *(v332 + 32);
                        if ((v18 & 0x10) != 0)
                        {
                          v521 = v332;
                          v569 = 0;
                          v368 = *(v22 + 16);

                          if (v368)
                          {
                            if (swift_isUniquelyReferenced_nonNull_native())
                            {
                              if (!*(v22 + 16))
                              {
                                goto LABEL_465;
                              }
                            }

                            else
                            {
                              v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                              if (!*(v22 + 16))
                              {
                                goto LABEL_465;
                              }
                            }

                            v4 = 0;
                            v18 = 0;
                            v2 = 0;
                            v369 = (v22 + 32);
                            v19 = v368 - 1;
                            while (1)
                            {
                              closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v369, v567, v566, v568, &v569, v333, v334, v128, v129);
                              if (v4 >= *(v22 + 16))
                              {
                                goto LABEL_468;
                              }

                              v1 = &v584;
                              v588 = *v369;
                              v370 = v369[1];
                              v371 = v369[2];
                              v372 = v369[3];
                              *&v591[12] = *(v369 + 60);
                              v590 = v371;
                              *v591 = v372;
                              v589 = v370;
                              DisplayList.Item.features.getter(&v570);
                              if (v4 >= *(v22 + 16))
                              {
                                goto LABEL_469;
                              }

                              v18 = v570 | v18;
                              v588 = *v369;
                              v373 = v369[1];
                              v374 = v369[2];
                              v375 = v369[3];
                              *&v591[12] = *(v369 + 60);
                              v590 = v374;
                              *v591 = v375;
                              v589 = v373;
                              DisplayList.Item.properties.getter(&v570);
                              v2 = (v570 | v2);
                              if (v19 == v4)
                              {
                                break;
                              }

                              ++v4;
                              v369 += 5;
                              if (v4 >= *(v22 + 16))
                              {
                                goto LABEL_465;
                              }
                            }

                            v5 = v569 | v5;
                            v19 = &v584;
                            v1 = v543;
                          }

                          else
                          {
                            LOWORD(v18) = 0;
                            LODWORD(v2) = 0;
                          }

                          v131 = v526;
                          v361 = v521;
                        }

                        else
                        {
                          LODWORD(v2) = *(v332 + 28);

                          v131 = v526;
                          v361 = v332;
                        }

                        v332 = swift_allocObject();
                        *(v332 + 16) = v22;
                        *(v332 + 24) = v18;
                        *(v332 + 28) = v2;
                        *(v332 + 32) = v496;
                        outlined consume of DisplayList.Effect(v361, v535, 7);
                        v367 = 0;
                        LOBYTE(v2) = 7;
                        v18 = v567;
                        v22 = v547;
LABEL_318:
                        v384 = v584;
                        v385 = WORD4(v584) | (HIDWORD(v584) << 32) | 0x40000000;
                        v386 = *(v3 + 40);
                        v387 = *(v3 + 48);
                        v388 = *(v3 + 56);
                        v389 = *(v3 + 64);
                        *(v3 + 40) = v332;
                        *(v3 + 48) = v367 | (v2 << 32);
                        *(v3 + 56) = v384;
                        *(v3 + 64) = v385;
                        outlined consume of DisplayList.Item.Value(v386, v387, v388, v389);
                        v2 = v597;
                        if (v5)
                        {
LABEL_319:
                          *(v3 + 32) = v568;
                          v505 = 1;
                        }

                        goto LABEL_320;
                      }

                      v131 = v526;
                      v367 = v535;
                      goto LABEL_318;
                    }

                    if (v332 >> 60 == 11)
                    {
                      v38 = v163;
                      v2 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                      v18 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                      v335 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                      v336 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                      v490 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
                      v493 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                      v487 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
                      v482 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
                      v479 = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
                      if ((v18 & 0x10) != 0)
                      {
                        v348 = *v3;
                        v349 = *(v3 + 8);
                        LOBYTE(v570) = 0;
                        v350 = v332;
                        v351 = *(v2 + 2);
                        v5 = v330;
                        v1 = v331;
                        outlined copy of DisplayList.Item.Value(v350, v331, v22, v330);
                        v520 = v350;
                        v536 = v1;
                        v474 = v5;
                        outlined copy of DisplayList.Item.Value(v350, v1, v22, v5);

                        if (v351)
                        {
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            if (*(v2 + 2))
                            {
LABEL_282:
                              v4 = 0;
                              v18 = 0;
                              v1 = 0;
                              v352 = v38 + v348;
                              v353 = v527 + v349;
                              v354 = v2 + 2;
                              v19 = v351 - 1;
                              while (1)
                              {
                                closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v354, v567, v566, v568, &v570, v352, v353, v128, v129);
                                if (v4 >= *(v2 + 2))
                                {
                                  goto LABEL_463;
                                }

                                v5 = &v584;
                                v588 = *v354;
                                v355 = v354[1];
                                v356 = v354[2];
                                v357 = v354[3];
                                *&v591[12] = *(v354 + 60);
                                v590 = v356;
                                *v591 = v357;
                                v589 = v355;
                                DisplayList.Item.features.getter(&v584);
                                if (v4 >= *(v2 + 2))
                                {
                                  break;
                                }

                                v18 = v584 | v18;
                                v588 = *v354;
                                v358 = v354[1];
                                v359 = v354[2];
                                v360 = v354[3];
                                *&v591[12] = *(v354 + 60);
                                v590 = v359;
                                *v591 = v360;
                                v589 = v358;
                                DisplayList.Item.properties.getter(&v584);
                                v1 = v584 | v1;
                                if (v19 == v4)
                                {
                                  v376 = v570;
                                  v19 = &v584;
                                  goto LABEL_310;
                                }

                                ++v4;
                                v354 += 5;
                                if (v4 >= *(v2 + 2))
                                {
                                  goto LABEL_456;
                                }
                              }

LABEL_464:
                              __break(1u);
LABEL_465:
                              __break(1u);
LABEL_466:
                              __break(1u);
LABEL_467:
                              __break(1u);
LABEL_468:
                              __break(1u);
LABEL_469:
                              __break(1u);
LABEL_470:
                              swift_once();
LABEL_8:
                              v52 = static ContentTransition.State.defaultValue;
                              v46 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
                              v594 = static ContentTransition.State.defaultValue;
                              v51 = BYTE13(static ContentTransition.State.defaultValue);
                              v595 = off_1ED536620;
                              v596 = dword_1ED536628;
                              goto LABEL_9;
                            }
                          }

                          else
                          {
                            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                            if (*(v2 + 2))
                            {
                              goto LABEL_282;
                            }
                          }

LABEL_456:
                          __break(1u);
LABEL_457:
                          __break(1u);
LABEL_458:
                          __break(1u);
LABEL_459:
                          __break(1u);
LABEL_460:
                          __break(1u);
                          goto LABEL_461;
                        }

                        v376 = 0;
                        LOWORD(v18) = 0;
                        LODWORD(v1) = 0;
LABEL_310:
                        v476 = v376;
                        v131 = v526;
                        v338 = v520;
                        v337 = v536;
                        v5 = v474;
                      }

                      else
                      {
                        LODWORD(v1) = *((v332 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                        v5 = *(v3 + 64);
                        v337 = *(v3 + 48);
                        outlined copy of DisplayList.Item.Value(v332, v331, v22, v330);
                        outlined copy of DisplayList.Item.Value(v332, v337, v22, v5);

                        v476 = 0;
                        v338 = v332;
                      }

                      v377 = swift_allocObject();
                      *(v377 + 16) = v2;
                      *(v377 + 24) = v18;
                      *(v377 + 28) = v1;
                      *(v377 + 32) = v335;
                      *(v377 + 40) = v336;
                      *(v377 + 48) = v493;
                      *(v377 + 52) = v490;
                      *(v377 + 53) = v487;
                      *(v377 + 56) = v482;
                      *(v377 + 60) = v479;
                      v378 = v338;
                      outlined consume of DisplayList.Item.Value(v338, v337, v22, v5);
                      v4 = v476;
                      v379 = v508;
                      if ((v476 & 1) == 0)
                      {
                        v379 = v337;
                      }

                      v380 = *(v3 + 40);
                      v381 = *(v3 + 48);
                      v382 = *(v3 + 56);
                      v383 = *(v3 + 64);
                      *(v3 + 40) = v377 | 0xB000000000000000;
                      *(v3 + 48) = v379;
                      *(v3 + 56) = 0;
                      *(v3 + 64) = 0;
                      outlined consume of DisplayList.Item.Value(v380, v381, v382, v383);
                      outlined consume of DisplayList.Item.Value(v378, v337, v22, v5);
                      v2 = v597;
                      v18 = v567;
                      v163 = v38;
                      v38 = v483;
                      v130 = v484;
                      v22 = v547;
                      v1 = v543;
                      if (v476)
                      {
                        goto LABEL_319;
                      }
                    }

                    else
                    {
                      v22 = v547;
                    }

LABEL_320:
                    if (v1 >= *(v22 + 16))
                    {
                      goto LABEL_466;
                    }

                    *(v19 + 16) = *(v3 + 16);
                    *(v19 + 32) = *(v3 + 32);
                    *(v19 + 48) = *(v3 + 48);
                    *(v19 + 60) = *(v3 + 60);
                    *v19 = *v3;
                    DisplayList.Item.features.getter(&v570);
                    if (v1 >= *(v22 + 16))
                    {
                      goto LABEL_467;
                    }

                    v5 = v570 | v562;
                    v390 = *(v3 + 48);
                    v391 = *(v3 + 60);
                    v392 = *(v3 + 16);
                    *(v19 + 112) = *(v3 + 32);
                    *(v19 + 140) = v391;
                    v393 = *v3;
                    *(v19 + 128) = v390;
                    *(v19 + 80) = v393;
                    *(v19 + 96) = v392;
                    v394 = *(&v590 + 1);
                    v1 = *&v591[16];
                    v395 = *&v591[16] >> 30;
                    if (*&v591[16] >> 30 > 1u)
                    {
                      v3 = v558;
                      v396 = v565;
                      if (v395 != 2)
                      {
                        outlined destroy of DisplayList.Item(&v588);
                        goto LABEL_349;
                      }

                      v398 = *(*(&v590 + 1) + 16);
                      if (v398)
                      {
                        if (v398 > 7)
                        {
                          v399 = v398 & 0x7FFFFFFFFFFFFFF8;
                          v403 = (*(&v590 + 1) + 188);
                          v404 = 0uLL;
                          v405 = v398 & 0x7FFFFFFFFFFFFFF8;
                          v406 = 0uLL;
                          do
                          {
                            v407.i32[0] = *(v403 - 30);
                            v407.i32[1] = *(v403 - 20);
                            v407.i32[2] = *(v403 - 10);
                            v407.i32[3] = *v403;
                            v408.i32[0] = v403[10];
                            v408.i32[1] = v403[20];
                            v408.i32[2] = v403[30];
                            v408.i32[3] = v403[40];
                            v404 = vorrq_s8(v407, v404);
                            v406 = vorrq_s8(v408, v406);
                            v403 += 80;
                            v405 -= 8;
                          }

                          while (v405);
                          v409 = vorrq_s8(v406, v404);
                          *v409.i8 = vorr_s8(*v409.i8, *&vextq_s8(v409, v409, 8uLL));
                          v397 = v409.i32[0] | v409.i32[1];
                          if (v398 == v399)
                          {
                            break;
                          }
                        }

                        else
                        {
                          v397 = 0;
                          v399 = 0;
                        }

                        v410 = v398 - v399;
                        v411 = (*(&v590 + 1) + 40 * v399 + 68);
                        do
                        {
                          v412 = *v411;
                          v411 += 10;
                          v397 |= v412;
                          --v410;
                        }

                        while (v410);
                      }

                      else
                      {
                        v397 = 0;
                      }
                    }

                    else
                    {
                      v396 = v565;
                      if (!v395)
                      {
                        v3 = v558;
                        if (*(&v590 + 1) >> 60 == 6 || *(&v590 + 1) >> 60 == 11)
                        {
                          v397 = *((*(&v590 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                          break;
                        }

LABEL_349:
                        if (v396 == v555)
                        {
                          v522 |= v505;
                          goto LABEL_369;
                        }

                        v1 = v396;
                        v413 = v396 >= *(v22 + 16);
                        v329 = v396 + 1;
                        if (v413)
                        {
                          goto LABEL_383;
                        }

                        continue;
                      }

                      v400 = v591[4];
                      if (v591[4] == 2)
                      {
                        outlined init with copy of DisplayList.Item(&v588, &v584);

                        v402 = v394;
                      }

                      else
                      {
                        v401 = v591[0];
                        if (v591[4] == 7)
                        {
                          v402 = *(*(&v590 + 1) + 28);
                          outlined init with copy of DisplayList.Item(&v588, &v584);
                          outlined consume of DisplayList.Effect(v394, v401, 7);
                        }

                        else if (v591[4] == 18)
                        {
                          (*(**(&v590 + 1) + 120))(&v570);
                          outlined init with copy of DisplayList.Item(&v588, &v584);
                          outlined consume of DisplayList.Effect(v394, v401, 18);

                          v402 = v570;
                        }

                        else
                        {
                          outlined init with copy of DisplayList.Item(&v588, &v584);
                          outlined consume of DisplayList.Effect(v394, v401, v400);

                          v402 = 0;
                        }

                        v396 = v565;
                      }

                      v397 = v402 | HIDWORD(v1);
                      v22 = v547;
                      LODWORD(v3) = v558;
                    }

                    break;
                  }

                  v3 = v397 | v3;
                  goto LABEL_349;
                }

                v5 = 0;
                v3 = 0;
LABEL_369:
                v325 = v509;
              }

              else
              {
                v3 = *(v509 + 28);
                v325 = v509;
              }

              v425 = v22;
              v426 = swift_allocObject();
              *(v426 + 16) = v425;
              *(v426 + 24) = v5;
              *(v426 + 28) = v3;
              *(v426 + 32) = v501;
              outlined consume of DisplayList.Effect(v325, v506, 7);
              v327 = 0;
              v324 = v426;
              v326 = 7;
            }

            else
            {
              v327 = v506;
              v326 = v164;
            }
          }

          v427 = v571;
          v428 = v572 | (v573 << 32) | 0x40000000;
          LOBYTE(v22) = v514;
          v429 = *(v514 + 5);
          v430 = *(v514 + 6);
          v431 = *(v514 + 7);
          v432 = *(v514 + 8);
          *(v514 + 5) = v324;
          *(v514 + 6) = v327 | (v326 << 32);
          *(v514 + 7) = v427;
          *(v514 + 8) = v428;
          outlined consume of DisplayList.Item.Value(v429, v430, v431, v432);
          v157 = v514;
          v154 = v552;
          v155 = v512;
          if (v522)
          {
LABEL_372:
            *(v157 + 4) = v568;
          }
        }

        else if (v158 >> 60 == 11)
        {
          v494 = v157 + 7;
          v511 = v155;
          v513 = &v529[80 * v155];
          v5 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v160 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v491 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v488 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v485 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v480 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
          v477 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v475 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
          if ((*((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0x10) != 0)
          {
            v239 = *v157;
            v240 = v157[1];
            v241 = *(v5 + 16);
            v554 = *(v157 + 7);
            v22 = *(v157 + 5);
            v242 = *(v157 + 6);
            outlined copy of DisplayList.Item.Value(v158, v159, v554, v1);
            v510 = v22;
            v3 = v554;
            v507 = v242;
            v464 = v1;
            outlined copy of DisplayList.Item.Value(v22, v242, v554, v1);

            v546 = v241;
            if (v241)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v5 + 16))
                {
                  goto LABEL_448;
                }
              }

              else
              {
                v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                if (!*(v5 + 16))
                {
                  goto LABEL_448;
                }
              }

              v243 = 0;
              LODWORD(v22) = 0;
              v563 = 0;
              v1 = 0;
              v518 = v484 + v239;
              v504 = v131 + v240;
              v542 = v5 + 32;
              v244 = 1;
              v466 = v39;
              v528 = v5;
              while (2)
              {
                v550 = v244;
                v561 = v22;
                v22 = v542 + 80 * v243;
                v4 = *(v22 + 64);
                v557 = v1;
                if ((v4 >> 30) - 2 >= 2)
                {
                  v19 = *(v22 + 40);
                  v246 = *(v22 + 48);
                  v5 = *(v22 + 56);
                  v533 = v243;
                  if (v4 >> 30 == 1)
                  {
                    v3 = HIDWORD(v246);
                    *&v584 = *(v22 + 56);
                    WORD4(v584) = v4;
                    HIDWORD(v584) = HIDWORD(v4);
                    v247 = v518 + *v22;
                    v248 = v504 + *(v22 + 8);
                    if ((v4 & 0x10) != 0)
                    {
                      LOBYTE(v570) = 0;
                      WORD4(v584) = 0;
                      HIDWORD(v584) = 0;
                      v253 = *(v5 + 16);
                      v523 = v246;
                      v472 = HIDWORD(v246);
                      outlined copy of DisplayList.Effect(v19, v246, SBYTE4(v246));

                      if (v253)
                      {
                        v498 = v19;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!*(v5 + 16))
                          {
                            goto LABEL_436;
                          }
                        }

                        else
                        {
                          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                          if (!*(v5 + 16))
                          {
                            goto LABEL_436;
                          }
                        }

                        v18 = 0;
                        v1 = 0;
                        v4 = 0;
                        v254 = (v5 + 32);
                        v19 = v253 - 1;
                        while (1)
                        {
                          closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v254, v567, v566, v568, &v570, v247, v248, v128, v129);
                          if (v18 >= *(v5 + 16))
                          {
                            goto LABEL_439;
                          }

                          v3 = &v584;
                          v588 = *v254;
                          v255 = v254[1];
                          v256 = v254[2];
                          v257 = v254[3];
                          *&v591[12] = *(v254 + 60);
                          v590 = v256;
                          *v591 = v257;
                          v589 = v255;
                          DisplayList.Item.features.getter(&v571);
                          if (v18 >= *(v5 + 16))
                          {
                            goto LABEL_441;
                          }

                          v1 = v571 | v1;
                          v588 = *v254;
                          v258 = v254[1];
                          v259 = v254[2];
                          v260 = v254[3];
                          *&v591[12] = *(v254 + 60);
                          v590 = v259;
                          *v591 = v260;
                          v589 = v258;
                          DisplayList.Item.properties.getter(&v571);
                          v4 = v571 | v4;
                          if (v19 == v18)
                          {
                            *&v584 = v5;
                            HIDWORD(v584) = v4;
                            WORD4(v584) = v1;
                            v1 = v570;
                            v18 = v567;
                            v243 = v533;
                            v19 = v498;
                            goto LABEL_183;
                          }

                          ++v18;
                          v254 += 5;
                          if (v18 >= *(v5 + 16))
                          {
                            goto LABEL_436;
                          }
                        }
                      }

                      v1 = 0;
LABEL_183:
                      v250 = v523;
                      v3 = v472;
                    }

                    else
                    {
                      v249 = v246;
                      outlined copy of DisplayList.Effect(v19, v246, SBYTE4(v246));

                      v250 = v249;
                      v1 = 0;
                    }

                    v5 = v528;
                    if (v3 == 18)
                    {
                      if (v18 == v19)
                      {
                        v281 = *v22;
                        v282 = *(v22 + 8);
                        v283 = *(v22 + 16);
                        v284 = *(v22 + 24);
                        *&v588 = v568;
                        v285 = v250;
                        v286 = (*(*v18 + 136))(v281, v282, v283, v284, v247, v248, v128, v129);
                        outlined consume of DisplayList.Effect(v19, v285, 18);
                        v19 = 0;
                        v250 = 0;
                        v1 = v286 | v1;
                        v3 = 20;
                      }

                      else
                      {
                        v3 = 18;
                      }
                    }

                    else if (v3 == 7)
                    {
                      v525 = v250;
                      v272 = *(v19 + 16);
                      v18 = *(v19 + 24);
                      v3 = *(v19 + 32);
                      if ((v18 & 0x10) != 0)
                      {
                        LOBYTE(v570) = 0;
                        v273 = *(v272 + 2);

                        if (v273)
                        {
                          v500 = v19;
                          v473 = v3;
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            if (!*(v272 + 2))
                            {
                              goto LABEL_455;
                            }
                          }

                          else
                          {
                            v272 = specialized _ArrayBuffer._consumeAndCreateNew()(v272);
                            if (!*(v272 + 2))
                            {
                              goto LABEL_455;
                            }
                          }

                          v4 = 0;
                          v18 = 0;
                          v2 = 0;
                          v3 = (v272 + 32);
                          v19 = v273 - 1;
                          while (1)
                          {
                            closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v3, v567, v566, v568, &v570, v247, v248, v128, v129);
                            if (v4 >= *(v272 + 2))
                            {
                              break;
                            }

                            v5 = &v584;
                            v588 = *v3;
                            v274 = *(v3 + 16);
                            v275 = *(v3 + 32);
                            v276 = *(v3 + 48);
                            *&v591[12] = *(v3 + 60);
                            v590 = v275;
                            *v591 = v276;
                            v589 = v274;
                            DisplayList.Item.features.getter(&v571);
                            if (v4 >= *(v272 + 2))
                            {
                              goto LABEL_462;
                            }

                            v18 = v571 | v18;
                            v588 = *v3;
                            v277 = *(v3 + 16);
                            v278 = *(v3 + 32);
                            v279 = *(v3 + 48);
                            *&v591[12] = *(v3 + 60);
                            v590 = v278;
                            *v591 = v279;
                            v589 = v277;
                            DisplayList.Item.properties.getter(&v571);
                            v2 = (v571 | v2);
                            if (v19 == v4)
                            {
                              v1 = v570 | v1;
                              v5 = v528;
                              v19 = v500;
                              LODWORD(v3) = v473;
                              goto LABEL_209;
                            }

                            ++v4;
                            v3 += 80;
                            if (v4 >= *(v272 + 2))
                            {
                              goto LABEL_455;
                            }
                          }

LABEL_461:
                          __break(1u);
LABEL_462:
                          __break(1u);
LABEL_463:
                          __break(1u);
                          goto LABEL_464;
                        }

                        LOWORD(v18) = 0;
                        LODWORD(v2) = 0;
                      }

                      else
                      {
                        LODWORD(v2) = *(v19 + 28);
                      }

LABEL_209:
                      v293 = swift_allocObject();
                      *(v293 + 16) = v272;
                      *(v293 + 24) = v18;
                      *(v293 + 28) = v2;
                      *(v293 + 32) = v3;
                      outlined consume of DisplayList.Effect(v19, v525, 7);
                      v250 = 0;
                      v19 = v293;
                      v3 = 7;
                      v2 = v597;
                      v18 = v567;
                      v243 = v533;
                    }

                    v294 = v584;
                    v295 = v250 | (v3 << 32);
                    v296 = WORD4(v584) | (HIDWORD(v584) << 32) | 0x40000000;
                    v297 = *(v22 + 40);
                    v298 = *(v22 + 48);
                    v299 = *(v22 + 56);
                    v300 = *(v22 + 64);
                    *(v22 + 40) = v19;
                    *(v22 + 48) = v295;
                    *(v22 + 56) = v294;
                    *(v22 + 64) = v296;
                    outlined consume of DisplayList.Item.Value(v297, v298, v299, v300);
                    if (v1)
                    {
LABEL_211:
                      *(v22 + 32) = v568;
                      v557 = 1;
                    }
                  }

                  else if (v19 >> 60 == 11)
                  {
                    v39 = v160;
                    v3 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v18 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    v251 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                    v252 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                    v2 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                    v469 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
                    v470 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
                    v467 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
                    v468 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
                    v471 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                    if ((v18 & 0x10) != 0)
                    {
                      v261 = *v22;
                      v262 = *(v22 + 8);
                      LOBYTE(v571) = 0;
                      v263 = *(v3 + 16);
                      v1 = v246;
                      outlined copy of DisplayList.Item.Value(v19, v246, v5, v4);
                      v524 = v1;
                      v465 = v4;
                      outlined copy of DisplayList.Item.Value(v19, v1, v5, v4);

                      v499 = v19;
                      if (v263)
                      {
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!*(v3 + 16))
                          {
                            goto LABEL_447;
                          }
                        }

                        else
                        {
                          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                          if (!*(v3 + 16))
                          {
                            goto LABEL_447;
                          }
                        }

                        v4 = 0;
                        v18 = 0;
                        v2 = 0;
                        v264 = v518 + v261;
                        v265 = v504 + v262;
                        v1 = v3 + 32;
                        v19 = v263 - 1;
                        while (1)
                        {
                          closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v1, v567, v566, v568, &v571, v264, v265, v128, v129);
                          if (v4 >= *(v3 + 16))
                          {
                            goto LABEL_453;
                          }

                          v588 = *v1;
                          v266 = *(v1 + 16);
                          v267 = *(v1 + 32);
                          v268 = *(v1 + 48);
                          *&v591[12] = *(v1 + 60);
                          v590 = v267;
                          *v591 = v268;
                          v589 = v266;
                          DisplayList.Item.features.getter(&v584);
                          if (v4 >= *(v3 + 16))
                          {
                            goto LABEL_454;
                          }

                          v18 = v584 | v18;
                          v588 = *v1;
                          v269 = *(v1 + 16);
                          v270 = *(v1 + 32);
                          v271 = *(v1 + 48);
                          *&v591[12] = *(v1 + 60);
                          v590 = v270;
                          *v591 = v271;
                          v589 = v269;
                          DisplayList.Item.properties.getter(&v584);
                          v2 = (v584 | v2);
                          if (v19 == v4)
                          {
                            v280 = v571;
                            goto LABEL_203;
                          }

                          ++v4;
                          v1 += 80;
                          if (v4 >= *(v3 + 16))
                          {
                            goto LABEL_447;
                          }
                        }
                      }

                      v280 = 0;
                      LOWORD(v18) = 0;
                      LODWORD(v2) = 0;
LABEL_203:
                      v534 = v280;
                      v19 = v499;
                      v1 = v524;
                      v4 = v465;
                    }

                    else
                    {
                      LODWORD(v2) = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                      v1 = *(v22 + 48);
                      outlined copy of DisplayList.Item.Value(v19, v246, v5, v4);
                      outlined copy of DisplayList.Item.Value(v19, v1, v5, v4);

                      v534 = 0;
                    }

                    v287 = swift_allocObject();
                    *(v287 + 16) = v3;
                    *(v287 + 24) = v18;
                    *(v287 + 28) = v2;
                    *(v287 + 32) = v251;
                    *(v287 + 40) = v252;
                    *(v287 + 48) = v471;
                    *(v287 + 52) = v470;
                    *(v287 + 53) = v469;
                    *(v287 + 56) = v468;
                    *(v287 + 60) = v467;
                    outlined consume of DisplayList.Item.Value(v19, v1, v5, v4);
                    v3 = v534;
                    v288 = v508;
                    if ((v534 & 1) == 0)
                    {
                      v288 = v1;
                    }

                    v289 = *(v22 + 40);
                    v290 = *(v22 + 48);
                    v291 = *(v22 + 56);
                    v292 = *(v22 + 64);
                    *(v22 + 40) = v287 | 0xB000000000000000;
                    *(v22 + 48) = v288;
                    *(v22 + 56) = 0;
                    *(v22 + 64) = 0;
                    outlined consume of DisplayList.Item.Value(v289, v290, v291, v292);
                    outlined consume of DisplayList.Item.Value(v19, v1, v5, v4);
                    v2 = v597;
                    v18 = v567;
                    v131 = v526;
                    v160 = v39;
                    v39 = v466;
                    v5 = v528;
                    if (v534)
                    {
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v5 = v528;
                  }
                }

                if (v243 >= *(v5 + 16))
                {
                  goto LABEL_459;
                }

                v19 = &v584;
                v585 = *(v22 + 16);
                v586 = *(v22 + 32);
                v587[0] = *(v22 + 48);
                *(v587 + 12) = *(v22 + 60);
                v584 = *v22;
                DisplayList.Item.features.getter(&v571);
                if (v243 >= *(v5 + 16))
                {
                  goto LABEL_460;
                }

                v563 |= v571;
                v301 = *(v22 + 48);
                v302 = *(v22 + 60);
                v303 = *(v22 + 16);
                v590 = *(v22 + 32);
                *&v591[12] = v302;
                v304 = *v22;
                *v591 = v301;
                v588 = v304;
                v589 = v303;
                v305 = *(&v590 + 1);
                v306 = *&v591[20];
                v307 = *&v591[16] >> 30;
                if (*&v591[16] >> 30 > 1u)
                {
                  v3 = v554;
                  LODWORD(v22) = v561;
                  if (v307 != 2)
                  {
                    outlined destroy of DisplayList.Item(&v588);
                    v245 = v550;
                    v1 = v557;
                    if (v550 == v546)
                    {
                      goto LABEL_359;
                    }

                    goto LABEL_154;
                  }

                  v309 = *(*(&v590 + 1) + 16);
                  v1 = v557;
                  if (v309)
                  {
                    if (v309 > 7)
                    {
                      v310 = v309 & 0x7FFFFFFFFFFFFFF8;
                      v314 = (*(&v590 + 1) + 188);
                      v315 = 0uLL;
                      v316 = v309 & 0x7FFFFFFFFFFFFFF8;
                      v317 = 0uLL;
                      do
                      {
                        v318.i32[0] = *(v314 - 30);
                        v318.i32[1] = *(v314 - 20);
                        v318.i32[2] = *(v314 - 10);
                        v318.i32[3] = *v314;
                        v319.i32[0] = v314[10];
                        v319.i32[1] = v314[20];
                        v319.i32[2] = v314[30];
                        v319.i32[3] = v314[40];
                        v315 = vorrq_s8(v318, v315);
                        v317 = vorrq_s8(v319, v317);
                        v314 += 80;
                        v316 -= 8;
                      }

                      while (v316);
                      v320 = vorrq_s8(v317, v315);
                      *v320.i8 = vorr_s8(*v320.i8, *&vextq_s8(v320, v320, 8uLL));
                      v308 = v320.i32[0] | v320.i32[1];
                      if (v309 == v310)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v308 = 0;
                      v310 = 0;
                    }

                    v321 = v309 - v310;
                    v322 = (*(&v590 + 1) + 40 * v310 + 68);
                    do
                    {
                      v323 = *v322;
                      v322 += 10;
                      v308 |= v323;
                      --v321;
                    }

                    while (v321);
                  }

                  else
                  {
                    v308 = 0;
                  }
                }

                else
                {
                  if (!v307)
                  {
                    v3 = v554;
                    v1 = v557;
                    LODWORD(v22) = v561;
                    if (*(&v590 + 1) >> 60 == 6 || *(&v590 + 1) >> 60 == 11)
                    {
                      v308 = *((*(&v590 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                      break;
                    }

LABEL_239:
                    v245 = v550;
                    if (v550 == v546)
                    {
LABEL_359:
                      v559 = v22;
                      v130 = v484;
                      v161 = v510;
                      v162 = v507;
                      v4 = v1;
                      goto LABEL_362;
                    }

LABEL_154:
                    v243 = v245;
                    v244 = v245 + 1;
                    if (v245 >= *(v5 + 16))
                    {
                      goto LABEL_448;
                    }

                    continue;
                  }

                  v311 = v591[4];
                  if (v591[4] == 2)
                  {
                    outlined init with copy of DisplayList.Item(&v588, &v584);

                    v313 = v305;
                  }

                  else
                  {
                    v312 = v591[0];
                    if (v591[4] == 7)
                    {
                      v313 = *(*(&v590 + 1) + 28);
                      outlined init with copy of DisplayList.Item(&v588, &v584);
                      outlined consume of DisplayList.Effect(v305, v312, 7);
                    }

                    else if (v591[4] == 18)
                    {
                      (*(**(&v590 + 1) + 120))(&v571);
                      outlined init with copy of DisplayList.Item(&v588, &v584);
                      outlined consume of DisplayList.Effect(v305, v312, 18);

                      v313 = v571;
                    }

                    else
                    {
                      outlined init with copy of DisplayList.Item(&v588, &v584);
                      outlined consume of DisplayList.Effect(v305, v312, v311);

                      v313 = 0;
                    }
                  }

                  v308 = v313 | v306;
                  v3 = v554;
                  v1 = v557;
                  LODWORD(v22) = v561;
                }

                break;
              }

              LODWORD(v22) = v308 | v22;
              goto LABEL_239;
            }

            v563 = 0;
            v559 = 0;
            v4 = 0;
            v130 = v484;
            v161 = v22;
            v162 = v507;
LABEL_362:
            v1 = v464;
          }

          else
          {
            v563 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v559 = *((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v161 = *(v157 + 5);
            v162 = *(v157 + 6);
            outlined copy of DisplayList.Item.Value(v158, v159, v22, v1);
            outlined copy of DisplayList.Item.Value(v161, v162, v22, v1);

            v4 = 0;
            v3 = v22;
          }

          v22 = swift_allocObject();
          *(v22 + 16) = v5;
          *(v22 + 24) = v563;
          *(v22 + 28) = v559;
          *(v22 + 32) = v160;
          *(v22 + 40) = v491;
          *(v22 + 48) = v488;
          *(v22 + 52) = v485;
          *(v22 + 53) = v480;
          *(v22 + 56) = v477;
          *(v22 + 60) = v475;
          outlined consume of DisplayList.Item.Value(v161, v162, v3, v1);
          v419 = v508;
          if ((v4 & 1) == 0)
          {
            v419 = v162;
          }

          v420 = v22 | 0xB000000000000000;
          LOBYTE(v22) = v513;
          v421 = *(v513 + 5);
          v422 = *(v513 + 6);
          v423 = *(v513 + 7);
          v424 = *(v513 + 8);
          *(v513 + 5) = v420;
          *(v513 + 6) = v419;
          *v494 = 0;
          v494[1] = 0;
          outlined consume of DisplayList.Item.Value(v421, v422, v423, v424);
          outlined consume of DisplayList.Item.Value(v161, v162, v3, v1);
          v157 = v513;
          v154 = v552;
          v155 = v511;
          if (v4)
          {
            goto LABEL_372;
          }
        }

LABEL_373:
        if (v155 >= *(v154 + 2))
        {
          goto LABEL_457;
        }

        *(v19 + 96) = *(v157 + 1);
        *(v19 + 112) = *(v157 + 2);
        *(v19 + 128) = *(v157 + 3);
        *(v19 + 140) = *(v157 + 60);
        *(v19 + 80) = *v157;
        v22 = v155;
        v433 = v157;
        DisplayList.Item.features.getter(&v584);
        if (v22 >= *(v552 + 2))
        {
          goto LABEL_458;
        }

        v544 |= v584;
        *(v19 + 96) = *(v433 + 1);
        *(v19 + 112) = *(v433 + 2);
        *(v19 + 128) = *(v433 + 3);
        *(v19 + 140) = *(v433 + 60);
        *(v19 + 80) = *v433;
        DisplayList.Item.properties.getter(&v584);
        if (v539 == v530)
        {
          v574 = v552;
          v576 = v584 | v540;
          v575 = v544;
          break;
        }

        v540 |= v584;
        v155 = v539;
        v156 = v539 + 1;
        v154 = v552;
        if (v539 >= *(v552 + 2))
        {
          goto LABEL_444;
        }
      }
    }
  }

LABEL_31:
  *&v588 = v568;
  DisplayList.translate(by:version:)(__PAIR128__(*&v39, *&v38), &v588);
  *&v584 = v574;
  WORD4(v584) = v575;
  HIDWORD(v584) = v576;
  AGGraphSetOutputValue();

  v147 = v2[9];
  *(v19 + 208) = v2[8];
  *(v19 + 224) = v147;
  *(v19 + 240) = v2[10];
  *(v19 + 251) = *(v2 + 171);
  v148 = v2[5];
  *(v19 + 144) = v2[4];
  *(v19 + 160) = v148;
  v149 = v2[7];
  *(v19 + 176) = v2[6];
  *(v19 + 192) = v149;
  v150 = v2[1];
  *(v19 + 80) = *v2;
  *(v19 + 96) = v150;
  v151 = v2[3];
  *(v19 + 112) = v2[2];
  *(v19 + 128) = v151;
  outlined destroy of Image.Resolved(&v588);

  outlined consume of ContentTransition.Storage(v594, DWORD2(v594) | (BYTE12(v594) << 32), SBYTE13(v594));
}