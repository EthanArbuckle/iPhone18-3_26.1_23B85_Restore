double *PlatformItem.GeometryContent.InitAnchor.value.getter()
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  v0 = static UnitRect.one;
  v1 = xmmword_1ED52E568;
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v3 = CGRect.prepare(geometry:)(*&v0 * *Value, *(&v0 + 1) * Value[1], *&v1 * *Value, *(&v1 + 1) * Value[1]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for AnchorValueBox<UnitRect>(0, &lazy cache variable for type metadata for AnchorValueBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorValueBox);
  result = swift_allocObject();
  result[2] = v3;
  *(result + 3) = v5;
  *(result + 4) = v7;
  *(result + 5) = v9;
  return result;
}

double *protocol witness for Rule.value.getter in conformance PlatformItem.GeometryContent.InitAnchor@<X0>(double **a1@<X8>)
{
  result = PlatformItem.GeometryContent.InitAnchor.value.getter();
  *a1 = result;
  return result;
}

char *PlatformItem.GeometryContent.Init.value.getter@<X0>(char **a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = AGCreateWeakAttribute();
  *a1 = v2;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
  v5 = result;
  *a1 = result;
  v7 = *(result + 2);
  v6 = *(result + 3);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, result);
    v5 = result;
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v3;
  *a1 = v5;
  return result;
}

id PlatformItemsGenerator.init(strategy:source:inputs:inputsIncludeGeometry:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *(a7 + 96) = *MEMORY[0x1E698D3F8];
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a7 + 104) = result;
    type metadata accessor for PlatformItemsGenerator();
    (*(a6 + 16))(a5, a6);
    result = (*(*(a5 - 8) + 8))(a1, a5);
    v15 = *(a3 + 48);
    *(a7 + 40) = *(a3 + 32);
    *(a7 + 56) = v15;
    *(a7 + 72) = *(a3 + 64);
    v16 = *(a3 + 16);
    *(a7 + 8) = *a3;
    *a7 = a2;
    *(a7 + 88) = *(a3 + 80);
    *(a7 + 24) = v16;
    *(a7 + 92) = a4 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformItemsGenerator.updateValue()(uint64_t a1)
{
  v2 = v1;
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Optional();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  OutputValue = AGGraphGetOutputValue();
  v37 = v5;
  v38 = v4;
  if (OutputValue)
  {
    v19 = *(v2 + 96);
  }

  else
  {
    v33[1] = *(v2 + 104);
    v33[0] = implicit closure #1 in PlatformItemsGenerator.updateValue()(v2, v5, *(a1 + 24), v4, *(a1 + 40));
    v33[2] = AGGraphClearUpdate();
    v20 = AGSubgraphGetCurrent();
    v34 = v2;
    v21 = v20;
    v22 = AGSubgraphSetCurrent();
    v19 = (v33[0])(v22);
    AGSubgraphSetCurrent();

    v2 = v34;
    AGGraphSetUpdate();

    *(v2 + 96) = v19;
  }

  if (v19 == *MEMORY[0x1E698D3F8])
  {
    (*(v11 + 56))(v10, 1, 1, TupleTypeMetadata2);
    v23 = *(TupleTypeMetadata2 + 48);
    (*(v38 + 16))();
    v14[v23] = 0;
    if ((*(v11 + 48))(v10, 1, TupleTypeMetadata2) != 1)
    {
      (*(v35 + 8))(v10, v36);
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v26 = v25;
    v27 = *(TupleTypeMetadata2 + 48);
    (*(v39 + 16))(v10, Value, AssociatedTypeWitness);
    v10[v27] = v26 & 1;
    (*(v11 + 56))(v10, 0, 1, TupleTypeMetadata2);
    (*(v11 + 32))(v14, v10, TupleTypeMetadata2);
  }

  v28 = v14[*(TupleTypeMetadata2 + 48)];
  (*(v39 + 32))(v17, v14, AssociatedTypeWitness);
  v29 = (*(v38 + 40))(v2 + *(a1 + 68), v17, v37, v38);
  v30 = AGGraphGetOutputValue();
  if (!v30 || (v28 & v29 & 1) != 0)
  {
    MEMORY[0x1EEE9AC00](v30);
    v33[-2] = a1;
    v33[-1] = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in StatefulRule.value.setter, &v33[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v31);
  }

  $defer #1 <A, B>() in PlatformItemsGenerator.updateValue()(v2, v17);
  return (*(v39 + 8))(v17, AssociatedTypeWitness);
}

uint64_t (*implicit closure #1 in PlatformItemsGenerator.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for PlatformItemsGenerator();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return partial apply for implicit closure #2 in implicit closure #1 in PlatformItemsGenerator.updateValue();
}

uint64_t PlatformItemsGenerator.makeContent()(void *a1)
{
  v2 = v1;
  v60 = *MEMORY[0x1E69E9840];
  if (*(v1 + 92) == 1)
  {
    v4 = *(v1 + 14);
    *&v58[16] = *(v1 + 10);
    *&v58[32] = v4;
    *&v58[48] = *(v1 + 18);
    v59 = v1[22];
    v5 = *(v1 + 6);
    v57 = *(v1 + 2);
    *v58 = v5;
    _ViewInputs.withoutGeometryDependencies.getter(&v54);
    v6 = v54;
    v7 = DWORD2(v54);
    v8 = *v55;
    v9 = *&v55[8];
    v10 = *&v55[24];
    v11 = *&v55[40];
    v12 = *&v55[56];
    v13 = v56;
  }

  else
  {
    v14 = *(v1 + 18);
    v15 = *(v1 + 10);
    *&v58[32] = *(v1 + 14);
    *&v58[48] = v14;
    v16 = *(v1 + 2);
    *v58 = *(v1 + 6);
    *&v58[16] = v15;
    v57 = v16;
    v13 = v1[22];
    v59 = v13;
    v12 = *(&v14 + 1);
    v31 = *&v58[24];
    v32 = *&v58[40];
    v30 = *&v58[8];
    v8 = *v58;
    v7 = DWORD2(v16);
    v6 = v16;
    outlined init with copy of _ViewInputs(&v57, &v54);
    v9 = v30;
    v10 = v31;
    v11 = v32;
  }

  *&v57 = v6;
  DWORD2(v57) = v7;
  *v58 = v8;
  *&v58[8] = v9;
  *&v58[24] = v10;
  *&v58[40] = v11;
  *&v58[56] = v12;
  v59 = v13;
  v17 = *(&v10 + 1);
  *&v54 = *(&v10 + 1);
  v18 = PreferenceKeys._index(of:)(&type metadata for PlatformItems.Key);

  v19 = *(v17 + 16);
  if (v18 != v19)
  {
    if (v18 >= v19)
    {
      __break(1u);
    }

    if (*(v17 + 16 * v18 + 32) == &type metadata for PlatformItems.Key)
    {
      specialized Array.remove(at:)(v18);
    }
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(&v57, 0, 0);

  v20 = a1[2];
  v21 = a1[4];
  (*(v21 + 48))(&v57, v20, v21);
  v22 = a1[3];
  _GraphValue.init(_:)(*v2, &v34);
  v23 = v34;
  *&v55[16] = *&v58[16];
  *&v55[32] = *&v58[32];
  *&v55[48] = *&v58[48];
  v56 = v59;
  v54 = v57;
  *v55 = *v58;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v46 = *&v55[16];
  v47 = *&v55[32];
  v48 = *&v55[48];
  v49 = v56;
  v44 = v54;
  v45 = *v55;
  v25 = *&v55[16];
  LODWORD(v46) = 0;
  LODWORD(v36[0]) = v23;
  v50[0] = v54;
  v50[1] = *v55;
  v51 = v56;
  v50[3] = *&v55[32];
  v50[4] = *&v55[48];
  v50[2] = v46;
  v40 = v46;
  v41 = *&v55[32];
  v42 = *&v55[48];
  v43 = v56;
  v38 = v54;
  v39 = *v55;
  v26 = a1[5];
  v27 = *(v26 + 24);
  outlined init with copy of _ViewInputs(&v54, v52);
  outlined init with copy of _ViewInputs(v50, v52);
  v27(v35, v36, &v38, v22, v26);
  v52[2] = v40;
  v52[3] = v41;
  v52[4] = v42;
  v53 = v43;
  v52[0] = v38;
  v52[1] = v39;
  outlined destroy of _ViewInputs(v52);
  LODWORD(v46) = v25;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v35, &v44);
    AGSubgraphEndTreeElement();
  }

  v36[2] = v46;
  v36[3] = v47;
  v36[4] = v48;
  v37 = v49;
  v36[0] = v44;
  v36[1] = v45;
  outlined destroy of _ViewInputs(v36);
  v33[0] = v35[0];
  v33[1] = v35[1];
  v28 = (*(v21 + 56))(v33, v20, v21);
  v40 = *&v58[16];
  v41 = *&v58[32];
  v42 = *&v58[48];
  v43 = v59;
  v38 = v57;
  v39 = *v58;
  outlined destroy of _ViewInputs(&v38);

  return v28;
}

uint64_t $defer #1 <A, B>() in PlatformItemsGenerator.updateValue()(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PlatformItemsGenerator() + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 24))(a1 + v4, a2, AssociatedTypeWitness);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance PlatformItemsGenerator<A, B>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t _ViewInputs.makePlatformItemsGenerator<A, B>(strategy:source:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a6;
  v29 = a2;
  v26 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = v12;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v16 = type metadata accessor for PlatformItemsGenerator();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v20 = v6[3];
  v36 = v6[2];
  v37 = v20;
  v38 = v6[4];
  v39 = *(v6 + 20);
  v21 = v6[1];
  v34 = *v6;
  v35 = v21;
  (*(v9 + 16))(v11, v26, a3);
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v33 = v39;
  v32[0] = v34;
  v32[1] = v35;
  outlined init with copy of _ViewInputs(&v34, &v31);
  PlatformItemsGenerator.init(strategy:source:inputs:inputsIncludeGeometry:)(v11, v29, v32, 1, a3, a5, v19);
  v30[2] = swift_getAssociatedTypeWitness();
  v30[3] = v16;
  v30[4] = swift_getWitnessTable();
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v30, v16, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  (*(v17 + 8))(v19, v16);
  return LODWORD(v32[0]);
}

unint64_t static ChildrenPlatformItemModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v16 = *(a2 + 32);
  v17 = v9;
  v11 = *(a2 + 48);
  v18 = *(a2 + 64);
  v12 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v12;
  v20[2] = v16;
  v20[3] = v11;
  v20[4] = *(a2 + 64);
  v13 = *a1;
  v19 = *(a2 + 80);
  v21 = *(a2 + 80);
  v20[0] = v15[0];
  v20[1] = v10;
  a3(a6);
  LODWORD(v20[0]) = v13;
  return static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(a6, v15, v20, a4, a5);
}

unint64_t static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v10);
  if (result)
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
    result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v9, v23);
    if (result)
    {
      if ((*(result + 73) & 2) != 0)
      {
        if (*(*(a4 - 8) + 64))
        {
          closure #1 in static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(1, a4);
        }

        OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
        v23 = v9;
        v24 = *(a2 + 8);
        v25 = *(a2 + 24);
        v26 = *(a2 + 40);
        v27 = v10;
        v28 = v11;
        v29 = *(a2 + 60);
        v30 = *(a2 + 76);
        v14 = _ViewInputs.makePlatformItemsGenerator<A, B>(strategy:source:)(OffsetAttribute2, OffsetAttribute2, &type metadata for MultiPassthroughPlatformItemsStrategy, a4, &protocol witness table for MultiPassthroughPlatformItemsStrategy, a5);
        v15 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1);
        v16 = *MEMORY[0x1E698D3F8];
        if ((v15 & 0x100000000) == 0)
        {
          v16 = v15;
        }

        v23 = __PAIR64__(v16, v14);
        MEMORY[0x1EEE9AC00](v15);
        v20 = type metadata accessor for ChildrenPlatformItemModifier.ItemsTransform();
        WitnessTable = swift_getWitnessTable();
        type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for Attribute<PlatformItems>, &type metadata for PlatformItems, MEMORY[0x1E698D388]);
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_17, &v19, v20, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
        LOBYTE(v23) = 0;
        return PreferencesOutputs.subscript.setter(v22, &type metadata for PlatformItems.Key, &protocol witness table for PlatformItems.Key);
      }
    }
  }

  return result;
}

uint64_t closure #1 in static ChildrenPlatformItemModifier.transformPlatformItemsOutputs(_:inputs:modifier:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ChildrenPlatformItemModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t ChildrenPlatformItemModifier.ItemsTransform.items.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = 0;
    result = 0;
    a2[1] = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    *(a2 + 2) = *(Value + 8);
  }

  *a2 = v3;
  a2[2] = result;
  return result;
}

uint64_t ChildrenPlatformItemModifier.ItemsTransform.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ChildrenPlatformItemModifier.ItemsTransform.items.getter(a1, &v18);
  v3 = v20;
  v15 = v18;
  v16 = v19;
  if (v20)
  {
    v4 = v20;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      result = AGCreateWeakAttribute();
      if (v6 >= *(v4 + 16))
      {
        break;
      }

      v12 = result;
      outlined init with copy of PlatformItem(v4 + v7, &v18);
      v22 = v12;
      v23 = 0;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      if (v6 >= *(v4 + 16))
      {
        goto LABEL_24;
      }

      result = outlined assign with take of PlatformItem(&v18, v4 + v7);
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_25;
      }

      outlined init with copy of PlatformItem(v4 + v7, &v18);
      if (v21 != -1)
      {
        if (v21)
        {
          v8 = ((v21 << 32) - 0x100000000) ^ (((v21 << 32) - 0x100000000) >> 22);
          v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
          v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
          v11 = (v10 >> 31) ^ v10;
        }

        else
        {
          v11 = 1;
        }

        v21 = v11;
      }

      ++v6;
      result = outlined assign with take of PlatformItem(&v18, v4 + v7);
      v7 += 632;
      if (v5 == v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_17:
    v13 = v15;
    if (!v3)
    {
      v13 = 0;
    }

    *a2 = v13;
    if (v3)
    {
      v14 = v16;
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 8) = v14;
    *(a2 + 16) = v4;
  }

  return result;
}

