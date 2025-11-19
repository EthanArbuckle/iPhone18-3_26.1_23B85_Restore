uint64_t initializeWithCopy for _VariadicView_Children.Element(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v6;

  v8 = v7;

  return a1;
}

uint64_t destroy for _VariadicView_Children.Element(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18D1137A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static MultiView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static View.makeImplicitRoot(view:inputs:)(&v11, v9, a3, *(a4 + 8), a5);
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

char *storeEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
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

void *assignWithCopy for _CALayerView(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t MakeDefaultRepresentation.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v9 + 16))(v12, Value, a2);
  (*(a3 + 48))(a2, a3);
  View.modifier<A>(_:)(v8, a2, AssociatedTypeWitness);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(v9 + 8))(v12, a2);
}

uint64_t MakeResolvedRepresentation.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for UncheckedSendable();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11[-v8];
  closure #1 in MakeResolvedRepresentation.value.getter(a1, a2, &v11[-v8]);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v9, AssociatedTypeWitness);
}

uint64_t closure #1 in MakeResolvedRepresentation.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v15 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v9 + 16))(v12, Value, a1);
  (*(v5 + 48))(a1, v5);
  (*(v9 + 8))(v12, a1);
  return UncheckedSendable.init(_:)(v8, AssociatedTypeWitness, a3);
}

uint64_t getEnumTagSinglePayload for BaseViewList.Init(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BaseViewList.Init(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for _VariadicView_Children(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>)
  {
    type metadata accessor for (Int, TypeConformance<StyleContextDescriptor>)(255, &lazy cache variable for type metadata for (Int, TypeConformance<StyleContextDescriptor>), &lazy cache variable for type metadata for TypeConformance<StyleContextDescriptor>, &type metadata for StyleContextDescriptor, &protocol witness table for StyleContextDescriptor);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<StyleContextDescriptor>)>);
    }
  }
}

uint64_t static TupleStyleContext.accepts<A>(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5(a3, v13);
  v6 = v13[0];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5(a4, v13);
  v7 = v13[0];
  v8 = *(v6 + 16);
  if (v8 >= *(v13[0] + 16))
  {
    v13[0] = a2;
    v13[1] = v7;
    v14 = 1;
    if (v8)
    {

      v10 = v6 + 48;
      do
      {
        v11 = *(v10 - 16);
        if (v11 >= a2 && (v11 & 0x8000000000000000) == 0 && v11 < *(v7 + 16))
        {
          type metadata accessor for TupleStyleContext.QueryAtIndexVisitor();
          TupleStyleContext.QueryAtIndexVisitor.visit<A>(_:)();
        }

        v10 += 24;
        --v8;
      }

      while (v8);

      v9 = v14;
    }

    else
    {

      v9 = 1;
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static StyleContextDescriptor.typeCache;
  if (*(static StyleContextDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(v4[7] + 8 * v5);
  }

  else
  {
    _s7SwiftUI20TupleTypeDescriptionVyACyxGSo07AGTupleD0acfCAA22StyleContextDescriptorV_Tt1g5Tm(a1, _styleContextProtocolDescriptor, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), v11);
    v8 = v11[0];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = static StyleContextDescriptor.typeCache;
    static StyleContextDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    static StyleContextDescriptor.typeCache = v10;
    result = swift_endAccess();
    *a2 = v8;
  }

  return result;
}

uint64_t TupleStyleContext.QueryAtIndexVisitor.visit<A>(_:)()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v2 = v0[1];
  if (v1 >= *(v2 + 16))
  {
    goto LABEL_5;
  }

  v3 = *(v2 + 24 * v1 + 40);
  v4 = type metadata accessor for TupleStyleContext.ContextAcceptsVisitor();
  result = TupleStyleContext.ContextAcceptsVisitor.visit<A>(_:)(v3, v4);
  *(v0 + 16) = 0;
  ++*v0;
  return result;
}

uint64_t TupleStyleContext.ContextAcceptsVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 32) + 8))(a1, 0);
  *v2 = result & 1;
  return result;
}

uint64_t Text.foregroundColor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, char a6)
{
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v11 = *(a5 + 2);
  v10 = *(a5 + 3);
  if (v11 >= v10 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a5);
  }

  *(a5 + 2) = v11 + 1;
  v12 = &a5[16 * v11];
  *(v12 + 4) = a1;
  v12[40] = a6;

  return a2;
}

uint64_t PlatformViewRepresentableContext.values.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
}

uint64_t ViewGraphRootValueUpdater._explicitAlignment(of:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_3(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(a4, a2, v7, a3, &v9);
  if (v10)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)@<X0>(uint64_t (*a1)(void, double, double)@<X1>, uint64_t a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t assignWithCopy for _IntelligenceSupport.AnimatingText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t AnimatableAttribute.init(source:phase:time:transaction:environment:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a5;
  v10 = type metadata accessor for AnimatableAttribute();
  return AnimatableAttributeHelper.init(phase:time:transaction:)(a2, a3, a4, &a6[*(v10 + 40)]);
}

uint64_t AnimatableAttributeHelper.init(phase:time:transaction:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char *a4@<X8>)
{
  v8 = type metadata accessor for AnimatableAttributeHelper();
  v9 = v8[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 56))(&a4[v9], 1, 1, AssociatedTypeWitness);
  *&a4[v8[12]] = 0;
  *&a4[v8[13]] = 0;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018TextRepresentationV0018_03CAEBF34B5290A85J13CA97765182271LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018TextRepresentationV0018_03CAEBF34B5290A85J13CA97765182271LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.TextRepresentationKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TextChildQuery<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t sub_18D114B48(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ResolvedTextFilter()
{
  result = type metadata accessor for ResolvedTextHelper(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ResolvedTextHelper()
{
  result = type metadata accessor for ResolvedTextHelper.NextUpdate(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ResolvedTextHelper.NextUpdate()
{
  v3 = MEMORY[0x1E69E5D08] + 64;
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout();
    v4 = &v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DisplayList.ChameleonColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Text._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v67 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for ResolvedTextFilter(0);
  MEMORY[0x1EEE9AC00](v54);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *a2;
  v10 = *(a2 + 8);
  v9 = *(a2 + 12);
  v11 = *(a2 + 16);
  v64 = *(a2 + 24);
  v12 = *(a2 + 56);
  v65 = *(a2 + 40);
  *v66 = v12;
  *&v66[12] = *(a2 + 68);
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v8);
  if (v13 && (v15 = v13, *v58 = v8, *&v58[8] = v10, v59 = v9, v60 = v11, v16 = *(a2 + 40), v61 = *(a2 + 24), v62 = v16, v63[0] = *(a2 + 56), *(v63 + 12) = *(a2 + 68), v17 = *(v14 + 8), v55 = v14, v18 = v17(v58, v13, v14), v19 = v55, (v18 & 1) != 0))
  {
    v57[0] = v7;
    *v58 = v8;
    *&v58[8] = v10;
    v59 = v9;
    v60 = v11;
    v20 = *(a2 + 40);
    v61 = *(a2 + 24);
    v62 = v20;
    v63[0] = *(a2 + 56);
    *(v63 + 12) = *(a2 + 68);
    static Text.makeCommonAttributes(view:inputs:)(v57, v58, v56);
    *v58 = v8;
    v52 = v10;
    *&v58[8] = v10;
    v59 = v9;
    v53 = v9;
    v60 = v11;
    v21 = *(a2 + 40);
    v61 = *(a2 + 24);
    v62 = v21;
    v63[0] = *(a2 + 56);
    *(v63 + 12) = *(a2 + 68);
    (*(v19 + 16))(v57, v58, v15, v19);
    v50 = *v57;
    swift_beginAccess();
    v22 = *(v11 + 16);
    v49 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v8);
    v48 = HIDWORD(v49);
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v8, *v58);
    if (v23)
    {
      v24 = (v23 + 72);
      v25 = (v23 + 73);
    }

    else
    {
      v24 = &static ArchivedViewInput.defaultValue;
      v25 = &static ArchivedViewInput.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v47 = *v25;
    v46 = *v24;
    HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v8);
    v51 = 0;
    BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v8, *v58);
    if (v28 && (v29 = *(v28 + 72)) != 0)
    {
      v30 = *(v28 + 80);
    }

    else
    {
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      v29 = v31;
      v30 = &protocol witness table for InterfaceIdiomBox<A>;
    }

    *v6 = v7;
    v6[1] = v22;
    v32 = v6 + *(v54 + 24);
    v33 = type metadata accessor for ResolvedTextHelper(0);
    *&v32[*(v33 + 60)] = 0;
    type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    swift_storeEnumTagMultiPayload();
    v34 = v52;
    v35 = v49;
    *v32 = v52;
    *(v32 + 1) = v35;
    *(v32 + 2) = v48;
    v36 = v50;
    v32[12] = v50 & 1;
    v32[13] = 0;
    v32[14] = v46;
    v32[15] = v47;
    *(v32 + 8) = 0;
    v32[18] = HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 & 1;
    v32[19] = (v36 & 2) != 0;
    *(v32 + 3) = v29;
    *(v32 + 4) = v30;
    type metadata accessor for PropertyList.Tracker();
    v37 = swift_allocObject();
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = MEMORY[0x1E69E7CC8];
    v40 = MEMORY[0x1E69E7CC0];
    *(v38 + 24) = 0;
    *(v38 + 32) = v39;
    *(v38 + 40) = v39;
    *(v38 + 48) = v40;
    *(v38 + 56) = 0;
    *(v37 + 16) = v38;
    *(v32 + 5) = v37;
    *(v32 + 3) = 0u;
    *(v32 + 4) = 0u;
    *&v32[*(v33 + 64)] = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ResolvedStyledText();
    lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type ResolvedTextFilter and conformance ResolvedTextFilter, type metadata accessor for ResolvedTextFilter);
    LODWORD(v37) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of Date?(v6, type metadata accessor for ResolvedTextFilter);
    v41 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v8);
    v42 = *(v11 + 16);
    *v58 = v37;
    *&v58[4] = v41;
    v59 = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext();
    v43 = Attribute.init<A>(body:value:flags:update:)();
    v61 = v64;
    v62 = v65;
    *v58 = v8;
    *&v58[8] = v34;
    v59 = v53;
    v60 = v11;
    v63[0] = *v66;
    *(v63 + 12) = *&v66[12];
    return (*(v55 + 24))(v58, v43, v56, v15);
  }

  else
  {
    v57[0] = v7;
    *v58 = v8;
    *&v58[8] = v10;
    v59 = v9;
    v60 = v11;
    v26 = *(a2 + 40);
    v61 = *(a2 + 24);
    v62 = v26;
    v63[0] = *(a2 + 56);
    *(v63 + 12) = *(a2 + 68);
    return static Text.makeCommonAttributes(view:inputs:)(v57, v58, v56);
  }
}

uint64_t static Text.makeCommonAttributes(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 40);
  v22 = *(a2 + 24);
  v23 = v7;
  v24[0] = *(a2 + 56);
  *(v24 + 12) = *(a2 + 68);
  v21 = *(a2 + 8);
  if ((_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v6) & 1) != 0 && (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v6) & 1) == 0)
  {
    type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
    v16 = v6;
    v18 = *(a2 + 24);
    v19 = *(a2 + 40);
    v20[0] = *(a2 + 56);
    *(v20 + 12) = *(a2 + 68);
    v17 = *(a2 + 8);
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    static PlatformScrollEdgeEffectTagDefinition.apply(inputs:body:)(&v16, partial apply for closure #1 in static Text.makeCommonAttributes(view:inputs:), v10, &v14);

    if (v14)
    {
      v11 = v15;
      v12 = HIDWORD(v15);
      *a3 = v14;
      *(a3 + 8) = v11;
      *(a3 + 12) = v12;
      return result;
    }

    v13 = v5;
    v16 = v6;
    v18 = v22;
    v19 = v23;
    v20[0] = v24[0];
    *(v20 + 12) = *(v24 + 12);
    v17 = v21;
    v8 = &v13;
  }

  else
  {
    LODWORD(v14) = v5;
    v16 = v6;
    v18 = *(a2 + 24);
    v19 = *(a2 + 40);
    v20[0] = *(a2 + 56);
    *(v20 + 12) = *(a2 + 68);
    v17 = *(a2 + 8);
    v8 = &v14;
  }

  return static Text.makeTextAttributes(view:inputs:)(v8, &v16, a3);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19TextAllowsSelectionV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19TextAllowsSelectionV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for TextAllowsSelection)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17TextRendererInputV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for TextRendererInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(a1, v6);
  if (v2)
  {
    v3 = (v2 + 72);
    v4 = (v2 + 76);
  }

  else
  {
    v3 = &static TextRendererInput.defaultValue;
    v4 = &static TextRendererInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3 | (*v4 << 32);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for TextRendererInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28PreferTextLayoutManagerInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28PreferTextLayoutManagerInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for PreferTextLayoutManagerInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA4TextV06LayoutI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for Text.LayoutKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for Text.LayoutKey;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19VariantThatFitsFlagV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19VariantThatFitsFlagV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for VariantThatFitsFlag)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA18ReferenceDateInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA18ReferenceDateInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ReferenceDateInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE017HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE017HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.HasWidgetMetadataKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *initializeWithCopy for ResolvedTextFilter(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 4) = *(a2 + v4 + 4);
  v7 = *(a2 + v4 + 16);
  *(v5 + 3) = *(a2 + v4 + 12);
  *(v5 + 4) = v7;
  *(v5 + 24) = *(a2 + v4 + 24);
  *(v5 + 5) = *(a2 + v4 + 40);
  v8 = *(a2 + v4 + 72);

  if (v8)
  {
    v9 = *(v6 + 6);
    v10 = *(v6 + 7);
    v11 = v6[64];
    outlined copy of Text.Storage(v9, v10, v11);
    *(v5 + 6) = v9;
    *(v5 + 7) = v10;
    v5[64] = v11;
    *(v5 + 9) = v8;
  }

  else
  {
    v12 = *(v6 + 4);
    *(v5 + 3) = *(v6 + 3);
    *(v5 + 4) = v12;
  }

  v13 = type metadata accessor for ResolvedTextHelper(0);
  v14 = *(v13 + 60);
  v15 = &v5[v14];
  v16 = &v6[v14];
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v15 = *v16;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v19 = v18;
    v20 = *(v18 + 48);
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 16))(&v15[v20], &v16[v20], v21);
    v15[*(v19 + 64)] = v16[*(v19 + 64)];
    *&v15[*(v19 + 80)] = *&v16[*(v19 + 80)];

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v15, v16, *(*(Update - 8) + 64));
  }

  *&v5[*(v13 + 64)] = *&v6[*(v13 + 64)];
  return a1;
}

uint64_t lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t destroy for ResolvedTextFilter(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 24);

  if (*(v2 + 72))
  {
    outlined consume of Text.Storage(*(v2 + 48), *(v2 + 56), *(v2 + 64));
  }

  v3 = v2 + *(type metadata accessor for ResolvedTextHelper(0) + 60);
  type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v6 = *(v5 + 48);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.TextAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE025TextAccessibilityProviderV033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.TextAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t static Text.makeTextChildQuery<A>(_:styledText:view:renderer:inputs:isScrapeable:)@<X0>(unsigned int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X3>, __int128 *a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v11 = a4[1];
  v51 = *a4;
  v52 = v11;
  v12 = a4[3];
  v53 = a4[2];
  v54 = v12;
  v55 = a4[4];
  v56 = *(a4 + 20);
  swift_beginAccess();
  v13 = *(v52 + 16);
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v51, v45);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  *&v45 = __PAIR64__(a2, a1);
  *(&v45 + 1) = a3;
  *&v46 = __PAIR64__(v55, v13);
  *(&v46 + 1) = __PAIR64__(HIDWORD(v54), DWORD2(v55));
  LODWORD(v47) = v15;
  MEMORY[0x1EEE9AC00](v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[2] = AssociatedTypeWitness;
  v27 = type metadata accessor for TextChildQuery();
  WitnessTable = swift_getWitnessTable();
  v17 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v45, partial apply for closure #1 in Attribute.init<A>(_:), v26, v27, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  v19 = LODWORD(v43[0]);
  if (a5)
  {
    AGGraphSetFlags();
  }

  _GraphValue.init(_:)(v19, v30);
  v20 = v30[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v39 = v53;
  v40 = v54;
  v41 = v55;
  v42 = v56;
  v37 = v51;
  v38 = v52;
  v22 = v53;
  LODWORD(v39) = 0;
  v29 = v20;
  v43[0] = v51;
  v43[1] = v52;
  v44 = v56;
  v43[3] = v54;
  v43[4] = v55;
  v43[2] = v39;
  v33 = v39;
  v34 = v54;
  v35 = v55;
  v36 = v56;
  v31 = v51;
  v32 = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v51, &v45);
  outlined init with copy of _ViewInputs(v43, &v45);
  v24(&v29, &v31, AssociatedTypeWitness, AssociatedConformanceWitness);
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v45 = v31;
  v46 = v32;
  outlined destroy of _ViewInputs(&v45);
  LODWORD(v39) = v22;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a6, &v37);
    AGSubgraphEndTreeElement();
  }

  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  return outlined destroy of _ViewInputs(&v31);
}