uint64_t View.platformItemsChildren<A>(content:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChildrenPlatformItemModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  View.modifier<A>(_:)(v15, a3, v11);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static PlatformItemsTextRepresentable.representationOptions(inputs:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v3, v6);
  if (result)
  {
    v5 = (*(result + 72) >> 4) & 1 | (2 * ((*(result + 72) & 0xC00) != 0));
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t PlatformItemsTextRepresentable.PlatformItemContent.makeContent()(uint64_t a1)
{
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v13);
  v6 = v13[9];
  *(a1 + 152) = v13[8];
  *(a1 + 168) = v6;
  *(a1 + 184) = v14[0];
  *(a1 + 195) = *(v14 + 11);
  v7 = v13[5];
  *(a1 + 88) = v13[4];
  *(a1 + 104) = v7;
  v8 = v13[7];
  *(a1 + 120) = v13[6];
  *(a1 + 136) = v8;
  v9 = v13[1];
  *(a1 + 24) = v13[0];
  *(a1 + 40) = v9;
  v10 = v13[3];
  *(a1 + 56) = v13[2];
  *(a1 + 72) = v10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v5;
  v11 = v5;
  return v4 & 1;
}

uint64_t PlatformItemsImageRepresentable.PlatformItemContent.makeContent()(uint64_t a1)
{
  Value = AGGraphGetValue();
  v4 = v3;
  v33 = *Value;
  v5 = Value[4];
  v7 = Value[1];
  v6 = Value[2];
  v36 = Value[3];
  v37 = v5;
  v34 = v7;
  v35 = v6;
  v8 = Value[8];
  v10 = Value[5];
  v9 = Value[6];
  v40 = Value[7];
  v41 = v8;
  v38 = v10;
  v39 = v9;
  v11 = Value[12];
  v13 = Value[9];
  v12 = Value[10];
  *&v43[16] = Value[11];
  v44 = v11;
  v42 = v13;
  *v43 = v12;
  v14 = *(&v11 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v45);
  v15 = v45[9];
  *(a1 + 152) = v45[8];
  *(a1 + 168) = v15;
  *(a1 + 184) = v46[0];
  *(a1 + 195) = *(v46 + 11);
  v16 = v45[5];
  *(a1 + 88) = v45[4];
  *(a1 + 104) = v16;
  v17 = v45[7];
  *(a1 + 120) = v45[6];
  *(a1 + 136) = v17;
  v18 = v45[1];
  *(a1 + 24) = v45[0];
  *(a1 + 40) = v18;
  v19 = v45[3];
  *(a1 + 56) = v45[2];
  *(a1 + 72) = v19;
  *(a1 + 216) = 0;
  v55 = v41;
  v56 = v42;
  v57[0] = *v43;
  *(v57 + 11) = *&v43[11];
  v51 = v37;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  _ViewInputs.base.modify(&v47, v20);
  v21 = *(a1 + 168);
  v58[8] = *(a1 + 152);
  v58[9] = v21;
  v59[0] = *(a1 + 184);
  *(v59 + 11) = *(a1 + 195);
  v22 = *(a1 + 104);
  v58[4] = *(a1 + 88);
  v58[5] = v22;
  v23 = *(a1 + 136);
  v58[6] = *(a1 + 120);
  v58[7] = v23;
  v24 = *(a1 + 40);
  v58[0] = *(a1 + 24);
  v58[1] = v24;
  v25 = *(a1 + 72);
  v58[2] = *(a1 + 56);
  v58[3] = v25;
  outlined init with copy of PlatformImageRepresentableContext(&v33, v32);
  outlined init with copy of Image.Resolved(&v33, v32);
  outlined destroy of PlatformItem.PrimaryContent?(v58, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved);
  v26 = v56;
  *(a1 + 152) = v55;
  *(a1 + 168) = v26;
  *(a1 + 184) = v57[0];
  *(a1 + 195) = *(v57 + 11);
  v27 = v52;
  *(a1 + 88) = v51;
  *(a1 + 104) = v27;
  v28 = v54;
  *(a1 + 120) = v53;
  *(a1 + 136) = v28;
  v29 = v48;
  *(a1 + 24) = v47;
  *(a1 + 40) = v29;
  v30 = v50;
  *(a1 + 56) = v49;
  *(a1 + 72) = v30;
  *(a1 + 224) = 1;

  outlined destroy of PlatformImageRepresentableContext(&v33);
  *(a1 + 232) = v14;
  return v4 & 1;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v5 = a2;
  if (a2 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v4 < a3)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v9 = *a4;
  v8 = *(a4 + 8);
  v10 = *a4 == v8;
  v11 = a2 == a3;
  if (a2 != a3 && v9 != v8)
  {
    v12 = result;
    v13 = v8 - 1;
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (*(a4 + 16))
      {
        v14 = v9 >> 6;
        if (v9 >> 6 < 0)
        {
          goto LABEL_43;
        }

        v15 = *(a4 + 32);
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_44;
        }

        v16 = *(v15 + 8 * v14 + 32);
        v17 = 1 << v9;
      }

      else
      {
        if (v9 < 0)
        {
          goto LABEL_42;
        }

        v16 = *(a4 + 24);
        v17 = 1 << v9;
        if (v9 >= 0x40)
        {
          v17 = 0;
        }
      }

      v18 = v16 & v17;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      v19 = *(v12 + 16);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v19 = result;
      }

      v20 = v5 >> 6;
      if (v5 >> 6 < 0)
      {
        goto LABEL_45;
      }

      if (v20 >= *(v19 + 16))
      {
        goto LABEL_46;
      }

      v21 = v19 + 8 * v20;
      v22 = 1 << (v5 & 0x3F);
      v23 = *(v21 + 32);
      v24 = v23 & ~v22;
      v25 = v23 | v22;
      if (!v18)
      {
        v25 = v24;
      }

      *(v21 + 32) = v25;
      *(v12 + 16) = v19;
LABEL_29:
      if (v5 >= v4)
      {
        goto LABEL_39;
      }

      v28 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_40;
      }

      if (v9 >= *(a4 + 40))
      {
        goto LABEL_41;
      }

      v10 = v13 == v9;
      v29 = v28 == a3;
      v11 = v28 == a3;
      if (!v29)
      {
        ++v5;
        v29 = v13 == v9++;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    if (v5 < 0x40)
    {
      v26 = 1 << v5;
      if (v18)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v26 = 0;
      if (v18)
      {
LABEL_25:
        v27 = *(v12 + 8) | v26;
LABEL_28:
        *(v12 + 8) = v27;
        goto LABEL_29;
      }
    }

    v27 = *(v12 + 8) & ~v26;
    goto LABEL_28;
  }

LABEL_35:
  if (!v11)
  {
    goto LABEL_50;
  }

  if (!v10)
  {
LABEL_51:
    __break(1u);
  }

  return result;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  if ((a2 & 0x8000000000000000) != 0 || (v4 = result, v5 = *(result + 16), *(v5 + 16) < a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = a2;
  v7 = *a4;
  v8 = a4[1];
  v9 = *a4 == v8;
  v10 = a2 == a3;
  if (a2 != a3 && v7 != v8)
  {
    v11 = 632 * a2 + 32;
    v12 = a3 - 1;
    v13 = 632 * v7 + 32;
    v14 = v8 - 1;
    v15 = *a4;
    while (v15 < v8)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      v16 = a4[4];
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_20;
      }

      outlined init with copy of PlatformItem(v16 + v13, v19);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        v5 = result;
      }

      if (v6 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      result = outlined assign with take of PlatformItem(v19, v5 + v11);
      *(v4 + 16) = v5;
      v9 = v14 == v15;
      v10 = v12 == v6;
      if (v12 != v6)
      {
        ++v6;
        v11 += 632;
        v13 += 632;
        if (v14 != v15++)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v9)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t result, uint64_t a2)
{
  v28 = a2;
  v4 = *(v2 + 3);
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = *(v2 + 3);
LABEL_3:
    v24 = v4;
    if (v4 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    while (1)
    {
      v9 = *v2;
      v11 = *(v2 + 1);
      v10 = *(v2 + 2);
      if (*v2)
      {
        v12 = v6 >> 6;
        if (v6 >> 6 < 0)
        {
          goto LABEL_39;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_40;
        }

        v13 = *(v10 + 8 * v12 + 32) & (1 << v6);
      }

      else
      {
        v14 = 1 << v6;
        if (v6 >= 0x40)
        {
          v14 = 0;
        }

        v13 = v11 & v14;
      }

      v25[0] = v13 != 0;
      result = v5(v25);
      if (v3)
      {
        return v6;
      }

      if (result)
      {
        break;
      }

      if (v8 == v6)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (++v6 >= v7)
      {
        return v6;
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 - 1;
      if (v15 < 1 || v15 > v24)
      {
        break;
      }

      if (v6 >= v7)
      {
        return v6;
      }

      if (v9)
      {
        if (v7 >> 6 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v10 + 32 + 8 * (v7 >> 6)) & (1 << v7);
      }

      else
      {
        v17 = 1 << v7;
        if (v7 >= 0x40)
        {
          v17 = 0;
        }

        v16 = v17 & v11;
      }

      v25[0] = v16 != 0;
      result = v5(v25);
      v15 = v7;
      if ((result & 1) == 0)
      {
        if (v6 != v7)
        {
          v18 = *(v2 + 8);
          v19 = *(v2 + 3);
          v25[0] = *v2;
          v26 = v18;
          v27 = v19;
          v20 = BitVector.subscript.getter(v6);
          v21 = *(v2 + 8);
          v22 = *(v2 + 3);
          v25[0] = *v2;
          v26 = v21;
          v27 = v22;
          v23 = BitVector.subscript.getter(v7);
          BitVector.subscript.setter(v23 & 1, v6);
          result = BitVector.subscript.setter(v20 & 1, v7);
        }

        if (v6 < 0)
        {
          goto LABEL_43;
        }

        v4 = *(v2 + 3);
        if (v6 >= v4)
        {
          goto LABEL_43;
        }

        if (++v6 < v7)
        {
          goto LABEL_3;
        }

        return v6;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

unint64_t specialized MutableCollection<>._partitionImpl(by:)(unint64_t result)
{
  v3 = *(*(v1 + 16) + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
LABEL_3:
  v6 = 632 * v5 + 32;
  v7 = v5;
  while (1)
  {
    if (v5 < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v8 = *(v13 + 16);
    if (v7 >= *(v8 + 16))
    {
      goto LABEL_20;
    }

    outlined init with copy of PlatformItem(v8 + v6, v12);
    v9 = v4(v12);
    result = outlined destroy of PlatformItem(v12);
    if (v2)
    {
      return v7;
    }

    if (v9)
    {
      break;
    }

    ++v7;
    v6 += 632;
    if (v7 >= v3)
    {
      return v7;
    }
  }

  v10 = v8 + 632 * v3 - 600;
  while (v7 < --v3)
  {
    if (v3 >= *(v8 + 16))
    {
      goto LABEL_21;
    }

    outlined init with copy of PlatformItem(v10, v12);
    v11 = v4(v12);
    result = outlined destroy of PlatformItem(v12);
    v10 -= 632;
    if ((v11 & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v7, v3);
      v5 = v7 + 1;
      if (v7 + 1 < v3)
      {
        goto LABEL_3;
      }

      return ++v7;
    }
  }

  return v7;
}

uint64_t outlined copy of PlatformItem.SelectionContent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t outlined consume of PlatformItem.SelectionContent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined init with copy of PlatformItem.PrimaryContent?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PlatformItem.PrimaryContent?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of PlatformItem.AccessibilityContent?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformItem.PrimaryContent?(0, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, &type metadata for PlatformItem.AccessibilityContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlatformItem.PrimaryContent?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for PlatformItem.PrimaryContent?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for PlatformItem.PrimaryContent?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static PlatformItemsTextRepresentable.shouldMakeRepresentation(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[6];
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2))
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
    if (v3)
    {
      if ((*(v3 + 72) & 2) != 0)
      {
        return 1;
      }
    }
  }

  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2) & 1) == 0)
  {
    return 0;
  }

  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
  if (result)
  {
    return *(result + 72) & 1;
  }

  return result;
}

uint64_t specialized static PlatformItemsImageRepresentable.shouldMakeRepresentation(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[6];
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2))
  {
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
    v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
    if (v3)
    {
      if ((*(v3 + 72) & 4) != 0)
      {
        return 1;
      }
    }
  }

  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v2) & 1) == 0)
  {
    return 0;
  }

  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v1, v5);
  if (result)
  {
    return *(result + 72) & 1;
  }

  return result;
}

unint64_t specialized static PlatformItemsImageRepresentable.makeRepresentation(inputs:context:outputs:)(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v7[0] = 1;
  outlined init with copy of _ViewInputs(v12, &v8);
  PlatformItemRuleConfiguration.init(inputs:kind:)(a1, v7, &v14);
  *&v7[4] = v14;
  *&v7[20] = v15[0];
  *&v7[32] = *(v15 + 12);
  v8 = a2;
  v9 = *v7;
  v10 = *&v7[16];
  v11 = *(v15 + 12);
  return specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(v12, &v8, protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase, lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent);
}

unint64_t specialized static PlatformItemsTextRepresentable.makeRepresentation(inputs:context:outputs:)(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v7[0] = 0;
  outlined init with copy of _ViewInputs(v12, &v8);
  PlatformItemRuleConfiguration.init(inputs:kind:)(a1, v7, &v14);
  *&v7[4] = v14;
  *&v7[20] = v15[0];
  *&v7[32] = *(v15 + 12);
  v8 = a2;
  v9 = *v7;
  v10 = *&v7[16];
  v11 = *(v15 + 12);
  return specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(v12, &v8, protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase, lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent);
}

unint64_t lazy protocol witness table accessor for type PlatformItems.Features and conformance PlatformItems.Features()
{
  result = lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features;
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features;
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features;
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features;
  if (!lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems.Features and conformance PlatformItems.Features);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItems and conformance PlatformItems()
{
  result = lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems;
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems;
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems;
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems;
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems;
  if (!lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItems and conformance PlatformItems);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PlatformItems> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<PlatformItems>(255, &lazy cache variable for type metadata for Slice<PlatformItems>, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PlatformItems> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<PlatformItems>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<PlatformItems>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type PlatformItems and conformance PlatformItems();
    v7 = a3(a1, &type metadata for PlatformItems, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItem.Features and conformance PlatformItem.Features()
{
  result = lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features;
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features;
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features;
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features;
  if (!lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.Features and conformance PlatformItem.Features);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItem.ID and conformance PlatformItem.ID()
{
  result = lazy protocol witness table cache variable for type PlatformItem.ID and conformance PlatformItem.ID;
  if (!lazy protocol witness table cache variable for type PlatformItem.ID and conformance PlatformItem.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.ID and conformance PlatformItem.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItem.StaticKind and conformance PlatformItem.StaticKind()
{
  result = lazy protocol witness table cache variable for type PlatformItem.StaticKind and conformance PlatformItem.StaticKind;
  if (!lazy protocol witness table cache variable for type PlatformItem.StaticKind and conformance PlatformItem.StaticKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.StaticKind and conformance PlatformItem.StaticKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options()
{
  result = lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options;
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options;
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options;
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options;
  if (!lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.SelectionContent.Options and conformance PlatformItem.SelectionContent.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor()
{
  result = lazy protocol witness table cache variable for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor;
  if (!lazy protocol witness table cache variable for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PlatformItem.GeometryContent.InitAnchor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlatformItem.GeometryContent.InitAnchor and conformance PlatformItem.GeometryContent.InitAnchor();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init()
{
  result = lazy protocol witness table cache variable for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init;
  if (!lazy protocol witness table cache variable for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PlatformItem.GeometryContent.Init(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlatformItem.GeometryContent.Init and conformance PlatformItem.GeometryContent.Init();
  *(a1 + 8) = result;
  return result;
}

void *keypath_get_4Tm@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void, _BYTE *)@<X3>, void *a3@<X8>)
{
  result = a2(&v6, *a1, v5);
  *a3 = v6;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for PlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for PlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t destroy for PlatformItem(uint64_t a1)
{

  v2 = *(a1 + 32);
  if (v2 != 1)
  {

    v3 = *(a1 + 184);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 64);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 56), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 168), *(a1 + 176), v3);
      }

      swift_unknownObjectRelease();
    }
  }

  result = *(a1 + 304);
  if (result != 1)
  {
    result = swift_unknownObjectRelease();
  }

  if (*(a1 + 608))
  {

    v6 = *(a1 + 416);
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_16:
        if (*(a1 + 568) != 1)
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 392);
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = (a2 + 32);
  v6 = *(a2 + 32);

  if (v6 == 1)
  {
    v7 = v5[13];
    *(a1 + 224) = v5[12];
    *(a1 + 240) = v7;
    *(a1 + 256) = v5[14];
    v8 = v5[9];
    *(a1 + 160) = v5[8];
    *(a1 + 176) = v8;
    v9 = v5[11];
    *(a1 + 192) = v5[10];
    *(a1 + 208) = v9;
    v10 = v5[5];
    *(a1 + 96) = v5[4];
    *(a1 + 112) = v10;
    v11 = v5[7];
    *(a1 + 128) = v5[6];
    *(a1 + 144) = v11;
    v12 = v5[1];
    *(a1 + 32) = *v5;
    *(a1 + 48) = v12;
    v13 = v5[3];
    *(a1 + 64) = v5[2];
    *(a1 + 80) = v13;
  }

  else
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    *(a1 + 32) = v6;
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    v16 = *(a2 + 184);
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 227) = *(a2 + 227);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      v20 = *(a2 + 64);
      if (v20 == 255)
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
      }

      else
      {
        v21 = *(a2 + 56);
        outlined copy of GraphicsImage.Contents(v21, *(a2 + 64));
        *(a1 + 56) = v21;
        *(a1 + 64) = v20;
        v16 = *(a2 + 184);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 100) = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      v22 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v22;
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = *(a2 + 184);
      }

      else
      {
        v23 = *(a2 + 168);
        v24 = *(a2 + 176);
        v25 = *(a2 + 192);
        outlined copy of AccessibilityImageLabel(v23, v24, v16);
        *(a1 + 168) = v23;
        *(a1 + 176) = v24;
        *(a1 + 184) = v16;
        *(a1 + 192) = v25;
      }

      v26 = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = v26;
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 220) = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);
      v27 = *(a2 + 232);
      *(a1 + 232) = v27;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 242) = *(a2 + 242);
      swift_unknownObjectRetain();

      v28 = v27;
    }

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 272) = *(a2 + 272);
  v29 = *(a2 + 304);

  if (v29 == 1)
  {
    v30 = *(a2 + 296);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v30;
  }

  else
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v29;
    swift_unknownObjectRetain();
  }

  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  if (!*(a2 + 608))
  {
    memcpy((a1 + 328), (a2 + 328), 0x129uLL);
    return a1;
  }

  v31 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v31;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  v32 = (a1 + 392);
  v33 = (a2 + 392);
  v34 = *(a2 + 416);

  if (!v34)
  {
    v36 = *(a2 + 408);
    *v32 = *v33;
    *(a1 + 408) = v36;
    *(a1 + 424) = *(a2 + 424);
LABEL_23:
    *(a1 + 432) = *(a2 + 432);

    goto LABEL_24;
  }

  if (v34 != 1)
  {
    v37 = *(a2 + 424);
    *(a1 + 416) = v34;
    *(a1 + 424) = v37;
    (**(v34 - 8))(a1 + 392, a2 + 392, v34);
    goto LABEL_23;
  }

  v35 = *(a2 + 408);
  *v32 = *v33;
  *(a1 + 408) = v35;
  *(a1 + 424) = *(a2 + 424);