uint64_t static StyledTextContentView._makeInnerView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v84 = *(a2 + 32);
  v85[0] = v4;
  v6 = *(a2 + 48);
  v85[1] = *(a2 + 64);
  v7 = *(a2 + 16);
  v82 = *a2;
  v83 = v7;
  v72 = v84;
  v73 = v6;
  v74 = *(a2 + 64);
  v8 = *a1;
  v86 = *(a2 + 80);
  v9 = v82;
  v48 = *(&v7 + 1);
  v10 = v7;
  v49 = DWORD2(v82);
  v11 = v84;
  v75 = *(a2 + 80);
  v70 = v82;
  v71 = v5;
  v51 = WORD2(v84);
  DWORD1(v72) = DWORD1(v84) & 0xFFFFFFFD;
  v12 = v6;
  *&v76 = v6;
  v13 = &type metadata for ViewRespondersKey;
  v14 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
  outlined init with copy of _ViewInputs(&v82, &v55);

  v15 = *(v12 + 16);
  if (v14 != v15)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_10;
    }

    if (*(v12 + 16 * v14 + 32) == &type metadata for ViewRespondersKey)
    {
      specialized Array.remove(at:)(v14);
    }
  }

  v57 = v84;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v86;
  v55 = v82;
  v56 = v83;
  LOBYTE(v64) = 1;
  swift_beginAccess();
  LOBYTE(v62[0]) = 1;
  v52 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v55, &v64, 0x100000000);
  swift_endAccess();
  v13 = *&v85[0];
  LODWORD(v14) = DWORD2(v85[0]);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v85[0]) & 1) == 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v13) & 1) == 0)
  {
    v57 = v72;
    v58 = v73;
    v59 = v74;
    v60 = v75;
    v55 = v70;
    v56 = v71;
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA0d11TextContentF0V_Tt5B5(v8, &v55, v52, 0, &v76);
    v29 = *(&v76 + 1);
    *&v54 = v76;
    goto LABEL_24;
  }

  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v9, v55);
  if (v16)
  {
    v17 = (v16 + 72);
    goto LABEL_11;
  }

  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_40;
  }

LABEL_10:
  v17 = &static ArchivedViewInput.defaultValue;
LABEL_11:
  v50 = a3;
  if (*v17)
  {
    v47 = v8;
    *&v55 = __PAIR64__(*(v10 + 16), v8);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment();
    v23 = Attribute.init<A>(body:value:flags:update:)();
    v24 = MEMORY[0x1E69E7CC0];
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    *(v25 + 80) = 256;
    *(v25 + 88) = v9;

    *&v71 = v25;
    if ((v11 & 0x20) == 0)
    {
      LODWORD(v72) = v11 | 0x20;
    }

    swift_beginAccess();
    LODWORD(v55) = *(v25 + 16);
    *(&v55 + 1) = 1;
    BYTE4(v56) = 3;
    LODWORD(v56) = 0x2000000;
    *(&v56 + 5) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init();
    v26 = Attribute.init<A>(body:value:flags:update:)();
    outlined consume of ContentTransition.Storage(1, 0x302000000, 0);
    v78 = v72;
    v79 = v73;
    v80 = v74;
    v81 = v75;
    v76 = v70;
    v77 = v71;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    a3 = v50;
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v66 = v78;
    v67 = v79;
    v68 = v80;
    v69 = v81;
    v64 = v76;
    v65 = v77;
    v28 = v78;
    LODWORD(v66) = 0;
    v60 = v81;
    v58 = v79;
    v59 = v80;
    v55 = v76;
    v56 = v77;
    v57 = v66;
    outlined init with copy of _ViewInputs(&v76, v62);
    outlined init with copy of _ViewInputs(&v55, v62);
    v8 = v47;
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a14UI21StyledTextni5V010_e63InnerF033_641995D812913A47B866B20B887823764view6inputsAA01_F7j6VAA11_kl13VyACG_AA01_F6M21VtFZAiA01_Q0V_ANtcfU_AA0rsnI0VXMtAKyAUG09AttributeK09AttributeVyAA16_ShapeStyle_PackVGTf1nnnc_n(v26, &v55, v47, v52, v53);
    outlined destroy of _ViewInputs(&v55);
    LODWORD(v66) = v28;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v53, &v64);
      AGSubgraphEndTreeElement();
    }

    v62[2] = v66;
    v62[3] = v67;
    v62[4] = v68;
    v63 = v69;
    v62[0] = v64;
    v62[1] = v65;
    outlined destroy of _ViewInputs(v62);
    *&v54 = v53[0];
    v29 = v53[1];
LABEL_24:
    *(&v54 + 1) = v29;
    if ((v51 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  type metadata accessor for _ShapeStyle_InterpolatorGroup();
  swift_allocObject();
  v9 = _ShapeStyle_InterpolatorGroup.init()();
  v57 = v84;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v86;
  v55 = v82;
  v56 = v83;
  swift_beginAccess();
  v18 = CachedEnvironment.animatedPosition(for:)(&v55);
  swift_endAccess();
  DWORD1(v74) = v18;
  v78 = v72;
  v79 = v73;
  v81 = v75;
  v76 = v70;
  v77 = v71;
  v80 = v74;

  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA0d11TextContentF0V_Tt5B5(v8, &v76, v52, v9, &v55);

  v19 = v55;
  v54 = v55;
  v47 = DWORD2(v55);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v21 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v19);
  if ((v21 & 0x100000000) != 0)
  {

    if ((v51 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v44 = v13;
  v45 = v14;
  v46 = v21;
  v47 = v8;
  LODWORD(v14) = v85[1];
  v57 = v84;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v86;
  v55 = v82;
  v56 = v83;
  swift_beginAccess();
  LODWORD(v13) = CachedEnvironment.animatedPosition(for:)(&v55);
  swift_endAccess();
  v43 = DWORD1(v85[1]);
  LODWORD(a3) = AGGraphCreateOffsetAttribute2();
  v8 = *(v10 + 16);
  if (one-time initialization token for pixelLength != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v22 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    HIDWORD(v42) = specialized CachedEnvironment.attribute<A>(id:_:)(v22);
    swift_endAccess();
    *&v55 = v9;
    *(&v55 + 1) = __PAIR64__(v14, OffsetAttribute2);
    *&v56 = __PAIR64__(v43, v13);
    *(&v56 + 1) = __PAIR64__(v48, a3);
    *&v57 = __PAIR64__(HIDWORD(v48), v49);
    *(&v57 + 1) = __PAIR64__(HIDWORD(v42), v8);
    LODWORD(v42) = v8;
    LODWORD(v58) = v46;
    WORD2(v58) = 0;
    BYTE6(v58) = (v51 & 0x400) != 0;
    v61 = 0;
    *(&v58 + 1) = 0;
    v59 = 0uLL;
    v60 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterpolatedDisplayList<ResolvedStyledText>();
    lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type InterpolatedDisplayList<ResolvedStyledText> and conformance InterpolatedDisplayList<A>, type metadata accessor for InterpolatedDisplayList<ResolvedStyledText>);

    LODWORD(v22) = Attribute.init<A>(body:value:flags:update:)();
    *&v55 = v9;
    *(&v55 + 1) = __PAIR64__(v14, OffsetAttribute2);
    *&v56 = __PAIR64__(v43, v13);
    *(&v56 + 1) = __PAIR64__(v48, a3);
    *&v57 = __PAIR64__(HIDWORD(v48), v49);
    *(&v57 + 1) = v42;
    LODWORD(v58) = v46;
    WORD2(v58) = 0;
    BYTE6(v58) = (v51 & 0x400) != 0;
    v61 = 0;
    *(&v58 + 1) = 0;
    v59 = 0uLL;
    v60 = 0;
    outlined destroy of Date?(&v55, type metadata accessor for InterpolatedDisplayList<ResolvedStyledText>);
    AGGraphSetFlags();
    LOBYTE(v64) = 0;
    PreferencesOutputs.subscript.setter(v22, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

    a3 = v50;
    v8 = v47;
    LODWORD(v14) = v45;
    v13 = v44;
    if ((v51 & 2) != 0)
    {
LABEL_27:
      LODWORD(v64) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type StyledTextLayoutComputer and conformance StyledTextLayoutComputer();
      HIDWORD(v54) = Attribute.init<A>(body:value:flags:update:)();
      if ((BYTE8(v54) & 0x80) == 0)
      {
        DWORD2(v54) |= 0x80u;
      }
    }

LABEL_29:
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA4TextV06LayoutI0V_TtB5Tf4dn_n(v13))
    {
      v30 = AGGraphCreateOffsetAttribute2();
      v31 = v85[1];
      v32 = AGGraphCreateOffsetAttribute2();
      *&v64 = __PAIR64__(v31, v30);
      *(&v64 + 1) = __PAIR64__(HIDWORD(v85[0]), v32);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _sypSgMaTm_5(0, &lazy cache variable for type metadata for [Text.LayoutKey.AnchoredLayout], &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type TextLayoutQuery and conformance TextLayoutQuery();
      v33 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v64) = 0;
      PreferencesOutputs.subscript.setter(v33, &type metadata for Text.LayoutKey, &protocol witness table for Text.LayoutKey);
    }

    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v13))
    {
      v66 = v84;
      v67 = v85[0];
      v68 = v85[1];
      v69 = v86;
      v64 = v82;
      v65 = v83;
      type metadata accessor for StyledTextResponder();
      swift_allocObject();
      outlined init with copy of _ViewInputs(&v82, v62);
      *&v64 = StyledTextResponder.init(view:styles:inputs:)(v8, v52, &v64);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], 255, type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type StyledTextResponderFilter and conformance StyledTextResponderFilter();
      v34 = Attribute.init<A>(body:value:flags:update:)();

      LOBYTE(v64) = 0;
      PreferencesOutputs.subscript.setter(v34, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v13) & 1) == 0)
    {
      break;
    }

    v35 = *MEMORY[0x1E698D3F8];
    v36 = *(v85 + 12);
    v37 = AGGraphCreateOffsetAttribute2();
    *&v64 = v36;
    *(&v64 + 1) = __PAIR64__(v8, v37);
    LODWORD(v65) = v35;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<StyledTextContentView> and conformance ContentResponderPathDataRule<A>();
    OffsetAttribute2 = Attribute.init<A>(body:value:flags:update:)();
    *&v64 = v13;
    v38 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    Kind = v13[1].Kind;
    if (v38 == Kind)
    {
      break;
    }

    if (v38 < Kind)
    {
      if (v13[v38 + 2].Kind == &type metadata for ContentShapePathData)
      {
        LODWORD(v64) = OffsetAttribute2;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        _sypSgMaTm_5(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        _sypSgMaTm_5(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v40 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v64) = 0;
        PreferencesOutputs.subscript.setter(v40, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

      break;
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v66 = v72;
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v64 = v70;
  v65 = v71;
  result = outlined destroy of _ViewInputs(&v64);
  *a3 = v54;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance StyledTextContentView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v9 = v3;
  return static StyledTextContentView._makeInnerView(view:inputs:)(&v9, v7, a3);
}

void LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v102 = a7;
  v103 = a8;
  v105 = a1;
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v99 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v98 - v20;
  v21 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Locale();
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v98 - v27;
  v30 = *a2;
  v29 = *(a2 + 8);
  v109 = *a3;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v108 = v30;
  v31 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v32 = dyld_program_sdk_at_least();
  }

  else
  {
    v32 = static Semantics.forced >= v31;
  }

  v33 = v104;
  v100 = a10;
  v101 = a9;
  v106 = a12;
  if (v32 && (v109 & 0x100) == 0)
  {
    if (a6)
    {
      v34 = a6;
    }

    else
    {
      v34 = [objc_opt_self() mainBundle];
    }

    v42 = a6;
    v43 = MEMORY[0x193ABEC20](v102, v103);
    if (a5)
    {
      v44 = MEMORY[0x193ABEC20](a4, a5);
      v99 = a11;
      if (v29)
      {
LABEL_24:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v108, v28);

        v45 = v107;
LABEL_40:
        isa = Locale._bridgeToObjectiveC()().super.isa;
        v60 = *(v33 + 8);
        v60(v28, v45);
        v61 = _LocalizeAttributedString(v34, v43, v44, isa);

        if (v101)
        {
          v62 = v60;
          v63 = v106;
          v64 = v99;
          (*(v106 + 56))(&v112, v99, v106);
          v65 = v112;
          v66 = v113;
          (*(v63 + 8))(v64, v63);
          if (v29)
          {

            v67 = v108;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v108, v111);

            v69 = v111[0];
          }

          else
          {
            v68 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v108);
            if (v68)
            {
              v69 = *(v68 + 72);
            }

            else
            {
              v69 = 0;
            }

            v67 = v108;
          }

          v81 = v62;
          LOBYTE(v111[0]) = v69 == 0;
          MEMORY[0x1EEE9AC00](v68);
          *(&v98 - 12) = v67;
          *(&v98 - 11) = v29;
          *(&v98 - 10) = v65;
          *(&v98 - 9) = v66;
          *(&v98 - 8) = v111;
          *(&v98 - 7) = v61;
          v82 = v103;
          *(&v98 - 6) = v102;
          *(&v98 - 5) = v82;
          *(&v98 - 32) = 1;
          v83 = v100;
          *(&v98 - 3) = v100;
          v96 = v23;
          v97 = v109;
          _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(partial apply for closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:), (&v98 - 14), v83);
          v84 = v111[0];
          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v23, type metadata accessor for Text.Style);
          if (v29)
          {

            v85 = v67;
            v86 = v98;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v85, v98);

            v87 = v107;
            v88 = v104;
          }

          else
          {
            v89 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v67);
            v87 = v107;
            if (v89)
            {
              v88 = v104;
              v86 = v98;
              (*(v104 + 16))(v98, &v89[*(*v89 + 248)], v107);
            }

            else
            {
              v86 = v98;
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
              }

              v90 = __swift_project_value_buffer(v87, static LocaleKey.defaultValue);
              v88 = v104;
              (*(v104 + 16))(v86, v90, v87);
            }
          }

          (*(v88 + 56))(v86, 0, 1, v87);
          v91 = getVaList(_:)();

          v92 = (*(v88 + 48))(v86, 1, v87);
          v93 = v61;
          if (v92 == 1)
          {
            v94 = 0;
          }

          else
          {
            v94 = Locale._bridgeToObjectiveC()().super.isa;
            v81(v86, v87);
          }

          v95 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initSwiftUIAttributedStringWithFormat:v93 options:0 locale:v94 arguments:v91];

          v112 = v108;
          v113 = v29;
          v111[0] = v109;
          specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(v95, v105, &v112, v111, v84, v100, v99, v106);
        }

        else
        {
          v112 = v108;
          v113 = v29;
          v111[0] = v109;
          ResolvedTextContainer.append(_:in:with:)(v61, &v112, v111, v99, v106);
        }

        return;
      }
    }

    else
    {
      v44 = 0;
      v99 = a11;
      if (v29)
      {
        goto LABEL_24;
      }
    }

    v46 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v108);
    if (v46)
    {
      v45 = v107;
      (*(v33 + 16))(v28, &v46[*(*v46 + 248)], v107);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v45 = v107;
      v58 = __swift_project_value_buffer(v107, static LocaleKey.defaultValue);
      (*(v33 + 16))(v28, v58, v45);
    }

    goto LABEL_40;
  }

  v35 = v108;
  if (a6)
  {
    v36 = a6;
  }

  else
  {
    v36 = [objc_opt_self() mainBundle];
  }

  v37 = v107;
  v38 = a6;
  v39 = MEMORY[0x193ABEC20](v102, v103);
  if (!a5)
  {
    v40 = 0;
    if (v29)
    {
      goto LABEL_17;
    }

LABEL_19:
    v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v35);
    if (v41)
    {
      (*(v33 + 16))(v25, &v41[*(*v41 + 248)], v37);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v37, static LocaleKey.defaultValue);
      (*(v33 + 16))(v25, v47, v37);
    }

    goto LABEL_31;
  }

  v40 = MEMORY[0x193ABEC20](a4, a5);
  if (!v29)
  {
    goto LABEL_19;
  }

LABEL_17:

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v35, v25);

LABEL_31:
  v48 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v33 + 8))(v25, v37);
  v49 = _LocalizeString(v36, v39, v40, v48);

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if (v101)
  {
    v104 = v52;
    if (v29)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v35, &v112);

      LOBYTE(v110) = v112 == 0;

      v53 = v99;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v35, v99);

      v54 = v107;
    }

    else
    {
      v56 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v35);
      v53 = v99;
      if (v56)
      {
        v57 = v56[9] == 0;
      }

      else
      {
        v57 = 1;
      }

      v54 = v107;
      LOBYTE(v110) = v57;
      v70 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v35);
      if (v70)
      {
        (*(v33 + 16))(v53, &v70[*(*v70 + 248)], v54);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v71 = __swift_project_value_buffer(v54, static LocaleKey.defaultValue);
        (*(v33 + 16))(v53, v71, v54);
      }
    }

    v72 = (*(v33 + 56))(v53, 0, 1, v54);
    MEMORY[0x1EEE9AC00](v72);
    v74 = v105;
    v73 = v106;
    *(&v98 - 6) = a11;
    *(&v98 - 5) = v73;
    *(&v98 - 4) = v35;
    *(&v98 - 3) = v29;
    v97 = &v110;
    v75 = v100;
    v76 = v35;
    v77 = v53;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(partial apply for closure #1 in LocalizedStringKey.resolve<A>(into:in:options:table:bundle:), (&v98 - 8), v100);
    v78 = String.init(format:locale:arguments:)();
    v80 = v79;

    _sypSgWOhTm_3(v77, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);
    v112 = v76;
    v113 = v29;
    v111[0] = v109;
    specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(v78, v80, v74, &v112, v111, v110, v75, a11, v106);
  }

  else
  {
    v112 = v50;
    v113 = v52;
    v111[0] = v35;
    v111[1] = v29;
    v110 = v109;
    v55 = lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v112, v111, &v110, a11, MEMORY[0x1E69E6158], v106, v55);
  }
}

void LocalizedTextStorage.resolve<A>(into:in:with:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  v11 = *a2;
  v10 = v6;
  LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(a1, &v11, &v10, *(v5 + 48), *(v5 + 56), *(v5 + 64), v7, v8, v9, *(v5 + 40), a4, a5);
}

void type metadata accessor for NSInlinePresentationIntent?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t _LocalizeAttributedString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = _getBestLocalization(v9, a4);
  if (v10)
  {
    [v9 localizedAttributedStringForKey:v8 value:0 table:v7 localization:v10];
  }

  else
  {
    [v9 localizedAttributedStringForKey:v8 value:0 table:v7];
  }
  v11 = ;

  return v11;
}

id _getBestLocalization(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DF58] currentLocale];
  if ([v4 isEqual:v5])
  {

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v6 = [v4 languageIdentifier];

  if (!v6)
  {
    goto LABEL_9;
  }

  os_unfair_lock_lock(&_getBestLocalization_lock);
  v7 = _getBestLocalization_cache;
  if (!_getBestLocalization_cache)
  {
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = _getBestLocalization_cache;
    _getBestLocalization_cache = v8;

    v7 = _getBestLocalization_cache;
  }

  v10 = [v7 objectForKey:v3];
  v11 = [v4 localeIdentifier];
  v12 = [v10 objectForKey:v11];

  os_unfair_lock_unlock(&_getBestLocalization_lock);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v15 = [v3 localizations];
    v16 = MEMORY[0x1E696AAE8];
    v17 = [v4 languageIdentifier];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v19 = [v16 preferredLocalizationsFromArray:v15 forPreferences:v18];

    v13 = [v19 firstObject];
    os_unfair_lock_lock(&_getBestLocalization_lock);
    if (!v10)
    {
      v10 = objc_opt_new();
      [_getBestLocalization_cache setObject:v10 forKey:v3];
    }

    v20 = [v4 localeIdentifier];
    [v10 setObject:v13 forKeyedSubscript:v20];

    os_unfair_lock_unlock(&_getBestLocalization_lock);
  }

LABEL_10:

  return v13;
}

uint64_t ResolvedTextContainer.append(_:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *a3;
  v16[0] = *a2;
  v16[1] = v8;
  v15 = v10;
  if (v8)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v9, &v14);

    v11 = v14;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v9);
    if (v12)
    {
      v11 = v12[9];
    }

    else
    {
      v11 = 0;
    }
  }

  return (*(a5 + 72))(a1, v16, &v15, v11 == 0, a4, a5);
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.update<A>(elt:forHost:environment:isInitialUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v6 + 160) + 40))(a2, a3, a4, a5, a6, v12);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.update<A>(forHost:environment:isInitialUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = **v5;
  v9 = v6;
  return (*(v7 + 144))(&v9, a1, a2, a3, a4, a5);
}

uint64_t ViewRendererHost.performExternalUpdate(_:)(void (*a1)(void), uint64_t a2, uint64_t ObjectType, uint64_t a4)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    v6 = ViewRendererHost.enclosingHosts.getter(ObjectType, a4);
    a4 = v6;
    v7 = *(v6 + 16);
    if (!v7)
    {
LABEL_10:
      a1();
      $defer #1 <A>() in ViewRendererHost.performExternalUpdate(_:)(a4);
    }

    v8 = (v6 + 40);
    while (1)
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v10 = *(v9 + 8);
      v11 = *(v10 + 104);
      swift_unknownObjectRetain();
      v12 = v11(v16, ObjectType, v10);
      if (__OFADD__(*v13, 1))
      {
        break;
      }

      ++*v13;
      v12(v16, 0);
      swift_unknownObjectRelease();
      v8 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ViewRendererHost.enclosingHosts.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(*(a2 + 8) + 8))();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_10:
    type metadata accessor for _ContiguousArrayStorage<ViewRendererHost>();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDA6EB0;
    *(v9 + 32) = v3;
    *(v9 + 40) = a2;
    swift_unknownObjectRetain();
    return v9;
  }

  v6 = swift_conformsToProtocol2();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = ViewRendererHost.enclosingHosts.getter(ObjectType, v7);
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    v16 = *(v9 + 16);
    v15 = v11 + 1;
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v15, 1, v9);

    v12 = v15;
    v11 = v16;
  }

  else
  {

    v12 = v11 + 1;
  }

  *(v9 + 16) = v12;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = v3;
  *(v13 + 40) = a2;
  return v9;
}

void type metadata accessor for _ContiguousArrayStorage<ViewRendererHost>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ViewRendererHost>)
  {
    type metadata accessor for CustomAttributeWriter(255, &lazy cache variable for type metadata for ViewRendererHost);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewRendererHost>);
    }
  }
}