LABEL_24:
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  v38 = (a1 + 456);
  v39 = (a2 + 456);
  v40 = *(a2 + 568);
  if (v40 == 1)
  {
    v41 = *(a2 + 568);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 568) = v41;
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    v42 = *(a2 + 504);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 504) = v42;
    v43 = *(a2 + 536);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 536) = v43;
    v44 = *(a2 + 472);
    *v38 = *v39;
    *(a1 + 472) = v44;
  }

  else
  {
    *v38 = *v39;
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = *(a2 + 488);
    v45 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v45;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = v40;
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithCopy for PlatformItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v7 = (a2 + 32);
  v6 = *(a2 + 32);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v9;
      *v4 = v8;
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      v12 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v12;
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
      v13 = *(a2 + 144);
      v14 = *(a2 + 160);
      v15 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v15;
      *(a1 + 144) = v13;
      *(a1 + 160) = v14;
      v16 = *(a2 + 208);
      v17 = *(a2 + 224);
      v18 = *(a2 + 256);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 256) = v18;
      *(a1 + 208) = v16;
      *(a1 + 224) = v17;
    }

    else
    {
      *(a1 + 32) = v6;
      v30 = *(a2 + 40);
      *(a1 + 40) = v30;
      v31 = *(a2 + 48);
      *(a1 + 48) = v31;
      v32 = *(a2 + 184);
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 56);
        v37 = *(a2 + 72);
        v38 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v38;
        *(a1 + 72) = v37;
        *(a1 + 56) = v36;
        v39 = *(a2 + 120);
        v40 = *(a2 + 136);
        v41 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v41;
        *(a1 + 136) = v40;
        *(a1 + 120) = v39;
        v42 = *(a2 + 184);
        v43 = *(a2 + 200);
        v44 = *(a2 + 216);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v44;
        *(a1 + 200) = v43;
        *(a1 + 184) = v42;
      }

      else
      {
        v62 = *(a2 + 64);
        if (v62 == 255)
        {
          v79 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v79;
        }

        else
        {
          v63 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 64));
          *(a1 + 56) = v63;
          *(a1 + 64) = v62;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        v80 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v80;
        v81 = *(a2 + 128);
        v82 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v81;
        *(a1 + 144) = v82;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v83 = *(a2 + 184);
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v84;
        }

        else
        {
          v85 = *(a2 + 168);
          v86 = *(a2 + 176);
          v87 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v85, v86, *(a2 + 184));
          *(a1 + 168) = v85;
          *(a1 + 176) = v86;
          *(a1 + 184) = v83;
          *(a1 + 192) = v87;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v88 = *(a2 + 220);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v88;
        v89 = *(a2 + 232);
        *(a1 + 232) = v89;
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
    v20 = *(a2 + 48);
    v19 = *(a2 + 64);
    *v4 = *v7;
    *(a1 + 48) = v20;
    *(a1 + 64) = v19;
    v21 = *(a2 + 128);
    v23 = *(a2 + 80);
    v22 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v21;
    *(a1 + 80) = v23;
    *(a1 + 96) = v22;
    v24 = *(a2 + 192);
    v26 = *(a2 + 144);
    v25 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v24;
    *(a1 + 144) = v26;
    *(a1 + 160) = v25;
    v27 = *(a2 + 256);
    v29 = *(a2 + 208);
    v28 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = v27;
    *(a1 + 208) = v29;
    *(a1 + 224) = v28;
  }

  else
  {
    *(a1 + 32) = v6;
    v45 = v6;

    v46 = *(a1 + 40);
    v47 = *(a2 + 40);
    *(a1 + 40) = v47;
    v48 = v47;

    v49 = *(a1 + 48);
    v50 = *(a2 + 48);
    *(a1 + 48) = v50;
    v51 = v50;

    v52 = *(a2 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 184) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 56);
        v54 = *(a2 + 72);
        v55 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v55;
        *(a1 + 72) = v54;
        *(a1 + 56) = v53;
        v56 = *(a2 + 120);
        v57 = *(a2 + 136);
        v58 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v58;
        *(a1 + 136) = v57;
        *(a1 + 120) = v56;
        v59 = *(a2 + 184);
        v60 = *(a2 + 200);
        v61 = *(a2 + 216);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v61;
        *(a1 + 200) = v60;
        *(a1 + 184) = v59;
      }

      else
      {
        v73 = *(a2 + 64);
        if (v73 == 255)
        {
          v91 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v91;
        }

        else
        {
          v74 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 64));
          *(a1 + 56) = v74;
          *(a1 + 64) = v73;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        v92 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v92;
        v93 = *(a2 + 128);
        v94 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v93;
        *(a1 + 144) = v94;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v95 = *(a2 + 184);
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v96;
        }

        else
        {
          v97 = *(a2 + 168);
          v98 = *(a2 + 176);
          v99 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v97, v98, *(a2 + 184));
          *(a1 + 168) = v97;
          *(a1 + 176) = v98;
          *(a1 + 184) = v95;
          *(a1 + 192) = v99;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v100 = *(a2 + 220);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v100;
        v101 = *(a2 + 232);
        *(a1 + 232) = v101;
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 56);
      v64 = *(a2 + 72);
      v65 = *(a2 + 88);
      v66 = *(a2 + 104);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 104) = v66;
      *(a1 + 88) = v65;
      *(a1 + 72) = v64;
      v67 = *(a2 + 136);
      v68 = *(a2 + 152);
      v69 = *(a2 + 168);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 168) = v69;
      *(a1 + 152) = v68;
      *(a1 + 136) = v67;
      v70 = *(a2 + 200);
      v71 = *(a2 + 216);
      v72 = *(a2 + 227);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 227) = v72;
      *(a1 + 216) = v71;
      *(a1 + 200) = v70;
    }

    else
    {
      v75 = *(a2 + 64);
      if (*(a1 + 64) == 255)
      {
        if (v75 == 255)
        {
          v105 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v105;
        }

        else
        {
          v103 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 64));
          *(a1 + 56) = v103;
          *(a1 + 64) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 56);
        v104 = *(a2 + 64);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v104;
      }

      else
      {
        v76 = *(a2 + 56);
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 64));
        v77 = *(a1 + 56);
        *(a1 + 56) = v76;
        v78 = *(a1 + 64);
        *(a1 + 64) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v106 = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      *(a1 + 100) = v106;
      v107 = *(a2 + 128);
      v108 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 128) = v107;
      *(a1 + 144) = v108;
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      v109 = *(a2 + 184);
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 184) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v111;
        }

        else
        {
          v113 = *(a2 + 168);
          v114 = *(a2 + 176);
          v115 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v113, v114, *(a2 + 184));
          *(a1 + 168) = v113;
          *(a1 + 176) = v114;
          *(a1 + 184) = v109;
          *(a1 + 192) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 168);
        v112 = *(a2 + 184);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v112;
      }

      else
      {
        v116 = *(a2 + 168);
        v117 = *(a2 + 176);
        v118 = *(a2 + 192);
        outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 184));
        v119 = *(a1 + 168);
        v120 = *(a1 + 176);
        v121 = *(a1 + 184);
        *(a1 + 168) = v116;
        *(a1 + 176) = v117;
        *(a1 + 184) = v109;
        *(a1 + 192) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121);
      }

      *(a1 + 200) = *(a2 + 200);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 208) = *(a2 + 208);

      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      v122 = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 220) = v122;
      v123 = *(a1 + 232);
      v124 = *(a2 + 232);
      *(a1 + 232) = v124;
      v125 = v124;

      *(a1 + 240) = *(a2 + 240);
      *(a1 + 242) = *(a2 + 242);
    }

    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 272) = *(a2 + 272);

  v126 = (a1 + 280);
  v127 = (a2 + 280);
  v128 = *(a2 + 304);
  if (*(a1 + 304) == 1)
  {
    if (v128 == 1)
    {
      v129 = *(a2 + 296);
      *v126 = *v127;
      *(a1 + 296) = v129;
    }

    else
    {
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      swift_unknownObjectRetain();
    }
  }

  else if (v128 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    v130 = *(a2 + 296);
    *v126 = *v127;
    *(a1 + 296) = v130;
  }

  else
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v131 = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 312) = v131;
  v132 = *(a2 + 608);
  if (*(a1 + 608))
  {
    if (v132)
    {
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = *(a2 + 352);

      *(a1 + 360) = *(a2 + 360);
      v133 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 368) = v133;
      v134 = (a1 + 392);
      v135 = (a2 + 392);
      v136 = *(a1 + 416);
      v137 = *(a2 + 416);
      if (v136 != 1)
      {
        if (v137 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 392);
          v147 = *(a2 + 408);
          v146 = *(a2 + 424);
          *v134 = *v135;
          *(a1 + 408) = v147;
          *(a1 + 424) = v146;
        }

        else
        {
          if (v136)
          {
            if (v137)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 392), (a2 + 392));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 392);
              v165 = *(a2 + 424);
              v166 = *(a2 + 408);
              *v134 = *v135;
              *(a1 + 408) = v166;
              *(a1 + 424) = v165;
            }
          }

          else if (v137)
          {
            *(a1 + 416) = v137;
            *(a1 + 424) = *(a2 + 424);
            (**(v137 - 8))(a1 + 392, a2 + 392);
          }

          else
          {
            v167 = *v135;
            v168 = *(a2 + 408);
            *(a1 + 424) = *(a2 + 424);
            *v134 = v167;
            *(a1 + 408) = v168;
          }

          *(a1 + 432) = *(a2 + 432);
        }

        goto LABEL_83;
      }

      if (v137)
      {
        if (v137 == 1)
        {
          v138 = *v135;
          v139 = *(a2 + 424);
          *(a1 + 408) = *(a2 + 408);
          *(a1 + 424) = v139;
          *v134 = v138;
LABEL_83:
          v169 = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 440) = v169;
          v170 = (a1 + 456);
          v171 = (a2 + 456);
          v172 = *(a2 + 568);
          if (*(a1 + 568) == 1)
          {
            if (v172 == 1)
            {
              v173 = *(a2 + 472);
              *v170 = *v171;
              *(a1 + 472) = v173;
              v174 = *(a2 + 488);
              v175 = *(a2 + 504);
              v176 = *(a2 + 536);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 536) = v176;
              *(a1 + 488) = v174;
              *(a1 + 504) = v175;
              v177 = *(a2 + 552);
              v178 = *(a2 + 568);
              v179 = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 568) = v178;
              *(a1 + 584) = v179;
              *(a1 + 552) = v177;
            }

            else
            {
              v187 = *v171;
              *(a1 + 464) = *(a2 + 464);
              *v170 = v187;
              v188 = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 472) = v188;
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 482) = *(a2 + 482);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              *(a1 + 512) = *(a2 + 512);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              v189 = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 576) = v189;
              *(a1 + 600) = *(a2 + 600);
            }
          }

          else if (v172 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
            v180 = *(a2 + 472);
            *v170 = *v171;
            *(a1 + 472) = v180;
            v181 = *(a2 + 536);
            v183 = *(a2 + 488);
            v182 = *(a2 + 504);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 536) = v181;
            *(a1 + 488) = v183;
            *(a1 + 504) = v182;
            v185 = *(a2 + 568);
            v184 = *(a2 + 584);
            v186 = *(a2 + 552);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 568) = v185;
            *(a1 + 584) = v184;
            *(a1 + 552) = v186;
          }

          else
          {
            v190 = *v171;
            *(a1 + 464) = *(a2 + 464);
            *v170 = v190;
            v191 = *(a2 + 472);
            *(a1 + 480) = *(a2 + 480);
            *(a1 + 472) = v191;
            *(a1 + 481) = *(a2 + 481);
            *(a1 + 482) = *(a2 + 482);
            *(a1 + 483) = *(a2 + 483);
            *(a1 + 484) = *(a2 + 484);
            *(a1 + 488) = *(a2 + 488);
            *(a1 + 496) = *(a2 + 496);
            *(a1 + 504) = *(a2 + 504);
            *(a1 + 512) = *(a2 + 512);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 537) = *(a2 + 537);
            *(a1 + 544) = *(a2 + 544);
            *(a1 + 552) = *(a2 + 552);
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = *(a2 + 568);

            v192 = *(a2 + 576);
            *(a1 + 592) = *(a2 + 592);
            *(a1 + 576) = v192;
            *(a1 + 600) = *(a2 + 600);
          }

          *(a1 + 608) = *(a2 + 608);

          *(a1 + 616) = *(a2 + 616);
          *(a1 + 620) = *(a2 + 620);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        *(a1 + 416) = v137;
        *(a1 + 424) = *(a2 + 424);
        (**(v137 - 8))(a1 + 392, a2 + 392);
      }

      else
      {
        v163 = *v135;
        v164 = *(a2 + 408);
        *(a1 + 424) = *(a2 + 424);
        *v134 = v163;
        *(a1 + 408) = v164;
      }

      *(a1 + 432) = *(a2 + 432);

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
LABEL_62:
    memcpy((a1 + 328), (a2 + 328), 0x129uLL);
    return a1;
  }

  if (!v132)
  {
    goto LABEL_62;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  v140 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v140;
  v141 = (a1 + 392);
  v142 = (a2 + 392);
  v143 = *(a2 + 416);

  if (!v143)
  {
    v148 = *v142;
    v149 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *v141 = v148;
    *(a1 + 408) = v149;
LABEL_70:
    *(a1 + 432) = *(a2 + 432);

    goto LABEL_71;
  }

  if (v143 != 1)
  {
    *(a1 + 416) = v143;
    *(a1 + 424) = *(a2 + 424);
    (**(v143 - 8))(a1 + 392, a2 + 392, v143);
    goto LABEL_70;
  }

  v144 = *v142;
  v145 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v145;
  *v141 = v144;
LABEL_71:
  v150 = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 440) = v150;
  v151 = (a1 + 456);
  v152 = (a2 + 456);
  if (*(a2 + 568) == 1)
  {
    v153 = *(a2 + 472);
    *v151 = *v152;
    *(a1 + 472) = v153;
    v154 = *(a2 + 488);
    v155 = *(a2 + 504);
    v156 = *(a2 + 536);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 536) = v156;
    *(a1 + 488) = v154;
    *(a1 + 504) = v155;
    v157 = *(a2 + 552);
    v158 = *(a2 + 568);
    v159 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 568) = v158;
    *(a1 + 584) = v159;
    *(a1 + 552) = v157;
  }

  else
  {
    v160 = *v152;
    *(a1 + 464) = *(a2 + 464);
    *v151 = v160;
    v161 = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 472) = v161;
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 482) = *(a2 + 482);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 537) = *(a2 + 537);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    v162 = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 576) = v162;
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithTake for PlatformItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
LABEL_4:
    v6 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v6;
    *(a1 + 256) = *(a2 + 256);
    v7 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v7;
    v8 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v8;
    v9 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v9;
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    goto LABEL_21;
  }

  *(a1 + 32) = v4;

  v13 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v14 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 184) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 184) >> 1 != 4294967294)
  {
    v15 = *(a1 + 64);
    if (v15 != 255)
    {
      v16 = *(a2 + 64);
      if (v16 != 255)
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v16;
        outlined consume of GraphicsImage.Contents(v17, v15);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 56);
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
LABEL_14:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 113) = *(a2 + 113);
    v18 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v18;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 161) = *(a2 + 161);
    v19 = *(a1 + 184);
    *(a1 + 162) = *(a2 + 162);
    if (v19 >> 1 != 0xFFFFFFFF)
    {
      v20 = *(a2 + 184);
      if (v20 >> 1 != 0xFFFFFFFF)
      {
        v21 = *(a2 + 192);
        v22 = *(a1 + 168);
        v23 = *(a1 + 176);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v20;
        *(a1 + 192) = v21;
        outlined consume of AccessibilityImageLabel(v22, v23, v19);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 168);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
LABEL_19:
    *(a1 + 200) = *(a2 + 200);
    swift_unknownObjectRelease();
    *(a1 + 208) = *(a2 + 208);

    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    *(a1 + 220) = *(a2 + 220);
    *(a1 + 224) = *(a2 + 224);
    v24 = *(a1 + 232);
    *(a1 + 232) = *(a2 + 232);

    *(a1 + 240) = *(a2 + 240);
    *(a1 + 242) = *(a2 + 242);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 56);
LABEL_8:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_20:
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);