uint64_t $defer #1 <A>() in ViewRendererHost.performExternalUpdate(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = (result + 40); ; i += 2)
    {
      v3 = *i;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = *(v5 + 88);
      swift_unknownObjectRetain();
      if (v6(ObjectType, v5) < 1)
      {
        break;
      }

      v7 = (*(v5 + 104))(v9, ObjectType, v5);
      if (__OFSUB__(*v8, 1))
      {
        __break(1u);
        break;
      }

      --*v8;
      v7(v9, 0);
      result = swift_unknownObjectRelease();
      if (!--v1)
      {
        return result;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for Text.ResolvedString()
{
  result = type metadata accessor for Text.Style(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *EnvironmentValues.accessibilityEnabled.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020AccessibilityEnabledV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020AccessibilityEnabledV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020AccessibilityEnabledV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem()
{
  result = lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem;
  if (!lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem;
  if (!lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ViewTransform.ScrollGeometryItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem();
  *(a1 + 8) = result;
  return result;
}

Swift::Int one-time initialization function for hostingViewCoordinateSpace()
{
  result = AGMakeUniqueID();
  hostingViewCoordinateSpace.value.value = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceElement and conformance CoordinateSpaceElement()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement);
  }

  return result;
}

void BufferedElement.forEach(inverted:stop:_:)(char a1, _BYTE *a2, void (*a3)(float64x2_t *, _BYTE *), uint64_t a4)
{
  if ((a1 & 1) != 0 || (v9 = v4[2].f64[1], v4[2].f64[0] == 0.0) && v9 == 0.0 || (v11.f64[0] = v4[2].f64[0], v11.f64[1] = v9, v12 = 0, a3(&v11, a2), (*a2 & 1) == 0))
  {
    swift_beginAccess();
    v11 = v4[3];
    ViewTransform.UnsafeBuffer.forEach(inverted:stop:_:)(a1 & 1, a2, a3, a4);
    if (*a2 & 1) == 0 && (a1)
    {
      v10 = v4[2];
      if (v10.f64[0] != 0.0 || v10.f64[1] != 0.0)
      {
        v11 = vnegq_f64(v10);
        v12 = 0;
        a3(&v11, a2);
      }
    }
  }
}

void ViewTransform.UnsafeBuffer.forEach(inverted:stop:_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = *v4;
  v11 = *(v4 + 12);
  if (a1)
  {
    if ((v11 & 0x80000000) == 0)
    {
      v5 = 0;
      v6 = v11;
      if (v11 > 128)
      {
        goto LABEL_29;
      }

      v12.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
      v14 = &v27[-v13];
      if (!v11)
      {
LABEL_14:
        v5 = (v14 - 8);
        while (1)
        {
          if (!v6)
          {
            return;
          }

          v10 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          v4 = *v5[v6];
          v28[0] = v5[v6];
          (*(v4 + 112))(v28, 1, a2, a3, a4, v12);
          --v6;
          if (*a2 == 1)
          {
            return;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

      if (v10)
      {
        while (1)
        {
          v15 = 0;
          v16 = 0;
          v17 = v11 - 1;
          while (1)
          {
            v18 = v10 + v16;
            if (v17 == v15)
            {
              v16 = 0;
            }

            else
            {
              v16 += *(v18 + 8);
            }

            if (__OFADD__(v15, 1))
            {
              break;
            }

            *&v14[8 * v15] = v18;
            v19 = v15 + 1;
            if (v17 == v15++)
            {
              v15 = v19;
              if (!v16)
              {
                goto LABEL_14;
              }
            }
          }

LABEL_28:
          __break(1u);
LABEL_29:
          v4 = *(v4 + 8);
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if (!isStackAllocationSafe)
          {
            break;
          }

          v12.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v14 = &v27[-v25];
          if (!v10)
          {
            goto LABEL_31;
          }
        }

LABEL_33:
        v26 = swift_slowAlloc();
        closure #1 in ViewTransform.UnsafeBuffer.forEach(inverted:stop:_:)(v26, v6, v10, v4 | (v11 << 32), a2, a3, a4);
        if (v5)
        {

          MEMORY[0x193AC4820](v26, -1, -1);
          __break(1u);
        }

        JUMPOUT(0x193AC4820);
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v21 = 0;
  do
  {
    if (!(v11 | v21))
    {
      break;
    }

    if (!v10)
    {
      __break(1u);
    }

    v23 = v10 + v21;
    LODWORD(v11) = v11 - 1;
    if (v11)
    {
      v21 += *(v23 + 8);
    }

    else
    {
      v21 = 0;
    }

    v22 = *v23;
    v28[0] = v23;
    (*(v22 + 112))(v28, 0, a2, a3, a4);
  }

  while ((*a2 & 1) == 0);
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.forEach(elt:inverted:stop:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 136);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *v14;
  v15 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  (*(v11 + 16))(v13, v15, v10);
  (*(*(v5 + 144) + 16))(a2, a3, a4, a5, v10);
  return (*(v11 + 8))(v13, v10);
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance CoordinateSpaceElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5[0] = *v3;
  v6 = 96;
  return a3(v5);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance ViewTransform.ScrollGeometryItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v4 = *(v3 + 112);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v6;
  v7 = *(v3 + 80);
  v9[4] = *(v3 + 64);
  v9[5] = v7;
  v9[6] = *(v3 + 96);
  v10 = v4 & 1 | 0xA0;
  return a3(v9);
}

uint64_t ViewTransform.UnsafeBuffer.appendScrollGeometry(_:isClipped:)(_OWORD *a1, char a2)
{
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<ViewTransform.ScrollGeometryItem>, lazy protocol witness table accessor for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem, &type metadata for ViewTransform.ScrollGeometryItem, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(144);
  *result = v6;
  *(result + 8) = 144;
  v8 = a1[1];
  *(result + 16) = *a1;
  *(result + 32) = v8;
  v9 = a1[6];
  *(result + 96) = a1[5];
  *(result + 112) = v9;
  v10 = a1[4];
  *(result + 64) = a1[3];
  *(result + 80) = v10;
  *(result + 48) = a1[2];
  *(result + 128) = a2;
  if (!*v2)
  {
    goto LABEL_9;
  }

  v11 = result - *v2;
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {
    v12 = *(v2 + 12);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *(v2 + 12) = v14;
      return result;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void *ViewTransform.UnsafeBuffer.appendCoordinateSpace(id:transform:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v24[0] = *a1;
  v25 = 1;
  v5 = *(a2 + 8);
  *&v20 = *a2;
  *(&v20 + 1) = v5;
  v6 = *(a2 + 32);
  *v21 = *(a2 + 16);
  *&v21[16] = v6;

  ViewTransform.coordinateSpaceTag(_:)(v24, &v22);

  if ((v23 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v24, &v20);
  type metadata accessor for CoordinateSpaceNode();
  v7 = swift_allocObject();
  v8 = v7;
  v9 = *v21;
  *(v7 + 24) = v20;
  *(v7 + 40) = v9;
  *(v7 + 49) = *&v21[9];
  *(v7 + 16) = v5;
  if (v5)
  {
    v10 = *(v5 + 72);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v13 = v22;
    outlined destroy of CoordinateSpace(v24);
    goto LABEL_9;
  }

  v12 = 1;
LABEL_8:
  *(v7 + 72) = v12;
  *(a2 + 8) = v7;
  outlined destroy of CoordinateSpace(v24);
  v13 = *(v8 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<CoordinateSpaceElement>, lazy protocol witness table accessor for type CoordinateSpaceElement and conformance CoordinateSpaceElement, &type metadata for CoordinateSpaceElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
  v15 = v14;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(32);
  *result = v15;
  result[1] = 32;
  result[2] = v13;
  if (*v3)
  {
    v17 = result - *v3;
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      v18 = *(v3 + 12);
      v11 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (!v11)
      {
        *(v3 + 12) = v19;
        return result;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *ViewTransform.append(movingContentsOf:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *a1;
  type metadata accessor for BufferedElement();
  result = swift_allocObject();
  result[4] = v4;
  result[5] = v5;
  result[6] = v6;
  result[7] = a1[1];
  result[2] = v3;
  if (v3)
  {
    v8 = *(v3 + 24);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (!v9)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v10 = 1;
LABEL_6:
  result[3] = v10;
  *v1 = result;
  v1[4] = 0;
  v1[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.moveInitialize(elt:from:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v11 = *v7;
  v8 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v11 = v6;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  UnsafeMutablePointer.move()();
  return _sSpsRi_zrlE10initialize2toyxn_tF(v4, v8, v2);
}

unint64_t instantiation function for generic protocol witness table for CoordinateSpaceElement(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CoordinateSpaceElement and conformance CoordinateSpaceElement();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(Swift::UInt32 a1, uint64_t a2)
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = result | (result << 32);

    specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v2, v7, a1, v6, a2);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = result | (result << 32);

    specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v2, v7, a1, v6, a2);
  }

  return result;
}

uint64_t specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5)
{
  v19[39] = *MEMORY[0x1E69E9840];
  v15[5] = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for ViewLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);
      v19[0] = v9;
      v19[1] = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA014GeometryReaderD033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt3B5(a3, a4, a5, v19);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVG_Tt1B5(v19, v15);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v19[39] = *MEMORY[0x1E69E9840];
  v15[5] = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for ViewLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);
      v19[0] = v9;
      v19[1] = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA014GeometryReaderD033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt3B5(a3, a4, a5, v19);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVG_Tt1B5(v19, v15);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA014GeometryReaderD033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt3B5@<X0>(Swift::UInt32 a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 1;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 1;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 1;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(a4 + 304) = 0;
  *(a4 + 232) = 0;
  *(a4 + 240) = 0;
  *(a4 + 224) = v5;
  *(a4 + 248) = 0;
  *(a4 + 256) = 0;
  *(a4 + 264) = 0;
  *(a4 + 272) = 0;
  *(a4 + 280) = 0;
  *(a4 + 288) = 0;
  *(a4 + 296) = 0;
  *a4 = a2;
  *(a4 + 8) = a3;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v6 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a4 + 16) = v6;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>();
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 328) = v7;
    *(v4 + 332) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>();
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x138uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for ViewLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>);
    }
  }
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance GeometryReaderLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

uint64_t specialized GeometryReaderLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(result + 8);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return result;
  }

  v11 = 0;
  v12 = *result;
  v13 = *(result + 16);
  v14 = *(result + 17);
  for (i = (v5 + 32); ; i += 3)
  {
    v19 = *(v5 + 16);
    if (v13)
    {
      break;
    }

    if (v11 >= v19)
    {
      goto LABEL_11;
    }

    v21 = (v5 + 32 + 8 * v11);
    v20 = v11;
LABEL_3:
    ++v11;
    v18 = v21;
    v16 = *v21;
    v17 = v18[1];
    v32 = v12;
    v33 = v16;
    v34 = v17;
    v35 = v20;
    v36 = v14;
    v26 = v12;
    v27 = v16;
    v28 = v17;
    v22 = a4;
    LOBYTE(v23) = 0;
    *&v24 = a5;
    BYTE8(v24) = 0;
    LayoutProxy.dimensions(in:)(&v22, v29);
    v22 = *v29;
    v23 = v29[1];
    v24 = v30;
    v25 = v31;
    LayoutSubview.place(at:anchor:dimensions:)(&v22, a2, a3, 0.0, 0.0);

    if (v6 == v11)
    {
      return result;
    }
  }

  if (v11 < v19)
  {
    v20 = i[2];
    v21 = i;
    goto LABEL_3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t FluidSpringAnimation.animate<A>(value:time:context:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = a1;
  v89 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v81 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v81 - v24;
  v25 = type metadata accessor for SpringState();
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v81 - v27;
  if (a3 == MEMORY[0x1E69E63B0])
  {
    result = specialized FluidSpringAnimation.animate<A>(value:time:context:)(a2, *v11, a6, *v6, v6[1], v6[2]);
    *a5 = result;
    *(a5 + 8) = v44 & 1;
    return result;
  }

  v90 = a2;
  v87 = a5;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v29 == a3)
  {
    result = specialized FluidSpringAnimation.animate<A>(value:time:context:)(v90, &v105, *v11, v11[1], v11[2], v11[3], a6, *v6, v6[1], v6[2]);
    v45 = v106;
    v46 = v87;
    *v87 = v105;
    v46[1] = v45;
    *(v46 + 32) = v107;
    return result;
  }

  v31 = *v6;
  v30 = v6[1];
  v32 = v6[2];
  v85 = type metadata accessor for AnimationContext();
  AnimationContext.springState.getter();
  v33 = v31;
  if (v32 > 0.0)
  {
    v34 = *&v28[v25[14]];
    v33 = v31;
    if (v34 != 0.0)
    {
      v35 = v25[13];
      v36 = (a6 - *&v28[v35]) / v32;
      if (v36 <= 1.0)
      {
        v37 = (a6 - *&v28[v35]) / v32;
      }

      else
      {
        v37 = 1.0;
      }

      v38 = v36 < 0.0;
      v39 = 0.0;
      if (!v38)
      {
        v39 = v37;
      }

      v33 = v31 + v34 * (1.0 - v39 * v39 * (3.0 - (v39 + v39)));
    }
  }

  v40 = v89;
  v41 = v88;
  if (v33 <= 0.0)
  {
    v42 = INFINITY;
  }

  else
  {
    v42 = 6.28318531 / v33 * (6.28318531 / v33);
  }

  if (v42 <= 45000.0)
  {
    v47 = v42;
  }

  else
  {
    v47 = 45000.0;
  }

  if (v33 <= a6 - *&v28[v25[12]])
  {
    *(v90 + 17) = 1;
  }

  v84 = v14;
  v48 = v25[11];
  v49 = *&v28[v48];
  if (a6 - v49 > 1.0)
  {
    v49 = a6 + -0.0166666667;
    *&v28[v48] = a6 + -0.0166666667;
  }

  v86 = v26;
  v97 = v11;
  if (v49 < a6)
  {
    v81 = v48;
    v50 = *(a4 + 16);
    v95 = a4 + 16;
    v98 = v50;
    v100 = v25[10];
    v83 = v25;
    v99 = v25[9];
    v82 = v30;
    v51 = v30 * (sqrt(v47) * -2.0);
    v96 = a4;
    v93 = *(v40 + 16);
    v92 = (v40 + 24);
    v94 = v40 + 16;
    v91 = (v40 + 8);
    v52 = v104;
    v53 = a4;
    do
    {
      v54 = &v28[v100];
      v55 = v28;
      v56 = v93;
      (v93)(v52, v54, a3);
      v57 = v98;
      v98(a3, v53, 0.00166666667);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v56();
      v57(a3, v53, 0.00333333333);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v58 = v102;
      (v56)(v102, v104, a3);
      v57(a3, v53, v51);
      (v56)(v103, v97, a3);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v57(a3, v53, v47);
      v28 = v55;
      v59 = *v92;
      v60 = v100;
      (*v92)(&v55[v100], v58, a3);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v59(&v28[v99], &v28[v60], a3);
      v61 = v103;
      v98(a3, v53, 0.00166666667);
      v52 = v104;
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v62 = *v91;
      (*v91)(v61, a3);
      v62(v102, a3);
      v62(v101, a3);
      v62(v52, a3);
      v49 = v49 + 0.00333333333;
    }

    while (v49 < a6);
    *&v55[v81] = v49;
    v40 = v89;
    v41 = v88;
    v25 = v83;
    a4 = v96;
    v11 = v97;
    v30 = v82;
  }

  v63 = v25;
  v64 = v40;
  v65 = v85;
  v66 = v90;
  specialized AnimationContext.springState.setter(v28);
  v67 = *(v64 + 16);
  v103 = (v64 + 16);
  v104 = v67;
  (v67)(v41, v11, a3);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v68 = *(v66 + 8);
  v69 = *(v66 + 16);
  v70 = *(v66 + 17);
  *&v105 = *v66;
  *(&v105 + 1) = v68;
  LOBYTE(v106) = v69;
  BYTE1(v106) = v70;
  MEMORY[0x1EEE9AC00](v105);
  *(&v81 - 8) = a3;
  *(&v81 - 7) = a4;
  *(&v81 - 6) = v41;
  *(&v81 - 5) = v28;
  *(&v81 - 4) = v31;
  *(&v81 - 3) = v30;
  *(&v81 - 2) = v32;

  LOBYTE(v66) = AnimationContext.shouldFinishEarly(data:)(partial apply for implicit closure #2 in FluidSpringAnimation.animate<A>(value:time:context:), (&v81 - 10), v65);

  if (v66)
  {
    (*(v64 + 56))(v87, 1, 1, a3);
    (*(v64 + 8))(v41, a3);
    return (*(v86 + 8))(v28, v63);
  }

  v71 = *(a4 + 24);
  v72 = v71(a3, a4);
  v73 = v71(a3, a4);
  if (v72 > v73)
  {
    v73 = v72;
  }

  if (v73 <= 0.0036)
  {
    v102 = v28;
    v75 = v84;
    (v104)(v84, v97, a3);
    (*(a4 + 16))(a3, a4, 0.01);
    v76 = v71(a3, a4);
    if (v76 <= 0.0)
    {
      v79 = *(v64 + 8);
      v79(v75, a3);
    }

    else
    {
      v77 = v76;
      v78 = v71(a3, a4);
      v79 = *(v64 + 8);
      v79(v75, a3);
      if (v77 < v78)
      {
        v80 = v87;
        v28 = v102;
        (v104)(v87, v102, a3);
        (*(v64 + 56))(v80, 0, 1, a3);
        v79(v41, a3);
        return (*(v86 + 8))(v28, v63);
      }
    }

    (*(v64 + 56))(v87, 1, 1, a3);
    v79(v41, a3);
    return (*(v86 + 8))(v102, v63);
  }

  else
  {
    v74 = v87;
    (v104)(v87, v28, a3);
    (*(v64 + 56))(v74, 0, 1, a3);
    (*(v64 + 8))(v41, a3);
    return (*(v86 + 8))(v28, v63);
  }
}

uint64_t AnimationContext.springState.getter()
{
  v0 = type metadata accessor for SpringState();
  v1 = type metadata accessor for AnimationState();
  WitnessTable = swift_getWitnessTable();
  return AnimationState.subscript.getter(v0, v1, v0, WitnessTable);
}

uint64_t AnimationState.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  if (!*(v7 + 16))
  {
    return (*(a4 + 16))(a3, a4);
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v9 & 1) == 0)
  {
    return (*(a4 + 16))(a3, a4);
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v8, v11);
  outlined init with take of Any(v11, v12);
  outlined init with take of Any(v12, v11);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t specialized AnimationContext.springState.setter(uint64_t a1)
{
  v2 = type metadata accessor for SpringState();
  v3 = type metadata accessor for AnimationState();
  swift_getWitnessTable();

  return specialized AnimationState.subscript.setter(a1, v2, v3, v2);
}

uint64_t specialized AnimationState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  return specialized Dictionary.subscript.setter(v9, a4);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (*(v19 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (*(v19 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    result = a3(v23, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v21;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CA0];
    outlined destroy of NamedImage.VectorInfo?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    v16 = a4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v22 = *v7;
      if (!v19)
      {
        a6();
        v20 = v22;
      }

      outlined init with take of Any((*(v20 + 56) + 32 * v18), v23);
      a5(v18, v20);
      *v7 = v20;
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    return outlined destroy of NamedImage.VectorInfo?(v23, &lazy cache variable for type metadata for Any?, v15 + 8);
  }

  return result;
}

void *Animation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (a4 == MEMORY[0x1E69E63B0])
  {
    *&v23[0] = *a1;
    result = (*(*a3 + 120))(v24, v23, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double);
    v16 = BYTE8(v24[0]);
    *a6 = *&v24[0];
    *(a6 + 8) = v16;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v14 == a4)
    {
      v17 = v14;
      v18 = *(a1 + 16);
      v23[0] = *a1;
      v23[1] = v18;
      v19 = *(*a3 + 120);
      v20 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      result = v19(v24, v23, a2, v17, v20, a7);
      v21 = v25;
      v22 = v24[1];
      *a6 = v24[0];
      *(a6 + 16) = v22;
      *(a6 + 32) = v21;
    }

    else
    {
      return (*(*a3 + 120))(a1, a2, a4, a5, a7);
    }
  }

  return result;
}

void AnimationBox.animate<A>(value:time:context:)(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *v5;
  v12 = *(*v5 + 160);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v22 - v15;
  if (v17 == MEMORY[0x1E69E63B0])
  {
    *a4 = specialized AnimationBox.animate<A>(value:time:context:)(a2, *a1, a5);
    *(a4 + 8) = v20 & 1;
  }

  else
  {
    v18 = v14;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v19 == a3)
    {
      specialized AnimationBox.animate<A>(value:time:context:)(a2, v23, a5);
      v21 = v23[1];
      *a4 = v23[0];
      *(a4 + 16) = v21;
      *(a4 + 32) = v24;
    }

    else
    {
      (*(v13 + 16))(v16, v5 + *(v11 + 176), v12);
      (*(*(v11 + 168) + 16))(a1, a2, a3, v18, v12, a5);
      (*(v13 + 8))(v16, v12);
    }
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t type metadata completion function for SpringState()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation()
{
  result = lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation;
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation;
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation;
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation;
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }

  return result;
}

uint64_t Transaction.animation.setter(uint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1, a1);
}

uint64_t SpringState.init()@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v2 = type metadata accessor for SpringState();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  result = dispatch thunk of static AdditiveArithmetic.zero.getter();
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  return result;
}

double *static Animation.spring(response:dampingFraction:blendDuration:)(double a1, double a2, double a3)
{
  type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation, type metadata accessor for InternalAnimationBox);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for FluidSpringAnimation, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for FluidSpringAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ImageProviderBox<Image.ResizableProvider>()
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.ResizableProvider>)
  {
    lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider();
    v0 = type metadata accessor for ImageProviderBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImageProviderBox<Image.ResizableProvider>);
    }
  }
}

uint64_t Image.resizable(capInsets:resizingMode:)(char *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *a1;
  type metadata accessor for ImageProviderBox<Image.ResizableProvider>();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = v11;

  return v12;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider()
{
  result = lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider;
  if (!lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider;
  if (!lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.ResizableProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Color and conformance Color()
{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

uint64_t Color.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8(0, v5);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  swift_getWitnessTable();
  type metadata accessor for ColorBox();
  (*(v4 + 16))(v7, a1, a2);
  (*(v4 + 32))(v11, v7, a2);
  v12 = ColorBox.__allocating_init(_:)(v11);
  (*(v4 + 8))(a1, a2);
  return v12;
}

{
  return Color.init<A>(_:)(a1, a2);
}

{
  return Color.init<A>(_:)(a1, a2);
}

uint64_t type metadata completion function for ProtobufCodable()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CustomColorProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ObjectIdentifier, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(i, &v11, &lazy cache variable for type metadata for (ObjectIdentifier, Any));
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t wait_for_lock(pthread_mutex_t *a1, uint64_t a2)
{
  ++HIDWORD(a1[2].__sig);
  if (*&a1[1].__opaque[40] == a2)
  {
    a1[2].__opaque[17] = 1;
    run_moved_callback(a1);
  }

  result = pthread_cond_wait(&a1[1], a1);
  if (*&a1[1].__opaque[40] == a2)
  {
    result = run_moved_callback(a1);
    a1[2].__opaque[17] = 0;
  }

  --HIDWORD(a1[2].__sig);
  return result;
}

uint64_t run_moved_callback(uint64_t result)
{
  v1 = (result + 136);
  if (*(result + 136))
  {
    v2 = result;
    v3 = atomic_load((result + 120));
    v4 = *(result + 128);
    *(result + 120) = *(result + 112);
    *(result + 128) = v4 + 1;
    (*(result + 136))(*(result + 144));
    *(v2 + 128) = v4;
    *(v2 + 120) = v3;
    *v1 = 0;
    v1[1] = 0;

    return pthread_cond_broadcast((v2 + 64));
  }

  return result;
}

void one-time initialization function for default()
{
  static ContentTransition.default = 0x8000000000;
  byte_1ED53699C = 3;
  dword_1ED536998 = 0x2000000;
  *&byte_1ED53699D = 0;
}

uint64_t _ForegroundStyleModifier.ForegroundStyleEnvironment.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for _ForegroundStyleModifier();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  MaterialView.ChildEnvironment.environment.getter(a3);
  _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.modifier.getter(type metadata accessor for _ForegroundStyleModifier, v8);
  v9 = *a3;
  v10 = a3[1];
  v15[0] = *a3;
  v15[1] = v10;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v14);

  v11 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v14, v15, 0, a1, a2);

  (*(*(a1 - 8) + 8))(v8, a1);
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a3, v11);

  if (v10)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v9, *a3);
  }
}

uint64_t _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.modifier.getter@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

double LeafLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  (*(v19 + 16))(v6, v3, a2, v11);
  v20 = *(v9 + 32);
  v62 = v8;
  v20(v13, v6, v8);
  v21 = v3 + *(a2 + 36);
  v22 = v15;
  v23 = *v21;
  v24 = *(v21 + 8);
  v26 = *(v21 + 16);
  v25 = *(v21 + 24);
  v28 = *(v21 + 32);
  v27 = *(v21 + 40);
  v29 = *(v21 + 48);
  v30 = *(v21 + 72);
  v31 = *(v21 + 56);
  v33 = *(v21 + 88);
  v32 = *(v21 + 96);
  v34 = *(v21 + 144);
  if ((v29 & 1) == 0)
  {
    if (v16)
    {
      if ((v24 & 1) == 0)
      {
        if (*(v21 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((*(v21 + 64) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v24 & 1) != 0 || v15 != v23)
    {
      goto LABEL_2;
    }

    if (v18)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v25 & 1) != 0 || v17 != v26)
    {
      goto LABEL_2;
    }

    v34 = *(v21 + 32);
    goto LABEL_39;
  }

LABEL_2:
  if (*(v21 + 104))
  {
    goto LABEL_22;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  if ((*(v21 + 64) & 1) != 0 || *&v31 != v15)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v18)
  {
    if (*(v21 + 80))
    {
LABEL_21:
      v34 = *(v21 + 88);
      goto LABEL_39;
    }
  }

  else if ((*(v21 + 80) & 1) == 0 && *&v30 == v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v21 + 160))
  {
LABEL_23:
    v51 = *(v21 + 104);
    v52 = v30;
    v53 = v31;
    v54 = v32;
    v56 = v29;
    v57 = v25;
    v58 = v26;
    v59 = v24;
    v60 = v27;
    v55 = v23;
    v61 = v9;
    v35 = v28;
    v36 = v17;
    v37 = v22;
    swift_beginAccess();
    v38 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v38[4] = v37;
      *(v38 + 5) = v16;
      v38[6] = v36;
      *(v38 + 28) = v18;
    }

    v39 = *(a2 + 24);
    v63 = v18;
    v64 = v37;
    v65 = v16;
    v66 = v36;
    v67 = v18;
    v40 = v62;
    v34 = (*(v39 + 16))(&v64, v62);
    v41 = v52;
    *(v21 + 112) = v53;
    *(v21 + 128) = v41;
    v42 = v54;
    *(v21 + 144) = v33;
    *(v21 + 152) = v42;
    *(v21 + 160) = v51;
    v44 = v58;
    v43 = v59;
    *(v21 + 56) = v55;
    *(v21 + 64) = v43;
    v45 = v57;
    *(v21 + 72) = v44;
    *(v21 + 80) = v45;
    v46 = v60;
    *(v21 + 88) = v35;
    *(v21 + 96) = v46;
    *(v21 + 104) = v56;
    *v21 = v37;
    *(v21 + 8) = v16;
    *(v21 + 16) = v36;
    *(v21 + 24) = v18;
    *(v21 + 32) = v34;
    *(v21 + 40) = v47;
    *(v21 + 48) = 0;
    v9 = v61;
    goto LABEL_42;
  }

  if (v16)
  {
    if ((*(v21 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v21 + 120) & 1) != 0 || *(v21 + 112) != v15)
  {
    goto LABEL_23;
  }

  if (v18)
  {
    if ((*(v21 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v21 + 136) & 1) != 0 || *(v21 + 128) != v17)
  {
    goto LABEL_23;
  }

LABEL_39:
  swift_beginAccess();
  v48 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v48[4] = v15;
    *(v48 + 5) = v16;
    v48[6] = v17;
    *(v48 + 28) = v18 | 0x100;
  }

  v40 = v62;
LABEL_42:
  (*(v9 + 8))(v13, v40);
  return v34;
}

uint64_t static _ForegroundStyleModifier.graphInputsSemantics.getter()
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  return static Semantics.v4;
}

uint64_t static _ForegroundStyleModifier._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static _DefaultForegroundStyleModifier._makeViewInputs(modifier:inputs:)(a1, a2, a3, a4, type metadata accessor for _ForegroundStyleModifier.ForegroundStyleEnvironment, &protocol conformance descriptor for _ForegroundStyleModifier<A>.ForegroundStyleEnvironment, closure #1 in Attribute.init<A>(_:)partial apply);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ForegroundStyleModifier<A>.ForegroundStyleEnvironment()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for _ForegroundStyleModifier<A>.ForegroundStyleEnvironment(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AspectRatioLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _AspectRatioLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _AspectRatioLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout()
{
  result = lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout;
  if (!lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout;
  if (!lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Image.Resolved(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 187))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

unint64_t instantiation function for generic protocol witness table for Circle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Circle and conformance Circle();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Circle and conformance Circle();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Circle and conformance Circle();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance Image.ImageViewChild<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t sub_18D11D520(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>()
{
  result = lazy protocol witness table cache variable for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>;
  if (!lazy protocol witness table cache variable for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledResponderFilter<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderFilter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>);
  }

  return result;
}

void static Image._makeView(view:inputs:)(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 40);
  v21 = *(a2 + 24);
  v22 = v7;
  v23[0] = *(a2 + 56);
  *(v23 + 12) = *(a2 + 68);
  v20 = *(a2 + 8);
  if ((_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v6) & 1) != 0 && (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v6) & 1) == 0)
  {
    type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
    v15 = v6;
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v19[0] = *(a2 + 56);
    *(v19 + 12) = *(a2 + 68);
    v16 = *(a2 + 8);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    static PlatformScrollEdgeEffectTagDefinition.apply(inputs:body:)(&v15, partial apply for closure #1 in static Image._makeView(view:inputs:), v9, &v13);

    if (v13)
    {
      v10 = v14;
      v11 = HIDWORD(v14);
      *a3 = v13;
      *(a3 + 8) = v10;
      *(a3 + 12) = v11;
      return;
    }

    v12 = v5;
    v15 = v6;
    v17 = v21;
    v18 = v22;
    v19[0] = v23[0];
    *(v19 + 12) = *(v23 + 12);
    v16 = v20;
    v8 = &v12;
  }

  else
  {
    LODWORD(v13) = v5;
    v15 = v6;
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v19[0] = *(a2 + 56);
    *(v19 + 12) = *(a2 + 68);
    v16 = *(a2 + 8);
    v8 = &v13;
  }

  static Image.makeImageAttributes(view:inputs:)(v8, &v15, a3);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA5ImageV5StyleV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for Image.Style);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(v4, v7) || (type metadata accessor for Stack<ImageStyleProtocol.Type>(), result = AGCompareValues(), !result))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<Image.Style>, &type metadata for Image.Style, &protocol witness table for Image.Style, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for Image.Style, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA5ImageV5StyleV_AA0jK8Protocol_pXpTt0g5()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for Image.Style);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(v1, v7);
  if (v2 && (v3 = *(v2 + 72)) != 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA5ImageV5StyleV_Tt2B5(v0, v4);

  return v5;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for Image.Style)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ImageAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE026ImageAccessibilityProviderV033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.ImageAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