LABEL_21:
  *(a1 + 272) = *(a2 + 272);

  v25 = (a1 + 280);
  if (*(a1 + 304) == 1)
  {
LABEL_24:
    v27 = *(a2 + 296);
    *v25 = *(a2 + 280);
    *(a1 + 296) = v27;
    goto LABEL_26;
  }

  v26 = *(a2 + 304);
  if (v26 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    goto LABEL_24;
  }

  *v25 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v26;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  if (*(a1 + 608))
  {
    if (*(a2 + 608))
    {
      v28 = *(a2 + 336);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = v28;

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = *(a2 + 352);

      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      v29 = (a1 + 392);
      v30 = (a2 + 392);
      v31 = *(a1 + 416);
      if (v31 != 1)
      {
        v32 = *(a2 + 416);
        if (v32 != 1)
        {
          if (v31)
          {
            v34 = a1 + 392;
            if (v32)
            {
              __swift_destroy_boxed_opaque_existential_1(v34);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v34);
            }
          }

          v35 = *(a2 + 408);
          *v29 = *v30;
          *(a1 + 408) = v35;
          *(a1 + 424) = *(a2 + 424);
          *(a1 + 432) = *(a2 + 432);

LABEL_39:
          *(a1 + 440) = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
          v36 = (a1 + 456);
          v37 = (a2 + 456);
          if (*(a1 + 568) != 1)
          {
            v38 = *(a2 + 568);
            if (v38 != 1)
            {
              *v36 = *v37;
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = *(a2 + 488);
              v43 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v43;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = v38;

              *(a1 + 576) = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 600) = *(a2 + 600);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
          }

          v39 = *(a2 + 568);
          *(a1 + 552) = *(a2 + 552);
          *(a1 + 568) = v39;
          *(a1 + 584) = *(a2 + 584);
          *(a1 + 600) = *(a2 + 600);
          v40 = *(a2 + 504);
          *(a1 + 488) = *(a2 + 488);
          *(a1 + 504) = v40;
          v41 = *(a2 + 536);
          *(a1 + 520) = *(a2 + 520);
          *(a1 + 536) = v41;
          v42 = *(a2 + 472);
          *v36 = *v37;
          *(a1 + 472) = v42;
LABEL_44:
          *(a1 + 608) = *(a2 + 608);

          *(a1 + 616) = *(a2 + 616);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 392);
      }

      v33 = *(a2 + 408);
      *v29 = *v30;
      *(a1 + 408) = v33;
      *(a1 + 424) = *(a2 + 424);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
  }

  memcpy((a1 + 328), (a2 + 328), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 625))
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

uint64_t storeEnumTagSinglePayload for PlatformItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 616) = 0;
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
    *(result + 624) = 0;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
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
      *(result + 625) = 1;
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

    *(result + 625) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for PlatformItem.PrimaryContent(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v3 = *(a1 + 32);
    if (v3 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 24), v3);
    }

    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 136), *(a1 + 144), v2);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t initializeWithCopy for PlatformItem.PrimaryContent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  *(a1 + 16) = v6;
  v7 = *(a2 + 152);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFCLL)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 195) = *(a2 + 195);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v11 = *(a2 + 32);
    if (v11 == 255)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v12 = *(a2 + 24);
      outlined copy of GraphicsImage.Contents(v12, *(a2 + 32));
      *(a1 + 24) = v12;
      *(a1 + 32) = v11;
    }

    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 81) = *(a2 + 81);
    v13 = *(a2 + 96);
    v14 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 130) = *(a2 + 130);
    *(a1 + 131) = *(a2 + 131);
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      v15 = *(a2 + 136);
      v16 = *(a2 + 144);
      v17 = *(a2 + 160);
      outlined copy of AccessibilityImageLabel(v15, v16, v7);
      *(a1 + 136) = v15;
      *(a1 + 144) = v16;
      *(a1 + 152) = v7;
      *(a1 + 160) = v17;
    }

    v18 = *(a2 + 176);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = v18;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 188) = *(a2 + 188);
    *(a1 + 192) = *(a2 + 192);
    v19 = *(a2 + 200);
    *(a1 + 200) = v19;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 210) = *(a2 + 210);
    swift_unknownObjectRetain();

    v20 = v19;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t assignWithCopy for PlatformItem.PrimaryContent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  v13 = *(a2 + 152) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 152) >> 1 == 4294967294)
  {
    if (v13 == 0x1FFFFFFFCLL)
    {
      v14 = *(a2 + 24);
      v15 = *(a2 + 40);
      v16 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v16;
      *(a1 + 40) = v15;
      *(a1 + 24) = v14;
      v17 = *(a2 + 88);
      v18 = *(a2 + 104);
      v19 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v19;
      *(a1 + 104) = v18;
      *(a1 + 88) = v17;
      v20 = *(a2 + 152);
      v21 = *(a2 + 168);
      v22 = *(a2 + 184);
      *(a1 + 195) = *(a2 + 195);
      *(a1 + 184) = v22;
      *(a1 + 168) = v21;
      *(a1 + 152) = v20;
    }

    else
    {
      v32 = *(a2 + 32);
      if (v32 == 255)
      {
        v38 = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 24) = v38;
      }

      else
      {
        v33 = *(a2 + 24);
        outlined copy of GraphicsImage.Contents(v33, *(a2 + 32));
        *(a1 + 24) = v33;
        *(a1 + 32) = v32;
      }

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      v39 = *(a2 + 68);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 68) = v39;
      v40 = *(a2 + 96);
      v41 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 96) = v40;
      *(a1 + 112) = v41;
      *(a1 + 129) = *(a2 + 129);
      *(a1 + 130) = *(a2 + 130);
      *(a1 + 131) = *(a2 + 131);
      v42 = *(a2 + 152);
      if (v42 >> 1 == 0xFFFFFFFF)
      {
        v43 = *(a2 + 136);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 136) = v43;
      }

      else
      {
        v44 = *(a2 + 136);
        v45 = *(a2 + 144);
        v46 = *(a2 + 160);
        outlined copy of AccessibilityImageLabel(v44, v45, *(a2 + 152));
        *(a1 + 136) = v44;
        *(a1 + 144) = v45;
        *(a1 + 152) = v42;
        *(a1 + 160) = v46;
      }

      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 185) = *(a2 + 185);
      v47 = *(a2 + 188);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 188) = v47;
      v48 = *(a2 + 200);
      *(a1 + 200) = v48;
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 210) = *(a2 + 210);
      swift_unknownObjectRetain();

      v49 = v48;
    }
  }

  else if (v13 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 24);
    v23 = *(a2 + 40);
    v24 = *(a2 + 56);
    v25 = *(a2 + 72);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 72) = v25;
    *(a1 + 56) = v24;
    *(a1 + 40) = v23;
    v26 = *(a2 + 104);
    v27 = *(a2 + 120);
    v28 = *(a2 + 136);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 136) = v28;
    *(a1 + 120) = v27;
    *(a1 + 104) = v26;
    v29 = *(a2 + 168);
    v30 = *(a2 + 184);
    v31 = *(a2 + 195);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 195) = v31;
    *(a1 + 184) = v30;
    *(a1 + 168) = v29;
  }

  else
  {
    v34 = *(a2 + 32);
    if (*(a1 + 32) == 255)
    {
      if (v34 == 255)
      {
        v52 = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 24) = v52;
      }

      else
      {
        v50 = *(a2 + 24);
        outlined copy of GraphicsImage.Contents(v50, *(a2 + 32));
        *(a1 + 24) = v50;
        *(a1 + 32) = v34;
      }
    }

    else if (v34 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 24);
      v51 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v51;
    }

    else
    {
      v35 = *(a2 + 24);
      outlined copy of GraphicsImage.Contents(v35, *(a2 + 32));
      v36 = *(a1 + 24);
      *(a1 + 24) = v35;
      v37 = *(a1 + 32);
      *(a1 + 32) = v34;
      outlined consume of GraphicsImage.Contents(v36, v37);
    }

    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v53 = *(a2 + 68);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 68) = v53;
    v54 = *(a2 + 96);
    v55 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v54;
    *(a1 + 112) = v55;
    *(a1 + 129) = *(a2 + 129);
    *(a1 + 130) = *(a2 + 130);
    *(a1 + 131) = *(a2 + 131);
    v56 = *(a2 + 152);
    v57 = v56 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 152) >> 1 == 0xFFFFFFFFLL)
    {
      if (v57 == 0x1FFFFFFFELL)
      {
        v58 = *(a2 + 136);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 136) = v58;
      }

      else
      {
        v60 = *(a2 + 136);
        v61 = *(a2 + 144);
        v62 = *(a2 + 160);
        outlined copy of AccessibilityImageLabel(v60, v61, *(a2 + 152));
        *(a1 + 136) = v60;
        *(a1 + 144) = v61;
        *(a1 + 152) = v56;
        *(a1 + 160) = v62;
      }
    }

    else if (v57 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 136);
      v59 = *(a2 + 152);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = v59;
    }

    else
    {
      v63 = *(a2 + 136);
      v64 = *(a2 + 144);
      v65 = *(a2 + 160);
      outlined copy of AccessibilityImageLabel(v63, v64, *(a2 + 152));
      v66 = *(a1 + 136);
      v67 = *(a1 + 144);
      v68 = *(a1 + 152);
      *(a1 + 136) = v63;
      *(a1 + 144) = v64;
      *(a1 + 152) = v56;
      *(a1 + 160) = v65;
      outlined consume of AccessibilityImageLabel(v66, v67, v68);
    }

    *(a1 + 168) = *(a2 + 168);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 176) = *(a2 + 176);

    *(a1 + 184) = *(a2 + 184);
    *(a1 + 185) = *(a2 + 185);
    v69 = *(a2 + 188);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 188) = v69;
    v70 = *(a1 + 200);
    v71 = *(a2 + 200);
    *(a1 + 200) = v71;
    v72 = v71;

    *(a1 + 208) = *(a2 + 208);
    *(a1 + 210) = *(a2 + 210);
  }

  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t assignWithTake for PlatformItem.PrimaryContent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  if (*(a1 + 152) >> 1 == 4294967294)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 152);
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v8 = *(a1 + 32);
    if (v8 != 255)
    {
      v9 = *(a2 + 32);
      if (v9 != 255)
      {
        v10 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v9;
        outlined consume of GraphicsImage.Contents(v10, v8);
        goto LABEL_10;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 24);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
LABEL_10:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 81) = *(a2 + 81);
    v11 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v11;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 129) = *(a2 + 129);
    v12 = *(a1 + 152);
    *(a1 + 130) = *(a2 + 130);
    if (v12 >> 1 != 0xFFFFFFFF)
    {
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        v13 = *(a2 + 160);
        v14 = *(a1 + 136);
        v15 = *(a1 + 144);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 152) = v7;
        *(a1 + 160) = v13;
        outlined consume of AccessibilityImageLabel(v14, v15, v12);
        goto LABEL_15;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 136);
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
LABEL_15:
    *(a1 + 168) = *(a2 + 168);
    swift_unknownObjectRelease();
    *(a1 + 176) = *(a2 + 176);

    *(a1 + 184) = *(a2 + 184);
    *(a1 + 185) = *(a2 + 185);
    *(a1 + 188) = *(a2 + 188);
    *(a1 + 192) = *(a2 + 192);
    v16 = *(a1 + 200);
    *(a1 + 200) = *(a2 + 200);

    *(a1 + 208) = *(a2 + 208);
    *(a1 + 210) = *(a2 + 210);
    goto LABEL_16;
  }

  outlined destroy of Image.Resolved(a1 + 24);
LABEL_4:
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 195) = *(a2 + 195);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_16:
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItem.PrimaryContent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
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

uint64_t storeEnumTagSinglePayload for PlatformItem.PrimaryContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlatformItem.SelectionContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for PlatformItem.SelectionContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithCopy for PlatformItem.SelectionContent.AuxiliaryContent(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for PlatformItem.SelectionContent.AuxiliaryContent(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t initializeWithCopy for PlatformItem.AccessibilityContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v15;
  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t assignWithCopy for PlatformItem.AccessibilityContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  return a1;
}

uint64_t assignWithTake for PlatformItem.AccessibilityContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = a1 + 64;
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItem.AccessibilityContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 297))
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

uint64_t storeEnumTagSinglePayload for PlatformItem.AccessibilityContent(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformItemRuleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 44))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemRuleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for PlatformItemsGenerator()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-113 - v6) | v6) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = AssociatedTypeWitness;
    *a1 = *a2;
    v11 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
    *(v11 + 16) = *(v12 + 16);
    *(v11 + 24) = *(v12 + 24);
    *(v11 + 28) = *(v12 + 28);
    *(v11 + 32) = *(v12 + 32);
    *(v11 + 36) = *(v12 + 36);
    *(v11 + 40) = *(v12 + 40);
    *(v11 + 48) = *(v12 + 48);
    *(v11 + 56) = *(v12 + 56);
    *(v11 + 60) = *(v12 + 60);
    *(v11 + 64) = *(v12 + 64);
    *(v11 + 68) = *(v12 + 68);
    *(v11 + 72) = *(v12 + 72);
    *(v11 + 76) = *(v12 + 76);
    *(v11 + 80) = *(v12 + 80);
    *(v11 + 84) = *(v12 + 84);
    *(v11 + 88) = *(v12 + 88);
    v13 = ((v11 + 99) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v12 + 99) & 0xFFFFFFFFFFFFFFF8);
    v15 = *v14;
    *v13 = *v14;
    v16 = *(v5 + 16);

    v17 = v15;
    v16(v13 + 1, v14 + 1, v10);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for PlatformItemsGenerator(uint64_t a1)
{
  v1 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v2 = ((v1 + 99) & 0xFFFFFFFFFFFFFFF8);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (v2 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

_DWORD *initializeWithCopy for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v2 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v3 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v2 = *v3;
  *(v2 + 8) = *(v3 + 8);
  *(v2 + 16) = *(v3 + 16);
  *(v2 + 24) = *(v3 + 24);
  *(v2 + 28) = *(v3 + 28);
  *(v2 + 32) = *(v3 + 32);
  *(v2 + 36) = *(v3 + 36);
  *(v2 + 40) = *(v3 + 40);
  *(v2 + 48) = *(v3 + 48);
  *(v2 + 56) = *(v3 + 56);
  *(v2 + 60) = *(v3 + 60);
  *(v2 + 64) = *(v3 + 64);
  *(v2 + 68) = *(v3 + 68);
  *(v2 + 72) = *(v3 + 72);
  *(v2 + 76) = *(v3 + 76);
  *(v2 + 80) = *(v3 + 80);
  *(v2 + 84) = *(v3 + 84);
  *(v2 + 88) = *(v3 + 88);
  v4 = ((v2 + 99) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((v3 + 99) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 16);
  v10 = *(v8 + 80);

  v11 = v6;
  v9((v4 + v10 + 8) & ~v10, (v5 + v10 + 8) & ~v10, AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithCopy for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v4 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v3 = *v4;

  *(v3 + 8) = *(v4 + 8);
  *(v3 + 16) = *(v4 + 16);

  *(v3 + 24) = *(v4 + 24);
  *(v3 + 28) = *(v4 + 28);
  *(v3 + 32) = *(v4 + 32);
  *(v3 + 36) = *(v4 + 36);
  *(v3 + 40) = *(v4 + 40);

  *(v3 + 48) = *(v4 + 48);

  *(v3 + 56) = *(v4 + 56);
  *(v3 + 60) = *(v4 + 60);
  *(v3 + 64) = *(v4 + 64);
  *(v3 + 68) = *(v4 + 68);
  *(v3 + 72) = *(v4 + 72);
  *(v3 + 76) = *(v4 + 76);
  *(v3 + 80) = *(v4 + 80);
  *(v3 + 84) = *(v4 + 84);
  *(v3 + 88) = *(v4 + 88);
  v5 = ((v3 + 99) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v4 + 99) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *v5;
  *v5 = *v6;
  v9 = v7;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 24))((v5 + *(v11 + 80) + 8) & ~*(v11 + 80), (v6 + *(v11 + 80) + 8) & ~*(v11 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v4 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v4 + 48);
  v5 = *(v4 + 64);
  v7 = *(v4 + 32);
  *(v3 + 80) = *(v4 + 80);
  *(v3 + 48) = v6;
  *(v3 + 64) = v5;
  *(v3 + 32) = v7;
  v8 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 16) = v8;
  *(v3 + 84) = *(v4 + 84);
  *(v3 + 88) = *(v4 + 88);
  v9 = ((v3 + 99) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v4 + 99) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 32))((v9 + *(v12 + 80) + 8) & ~*(v12 + 80), (v10 + *(v12 + 80) + 8) & ~*(v12 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithTake for PlatformItemsGenerator(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v4 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v3 = *v4;

  *(v3 + 8) = *(v4 + 8);
  *(v3 + 16) = *(v4 + 16);

  *(v3 + 24) = *(v4 + 24);
  *(v3 + 28) = *(v4 + 28);
  *(v3 + 32) = *(v4 + 32);
  *(v3 + 36) = *(v4 + 36);
  *(v3 + 40) = *(v4 + 40);

  *(v3 + 48) = *(v4 + 48);

  *(v3 + 56) = *(v4 + 56);
  *(v3 + 60) = *(v4 + 60);
  *(v3 + 64) = *(v4 + 64);
  *(v3 + 68) = *(v4 + 68);
  *(v3 + 72) = *(v4 + 72);
  *(v3 + 76) = *(v4 + 76);
  *(v3 + 80) = *(v4 + 80);
  *(v3 + 84) = *(v4 + 84);
  *(v3 + 88) = *(v4 + 88);
  v5 = ((v3 + 99) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v4 + 99) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v5;
  *v5 = *v6;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 40))((v5 + *(v9 + 80) + 8) & ~*(v9 + 80), (v6 + *(v9 + 80) + 8) & ~*(v9 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsGenerator(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v8 + 112) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 48);

        return v18((((v16 + 99) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      }

      else
      {
        v17 = *(v16 + 16);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
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

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for PlatformItemsGenerator(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 112) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_46:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
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

  else if (v11)
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
  v17 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v18 = *(v6 + 56);

    v18((((v17 + 99) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v17 + 72) = 0;
    *(v17 + 56) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 80) = 0;
    *v17 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v17 + 16) = (a2 - 1);
  }
}

uint64_t specialized static PlatformItems.Key.reduce(value:nextValue:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  if (*a1)
  {
    a2(&v17);
    v7 = v18;
    v8 = v19;
    v9 = *(a1 + 8);
    if (v9 != -1 && v18 != 0)
    {
      if (v9)
      {
        v11 = v18 == -1;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = v19;
        v7 = merge32(_:_:)(*(a1 + 8), v18);
        v8 = v12;
      }

      *(a1 + 8) = v7;
    }

    return specialized Array.append<A>(contentsOf:)(v8);
  }

  else
  {
    v3 = *(a1 + 16);
    if (!*(v3 + 16))
    {
      a2(&v17);
      v13 = v17;
      v14 = v18;
      v15 = v19;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      return result;
    }

    outlined init with copy of PlatformItem(v3 + 32, &v17);
    v5 = PlatformItem.hasContent.getter();
    result = outlined destroy of PlatformItem(&v17);
    if (!v5)
    {
      (a2)(&v17, result);
      if (*(v19 + 16))
      {
        outlined init with copy of PlatformItem(v19 + 32, &v17);

        if (*(v3 + 16))
        {
          outlined init with copy of PlatformItem(v3 + 32, v16);
          PlatformItem.merge(_:)(&v17);
          outlined destroy of PlatformItem(&v17);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if (*(v3 + 16))
            {
LABEL_8:
              result = outlined assign with take of PlatformItem(v16, v3 + 32);
              *(a1 + 16) = v3;
              return result;
            }

            goto LABEL_25;
          }
        }

        else
        {
          __break(1u);
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v3 = result;
        if (*(result + 16))
        {
          goto LABEL_8;
        }

LABEL_25:
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in PlatformItemsGenerator.updateValue()()
{
  type metadata accessor for PlatformItemsGenerator();
  v0 = type metadata accessor for PlatformItemsGenerator();
  return PlatformItemsGenerator.makeContent()(v0);
}

unint64_t lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent()
{
  result = lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent;
  if (!lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent;
  if (!lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent()
{
  result = lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent;
  if (!lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent;
  if (!lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent);
  }

  return result;
}

void type metadata accessor for (())?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PlatformItemsTextRepresentable.PlatformItemContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 52))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemsTextRepresentable.PlatformItemContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PlatformItemsImageRepresentable.PlatformItemContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PlatformItemsImageRepresentable.PlatformItemContent and conformance PlatformItemsImageRepresentable.PlatformItemContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PlatformItemsTextRepresentable.PlatformItemContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PlatformItemsTextRepresentable.PlatformItemContent and conformance PlatformItemsTextRepresentable.PlatformItemContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule()
{
  result = lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule;
  if (!lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule;
  if (!lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule);
  }

  return result;
}

uint64_t _ContentShapeModifier.init(shape:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _ContentShapeModifier();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t ContentShapeResponder.hitTestPolicy(options:)@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  result = MultiViewResponder.hitTestPolicy(options:)(&v4);
  *a2 = v5 == 1;
  return result;
}

uint64_t ContentShapeResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a3;
  v19[0] = *a3;
  MultiViewResponder.hitTestPolicy(options:)(v19);
  if (LOBYTE(v18[0]) == 1)
  {
    swift_beginAccess();
    v9 = *(v4 + 40);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = v9;
  }

  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = HIDWORD(a2) & 1;
  if (byte_1ED53C51C == 1)
  {
    v13 = -1.0;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = -1.0;
  if (static Semantics.forced >= v11)
  {
LABEL_11:
    v17[0] = v8;
    MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | (v12 << 32), v17, v18);
    v13 = v18[1];
  }

LABEL_12:
  v18[3] = v8;
  swift_beginAccess();
  v14 = *(v4 + 40);
  swift_beginAccess();
  type metadata accessor for _ContentShapeModifier();
  v15 = type metadata accessor for ContentResponderHelper();

  ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(a1, a2 | (v12 << 32), v14, v15, a4);
  swift_endAccess();

  v16 = *(a4 + 1);
  if (v16 <= v13)
  {
    v16 = v13;
  }

  *(a4 + 1) = v16;
  return result;
}

uint64_t ContentShapeResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a2;
  swift_beginAccess();
  type metadata accessor for _ContentShapeModifier();
  v9 = type metadata accessor for ContentResponderHelper();
  ContentResponderHelper.addContentPath(to:kind:in:observer:)(a1, &v11, a3, a4, a5, v9);
  return swift_endAccess();
}

unint64_t ContentShapeResponder.descriptionName.getter()
{
  swift_beginAccess();
  _StringGuts.grow(_:)(35);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](2629694, 0xE300000000000000);
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](8745, 0xE200000000000000);
  return 0xD000000000000016;
}

uint64_t ContentShapeResponder.extendPrintTree(string:)()
{
  v1 = *v0;
  type metadata accessor for _ContentShapeModifier();
  v2 = type metadata accessor for ContentResponderHelper();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  v6 = v0 + *(v1 + 416);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = ContentResponderHelper.globalPosition.getter(v2);
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  *&v13[1] = v7;
  v13[2] = v9;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v14, v15);
}

uint64_t ContentShapeResponder.init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v5;
  v10[4] = *(a1 + 64);
  v11 = *(a1 + 80);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(v4 + 416);
  v8 = type metadata accessor for _ContentShapeModifier();
  ContentResponderHelper.init()(v8, &v2[v7]);
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v10, a2);
}

uint64_t ContentShapeResponder.__ivar_destroyer()
{
  v1 = *(*v0 + 416);
  type metadata accessor for _ContentShapeModifier();
  v2 = type metadata accessor for ContentResponderHelper();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t _ContentShapeModifier.contains(points:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  Shape.effectivePath(in:)(*(a3 + 16), *(a3 + 24), v9, a5);
  Path.contains(points:eoFill:origin:)(a1, a2, a4, 0.0, 0.0);
  return outlined destroy of Path(v9);
}

double _ContentShapeModifier.contentPath(size:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Shape.effectivePath(in:)(*(a1 + 16), *(a1 + 24), v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance _ContentShapeModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  _ContentShapeModifier.contentPath(size:)(a1, v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t type metadata completion function for ContentShapeResponder()
{
  type metadata accessor for _ContentShapeModifier();
  result = type metadata accessor for ContentResponderHelper();
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

uint64_t assignWithCopy for ContentShapeResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for ContentShapeResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for ContentShapeResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentShapeResponderFilter(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL compareEnumTags<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  v21 = a3;
  v10 = MEMORY[0x1E69E7410];
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in numericEnumTag<A>(of:), v20, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
  v12 = *(v5 + 8);
  v12(v8, a3);
  v13 = v17;
  (v9)(v8, a2, a3);
  v19 = a3;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, closure #1 in numericEnumTag<A>(of:)partial apply, v18, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v10, v14);
  v12(v8, a3);
  return v13 == v17;
}

uint64_t AGTypeID.projectEnum(at:tag:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  AGTypeProjectEnumData();
  a3(a1);

  return MEMORY[0x1EEDEECD8](a5, a2, a1);
}

uint64_t static AGGraphRef.cancelCurrentUpdateIfDeadlinePassed()()
{
  result = AGGraphHasDeadlinePassed();
  if (result)
  {
    v1 = result;
    AGGraphCancelUpdate();
    return v1;
  }

  return result;
}

uint64_t Attribute.toOptional.getter(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = type metadata accessor for Optional();
  v8 = type metadata accessor for ToOptional();
  WitnessTable = swift_getWitnessTable();
  v1 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v5, partial apply for closure #1 in Attribute.init<A>(_:), v6, v8, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);
  return v4;
}

uint64_t specialized closure #1 in PreferenceTransform.value.getter(void (*a1)(uint64_t), void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v50 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = one-time initialization token for _current;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(v20[2]);
  if (!v21)
  {
    v22 = v7;
    v23 = swift_slowAlloc();
    pthread_setspecific(v20[2], v23);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v20[3];
    outlined init with take of Any(&v55, v23);

    v21 = v23;
    v7 = v22;
  }

  outlined init with copy of Any(v21, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2);
    v24 = v19;
    *(v19 + 24) = a2;
    goto LABEL_9;
  }

  v45 = v12;
  v46 = v7;
  v47 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = a2;
  v27 = v53;
  (*(v53 + 56))(v18, 1, 1, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  v50(v49);
  v30 = v27;
  *(StatusReg + 848) = v29;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15);
  v31 = (*(v27 + 48))(v15, 1, v5);
  v52 = v26;
  if (v31 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18);
    v18 = v15;
    goto LABEL_12;
  }

  v20 = v45;
  v50 = *(v27 + 32);
  (v50)(v45, v15, v5);
  (*(v27 + 16))(v51, v20, v5);
  a2 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = a2;
  v19 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = a2[2];
  v33 = a2[3];
  if (v34 >= v33 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, a2);
  }

  a2[2] = v34 + 1;
  v35 = v53;
  (v50)(a2 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v53 + 72) * v34, v51, v5);
  *(v24 + 24) = a2;
  v30 = v35;
  (*(v35 + 8))(v20, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18);
  v36 = *(v24 + 24);
  v37 = *(v36 + 2);
  if (v37)
  {
    v39 = *(v30 + 16);
    v38 = v30 + 16;
    v53 = v39;
    v40 = &v36[(*(v38 + 64) + 32) & ~*(v38 + 64)];
    v41 = *(v38 + 56);
    v51 = v36;

    v42 = v47;
    v43 = v46;
    do
    {
      (v53)(v43, v40, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v43);
      (*(v38 - 8))(v43, v5);
      v40 += v41;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v48;
}

{
  v49 = a4;
  v50 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = one-time initialization token for _current;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(v20[2]);
  if (!v21)
  {
    v22 = v7;
    v23 = swift_slowAlloc();
    pthread_setspecific(v20[2], v23);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v20[3];
    outlined init with take of Any(&v55, v23);

    v21 = v23;
    v7 = v22;
  }

  outlined init with copy of Any(v21, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2);
    v24 = v19;
    *(v19 + 24) = a2;
    goto LABEL_9;
  }

  v45 = v12;
  v46 = v7;
  v47 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = a2;
  v27 = v53;
  (*(v53 + 56))(v18, 1, 1, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  v50(v49);
  v30 = v27;
  *(StatusReg + 848) = v29;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15);
  v31 = (*(v27 + 48))(v15, 1, v5);
  v52 = v26;
  if (v31 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18);
    v18 = v15;
    goto LABEL_12;
  }

  v20 = v45;
  v50 = *(v27 + 32);
  (v50)(v45, v15, v5);
  (*(v27 + 16))(v51, v20, v5);
  a2 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = a2;
  v19 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = a2[2];
  v33 = a2[3];
  if (v34 >= v33 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, a2);
  }

  a2[2] = v34 + 1;
  v35 = v53;
  (v50)(a2 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v53 + 72) * v34, v51, v5);
  *(v24 + 24) = a2;
  v30 = v35;
  (*(v35 + 8))(v20, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18);
  v36 = *(v24 + 24);
  v37 = *(v36 + 2);
  if (v37)
  {
    v39 = *(v30 + 16);
    v38 = v30 + 16;
    v53 = v39;
    v40 = &v36[(*(v38 + 64) + 32) & ~*(v38 + 64)];
    v41 = *(v38 + 56);
    v51 = v36;

    v42 = v47;
    v43 = v46;
    do
    {
      (v53)(v43, v40, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v43);
      (*(v38 - 8))(v43, v5);
      v40 += v41;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v48;
}

uint64_t numericEnumTag<A>(of:)(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  v11 = a2;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, closure #1 in numericEnumTag<A>(of:)partial apply, v10, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v7);
  (*(v3 + 8))(v6, a2);
  return v9[1];
}

uint64_t DefaultRule.weakValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v8 = *(AssociatedTypeWitness - 8);
    (*(v8 + 16))(a1, WeakValue, AssociatedTypeWitness);
    v4 = v8;
    v5 = 0;
  }

  else
  {
    v4 = *(AssociatedTypeWitness - 8);
    v5 = 1;
  }

  v6 = *(v4 + 56);

  return v6(a1, v5, 1, AssociatedTypeWitness);
}

uint64_t static DefaultRule.initialValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t DefaultRule.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  v14[1] = *v2;
  DefaultRule.weakValue.getter(v14 - v9);
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v11 + 32))(a2, v10, AssociatedTypeWitness);
  }

  (*(v4 + 16))(v5, v4);
  result = (v12)(v10, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance DefaultRule<A>(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  static DefaultRule.initialValue.getter(v3, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v14);
  v16[-2] = a2;
  v16[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in static Rule._updateDefault(_:), &v16[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

Swift::Bool __swiftcall Attribute.invalidateValueIfNeeded()()
{
  ValueState = AGGraphGetValueState();
  if ((ValueState & 1) == 0)
  {
    AGGraphInvalidateValue();
  }

  return (ValueState & 1) == 0;
}

Swift::Bool __swiftcall WeakAttribute.allowsAsyncUpdate()()
{
  v1 = v0;
  Attribute = AGWeakAttributeGetAttribute();
  v3 = Attribute == *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  v9 = v4;
  v5 = v3;
  v10 = v5;
  v8[2] = v1;
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in WeakAttribute.allowsAsyncUpdate(), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v6, &v11);
  return v11 & 1;
}

uint64_t partial apply for closure #1 in numericEnumTag<A>(of:)@<X0>(uint64_t *a1@<X8>)
{
  result = AGTypeGetEnumTag();
  *a1 = result;
  return result;
}

uint64_t ToOptional.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v7 = *(a1 - 8);
  (*(v7 + 16))(a2, Value, a1);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, a1);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ToOptional<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static AGGraphRef.startTracing(options:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0 && one-time initialization token for tracingOptions != -1)
  {
    swift_once();
  }

  return AGGraphStartTracing();
}

uint64_t specialized DefaultRule.description.getter()
{
  swift_getAssociatedTypeWitness();
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return 547916002;
}

uint64_t partial apply for closure #1 in Attribute.overrideDefaultValue<A>(_:type:)(uint64_t *a1)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in WeakAttribute.allowsAsyncUpdate()@<X0>(BOOL *a1@<X8>)
{
  result = AGGraphGetValueState();
  *a1 = (~result & 0x11) != 0;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DefaultRule<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TreeElementFlags and conformance TreeElementFlags()
{
  result = lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags;
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags;
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags;
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags;
  if (!lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeElementFlags and conformance TreeElementFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TreeValueFlags and conformance TreeValueFlags()
{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ToOptional<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for specialized closure #1 in PreferenceTransform.value.getter(uint64_t *a1)
{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, a1[1], *(v1 + 16), *(v1 + 24), specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
}

{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, a1[1], *(v1 + 16), *(v1 + 24), specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
}

{
  return specialized closure #1 in PreferenceTransform.value.getter(*a1, a1[1], *(v1 + 16), *(v1 + 24), specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
}

Swift::Int TouchType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int one-time initialization function for allTypes()
{
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9TouchTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for allTypes);
  static TouchType.allTypes = result;
  return result;
}

uint64_t static TouchType.allTypes.getter()
{
  if (one-time initialization token for allTypes != -1)
  {
    swift_once();
  }
}

uint64_t SelectionRanges.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RangeSet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for SelectionRanges();

  return swift_storeEnumTagMultiPayload();
}

uint64_t SelectionRanges.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v11);
  RangeSet.init<A>(_:)(v13, a2, a3, a4, a5);
  (*(v10 + 8))(a1, a3);
  type metadata accessor for SelectionRanges();
  return swift_storeEnumTagMultiPayload();
}

uint64_t SelectionRanges.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = type metadata accessor for Range();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    v20 = *(v9 + 8);
    v20(v11, v8);
    static SelectionRanges.none.getter(v24);
    return (v20)(a1, v8);
  }

  else
  {
    v23 = a3;
    v22 = v24;
    (*(v12 + 32))(v19, v11, v7);
    if (Range.isEmpty.getter())
    {
      (*(v9 + 8))(a1, v8);
      (*(*(a2 - 8) + 16))(v22, v19, a2);
    }

    else
    {
      (*(v12 + 16))(v15, v19, v7);
      RangeSet.init(_:)();
      (*(v9 + 8))(a1, v8);
    }

    (*(v12 + 8))(v19, v7);
    type metadata accessor for SelectionRanges();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t static SelectionRanges.none.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RangeSet();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  RangeSet.init()();
  return SelectionRanges.init(_:)(v4, a1);
}