double static Image.makeImageViewChild<A>(_:image:options:inputs:outputs:)(uint64_t a1, int a2, char *a3, __int128 *a4, double *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v34 = a2;
  v76 = *MEMORY[0x1E69E9840];
  v36 = a5;

  v10 = *a3;
  v11 = a4[1];
  v73 = *a4;
  v74 = v11;
  v12 = a4[3];
  *v75 = a4[2];
  *&v75[16] = v12;
  *&v75[32] = a4[4];
  *&v75[48] = *(a4 + 20);
  v33 = HIDWORD(v74);
  swift_beginAccess();
  v13 = *(v74 + 16);
  v41 = v10;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v73, *&v71[0]);
  v35 = *&v75[4];
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  v16 = *&v75[40];
  v18 = *&v75[28];
  v17 = *&v75[32];
  LODWORD(v61[0]) = v15;
  _SymbolEffect.Phase.init()(v71);
  v32[5] = a7;
  Image.ImageViewChild.init(view:environment:transaction:position:size:transform:options:parentID:symbolAnimator:symbolEffects:)(v34, v13, v33, v17, v16, v18, &v41, v61, &v68, 0, v71);
  MEMORY[0x1EEE9AC00](v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[2] = AssociatedTypeWitness;
  v21 = type metadata accessor for Image.ImageViewChild();
  v32[3] = v21;
  v32[4] = swift_getWitnessTable();
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v32, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v71[3] = v70[1];
  v71[4] = v70[2];
  v72[0] = v70[3];
  *(v72 + 14) = *(&v70[3] + 14);
  v71[0] = v68;
  v71[1] = v69;
  v71[2] = v70[0];
  (*(*(v21 - 8) + 8))(v71, v21);
  v24 = LODWORD(v61[0]);
  v25 = v35;
  if ((v35 & 0x20) != 0)
  {
    _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v75[16]);
  }

  AGGraphSetFlags();
  v65 = v73;
  v66 = v74;
  v67 = *v75;
  v63 = *&v75[8];
  v64[0] = *&v75[24];
  *(v64 + 12) = *&v75[36];
  _GraphValue.init(_:)(v24, &v38);
  v26 = v38;
  v68 = v65;
  v69 = v66;
  LODWORD(v70[0]) = v67;
  v35 = v25 | 0x2000;
  DWORD1(v70[0]) = v25 | 0x2000;
  *(v70 + 8) = v63;
  *(&v70[1] + 8) = v64[0];
  *(&v70[2] + 4) = *(v64 + 12);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(&v73, v61);
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v55 = v70[0];
  v56 = v70[1];
  v57 = v70[2];
  v58 = v70[3];
  v53 = v68;
  v54 = v69;
  v60 = v70[3];
  v34 = v70[0];
  LODWORD(v55) = 0;
  LODWORD(v42[0]) = v26;
  v59[0] = v68;
  v59[1] = v69;
  v59[3] = v70[1];
  v59[4] = v70[2];
  v59[2] = v55;
  v49 = v55;
  v50 = v70[1];
  v51 = v70[2];
  v52 = v70[3];
  v47 = v68;
  v48 = v69;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v68, v61);
  outlined init with copy of _ViewInputs(v59, v61);
  v29(&v39, v42, &v47, AssociatedTypeWitness, AssociatedConformanceWitness);
  v61[2] = v49;
  v61[3] = v50;
  v61[4] = v51;
  v62 = v52;
  v61[0] = v47;
  v61[1] = v48;
  outlined destroy of _ViewInputs(v61);
  LODWORD(v55) = v34;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v39, &v53);
    AGSubgraphEndTreeElement();
  }

  v42[0] = v65;
  v42[1] = v66;
  v43 = v67;
  v44 = v35;
  v45 = v63;
  v46[0] = v64[0];
  *(v46 + 12) = *(v64 + 12);
  outlined destroy of _ViewInputs(v42);
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v47 = v53;
  v48 = v54;
  outlined destroy of _ViewInputs(&v47);
  v30 = v36;
  *v36 = v39;
  result = v40;
  v30[1] = v40;
  return result;
}

void _SymbolEffect.Phase.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 41) = 1;
  *(a1 + 44) = 1065353216;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 257;
}

uint64_t initializeWithCopy for Image.ImageViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 108) = *(a2 + 108);

  v4 = v3;

  return a1;
}

uint64_t destroy for Image.ImageViewChild(uint64_t a1)
{
}

uint64_t static Image.Resolved._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v166 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v162 = *(a2 + 32);
  v163 = v5;
  v164 = *(a2 + 64);
  v6 = *(a2 + 16);
  v160 = *a2;
  v161 = v6;
  v7 = *a1;
  v165 = *(a2 + 80);
  v153 = v160;
  v154 = v6;
  v155 = *(a2 + 32);
  v152[0] = *(a2 + 40);
  *(v152 + 12) = *(a2 + 52);
  v8 = DWORD1(v162);
  v9 = DWORD1(v164);
  v10 = a2 + 72;
  v102 = *(a2 + 72);
  v103 = *(a2 + 80);
  if ((BYTE4(v162) & 2) != 0)
  {
    outlined init with copy of _ViewInputs(&v160, &v127);
    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    v12 = static Semantics_v2.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      v11 = dyld_program_sdk_at_least();
    }

    else
    {
      v11 = static Semantics.forced >= v12;
    }

    v13 = v8 & 0xFFFFFFFD;
    if (!v11)
    {
      v13 = v8;
    }

    v93 = v13;
  }

  else
  {
    outlined init with copy of _ViewInputs(&v160, &v127);
    v11 = 0;
    v93 = v8;
  }

  v14 = v163;
  v94 = v7;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v163) & 1) != 0 || (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v14))
  {
    v87 = v11;
    v91 = v9;
    v89 = DWORD2(v160);
    v90 = v164;
    v15 = DWORD2(v164);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v16 = static CachedEnvironment.ID.pixelLength;
    v17 = v161;
    swift_beginAccess();
    v85 = specialized CachedEnvironment.attribute<A>(id:_:)(v16);
    swift_endAccess();
    v18 = v160;
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v18, v127);
    if (v19)
    {
      v20 = (v19 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v20 = &static ArchivedViewInput.defaultValue;
    }

    v88 = a3;
    if (*v20)
    {
      v38 = *(v17 + 16);
      if (one-time initialization token for fadeIfDifferent != -1)
      {
        swift_once();
      }

      v39 = static ContentTransition.fadeIfDifferent;
      v40 = dword_1ED527B40 | (word_1ED527B44 << 32);
      v41 = HIBYTE(word_1ED527B44);
      LODWORD(v127) = v38;
      *(&v127 + 1) = static ContentTransition.fadeIfDifferent;
      WORD2(v128) = word_1ED527B44;
      LODWORD(v128) = dword_1ED527B40;
      BYTE6(v128) = byte_1ED527B46;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined copy of ContentTransition.Storage(v39, v40, v41);
      lazy protocol witness table accessor for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init();
      v42 = Attribute.init<A>(body:value:flags:update:)();
      outlined consume of ContentTransition.Storage(v39, v40, v41);
      LODWORD(v39) = AGGraphCreateOffsetAttribute2();
      v129 = v162;
      *v130 = v163;
      *&v130[16] = v164;
      *&v130[32] = v165;
      v127 = v160;
      v128 = v161;
      LOBYTE(v156) = 1;
      swift_beginAccess();
      LOBYTE(v146) = 0;
      v43 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v127, &v156, v39);
      swift_endAccess();
      v44 = *(a2 + 16);
      v118 = *a2;
      v119 = v44;
      *v120 = *(a2 + 32);
      v9 = v91;
      *&v120[4] = v93;
      *&v120[8] = *(a2 + 40);
      *&v120[20] = *(a2 + 52);
      *&v120[36] = v91;
      *&v120[40] = *v10;
      LODWORD(v121) = *(v10 + 8);
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v84 = v42;
      v148 = *v120;
      v149 = *&v120[16];
      v150 = *&v120[32];
      v151 = v121;
      v146 = v118;
      v147 = v119;
      v46 = *v120;
      LODWORD(v148) = 0;
      v157 = v119;
      v156 = v118;
      v159 = v121;
      *&v158[32] = *&v120[32];
      *&v158[16] = *&v120[16];
      *v158 = v148;
      v114 = v148;
      v115 = *&v120[16];
      v116 = *&v120[32];
      v112 = v118;
      v113 = v119;
      v97 = *&v120[40];
      v98 = v121;
      v47 = *&v120[36];
      v48 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v120[16]);
      if (v48)
      {
        v129 = *v158;
        *v130 = *&v158[16];
        *&v130[16] = *&v158[32];
        *&v130[32] = v159;
        v127 = v156;
        v128 = v157;
        swift_beginAccess();
        outlined init with copy of _ViewInputs(&v156, &v106);
        outlined init with copy of _ViewInputs(&v156, &v106);
        outlined init with copy of _ViewInputs(&v118, &v106);
        v47 = CachedEnvironment.animatedPosition(for:)(&v127);
        swift_endAccess();
      }

      else
      {
        outlined init with copy of _ViewInputs(&v156, &v127);
        outlined init with copy of _ViewInputs(&v156, &v127);
        outlined init with copy of _ViewInputs(&v118, &v127);
      }

      v129 = v114;
      *v130 = v115;
      v127 = v112;
      v128 = v113;
      *&v130[16] = v116;
      *&v130[20] = v47;
      *&v130[24] = v97;
      *&v130[32] = v98;
      outlined init with copy of _ViewInputs(&v127, &v106);
      _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA5ImageVAAE8ResolvedV_Tt5B5(v94, &v127, v43, 0, v89 | (v90 << 32), v15 | (v85 << 32), 0, &v95);
      outlined destroy of _ViewInputs(&v127);
      if (v48)
      {
        v50 = ++lastIdentity;
        v51 = v156;
        if (v158[5])
        {
          _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v156, &v106);
          result = AGWeakAttributeGetAttribute();
          v52 = *MEMORY[0x1E698D3F8];
          if (result == *MEMORY[0x1E698D3F8])
          {
            __break(1u);
            return result;
          }

          LODWORD(v104[0]) = v50;
          v77 = Attribute<A>.subscript.modify();
          _DisplayList_StableIdentityScope.pushIdentity(_:)(v104);
          v77(&v106, 0);
        }

        else
        {
          v52 = *MEMORY[0x1E698D3F8];
        }

        v53 = v157;
        v108 = *v158;
        v109 = *&v158[16];
        v110 = *&v158[32];
        v111 = v159;
        v106 = v156;
        v107 = v157;
        swift_beginAccess();
        v54 = CachedEnvironment.animatedPosition(for:)(&v106);
        v108 = *v158;
        v109 = *&v158[16];
        v110 = *&v158[32];
        v111 = v159;
        v106 = v156;
        v107 = v157;
        v55 = CachedEnvironment.animatedSize(for:)(&v106);
        swift_endAccess();
        v56 = *(v53 + 16);
        v57 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v95);
        if ((v57 & 0x100000000) == 0)
        {
          v52 = v57;
        }

        BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
        v58 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v51, v106);
        if (v58)
        {
          v59 = *(v58 + 72);
        }

        else
        {
          v59 = 0;
        }

        BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
        v61 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v51, v106);
        if (v61)
        {
          v62 = *(v61 + 72);
        }

        else
        {
          v62 = 0;
        }

        *&v106 = __PAIR64__(v84, v50);
        *(&v106 + 1) = __PAIR64__(v55, v54);
        *&v107 = __PAIR64__(*&v158[36], *&v158[28]);
        *(&v107 + 1) = __PAIR64__(*&v158[44], v56);
        LODWORD(v108) = v52;
        BYTE4(v108) = v59;
        DWORD2(v108) = 0;
        HIDWORD(v108) = v62;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
        lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>();
        v63 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v106) = 0;
        PreferencesOutputs.subscript.setter(v63, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
        v9 = v91;
        v60 = v87;
      }

      else
      {
        v60 = v87;
      }

      v108 = v114;
      v109 = v115;
      v106 = v112;
      v107 = v113;
      *&v110 = __PAIR64__(v47, v116);
      *(&v110 + 1) = v97;
      v111 = v98;
      outlined destroy of _ViewInputs(&v106);
      outlined destroy of _ViewInputs(&v156);
      v64 = v95;
      v65 = v96;
      v99 = v95;
      v100 = v96;
      LODWORD(v148) = v46;
      if (ShouldRecordTree)
      {
        _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt0t2g5Tm(&v99, &v146);
        AGSubgraphEndTreeElement();
        v64 = v99;
        v65 = v100;
      }

      v37 = v120[4];
      v104[2] = v148;
      v104[3] = v149;
      v104[4] = v150;
      v105 = v151;
      v104[0] = v146;
      v104[1] = v147;
      outlined destroy of _ViewInputs(v104);
      *&v101 = v64;
      *(&v101 + 1) = v65;
      a3 = v88;
      v36 = v93;
      if (v60)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v82 = v8;
      type metadata accessor for _ShapeStyle_InterpolatorGroup();
      swift_allocObject();
      v21 = _ShapeStyle_InterpolatorGroup.init()();
      v129 = v162;
      *v130 = v163;
      *&v130[16] = v164;
      *&v130[32] = v165;
      v127 = v160;
      v128 = v161;
      swift_beginAccess();
      v22 = v15;
      v23 = CachedEnvironment.animatedPosition(for:)(&v127);
      swift_endAccess();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v129 = v162;
      *v130 = v163;
      *&v130[16] = v164;
      *&v130[32] = v165;
      v127 = v160;
      v128 = v161;
      LOBYTE(v156) = 1;
      swift_beginAccess();
      LOBYTE(v146) = 0;
      v25 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v127, &v156, OffsetAttribute2);
      swift_endAccess();
      v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v18);
      v27 = *(a2 + 16);
      v156 = *a2;
      v157 = v27;
      *v158 = *(a2 + 32);
      *&v158[4] = v93;
      *&v158[8] = *(a2 + 40);
      *&v158[20] = *(a2 + 52);
      v92 = v23;
      *&v158[36] = v23;
      *&v158[40] = *v10;
      v159 = *(v10 + 8);

      _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA5ImageVAAE8ResolvedV_Tt5B5(v94, &v156, v25, v21, v89 | (v90 << 32), v22 | (v85 << 32), (v26 & 1) == 0, &v127);

      v101 = v127;
      v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v127);
      if ((v28 & 0x100000000) == 0)
      {
        v29 = v28;
        v129 = v162;
        *v130 = v163;
        *&v130[16] = v164;
        *&v130[32] = v165;
        v127 = v160;
        v128 = v161;
        swift_beginAccess();
        v86 = CachedEnvironment.animatedPosition(for:)(&v127);
        swift_endAccess();
        v30 = DWORD1(v164);
        v81 = DWORD1(v164);
        v31 = AGGraphCreateOffsetAttribute2();
        v32 = HIDWORD(v161);
        v80 = HIDWORD(v161);
        v78 = DWORD2(v161);
        v33 = *(v17 + 16);
        v34 = static CachedEnvironment.ID.pixelLength;
        swift_beginAccess();
        v79 = specialized CachedEnvironment.attribute<A>(id:_:)(v34);
        swift_endAccess();
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v118);
        *&v117[129] = v124;
        *&v117[145] = v125;
        *&v117[161] = v126[0];
        *&v117[172] = *(v126 + 11);
        *&v117[65] = *&v120[32];
        *&v117[81] = v121;
        *&v117[97] = v122;
        *&v117[113] = v123;
        *&v117[1] = v118;
        *&v117[17] = v119;
        *&v117[33] = *v120;
        *&v117[49] = *&v120[16];
        v83 = (v82 >> 10) & 1;
        *&v127 = v21;
        *(&v127 + 1) = __PAIR64__(v90, v94);
        *&v128 = __PAIR64__(v30, v86);
        *(&v128 + 1) = __PAIR64__(v78, v31);
        *&v129 = __PAIR64__(v32, v89);
        *(&v129 + 1) = __PAIR64__(v79, v33);
        *v130 = v29;
        *&v130[4] = 1;
        v130[6] = v83;
        v132 = *&v117[48];
        v131 = *&v117[32];
        *&v130[23] = *&v117[16];
        *&v130[7] = *v117;
        v136 = *&v117[112];
        v135 = *&v117[96];
        v134 = *&v117[80];
        v133 = *&v117[64];
        *&v139[12] = *(v126 + 11);
        *v139 = *&v117[160];
        v138 = *&v117[144];
        v137 = *&v117[128];
        v145 = 0;
        v143 = 0;
        v142 = 0;
        v144 = 0;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
        lazy protocol witness table accessor for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>();

        v35 = Attribute.init<A>(body:value:flags:update:)();
        *&v127 = v21;
        *(&v127 + 1) = __PAIR64__(v90, v94);
        *&v128 = __PAIR64__(v81, v86);
        *(&v128 + 1) = __PAIR64__(v78, v31);
        *&v129 = __PAIR64__(v80, v89);
        *(&v129 + 1) = __PAIR64__(v79, v33);
        *v130 = v29;
        *&v130[4] = 1;
        v130[6] = v83;
        v132 = *&v117[48];
        v131 = *&v117[32];
        *&v130[23] = *&v117[16];
        *&v130[7] = *v117;
        v136 = *&v117[112];
        v135 = *&v117[96];
        v134 = *&v117[80];
        v133 = *&v117[64];
        *&v139[12] = *&v117[172];
        *v139 = *&v117[160];
        v138 = *&v117[144];
        v137 = *&v117[128];
        v140 = v146;
        v141 = BYTE4(v146);
        v145 = 0;
        v143 = 0;
        v142 = 0;
        v144 = 0;
        outlined destroy of InterpolatedDisplayList<Image.Resolved>(&v127, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
        AGGraphSetFlags();
        LOBYTE(v146) = 0;
        PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      }

      v9 = v92;
      v36 = v93;
      v37 = v93;
      a3 = v88;
      if (v87)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v49 = *MEMORY[0x1E698D3F8];
    *&v101 = MEMORY[0x1E69E7CC0];
    DWORD2(v101) = 0;
    HIDWORD(v101) = v49;
    v36 = v93;
    v37 = v93;
    if (v11)
    {
LABEL_53:
      LODWORD(v118) = v94;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer();
LABEL_54:
      HIDWORD(v101) = Attribute.init<A>(body:value:flags:update:)();
      if ((BYTE8(v101) & 0x80) == 0)
      {
        DWORD2(v101) |= 0x80u;
      }

      goto LABEL_56;
    }
  }

  if ((v37 & 2) != 0)
  {
    LODWORD(v118) = v94;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for LeafLayoutComputer<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutComputer);
    lazy protocol witness table accessor for type LeafLayoutComputer<Image.Resolved> and conformance LeafLayoutComputer<A>();
    goto LABEL_54;
  }