uint64_t SelectionRanges.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for SelectionRanges();

  return swift_storeEnumTagMultiPayload();
}

uint64_t SelectionRanges.union.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v94 = type metadata accessor for RangeSet.Ranges();
  v88 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v75 - v7;
  v8 = type metadata accessor for Range();
  v97 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v75 - v11;
  v12 = type metadata accessor for Optional();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v75 - v17;
  v18 = type metadata accessor for RangeSet();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v75 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = *(TupleTypeMetadata2 - 8);
  v92 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v75 - v25;
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v96, a1, v31);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v79 = v8;
    v44 = *(v26 + 32);
    v44(v29, v33, v3);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v46 = v93;
      (*(v26 + 16))(v93, v29, v3);
      v47 = v92;
      v44(&v46[*(v92 + 48)], v29, v3);
      v48 = v90;
      v49 = v91;
      (*(v91 + 16))(v90, v46, v47);
      v50 = v95;
      v51 = v44;
      v96 = v44;
      v52 = *(v47 + 48);
      v51(v95, v48, v3);
      v53 = *(v26 + 8);
      v53(&v48[v52], v3);
      (*(v49 + 32))(v48, v46, v47);
      v54 = v79;
      (v96)(v50 + *(v79 + 36), &v48[*(v47 + 48)], v3);
      v53(v48, v3);
      return (*(v97 + 56))(v50, 0, 1, v54);
    }

    __break(1u);
    goto LABEL_14;
  }

  v76 = v3;
  v75 = v26;
  v77 = v4;
  v78 = v19;
  (*(v19 + 32))(v21, v33, v18);
  v35 = v87;
  RangeSet.ranges.getter();
  v36 = v94;
  swift_getWitnessTable();
  v37 = v86;
  Collection.first.getter();
  v96 = v18;
  v38 = *(v88 + 1);
  v38(v35, v36);
  v39 = v97;
  v40 = *(v97 + 48);
  v41 = v21;
  if (v40(v37, 1, v8) != 1)
  {
    v87 = *(v39 + 32);
    (v87)(v89, v37, v8);
    v55 = v82;
    RangeSet.ranges.getter();
    v56 = v94;
    swift_getWitnessTable();
    v88 = v21;
    v37 = v81;
    BidirectionalCollection.last.getter();
    v38(v55, v56);
    if (v40(v37, 1, v8) == 1)
    {
      v41 = v88;
      v42 = v96;
      v43 = v97;
      (*(v97 + 8))(v89, v8);
      goto LABEL_8;
    }

    v43 = v97;
    (v87)(v80, v37, v8);
    v94 = *(v8 + 36);
    v62 = v89;
    v63 = v8;
    v64 = v76;
    v65 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = (*(v78 + 8))(v88, v96);
    if (v65)
    {
      v66 = v75;
      v96 = *(v75 + 16);
      v67 = v93;
      (v96)(v93, v62, v64);
      v68 = *(v43 + 8);
      v79 = v63;
      v68(v62, v63);
      v69 = v92;
      v70 = v80;
      (v96)(&v67[*(v92 + 48)], &v80[v94], v64);
      v68(v70, v63);
      v71 = v90;
      v72 = v91;
      (*(v91 + 16))(v90, v67, v69);
      v96 = *(v69 + 48);
      v73 = *(v66 + 32);
      v61 = v83;
      v73(v83, v71, v64);
      v74 = *(v66 + 8);
      v74(&v71[v96], v64);
      (*(v72 + 32))(v71, v93, v69);
      v8 = v79;
      v73(&v61[*(v79 + 36)], &v71[*(v69 + 48)], v64);
      v74(v71, v64);
      v60 = 0;
      v57 = v95;
      v59 = v84;
      v58 = v85;
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v42 = v96;
  v43 = v39;
LABEL_8:
  v57 = v95;
  (*(v78 + 8))(v41, v42);
  v59 = v84;
  v58 = v85;
  (*(v84 + 8))(v37, v85);
  v60 = 1;
  v61 = v83;
LABEL_11:
  (*(v43 + 56))(v61, v60, 1, v8);
  return (*(v59 + 32))(v57, v61, v58);
}

uint64_t closure #1 in SelectionRanges.isSafe<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = v9;
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v14[3] = a1;
  v10 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v11 = *(v6 + 8);
  v11(v8, a3);
  if (v10)
  {
    type metadata accessor for Range();
    v14[0] = v3;
    dispatch thunk of Collection.endIndex.getter();
    v12 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v11(v8, a3);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t static SelectionRanges.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v42 = a2;
  v6 = type metadata accessor for RangeSet();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - v7;
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a4;
  v10 = type metadata accessor for SelectionRanges();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v33 - v19;
  v22 = *(v21 + 48);
  v23 = *(v11 + 16);
  v23(&v33 - v19, v41, v10, v18);
  (v23)(&v20[v22], v42, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v23)(v16, v20, v10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v37;
      v30 = v34;
      (*(v37 + 32))(v34, &v20[v22], a3);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v29 + 8);
      v31(v30, a3);
      v31(v16, a3);
      goto LABEL_9;
    }

    (*(v37 + 8))(v16, a3);
    goto LABEL_7;
  }

  (v23)(v13, v20, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v38 + 8))(v13, v39);
LABEL_7:
    v27 = 0;
    v11 = v36;
    v10 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v25 = v38;
  v24 = v39;
  v26 = v35;
  (*(v38 + 32))(v35, &v20[v22], v39);
  v27 = static RangeSet.== infix(_:_:)();
  v28 = *(v25 + 8);
  v28(v26, v24);
  v28(v13, v24);
LABEL_9:
  (*(v11 + 8))(v20, v10);
  return v27 & 1;
}

uint64_t SelectionRanges<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for RangeSet();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v17, v6);
    MEMORY[0x193AC11A0](1);
    v20[1] = v20[0];
    swift_getWitnessTable();
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v5);
    MEMORY[0x193AC11A0](0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v10 + 8))(v13, v5);
  }
}

Swift::Int SelectionRanges<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SelectionRanges<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> SelectionRanges<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  SelectionRanges<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

unint64_t SelectionRanges.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for RangeSet.Ranges();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for RangeSet();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v2, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v33;
    v21 = v34;
    (*(v33 + 32))(v11, v19, v34);
    v23 = RangeSet.ranges.getter();
    MEMORY[0x1EEE9AC00](v23);
    *(&v32 - 2) = v4;
    *(&v32 - 1) = v5;
    WitnessTable = swift_getWitnessTable();
    v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SelectionRanges.debugDescription.getter, (&v32 - 4), v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);
    (*(v32 + 8))(v8, v6);
    v35 = v26;
    type metadata accessor for [String]();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], type metadata accessor for [String]);
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v35 = 0xD000000000000019;
    v36 = 0x800000018DD7E9C0;
    MEMORY[0x193ABEDD0](v27, v29);

    MEMORY[0x193ABEDD0](10589, 0xE200000000000000);
    v30 = v35;
    (*(v22 + 8))(v11, v21);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v4);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    MEMORY[0x193ABEDD0](0xD000000000000020, 0x800000018DD7E9E0);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v30 = v35;
    (*(v12 + 8))(v15, v4);
  }

  return v30;
}

uint64_t closure #1 in SelectionRanges.debugDescription.getter@<X0>(void *a1@<X8>)
{
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  type metadata accessor for Range();
  result = DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t static SelectionRanges.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = (*a1 ^ 1) & *a2;
  if (*(a2 + 8))
  {
    v3 = 1;
  }

  if (*(a1 + 8))
  {
    v3 = v2;
  }

  return v3 & 1;
}

uint64_t static SelectionRanges.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 8))
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v3 = v2;
  }

  return v3 & 1;
}

uint64_t SelectionRanges.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = type metadata accessor for RangeSet.Ranges();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for RangeSet();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *(a1 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v3, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 32))(v12, v17, v9);
    RangeSet.ranges.getter();
    v19 = RangeSet.Ranges.startIndex.getter();
    (*(v6 + 8))(v8, v5);
    result = (*(v10 + 8))(v12, v9);
  }

  else
  {
    result = (*(v13 + 8))(v17, a1);
    v19 = 0;
  }

  v21 = v23;
  *v23 = v19;
  *(v21 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t SelectionRanges.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = type metadata accessor for RangeSet.Ranges();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for RangeSet();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *(a1 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v3, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 32))(v12, v17, v9);
    RangeSet.ranges.getter();
    v19 = RangeSet.Ranges.count.getter();
    (*(v6 + 8))(v8, v5);
    result = (*(v10 + 8))(v12, v9);
  }

  else
  {
    result = (*(v13 + 8))(v17, a1);
    v19 = 1;
  }

  v21 = v23;
  *v23 = v19;
  *(v21 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t specialized SelectionRanges.index(after:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v33 = a2;
  v32 = a3;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 56)];
  v29 = v4;
  outlined init with copy of SelectionRanges<String.Index>(v4, v18);
  v21 = a1;
  *v20 = a1;
  LOBYTE(a1) = v33;
  v20[8] = v33 & 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of SelectionRanges<String.Index>(v18, v15);
    if ((a1 & 1) == 0)
    {
      (*(v30 + 8))(v15, v10);
      goto LABEL_11;
    }

    v24 = v30;
    (*(v30 + 32))(v12, v15, v10);
    RangeSet.ranges.getter();
    v25 = v21;
    v35 = v21;
    v21 = lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v37 = v34;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*(v31 + 8))(v8, v6);
    (*(v24 + 8))(v12, v10);
    v26 = __OFADD__(v25, 1);
    a1 = v25 + 1;
    if (!v26)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((a1 & 1) == 0 && (v21 & 1) == 0)
  {
    a1 = 1;
LABEL_9:
    result = outlined destroy of SelectionRanges<String.Index>(v18);
    v28 = v32;
    *v32 = a1;
    *(v28 + 8) = EnumCaseMultiPayload == 1;
    return result;
  }

LABEL_11:
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v35 = v21;
  v36 = a1 & 1;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v33 = a2;
  v32 = a3;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  type metadata accessor for SelectionRanges<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 56)];
  v29 = v4;
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v4, v18, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v21 = a1;
  *v20 = a1;
  LOBYTE(a1) = v33;
  v20[8] = v33 & 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v18, v15, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if ((a1 & 1) == 0)
    {
      (*(v30 + 8))(v15, v10);
      goto LABEL_11;
    }

    v24 = v30;
    (*(v30 + 32))(v12, v15, v10);
    RangeSet.ranges.getter();
    v25 = v21;
    v35 = v21;
    v21 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v37 = v34;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*(v31 + 8))(v8, v6);
    (*(v24 + 8))(v12, v10);
    v26 = __OFADD__(v25, 1);
    a1 = v25 + 1;
    if (!v26)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((a1 & 1) == 0 && (v21 & 1) == 0)
  {
    a1 = 1;
LABEL_9:
    result = _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v18, type metadata accessor for SelectionRanges<AttributedString.Index>);
    v28 = v32;
    *v32 = a1;
    *(v28 + 8) = EnumCaseMultiPayload == 1;
    return result;
  }