LABEL_56:
  v66 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019ImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(v160);
  if (v66 && (v68 = v66, v69 = v67, *v120 = v162, *&v120[16] = v163, *&v120[32] = v164, LODWORD(v121) = v165, v118 = v160, v119 = v161, ((*(v67 + 8))(&v118, v66, v67) & 1) != 0))
  {
    if (one-time initialization token for tintColor != -1)
    {
      swift_once();
    }

    v70 = static CachedEnvironment.ID.tintColor;
    swift_beginAccess();
    v71 = specialized CachedEnvironment.attribute<A>(id:_:)(v70);
    swift_endAccess();
    if (one-time initialization token for foregroundStyle != -1)
    {
      swift_once();
    }

    v72 = static CachedEnvironment.ID.foregroundStyle;
    swift_beginAccess();
    v73 = specialized CachedEnvironment.attribute<A>(id:_:)(v72);
    swift_endAccess();
    *&v118 = __PAIR64__(v71, v94);
    DWORD2(v118) = v73;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext();
    v74 = Attribute.init<A>(body:value:flags:update:)();
    v148 = v162;
    v149 = v163;
    v150 = v164;
    v151 = v165;
    v146 = v160;
    v147 = v161;
    (*(v69 + 16))(&v146, v74, &v101, v68, v69);
    v118 = v153;
    v119 = v154;
    *v120 = v155;
    *&v120[4] = v36;
    *&v120[8] = v152[0];
    v75 = *(v152 + 12);
  }

  else
  {
    v118 = v153;
    v119 = v154;
    *v120 = v155;
    *&v120[4] = v36;
    *&v120[8] = v152[0];
    v75 = *(v152 + 12);
  }

  *&v120[20] = v75;
  *&v120[36] = v9;
  *&v120[40] = v102;
  LODWORD(v121) = v103;
  result = outlined destroy of _ViewInputs(&v118);
  *a3 = v101;
  return result;
}

uint64_t _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA5ImageVAAE8ResolvedV_Tt5B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  LODWORD(v71) = 0;
  HIDWORD(v71) = *MEMORY[0x1E698D3F8];
  v64 = *MEMORY[0x1E698D3F8];
  v68 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v68) & 1) == 0)
  {
    goto LABEL_7;
  }

  v65 = ++lastIdentity;
  v14 = *a2;
  v15 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    v16 = a7;
    v62 = a4;
    v63 = HIDWORD(a6);
    v17 = v14;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v19 = *(a2 + 48);
    v80 = *(a2 + 32);
    *v81 = v19;
    *&v81[16] = *(a2 + 64);
    LODWORD(v82) = *(a2 + 80);
    v20 = *(a2 + 16);
    v78 = *a2;
    v79 = v20;
    swift_beginAccess();
    v21 = CachedEnvironment.animatedSize(for:)(&v78);
    v22 = *(a2 + 48);
    v80 = *(a2 + 32);
    *v81 = v22;
    *&v81[16] = *(a2 + 64);
    LODWORD(v82) = *(a2 + 80);
    v23 = *(a2 + 16);
    v78 = *a2;
    v79 = v23;
    v24 = CachedEnvironment.animatedPosition(for:)(&v78);
    swift_endAccess();
    v25 = *(v15 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v26 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v78);
    if (v26)
    {
      v27 = *(v26 + 72);
    }

    else
    {
      v27 = 0;
    }

    v58 = v27;
    v59 = *(a2 + 60);
    v60 = *(a2 + 68);
    v61 = *(a2 + 76);
    *&v78 = v62;
    *(&v78 + 1) = __PAIR64__(a1, v65);
    *&v79 = __PAIR64__(OffsetAttribute2, a3);
    *(&v79 + 1) = __PAIR64__(v24, v21);
    *&v80 = __PAIR64__(v59, v60);
    *(&v80 + 1) = __PAIR64__(v61, v25);
    v81[0] = v27;
    *&v81[4] = a5;
    *&v81[12] = a6;
    v81[20] = v16 & 1;
    *&v81[22] = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList);
    v57 = a6;
    lazy protocol witness table accessor for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>();

    v28 = Attribute.init<A>(body:value:flags:update:)();
    *&v78 = v62;
    *(&v78 + 1) = __PAIR64__(a1, v65);
    *&v79 = __PAIR64__(OffsetAttribute2, a3);
    *(&v79 + 1) = __PAIR64__(v24, v21);
    *&v80 = __PAIR64__(v59, v60);
    *(&v80 + 1) = __PAIR64__(v61, v25);
    v81[0] = v58;
    *&v81[1] = v72;
    v81[3] = BYTE2(v72);
    *&v81[4] = a5;
    *&v81[12] = v57;
    *&v81[16] = v63;
    v81[20] = v16 & 1;
    *&v81[22] = 0;
    outlined destroy of InterpolatedDisplayList<Image.Resolved>(&v78, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList);
    v77 = 0;
    PreferencesOutputs.subscript.setter(v28, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v29 = *(a2 + 48);
    v30 = *(a2 + 64);
    v31 = *(a2 + 16);
    v80 = *(a2 + 32);
    *v81 = v29;
    *&v81[16] = v30;
    LODWORD(v82) = *(a2 + 80);
    v78 = *a2;
    v79 = v31;
    swift_beginAccess();
    v32 = CachedEnvironment.animatedSize(for:)(&v78);
    v33 = *(a2 + 48);
    v80 = *(a2 + 32);
    *v81 = v33;
    *&v81[16] = *(a2 + 64);
    LODWORD(v82) = *(a2 + 80);
    v34 = *(a2 + 16);
    v78 = *a2;
    v79 = v34;
    v35 = CachedEnvironment.animatedPosition(for:)(&v78);
    swift_endAccess();
    v36 = *(a2 + 60);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved);
    v37 = swift_allocObject();
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOi0_(&v78);
    v38 = v85;
    *(v37 + 200) = v86;
    v39 = v88;
    *(v37 + 216) = v87;
    *(v37 + 232) = v39;
    v40 = *&v81[16];
    *(v37 + 136) = v82;
    v41 = v84;
    *(v37 + 152) = v83;
    *(v37 + 168) = v41;
    *(v37 + 184) = v38;
    v42 = v78;
    *(v37 + 72) = v79;
    v43 = *v81;
    *(v37 + 88) = v80;
    *(v37 + 104) = v43;
    *(v37 + 120) = v40;
    *(v37 + 248) = v89;
    *(v37 + 56) = v42;
    *(v37 + 272) = 0u;
    *(v37 + 288) = 0u;
    *(v37 + 256) = 0u;
    *(v37 + 304) = v13;
    *(v37 + 24) = 0;
    *(v37 + 312) = 0u;
    *(v37 + 328) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v44 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v45 = *(v44 + 208);

    swift_beginAccess();
    *(v37 + 24) = v45;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v72 = v68;
    v46 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v47 = *(v68 + 16);
    if (v46 != v47)
    {
      if (v46 >= v47)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v68 + 16 * v46 + 32) == &type metadata for ViewRespondersKey)
      {
        v72 = __PAIR64__(a3, a1);
        v73 = v32;
        v74 = v35;
        v75 = v36;
        v76 = v37;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledResponderFilter<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderFilter);
        lazy protocol witness table accessor for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>();
        v48 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v72) = 0;
        PreferencesOutputs.subscript.setter(v48, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v68) & 1) == 0)
    {
      goto LABEL_16;
    }

    v49 = *(a2 + 64);
    v50 = AGGraphCreateOffsetAttribute2();
    v72 = __PAIR64__(v49, v36);
    v73 = v50;
    v74 = a1;
    v75 = v64;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<Image.Resolved> and conformance ContentResponderPathDataRule<A>();
    v51 = Attribute.init<A>(body:value:flags:update:)();
    v72 = v68;
    v52 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v52 == v47)
    {
      goto LABEL_16;
    }

    if (v52 < v47)
    {
      if (*(v68 + 16 * v52 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v72) = v51;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v72) = 0;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a8 = v70;
      a8[1] = v71;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  v55 = a6;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v78);
  result = AGWeakAttributeGetAttribute();
  if (result != v64)
  {
    LODWORD(v72) = v65;
    v56 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(&v72);
    v56(&v78, 0);
    a6 = v55;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>;
  if (!lazy protocol witness table cache variable for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>);
  }

  return result;
}

double _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOi0_(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
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

unint64_t lazy protocol witness table accessor for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>;
  if (!lazy protocol witness table cache variable for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>);
  }

  return result;
}

__n128 Image.ImageViewChild.init(view:environment:transaction:position:size:transform:options:parentID:symbolAnimator:symbolEffects:)@<Q0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, char *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = *a7;
  v13 = *a8;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = v12;
  *(a9 + 28) = v13;
  type metadata accessor for PropertyList.Tracker();
  v14 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = MEMORY[0x1E69E7CC8];
  *(v15 + 24) = 0;
  *(v15 + 32) = v16;
  v17 = MEMORY[0x1E69E7CC0];
  *(v15 + 40) = v16;
  *(v15 + 48) = v17;
  *(v15 + 56) = 0;
  *(v14 + 16) = v15;
  *(a9 + 32) = v14;
  *(a9 + 40) = a10;
  v18 = *(a11 + 16);
  *(a9 + 48) = *a11;
  *(a9 + 64) = v18;
  *(a9 + 80) = *(a11 + 32);
  result = *(a11 + 46);
  *(a9 + 94) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer;
  if (!lazy protocol witness table cache variable for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer);
  }

  return result;
}

uint64_t static LeafViewLayout.makeLeafLayout(_:view:inputs:)(uint64_t result, int *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 36) & 2) != 0)
  {
    v3 = result;
    v11 = *a2;
    MEMORY[0x1EEE9AC00](result);
    v8 = type metadata accessor for LeafLayoutComputer();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>);
    result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v11, closure #1 in Attribute.init<A>(_:)partial apply, &v7, v8, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
    *(v3 + 12) = v10;
    v6 = *(v3 + 8);
    if ((v6 & 0x80) == 0)
    {
      *(v3 + 8) = v6 | 0x80;
    }
  }

  return result;
}

uint64_t LeafLayoutEngine.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for LeafLayoutEngine() + 36);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 1;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 1;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 1;
  v7 = *(*(a2 - 8) + 32);

  return v7(a3, a1, a2);
}

uint64_t LeafLayoutComputer.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LeafLayoutEngine();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  LeafLayoutEngine.init(_:)(v5, v2, v9);
  WitnessTable = swift_getWitnessTable();
  StatefulRule<>.update<A>(to:)(v9, a1, v6, WitnessTable, &protocol witness table for LeafLayoutEngine<A>);
  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata completion function for LeafLayoutEngine()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t EnvironmentValues.imageIsTemplate(renderingMode:)(unsigned __int8 *a1)
{
  v4 = *a1;
  if (v4 != 2)
  {
    return (v4 & 1) == 0;
  }

  v10 = v2;
  v11 = v3;
  v5 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, &v9);

    v6 = v9;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v8)
    {
      v6 = *(v8 + 72);
    }

    else
    {
      v6 = 1;
    }
  }

  return v6 ^ 1u;
}

uint64_t specialized Gradient.init(colors:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  if (v4 > 1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = 0;
    v6 = v14;
    v7 = *(a1 + 16);
    while (v7 != v5)
    {
      if (v5 >= *(a1 + 16))
      {
        goto LABEL_16;
      }

      v1 = *(a1 + 8 * v5 + 32);
      v14 = v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v2 = v8 + 1;

      if (v8 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v8 + 1, 1);
      }

      v10 = 1.0 / (v4 - 1) * v5++;
      *(v6 + 16) = v2;
      v11 = v6 + 16 * v8;
      *(v11 + 32) = v1;
      *(v11 + 40) = v10;
      if (v4 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v1, 1);
    v6 = v14;
    goto LABEL_11;
  }

  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v14 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v6 = v14;
  v4 = *(a1 + 32);
  v2 = *(v14 + 16);
  v5 = *(v14 + 24);
  v1 = v2 + 1;

  if (v2 >= v5 >> 1)
  {
    goto LABEL_17;
  }

LABEL_11:
  *(v6 + 16) = v1;
  v12 = v6 + 16 * v2;
  *(v12 + 32) = v4;
  *(v12 + 40) = 0;
LABEL_12:

  return v6;
}

uint64_t ImageProviderBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));

  return swift_deallocClassInstance();
}

void destroy for Image.NamedImageProvider(void *a1)
{

  v2 = a1[3];
  if (v2 >= 2)
  {
  }

  v3 = a1[4];
  if (v3 >= 3)
  {
  }

  v4 = a1[7];
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v5 = a1[5];
    v6 = a1[6];

    outlined consume of AccessibilityImageLabel(v5, v6, v4);
  }
}