LABEL_11:
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v35 = v21;
  v36 = a1 & 1;
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SelectionRanges.index(after:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v42 = a3;
  v7 = type metadata accessor for RangeSet.Ranges();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = v34 - v8;
  v9 = type metadata accessor for RangeSet();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = v34 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = type metadata accessor for SelectionRanges.Index();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v18 = v34 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v22 = v34 + *(v21 + 56) - v17;
  v23 = *(v11 + 16);
  v34[1] = v4;
  v23(v34 - v17, v4, a2, v16);
  v41 = v19;
  *v22 = v19;
  v22[8] = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (v23)(v14, v18, a2);
    if (v20)
    {
      v26 = v37;
      v25 = v38;
      v27 = v35;
      (*(v37 + 32))(v35, v14, v38);
      v28 = v36;
      RangeSet.ranges.getter();
      v29 = v40;
      v43 = v41;
      swift_getWitnessTable();
      RandomAccessCollection<>.index(after:)();
      (*(v39 + 8))(v28, v29);
      (*(v26 + 8))(v27, v25);
      v30 = v45;
LABEL_7:
      result = (*(v11 + 8))(v18, a2);
      v33 = v42;
      *v42 = v30;
      *(v33 + 8) = EnumCaseMultiPayload == 1;
      return result;
    }

    (*(v37 + 8))(v14, v38);
    v31 = v41;
  }

  else
  {
    v31 = v41;
    if ((v20 & 1) == 0 && (v41 & 1) == 0)
    {
      v30 = 1;
      goto LABEL_7;
    }
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v43 = v31;
  v44 = v20;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SelectionRanges.index(before:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v42 = a3;
  v7 = type metadata accessor for RangeSet.Ranges();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = v34 - v8;
  v9 = type metadata accessor for RangeSet();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = v34 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = type metadata accessor for SelectionRanges.Index();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v18 = v34 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v22 = v34 + *(v21 + 56) - v17;
  v23 = *(v11 + 16);
  v34[1] = v4;
  v23(v34 - v17, v4, a2, v16);
  v41 = v19;
  *v22 = v19;
  v22[8] = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (v23)(v14, v18, a2);
    if (v20)
    {
      v26 = v37;
      v25 = v38;
      v27 = v35;
      (*(v37 + 32))(v35, v14, v38);
      v28 = v36;
      RangeSet.ranges.getter();
      v29 = v40;
      v43 = v41;
      swift_getWitnessTable();
      RandomAccessCollection<>.index(before:)();
      (*(v39 + 8))(v28, v29);
      (*(v26 + 8))(v27, v25);
      v30 = v45;
LABEL_7:
      result = (*(v11 + 8))(v18, a2);
      v33 = v42;
      *v42 = v30;
      *(v33 + 8) = EnumCaseMultiPayload == 1;
      return result;
    }

    (*(v37 + 8))(v14, v38);
    v31 = v41;
  }

  else
  {
    v31 = v41;
    if (v20 & 1) == 0 && (v41)
    {
      v30 = 0;
      goto LABEL_7;
    }
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v43 = v31;
  v44 = v20;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized SelectionRanges.subscript.getter(uint64_t a1, char a2)
{
  v3 = v2;
  v32 = a1;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v28 - v16);
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v20[*(v21 + 56)];
  v28[1] = v3;
  v23 = v3;
  v24 = v32;
  outlined init with copy of SelectionRanges<String.Index>(v23, v20);
  *v22 = v24;
  v22[8] = a2 & 1;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of SelectionRanges<String.Index>(v20, v14);
    if (a2)
    {
      v25 = v29;
      (*(v29 + 32))(v11, v14, v9);
      RangeSet.ranges.getter();
      v26 = v31;
      RangeSet.Ranges.subscript.getter();
      (*(v30 + 8))(v7, v26);
      (*(v25 + 8))(v11, v9);
LABEL_7:
      outlined destroy of SelectionRanges<String.Index>(v20);
      return v35;
    }

    (*(v29 + 8))(v14, v9);
  }

  else
  {
    outlined init with copy of SelectionRanges<String.Index>(v20, v17);
    if ((a2 & 1) == 0 && (v24 & 1) == 0)
    {
      v35 = *v17;
      v36 = v35;
      goto LABEL_7;
    }
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v33 = v24;
  v34 = a2 & 1;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized SelectionRanges.subscript.getter@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v61 = a1;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v56 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v50 - v10;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v52 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = v50 - v15;
  v16 = type metadata accessor for AttributedString.Index();
  v59 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SelectionRanges<AttributedString.Index>(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v50 - v24;
  type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &v28[*(v29 + 56)];
  v50[2] = v4;
  v31 = v4;
  v32 = v61;
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v31, v28, type metadata accessor for SelectionRanges<AttributedString.Index>);
  *v30 = v32;
  v30[8] = a2 & 1;
  v50[1] = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v28, v22, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if (a2)
    {
      v34 = v54;
      v33 = v55;
      (*(v54 + 32))(v11, v22, v55);
      v35 = v56;
      RangeSet.ranges.getter();
      v36 = v57;
      RangeSet.Ranges.subscript.getter();
      (*(v58 + 8))(v35, v36);
      (*(v34 + 8))(v11, v33);
      return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v28, type metadata accessor for SelectionRanges<AttributedString.Index>);
    }

    v49 = a2;
    v16 = v55;
    v59 = v54;
    v25 = v22;
  }

  else
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v28, v25, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if ((a2 & 1) == 0 && (v32 & 1) == 0)
    {
      v32 = v59;
      v37 = *(v59 + 32);
      v37(v18, v25, v16);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v38 = v51;
        v32[2](v51, v18, v16);
        v39 = v53;
        v37((v38 + *(v53 + 48)), v18, v16);
        v40 = v37;
        v61 = v37;
        v41 = v52;
        _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v38, v52, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v42 = v32;
        v43 = *(v39 + 48);
        v44 = v60;
        v40(v60, v41, v16);
        v45 = v42[1];
        (v45)(v41 + v43, v16);
        outlined init with take of SelectionRanges<AttributedString.Index>(v38, v41, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v46 = *(v39 + 48);
        type metadata accessor for Range<AttributedString.Index>();
        (v61)(v44 + *(v47 + 36), v41 + v46, v16);
        (v45)(v41, v16);
        return _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v28, type metadata accessor for SelectionRanges<AttributedString.Index>);
      }

      __break(1u);
    }

    v49 = a2;
  }

  (*(v59 + 8))(v25, v16);
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v62 = v32;
  v63 = v49 & 1;
  _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SelectionRanges.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v69 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for RangeSet.Ranges();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = v52 - v8;
  v61 = type metadata accessor for RangeSet();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v52 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v55 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v56 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = v52 - v13;
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  v66 = v5;
  v52[1] = type metadata accessor for SelectionRanges.Index();
  v23 = swift_getTupleTypeMetadata2();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v52 - v25;
  v27 = *a1;
  LODWORD(v28) = *(a1 + 8);
  v30 = v52 + *(v29 + 56) - v25;
  v65 = v17;
  v31 = *(v17 + 16);
  v31(v52 - v25, v68, a2, v24);
  v67 = v27;
  *v30 = v27;
  v30[8] = v28;
  v32 = a2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v57;
    (v31)(v57, v26, a2);
    if (v28)
    {
      v35 = v58;
      v34 = v59;
      v36 = v61;
      (*(v59 + 32))(v58, v33, v61);
      v37 = v60;
      RangeSet.ranges.getter();
      v38 = v63;
      RangeSet.Ranges.subscript.getter();
      (*(v62 + 8))(v37, v38);
      (*(v34 + 8))(v35, v36);
      return (*(v65 + 8))(v26, v32);
    }

    v64 = v59;
    v6 = v61;
    v51 = v33;
  }

  else
  {
    (v31)(v22, v26, a2);
    v39 = v22;
    if ((v28 & 1) == 0)
    {
      v40 = v64;
      if ((v67 & 1) == 0)
      {
        v28 = *(v64 + 32);
        v28(v16, v22, v6);
        if (dispatch thunk of static Comparable.<= infix(_:_:)())
        {
          v41 = v53;
          (*(v40 + 16))(v53, v16, v6);
          v42 = v55;
          v28(&v41[*(v55 + 48)], v16, v6);
          v43 = v54;
          v44 = *(v54 + 16);
          v68 = v32;
          v45 = v56;
          v44(v56, v41, v42);
          v63 = *(v42 + 48);
          v67 = v28;
          v28(v69, v45, v6);
          v46 = *(v40 + 8);
          v46(&v45[v63], v6);
          (*(v43 + 32))(v45, v41, v42);
          v47 = *(v42 + 48);
          v48 = type metadata accessor for Range();
          v67(&v69[*(v48 + 36)], &v45[v47], v6);
          v49 = v45;
          v32 = v68;
          v46(v49, v6);
          return (*(v65 + 8))(v26, v32);
        }

        __break(1u);
      }
    }

    v51 = v39;
  }

  (*(v64 + 8))(v51, v6);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v70 = v67;
  v71 = v28;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance SelectionRanges<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
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
  v6[4] = SelectionRanges.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*SelectionRanges.subscript.read(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = type metadata accessor for Range();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  v9 = *(a2 + 8);
  v11 = *a2;
  v12 = v9;
  SelectionRanges.subscript.getter(&v11, a3, v8);
  return ArrayWith2Inline.subscript.read;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance SelectionRanges<A>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance SelectionRanges<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance SelectionRanges<A>()
{
  swift_getWitnessTable();

  JUMPOUT(0x193ABE9B0);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance SelectionRanges<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return a4(&v6);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance SelectionRanges<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = type metadata accessor for IndexingIterator();
  SelectionRanges.startIndex.getter(a1, (a2 + *(v5 + 36)));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance SelectionRanges<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SelectionRanges<A>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X3>, uint64_t a3@<X4>, unint64_t *a4@<X8>)
{
  type metadata accessor for _NSRange(0);
  v10 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(specialized implicit closure #1 in SelectionRanges<>.init<A>(_:in:), 0, a2, v8, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v9);
  _s7SwiftUI15SelectionRangesOAASS5IndexVRszrlE_2inACyAEGqd___SStcSTRd__So8_NSRangeV7ElementRtd__lufCSayAIG_Tt2g5(v10, a4);
  v11 = *(*(a2 - 1) + 8);

  return v11(a1, a2);
}

id specialized implicit closure #1 in SelectionRanges<>.init<A>(_:in:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rangeValue];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t _s7SwiftUI15SelectionRangesOAASS5IndexVRszrlE_2inACyAEGqd___SStcSTRd__So8_NSRangeV7ElementRtd__lufCSayAIG_Tt2g5@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = Range<>.init(_:in:)();
      if ((v8 & 1) == 0)
      {
        v9 = v6;
        v10 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v5 = &v4[16 * v12];
        *(v5 + 4) = v9;
        *(v5 + 5) = v10;
      }

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (*(v4 + 2) == 1 && (v13 = *(v4 + 4), (*(v4 + 5) ^ v13) < 0x4000))
  {

    *a2 = v13;
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  else
  {
    _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(v4);
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unint64_t *a3@<X8>)
{
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E66A8]);
  v6 = Sequence.compactMap<A>(_:)();

  if (v6[2] != 1 || (v7 = v6[4], (v6[5] ^ v7) >> 14))
  {
    _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(v6);
    (*(*(a2 - 8) + 8))(a1, a2);
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  else
  {
    (*(*(a2 - 8) + 8))(a1, a2);

    *a3 = v7;
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t partial apply for closure #1 in SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a1@<X8>)
{
  result = Range<>.init(_:in:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t SelectionRanges<>.init<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  type metadata accessor for Range<AttributedString.Index>();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SelectionRanges<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2;
  v14 = Sequence.compactMap<A>(_:)();
  if (*(v14 + 16) != 1)
  {
    goto LABEL_5;
  }

  v15 = v14;
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v10, type metadata accessor for Range<AttributedString.Index>);
  v16 = type metadata accessor for AttributedString.Index();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v10, type metadata accessor for Range<AttributedString.Index>);
    v14 = v15;
LABEL_5:
    _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufC10Foundation16AttributedStringV5IndexV_SaySnyALGGTt1g5(v14);
    (*(*(a3 - 8) + 8))(a1, a3);
    goto LABEL_6;
  }

  (*(*(a3 - 8) + 8))(a1, a3);

  (*(*(v16 - 8) + 16))(v13, v10, v16);
  _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(v10, type metadata accessor for Range<AttributedString.Index>);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  outlined init with take of SelectionRanges<AttributedString.Index>(v13, v20, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v17 = type metadata accessor for AttributedString();
  return (*(*(v17 - 8) + 8))(a2, v17);
}

void _sSny10Foundation16AttributedStringV5IndexVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t closure #1 in SelectionRanges<>.init<A>(_:in:)(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*a1 rangeValue];
  (*(v5 + 16))(v8, a2, v4);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  return Range<>.init<A>(_:in:)();
}

uint64_t Array<A>.init(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = specialized Collection.count.getter();
  if (v16)
  {
    v17 = v16;
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    outlined init with copy of SelectionRanges<String.Index>(a1, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 32))(v12, v15, v9);
      RangeSet.ranges.getter();
      v19 = v30;
      v20 = RangeSet.Ranges.startIndex.getter();
      (*(v29 + 8))(v7, v19);
      result = (*(v10 + 8))(v12, v9);
    }

    else
    {
      result = outlined destroy of SelectionRanges<String.Index>(v15);
      v20 = 0;
    }

    v36 = v20;
    v37 = EnumCaseMultiPayload == 1;
    if (v17 < 0)
    {
      __break(1u);
    }

    else
    {
      v22 = objc_opt_self();
      v23 = v31;
      do
      {
        v34 = specialized SelectionRanges.subscript.getter(v36, v37);
        v35 = v24;
        v32 = v23;
        v33 = a3;
        v25 = MEMORY[0x1E69E66A8];
        type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E66A8]);
        lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &lazy cache variable for type metadata for Range<String.Index>, v25);
        lazy protocol witness table accessor for type String and conformance String();

        v26 = _NSRange.init<A, B>(_:in:)();
        v28 = [v22 valueWithRange_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        specialized SelectionRanges.index(after:)(v36, v37, &v36);
        --v17;
      }

      while (v17);
      outlined destroy of SelectionRanges<String.Index>(a1);

      return v38;
    }
  }

  else
  {

    outlined destroy of SelectionRanges<String.Index>(a1);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

{
  v64 = a2;
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v58 = v8;
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v9;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v60 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v52 - v12;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v52 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = specialized Collection.count.getter();
  if (!v22)
  {

    outlined destroy of SelectionRanges<String.Index>(a1);
    return MEMORY[0x1E69E7CC0];
  }

  v23 = v22;
  v53 = v11;
  v72 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
  v24 = v72;
  v65 = a1;
  outlined init with copy of SelectionRanges<String.Index>(a1, v21);
  LODWORD(v55) = swift_getEnumCaseMultiPayload();
  v25 = v55 == 1;
  v61 = v14;
  if (v55 == 1)
  {
    v26 = v53;
    (*(v53 + 32))(v59, v21, v60);
    v54 = v18;
    v27 = v57;
    RangeSet.ranges.getter();
    v28 = v58;
    v30 = RangeSet.Ranges.startIndex.getter();
    v31 = v56;
    v29 = v27;
    v18 = v54;
    v56[1](v29, v28);
    (*(v26 + 8))(v59, v60);
  }

  else
  {
    outlined destroy of SelectionRanges<String.Index>(v21);
    v30 = 0;
    v31 = v56;
  }

  v70 = v30;
  v71 = v55 == 1;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v54 = v31 + 1;
    v55 = (v53 + 32);
    v56 = (v53 + 8);
    for (i = v23 - 1; ; --i)
    {
      v33 = &v7[*(v63 + 48)];
      outlined init with copy of SelectionRanges<String.Index>(v65, v7);
      *v33 = v30;
      v33[8] = v25;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v24;
        v35 = i;
        v36 = v18;
        v37 = a3;
        v38 = v7;
        outlined init with copy of SelectionRanges<String.Index>(v7, v62);
        if (!v25)
        {
          goto LABEL_21;
        }

        v40 = v59;
        v39 = v60;
        (*v55)(v59, v62, v60);
        v41 = v57;
        RangeSet.ranges.getter();
        v42 = v58;
        RangeSet.Ranges.subscript.getter();
        (*v54)(v41, v42);
        (*v56)(v40, v39);
        a3 = v37;
        v7 = v38;
        v18 = v36;
        i = v35;
        v24 = v34;
      }

      else
      {
        outlined init with copy of SelectionRanges<String.Index>(v7, v18);
        if (v25 || (v30 & 1) != 0)
        {
          goto LABEL_22;
        }

        v68 = *v18;
        v69 = v68;
      }

      outlined destroy of SelectionRanges<String.Index>(v7);
      v66 = v64;
      v67 = a3;
      v43 = MEMORY[0x1E69E66A8];
      type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E66A8]);
      lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &lazy cache variable for type metadata for Range<String.Index>, v43);
      lazy protocol witness table accessor for type String and conformance String();

      v44 = _NSRange.init<A, B>(_:in:)();
      v72 = v24;
      v47 = *(v24 + 16);
      v46 = *(v24 + 24);
      if (v47 >= v46 >> 1)
      {
        v53 = v44;
        v50 = v45;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
        v45 = v50;
        v44 = v53;
        v24 = v72;
      }

      *(v24 + 16) = v47 + 1;
      v48 = v24 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      v49 = v65;
      specialized SelectionRanges.index(after:)(v70, v71, &v70);
      if (!i)
      {
        break;
      }

      v25 = v71;
      v30 = v70;
    }

    outlined destroy of SelectionRanges<String.Index>(v49);

    return v24;
  }

  __break(1u);
LABEL_21:
  (*v56)(v62, v60);
  v25 = 0;
LABEL_22:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v66 = v30;
  LOBYTE(v67) = v25;
  type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<String.Index>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Range<String.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Array<A>.init(_:in:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a2;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI15SelectionRangesOy10Foundation16AttributedStringV5IndexVG_So7NSValueCs5NeverOTg5(partial apply for closure #1 in Array<A>.init(_:in:), v7);
  _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(a1, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

id closure #1 in Array<A>.init(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v10);
  _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(a1, v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Range<AttributedString.Index>);
  (*(v7 + 16))(v9, a2, v6);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v12 = _NSRange.init<A, B>(_:in:)();
  result = [objc_opt_self() valueWithRange_];
  *a3 = result;
  return result;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for SelectionRanges()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RangeSet();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SelectionRanges(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for RangeSet();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      (*(*(*(a3 + 16) - 8) + 16))(a1, a2, *(a3 + 16));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for SelectionRanges(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for RangeSet();
  }

  v6 = *(*(v5 - 8) + 8);

  return v6(a1);
}

uint64_t initializeWithCopy for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(a3 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for RangeSet();
  }

  (*(*(v7 - 8) + 16))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a3 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for RangeSet();
    }

    (*(*(v7 - 8) + 16))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(a3 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for RangeSet();
  }

  (*(*(v7 - 8) + 32))(a1, a2);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for SelectionRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a3 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for RangeSet();
    }

    (*(*(v7 - 8) + 32))(a1, a2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SelectionRanges<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Bool __swiftcall ResettableGestureRule.resetIfNeeded()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GesturePhase();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = (*(v4 + 40))(v5, v4, v8);
  if (v11 == (*(v4 + 32))(v5, v4))
  {
    swift_getAssociatedTypeWitness();
    if (AGGraphGetOutputValue())
    {
      (*(v4 + 24))(v5, v4);
      v12 = GesturePhase.isTerminal.getter(v6);
      (*(v7 + 8))(v10, v6);
      if (v12)
      {
        $defer #1 <A>() in ResettableGestureRule.resetIfNeeded()(v3, v5, v4);
        return 0;
      }
    }
  }

  else
  {
    (*(v4 + 64))(v5, v4);
  }

  $defer #1 <A>() in ResettableGestureRule.resetIfNeeded()(v3, v5, v4);
  return 1;
}

uint64_t ResettableGestureRule<>.phaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  result = AGGraphGetOutputValue();
  if (result)
  {
    v4 = *(*(v2 - 8) + 16);

    return v4(a1, result, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ResettableGestureRule.phaseValue.getter in conformance EventListenerPhase<A>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventListenerPhase.Value();
  WitnessTable = swift_getWitnessTable();
  return ResettableGestureRule<>.phaseValue.getter(a1, a2, WitnessTable);
}

uint64_t ResettableGestureRule<>.phaseValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  result = AGGraphGetOutputValue();
  if (result)
  {
    (*(v5 + 16))(v7, result, AssociatedTypeWitness);
    (*(a3 + 16))(AssociatedTypeWitness, a3);
    return (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t $defer #1 <A>() in ResettableGestureRule.resetIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v10 = (*(a3 + 32))(a2, a3);
  (*(v6 + 8))(v9, a2);
  return (*(a3 + 48))(v10, a2, a3);
}

uint64_t View.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v19 = (a7 + *(type metadata accessor for MappedViews() + 52));
  *v19 = a1;
  v19[1] = a2;
}

uint64_t MappedViewElement.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double MappedViewElement.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t MappedViewElement.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t MappedViewElement.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MappedViewElement.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*MappedViewElement.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ViewTraitCollection.subscript.getter(a3, a4, v15);
  return MappedViewElement.subscript.modify;
}

void MappedViewElement.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized MappedViewElement.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized MappedViewElement.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static MappedViews._makeViewList(view:inputs:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  outlined init with copy of _ViewListInputs(a2, v36);
  if ((v37 & 0x800) == 0)
  {
    v37 |= 0x800uLL;
  }

  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static MappedViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v25);
  v15 = v25;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v32) = v15;
  (*(a5 + 32))(&v32, v36, a3, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v15, a3, a5);
  v16 = _ViewListOutputs.makeAttribute(inputs:)(v36);
  v17 = a2[1];
  v27[0] = *a2;
  v27[1] = v17;
  v28 = a2[2];
  v29 = v27[0];
  v30 = v17;
  v31 = v28;
  outlined init with copy of _GraphInputs(v27, &v32);
  v18 = default argument 3 of MappedViews.MappedList.Init.init(list:view:baseInputs:views:)();
  *&v26[0] = __PAIR64__(v13, v16);
  *(v26 + 8) = v29;
  *(&v26[1] + 8) = v30;
  *(&v26[2] + 8) = v31;
  *(&v26[3] + 1) = v18;
  MEMORY[0x1EEE9AC00](v18);
  *&v32 = a3;
  *(&v32 + 1) = a4;
  *&v33 = a5;
  *(&v33 + 1) = a6;
  v19 = type metadata accessor for MappedViews.MappedList.Init();
  v23[2] = v19;
  v23[3] = swift_getWitnessTable();
  _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_1(0, &lazy cache variable for type metadata for Attribute<ViewList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_6, v23, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v32 = v26[0];
  v33 = v26[1];
  v34 = v26[2];
  v35 = v26[3];
  (*(*(v19 - 8) + 8))(&v32, v19);
  outlined destroy of _ViewListInputs(v36);
  LODWORD(v19) = v24;
  result = outlined destroy of _ViewListOutputs.Views(a7);
  *a7 = v19;
  *(a7 + 8) = 0;
  *(a7 + 40) = 1;
  return result;
}