unint64_t lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint()
{
  result = lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint;
  if (!lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint;
  if (!lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint;
  if (!lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for LinearGradient._Paint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

id NamedImage.Cache.subscript.getter(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  result = [objc_opt_self() defaultUICatalogForBundle_];
  if (!result)
  {
    v17 = MEMORY[0x193ABEC20](0x737465737341, 0xE600000000000000);
    v18 = MEMORY[0x193ABEC20](7496035, 0xE300000000000000);
    v19 = [a1 URLForResource:v17 withExtension:v18];

    if (v19)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v4 + 32))(v15, v12, v3);
      os_unfair_lock_lock((v1 + 24));
      _s7SwiftUI10NamedImageO5CacheCySo10CUICatalogC_Sb6retaintSgSo8NSBundleCcigAGSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_(v1 + 32, v15, &v29);
      os_unfair_lock_unlock((v1 + 24));
      if (v29)
      {
        v20 = v29;
        (*(v4 + 8))(v15, v3);
        return v20;
      }

      os_unfair_lock_lock((v1 + 24));
      specialized _NativeDictionary.filter(_:)(*(v1 + 56));
      *(v1 + 56) = v21;

      v28 = v1;
      os_unfair_lock_unlock((v1 + 24));
      v22 = *(v4 + 16);
      v22(v9, v15, v3);
      v23 = objc_allocWithZone(MEMORY[0x1E6999368]);
      v24 = @nonobjc CUICatalog.init(url:)(v9);
      if (v24)
      {
        v25 = v28;
        v26 = v24;
        os_unfair_lock_lock(v28 + 6);
        v22(v6, v15, v3);
        swift_unknownObjectWeakInit();
        v27 = swift_unknownObjectWeakAssign();
        v30 = 0;
        specialized Dictionary.subscript.setter(v27, v6);
        os_unfair_lock_unlock(v25 + 6);
        (*(v4 + 8))(v15, v3);
        return v26;
      }

      (*(v4 + 8))(v15, v3);
    }

    return 0;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017DefaultSymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017DefaultSymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017DefaultSymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

double protocol witness for LayoutEngine.sizeThatFits(_:) in conformance ResolvedImageLayoutEngine(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = v1[9];
  v23[8] = v1[8];
  v23[9] = v6;
  v24[0] = v1[10];
  *(v24 + 11) = *(v1 + 171);
  v7 = v1[5];
  v23[4] = v1[4];
  v23[5] = v7;
  v8 = v1[7];
  v23[6] = v1[6];
  v23[7] = v8;
  v9 = v1[1];
  v23[0] = *v1;
  v23[1] = v9;
  v10 = v1[3];
  v23[2] = v1[2];
  v23[3] = v10;
  v19[24] = v2;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  Image.Resolved.sizeThatFits(in:)();
  v12 = v11;
  v13 = v1[9];
  v25[8] = v1[8];
  v25[9] = v13;
  v26[0] = v1[10];
  *(v26 + 11) = *(v1 + 171);
  v14 = v1[5];
  v25[4] = v1[4];
  v25[5] = v14;
  v15 = v1[7];
  v25[6] = v1[6];
  v25[7] = v15;
  v16 = v1[1];
  v25[0] = *v1;
  v25[1] = v16;
  v17 = v1[3];
  v25[2] = v1[2];
  v25[3] = v17;
  outlined init with copy of Image.Resolved(v23, v19);
  outlined destroy of Image.Resolved(v25);
  return v12;
}

uint64_t ResolvedImageLayoutEngine.explicitAlignment(_:at:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 152);
  if (*(v2 + 104) != 2 || v3 == 0)
  {
    goto LABEL_6;
  }

  v6 = v3[7];
  v7 = *(a2 + 8) - v3[2];
  if (one-time initialization token for lastTextBaseline != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v8 = v7 - v6;
  if (static VerticalAlignment.lastTextBaseline == a1)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for firstTextBaseline != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  if (static VerticalAlignment.firstTextBaseline == a1)
  {
LABEL_13:
    *&result = v8;
    return result;
  }

  if (one-time initialization token for _firstTextLineCenter != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  if (static VerticalAlignment._firstTextLineCenter != a1)
  {
LABEL_6:
    *&result = 0.0;
    return result;
  }

  *&result = v8 + v3[3] * -0.5;
  return result;
}

uint64_t specialized StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v12[24] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      v9 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA013ResolvedImagecE033_A3C1DB6976F54697C11EFA754256BBD1LLV_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[27] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA14LinearGradientVGG_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[64] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v12, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[5] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      v9 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA017AlignmentModifiedcD033_1A9A538762FDCD24410B0F017CAED17ALLV0E0V_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[100] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[100] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[50] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[50] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[45] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafLayoutEngine<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA5ImageVAAE8ResolvedVG_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[23] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v12, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>>, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[29] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>.Engine, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LazycD0V0E0VyAA0f6HStackC0V_G_Tt1B5Tm(v12, type metadata accessor for TracingLayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>, type metadata accessor for LayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[29] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>.Engine, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LazycD0V0E0VyAA0f6HStackC0V_G_Tt1B5Tm(v12, type metadata accessor for TracingLayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>, type metadata accessor for LayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[23] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>();
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v12, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<AnyShape>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<AnyShape>>>, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[26] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVGG_Tt1B5Tm(v12, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>>, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v12[29] = *MEMORY[0x1E69E9840];
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v12[0] = v5;
      v12[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v12);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA12MeshGradientVGG_Tt1B5(v12, &v11);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t initializeWithCopy for LinearGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t outlined destroy of ImageResolutionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI22ImageResolutionContextVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI22ImageResolutionContextVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(_OWORD *a1@<X8>)
{
  return specialized closure #2 in StatefulRule<>.update<A>(to:)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 16);
  v20[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[4];
  v20[3] = v2[3];
  v20[4] = v5;
  v20[1] = v3;
  v20[2] = v4;
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[8];
  v20[7] = v2[7];
  v20[8] = v8;
  v20[5] = v6;
  v20[6] = v7;
  v9 = v2[9];
  v10 = v2[10];
  v11 = v2[11];
  *(v21 + 9) = *(v2 + 185);
  v20[10] = v10;
  v21[0] = v11;
  v20[9] = v9;
  v12 = v2[11];
  a1[10] = v2[10];
  a1[11] = v12;
  *(a1 + 185) = *(v2 + 185);
  v13 = v2[7];
  a1[6] = v2[6];
  a1[7] = v13;
  v14 = v2[9];
  a1[8] = v2[8];
  a1[9] = v14;
  v15 = v2[3];
  a1[2] = v2[2];
  a1[3] = v15;
  v16 = v2[5];
  a1[4] = v2[4];
  a1[5] = v16;
  v17 = v2[1];
  *a1 = *v2;
  a1[1] = v17;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v20, &v19, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
}

uint64_t _s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFqd__yXEfU0_AD013ResolvedImagegH033_A3C1DB6976F54697C11EFA754256BBD1LLV_AD0mngL0AMLLVTG5TA_0@<X0>(__int128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v19[2] = v2[2];
  v19[3] = v5;
  v19[0] = v3;
  v19[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v19[6] = v2[6];
  v19[7] = v8;
  v19[4] = v6;
  v19[5] = v7;
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  *(v20 + 11) = *(v2 + 171);
  v19[9] = v10;
  v20[0] = v11;
  v19[8] = v9;
  v12 = v2[9];
  a1[8] = v2[8];
  a1[9] = v12;
  a1[10] = v2[10];
  *(a1 + 171) = *(v2 + 171);
  v13 = v2[5];
  a1[4] = v2[4];
  a1[5] = v13;
  v14 = v2[7];
  a1[6] = v2[6];
  a1[7] = v14;
  v15 = v2[1];
  *a1 = *v2;
  a1[1] = v15;
  v16 = v2[3];
  a1[2] = v2[2];
  a1[3] = v16;
  return outlined init with copy of ResolvedImageLayoutEngine(v19, &v18);
}

uint64_t specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[9];
  v3 = a1[7];
  v25 = a1[8];
  v26 = v2;
  v4 = a1[9];
  v27[0] = a1[10];
  *(v27 + 11) = *(a1 + 171);
  v5 = a1[5];
  v7 = a1[3];
  v21 = a1[4];
  v6 = v21;
  v22 = v5;
  v8 = a1[5];
  v9 = a1[7];
  v23 = a1[6];
  v10 = v23;
  v24 = v9;
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v19 = a1[2];
  v15 = v19;
  v20 = v12;
  a2[8] = v25;
  a2[9] = v4;
  a2[10] = a1[10];
  *(a2 + 171) = *(a1 + 171);
  a2[4] = v6;
  a2[5] = v8;
  a2[6] = v10;
  a2[7] = v3;
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v7;
  return outlined init with copy of ResolvedImageLayoutEngine(v18, &v17);
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA013ResolvedImagecE033_A3C1DB6976F54697C11EFA754256BBD1LLV_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<ResolvedImageLayoutEngine>, &type metadata for ResolvedImageLayoutEngine, &protocol witness table for ResolvedImageLayoutEngine, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 204) = v7;
    *(v4 + 208) = v6;
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<ResolvedImageLayoutEngine>, &type metadata for ResolvedImageLayoutEngine, &protocol witness table for ResolvedImageLayoutEngine, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v8;
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 187) = *(a1 + 171);
  v9 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v9;
  v10 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v10;
  v11 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v4 + 48) = result;
  *(v4 + 64) = v13;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t *initializeWithCopy for AccessibilityImageLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of AccessibilityImageLabel(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomContentKey.Identifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentKey.Identifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AccessibilityImageLabel.text.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v3 < 0)
  {
    type metadata accessor for AccessibilityImageLabel.SystemSymbolTextStorage();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    v2 = v4;
  }

  else
  {
    outlined copy of Text.Storage(v2, v1, v3 & 1);
  }

  return v2;
}

uint64_t getEnumTag for Environment.Content(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for Environment.Content(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010SymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010SymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

    if (!v2)
    {

      v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04FontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

      if (!v2)
      {

        v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017DefaultSymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

        if (!v2)
        {

          v3 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

          return v3;
        }
      }
    }
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (!v5 || (v2 = v5[9], , !v2))
    {
      v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
      if (!v6 || (v2 = v6[9], , !v2))
      {
        v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
        if (!v7 || (v2 = v7[9], , !v2))
        {
          v8[0] = v1;
          v8[1] = 0;

          v2 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(v8);
        }
      }
    }
  }

  return v2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010SymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010SymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata completion function for ImageResolutionContext()
{
  _s7SwiftUI4TextV5StyleVSgMaTm_1(319, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t _s7SwiftUI14FontDefinitionPAAE016resolveTextStyleC4Info04textG06design6weight2inAA0C0V14ResolvedTraitsVAJ0fG0O_AJ6DesignOSgAJ6WeightVSgAJ7ContextVtFZAA07DefaultcD0O_Tt1t4B5@<X0>(double a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  specialized Font.TextStyle.ctTextStyle.getter();
  specialized DynamicTypeSize.ctTextSize.getter();
  result = CTFontDescriptorGetTextStyleSize();
  v8 = 0.0;
  if ((a2 & 1) == 0)
  {
    v8 = a1;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t protocol witness for FontProvider.resolveTraits(in:) in conformance Font.TextStyleProvider(uint64_t *a1)
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
  return (*(v4 + 16))(&v13, &v12, v6, v7, v9);
}

uint64_t sub_18D122304(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for TypesettingConfiguration();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[21];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[23];
    goto LABEL_11;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[24];
    goto LABEL_11;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[26];

  return v17(v18, a2, v16);
}

void outlined consume of GraphicsImage.Contents?(void *a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of GraphicsImage.Contents(a1, a2);
  }
}

uint64_t destroy for ImageResolutionContext(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for Text.Style(0);
  result = (*(*(v5 - 1) + 48))(v4, 1, v5);
  if (!result)
  {
    if (*v4 >= 2uLL)
    {
    }

    outlined consume of Gradient.ProviderTag(*(v4 + 16));

    if ((*(v4 + 88) - 1) >= 2)
    {
    }

    if ((*(v4 + 104) - 1) >= 2)
    {
    }

    if (*(v4 + 176) != 1)
    {
    }

    if (*(v4 + 248) != 1)
    {
    }

    if (*(v4 + 288) >= 2uLL)
    {
      outlined consume of Text.Storage(*(v4 + 264), *(v4 + 272), *(v4 + 280));
    }

    v7 = v5[21];
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
    if (!(*(*(v8 - 8) + 48))(v4 + v7, 2, v8))
    {
      v9 = type metadata accessor for Locale.Language();
      (*(*(v9 - 8) + 8))(v4 + v7, v9);
    }

    v10 = v5[23];
    v11 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v4 + v10, 1, v11))
    {
      (*(v12 + 8))(v4 + v10, v11);
    }

    v13 = v5[24];
    v14 = type metadata accessor for AttributedString.TextAlignment();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v4 + v13, 1, v14))
    {
      (*(v15 + 8))(v4 + v13, v14);
    }

    v16 = v5[26];
    v17 = type metadata accessor for AttributedString.LineHeight();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v4 + v16, 1, v17))
    {
      (*(v18 + 8))(v4 + v16, v17);
    }
  }

  return result;
}

void destroy for ImagePaint._Paint(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v1);
  }
}

__n128 initializeWithCopy for GraphicsImage(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *a2;
    v5 = a1;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    a1 = v5;
    *v5 = v4;
    *(v5 + 8) = v3;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  result = *(a2 + 11);
  *(a1 + 88) = result;
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  return result;
}

id outlined copy of GraphicsImage.Contents(id result, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 != 3 && a2 != 4 && a2 != 5)
    {
      return result;
    }
  }

  if (a2 < 2u)
  {
    return result;
  }

  if (a2 == 2)
  {
  }

  return result;
}

uint64_t Image.ImageViewChild.updateValue()(uint64_t a1)
{
  v129 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v90 = *(a1 + 16);
  v91 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v79 - v5;
  _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v79 - v8;
  v9 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v9);
  v95 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Value = AGGraphGetValue();
  v13 = v12;
  v14 = *Value;
  v97 = v1;

  v15 = AGGraphGetValue();
  v18 = *v15;
  v17 = v15[1];
  if (v13)
  {

    goto LABEL_10;
  }

  if (v16)
  {

    v19 = swift_retain_n();
    v20 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v19);

    if (v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (!AGGraphGetOutputValue())
  {
LABEL_10:
    v86 = v17;
    v22 = *(v97 + 32);
    PropertyList.Tracker.reset()();
    v96 = v14;
    v88 = v6;
    v89 = AssociatedTypeWitness;
    v87 = a1;
    v85 = v9;
    if (v18)
    {
      v23 = v18[8];
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v22 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v24 + 16));
    *(v24 + 24) = v23;
    os_unfair_lock_unlock((v24 + 16));

    v25 = type metadata accessor for Text.Style(0);
    v26 = *(*(v25 - 8) + 56);
    v26(v94, 1, 1, v25);
    v27 = v18;
    v28 = v97;
    v84 = *(v97 + 8);
    v29 = v85;
    v30 = v85[6];
    v31 = v95;
    v26(v95 + v30, 1, 1, v25);
    v32 = v29[7];
    v33 = v31 + v29[8];
    *v33 = 520;
    v33[2] = 2;
    *(v31 + v29[9]) = 3;
    v34 = v29[10];
    *(v31 + v34) = 1;
    v93 = v27;
    *v31 = v27;
    v31[1] = v22;
    v85 = v22;
    outlined assign with take of Text.Style?(v94, v31 + v30);
    *(v31 + v32) = v84;
    v35 = *(v28 + 24);
    *(v31 + v34) = v35 | 1;
    v36 = *(v28 + 40);
    v31[2] = v36;
    v37 = *(*v96 + 80);
    v38 = v36;
    v37(&v118, v31);
    if (BYTE8(v118) == 2)
    {
      v39 = v118;
      v40 = *(v28 + 8);
      v41 = (v35 >> 3) & 1;
      v42 = *(v118 + 16);
      v43 = *(v118 + 24);
      v44 = *(v118 + 32);
      v45 = *(v118 + 44);
      v80 = v41;
      v81 = v45;
      v46 = *(v118 + 45);
      v83 = v43;
      v84 = v46;
      v47 = *(v118 + 48);
      v48 = v42;
      outlined copy of Image.Location(v44);
      v82 = v47;
      v49 = v48;

      v50 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v93);
      v94 = v38;
      v51 = v50;

      RBSymbolAnimator.updateSymbolEffects(_:effects:transaction:animationsDisabled:)((v28 + 48), v51, v40, v80);

      LODWORD(v48) = [v49 version];
      LOBYTE(v47) = v81 & ~*(v28 + 90);
      v52 = swift_allocObject();
      *(v52 + 16) = v49;
      *(v52 + 24) = v83;
      *(v52 + 32) = v44;
      *(v52 + 40) = v48;
      *(v52 + 44) = v47 & 1;
      *(v52 + 45) = v84;
      *(v52 + 48) = v82;
      outlined consume of GraphicsImage.Contents?(v39, 2u);
      *&v118 = v52;
      BYTE8(v118) = 2;
      LOBYTE(v44) = BYTE10(v128[1]);
      v53 = *(v52 + 32);
      v54 = *(v52 + 48);
      v55 = *(v52 + 16);
      outlined copy of Image.Location(v53);
      v56 = v54;
      outlined copy of Image.Location(v53);
      v57 = [v55 styleMask];
      *&v105[0] = v53;
      _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v57, v105, &v107);

      outlined consume of Image.Location(v53);
      v58 = v107;
      LOWORD(v54) = WORD4(v107);
      v59 = BYTE10(v107);
      v60 = *&v128[1];

      v61 = v49;
      *&v128[1] = v58;
      WORD4(v128[1]) = v54;
      BYTE10(v128[1]) = v59;
      if ((v44 & 2) != 0)
      {
LABEL_15:
        v62 = v59 | 2;
LABEL_18:
        v66 = v97;
        BYTE10(v128[1]) = v62;
        v103[9] = v127;
        *v104 = v128[0];
        *&v104[11] = *(v128 + 11);
        v103[4] = v122;
        v103[5] = v123;
        v103[6] = v124;
        v103[7] = v125;
        v103[8] = v126;
        v103[0] = v118;
        v103[1] = v119;
        v67 = v120;
        v68 = v121;
        v103[2] = v120;
        v103[3] = v121;
        v115 = v126;
        v116 = v127;
        v117[0] = v128[0];
        *(v117 + 11) = *(v128 + 11);
        v111 = v122;
        v112 = v123;
        v113 = v124;
        v114 = v125;
        v107 = v118;
        v108 = v119;
        *(v97 + 40) = v61;
        LODWORD(v97) = v104[0];
        v109 = v67;
        v110 = v68;
        v69 = v125;
        v70 = v126;
        v71 = *(v66 + 90);
        v72 = v96;

        outlined init with copy of Image.Resolved(v103, v105);
        outlined copy of AccessibilityImageLabel?(v69, *(&v69 + 1), v70);
        outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
        v98 = v72;
        v99 = v69;
        v100 = v70;
        v101 = v97;
        v102 = v71;
        v73 = v88;
        (*(v91 + 24))(&v107, &v98);
        v75 = v99;
        v74 = v100;

        outlined consume of AccessibilityImageLabel?(v75, *(&v75 + 1), v74);
        v105[8] = v115;
        v105[9] = v116;
        v106[0] = v117[0];
        *(v106 + 11) = *(v117 + 11);
        v105[4] = v111;
        v105[5] = v112;
        v105[6] = v113;
        v105[7] = v114;
        v105[0] = v107;
        v105[1] = v108;
        v105[2] = v109;
        v105[3] = v110;
        v76 = outlined destroy of Image.Resolved(v105);
        MEMORY[0x1EEE9AC00](v76);
        *(&v79 - 2) = v87;
        *(&v79 - 1) = swift_getWitnessTable();
        v77 = v89;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v73, partial apply for closure #1 in StatefulRule.value.setter, (&v79 - 4), v89, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v78);

        (*(v92 + 8))(v73, v77);
        v115 = v126;
        v116 = v127;
        v117[0] = v128[0];
        *(v117 + 11) = *(v128 + 11);
        v111 = v122;
        v112 = v123;
        v113 = v124;
        v114 = v125;
        v107 = v118;
        v108 = v119;
        v109 = v120;
        v110 = v121;
        outlined destroy of Image.Resolved(&v107);
        return _s7SwiftUI22ImageResolutionContextVWOhTm_1(v95, type metadata accessor for ImageResolutionContext);
      }
    }

    else
    {
      v63 = BYTE10(v128[1]);
      v64 = (BYTE8(v118) != 255) & (v122 ^ 1);
      v65 = *&v128[1];

      v61 = 0;
      v59 = 0;
      *&v128[1] = 0;
      WORD4(v128[1]) = v64;
      BYTE10(v128[1]) = 0;
      if ((v63 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    v62 = v59 & 0xFD;
    goto LABEL_18;
  }
}

uint64_t sub_18D123428()
{
  v1 = *(v0 + 32);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

void type metadata accessor for Text.Style?()
{
  if (!lazy cache variable for type metadata for Text.Style?)
  {
    type metadata accessor for Text.Style(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Text.Style?);
    }
  }
}

void type metadata accessor for Text.Style?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI4TextV5StyleVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI4TextV5StyleVSgMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_18D123600(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for TypesettingConfiguration();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[21];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[23];
    goto LABEL_9;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[24];
    goto LABEL_9;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[26];

  return v17(v18, a2, a2, v16);
}

uint64_t outlined assign with take of Text.Style?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Text.Style?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for NamedImage.VectorKey()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t type metadata completion function for NamedImage.BitmapKey()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for sharedCache()
{
  type metadata accessor for NamedImage.Cache();
  swift_allocObject();
  result = specialized NamedImage.Cache.init(archiveDelegate:)(0);
  static NamedImage.sharedCache = result;
  return result;
}

uint64_t specialized NamedImage.Cache.init(archiveDelegate:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 32) = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = v2;
  *(v1 + 48) = v2;
  *(v1 + 56) = v2;
  *(v1 + 16) = a1;
  v3 = objc_opt_self();

  v4 = [v3 defaultCenter];

  v5 = MEMORY[0x193ABEC20](0xD000000000000030, 0x800000018DD7CB50);
  [v4 addObserver:v1 selector:sel_releaseImages name:v5 object:0];

  v6 = [v3 defaultCenter];

  v7 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD7CB90);
  [v6 addObserver:v1 selector:sel_releaseImages name:v7 object:0];

  return v1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for (ColorScheme?, ColorSchemeContrast)()
{
  if (!lazy cache variable for type metadata for (ColorScheme?, ColorSchemeContrast))
  {
    type metadata accessor for NamedImage.VectorInfo?(255, &lazy cache variable for type metadata for ColorScheme?, &type metadata for ColorScheme, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ColorScheme?, ColorSchemeContrast));
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV019EffectiveSymbolFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
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

    v12 = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(&v18);

    *&v17[0] = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey);
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

    v13 = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(&v18);

    *&v17[0] = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>();
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

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>);
    }
  }
}