uint64_t closure #1 in static MappedViews._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for MappedViews();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t static MappedViews._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v31[0] = *a1;
  v31[1] = v7;
  v8 = a1[1];
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v10 = a1[3];
  v34 = a1[4];
  v11 = *&v31[0];
  v12 = *(&v31[0] + 1) | 0x800;
  *&v24[0] = *&v31[0];
  *(&v24[0] + 1) = *(&v31[0] + 1) | 0x800;
  v24[1] = v8;
  v24[2] = v32;
  v13 = a1[4];
  v24[3] = v10;
  v24[4] = v13;
  v21 = v32;
  v22 = v10;
  v23 = v13;
  v19 = v24[0];
  v20 = v8;
  v14 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v31, v26);
  outlined init with copy of _ViewListCountInputs(v24, v26);
  v15 = v14(&v19, a2, a4);
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v25[0] = v19;
  v25[1] = v20;
  outlined destroy of _ViewListCountInputs(v25);
  v26[0] = v11;
  v26[1] = v12;
  v16 = a1[2];
  v27 = a1[1];
  v28 = v16;
  v17 = a1[4];
  v29 = a1[3];
  v30 = v17;
  outlined destroy of _ViewListCountInputs(v26);
  return v15;
}

uint64_t MappedViews.MappedList.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  v13 = v9;
  return (*(v11 + 80))(a1, &v13, a4, a5, v10, v11);
}

Swift::Void __swiftcall MappedViews.MappedList.print(into:)(SwiftUI::SExpPrinter *into)
{
  v3 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](15917, 0xE200000000000000);
  v4 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v4);

  depth = into->depth;
  if (depth)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](into->indent._countAndFlagsBits, into->indent._object);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](544235885, 0xE400000000000000);
    if (__OFADD__(depth, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    into->depth = depth + 1;
    v6 = 8224;
    v7 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v6 = 544235885;
    v7 = 0xE400000000000000;
  }

  MEMORY[0x193ABEDD0](v6, v7);

  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 88))(into, v8, v9);
  v10 = into->depth;
  if (!v10)
  {
LABEL_8:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return;
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    into->depth = v12;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MappedViews<A, B>.MappedList(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ViewList.debugDescription.getter(a1, WitnessTable);
}

uint64_t MappedViews.MappedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v56 = *MEMORY[0x1E69E9840];
  v13 = *(v6 + 96);
  *&v51[0] = *(v6 + 88);
  *(&v51[0] + 1) = v13;

  _ViewList_ID.Canonical.init(id:)(v51, &v55);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (a1 > 0x7FFFFFFF)
  {
    goto LABEL_20;
  }

  LODWORD(v55) = a1;
  outlined init with copy of AnyTrackedValue(a2, v42);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v19 = type metadata accessor for Optional();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    (*(*(v19 - 8) + 8))(&v43, v19);
    return 0;
  }

  v31 = a4;
  v32 = a5;
  *&v52[32] = v47;
  *&v52[48] = v48;
  v53 = v49;
  v54 = v50;
  v51[0] = v43;
  v51[1] = v44;
  *v52 = v45;
  *&v52[16] = v46;
  v14 = *(v6 + 120);
  v15 = *(&v55 + 1);
  swift_beginAccess();
  v16 = *(v14 + 16);
  *&v42[0] = v55;
  *(&v42[0] + 1) = v15;
  v30 = *(a6 + 24);
  v17 = type metadata accessor for WeakAttribute();
  v18 = lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();

  MEMORY[0x193ABE750](v41, v42, v16, &type metadata for _ViewList_ID.Canonical, v17, v18);

  if (BYTE8(v41[0]))
  {
    swift_endAccess();
LABEL_16:

    (*(*(a6 - 8) + 8))(v51, a6);
    return 0;
  }

  swift_endAccess();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v42[0] = v55;
    swift_beginAccess();
    type metadata accessor for Dictionary();

    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    goto LABEL_16;
  }

  v20 = *(v6 + 24);
  v21 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, v20);
  if (((*(v21 + 24))(a1, v51, a3, v31, v32 & 1, v20, v21) & 1) == 0 || (v22 = *(v6 + 56), v40[0] = *(v6 + 40), v40[1] = v22, v23 = *(v6 + 72), v24 = *(v6 + 56), v37 = *(v6 + 40), v38 = v24, v39 = *(v6 + 72), v41[1] = *&v52[24], v41[2] = *&v52[40], v40[2] = v23, v41[0] = *&v52[8], v34 = *&v52[8], v35 = *&v52[24], v36 = *&v52[40], outlined init with copy of _GraphInputs(v40, v33), outlined init with copy of _GraphInputs(v41, v33), v25 = _GraphInputs.tryToReuse(by:indirectMap:testOnly:)(&v34, v31, v32 & 1), v42[0] = v34, v42[1] = v35, v42[2] = v36, outlined destroy of _GraphInputs(v42), v43 = v37, v44 = v38, v45 = v39, v26 = outlined destroy of _GraphInputs(&v43), !v25))
  {
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

    goto LABEL_16;
  }

  if ((v32 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v26);
    v29 = *(a6 + 32);
    *&v37 = *(a6 + 16);
    *(&v37 + 1) = v30;
    v38 = v29;
    v27 = type metadata accessor for MappedViews.ElementView();
    MEMORY[0x1EEE9AC00](v27);
    AGGraphMutateAttribute();
  }

  (*(*(a6 - 8) + 8))(v51, a6);
  return 1;
}

double closure #1 in MappedViews.MappedElements.tryToReuseElement(at:by:at:indirectMap:testOnly:)(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 96);
  type metadata accessor for MappedViews.MappedElements();
  v5 = *(a2 + 112);
  AGWeakAttributeGetAttribute();

  v6 = AGCreateWeakAttribute();
  result = *(a2 + 88);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v6;
  return result;
}

uint64_t specialized MappedViewElement.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return ViewTraitCollection.subscript.setter(v11, a2, a3, a4);
}

void *initializeBufferWithCopyOfBuffer for MappedViewElement(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t assignWithCopy for MappedViewElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for MappedViewElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t destroy for MappedViews.MappedElements(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t assignWithCopy for MappedViews.MappedElements(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for MappedViews.MappedElements(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for MappedViews.MappedList.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for MappedViews.MappedList.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for MappedViews.ElementView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for MappedViews.ElementView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t destroy for MappedViews.MappedList(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for MappedViews.MappedList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for MappedViews.MappedList(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for MappedViews.MappedList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t instantiation function for generic protocol witness table for MappedViews<A, B>.MappedList(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ViewList);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t assignWithCopy for MappedViews.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for MappedViews.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

BOOL static ProcessEnvironment.BOOL(forKey:defaultValue:)(uint64_t a1, uint64_t a2, BOOL a3)
{
  v4 = String.utf8CString.getter();
  v5 = getenv((v4 + 32));

  if (v5)
  {
    return atoi(v5) != 0;
  }

  return a3;
}

const char *one-time initialization function for tracingOptions()
{
  result = getenv("SWIFTUI_TRACE");
  if (result && (result = atoi(result), (result & 0x80000000) != 0))
  {
    __break(1u);
  }

  else
  {
    static ProcessEnvironment.tracingOptions = result;
  }

  return result;
}

SwiftUI::FluidSpringAnimation __swiftcall FluidSpringAnimation.init(response:dampingFraction:blendDuration:)(Swift::Double response, Swift::Double dampingFraction, Swift::Double blendDuration)
{
  *v3 = response;
  v3[1] = dampingFraction;
  v3[2] = blendDuration;
  result.blendDuration = blendDuration;
  result.dampingFraction = dampingFraction;
  result.response = response;
  return result;
}

uint64_t implicit closure #2 in FluidSpringAnimation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  v23 = *(v13 + 16);
  v23(&v28 - v21, v20);
  v24 = type metadata accessor for SpringState();
  (v23)(v15, a2 + *(v24 + 36), a3);
  v25 = 6.28318531 / a6 * (6.28318531 / a6);
  v26 = sqrt(v25);
  VectorArithmetic.scaled(by:)(a3, a4, v18, (v26 + v26) * a7 / v25);
  (*(v13 + 8))(v15, a3);
  return AnimationSettlingContext.Data.init(delta:velocity:)(v22, v18, a3, a5);
}

uint64_t FluidSpringAnimation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x193AC11E0](*&v5);
}

Swift::Int FluidSpringAnimation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193AC11E0](*&v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FluidSpringAnimation()
{
  Hasher.init(_seed:)();
  FluidSpringAnimation.hash(into:)();
  return Hasher._finalize()();
}

double *FluidSpringAnimation.encode(to:)(double *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v7 = *(v3 + 1);
    result = (v7 + 8);
    if (__OFADD__(v7, 8))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (*(v3 + 2) < result)
    {
      goto LABEL_17;
    }

    *(v3 + 1) = result;
    *(*v3 + v7) = v5;
  }

  if (v4 != 0.0)
  {
    goto LABEL_6;
  }

LABEL_9:
  while (v6 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v9 = *(v3 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v6;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v9) = v6;
      }

      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_17:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v5;
      if (v4 == 0.0)
      {
        break;
      }

LABEL_6:
      ProtobufEncoder.encodeVarint(_:)(0x11uLL);
      v8 = *(v3 + 1);
      result = (v8 + 8);
      if (!__OFADD__(v8, 8))
      {
        if (*(v3 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }

        else
        {
          *(v3 + 1) = result;
          *(*v3 + v8) = v4;
        }

        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
    }
  }

  return result;
}

double *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance FluidSpringAnimation(double *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v7 = *(v3 + 1);
    v8 = v7 + 8;
    if (__OFADD__(v7, 8))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (*(v3 + 2) < v8)
    {
      goto LABEL_21;
    }

    *(v3 + 1) = v8;
    result = (*v3 + v7);
    goto LABEL_8;
  }

  if (v4 != 0.0)
  {
    goto LABEL_9;
  }

  while (v6 != 0.0)
  {
LABEL_13:
    ProtobufEncoder.encodeVarint(_:)(0x19uLL);
    v10 = *(v3 + 1);
    v8 = v10 + 8;
    if (!__OFADD__(v10, 8))
    {
      if (*(v3 + 2) < v8)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v8);
      }

      else
      {
        *(v3 + 1) = v8;
        result = (*v3 + v10);
      }

      *result = v6;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_21:
      result = ProtobufEncoder.growBufferSlow(to:)(v8);
LABEL_8:
      *result = v5;
      if (v4 == 0.0)
      {
        break;
      }

LABEL_9:
      ProtobufEncoder.encodeVarint(_:)(0x11uLL);
      v9 = *(v3 + 1);
      v8 = v9 + 8;
      if (!__OFADD__(v9, 8))
      {
        if (*(v3 + 2) < v8)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(v8);
        }

        else
        {
          *(v3 + 1) = v8;
          result = (*v3 + v9);
        }

        *result = v4;
        if (v6 == 0.0)
        {
          return result;
        }

        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
    }
  }

  return result;
}

uint64_t assignWithCopy for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for SpringState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, v5);
  v11 = (v8 + v9 + v10) & ~v9;
  v7((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, v5);
  v12 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpringState(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = ((((((((v6 + ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for SpringState(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = ((((((((*(v5 + 64) + ((*(v5 + 64) + *(v6 + 80) + ((*(v5 + 64) + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
    v13 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v7;
    if (((((((((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
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

    v13 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v6 + 56);

      return v17();
    }
  }

  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v8)
  {
    v15 = ~v7 + a2;
    v16 = result;
    bzero(result, v8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

uint64_t outlined destroy of AnimationSettlingContext<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(uint64_t a1)
{
  type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0, &lazy cache variable for type metadata for AnimationSettlingContext<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, type metadata accessor for AnimationSettlingContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    v7 = v6;
    v8 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t specialized SeedValues.collect()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0 + 64;
  v4 = 1 << *(*v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*v0 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

    v11 = v9;
LABEL_13:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(v2 + 48) + 8 * v14);
    v16 = (*(v2 + 56) + 640 * v14);
    memcpy(__dst, v16, 0x27CuLL);
    memcpy(__src, v16, 0x27CuLL);
    v27 = v15;
    memcpy(v28, __src, sizeof(v28));
    _ViewInputs.base.modify(&v27, v17);
    outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, v24);
    v18 = v27;
    memcpy(v29, v28, sizeof(v29));
    v19 = v28[158];
    v9 = v11;
LABEL_14:
    memcpy(v28, v29, 0x278uLL);
    v27 = v18;
    v28[158] = v19;
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(&v27) == 1)
    {
    }

    memcpy(__src, v29, 0x278uLL);
    __src[158] = v19;
    result = outlined destroy of SeedValue<GlassContainer.EntryState>(__src);
    if (v19 != *(v1 + 2))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v20)
      {
        v21 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v1;
        v24[0] = *v1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v23 = v24[0];
        }

        memcpy(__dst, (*(v23 + 56) + 640 * v21), 0x27CuLL);
        outlined destroy of SeedValue<GlassContainer.EntryState>(__dst);
        result = specialized _NativeDictionary._delete(at:)(v21, v23);
        *v1 = v23;
      }
    }
  }

  if (v7 <= v9 + 1)
  {
    v12 = v9 + 1;
  }

  else
  {
    v12 = v7;
  }

  v9 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      _s7SwiftUI14GlassContainerO5EntryV8StableIDV3key_AA9SeedValueVyAC0E5StateVG5valuetSgWOi0_(&v27);
      v18 = v27;
      memcpy(v29, v28, sizeof(v29));
      v6 = 0;
      v19 = v28[158];
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = 1 << *(*v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(*v0 + 64);
  v4 = (v1 + 63) >> 6;

  v6 = 0;
  v25 = result;
  v7 = v24;
  if (v3)
  {
LABEL_10:
    while (1)
    {
      v9 = __clz(__rbit64(v3)) | (v6 << 6);
      v10 = *(v25 + 48) + 40 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(*(v25 + 56) + 16 * v9 + 8);
      outlined copy of ResolvedIDs.Key(*v10, v12, v13, v14, *(v10 + 32));
      if (v15 > 0xFB)
      {
      }

      v3 &= v3 - 1;
      v27[0] = v11;
      v27[1] = v12;
      v27[2] = v13;
      v27[3] = v14;
      v28 = v15;
      if (v16 == *(v23 + 8) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v18 & 1) == 0))
      {
        result = outlined destroy of ResolvedIDs.Key(v27);
        v7 = v24;
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v23;
        v26 = *v23;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v21 = v26;
        }

        v22 = *(v21 + 48) + 40 * v19;
        outlined consume of ResolvedIDs.Key(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32));
        specialized _NativeDictionary._delete(at:)(v19, v21);
        result = outlined destroy of ResolvedIDs.Key(v27);
        *v23 = v21;
        v7 = v24;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v4)
      {
      }

      v3 = *(v7 + 8 * v8);
      ++v6;
      if (v3)
      {
        v6 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v1 = 1 << *(*v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(*v0 + 64);
  v4 = (v1 + 63) >> 6;

  v6 = 0;
  v25 = result;
  v7 = v24;
  if (v3)
  {
LABEL_10:
    while (1)
    {
      v9 = __clz(__rbit64(v3)) | (v6 << 6);
      v10 = *(v25 + 48) + 40 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(*(v25 + 56) + 32 * v9 + 28);
      outlined copy of GlassContainer.Entry.ModelID(*v10, v12, v13, v14, *(v10 + 32));
      if (v15 == 255)
      {
      }

      v3 &= v3 - 1;
      v27[0] = v11;
      v27[1] = v12;
      v27[2] = v13;
      v27[3] = v14;
      v28 = v15;
      if (v16 == *(v23 + 8) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v18 & 1) == 0))
      {
        result = outlined destroy of GlassContainer.Entry.ModelID(v27);
        v7 = v24;
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v23;
        v26 = *v23;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v21 = v26;
        }

        v22 = *(v21 + 48) + 40 * v19;
        outlined consume of GlassContainer.Entry.ModelID(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32));
        specialized _NativeDictionary._delete(at:)(v19, v21);
        result = outlined destroy of GlassContainer.Entry.ModelID(v27);
        *v23 = v21;
        v7 = v24;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v4)
      {
      }

      v3 = *(v7 + 8 * v8);
      ++v6;
      if (v3)
      {
        v6 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}