void *specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(__int16 a1, void *a2, char a3, uint64_t (*a4)(void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  if ((a1 & 0x100) != 0)
  {
    if (a3 & 1 | (a2 != 8))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 1) = xmmword_18DDACA80;
      v8[32] = v7 & 1;
      v8[33] = 1;
      v8[34] = v7 & 1;
      *(v8 + 35) = 512;
      v8[37] = 1;
      v9 = v8 + 38;
      v10 = v8 + 39;
      goto LABEL_6;
    }

    v8 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
  }

  else
  {
    if (a3 & 1 | (a2 != 8))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 1) = xmmword_18DDAB4C0;
      v8[32] = v7 & 1;
      v8[33] = 0;
      v9 = v8 + 34;
      v10 = v8 + 35;
LABEL_6:
      *v9 = 2;
      *v10 = 0;
      goto LABEL_9;
    }

    v8 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
  }

LABEL_9:
  v11 = *(v8 + 2);
  v12 = 0;
  if (v11)
  {
    v13 = v8 + 33;
    v37 = a4;
    v36 = v5;
    v35 = v6;
    while (1)
    {
      if (v12)
      {
        goto LABEL_12;
      }

      v14 = *(v13 - 1);
      v15 = 0xD00000000000001BLL;
      if (!*v13)
      {
        v15 = 0x7261657070414955;
      }

      v17 = "UIAppearanceHighContrastAny";
      v16 = 0x800000018DD7CA20;
      if (!*v13)
      {
        v16 = 0xEF796E4165636E61;
      }

      v18 = 0xD00000000000001CLL;
      if (!*v13)
      {
        v18 = 0xD000000000000010;
        v17 = "UIAppearanceHighContrastDark";
      }

      v19 = v17 | 0x8000000000000000;
      if (*v13)
      {
        v20 = 0xD00000000000001DLL;
      }

      else
      {
        v20 = 0xD000000000000011;
      }

      v21 = "UIAppearanceDark";
      if (!*v13)
      {
        v21 = "UIAppearanceHighContrastLight";
      }

      v22 = v21 | 0x8000000000000000;
      if (v14)
      {
        v20 = v18;
        v23 = v19;
      }

      else
      {
        v23 = v22;
      }

      if (v14 == 2)
      {
        v24 = v15;
      }

      else
      {
        v24 = v20;
      }

      if (v14 == 2)
      {
        v25 = v16;
      }

      else
      {
        v25 = v23;
      }

      v26 = a4(v24, v25);
      v12 = v26;
      if (!v26)
      {
        goto LABEL_11;
      }

      if (v5)
      {
        break;
      }

      if ([v12 idiom] != v6)
      {
        goto LABEL_47;
      }

LABEL_12:
      v13 += 2;
      if (!--v11)
      {
        goto LABEL_50;
      }
    }

    if (v6)
    {
      v27 = [v26 appearance];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (v29 == v24 && v31 == v25)
        {
        }

        else
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v33 & 1) == 0)
          {

            v12 = 0;
          }
        }

        a4 = v37;
        v5 = v36;
        v6 = v35;
        goto LABEL_12;
      }

LABEL_47:

      v12 = 0;
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_50:

  return v12;
}

void *NamedImage.VectorKey.loadVectorInfo(from:idiom:)@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  result = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v3 | *v1, 0, 1, partial apply for closure #1 in NamedImage.VectorKey.loadVectorInfo(from:idiom:));
  if (result)
  {
    v5 = result;
    v6 = [v5 layoutDirection];
    if ([v5 isFlippable])
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v9 = 4;
      if (!v1[32])
      {
        v9 = 5;
      }

      v8 = v6 != v9;
    }

    Image.LayoutMetrics.init(glyph:flipsRightToLeft:)(v5, v8, v12);
    *a1 = v5;
    *(a1 + 8) = v8;
    v10 = v12[1];
    *(a1 + 16) = v12[0];
    *(a1 + 32) = v10;
    v11 = v12[3];
    *(a1 + 48) = v12[2];
    *(a1 + 64) = v11;
    return swift_unknownObjectWeakInit();
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

id closure #1 in NamedImage.VectorKey.loadVectorInfo(from:idiom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = *(a4 + 16);
  v33 = *(a4 + 8);
  v10 = MEMORY[0x193ABEC20]();
  v11 = *(a4 + 24);
  if (*(a4 + 32))
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  v13 = type metadata accessor for NamedImage.VectorKey(0);
  v31 = v13[10];
  v14 = qword_18DDE48D0[*(a4 + v31)];
  v15 = *(a4 + v13[9]);
  v16 = Font.Weight.glyphWeight.getter(v15);
  v17 = *(a4 + v13[11]);
  v34 = a2;
  v18 = MEMORY[0x193ABEC20](a1, a2);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v20 = [a3 namedVectorGlyphWithName:v10 scaleFactor:a5 deviceIdiom:v12 layoutDirection:v14 glyphSize:v16 glyphWeight:v18 glyphPointSize:v11 appearanceName:v17 locale:isa];

  if (v20)
  {
    NamedImage.VectorKey.symbolSizeScale(for:)(v20);
    v22 = v21;
    if (v21 != 1.0)
    {
      v23 = MEMORY[0x193ABEC20](v33, v32);
      if (*(a4 + 32))
      {
        v24 = 4;
      }

      else
      {
        v24 = 5;
      }

      v25 = v22 * **(&unk_1E7243F58 + *(a4 + v31));
      v26 = Font.Weight.glyphContinuousWeight.getter(v15);
      v27 = MEMORY[0x193ABEC20](a1, v34);
      v28 = Locale._bridgeToObjectiveC()().super.isa;
      v29 = [a3 namedVectorGlyphWithName:v23 scaleFactor:a5 deviceIdiom:v24 layoutDirection:v27 glyphContinuousSize:v28 glyphContinuousWeight:v11 glyphPointSize:v25 appearanceName:v26 locale:v17];

      if (v29)
      {

        return v29;
      }
    }
  }

  return v20;
}

uint64_t Font.Weight.glyphWeight.getter(double a1)
{
  if (vabdd_f64(-0.8, a1) < 0.001)
  {
    return 1;
  }

  if (vabdd_f64(-0.6, a1) < 0.001)
  {
    return 2;
  }

  if (vabdd_f64(-0.4, a1) < 0.001)
  {
    return 3;
  }

  if (vabdd_f64(0.0, a1) < 0.001)
  {
    return 4;
  }

  if (vabdd_f64(0.23, a1) < 0.001)
  {
    return 5;
  }

  if (vabdd_f64(0.3, a1) < 0.001)
  {
    return 6;
  }

  if (vabdd_f64(0.4, a1) < 0.001)
  {
    return 7;
  }

  if (vabdd_f64(0.56, a1) < 0.001)
  {
    return 8;
  }

  if (vabdd_f64(0.62, a1) >= 0.001)
  {
    return 4;
  }

  return 9;
}

uint64_t outlined destroy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Image.Location.fillVariant(_:name:)(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  LOWORD(v15) = *a1;
  if (one-time initialization token for fill != -1)
  {
    swift_once();
  }

  LOWORD(v13) = static SymbolVariants.fill;
  if ((SymbolVariants.contains(_:)(&v13) & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v7 = off_1ED530E10;
    if (!*(off_1ED530E10 + 2))
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v6 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v7 = off_1ED52C9C8;
    if (!*(off_1ED52C9C8 + 2))
    {
      return 0;
    }

LABEL_13:
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      v10 = *(v7[7] + 16 * v8);

      return v10;
    }

    return 0;
  }

  v15 = 0x6C6C69662ELL;
  v16 = 0xE500000000000000;
  v13 = a2;
  v14 = a3;

  v13 = String.init<A>(_:)();
  v14 = v12;
  String.append<A>(contentsOf:)();
  return v13;
}

Swift::String_optional __swiftcall SymbolVariants.shapeVariantName(name:)(Swift::String name)
{
  if (*(v1 + 1) > 2u)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {

    v6 = String.init<A>(_:)();
    v7 = v2;
    String.append<A>(contentsOf:)();

    v3 = v6;
    v4 = v7;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t Font.resolveTraits(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v5, v15);
  }

  else
  {
    v14[0] = v5;

    static EnvironmentValues.FontContextKey.value(in:)(v14, v15);
  }

  v14[0] = v15[0];
  v14[1] = v15[1];
  v14[2] = v15[2];
  (*(*a2 + 104))(&v16, v15);
  outlined destroy of Font.Context(v14);
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v5);

    if (v7 >> 62)
    {
LABEL_17:
      result = __CocoaSet.count.getter();
      v9 = result;
      if (!result)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v5);
    if (result)
    {
      v7 = *(result + 72);

      if (v7 >> 62)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_18:

    v12 = v17;
    v13 = v18;
    *a3 = v16;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    return result;
  }

LABEL_10:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AC03C0](i, v7);
      }

      else
      {
        v11 = *(v7 + 8 * i + 32);
      }

      (*(*v11 + 88))(&v16);
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void Image.NamedImageProvider.resolve(in:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = (v2 + 21);
  v12 = *(v2 + 20);
  v75 = *(v2 + 21);
  v76 = *(v2 + 23);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 56);
  v72 = *(v2 + 40);
  v73 = v15;
  v74 = *(v2 + 72);
  v45 = v14;
  v46 = v9;
  v47 = v8;
  if (!v13)
  {
    v16 = (v2 + 21);
    v17 = v10;
    v48 = a1;
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v18 = static Image.Location.systemAssetManager;
    goto LABEL_9;
  }

  if (v13 == 1)
  {
    v16 = (v2 + 21);
    v17 = v10;
    v48 = a1;
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v18 = static Image.Location.privateSystemAssetManager;
LABEL_9:
    v19 = v18;
    goto LABEL_14;
  }

  v20 = v10;
  outlined copy of Image.Location(v13);
  outlined copy of Image.Location(v13);
  v21 = one-time initialization token for sharedCache;
  v22 = v13;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = NamedImage.Cache.subscript.getter(v22);
  if (!v23)
  {
    outlined consume of Image.Location(v13);
    outlined consume of Image.Location(v13);

    *&v52 = v47;
    *(&v52 + 1) = v46;
    LODWORD(v53) = v20;
    BYTE4(v53) = v12;
    *(&v53 + 5) = *v11;
    BYTE7(v53) = *(v11 + 2);
    *(&v53 + 1) = v13;
    *&v54[0] = v45;
    *(v54 + 8) = *(v3 + 40);
    *(&v54[1] + 8) = *(v3 + 56);
    BYTE8(v54[2]) = *(v3 + 72);

    Image.NamedImageProvider.resolveError(in:)(v44);

    return;
  }

  v19 = v23;
  v16 = v11;
  v48 = a1;
  v17 = v20;
  v14 = v45;
LABEL_14:
  v24 = v46;
  v61 = v47;
  v62 = v46;
  v63 = v17;
  v64 = v12;
  v25 = v16;
  v65 = *v16;
  v66 = *(v16 + 2);
  v67 = v13;
  v68 = v14;
  v69 = *(v3 + 40);
  v70 = *(v3 + 56);
  v71 = *(v3 + 72);
  *&v58 = v13;
  v26 = v47;
  v27 = v19;
  Image.NamedImageProvider.vectorInfo(in:from:at:)(v48, v19, &v58, &v49);
  outlined consume of Image.Location(v58);
  v28 = v49;
  outlined consume of Image.Location(v13);
  if (v28)
  {
    outlined init with take of NamedImage.VectorInfo(&v49, &v52);
    *&v49 = v26;
    *(&v49 + 1) = v24;
    LODWORD(v50) = v17;
    BYTE4(v50) = v12;
    *(&v50 + 5) = *v25;
    BYTE7(v50) = *(v25 + 2);
    *(&v50 + 1) = v13;
    *v51 = v45;
    *&v51[8] = *(v3 + 40);
    *&v51[24] = *(v3 + 56);
    v51[40] = *(v3 + 72);
    LOBYTE(v58) = v12 & 1;
    v61 = v13;
    Image.NamedImageProvider.resolveVector(info:value:in:at:catalog:)(&v52, v17 | ((v12 & 1) << 32), v48, &v61, v27, v44);

    outlined consume of Image.Location(v61);
    outlined destroy of NamedImage.VectorInfo(&v52);
    return;
  }

  v41 = v27;
  v42 = v17;
  _sypSgWOhTm_9(&v49, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  v29 = v45;
  if (!v45)
  {
    v30 = v46;
    v31 = v48;
    v32 = v12;
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v35 = static Image.Location.systemAssetManager;
    goto LABEL_32;
  }

  v30 = v46;
  v31 = v48;
  v32 = v12;
  if (v45 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v35 = static Image.Location.privateSystemAssetManager;
LABEL_32:
    v34 = v35;
    goto LABEL_33;
  }

  v33 = v43;
  if (v45 == 2)
  {
    goto LABEL_23;
  }

  outlined copy of Image.Location(v45);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v34 = NamedImage.Cache.subscript.getter(v29);
  if (v34)
  {
LABEL_33:
    v36 = v34;
    v69 = v72;
    v37 = v47;
    v61 = v47;
    v62 = v30;
    v38 = v42;
    v63 = v42;
    v64 = v32;
    v65 = v75;
    v66 = v76;
    v67 = v13;
    v68 = v29;
    v70 = v73;
    v71 = v74;
    *&v58 = v29;
    Image.NamedImageProvider.vectorInfo(in:from:at:)(v31, v34, &v58, &v49);
    if (v49)
    {
      outlined consume of Image.Location(v13);
      outlined init with take of NamedImage.VectorInfo(&v49, &v52);
      *&v51[8] = v72;
      *&v49 = v37;
      *(&v49 + 1) = v30;
      LODWORD(v50) = v38;
      BYTE4(v50) = v32;
      *(&v50 + 5) = v75;
      BYTE7(v50) = v76;
      *(&v50 + 1) = v13;
      *v51 = v29;
      *&v51[24] = v73;
      v51[40] = v74;
      LOBYTE(v58) = v32 & 1;
      v61 = v29;
      Image.NamedImageProvider.resolveVector(info:value:in:at:catalog:)(&v52, v38 | ((v32 & 1) << 32), v31, &v61, v36, v44);

      outlined destroy of NamedImage.VectorInfo(&v52);
      outlined consume of Image.Location?(v29);
      return;
    }

    outlined consume of Image.Location?(v29);

    _sypSgWOhTm_9(&v49, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    v33 = v43;
    if (v13 < 2)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

  outlined consume of Image.Location?(v29);
LABEL_23:
  if (v13 < 2)
  {
LABEL_24:
    outlined consume of Image.Location(v13);
LABEL_40:
    *(v54 + 8) = v72;
    *&v52 = v47;
    *(&v52 + 1) = v30;
    LODWORD(v53) = v42;
    BYTE4(v53) = v32;
    *(&v53 + 5) = v75;
    BYTE7(v53) = v76;
    *(&v53 + 1) = v13;
    *&v54[0] = v29;
    *(&v54[1] + 8) = v73;
    BYTE8(v54[2]) = v74;

    Image.NamedImageProvider.resolveError(in:)(v44);

    return;
  }

LABEL_36:
  v61 = v13;
  v39 = v31[1];
  *&v49 = *v31;
  *(&v49 + 1) = v39;

  NamedImage.BitmapKey.init(name:location:in:)(v47, v30, &v61, &v49, v33);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v40 = *(v33 + 32);
  v61 = v40;
  outlined copy of Image.Location(v40);
  NamedImage.Cache.subscript.getter(v33, &v61, &v49);
  outlined consume of Image.Location(v40);
  v54[0] = *v51;
  v54[1] = *&v51[16];
  v54[2] = *&v51[32];
  *(&v54[2] + 9) = *&v51[41];
  v52 = v49;
  v53 = v50;
  v58 = v49;
  v59 = v50;
  v60 = *v51;
  v57 = v51[56];
  v55 = *&v51[24];
  v56 = *&v51[40];
  if (v51[16] == 3)
  {
    outlined destroy of NamedImage.BitmapKey(v33, type metadata accessor for NamedImage.BitmapKey);
    goto LABEL_40;
  }

  v69 = v72;
  v70 = v73;
  v49 = v58;
  v50 = v59;
  *v51 = v60;
  *&v51[24] = v55;
  v61 = v47;
  v62 = v30;
  v63 = v42;
  v64 = v32;
  v65 = v75;
  v66 = v76;
  v67 = v13;
  v68 = v29;
  v71 = v74;
  *&v51[40] = v56;
  v51[56] = v57;
  Image.NamedImageProvider.resolveBitmap(key:info:in:)(v33, &v49, v31, v44);

  outlined destroy of NamedImage.BitmapKey(v33, type metadata accessor for NamedImage.BitmapKey);
  outlined destroy of NamedImage.BitmapKey(&v52, type metadata accessor for NamedImage._BitmapInfo<GraphicsImage.Contents>?);
}