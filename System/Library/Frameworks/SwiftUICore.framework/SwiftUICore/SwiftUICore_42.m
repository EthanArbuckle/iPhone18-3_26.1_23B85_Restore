uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return outlined assign with take of CanvasSymbols.Child(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t initializeWithCopy for CanvasSymbols.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = v3;

  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  result = a5(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *EnvironmentValues.dividerThickness.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016DividerThicknessI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return result;
    }

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v1, v8);

    v6 = LOBYTE(v8[0]);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1);
    if ((v7 & 1) == 0)
    {
      return result;
    }

    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v1);
    if (result)
    {
      v6 = *(result + 72);
    }

    else
    {
      v6 = 3;
    }
  }

  if ((v6 - 7) >= 5)
  {
    v8[0] = v1;
    v8[1] = v2;
    return EnvironmentValues.pixelLength.getter();
  }

  return result;
}

uint64_t closure #1 in AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AnimatableAttributeHelper();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *AGGraphGetValue();
  v10 = *(v5 + 8);

  result = v10(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t SymbolRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t assignWithTake for CanvasSymbols.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t destroy for CanvasSymbols.Child(id *a1)
{
}

double one-time initialization function for defaultValue()
{
  type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  *(v0 + 32) = 0;
  *(v0 + 128) = 1065353216;
  *(v0 + 136) = 0;
  *(v0 + 144) = -1;
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(v0 + 40) = xmmword_18DD85540;
  *(v0 + 56) = 2143289344;
  *(v0 + 125) = 0;
  static _ShapeStyle_Pack.defaultValue = v0;
  return result;
}

{
  return GestureDebug.Data.init()(&static GestureDebug.Data.defaultValue);
}

void type metadata accessor for TypedElement<TransactionPropertyKey<AnimationReasonKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationReasonKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationReasonKey>>);
    }
  }
}

uint64_t partial apply for closure #3 in implicit closure #3 in ChildEnvironment.updateValue()@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for AnyKeyPath();
  result = MEMORY[0x193AC0030](v4, v2);
  *a2 = result & 1;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollEdgeEffectTagReceiverModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect()
{
  result = lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect;
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect;
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect;
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect;
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }

  return result;
}

uint64_t _ChangedGesture.init(_body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ChangedCallbacks();
  swift_getWitnessTable();
  type metadata accessor for CallbacksGesture();
  swift_getWitnessTable();
  v4 = type metadata accessor for ModifierGesture();
  return (*(*(v4 - 8) + 32))(a2, a1, v4);
}

unint64_t instantiation function for generic protocol witness table for _RotationEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  *(a1 + 8) = result;
  return result;
}

{
  *(a1 + 8) = lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  result = lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>);
  }

  return result;
}

uint64_t static EnvironmentReader._makeViewList(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v10 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v20[1] = v9;
      v11 = type metadata accessor for EnvironmentReader();
      return static _ViewListOutputs.unaryViewList<A>(view:inputs:)(a2, v11, &protocol witness table for EnvironmentReader<A>, a5);
    }
  }

  else if (static Semantics.forced < v10)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 16);
  swift_beginAccess();
  v14 = *(v13 + 16);
  type metadata accessor for EnvironmentReader();
  swift_getWitnessTable();
  v19[0] = EnvironmentalViewChild.init(view:env:)(v9, v14);
  v19[1] = v15;
  v16 = type metadata accessor for EnvironmentalViewChild();

  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v19, a3, v16, WitnessTable, v20);
  v18 = v20[0];
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v19[0]) = v18;
  (*(a4 + 32))(v19, a2, a3, a4);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v18, a3, a4);
}

unint64_t EnvironmentalViewChild.init(view:env:)(unsigned int a1, uint64_t a2)
{
  type metadata accessor for PropertyList.Tracker();
  v4 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 24) = 0;
  *(v5 + 32) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = 0;
  *(v4 + 16) = v5;
  return a1 | (a2 << 32);
}

unint64_t instantiation function for generic protocol witness table for AnyLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout()
{
  result = lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout;
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout;
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<OffsetTransition>, &type metadata for OffsetTransition, type metadata accessor for PlaceholderContentView);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>);
    }
  }
}

id *assignWithCopy for GroupElementsOfContent(id *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = *(a1 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      if (v15 <= 1)
      {
        if (!v15)
        {
          goto LABEL_36;
        }

        v16 = *a2;
        if (v7 < 4)
        {
LABEL_39:
          if ((v16 | (v14 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (v15 == 2)
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      v13 = v16 + 2;
    }

LABEL_36:
    if (v13 != 1)
    {
LABEL_40:
      v17 = *(a2 + 3);
      a1[3] = v17;
      a1[4] = *(a2 + 4);
      (**(v17 - 1))(a1, a2);
      v18 = *(a2 + 5);
      a1[5] = v18;
      a1[6] = *(a2 + 6);
      a1[7] = *(a2 + 7);
      *(a1 + v7) = 0;
      v19 = v18;

      goto LABEL_41;
    }

LABEL_37:
    (*(v6 + 16))(a1, a2, v5);
    *(a1 + v7) = 1;
  }

LABEL_41:
  v20 = *(v6 + 64);
  if (v20 <= 0x40)
  {
    v20 = 64;
  }

  v21 = v20 + 8;
  v22 = ((a1 + v21) & 0xFFFFFFFFFFFFFFF8);
  v23 = (&a2[v21] & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;

  return a1;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t getEnumTagSinglePayload for LayoutSubview(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *AnimatorState.addListeners(transaction:)(void *a1)
{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      v5 = *(*v1 + 168);
      swift_beginAccess();
      v6 = swift_retain_n();
      MEMORY[0x193ABF170](v6);
      if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = swift_endAccess();
      (*(*v4 + 88))(v7);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v9 = result[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + *(*v1 + 184)) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        v13 = *(*v1 + 176);
        swift_beginAccess();

        MEMORY[0x193ABF170](v14);
        if (*((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t assignWithCopy for Glass(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t Gesture<>.onChanged(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ChangedCallbacks();
  swift_getWitnessTable();
  type metadata accessor for CallbacksGesture();
  v15[2] = swift_getWitnessTable();
  v15[3] = a4;
  v11 = type metadata accessor for ModifierGesture();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v15 - v12;
  v15[0] = a1;
  v15[1] = a2;

  Gesture.callbacks<A>(_:)(v15, a3, v10, v13);

  return _ChangedGesture.init(_body:)(v13, a5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.Version()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v0);
  return Hasher._finalize()();
}

Swift::Int_optional __swiftcall ForEachState.fetchViewsPerElement()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 80);
  v26 = *(*(v3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v21 - v6;
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  ForEachState.viewsPerElement.getter();
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(*v0 + 160);
  swift_beginAccess();
  v13 = *(v2 + 112);
  v27 = v4;
  v28 = *(v2 + 88);
  v29 = v3;
  v30 = v13;
  v14 = type metadata accessor for ForEach();
  v22 = *(*(v14 - 8) + 48);
  v15 = v22(&v0[v12], 1, v14);
  if (v15 == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = *(v7 + 16);
  v21(v10, &v0[v12], v4);
  v17 = dispatch thunk of Collection.isEmpty.getter();
  v18 = *(v7 + 8);
  v18(v10, v4);
  if ((v17 & 1) == 0)
  {
    v15 = v22(&v1[v12], 1, v14);
    if (v15 != 1)
    {
      v21(v10, &v1[v12], v4);
      v19 = v23;
      dispatch thunk of Collection.startIndex.getter();
      v18(v10, v4);
      ForEachState.item(at:offset:)(v19, 0);

      (*(v24 + 8))(v19, v25);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
  v15 = ForEachState.viewsPerElement.getter();
  if ((v20 & 0x100) != 0)
  {
    v15 = 0;
  }

  v16 = (v20 | ((v20 & 0x100) >> 8)) & 1;
LABEL_11:
  result.value = v15;
  result.is_nil = v16;
  return result;
}

uint64_t ViewModifier.requiring<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 == 1)
  {
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v12)
    {
      v16 = 0;
      v17 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 < 4)
      {
        goto LABEL_9;
      }

      if (&v15[-v17] < 0x20)
      {
        goto LABEL_9;
      }

      v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v17 + 16);
      v19 = v15 + 16;
      v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v16 != v12)
      {
LABEL_9:
        v22 = v12 - v16;
        v23 = 8 * v16;
        v24 = &v15[8 * v16];
        v25 = (v17 + v23);
        do
        {
          v26 = *v25++;
          *v24 = v26;
          v24 += 8;
          --v22;
        }

        while (v22);
      }
    }

    swift_getTupleTypeMetadata();
  }

  type metadata accessor for StyleContextAcceptsPredicate();
  (*(v7 + 16))(v10, v4, a2);
  return StaticIf<>.init<>(_:then:)(v10, a2, a3);
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x193AC1170](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t _ViewList_Group.viewIDs.getter()
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *v0;
  v17 = MEMORY[0x1E69E7CC0];
  v5 = *(v4 + 16);
  while (1)
  {
    if (v2 == v5)
    {
      v2 = v5;
      memset(v14, 0, 44);
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v2 >= *(v4 + 16))
      {
        goto LABEL_24;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 32 + 48 * v2++, v14, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    *&v16[12] = *(&v14[1] + 12);
    v15 = v14[0];
    *v16 = v14[1];
    if (!*(&v14[1] + 1))
    {
      break;
    }

    outlined init with take of AnyTrackedValue(&v15, v14);
    v6 = *(&v14[1] + 1);
    v7 = *&v14[2];
    __swift_project_boxed_opaque_existential_1(v14, *(&v14[1] + 1));
    v8 = (*(v7 + 40))(v6, v7);
    if (!v8)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);

      return 0;
    }

    v9 = v8;
    if ((*(*v8 + 88))())
    {

      MEMORY[0x193ABF170](v10);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v17;
      if (v1)
      {
        v1 = 1;
      }

      else
      {
        v1 = *(v9 + 16);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  if (v3 >> 62)
  {
LABEL_25:
    result = __CocoaSet.count.getter();
    if (result == 1)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (!result)
    {

      type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>();
      result = swift_allocObject();
      *(result + 16) = 0;
      return result;
    }

    type metadata accessor for _ViewList_ID.JoinedViews();
    swift_allocObject();
    v12 = specialized _ViewList_ID.JoinedViews.init(_:isDataDependent:)(v3, v1 & 1);
    goto LABEL_22;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_18;
  }

LABEL_26:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x193AC03C0](0, v3);
LABEL_22:
    v13 = v12;
LABEL_29:

    return v13;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v3 + 32);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t DynamicViewList.WrappedList.viewIDs.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 40))(v1, v2);
  if (result)
  {
    v5 = result;
    closure #1 in DynamicViewList.WrappedList.viewIDs.getter(&v5, v0, &v4);

    return v4;
  }

  return result;
}

void BaseViewList.viewIDs.getter()
{
  v1 = v0[5];
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v2 = v0[3];
    v3 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v2);
    v4 = (*(v3 + 8))(v2, v3);
    type metadata accessor for _ViewList_ID._Views<_ViewList_ID.ElementCollection>();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 28) = v1;
    *(v5 + 32) = MEMORY[0x1E69E7CC0];
    *(v5 + 40) = v4;
    *(v5 + 16) = 0;
    return;
  }

  __break(1u);
}

void type metadata accessor for _ViewList_ID._Views<_ViewList_ID.ElementCollection>()
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<_ViewList_ID.ElementCollection>)
  {
    lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection();
    lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection();
    v0 = type metadata accessor for _ViewList_ID._Views();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewList_ID._Views<_ViewList_ID.ElementCollection>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection()
{
  result = lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection;
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection;
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection;
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection;
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection;
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }

  return result;
}

uint64_t type metadata completion function for _ViewList_ID._Views()
{
  result = swift_checkMetadataState();
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

uint64_t _ViewList_ID._Views.__deallocating_deinit()
{
  (*(*(*(*v0 + 128) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ViewList.viewIDs.getter in conformance ModifiedViewList()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t ForEachState.viewIDs.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v44 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v35 - v3;
  v6 = v5[11];
  v8 = *(v7 + 96);
  v9 = v5[14];
  v10 = v5[15];
  *&v48 = v2;
  *(&v48 + 1) = v6;
  v45 = v8;
  v49 = v8;
  v50 = v9;
  v51 = v10;
  v11 = type metadata accessor for ForEachState.ForEachViewIDCollection();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v52 = ForEachState.fetchViewsPerElement()();
  if (v52.is_nil)
  {
    return 0;
  }

  v41 = v12;
  v43 = &v35;
  v46 = 0;
  v47 = 0;
  MEMORY[0x1EEE9AC00](v52.value);
  v31 = &v47;
  v32 = v18;
  v42 = v18;
  v33 = v1;
  v39 = *(&v45 + 1);
  v40 = v45;
  protocol witness for Collection.endIndex.getter in conformance CollectionOfTwo<A>(&v48);
  ForEachState.forEachItem(from:style:do:)(&v46, &v48, partial apply for closure #1 in ForEachState.viewIDs.getter, (&v35 - 6));
  result = v47;
  if (!v47)
  {
    return result;
  }

  if ((*(v47 + 16) & 1) == 0)
  {
    v36 = v47;
    v20 = v1 + *(*v1 + 160);
    swift_beginAccess();
    *&v21 = v2;
    *(&v21 + 1) = v6;
    v49 = v45;
    v48 = v21;
    v50 = v9;
    v22 = type metadata accessor for ForEach();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    *&v45 = v20;
    v37 = v22;
    v38 = v23 + 48;
    v43 = v24;
    result = (v24)(v20, 1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v25 = v45;
      (*(v44 + 16))(v4, v45, v2);
      v26 = v25;
      v27 = v37;
      result = v43(v26, 1, v37);
      if (result != 1)
      {
        v44 = *(v45 + *(v27 + 64));
        *&v48 = v44;
        result = (v43)();
        if (result != 1)
        {
          if ((*(v1 + 172) & 1) == 0)
          {
            LODWORD(v43) = *(v1 + 168);
            LODWORD(v45) = v42 == 1;

            v28 = v36;

            v33 = v9;
            v34 = v10;
            v32 = v39;
            v31 = v40;
            ForEachState.ForEachViewIDCollection.init(base:data:idGenerator:reuseID:isUnary:owner:)(v28, v4, &v48, v45, v43, v2, v17);
            swift_getWitnessTable();
            swift_getWitnessTable();
            type metadata accessor for _ViewList_ID._Views();
            v29 = v41;
            (*(v41 + 16))(v14, v17, v11);
            v30 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(v14, 1);
            (*(v29 + 8))(v17, v11);

            return v30;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return 0;
}

uint64_t type metadata completion function for ForEachState.ForEachViewIDCollection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in ForEachState.viewIDs.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), &v18);
  if ((v19 & 1) == 0)
  {
    v14 = v9[8];
    v15 = v9[7];
    v16 = v14;
    v17 = v9[9];
    type metadata accessor for ForEachState.StaticViewIDCollection();
    swift_getWitnessTable();
    swift_getWitnessTable();
    type metadata accessor for _ViewList_ID._Views();
    *&v15 = a5;
    *a4 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(&v15, 0);

    outlined destroy of _ViewListOutputs.Views(&v18);
    return 0;
  }

  if (*(a6 + 172) != 1)
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, &v15);
    v12 = *(&v16 + 1);
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    *a4 = (*(v13 + 40))(v12, v13);

    __swift_destroy_boxed_opaque_existential_1(&v15);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t ForEachState.ForEachViewIDCollection.init(base:data:idGenerator:reuseID:isUnary:owner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v13 = *a3;
  v14 = type metadata accessor for ForEachState.ForEachViewIDCollection();
  *&a7[v14[19]] = 0;
  *a7 = a1;
  v15 = *(a6 - 8);
  (*(v15 + 16))(&a7[v14[17]], a2, a6);
  *&a7[v14[18]] = v13;
  a7[v14[20]] = a4;
  *&a7[v14[21]] = a5;
  v16 = *(*a1 + 88);

  v18 = v16(v17);
  result = v16(v18);
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = v16(result);
  if (v18 < 0 || result < v18)
  {
    goto LABEL_7;
  }

  *&a7[v14[22]] = v18;
  v20 = dispatch thunk of Collection.count.getter();

  result = (*(v15 + 8))(a2, a6);
  if ((v18 * v20) >> 64 == (v18 * v20) >> 63)
  {
    *&a7[v14[23]] = v18 * v20;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *initializeWithCopy for ForEachState.ForEachViewIDCollection(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(v4 - 8) + 16;
  v7 = *(*(v4 - 8) + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;

  v5(v8, v9, v4);
  v10 = *(v6 + 48) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *(v13 + 12) = *(v14 + 12);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for ForEachState.ForEachViewIDCollection(uint64_t a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

id closure #1 in static SectionAccumulator.Item.implicitSentinel(_:contentSubgraph:accumulationStrategy:)@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v55 = *MEMORY[0x1E69E9840];
  outlined init with copy of AnyTrackedValue(a1, v54);
  outlined init with copy of AnyTrackedValue(a1, v53);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = ViewList.count.getter(v7, v8);
  if (a3)
  {
    outlined init with copy of AnyTrackedValue(v53, &v49);
    v43 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(MEMORY[0x1E69E7CC0]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    memset(v48, 0, sizeof(v48));
    v10 = v51;
    v11 = v52;
    __swift_project_boxed_opaque_existential_1(&v49, v51);
    (*(v11 + 48))(&v43, v10, v11);
    outlined init with copy of HeterogeneousViewIDsAccumulator(&v43, v39);
    HeterogeneousViewIDsAccumulator.finalize()(&v40);
    outlined destroy of HeterogeneousViewIDsAccumulator(&v43);
    v13 = v40;
    v12 = v41;
    v14 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v49);
    type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>);
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_18DDA6EB0;
    v17 = *(*(&v13 + 1) + 16);
    if (v17)
    {
      v17 = *(*(&v13 + 1) + 4 * v17 + 28);
    }

    *(v15 + 32) = v13;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    *(v15 + 64) = 3;
    *(v15 + 72) = v17;
    *(v15 + 80) = 0;
  }

  else
  {
    v18 = v9;
    type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDA6EB0;
    outlined init with copy of AnyTrackedValue(v53, &v43);
    v19 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    v20 = (*(*(&v19 + 1) + 40))(v19, *(&v19 + 1));
    if (v20)
    {
      v21 = v20;
      v22 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        type metadata accessor for _ViewList_ID._Views<SectionAccumulator.TransformedIDs>();
        v23 = swift_allocObject();
        v24 = 0;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;
        *(v23 + 40) = 0;
        *(v23 + 16) = 1;
        v21 = v23;
      }

      else
      {

        v24 = 0;
      }
    }

    else
    {
      *&v40 = 0;
      v38 = v18;
      v25 = MEMORY[0x1E69E7CC0];
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0, MEMORY[0x1E69E7CC0]);
      v39[0] = v25;
      v39[1] = 0;
      v27 = *(&v45 + 1);
      v26 = v45;
      v28 = __swift_project_boxed_opaque_existential_1(&v43, v45);
      v49 = v39;
      v24 = 1;
      v50 = 1;
      MEMORY[0x1EEE9AC00](v28);
      v34[2] = &v37;
      v34[3] = &v38;
      v36 = 1;
      ViewList.applyIDs(from:listAttribute:transform:to:)(&v40, 0x100000000uLL, &v49, closure #1 in closure #1 in SectionAccumulator.RowIDs.Chunk.init(list:listAttribute:transform:start:count:lowerBound:)partial apply, v34, v26, v27);

      v21 = v37;
    }

    *(v16 + 32) = v21;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = v24;
    *(v16 + 72) = v18;
    *(v16 + 80) = 0;
    __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_18DDA6EB0;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(v31 + 56))(v30, v31);
  *a4 = 1;
  outlined init with take of _ViewList_Elements(v54, a4 + 8);
  v32 = v35;
  *(a4 + 48) = v35;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = MEMORY[0x1E69E7CC0];
  *(a4 + 96) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 104) = v16;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = v29;
  return v32;
}

Swift::Int __swiftcall ForEachState.count(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](style.value);
  v7 = &v23 - v6;
  v9 = *v8;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_9;
  }

  v10 = v3[20];
  swift_beginAccess();
  v11 = v3[11];
  v12 = v3[12];
  v13 = v3[13];
  v14 = v3[14];
  v27[0] = v4;
  v27[1] = v11;
  v23 = v11;
  v27[2] = v12;
  v27[3] = v13;
  v27[4] = v14;
  v15 = type metadata accessor for ForEach();
  v16.value = (*(*(v15 - 8) + 48))(v2 + v10, 1, v15);
  if (LODWORD(v16.value) == 1)
  {
LABEL_18:
    __break(1u);
    return v16.value;
  }

  (*(v5 + 16))(v7, v2 + v10, v4);
  v17 = dispatch thunk of Collection.count.getter();
  (*(v5 + 8))(v7, v4);
  if (!v17)
  {
LABEL_9:
    v16.value = 0;
    return v16.value;
  }

  v16 = ForEachState.fetchViewsPerElement()();
  if (v16.is_nil)
  {
    v18 = *(v2 + *(*v2 + 184));
    v19 = *(v18 + 16);
    if (v19 >= v17 && *(v2 + *(*v2 + 192)) == v9)
    {
      if (v17 - 1 < v19)
      {
        v16.value = *(v18 + 8 * (v17 - 1) + 32);
        return v16.value;
      }

      goto LABEL_17;
    }

LABEL_15:
    v26 = 0;
    v27[0] = 0;
    v25 = 0;
    MEMORY[0x1EEE9AC00](v16.value);
    *(&v23 - 4) = &v26;
    *(&v23 - 3) = v9;
    *(&v23 - 2) = v2;
    *(&v23 - 1) = v27;
    protocol witness for Collection.endIndex.getter in conformance CollectionOfTwo<A>(&v24);
    ForEachState.forEachItem(from:style:do:)(&v25, &v24, partial apply for closure #1 in ForEachState.count(style:), (&v23 - 6));
    v16.value = v26;
    return v16.value;
  }

  value = v16.value;
  v16.value *= v17;
  if ((value * v17) >> 64 != v16.value >> 63)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9)
  {
    v21 = (v16.value * (v9 >> 1)) >> 64;
    v16.value *= v9 >> 1;
    if (v21 != v16.value >> 63)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  return v16.value;
}

uint64_t _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _ViewList_Group.appendViewIDs(into:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *v1 + 32;
    do
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4, v12, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v5 = v13;
      outlined init with take of AnyTrackedValue(v12, v8);
      v11 = v5;
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 48))(v3, v6, v7);
      result = outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v8, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t DynamicViewList.WrappedList.appendViewIDs(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v13[-v8];
  v10 = *(v2 + 40);
  (*(v6 + 16))(&v13[-v8], v10 + *(*v10 + 136), AssociatedTypeWitness, v7);
  LOBYTE(v10) = *(v10 + *(*v10 + 160));
  v14 = v4;
  v15 = v3;
  v16 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  HeterogeneousViewIDsAccumulator.withExplicitID<A>(_:isUnary:body:)(v9, v10, partial apply for closure #1 in DynamicViewList.WrappedList.appendViewIDs(into:), v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t HeterogeneousViewIDsAccumulator.withExplicitID<A>(_:isUnary:body:)(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = MEMORY[0x1E69E6720];
  outlined init with copy of AbstractContiguousArray?(v7 + 56, v18, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v17 = a2;
  outlined assign with take of AbstractContiguousArray?(v16, v7 + 56, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), v13, type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  a3(v7);
  return outlined assign with take of AbstractContiguousArray?(v18, v7 + 56, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), v13, type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
}

uint64_t outlined init with copy of AbstractContiguousArray?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Hashable, isUnary: Bool)()
{
  if (!lazy cache variable for type metadata for (Hashable, isUnary: Bool))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for Hashable);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Hashable, isUnary: Bool));
    }
  }
}

uint64_t outlined assign with take of AbstractContiguousArray?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

int64_t protocol witness for ViewList.appendViewIDs(into:) in conformance BaseViewList()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v0[5];
  if (v4 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= 0x7FFFFFFF)
  {
    return HeterogeneousViewIDsAccumulator.appendWithoutExplicitID(indices:implicitID:)(result << 32, v4);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in DynamicViewList.WrappedList.appendViewIDs(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 48))(a1, v4, v5);
}

unint64_t HeterogeneousViewIDsAccumulator.appendWithoutExplicitID(indices:implicitID:)(unint64_t result, int a2)
{
  v3 = result;
  v4 = HIDWORD(result);
  if (result == HIDWORD(result))
  {
    return result;
  }

  outlined init with copy of AbstractContiguousArray?(v2 + 56, &v37, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  if (*&v38[8])
  {
    *&v40[9] = *&v38[9];
    v39 = v37;
    *v40 = *v38;
    v6 = *&v38[8];
    v7 = *&v38[9] >> 56;
    v8 = __swift_project_boxed_opaque_existential_1(&v39, *&v38[8]);
    outlined init with copy of (Hashable, isUnary: Bool)(&v39, &v37, type metadata accessor for (Hashable, isUnary: Bool));
    v9 = v38[24];
    __swift_destroy_boxed_opaque_existential_1(&v37);
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = a2;
    }

    HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(v3, v10, v8, v6, v7);
    return outlined destroy of (Hashable, isUnary: Bool)(&v39, type metadata accessor for (Hashable, isUnary: Bool));
  }

  outlined destroy of CanonicalViewIDProtocol?(&v37, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  v11 = *(v2 + 40);
  if (v11)
  {
    v12 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    type metadata accessor for TypedCanonicalViewID<Nil>();
    v13 = v2;
    v15 = (*(v12 + 24))(v14, v14, v11, v12);
    if (v15)
    {
      v16 = v15;
      outlined destroy of CanonicalViewIDProtocol?(v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0;
      v17 = *(v16 + 16);
      result = specialized Collection.count.getter(v3);
      v18 = v17 + result;
      if (__OFADD__(v17, result))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v37 = v16;
      if (result)
      {
        if (v18 <= *(v16 + 24) >> 1)
        {
LABEL_29:
          if (v4 < v3)
          {
LABEL_41:
            __break(1u);
            return result;
          }

          while (v3 < v4)
          {
            *&v37 = v16;
            v34 = *(v16 + 16);
            v33 = *(v16 + 24);
            if (v34 >= v33 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
              v2 = v13;
              v16 = v37;
            }

            *(v16 + 16) = v34 + 1;
            v35 = v16 + 8 * v34;
            *(v35 + 32) = v3;
            *(v35 + 36) = a2;
            LODWORD(v3) = v3 + 1;
            if (v4 == v3)
            {
              type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(0, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
              *&v40[8] = v36;
              *&v40[16] = lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>();
              *&v39 = v16;
              return outlined assign with take of AbstractContiguousArray?(&v39, v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
            }
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v17 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }
      }

      else if (v17 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v19, 0);
      v16 = v37;
      goto LABEL_29;
    }
  }

  outlined init with copy of AbstractContiguousArray?(v2 + 16, &v37, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  if (*&v38[8])
  {
    outlined init with take of AnyTrackedValue(&v37, &v39);
    v20 = *&v40[8];
    v21 = *&v40[16];
    v22 = __swift_project_boxed_opaque_existential_1(&v39, *&v40[8]);
    type metadata accessor for TypedCanonicalViewID<Nil>();
    v24 = v23;
    v25 = lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>);
    append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v22, v2, v24, v20, v25, v21);
    outlined destroy of CanonicalViewIDProtocol?(v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    v26 = v2;
    *(v2 + 48) = 0;
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  else
  {
    v26 = v2;
    outlined destroy of CanonicalViewIDProtocol?(&v37, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  }

  v27 = specialized Collection.count.getter(v3);
  *&v37 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  if (v4 < v3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v28 = v37;
  v2 = v26;
  do
  {
    if (v3 >= v4)
    {
      __break(1u);
      goto LABEL_38;
    }

    *&v37 = v28;
    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v28 = v37;
    }

    *(v28 + 16) = v30 + 1;
    v31 = v28 + 8 * v30;
    *(v31 + 32) = v3;
    *(v31 + 36) = a2;
    LODWORD(v3) = v3 + 1;
  }

  while (v4 != v3);
  type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(0, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
  *&v40[8] = v32;
  *&v40[16] = lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>();
  *&v39 = v28;
  return outlined assign with take of AbstractContiguousArray?(&v39, v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

uint64_t protocol witness for ViewList.appendViewIDs(into:) in conformance ModifiedViewList(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 48))(a1, v3, v4);
}

uint64_t ForEachList.appendViewIDs(into:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a2;
  v8 = a3;
  v4 = type metadata accessor for ForEachList();
  WitnessTable = swift_getWitnessTable();
  return ForEachState.appendViewIDs<A>(into:viewList:)(a1, &v7, v4, WitnessTable);
}

uint64_t ForEachState.appendViewIDs<A>(into:viewList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v57 - v12;
  if (AGSubgraphIsValid())
  {
    v79 = ForEachState.fetchViewsPerElement()();
    if (!v79.is_nil)
    {
      value = v79.value;
      v67 = a1;
      v75 = 0;
      v76 = 0;
      v77 = -1;
      MEMORY[0x1EEE9AC00](v79.value);
      *(&v57 - 6) = a3;
      *(&v57 - 5) = a4;
      *(&v57 - 4) = &v76;
      *(&v57 - 3) = v15;
      *(&v57 - 2) = v4;
      v16 = v9[12];
      v62 = v9[11];
      v63 = v16;
      v17 = v9[13];
      v18 = v9[14];
      v64 = v17;
      v69 = 2;
      ForEachState.forEachItem(from:style:do:)(&v75, &v69, partial apply for closure #1 in ForEachState.appendViewIDs<A>(into:viewList:), (&v57 - 8));
      v19 = v77;
      if (v77 == 255)
      {
        return HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(a2, a3, a4);
      }

      v61 = v18;
      v20 = v76;
      if (v77)
      {
        if (v76[16])
        {
          HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(a2, a3, a4);
          v21 = v20;
          return outlined consume of BaseIDs?(v21, v19);
        }

        if (value == 1)
        {
          v25 = v4 + *(*v4 + 160);
          swift_beginAccess();
          v69 = v10;
          v70 = v62;
          v71 = v63;
          v72 = v64;
          v73 = v61;
          v26 = type metadata accessor for ForEach();
          result = (*(*(v26 - 8) + 48))(v25, 1, v26);
          if (result == 1)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v27 = *(v25 + *(v26 + 64));
          if (v27)
          {
            outlined copy of BaseIDs?(v20, v19);

            ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(v67, v27);
            outlined consume of BaseIDs?(v20, v19);
LABEL_25:

            v21 = v20;
            return outlined consume of BaseIDs?(v21, v19);
          }

          v52 = v68;
          (*(v11 + 16))(v68, v25, v10);
          outlined copy of BaseIDs(v20, 1);
          v53 = dispatch thunk of Collection.count.getter();
          result = (*(v11 + 8))(v52, v10);
          if ((v53 & 0x8000000000000000) == 0)
          {
            ForEachState.appendViewIDsForSingleChildView(into:explicitIDOffsets:)(0, v53, v54);
            outlined consume of BaseIDs?(v20, v19);
            v21 = v20;
            return outlined consume of BaseIDs?(v21, v19);
          }

          goto LABEL_64;
        }

        v30 = v76;
        v31 = *(*v76 + 88);
        v32 = *v76 + 88;
        v33 = outlined copy of BaseIDs(v76, 1);
        v34 = (v31)(v33);
        result = v31();
        v35 = v64;
        if (result < 0)
        {
          goto LABEL_57;
        }

        result = v31();
        if (v34 < 0)
        {
          goto LABEL_58;
        }

        v36 = v34;
        if (result < v34)
        {
          goto LABEL_58;
        }

        v37 = MEMORY[0x1E69E7CC0];
        if (!v36)
        {
LABEL_44:
          v49 = v4 + *(*v4 + 160);
          swift_beginAccess();
          v69 = v10;
          v70 = v62;
          v71 = v63;
          v72 = v35;
          v73 = v61;
          v50 = type metadata accessor for ForEach();
          result = (*(*(v50 - 8) + 48))(v49, 1, v50);
          if (result == 1)
          {
LABEL_69:
            __break(1u);
            return result;
          }

          v51 = *(v49 + *(v50 + 64));
          if (v51)
          {

            ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDKeyPath:)(v67, v37, v51);

            outlined consume of BaseIDs?(v30, v19);
          }

          else
          {
            v55 = v68;
            (*(v11 + 16))(v68, v49, v10);
            v56 = dispatch thunk of Collection.count.getter();
            result = (*(v11 + 8))(v55, v10);
            if (v56 < 0)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDOffsets:)(v67, v37, 0, v56);

            outlined consume of BaseIDs?(v30, v19);
          }

          v21 = v30;
          return outlined consume of BaseIDs?(v21, v19);
        }

        v66 = v32;
        v58 = v10;
        v59 = v11;
        v60 = v19;
        v74 = MEMORY[0x1E69E7CC0];
        v65 = v36;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
        v38 = 0;
        v37 = v74;
        v39 = *(*v30 + 96);
        while (1)
        {
          v39(&v69, v38);
          v40 = v69;

          v74 = v37;
          v41 = v30;
          v43 = *(v37 + 16);
          v42 = *(v37 + 24);
          if (v43 >= v42 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
            v37 = v74;
          }

          *(v37 + 16) = v43 + 1;
          *(v37 + 8 * v43 + 32) = v40;
          result = v31();
          if (v38 >= result)
          {
            break;
          }

          v30 = v41;
          if (v65 == ++v38)
          {
            LOBYTE(v19) = v60;
            v11 = v59;
            v35 = v64;
            v10 = v58;
            goto LABEL_44;
          }
        }

        __break(1u);
      }

      else
      {
        v22 = v4 + *(*v4 + 160);
        if (v76 == 1)
        {
          swift_beginAccess();
          v69 = v10;
          v70 = v62;
          v71 = v63;
          v72 = v64;
          v73 = v61;
          v23 = type metadata accessor for ForEach();
          result = (*(*(v23 - 8) + 48))(v22, 1, v23);
          if (result == 1)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v24 = *(v22 + *(v23 + 64));
          if (v24)
          {

            ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(v67, v24);
          }

          else
          {
            v44 = v68;
            (*(v11 + 16))(v68, v22, v10);
            v45 = dispatch thunk of Collection.count.getter();
            result = (*(v11 + 8))(v44, v10);
            if (v45 < 0)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            ForEachState.appendViewIDsForSingleChildView(into:explicitIDOffsets:)(0, v45, v46);
          }

          v21 = 1;
          return outlined consume of BaseIDs?(v21, v19);
        }

        swift_beginAccess();
        v69 = v10;
        v70 = v62;
        v71 = v63;
        v72 = v64;
        v73 = v61;
        v28 = type metadata accessor for ForEach();
        result = (*(*(v28 - 8) + 48))(v22, 1, v28);
        if (result == 1)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v29 = *(v22 + *(v28 + 64));
        if (!v29)
        {
          if (v20 >= 0xFFFFFFFF80000000)
          {
            if (v20 <= 0x7FFFFFFF)
            {
              if ((v20 & 0x80000000) == 0)
              {
                v47 = v68;
                (*(v11 + 16))(v68, v22, v10);
                v48 = dispatch thunk of Collection.count.getter();
                result = (*(v11 + 8))(v47, v10);
                if ((v48 & 0x8000000000000000) == 0)
                {
                  ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDOffsets:)(v67, v20 << 32, 0, v48);
                  v21 = v20;
                  return outlined consume of BaseIDs?(v21, v19);
                }

                goto LABEL_63;
              }

LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v20 >= 0xFFFFFFFF80000000)
        {
          if (v20 <= 0x7FFFFFFF)
          {
            if ((v20 & 0x80000000) == 0)
            {

              ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDKeyPath:)(v67, 0, v29);
              goto LABEL_25;
            }

            goto LABEL_56;
          }

LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  return ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(a1, a2, a3, a4);
}

uint64_t closure #1 in ForEachState.appendViewIDs<A>(into:viewList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), &v20);
  if (v21)
  {

    ForEachState.context.getter();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = (*(v9 + 40))(v8, v9);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
    v12 = *a4;
    *a4 = v10;
    v13 = *(a4 + 8);
    *(a4 + 8) = v11;
    outlined consume of BaseIDs?(v12, v13);
  }

  else
  {
    v14 = *a4;
    *a4 = a5;
    v15 = *(a4 + 8);
    *(a4 + 8) = 0;
    outlined consume of BaseIDs?(v14, v15);
    outlined destroy of _ViewListOutputs.Views(&v20);
  }

  return 0;
}

uint64_t ForEachState.context.getter()
{
  if ((*(v0 + 172) & 1) == 0)
  {
    return *(v0 + 168);
  }

  __break(1u);
  return result;
}

uint64_t outlined consume of BaseIDs?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of BaseIDs(result, a2 & 1);
  }

  return result;
}

uint64_t outlined copy of BaseIDs?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of BaseIDs(result, a2 & 1);
  }

  return result;
}

uint64_t outlined copy of BaseIDs(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26[1] = a1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v26 - v8;
  type metadata accessor for AnyKeyPath();
  v29 = v6;
  v10 = *(v5 + 88);
  v30 = v10;
  v11 = *(v5 + 96);
  v27 = *(v5 + 112);
  v28 = v11;
  v31 = v11;
  v32 = v27;
  KeyPath = swift_getKeyPath();
  v13 = MEMORY[0x193AC0030](a2, KeyPath);

  if (v13)
  {
    v14 = *(*v3 + 160);
    swift_beginAccess();
    *&v15 = v6;
    *(&v15 + 1) = v10;
    v35 = v28;
    v34 = v15;
    v16 = v27;
    v36 = v27;
    v17 = type metadata accessor for ForEach();
    result = (*(*(v17 - 8) + 48))(v3 + v14, 1, v17);
    if (result != 1)
    {
      (*(v7 + 16))(v9, v3 + v14, v6);
      *&v34 = Array.init<A>(_:)();
      type metadata accessor for ContiguousArray();
      type metadata accessor for ContiguousArray();
      swift_dynamicCast();
      v19 = v33;
      v20 = v10;
      v21 = v16;
LABEL_6:
      HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v19, v20, v21);
    }

    __break(1u);
  }

  else
  {
    v22 = *(*v3 + 160);
    swift_beginAccess();
    *&v34 = v6;
    *(&v34 + 1) = v10;
    v35 = v28;
    v23 = v27;
    v36 = v27;
    v24 = type metadata accessor for ForEach();
    result = (*(*(v24 - 8) + 48))(v3 + v22, 1, v24);
    if (result != 1)
    {
      (*(v7 + 16))(v9, v3 + v22, v6);
      dispatch thunk of Collection.count.getter();
      v25 = (*(v7 + 8))(v9, v6);
      MEMORY[0x1EEE9AC00](v25);
      v26[-2] = a2;
      v26[-1] = v3;
      v19 = ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)();
      v20 = v10;
      v21 = v23;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)()
{
  Array.init(_unsafeUninitializedCapacity:initializingWith:)();
  if (!v0)
  {

    v1 = _ArrayBuffer.requestNativeBuffer()();

    if (!v1)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      v1 = _copyCollectionToContiguousArray<A>(_:)();
    }
  }

  return v1;
}

uint64_t closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v70 = a2;
  v82[8] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v77 = *a4;
  v6 = v77;
  v7 = (v5 + *MEMORY[0x1E69E77B0]);
  v8 = *v7;
  v65 = *(*v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = v57 - v9;
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v57 - v11;
  v81 = v6[13];
  v69 = *(*(v81 + 8) + 8);
  v13 = v6[10];
  v76 = *(v69 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = v57 - v14;
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v71 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = v57 - v18;
  v19 = v7[1];
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v21 = result;
    AssociatedConformanceWitness = KeyPath.makeInitializeFunction()();
    v68 = v22;
    v23 = *(*a4 + 160);
    swift_beginAccess();
    v24 = v77[12];
    v25 = v77[14];
    v82[0] = v13;
    v82[1] = v19;
    v63 = v24;
    v82[2] = v24;
    v82[3] = v81;
    v74 = v25;
    v82[4] = v25;
    v26 = type metadata accessor for ForEach();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    v29 = v23;
    v61 = v26;
    v60 = v28;
    v59 = v27 + 48;
    result = (v28)(a4 + v23, 1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = v73 + 16;
      v30 = *(v73 + 16);
      v58 = a4;
      v67 = v29;
      v32 = a4 + v29;
      v33 = v72;
      v66 = v30;
      v34 = (v30)(v72, v32, v13);
      v57[1] = v57;
      MEMORY[0x1EEE9AC00](v34);
      v62 = v57;
      v57[-10] = v13;
      v57[-9] = v19;
      v35 = v81;
      v57[-8] = v63;
      v57[-7] = v35;
      v36 = v77[15];
      v57[-6] = v74;
      v57[-5] = v36;
      v37 = v68;
      v57[-4] = AssociatedConformanceWitness;
      v57[-3] = v37;
      v57[-2] = v21;
      v38 = v33;
      MEMORY[0x1EEE9AC00](v39);
      v57[-4] = v13;
      v57[-3] = v40;
      v57[-2] = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:);
      v57[-1] = v41;
      v77 = v41;
      dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
      v42 = v67;
      v57[0] = v31;
      if (v82[0])
      {
        v82[0] = 0;
        v66(v71, v33, v13);
        dispatch thunk of Sequence.makeIterator()();
        v76 = v13;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        v43 = v65;
        v74 = *(v65 + 48);
        if (v74(v12, 1, v8) != 1)
        {
          v46 = *(v43 + 32);
          v44 = v43 + 32;
          v45 = v46;
          v47 = v78;
          do
          {
            v48 = v45(v47, v12, v8);
            MEMORY[0x1EEE9AC00](v48);
            v49 = v81;
            v57[-6] = v76;
            v57[-5] = v49;
            v50 = v77;
            v57[-4] = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:);
            v57[-3] = v50;
            v57[-2] = v82;
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, closure #2 in RandomAccessCollection.forEachUnsafeElement(_:)partial apply, &v57[-8], v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v51);
            (*(v44 - 24))(v47, v8);
            if (__OFADD__(v82[0], 1))
            {
              __break(1u);
            }

            ++v82[0];
            dispatch thunk of IteratorProtocol.next()();
          }

          while (v74(v12, 1, v8) != 1);
        }

        (*(v64 + 8))(v79, AssociatedTypeWitness);
        v52 = *(v73 + 8);
        v13 = v76;
        v52(v72, v76);
        v42 = v67;
      }

      else
      {
        v52 = *(v73 + 8);
        v52(v38, v13);
      }

      v53 = v58;
      result = v60(v58 + v42, 1, v61);
      v54 = v70;
      if (result != 1)
      {
        v55 = v71;
        v66(v71, (v53 + v42), v13);
        v56 = dispatch thunk of Collection.count.getter();

        result = (v52)(v55, v13);
        *v54 = v56;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t (*KeyPath.makeInitializeFunction()())(uint64_t a1, uint64_t a2)
{
  v1 = *v0;
  v2 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v3)
  {

    return partial apply for closure #2 in KeyPath.makeInitializeFunction();
  }

  else
  {
    v5 = v2;
    v6 = swift_allocObject();
    v7 = (v1 + *MEMORY[0x1E69E77B0]);
    v6[2] = *v7;
    v6[3] = v7[1];
    v6[4] = v5;
    return partial apply for closure #1 in KeyPath.makeInitializeFunction();
  }
}

uint64_t closure #1 in RandomAccessCollection.forEachUnsafeElement(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = UnsafeBufferPointer.baseAddress.getter();
  if (!result)
  {
    goto LABEL_10;
  }

  v6 = result;
  result = UnsafeBufferPointer.indices.getter();
  if (result == v7)
  {
    return result;
  }

  v8 = v7;
  if (v7 < result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= v7)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 72);
  v10 = v6 + result * v9;
  do
  {
    v11 = result + 1;
    a3();
    v10 += v9;
    result = v11;
  }

  while (v8 != v11);
  return result;
}

uint64_t HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 40);
  if (v8 && (v9 = *(v3 + 48), __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40)), (v10 = (*(v9 + 24))(a2, a2, v8, v9)) != 0))
  {
    *&v17 = v10;
    outlined destroy of CanonicalViewIDProtocol?(v3 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0;
    v11 = type metadata accessor for ContiguousArray();

    swift_getWitnessTable();
    ContiguousArray.append<A>(contentsOf:)();
    v20 = v11;
    WitnessTable = swift_getWitnessTable();
    v19[0] = v17;
    v12 = v3 + 16;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v3 + 16, &v17, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    if (v18)
    {
      outlined init with take of AnyTrackedValue(&v17, v19);
      v13 = v20;
      v14 = WitnessTable;
      v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v15, v4, a2, v13, a3, v14);
      outlined destroy of CanonicalViewIDProtocol?(v4 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *(v4 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(&v17, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    }

    v20 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    v19[0] = a1;

    v12 = v4 + 16;
  }

  return outlined assign with take of AbstractContiguousArray?(v19, v12, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

uint64_t outlined destroy of CanonicalViewIDProtocol?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined consume of BaseIDs(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t initializeWithCopy for HeterogeneousViewIDsAccumulator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);

  if (!v5)
  {
    v9 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 48);
    v7 = *(a2 + 80);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 81) = *(a2 + 81);
    return a1;
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  (**(v5 - 8))(a1 + 16, a2 + 16, v5);
  v7 = *(a2 + 80);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  (**(v7 - 8))(a1 + 56, a2 + 56);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t HeterogeneousViewIDsAccumulator.finalize()@<X0>(_OWORD *a1@<X8>)
{
  outlined init with copy of AbstractContiguousArray?(v1 + 16, &v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  if (v10)
  {
    outlined init with take of AnyTrackedValue(&v9, &v11);
    v3 = *(&v12 + 1);
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    specialized append #1 <A>(buffer:) in HeterogeneousViewIDsAccumulator.finalize()(v5, v1, v3, v4);
    swift_beginAccess();
    outlined destroy of CanonicalViewIDProtocol?(v1 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    outlined destroy of CanonicalViewIDProtocol?(&v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  }

  swift_beginAccess();

  HeterogeneousCollection.init(_:)(v6, &v11);
  v7 = v12;
  *a1 = v11;
  a1[1] = v7;
  return outlined destroy of HeterogeneousViewIDsAccumulator(v1);
}

uint64_t specialized append #1 <A>(buffer:) in HeterogeneousViewIDsAccumulator.finalize()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 32))(a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HomogeneousCollection();
  specialized HomogeneousCollection.__allocating_init(_:)(v5);
  swift_beginAccess();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  swift_endAccess();
  v6 = ContiguousArray.count.getter();

  result = swift_beginAccess();
  v8 = *(a2 + 8);
  v9 = __OFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v10;
  }

  return result;
}

uint64_t protocol witness for AbstractContiguousArray.contiguousArray.getter in conformance <A> ContiguousArray<A>(uint64_t a1)
{
  _ViewInputs.base.modify(*v1, *(a1 + 16));
}

uint64_t destroy for SectionConfiguration(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);

  if (*(a1 + 64))
  {
  }
}

uint64_t type metadata completion function for CountingIndex()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t concatenate<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  (*(v9 + 16))(v11, a2, a4);
  return ConcatenatedCollection.init(_base1:base2:)(v15, v11, a3, a4, a5);
}

uint64_t ConcatenatedCollection.endIndex.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v4 = &v6 - v3;
  dispatch thunk of Collection.endIndex.getter();
  return ConcatenatedCollectionIndex.init(second:)(v4, a1);
}

uint64_t static ConcatenatedCollectionIndex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = v42 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = v42 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v53 = v6;
  v54 = AssociatedTypeWitness;
  v50 = AssociatedTypeWitness;
  v42[0] = v11;
  v42[1] = AssociatedConformanceWitness;
  v55 = AssociatedConformanceWitness;
  v56 = v11;
  v12 = type metadata accessor for _ConcatenatedCollectionIndexRepresentation();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v42 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = v42 - v21;
  v24 = *(v23 + 48);
  v25 = *(v13 + 16);
  v25(v42 - v21, v51, v12, v20);
  (v25)(&v22[v24], v52, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v25)(v15, v22, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v49;
      v26 = v50;
      v28 = *(v49 + 32);
      v29 = v45;
      v28(v45, v15, v50);
      v30 = &v22[v24];
      v31 = v46;
      v28(v46, v30, v26);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v27 + 8);
      v33(v31, v26);
      v33(v29, v26);
      goto LABEL_10;
    }

    (*(v49 + 8))(v15, v50);
LABEL_7:
    v32 = 0;
    v13 = v47;
    v12 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  (v25)(v18, v22, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v48 + 8))(v18, v6);
    goto LABEL_7;
  }

  v34 = v48;
  v35 = *(v48 + 32);
  v36 = v43;
  v35(v43, v18, v6);
  v37 = &v22[v24];
  v38 = v44;
  v35(v44, v37, v6);
  v39 = v36;
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v34 + 8);
  v40(v38, v6);
  v40(v39, v6);
LABEL_10:
  (*(v13 + 8))(v22, v12);
  return v32 & 1;
}

uint64_t SectionAccumulator.RowIDs.endIndex.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *v0 + 56 * v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Collection.startIndex.getter in conformance SectionAccumulator.RowIDs(void *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    *a1 = *(*v1 + 80);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t default argument 1 of GraphHost.asyncTransaction(_:id:_:)@<X0>(_DWORD *a1@<X8>)
{
  result = _threadTransactionID();
  *a1 = result;
  return result;
}

uint64_t static ConditionallyArchivableView._viewListCount(inputs:)(uint64_t *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v2, v8) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = v2;
  v4 = *v1;
  v10 = *(v1 + 1);
  v5 = *(v1 + 3);
  v11 = *(v1 + 2);
  v12 = v5;
  v13 = v1[8];
  v9 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(&v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t _Glass.Variant.explicitMaterial.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if ((v3 & 0xC0000000) == 0x40000000)
  {
    v4 = *v1;
    v5 = v3 & 0xFFFFFFFF000000FFLL;
    result = outlined copy of Material.ID(v4, v3);
  }

  else
  {
    v4 = 0;
    v5 = 255;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t AccessibilityValueStorage.init(description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  outlined assign with copy of AnyAccessibilityValue?(v12, a5);
  if (a4)
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18DDA6EB0;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = a3 & 1;
    *(v10 + 56) = a4;
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    outlined consume of Text?(a1, a2, a3, a4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  result = _sypSgWOhTm_11(v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  *(a5 + 40) = v10;
  return result;
}

void type metadata accessor for ImageProviderBox<Image.RenderingModeProvider>()
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.RenderingModeProvider>)
  {
    lazy protocol witness table accessor for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider();
    v0 = type metadata accessor for ImageProviderBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImageProviderBox<Image.RenderingModeProvider>);
    }
  }
}

uint64_t Image.renderingMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for ImageProviderBox<Image.RenderingModeProvider>();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

unint64_t lazy protocol witness table accessor for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider()
{
  result = lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider;
  if (!lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider;
  if (!lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.RenderingModeProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _RotationEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA09_RotationD0V_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v73[1] = *(a2 + 16);
  v73[2] = v5;
  v73[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v69 = *(a2 + 32);
    v70 = v7;
    v71 = *(a2 + 64);
    v72 = *(a2 + 80);
    v8 = *(a2 + 16);
    v67 = *a2;
    v68 = v8;
    return a3(a1, &v67);
  }

  LODWORD(v67) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_RotationEffectV_Tt1B5(&v67, v73);
  v10 = v67;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11);
  v12 = *(a2 + 16);
  v65 = *a2;
  v66 = v12;
  v49 = *(a2 + 32);
  v63 = *(a2 + 36);
  v64 = *(a2 + 52);
  v53 = *(a2 + 76);
  v13 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v13;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v14 = *(a2 + 16);
  v67 = *a2;
  v68 = v14;
  outlined init with copy of _ViewInputs(a2, v60);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v67);
  v16 = *(a2 + 48);
  v69 = *(a2 + 32);
  v70 = v16;
  v71 = *(a2 + 64);
  v72 = *(a2 + 80);
  v17 = *(a2 + 16);
  v67 = *a2;
  v68 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v67);
  swift_endAccess();
  v19 = *(a2 + 60);
  v46 = v11;
  v47 = v10;
  *&v67 = __PAIR64__(v15, v10);
  *(&v67 + 1) = __PAIR64__(v19, v18);
  LODWORD(v68) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24);
  swift_endAccess();
  *&v67 = __PAIR64__(v23, v22);
  DWORD2(v67) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v49 | 0x1C;
  v60[0] = v65;
  v60[1] = v66;
  *&v61[4] = v63;
  *&v61[20] = v64;
  *v61 = v49 | 0x1C;
  *&v61[28] = v20;
  *v62 = v21;
  *&v62[4] = v21;
  *&v62[8] = v26;
  *&v62[12] = v53;
  *v58 = *v61;
  *&v58[16] = *&v61[16];
  *v59 = *v62;
  *&v59[16] = HIDWORD(v53);
  v56 = v65;
  v57 = v66;
  v28 = outlined init with copy of _ViewInputs(v60, &v67);
  (a3)(v54, v28, &v56);
  v69 = *v58;
  v70 = *&v58[16];
  v71 = *v59;
  v72 = *&v59[16];
  v67 = v56;
  v68 = v57;
  outlined destroy of _ViewInputs(&v67);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v53;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v52 = v20;
  v31 = ++lastIdentity;
  v50 = *&v73[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v33;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v56 = *a2;
    v57 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v56);
    v36 = *(a2 + 48);
    *v58 = *(a2 + 32);
    *&v58[16] = v36;
    *v59 = *(a2 + 64);
    *&v59[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v56 = *a2;
    v57 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v56);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v54[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v50, v56);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v56 = __PAIR64__(v47, v31);
    *(&v56 + 1) = __PAIR64__(v38, v35);
    *&v57 = __PAIR64__(v43, v46);
    DWORD2(v57) = v40;
    BYTE12(v57) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectDisplayList<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectDisplayList);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>();
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v56) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v53;
    v20 = v52;
LABEL_17:
    v56 = v65;
    v57 = v66;
    *v58 = v27;
    *&v58[4] = v63;
    *&v58[20] = v64;
    *&v58[28] = v20;
    *v59 = v21;
    *&v59[4] = v21;
    *&v59[8] = v26;
    *&v59[12] = v30;
    result = outlined destroy of _ViewInputs(&v56);
    *a4 = v54[0];
    a4[1] = v54[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v73[0], &v56);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v55[0] = v31;
    v45 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v55);
    v45(&v56, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _RotationEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA09_RotationD0V_Tt3B5(v4, v8, a3, a4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_RotationEffectV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_RotationEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectDisplayList<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>);
  }

  return result;
}

double Image.RenderingModeProvider.resolve(in:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v28 - v9);
  v11 = *v2;
  v12 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v7);
  v13 = v7[1];
  v38 = *v7;
  v39 = v13;
  v37 = v12;

  v14 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v37);

  if ((v14 & 1) == 0)
  {
    v15 = *(v5 + 32);
    if (*(v7 + v15) == 8)
    {
      *(v7 + v15) = 1;
    }
  }

  outlined init with take of ImageResolutionContext(v7, v10);
  (*(*v11 + 80))(v28, v10);
  v16 = BYTE8(v28[0]);
  if (BYTE8(v28[0]) == 2)
  {
    outlined destroy of ImageResolutionContext(v10);
  }

  else
  {
    v17 = v10[1];
    v38 = *v10;
    v39 = v17;
    v37 = v12;

    v18 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v37);

    v19 = 0x3F8000003F800000;
    if (v18)
    {
      v20 = 2143289344;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *&v29[12] = v19;
    *&v29[20] = v19;
    *&v29[28] = v20;
    LOBYTE(v30) = (v18 & 1) == 0;
    v21 = v36[26];

    *&v36[16] = 0;
    *&v36[24] = (v16 != 255) & v18;
    outlined destroy of ImageResolutionContext(v10);
    if ((v21 & 2) != 0)
    {
      v36[26] = 2;
    }

    else
    {
      v36[26] = 0;
    }
  }

  v22 = v35;
  a2[8] = v34;
  a2[9] = v22;
  a2[10] = *v36;
  *(a2 + 171) = *&v36[11];
  v23 = v31;
  a2[4] = v30;
  a2[5] = v23;
  v24 = v33;
  a2[6] = v32;
  a2[7] = v24;
  v25 = v28[1];
  *a2 = v28[0];
  a2[1] = v25;
  result = *v29;
  v27 = *&v29[16];
  a2[2] = *v29;
  a2[3] = v27;
  return result;
}

uint64_t outlined init with take of ImageResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResolutionContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v69 = *a2;
  v70 = v5;
  v6 = *(a2 + 32);
  v67 = *(a2 + 36);
  v68 = *(a2 + 52);
  v8 = *(a2 + 64);
  v7 = *(a2 + 68);
  v9 = *(a2 + 72);
  v10 = *(a2 + 76);
  v11 = *(a2 + 60);
  v12 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v48 = v10;
  if (v12)
  {
    v46 = v6;
    v13 = *(a2 + 48);
    v14 = *(a2 + 64);
    v15 = *(a2 + 16);
    v63 = *(a2 + 32);
    v64 = v13;
    v65 = v14;
    v66 = *(a2 + 80);
    v61 = *a2;
    v62 = v15;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v58);
    v16 = CachedEnvironment.animatedPosition(for:)(&v61);
    swift_endAccess();
    *&v61 = __PAIR64__(*(a2 + 60), v16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
    v11 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v8 = *(swift_dynamicCastClassUnconditional() + 248);

    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v19 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v20 = specialized CachedEnvironment.attribute<A>(id:_:)(v19);
    swift_endAccess();
    *&v61 = __PAIR64__(v18, v17);
    DWORD2(v61) = v20;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    v6 = v46 | 0x1C;
    v7 = v8;
    v10 = v48;
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v61);
  }

  v58[0] = v69;
  v58[1] = v70;
  *&v59[4] = v67;
  *&v59[20] = v68;
  *v59 = v6;
  v45 = v11;
  *&v59[28] = v11;
  *v60 = v8;
  *&v60[4] = v7;
  *&v60[8] = v9;
  *&v60[12] = v10;
  *v56 = *v59;
  *&v56[16] = *&v59[16];
  *v57 = *v60;
  *&v57[16] = HIDWORD(v10);
  v54 = v69;
  v55 = v70;
  v21 = outlined init with copy of _ViewInputs(v58, &v61);
  a3(v52, v21, &v54);
  v63 = *v56;
  v64 = *&v56[16];
  v65 = *v57;
  v66 = *&v57[16];
  v61 = v54;
  v62 = v55;
  outlined destroy of _ViewInputs(&v61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

  v47 = v6;
  v22 = lastIdentity + 1;
  lastIdentity = v22;
  v23 = *a2;
  v24 = *(a2 + 16);
  v51 = v22;
  if ((*(a2 + 37) & 1) == 0)
  {
    v25 = *MEMORY[0x1E698D3F8];
LABEL_9:
    v26 = *(a2 + 48);
    *v56 = *(a2 + 32);
    *&v56[16] = v26;
    *v57 = *(a2 + 64);
    *&v57[16] = *(a2 + 80);
    v27 = *(a2 + 16);
    v54 = *a2;
    v55 = v27;
    swift_beginAccess();
    v28 = CachedEnvironment.animatedPosition(for:)(&v54);
    v29 = *(a2 + 48);
    *v56 = *(a2 + 32);
    *&v56[16] = v29;
    *v57 = *(a2 + 64);
    *&v57[16] = *(a2 + 80);
    v30 = *(a2 + 16);
    v54 = *a2;
    v55 = v30;
    v31 = CachedEnvironment.animatedSize(for:)(&v54);
    swift_endAccess();
    v32 = *(v24 + 16);
    v33 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v52[0]);
    if ((v33 & 0x100000000) == 0)
    {
      v25 = v33;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v34 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v23, v54);
    if (v34)
    {
      v35 = *(v34 + 72);
    }

    else
    {
      v35 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v36 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v23, v54);
    if (v36)
    {
      v37 = *(v36 + 72);
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 60);
    v39 = *(a2 + 68);
    v40 = *(a2 + 76);
    *&v54 = __PAIR64__(a1, v51);
    *(&v54 + 1) = __PAIR64__(v31, v28);
    *&v55 = __PAIR64__(v39, v38);
    *(&v55 + 1) = __PAIR64__(v40, v32);
    *v56 = v25;
    v56[4] = v35;
    *&v56[8] = 0;
    *&v56[12] = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_GeometryGroupEffect>, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>();
    v41 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v54) = 0;
    PreferencesOutputs.subscript.setter(v41, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v10 = v48;
    v6 = v47;
LABEL_18:
    v54 = v69;
    v55 = v70;
    *v56 = v6;
    *&v56[4] = v67;
    *&v56[20] = v68;
    *&v56[28] = v45;
    *v57 = v8;
    *&v57[4] = v7;
    *&v57[8] = v9;
    *&v57[12] = v10;
    result = outlined destroy of _ViewInputs(&v54);
    *a4 = v52[0];
    a4[1] = v52[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v23, &v54);
  result = AGWeakAttributeGetAttribute();
  v25 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v53[0] = v22;
    v43 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v53);
    v43(&v54, 0);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_GeometryGroupEffect>, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance AnyLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9AnyLayoutV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v11[0] = v6;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v2;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<AnyLayout> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyLayoutProperties and conformance AnyLayoutProperties()
{
  result = lazy protocol witness table cache variable for type AnyLayoutProperties and conformance AnyLayoutProperties;
  if (!lazy protocol witness table cache variable for type AnyLayoutProperties and conformance AnyLayoutProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayoutProperties and conformance AnyLayoutProperties);
  }

  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA03AnyC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

uint64_t AccessibilityPropertiesEntry.unsafeCast<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(*(*(a1 + 16) - 8) + 64) == *(*(a2 - 8) + 64))
  {
    return (*(*(a2 - 8) + 16))(a3, v3);
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall Array.merge(with:)(Swift::OpaquePointer with)
{
  v3 = *(v1 + 16);
  v4 = MEMORY[0x193ABF270](*v2, v3);

  swift_getWitnessTable();
  Array.append<A>(contentsOf:)();
  return v4 != MEMORY[0x193ABF270](*v2, v3);
}

uint64_t AnyLayout.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyLayoutBox();
  (*(v4 + 16))(v6, a1, a2);
  v7 = _AnyLayoutBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t View.mask<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _MaskEffect();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  (*(v6 + 32))(v13, v8, a3);
  View.modifier<A>(_:)(v13, a2, v9);
  return (*(v10 + 8))(v13, v9);
}

void type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ViewModifier_Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier()
{
  result = lazy protocol witness table cache variable for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier;
  if (!lazy protocol witness table cache variable for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier);
  }

  return result;
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(void))
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, a3, a4);
    v5 = type metadata accessor for BodyInput();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>;
  if (!lazy protocol witness table cache variable for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for ChildEnvironment<Bool>, MEMORY[0x1E69E6370], type metadata accessor for ChildEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>);
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalV033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0jG7ElementAMLLOTt0g5()
{
  v1 = *v0;
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);

    outlined copy of BodyInputElement();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalT008_3DF70D9Z23D7473F4D189A049B764CFEFLLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 40);
      v3 = *(a2 + 40);
      if (*(a1 + 32))
      {
        if (!*(a2 + 32))
        {
          goto LABEL_13;
        }

        type metadata accessor for (_:_:)();

        outlined copy of BodyInputElement();
      }

      else
      {
        if (*(a2 + 32))
        {
          goto LABEL_13;
        }

        type metadata accessor for (_:_:)();

        outlined copy of BodyInputElement();
      }

      outlined copy of BodyInputElement();
      if (AGCompareValues())
      {
        v4 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(v2, v3);
        outlined consume of BodyInputElement();
        outlined consume of BodyInputElement();

        return v4 & 1;
      }

      outlined consume of BodyInputElement();
      outlined consume of BodyInputElement();
    }

LABEL_13:
    v4 = 0;
    return v4 & 1;
  }

  if (a2)
  {
    goto LABEL_13;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t Binding.transaction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);

  *a3 = a1;
  return result;
}

uint64_t closure #1 in DynamicViewList.WrappedList.viewIDs.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for DynamicViewList.WrappedIDs();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _ViewList_ID._Views();
  v6 = *(a2 + 40);
  v8[0] = v5;
  v8[1] = v6;
  *a3 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(v8, 1);
}

_BYTE *_ViewList_ID._Views.__allocating_init(_:isDataDependent:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 128) - 8) + 32))(&v4[*(*v4 + 152)], a1);
  v4[16] = a2;
  return v4;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance DynamicViewList<A>.WrappedIDs@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicViewList.WrappedIDs.endIndex.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ForEachState<A, B, C>.ForEachViewIDCollection@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ForEachState.ForEachViewIDCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t closure #2 in KeyPath.makeInitializeFunction()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - v5;
  v8 = *v7;
  v9 = *(*v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v9 + 16))(&v15 - v12, v11);
  swift_getAtKeyPath();
  (*(v9 + 8))(v13, v8);
  return _sSpsRi_zrlE10initialize2toyxn_tF(v6, a2, v4);
}

uint64_t *specialized HomogeneousCollection.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  v2[4] = a1;
  v4 = *(v3 + 160);

  v5 = ContiguousArray.count.getter();
  v2[2] = v4;
  v2[3] = v5;
  return v2;
}

uint64_t HeterogeneousCollection.init(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_5:
    v5 = *(result + 16);
    goto LABEL_10;
  }

  v5 = 0;
  while (*(*(result + 8 * v5 + 32) + 24))
  {
    if (v4 == ++v5)
    {
      goto LABEL_5;
    }
  }

  if (__OFADD__(v5, 1))
  {
    goto LABEL_50;
  }

  if (v5 + 1 != v4)
  {
    v14 = v5 + 5;
    do
    {
      v16 = v14 - 4;
      if (v14 - 4 >= v4)
      {
        goto LABEL_43;
      }

      v17 = *(v2 + 8 * v14);
      if (*(v17 + 24))
      {
        if (v16 != v5)
        {
          if (v5 >= v4)
          {
            goto LABEL_44;
          }

          v18 = *(v2 + 32 + 8 * v5);

          result = swift_isUniquelyReferenced_nonNull_native();
          v22 = v2;
          if ((result & 1) == 0)
          {
            result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0(v2);
            v2 = result;
            v22 = result;
          }

          if (v5 >= *(v2 + 16))
          {
            goto LABEL_45;
          }

          *(v2 + 8 * v5 + 32) = v17;

          specialized ContiguousArray._endMutation()();
          v19 = v22;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0(v22);
            v19 = result;
            v22 = result;
          }

          if (v16 >= *(v19 + 16))
          {
            goto LABEL_46;
          }

          *(v19 + 8 * v14) = v18;

          result = specialized ContiguousArray._endMutation()();
          v2 = v22;
        }

        ++v5;
        v4 = *(v2 + 16);
      }

      v15 = v14 - 3;
      ++v14;
    }

    while (v15 != v4);
  }

  if (v4 < v5)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
LABEL_10:
    if (__OFADD__(v4, v5 - v4))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v21 = v2;
    if (!swift_isUniquelyReferenced_nonNull_native() || v5 > *(v2 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v4, 0);
    result = specialized ContiguousArray._endMutation()();
    v6 = *(v2 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
LABEL_24:
      *a2 = v21;
      a2[1] = v7;
      a2[2] = 0;
      a2[3] = 0;
      return result;
    }

    v20 = MEMORY[0x1E69E7CC0];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = 0;
    v9 = 0;
    v7 = v20;
    while (v8 < *(v21 + 16))
    {
      v10 = *(*(v21 + 8 * v8 + 32) + 24);
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_41;
      }

      v11 = __CFADD__(v9, v10);
      v9 += v10;
      if (v11)
      {
        goto LABEL_42;
      }

      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v8;
      *(v20 + 16) = v13 + 1;
      *(v20 + 4 * v13 + 32) = v9;
      if (v6 == v8)
      {

        goto LABEL_24;
      }
    }

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
    goto LABEL_47;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t destroy for HeterogeneousViewIDsAccumulator(uint64_t a1)
{

  if (*(a1 + 40))
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  }

  if (*(a1 + 80))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1 + 56);
  }

  return result;
}

uint64_t initializeWithCopy for SectionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  v7 = v5;
  if (v6)
  {
    *(a1 + 56) = *(a2 + 56);
    v8 = *(a2 + 72);
    *(a1 + 64) = v6;
    *(a1 + 72) = v8;
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 65) = *(a2 + 65);
  }

  v9 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 136);
  v11 = *(a2 + 144);
  *(a1 + 136) = v10;
  *(a1 + 144) = v11;

  return a1;
}

unint64_t lazy protocol witness table accessor for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs()
{
  result = lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs;
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs;
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs;
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs;
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }

  return result;
}

uint64_t ConcatenatedCollection.init(_base1:base2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ConcatenatedCollection();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ConcatenatedCollection.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v4 = &v9 - v3;
  v5 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    dispatch thunk of Collection.startIndex.getter();
    return ConcatenatedCollectionIndex.init(second:)(v7, a1);
  }

  else
  {
    dispatch thunk of Collection.startIndex.getter();
    return ConcatenatedCollectionIndex.init(first:)(v4, a1);
  }
}

uint64_t ConcatenatedCollectionIndex.init(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a2, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _ConcatenatedCollectionIndexRepresentation();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Collection.index(atOffset:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t type metadata completion function for ConcatenatedCollectionIndex()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for _ConcatenatedCollectionIndexRepresentation();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance SectionAccumulator.RowIDs()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = *(v1 + 80);
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v5 = *(v1 + 80);
  }

  else
  {
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v3 = 0;
    v5 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v3 < v5 || result < v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2)
  {
    v8 = *(v1 + 80);
  }

  else
  {
    v8 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v4 < v8 || result < v4)
  {
    goto LABEL_16;
  }

  result = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance SectionAccumulator.RowIDs@<X0>(uint64_t *a1@<X8>)
{
  result = SectionAccumulator.RowIDs.endIndex.getter();
  *a1 = result;
  return result;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v8 = v6;
  v64 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v15 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v8 + 16))
  {
    v17 = 0;
    goto LABEL_43;
  }

  v53 = v15;
  v16 = (a5 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v8 + 168) &= a6 & 1;
  v18 = swift_beginAccess();
  v19 = *(v8 + 144);
  v20 = *(v19 + 16);
  v52 = a2;
  if (v20)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 144) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      *(v8 + 144) = v19;
    }

    if (v20 > *(v19 + 16))
    {
      __break(1u);
LABEL_55:
      swift_once();
LABEL_17:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v57[0]) = v20;
          AGGraphAddTraceEvent();
        }

        *(v8 + 144) = v19;
        swift_endAccess();
        if (v16)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v19 + 16))
        {
          specialized Array._customRemoveLast()(&v59);
          LODWORD(a4) = v60;
          v16 = v61;
          v7 = v59;
          if (v61)
          {
            v19 = HIDWORD(v60);
          }

          else
          {
            outlined consume of AsyncTransaction?(v59, v60, 0);
            specialized Array.remove(at:)(*(*(v8 + 144) + 16) - 1, &v59);
            v7 = v59;
            LODWORD(a4) = v60;
            LODWORD(v19) = HIDWORD(v60);
            v16 = v61;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a6 = *(v8 + 144);

          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 144) = a6;
          if (v44)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_58:
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
      *(v8 + 144) = a6;
LABEL_46:
      v46 = *(a6 + 2);
      v45 = *(a6 + 3);
      if (v46 >= v45 >> 1)
      {
        a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, a6);
      }

      *(a6 + 2) = v46 + 1;
      v47 = &a6[24 * v46];
      *(v47 + 4) = v7;
      *(v47 + 10) = a4;
      *(v47 + 11) = v19;
      *(v47 + 6) = v16;
      *(v8 + 144) = a6;
      swift_endAccess();

LABEL_49:
      v48 = *(v8 + 144);
      v49 = *(v48 + 16);
      if (v49)
      {
        v17 = *(v48 + 24 * v49 + 20);
      }

      else
      {
        v17 = 0;
      }

      v15 = v53;
      goto LABEL_43;
    }

    v20 = v19 + 24 * v20;
    if (*(v20 + 16) == a2)
    {
      v22 = *(v20 + 8);
      if (v22)
      {
        if (a1)
        {
          v57[0] = MEMORY[0x1E69E7CC0];

          v23 = compareLists(_:_:ignoredTypes:)(v22, a1, v57);
          v7 = a1;

          if (v23)
          {
LABEL_16:
            a6 = (v20 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3, a4);
            LODWORD(v20) = *(v20 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_55;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_16;
      }
    }

    *(v8 + 144) = v19;
    swift_endAccess();
    if (!v16)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v8 + 192))(v18))
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  v15 = &protocol witness table for CustomGraphMutation;
  v62 = &type metadata for CustomGraphMutation;
  v63 = &protocol witness table for CustomGraphMutation;
  v59 = a3;
  v60 = a4;
  swift_beginAccess();
  v27 = static AsyncTransaction.nextTraceID;
  v51 = a1;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v59, v57);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = v28[2];
  v29 = v28[3];
  v17 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(&v59);
  v31 = v58;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = (&v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v55 = &type metadata for CustomGraphMutation;
  v56 = &protocol witness table for CustomGraphMutation;
  v54 = *v35;
  v28[2] = v17;
  outlined init with take of AnyTrackedValue(&v54, &v28[5 * v30 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v57);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v37 = v52;
  v38 = v51;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v17 = (v27 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v59) = (v27 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v31 = *(v8 + 144);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 144) = v31;
    v15 = v53;
    if (v39)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
  *(v8 + 144) = v31;
LABEL_40:
  v41 = *(v31 + 2);
  v40 = *(v31 + 3);
  if (v41 >= v40 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v31);
  }

  *(v31 + 2) = v41 + 1;
  v42 = &v31[24 * v41];
  *(v42 + 4) = v38;
  *(v42 + 10) = v37;
  *(v42 + 11) = v17;
  *(v42 + 6) = v28;
  *(v8 + 144) = v31;
  swift_endAccess();

LABEL_43:
  _MovableLockUnlock(v15);
  return v17;
}

void *EnvironmentValues.writingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

void *EnvironmentValues.minimumScaleFactor.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(v1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v1);
}

uint64_t EnvironmentValues.effectiveFont.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void *))
{
  v3 = *v2;
  if (v2[1])
  {

    v5 = a1(v3);
  }

  else
  {
    v8[0] = *v2;
    v8[1] = 0;

    v5 = a2(v8);
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t Font.platformFont(in:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v3, v21);
  }

  else
  {
    v23[0] = *a1;

    static EnvironmentValues.FontContextKey.value(in:)(v23, v21);
  }

  v14 = v21[1];
  v15 = v22;
  v13 = v21[0];
  *&v23[0] = *(&v22 + 1);

  v4 = MEMORY[0x1E69E7CC0];
  specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
  v5 = *&v23[0];
  outlined init with copy of Font.Context(&v13, v23);

  v10 = v13;
  v11 = v14;
  v12 = v15;
  v16[0] = v13;
  v16[1] = v14;
  *&v17 = v15;
  *(&v17 + 1) = v4;
  v23[1] = v13;
  v23[2] = v14;
  v23[3] = v17;
  *&v23[0] = a2;
  *(&v23[0] + 1) = v5;
  outlined init with copy of Font.Context(v16, v18);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v23);
  v8 = v7;
  outlined destroy of Font.Context(&v13);
  outlined destroy of Font.FontCache.Key(v23);
  v18[0] = v10;
  v18[1] = v11;
  v19 = v12;
  v20 = v4;
  outlined destroy of Font.Context(v18);
  return v8;
}

uint64_t closure #2 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v9 = type metadata accessor for _BackgroundShapeModifier();
  v10 = *(v9 + 52);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

void type metadata accessor for Font?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for ModifierBodyAccessor);
    lazy protocol witness table accessor for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>();
    v0 = type metadata accessor for DynamicBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for ModifierBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>);
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalW033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalZ033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Ttg5();
  v7 = *v3;
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalT008_3DF70D9Z23D7473F4D189A049B764CFEFLLVGG_Tt2B5(v3, v11, v13);
}

uint64_t sub_18D272F94()
{
  outlined consume of BodyInputElement();

  return swift_deallocObject();
}

void type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ViewModifier_Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t static AnyTransition.modifier<A>(active:identity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ModifierTransition();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = *(v5 + 16);
  v16(v10, a1, a3, v13);
  (v16)(v7, v21, a3);
  v17 = *(v5 + 32);
  v17(v15, v10, a3);
  v17(&v15[*(v11 + 36)], v7, a3);
  swift_getWitnessTable();
  v18 = specialized AnyTransition.init<A>(_:)(v15, v11);
  (*(v12 + 8))(v15, v11);
  return v18;
}

uint64_t type metadata completion function for ModifierTransition()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _TraitWritingModifier(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

uint64_t static _Glass.explicit(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 | (*(a1 + 12) << 32) | 0x40000000;
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = 5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return outlined copy of Material.ID(v2, v3);
}

uint64_t getEnumTagSinglePayload for ZStack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
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
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
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

uint64_t getEnumTagSinglePayload for GlassEffectModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18D273770()
{
  type metadata accessor for ModifierTransition();
  type metadata accessor for PlaceholderContentView();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t assignWithCopy for StrokeShapeView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  *(v8 + 12) = *(v9 + 12);
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 24) = *(v9 + 24);

  *(v8 + 32) = *(v9 + 32);
  v10 = *(a3[3] - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v7 & 0xFFFFFFFFFFFFFFF8) + v12 + 40;
  v14 = (v13 + a2) & ~v12;
  (*(v10 + 24))((v13 + a1) & ~v12, v14);
  v15 = *(v11 + 40);
  v16 = (v15 + ((v13 + a1) & ~v12));
  *v16 = *(v15 + v14);
  v16[1] = *(v15 + v14 + 1);
  v17 = *(a3[4] - 8);
  v18 = v17 + 24;
  v19 = *(v17 + 80) & 0xF8 | 7;
  v20 = v15 + v19 + (v13 & ~v12) + 2;
  v21 = (v20 + a1) & ~v19;
  v22 = (v20 + a2) & ~v19;
  (*(v17 + 24))(v21, v22);
  v23 = *(v18 + 40) + 7;
  v24 = ((v23 + v21) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + v22) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v24[1] = v25[1];
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OpacityRendererEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t static _InsettableBackgroundShapeModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a1;
  v17 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v17;
  v29[4] = *(a2 + 64);
  v30 = *(a2 + 80);
  v18 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v18;
  v28 = v16;
  v19 = *(a8 + 8);
  type metadata accessor for _BackgroundShapeModifier();
  v27[0] = a5;
  v27[1] = a6;
  v27[2] = a7;
  v27[3] = a8;
  type metadata accessor for _InsettableBackgroundShapeModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.unsafeBitCast<A>(to:)(v27);
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  *&v21 = a7;
  *(&v21 + 1) = v19;
  return static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(v27, v29, 1, a3, a4, partial apply for closure #1 in static _InsettableBackgroundShapeModifier._makeView(modifier:inputs:body:), v22, a5, a9, a6, v21);
}

uint64_t closure #1 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v12[2] = type metadata accessor for _BackgroundShapeModifier();
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t _ViewInputs.setContainerShape<A>(_:isSystemShape:)(uint64_t a1, char a2, ValueMetadata *a3, uint64_t a4)
{

  return _ViewInputs.setContainerShape<A>(_:isSystemShape:)(a1, a2, a3, a4, type metadata accessor for ContainerShapeType, &protocol witness table for ContainerShapeType<A>);
}

{

  return _ViewInputs.setContainerShape<A>(_:isSystemShape:)(a1, a2, a3, a4, type metadata accessor for ContainerCornerShapeType, &protocol witness table for ContainerCornerShapeType<A>);
}

uint64_t static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, void (*a4)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a5@<X4>, void (*a6)(__int128 *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v64 = a7;
  v65 = a6;
  v66 = a5;
  v67 = a4;
  v70 = a3;
  v68 = a9;
  v117 = *MEMORY[0x1E69E9840];
  v12 = a2[3];
  v13 = a2[1];
  v113 = a2[2];
  v114 = v12;
  v14 = a2[3];
  v115 = a2[4];
  v15 = a2[1];
  v111 = *a2;
  v112 = v15;
  v107 = v113;
  v108 = v14;
  v109 = a2[4];
  v16 = *a1;
  v116 = *(a2 + 20);
  v110 = *(a2 + 20);
  v105 = v111;
  v106 = v13;
  outlined init with copy of _ViewInputs(&v111, &v99);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v105, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);

  v17 = *(*(a8 - 8) + 64);
  if (v17)
  {
    closure #1 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, a11, *(&a11 + 1), closure #1 in static PointerOffset.of(_:)partial apply);
  }

  v63 = v17;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v69 = v16;
  v19 = OffsetAttribute2;
  v20 = v112;
  swift_beginAccess();
  v21 = *(v20 + 16);
  (*(*(&a11 + 1) + 32))(&v79, a10, *(&a11 + 1));
  v101 = v113;
  v102 = v114;
  v103 = v115;
  v104 = v116;
  v99 = v111;
  v100 = v112;
  _ViewInputs.materialSubstrate.getter(v77);
  *&v85 = __PAIR64__(DWORD2(v111), DWORD2(v112));
  DWORD2(v85) = HIDWORD(v112);
  *&v86 = 0;
  BYTE8(v86) = 0;
  *&v87 = 0;
  DWORD2(v87) = 0;
  ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(v19, *MEMORY[0x1E698D3F8], v21, &v79, v77, BYTE4(v113) & 1, &v85, &v91);
  MEMORY[0x1EEE9AC00](v22);
  v23 = type metadata accessor for ShapeStyleResolver();
  *&v60 = v23;
  *(&v60 + 1) = swift_getWitnessTable();
  outlined init with copy of _GraphInputs(&v111, &v99);
  type metadata accessor for Attribute<_ShapeStyle_Pack>(0, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v91, closure #1 in Attribute.init<A>(_:)partial apply, v59, v23, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  v97[2] = v93;
  v97[3] = v94;
  v98 = v95;
  v97[0] = v91;
  v97[1] = v92;
  (*(*(v23 - 8) + 8))(v97, v23);
  v26 = v99;
  AGGraphSetFlags();
  v27 = *(*(&a11 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness - 8;
  v31 = *(v30 + 64);
  v62 = a11;
  if (v31)
  {
    v61[1] = v61;
    MEMORY[0x1EEE9AC00](v29);
    v59[0] = a8;
    v59[1] = a10;
    v60 = a11;
    LODWORD(v85) = v69;
    *&v99 = a8;
    *(&v99 + 1) = a10;
    v100 = a11;
    type metadata accessor for _BackgroundShapeModifier();
    type metadata accessor for _GraphValue();
    _GraphValue.subscript.getter(partial apply for closure #3 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:), a10, &v79);
    v99 = v111;
    v100 = v112;
    v101 = v113;
    v32 = static Animatable.makeAnimatable(value:inputs:)(&v79, &v99, a10, v27);
    v91 = v99;
    v92 = v100;
    v93 = v101;
    outlined destroy of _GraphInputs(&v91);
    closure #4 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, a11, *(&a11 + 1));
    v33 = AGGraphCreateOffsetAttribute2();
    v34 = AnimatedShape.Init.init(shape:fillStyle:)(v32, v33);
    v35 = type metadata accessor for AnimatedShape();
    *&v99 = v34;
    v36 = type metadata accessor for AnimatedShape.Init();
    WitnessTable = swift_getWitnessTable();
    _GraphValue.init<A>(_:)(&v99, v35, v36, WitnessTable, &v79);
    v101 = v107;
    v102 = v108;
    v103 = v109;
    v104 = v110;
    v99 = v105;
    v100 = v106;
    static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v79, &v99, v26, 0, v38, v35, &protocol witness table for AnimatedShape<A>, &v85);
    v39 = v85;
    v40 = DWORD2(v85);
  }

  else
  {
    outlined destroy of _GraphInputs(&v111);
    *&v99 = a8;
    *(&v99 + 1) = a10;
    v100 = a11;
    v41 = type metadata accessor for _BackgroundShapeModifier();
    v101 = v107;
    v102 = v108;
    v103 = v109;
    v104 = v110;
    v99 = v105;
    v100 = v106;
    LODWORD(v85) = v69;
    static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v85, &v99, v26, 0, v42, v41, &protocol witness table for _BackgroundShapeModifier<A, B>, &v91);
    v39 = v91;
    v40 = DWORD2(v91);
    if (*(*(a10 - 8) + 64))
    {
      closure #2 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, a11, *(&a11 + 1), closure #1 in static PointerOffset.of(_:)partial apply);
    }

    v32 = AGGraphCreateOffsetAttribute2();
  }

  v101 = v113;
  v102 = v114;
  v103 = v115;
  v104 = v116;
  v99 = v111;
  v100 = v112;
  if (v70)
  {
    if (v63)
    {
      outlined init with copy of _ViewInputs(&v111, &v91);
      v43 = v62;
      v44 = closure #1 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, v62, *(&a11 + 1), closure #1 in static PointerOffset.of(_:)partial apply);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v111, &v91);
      v44 = 0;
      v43 = v62;
    }

    *&v91 = a8;
    *(&v91 + 1) = a10;
    *&v92 = v43;
    *(&v92 + 1) = *(&a11 + 1);
    v45 = type metadata accessor for _BackgroundShapeModifier();
    _ViewInputs.applyBackgroundStyle<A, B>(value:offset:)(v69, v44, v45, a8, v43);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v111, &v91);
  }

  v65(&v99, v32);
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  v85 = v99;
  v86 = v100;
  v81 = v101;
  v82 = v102;
  v83 = v103;
  v84 = v104;
  v79 = v99;
  v80 = v100;
  v46 = outlined init with copy of _ViewInputs(&v85, &v91);
  v67(v77, v46, &v79);
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v96 = v84;
  v91 = v79;
  v92 = v80;
  outlined destroy of _ViewInputs(&v91);
  v47 = DWORD2(v77[0]);
  v48 = HIDWORD(v77[0]);
  if (v70)
  {
    v49 = v39;
  }

  else
  {
    v49 = *&v77[0];
  }

  if (v70)
  {
    v50 = v40;
  }

  else
  {
    v50 = DWORD2(v77[0]);
  }

  if (v70)
  {
    v51 = *&v77[0];
  }

  else
  {
    v51 = v39;
  }

  if ((v70 & 1) == 0)
  {
    v47 = v40;
  }

  v75 = MEMORY[0x1E69E7CC0];
  v76 = 0;
  v71 = v49;
  v72 = v50;
  v73 = v51;
  v74 = v47;
  v52 = v114;
  v53 = *(v114 + 16);
  if (v53)
  {

    v54 = (v52 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v71, *(v54 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v54, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v54 += 2;
      --v53;
    }

    while (v53);
  }

  else
  {
  }

  v77[2] = v101;
  v77[3] = v102;
  v77[4] = v103;
  v78 = v104;
  v77[0] = v99;
  v77[1] = v100;
  outlined destroy of _ViewInputs(v77);

  v81 = v107;
  v82 = v108;
  v83 = v109;
  v84 = v110;
  v79 = v105;
  v80 = v106;
  outlined destroy of _ViewInputs(&v79);
  v55 = v68;
  *(v68 + 12) = v48;
  v56 = v75;
  v57 = v76;

  *v55 = v56;
  *(v55 + 8) = v57;
  return result;
}

uint64_t initializeWithCopy for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 9);
  *v9 = *v10;
  *(v9 + 9) = v11;
  return a1;
}

double protocol witness for EventType.timestamp.getter in conformance MouseEvent@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void UnaryChildGeometry.value.getter(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v21 = Value[1];
  v22 = *Value;
  v3 = *AGGraphGetValue();
  v4 = one-time initialization token for lockAssertionsAreEnabled;

  if (v4 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_6:
    v23 = v22;
    v24 = v21;
    (*(*v3 + 152))(&v25, &v23);

    v5 = v25;
    v6 = v26;
    v7 = rect;
    v8 = v28;
    v10 = *(&v28 + 1);
    v9 = v29;
    v12 = v30;
    v11 = v31;
    if (AGGraphGetCurrentAttribute() != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v13 = *AGGraphGetValue();
  *&v23 = v5;
  BYTE8(v23) = v6;
  *&v24 = v7;
  BYTE8(v24) = v8;
  LayoutProxy.dimensions(in:)(&v23, &v25);
  v14 = v25;
  v15 = v26;
  v16 = rect;
  v17 = v29;
  v18 = v12 - v10 * rect;
  v19 = v28;
  v20 = v11 - v9 * *&v28;
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v19;
  *(a1 + 56) = v17;
  if (v13 == 1)
  {
    *a1 = *&v22 - CGRectGetMaxX(*&v18);
  }
}

uint64_t _AnyLayoutBox.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9 = *(v4 + 200);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  return _AnyAnimatableData.init<A>(_:)(v8, v5, *(*(v4 + 192) + 8), a2);
}

uint64_t specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, int a2, uint64_t a3)
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = a1;
    MEMORY[0x1EEE9AC00](result);
    v8[2] = &v14;
    v9 = v7;
    v10 = v7;
    v11 = a2;
    v12 = v7;
    v13 = a3;
    MEMORY[0x1EEE9AC00](v7);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v8, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
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
    v7 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v7;
    v16[4] = *(a1 + 64);
    v17 = *(a1 + 80);
    v8 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v8;
    MEMORY[0x1EEE9AC00](result);
    v10[2] = v16;
    v11 = v9;
    v12 = v9;
    v13 = a2;
    v14 = v9;
    v15 = a3;
    MEMORY[0x1EEE9AC00](v9);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v10, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
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
    v7 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v7;
    v16[4] = *(a1 + 64);
    v17 = *(a1 + 80);
    v8 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v8;
    MEMORY[0x1EEE9AC00](result);
    v10[2] = v16;
    v11 = v9;
    v12 = v9;
    v13 = a2;
    v14 = v9;
    v15 = a3;
    MEMORY[0x1EEE9AC00](v9);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v10, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
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
    v14 = a1;
    MEMORY[0x1EEE9AC00](result);
    v8[2] = &v14;
    v9 = v7;
    v10 = v7;
    v11 = a2;
    v12 = v7;
    v13 = a3;
    MEMORY[0x1EEE9AC00](v7);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v8, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
  }

  return result;
}

double _AnyLayoutBox.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6)
{
  v29 = a2;
  v30 = a4;
  v31 = a1;
  v32 = a3;
  v9 = *(*v6 + 184);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24[-v11];
  v14 = *(v13 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v24[-v17];
  v19 = *a5;
  v26 = *(a5 + 1);
  v25 = *(a5 + 16);
  LODWORD(v17) = *(a5 + 17);
  v27 = v19;
  v28 = v17;
  outlined init with copy of Any(a6 + 8, v39);
  swift_dynamicCast();
  v20 = *(*v6 + 200);
  swift_beginAccess();
  (*(v10 + 16))(v12, v6 + v20, v9);
  v35 = v27;
  v36 = v26;
  v37 = v25;
  v21 = *(v14 + 56);
  v38 = v28;
  v34 = v29 & 1;
  v33 = v30 & 1;
  v22 = v21(v31);
  (*(v10 + 8))(v12, v9);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a6, v18);
  (*(v16 + 8))(v18, AssociatedTypeWitness);
  return v22;
}

uint64_t initializeWithCopy for StrokeShapeView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  *(v8 + 12) = *(v9 + 12);
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 24) = *(v9 + 24);
  *(v8 + 32) = *(v9 + 32);
  v10 = a3[3];
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = *(v11 + 80);
  v14 = (v7 & 0xFFFFFFFFFFFFFFF8) + v13 + 40;

  v12((v14 + a1) & ~v13, (v14 + a2) & ~v13, v10);
  v15 = *(v11 + 64);
  *(v15 + ((v14 + a1) & ~v13)) = *(v15 + ((v14 + a2) & ~v13));
  v16 = *(a3[4] - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80) & 0xF8 | 7;
  v19 = v15 + v18 + (v14 & ~v13) + 2;
  v20 = (v19 + a1) & ~v18;
  v21 = (v19 + a2) & ~v18;
  (*(v16 + 16))(v20, v21);
  *((*(v17 + 48) + 7 + v20) & 0xFFFFFFFFFFFFFFF8) = *((*(v17 + 48) + 7 + v21) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t destroy for StrokeShapeView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + 7;

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(a2[3] - 8);
  v8 = v7 + 8;
  v9 = *(v7 + 80);
  v10 = v6 + v9 + 40;
  (*(v7 + 8))((v10 + a1) & ~v9);
  v11 = *(a2[4] - 8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 80) & 0xF8 | 7;
  v14 = (a1 + *(v8 + 56) + v13 + (v10 & ~v9) + 2) & ~v13;

  return v12(v14);
}

uint64_t outlined init with copy of ImageResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResolutionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double storeEnumTagSinglePayload for _StrokedShape(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
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
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t static StrokeShapeView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = *(a2 + 48);
  v52 = *(a2 + 32);
  v53 = v13;
  v54 = *(a2 + 64);
  v55 = *(a2 + 80);
  v14 = *(a2 + 16);
  v50 = *a2;
  v51 = v14;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v23[1] = v12;
  *&v46 = a7;
  *(&v46 + 1) = a8;
  type metadata accessor for StrokeShapeView();
  type metadata accessor for _GraphValue();
  *&v44 = type metadata accessor for _StrokedShape();
  *(&v44 + 1) = a4;
  *&v45 = swift_getWitnessTable();
  *(&v45 + 1) = a7;
  v15 = type metadata accessor for _ShapeView();
  v16 = type metadata accessor for _BackgroundModifier();
  v17 = type metadata accessor for ModifiedContent();
  _GraphValue.subscript.getter(partial apply for closure #1 in static StrokeShapeView._makeView(view:inputs:), v17, v23);
  v18 = v23[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v36 = v50;
  v37 = v51;
  v43 = v55;
  v20 = v52;
  LODWORD(v38) = 0;
  v22 = v18;
  v42[0] = v50;
  v42[1] = v51;
  v42[3] = v53;
  v42[4] = v54;
  v42[2] = v38;
  v32 = v38;
  v33 = v53;
  v34 = v54;
  v35 = v55;
  v30 = v50;
  v31 = v51;
  outlined init with copy of _ViewInputs(&v50, &v44);
  outlined init with copy of _ViewInputs(v42, &v44);
  static ModifiedContent<>._makeView(view:inputs:)(&v22, &v30, v15, v16, &protocol witness table for _ShapeView<A, B>, &protocol witness table for _BackgroundModifier<A>, a9);
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v44 = v30;
  v45 = v31;
  outlined destroy of _ViewInputs(&v44);
  LODWORD(v38) = v20;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v36);
    AGSubgraphEndTreeElement();
  }

  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  return outlined destroy of _ViewInputs(&v30);
}

uint64_t closure #1 in static StrokeShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v13[2] = type metadata accessor for StrokeShapeView();
  v15 = type metadata accessor for _StrokedShape();
  v16 = a3;
  WitnessTable = swift_getWitnessTable();
  v18 = a6;
  type metadata accessor for _ShapeView();
  type metadata accessor for _BackgroundModifier();
  v14 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t Text.kerning(_:)(uint64_t a1, uint64_t a2, char a3, char *a4, char a5, double a6)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
  }

  v11 = *(a4 + 2);
  v10 = *(a4 + 3);
  if (v11 >= v10 >> 1)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a4);
  }

  *(a4 + 2) = v11 + 1;
  v12 = &a4[16 * v11];
  *(v12 + 4) = a6;
  v12[40] = a5;
  return a1;
}

uint64_t Color.init(_:white:opacity:)(_BYTE *a1, double a2, double a3)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      v8 = a3;
      type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<Color.DisplayP3>, lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = a2;
      *(result + 32) = a2;
      *(result + 40) = v8;
      return result;
    }

    v3 = a2;
  }

  else
  {
    v4 = a2;
    if (v4 <= 0.0)
    {
      v5 = -v4;
    }

    else
    {
      v5 = a2;
    }

    if (v5 <= 0.04045)
    {
      v6 = v5 * 0.077399;
    }

    else
    {
      v6 = 1.0;
      if (v5 != 1.0)
      {
        v7 = a3;
        v6 = powf((v5 * 0.94787) + 0.052133, 2.4);
        a3 = v7;
      }
    }

    if (v4 <= 0.0)
    {
      v3 = -v6;
    }

    else
    {
      v3 = v6;
    }
  }

  v11 = a3;
  type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 20) = v3;
  *(result + 24) = v3;
  *(result + 28) = v11;
  *(result + 32) = 2143289344;
  return result;
}

int8x16_t protocol witness for Transition.body(content:phase:) in conformance OffsetTransition@<Q0>(char a1@<W1>, int8x16_t *a2@<X8>)
{
  v3 = vdup_n_s32(a1 == 1);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(*v2, vcgezq_s64(vshlq_n_s64(v4, 0x3FuLL)));
  *a2 = result;
  return result;
}

_OWORD *$defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a2, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  return outlined init with take of Any(&v7, (a1 + 8));
}

uint64_t initializeWithCopy for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);

  return a1;
}

uint64_t destroy for _StrokedShape(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t _StrokedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18[-1] - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11 = (v2 + *(a1 + 36));
  v12 = v11[2];
  v13 = v11[4];
  v18[0] = *v11;
  v18[1] = v12;
  v18[2] = v13;
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  v15 = v14;
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  return AnimatablePair.init(_:_:)(v10, v18, AssociatedTypeWitness, v15, a2);
}

void type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

uint64_t View.anchorPreference<A, B>(key:value:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v6 = type metadata accessor for _AnchorWritingModifier();
  return View.modifier<A>(_:)(v8, a5, v6);
}

uint64_t View.fixedSize(horizontal:vertical:)(char a1, char a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return View.modifier<A>(_:)(v4, a3, &type metadata for _FixedSizeLayout);
}

double protocol witness for Animatable.animatableData.setter in conformance _ContrastEffect(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t assignWithCopy for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);
  return a1;
}

uint64_t assignWithCopy for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 24) = *(v10 + 24);
  return a1;
}

uint64_t Spring.update<A>(value:velocity:target:deltaTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v25 = a3;
  v26 = a5;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v27 = &v25 - v18;
  v21 = v6[1];
  v22 = v6[2];
  v28 = *v6;
  v20 = v28;
  v29 = v21;
  v30 = v22;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  Spring.velocity<A>(target:initialVelocity:time:)(v16, a4, a5, v19, a6);
  v23 = *(v11 + 8);
  v23(v16, a4);
  v28 = v20;
  v29 = v21;
  v30 = v22;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  Spring.value<A>(target:initialVelocity:time:)(v13, a6, a2, a4, v26);
  v23(a2, a4);
  v23(v13, a4);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v23(v16, a4);
  return (*(v11 + 32))(a2, v27, a4);
}

uint64_t Spring.velocity<A>(target:initialVelocity:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v20 = *v5;
  v19 = v5[1];
  v21 = *v5 <= 0.0;
  if (*v5 >= 0.0)
  {
    v32[1] = a4;
    if (v21)
    {
      VectorArithmetic.scaled(by:)(a2, a3, v15, v19);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v28 = *(v10 + 8);
      v28(v15, a2);
      v31 = exp(-(v19 * a5));
      VectorArithmetic.scaled(by:)(a2, a3, v15, v19 * v31);
      v30 = (v19 * a5 + -1.0) * v31;
    }

    else
    {
      v27 = exp(-(v19 * a5));
      VectorArithmetic.scaled(by:)(a2, a3, v15, v19);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v28 = *(v10 + 8);
      v28(v15, a2);
      v29 = __sincos_stret(v20 * a5);
      VectorArithmetic.scaled(by:)(a2, a3, v15, v27 * (v20 * v29.__sinval + v19 * v29.__cosval));
      v30 = v27 * (v19 * v29.__sinval - v20 * v29.__cosval) / v20;
    }

    VectorArithmetic.scaled(by:)(a2, a3, v12, v30);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v28(v12, a2);
    v28(v15, a2);
    return (v28)(v18, a2);
  }

  else
  {
    v22 = -v20 - v19;
    v23 = v22 * exp(v22 * a5);
    v24 = (v20 - v19) * exp((v20 - v19) * a5);
    VectorArithmetic.scaled(by:)(a2, a3, v18, ((v19 - v20) * v23 + v22 * v24) / (v20 + v20) + 1.0);
    VectorArithmetic.scaled(by:)(a2, a3, v15, (v23 - v24) / (v20 + v20));
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25 = *(v10 + 8);
    v25(v15, a2);
    return (v25)(v18, a2);
  }
}

uint64_t Spring.value<A>(target:initialVelocity:time:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v38 - v24;
  v27 = *v5;
  v26 = v5[1];
  v28 = *v5 <= 0.0;
  if (*v5 >= 0.0)
  {
    v38[3] = v22;
    if (v28)
    {
      VectorArithmetic.scaled(by:)(a4, a5, v20, v26);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34 = *(v9 + 8);
      v34(v20, a4);
      VectorArithmetic.scaled(by:)(a4, a5, v17, a2);
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v34(v17, a4);
      v37 = exp(-(v26 * a2));
      VectorArithmetic.scaled(by:)(a4, a5, v17, v37);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34(v17, a4);
    }

    else
    {
      v38[2] = v23;
      VectorArithmetic.scaled(by:)(a4, a5, v20, v26);
      v38[1] = *(a5 + 8);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34 = *(v9 + 8);
      v34(v20, a4);
      v35 = __sincos_stret(v27 * a2);
      VectorArithmetic.scaled(by:)(a4, a5, v14, v35.__cosval);
      VectorArithmetic.scaled(by:)(a4, a5, v11, v35.__sinval / v27);
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v34(v11, a4);
      v34(v14, a4);
      v36 = exp(-(v26 * a2));
      VectorArithmetic.scaled(by:)(a4, a5, v20, v36);
      v34(v17, a4);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    }

    v34(v20, a4);
    return (v34)(v25, a4);
  }

  else
  {
    v29 = -v27 - v26;
    v30 = exp(v29 * a2);
    v31 = exp((v27 - v26) * a2);
    VectorArithmetic.scaled(by:)(a4, a5, v25, ((v26 - v27) * v30 + v29 * v31) / (v27 + v27) + 1.0);
    VectorArithmetic.scaled(by:)(a4, a5, v20, (v30 - v31) / (v27 + v27));
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v32 = *(v9 + 8);
    v32(v20, a4);
    return (v32)(v25, a4);
  }
}

uint64_t specialized ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5)
{
  v6 = v5;
  v23 = *MEMORY[0x1E69E9840];

  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *v17 = a3;
  KeyPath = swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  v16 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(v19) = 0;
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(a5) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v6 + 64) = a5;

  *v6 = a1;
  LOBYTE(v19) = 1;
  v17[0] = 1;
  LOBYTE(v16) = 1;
  *(v6 + 104) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 120) = 1;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 1;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 1;

  v11 = MEMORY[0x1E69E7CC0];
  *(v6 + 280) = 0;
  *(v6 + 288) = 0;
  *(v6 + 272) = v11;
  *(v6 + 296) = 0;
  *(v6 + 297) = *v17;
  *(v6 + 300) = *&v17[3];
  *(v6 + 304) = 0;
  *(v6 + 312) = 0;
  *(v6 + 320) = 0;
  *(v6 + 321) = v16;
  *(v6 + 324) = KeyPath >> 24;
  *(v6 + 344) = 0;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0;

  *(v6 + 352) = 0;
  v12 = *(v6 + 56);
  v13 = *(v6 + 64);
  v19 = *(v6 + 48);
  v20 = v12;
  v21 = 0;
  v22 = v13;
  v14 = *(*a1 + 96);

  v14(v6 + 8, &v19);
}

{
  v6 = v5;
  v22 = *MEMORY[0x1E69E9840];

  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  v17[0] = a3;
  KeyPath = swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  v19 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(v20[0]) = 0;
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(a5) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v6 + 104) = a5;
  v11 = *(v6 + 48);
  v20[2] = *(v6 + 32);
  v20[3] = v11;
  v20[4] = *(v6 + 64);
  v21 = *(v6 + 80);
  v12 = *(v6 + 16);
  v20[0] = *v6;
  v20[1] = v12;
  outlined init with copy of GlassEffectLayout(a1, v17);
  outlined destroy of GlassEffectLayout(v20);
  v13 = *(a1 + 48);
  *(v6 + 32) = *(a1 + 32);
  *(v6 + 48) = v13;
  *(v6 + 64) = *(a1 + 64);
  *(v6 + 80) = *(a1 + 80);
  v14 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v14;
  LOBYTE(v17[0]) = 1;
  LOBYTE(v19) = 1;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 160) = 1;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 1;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 1;

  v15 = MEMORY[0x1E69E7CC0];
  *(v6 + 320) = 0;
  *(v6 + 328) = 0;
  *(v6 + 312) = v15;
  *(v6 + 336) = 0;
  *(v6 + 337) = v17[0];
  *(v6 + 340) = *(v17 + 3);
  *(v6 + 344) = 0;
  *(v6 + 352) = 0;
  *(v6 + 360) = 0;
  *(v6 + 361) = v19;
  *(v6 + 364) = *(&v19 + 3);
  *(v6 + 384) = 0;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0;

  *(v6 + 392) = 0;
  return result;
}

uint64_t _AnyLayoutBox.updateCache(_:subviews:)(void *a1, int *a2)
{
  v5 = *(*v2 + 184);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21[-v7];
  v25 = *(v9 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v21[-v13];
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 16);
  v18 = *(a2 + 17);
  if (*a1 == v5)
  {
    v22 = v18;
    v23 = v11;
    v24 = v12;
    outlined init with copy of Any((a1 + 1), &v30);
    swift_dynamicCast();
    v20 = *(*v2 + 200);
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v20, v5);
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v22;
    (*(v25 + 40))(v14, &v26, v5, v25);
    (*(v6 + 8))(v8, v5);
    $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a1, v14);
    return (*(v24 + 8))(v14, v23);
  }

  else
  {
    outlined destroy of _AnyAnimatableData(a1);
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v33 = v18;
    return _AnyLayoutBox.makeCache(subviews:)(&v30, a1);
  }
}

char *specialized HVStack.updateCache(_:subviews:)(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, char a7)
{
  return specialized HVStack.updateCache(_:subviews:)(a1, a2, a3, a4, a5, a6, a7, 0);
}

{
  return specialized HVStack.updateCache(_:subviews:)(a1, a2, a3, a4, a5, a6, a7, 1);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance _VStackLayout(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void, void, void, void, void))
{
  if (*(a2 + 17))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return a5(a1, *a2, *(a2 + 1), v6 | *(a2 + 16), *v5, *(v5 + 8), *(v5 + 16));
}

uint64_t MatchedFrame.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = HIDWORD(a2);
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
  Value = AGGraphGetValue();
  if (*(Value + 52) == a1 || (*(Value + 48) & 1) != 0)
  {
    type metadata accessor for CGPoint(0);
    v7 = AGGraphGetValue();
    v8 = *v7;
    v9 = v7[1];
    result = AGGraphGetValue();
    *a3 = v8;
    *(a3 + 8) = v9;
    v11 = *(result + 16);
    *(a3 + 16) = *result;
    *(a3 + 32) = v11;
    return result;
  }

  v12 = *Value;
  v13 = *(Value + 8);
  v14 = *(Value + 16);
  v15 = *(Value + 24);
  v16 = *(Value + 32);
  v17 = *(Value + 40);
  v52 = *Value;
  v53 = v13;
  v54 = v14;
  v55 = v15;
  v56 = v16;
  v57 = v17;
  type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
  if ((*AGGraphGetValue() & 2) == 0 || (*AGGraphGetValue() & 4) != 0)
  {
    v28 = AGGraphGetValue();
    v18 = *v28;
    v19 = *(v28 + 8);
    v16 = *(v28 + 16);
    v17 = *(v28 + 24);
    v54 = *v28;
    v55 = v19;
    v56 = v16;
    v57 = v17;
  }

  else
  {
    v18 = v14;
    v19 = v15;
    if (*MEMORY[0x1E698D3F8] != v3)
    {
      v20 = *AGGraphGetValue();
      v21 = one-time initialization token for lockAssertionsAreEnabled;

      if (v21 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }
      }

      *&v58 = v14;
      BYTE8(v58) = 0;
      v59 = v15;
      LOBYTE(v60) = 0;
      v22 = (*(*v20 + 120))(&v58);
      v24 = v23;
      v48 = v15 - v23;
      v25 = AGGraphGetValue();
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);

      v52 = v12 + (v14 - v22) * v26;
      v53 = v13 + v48 * v27;
      v54 = v22;
      v55 = v24;
      v56 = v14;
      v57 = v15;
      v17 = v15;
      v16 = v14;
      v19 = v24;
      v18 = v22;
    }
  }

  if (*AGGraphGetValue())
  {
    v31 = AGGraphGetValue();
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    v35 = *(v31 + 24);
    v36 = *(v31 + 32);
    v37 = *(v31 + 40);
    type metadata accessor for CGPoint(0);

    v38 = AGGraphGetValue();
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = v36 - (*v38 - v34);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v51 = 2;
    *&v58 = v32;
    *(&v58 + 1) = v33;
    v59 = v39;
    v60 = v40;
    v61 = v41;
    v62 = v37 - (v40 - v35);
    specialized ApplyViewTransform.convert(from:transform:)(v49, &v58);
    outlined destroy of CoordinateSpace(v49);
    v42 = AGGraphGetValue();
    v44 = v53 - v19 * *(v42 + 16);
    v52 = v52 - v18 * *(v42 + 8);
    v43 = v52;
    v53 = v44;
    v45 = AGGraphGetValue();
    v46 = *v45;
    v47 = v45[1];

    v29 = v43 + v46;
    v30 = v44 + v47;
    v18 = v54;
    v19 = v55;
    v16 = v56;
    v17 = v57;
  }

  else
  {
    type metadata accessor for CGPoint(0);
    result = AGGraphGetValue();
    v29 = *result;
    v30 = *(result + 8);
  }

  *a3 = v29;
  *(a3 + 8) = v30;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  return result;
}

uint64_t specialized ViewTransform.convert(_:_:)(uint64_t result, __int128 *a2, float64x2_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *result;
  v9 = *(result + 8);
  v10 = *(result + 16);
  v11 = a2[1];
  v24 = *a2;
  v12 = a2[2];
  v25 = v11;
  v26 = v12;
  if (v24 || *&v26 != 0.0 || *(&v26 + 1) != 0.0)
  {
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = v8;
    *(v14 + 24) = v9;
    *(v14 + 32) = v10;
    if (v10 == 4)
    {
      if (v8 != -1)
      {
        if (v9 != -1)
        {
          if (v8)
          {
            if (v9)
            {
              v23 = 0;
              v16 = a2[1];
              v20 = *a2;
              v21 = v16;
              v22 = a2[2];
              v18[0] = v8;
              v19 = v9;
              v17 = ViewTransform.spaceBeforeSpace(_:_:)(v18, &v19) ^ 1;
            }

            else
            {
              *(v14 + 24) = 0;
              v17 = 1;
              *(v14 + 32) = 1;
              v23 = 0;
            }

            goto LABEL_25;
          }

          *(v14 + 16) = v9;
          *(v14 + 24) = 0;
          v8 = v9;
          *(v14 + 32) = 0;
LABEL_23:
          if (v8)
          {
            goto LABEL_24;
          }
        }

        *(v14 + 24) = 0;
        *(v14 + 32) = 3;
        v23 = 0;
        goto LABEL_20;
      }

      *(v14 + 16) = v9;
      *(v14 + 24) = 0;
      *(v14 + 32) = 2;
      if (v9 == -1)
      {
      }
    }

    else
    {
      v23 = 0;
      if (v10 > 1)
      {
        if (v10 != 2)
        {
LABEL_20:
          if (!v8)
          {
LABEL_24:
            v17 = 0;
            v23 = 1;
            goto LABEL_25;
          }

          v17 = 0;
LABEL_25:
          v20 = v24;
          v21 = v25;
          v22 = v26;
          outlined init with copy of ViewTransform(&v24, v18);
          return specialized ViewTransform.forEach(inverted:_:)(v17 & 1, &v20, &v24, v15, &v23, a3, a4, a5);
        }

        if (v8 == -1)
        {
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_23;
        }

        if (v8 != -1)
        {
          v17 = 1;
          goto LABEL_25;
        }
      }
    }

    v17 = 1;
    v23 = 1;
    goto LABEL_25;
  }

  return result;
}

uint64_t specialized ViewTransform.forEach(inverted:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, float64x2_t *a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = a6;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v35 = &v36;
  v9 = *a2;
  if (*a2)
  {
    v13 = *(a2 + 32);
    v29 = 0;
    if (a1)
    {
      if ((v13.f64[0] != 0.0 || v13.f64[1] != 0.0) && *a5 == 1)
      {
        *a6 = vsubq_f64(*a6, v13);
      }

      v14 = v9;
      do
      {
        v15 = v14;
        v14 = *(v14 + 16);
        (*(*v15 + 104))(1, &v29, a8, v30);
      }

      while ((v29 & 1) == 0 && v14);
      goto LABEL_26;
    }

    v16 = *(v9 + 24);
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = v13;
      if (!(v16 >> 60))
      {

        if ((8 * v16) >= 1025)
        {
LABEL_29:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v26 = swift_slowAlloc();
            closure #3 in ViewTransform.forEach(inverted:_:)(v26, v16, v9, v16, &v29, a8, v30);
            MEMORY[0x193AC4820](v26, -1, -1);
            v24 = v28;
            if (v29)
            {
LABEL_26:

              goto LABEL_27;
            }

LABEL_22:
            if ((v24.n128_f64[0] != 0.0 || v24.n128_f64[1] != 0.0) && *a5 == 1)
            {
              *a6 = vaddq_f64(v24, *a6);
            }

            goto LABEL_26;
          }
        }

        v27[1] = v27;
        v18.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v20 = v27 - v19;
        *(v27 - v19) = v9;
        v21 = *(v9 + 16);
        if (v21)
        {
          v22 = v20 + 8;
          do
          {
            *v22++ = v21;
            v21 = *(v21 + 16);
          }

          while (v21);
        }

        v23 = 0;
        v24 = v28;
        while (v16 != v23)
        {
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(**&v20[8 * (v16 - (v23 + 1))] + 104))(0, &v29, a8, v30, v18, v24);
          v24 = v28;
          ++v23;
          if (v29 == 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_22;
      }
    }

    __break(1u);
  }

LABEL_27:
  outlined destroy of ViewTransform(a3);
}

void specialized closure #1 in ApplyViewTransform.convert(to:transform:)(uint64_t a1, float64x2_t *a2)
{
  v6 = *(a1 + 112) >> 5;
  if (v6 > 2)
  {
    return;
  }

  v7 = *a1;
  if (!v6)
  {
    *a2 = vaddq_f64(*a2, v7);
    return;
  }

  v39 = v5;
  v40 = v4;
  v41 = v2;
  v42 = v3;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v6 != 1)
  {
    v23 = *(a1 + 49);
    v22 = a1 + 49;
    v24 = *(v22 + 23);
    v25 = *(v22 + 4);
    *&v33.a = v7;
    v33.c = v9;
    v33.d = v8;
    v33.tx = v11;
    v33.ty = v10;
    v34 = v12;
    v35 = v23;
    v36 = v25;
    v37 = *(v22 + 6);
    v38 = *(v22 + 7);
    v26 = a2->f64[0];
    v27 = a2->f64[1];
    v28 = a2;
    if (v24)
    {
      x = CGPoint.unapplying(_:)(&v33.a, v26, v27);
    }

    else
    {
      x = CGPoint.applying(_:)(&v33, v26, v27);
    }

    goto LABEL_22;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v44 = *a2;
    *&v33.a = v7;
    v33.c = v9;
    v33.d = v8;
    v33.tx = v11;
    v33.ty = v10;
    v28 = a2;
    v31 = CGPointApplyAffineTransform(v44, &v33);
    y = v31.y;
    x = v31.x;
LABEL_22:
    *v28 = x;
    v28[1] = y;
    return;
  }

  v14 = a2->f64[0];
  v13 = a2->f64[1];
  if (v7.f64[0] == 1.0 && (*&v7.f64[1] & 0x7FFFFFFFFFFFFFFFLL) == 0 && (*&v9 & 0x7FFFFFFFFFFFFFFFLL) == 0 && v8 == 1.0)
  {
    v19 = v14 - v11;
    v20 = v13 - v10;
  }

  else
  {
    *&v33.a = v7;
    v33.c = v9;
    v33.d = v8;
    v33.tx = v11;
    v33.ty = v10;
    v18 = a2;
    CGAffineTransformInvert(&v32, &v33);
    v33 = v32;
    v43.x = v14;
    v43.y = v13;
    v21 = CGPointApplyAffineTransform(v43, &v33);
    v20 = v21.y;
    v19 = v21.x;
    a2 = v18;
  }

  a2->f64[0] = v19;
  a2->f64[1] = v20;
}

uint64_t *MatchedDisplayList.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77.i64[0] = a1;
  v73 = a2;
  v3 = *(a1 + 16);
  v68 = type metadata accessor for Optional();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v61 - v4;
  v71 = v3;
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 4);
  v9 = *(v2 + 8);
  v10 = *(v2 + 12);
  LODWORD(v6) = *(v2 + 16);
  v11 = *(v2 + 20);
  v12 = *(v2 + 24);
  v13 = *(v2 + 28);
  v14 = *(v2 + 32);
  v15 = *(v2 + 36);
  LODWORD(v91) = *v2;
  v8 = v91;
  *(&v91 + 4) = __PAIR64__(v9, v7);
  v72.i32[0] = v7;
  HIDWORD(v91) = v10;
  v78 = v6;
  *&v92.f64[0] = __PAIR64__(v11, v6);
  *&v92.f64[1] = __PAIR64__(v13, v12);
  LODWORD(v93.f64[0]) = v14;
  BYTE4(v93.f64[0]) = v15;
  v16 = MatchedDisplayList.args.getter();
  v75 = v11;
  v76 = v8;
  v74 = v15;
  if ((v16 & 4) != 0)
  {
    *&v87 = __PAIR64__(v72.u32[0], v8);
    v19 = v72.i32[0];
    v64 = v14;
    v65 = v9;
    *(&v87 + 1) = __PAIR64__(v10, v9);
    v20 = v10;
    *&v88.f64[0] = __PAIR64__(v11, v78);
    v21 = v12;
    *&v88.f64[1] = __PAIR64__(v13, v12);
    LODWORD(v89.f64[0]) = v14;
    BYTE4(v89.f64[0]) = v15;
    v17 = 0;
    v18 = 20;
    if (MatchedDisplayList.sharedFrame.getter(&v91) != v19 && (v94[0] & 1) == 0)
    {
      v22 = v19;
      v23 = v91;
      v24 = v92;
      v25 = v76;
      *&v87 = __PAIR64__(v19, v76);
      v27 = v64;
      v26 = v65;
      *(&v87 + 1) = __PAIR64__(v20, v65);
      *&v88.f64[0] = __PAIR64__(v75, v78);
      v28 = v74;
      *&v88.f64[1] = __PAIR64__(v13, v21);
      LODWORD(v89.f64[0]) = v64;
      v63 = v20;
      BYTE4(v89.f64[0]) = v74;
      v29 = v22;
      MatchedDisplayList.transform.getter(&v91);
      type metadata accessor for CGPoint(0);
      v30 = v78;
      Value = AGGraphGetValue();
      v32 = vsubq_f64(v93, vsubq_f64(*Value, v92));
      v61 = *Value;
      v62 = v32;
      v92 = v61;
      v93 = v32;
      v80 = v24;
      *&v87 = __PAIR64__(v29, v25);
      *(&v87 + 1) = __PAIR64__(v20, v26);
      *&v88.f64[0] = __PAIR64__(v75, v30);
      v33 = v75;
      *&v88.f64[1] = __PAIR64__(v13, v21);
      LODWORD(v89.f64[0]) = v27;
      v34 = v27;
      BYTE4(v89.f64[0]) = v28;
      v35 = v77.i64[0];
      MatchedDisplayList.args.getter();
      *v79.i64 = *&v23 - v24.f64[0] * v36;
      *&v79.i64[1] = *(&v23 + 1) - v24.f64[1] * v37;
      v85.f64[0] = 0.0;
      v83 = 0u;
      v84 = 0u;
      LOBYTE(v85.f64[1]) = 2;
      v38 = *&v91;
      v87 = v91;
      v88 = v61;
      v89 = v62;
      v61.f64[0] = *(&v91 + 1);

      v62.f64[0] = v38;

      CGRect.convert(from:transform:)(&v83, &v87);

      outlined destroy of CoordinateSpace(&v83);
      *&v87 = __PAIR64__(v29, v76);
      *(&v87 + 1) = __PAIR64__(v63, v65);
      *&v88.f64[0] = __PAIR64__(v33, v78);
      *&v88.f64[1] = __PAIR64__(v13, v21);
      LODWORD(v89.f64[0]) = v34;
      BYTE4(v89.f64[0]) = v28;
      v39 = v69;
      MatchedDisplayList.clipShape.getter(v35, v69);
      v41 = v70;
      v40 = v71;
      if ((*(v70 + 48))(v39, 1, v71) == 1)
      {
        (*(v66 + 8))(v39, v68);
        *&v97.origin.x = v79.i64[0];
        *&v97.size.width = v80.i64[0];
        v77 = v80;
        v72 = v79;
        *&v97.origin.y = v79.i64[1];
        *&v97.size.height = v80.i64[1];
        IsNull = CGRectIsNull(v97);

        v43 = !IsNull;
        if (IsNull)
        {
          v44 = 6;
        }

        else
        {
          v44 = 0;
        }

        if (v43)
        {
          v45 = 0;
        }

        else
        {
          v45 = -1;
        }

        v46 = vdupq_n_s64(v45);
        v77 = vbicq_s8(v77, v46);
        v72 = vbicq_s8(v72, v46);
      }

      else
      {
        v47 = v67;
        (*(v41 + 32))(v67, v39, v40);
        (*(*(v35 + 24) + 24))(v95, v40, *v79.i64, *&v79.i64[1], *v80.i64, *&v80.i64[1]);
        v77 = v95[1];
        v72 = v95[0];
        v44 = v96;
        (*(v41 + 8))(v47, v40);
      }

      v17 = swift_allocObject();
      v48 = v77;
      *(v17 + 16) = v72;
      *(v17 + 32) = v48;
      *(v17 + 48) = v44;
      *(v17 + 49) = 256;
      v18 = 6;
      *(v17 + 52) = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 20;
  }

  type metadata accessor for CGPoint(0);
  v49 = AGGraphGetValue();
  v50 = *v49;
  v51 = v49[1];
  v52 = AGGraphGetValue();
  v53 = v50 - *v52;
  v54 = v51 - v52[1];
  outlined copy of DisplayList.Effect(v17, 0, v18);
  v55 = AGGraphGetValue();
  v56 = *v55;
  v57 = *(v55 + 8) | (*(v55 + 12) << 32) | 0x40000000;

  v58 = AGGraphGetValue();
  *&v83 = v53;
  *(&v83 + 1) = v54;
  v59 = *v58;
  ++static DisplayList.Version.lastValue;
  v84 = v59;
  *&v86[0] = v18 << 32;
  *(&v86[0] + 1) = v56;
  *&v86[1] = v57;
  DWORD2(v86[1]) = v76;
  *&v85.f64[0] = static DisplayList.Version.lastValue;
  *&v85.f64[1] = v17;
  LOBYTE(v91) = v74;
  DisplayList.Item.canonicalize(options:)(&v91);
  v89 = v85;
  v90[0] = v86[0];
  *(v90 + 12) = *(v86 + 12);
  v87 = v83;
  v88 = v84;
  v81 = v85;
  v82[0] = v86[0];
  *(v82 + 12) = *(v86 + 12);
  v79 = v83;
  v80 = v84;
  outlined init with copy of DisplayList.Item(&v87, &v91);
  DisplayList.init(_:)(v79.i8, v73);
  outlined consume of DisplayList.Effect(v17, 0, v18);
  v93 = v85;
  v94[0] = v86[0];
  *(v94 + 12) = *(v86 + 12);
  v91 = v83;
  v92 = v84;
  return outlined destroy of DisplayList.Item(&v91);
}

uint64_t sub_18D27A324()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t assignWithCopy for _ClipEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t specialized AnimatableAttribute.updateValue()(uint64_t a1, void (*a2)(uint64_t *, void, uint64_t, uint64_t))
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *AGGraphGetValue();
  v8 = v4 & 1;
  v5 = *(v2 + 4);

  a2(&v7, 0, v5, v2 + 8);
  if ((v8 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

uint64_t _s7SwiftUI5ShapePAAE23layoutDirectionBehaviorAA06LayouteF0OvgAA015CombinedContentC033_6E67AD6866B38627EB183D41FF0BA80ALLV_Tt0g5Tm@<X0>(char *a1@<X8>)
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    result = dyld_program_minos_at_least();
  }

  else
  {
    result = dword_1ED53C520 >= v2;
  }

  if (result)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance RoundedRectangle._Inset@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance RoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  RoundedRectangle._Inset.path(in:)(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t RoundedRectangle._Inset.path(in:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v21 = CGRectInset(*&a2, v10, v10);
  x = v21.origin.x;
  height = v21.size.height;
  if (v7 - v10 > 0.0)
  {
    v13 = v7 - v10;
  }

  else
  {
    v13 = 0.0;
  }

  if (v8 - v10 > 0.0)
  {
    v14 = v8 - v10;
  }

  else
  {
    v14 = 0.0;
  }

  width = v21.size.width;
  y = v21.origin.y;
  IsNull = CGRectIsNull(v21);
  v16 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v18 = 6;
    height = 0.0;
  }

  else if (v13 == 0.0 && v14 == 0.0 || (v22.origin.x = x, v22.size.width = width, v22.origin.y = y, v22.size.height = height, CGRectIsInfinite(v22)))
  {
    v18 = 0;
    result = *&x;
    *&v16 = y;
    *(&v16 + 1) = width;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = x;
    *(result + 24) = y;
    *(result + 32) = width;
    *(result + 40) = height;
    *(result + 48) = v13;
    *(result + 56) = v14;
    v18 = 2;
    height = 0.0;
    *(result + 64) = v9;
    v16 = 0uLL;
  }

  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 24) = height;
  *(a1 + 32) = v18;
  return result;
}

double protocol witness for Shape.path(in:) in conformance _StrokedShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _StrokedShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double _StrokedShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v9, *(a1 + 16));
  v5 = v2 + *(a1 + 36);
  v6 = *(v5 + 16);
  v12[0] = *v5;
  v12[1] = v6;
  v13 = *(v5 + 32);
  Path.strokedPath(_:)(v12, v10);
  outlined destroy of Path(v9);
  result = *v10;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v11;
  return result;
}

uint64_t type metadata completion function for AnimatorState()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void *DefaultAnimation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (a3 == MEMORY[0x1E69E63B0])
  {
    v15 = *a1;
    if (one-time initialization token for base != -1)
    {
      swift_once();
    }

    *&v26[0] = v15;
    result = (*(*static DefaultAnimation.base + 120))(v27, v26);
    v16 = BYTE8(v27[0]);
    *a5 = *&v27[0];
    *(a5 + 8) = v16;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v12 == a3)
    {
      v17 = v12;
      v18 = *a1;
      v19 = *(a1 + 16);
      if (one-time initialization token for base != -1)
      {
        v24 = *(a1 + 16);
        v25 = *a1;
        swift_once();
        v19 = v24;
        v18 = v25;
      }

      v26[0] = v18;
      v26[1] = v19;
      v20 = *(*static DefaultAnimation.base + 120);
      v21 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      result = v20(v27, v26, a2, v17, v21, a6);
      v22 = v28;
      v23 = v27[1];
      *a5 = v27[0];
      *(a5 + 16) = v23;
      *(a5 + 32) = v22;
    }

    else
    {
      if (one-time initialization token for base != -1)
      {
        swift_once();
      }

      v13 = static DefaultAnimation.base;

      return Animation.animate<A>(value:time:context:)(a1, a2, v13, a3, a4, a5, a6);
    }
  }

  return result;
}

void type metadata accessor for Slice<IndexSet>()
{
  if (!lazy cache variable for type metadata for Slice<IndexSet>)
  {
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    v0 = type metadata accessor for Slice();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Slice<IndexSet>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return result[9];
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t InternalAnimationBox.function.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + *(v2 + 176), v3, v5);
  (*(*(v2 + 224) + 16))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t outlined consume of Animation.Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 7u)
  {
    if (a6 == 8 || a6 == 9)
    {
    }
  }

  else if (a6 == 6 || a6 == 7)
  {
  }

  return result;
}

uint64_t static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(uint64_t result, void *a2, double *a3, double *a4, double *a5)
{
  v5 = *result;
  v6 = *(result + 40);
  if (v6 <= 5)
  {
    *a2 = v5;
    return result;
  }

  if (*(result + 40) > 7u)
  {
    if (v6 == 8)
    {
      v9 = *(v5 + 56);
      v10 = *(v5 + 64);
      v12 = *(v5 + 24);
      v13 = *(v5 + 40);
      *a4 = *(v5 + 16) * *a4;
    }

    else
    {
      v9 = *(v5 + 64);
      v10 = *(v5 + 72);
      v12 = *(v5 + 32);
      v13 = *(v5 + 48);
      *a5 = *(v5 + 16) * *a5;
    }

    v14 = v12;
    v15 = v13;
  }

  else
  {
    if (v6 == 6)
    {
      return result;
    }

    v7 = *(v5 + 24);
    v8 = *(v5 + 40);
    v9 = *(v5 + 56);
    v10 = *(v5 + 64);
    if ((~*a3 & 0x7FF0000000000000) == 0 && (*a3 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      *a3 = *(v5 + 16) / *a4;
    }

    v14 = v7;
    v15 = v8;
  }

  v16 = v9;
  v17 = v10;
  return static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v14);
}

void one-time initialization function for animationState()
{
  *&static Signpost.animationState = "AnimationState";
  *(&static Signpost.animationState + 1) = 14;
  word_1ED5283E8 = 258;
  byte_1ED5283EA = 3;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024AnimationLogicalListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024AnimationLogicalListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024AnimationLogicalListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t protocol witness for InternalCustomAnimation.function.getter in conformance DefaultAnimation()
{
  if (one-time initialization token for base != -1)
  {
    swift_once();
  }

  return (*(*static DefaultAnimation.base + 96))();
}

_OWORD *one-time initialization function for base()
{
  result = specialized static DefaultAnimation.makeBaseAnimation()();
  static DefaultAnimation.base = result;
  return result;
}

_OWORD *specialized static DefaultAnimation.makeBaseAnimation()()
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 != 1)
  {
    if (dword_1ED53C520 < v0)
    {
      goto LABEL_7;
    }

LABEL_9:
    type metadata accessor for InternalAnimationBox<BezierAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation);
    result = swift_allocObject();
    result[1] = xmmword_18DDAF530;
    v2 = result + 2;
    goto LABEL_10;
  }

  if (dyld_program_minos_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  type metadata accessor for InternalAnimationBox<BezierAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation);
  result = swift_allocObject();
  result[1] = xmmword_18DDAF500;
  result[2] = xmmword_18DDAF510;
  result[3] = xmmword_18DDAF520;
  v2 = result + 4;
LABEL_10:
  *v2 = 0;
  return result;
}

void FluidSpringAnimation.function.getter(uint64_t a1@<X8>)
{
  if (*v1 <= 0.0)
  {
    v3 = INFINITY;
  }

  else
  {
    v3 = 6.28318531 / *v1 * (6.28318531 / *v1);
  }

  v4 = sqrt(v3);
  v5 = v1[1] * (v4 + v4);
  SpringModel.duration(epsilon:)(0.001);
  *a1 = v6;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 5;
}

void SpringModel.duration(epsilon:)(double a1)
{
  v2 = v1[1];
  v3 = 0.000001;
  if (a1 <= 0.000001)
  {
    if (v2 != 0.0)
    {
      if (v2 >= 1.0)
      {
        goto LABEL_4;
      }

LABEL_22:
      fmax(-log(v3 / (fabs(v1[3]) + fabs(v1[4]))) / (v2 * *v1), 0.0);
    }
  }

  else if (v2 != 0.0)
  {
    v3 = a1;
    if (v2 >= 1.0)
    {
LABEL_4:
      v4 = 0.0;
      v5 = -1.0;
      v6 = INFINITY;
      v7 = 1023;
      v8 = 1.0;
      v9 = -1.0;
      while (1)
      {
        if (v2 >= v8)
        {
          v16 = v1[3] + v4 * v1[4];
          v15 = v16 * exp(-(v4 * *v1));
        }

        else
        {
          v10 = v4 * v1[2];
          v11 = exp(v4 * (*v1 * -v2));
          v12 = v1[3];
          v13 = __sincos_stret(v10);
          v14 = v12 * v13.__cosval;
          v8 = 1.0;
          v15 = v11 * (v14 + v13.__sinval * v1[4]);
          v5 = -1.0;
        }

        if (COERCE__INT64(fabs(v15 + v5 + v8)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return;
        }

        v17 = fabs(v15 + v5 + v8);
        if (v6 >= v3)
        {
          break;
        }

        if (v17 < v3)
        {
          if (v4 - v9 > v8)
          {
            return;
          }

          goto LABEL_7;
        }

        if (!v7)
        {
          return;
        }

        v6 = INFINITY;
LABEL_8:
        v4 = v4 + 0.1;
        --v7;
      }

      if (v17 < v6)
      {
        v9 = v4;
        v6 = v17;
      }

LABEL_7:
      if (!v7)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_22;
  }
}

uint64_t MaterialEffectBackdropObserver.luminanceDidChange(_:)(unint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v4 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    v5 = *(v1 + 24);
    v6 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v6, v5, a1 | ((HIDWORD(a1) & 1) << 32), 1, 1);
    static Update.end()();
    _MovableLockUnlock(v4);
  }

  return result;
}

uint64_t _AnyEquatableBox.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t assignWithCopy for MaterialEffectState.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t static VTable.add(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, char *, uint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v13 - v8;
  outlined init with take of Any(a1, v13);
  *(a1 + 24) = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v13);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a3(boxed_opaque_existential_1, v9, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance AnimatableValues<Pack{repeat A}>@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(char *, char *, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  v63 = a4;
  v7 = a3[2];
  v8 = 8 * v7;
  v57 = a5;
  if (v7 == 1)
  {
    v9 = *(a3[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = a3[3] & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = v55;
  MEMORY[0x1EEE9AC00](v25);
  v55[2] = v55;
  MEMORY[0x1EEE9AC00](v55 - v26);
  v62 = v55 - v27;
  v55[1] = v55;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v60 = (v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = v22;
  v30 = *(v22 + 16);
  v64 = v31;
  v30(v29);
  v65 = v24;
  v61 = v9;
  v32 = (v30)(v24, a2, v9);
  v33 = a3[3];
  v58 = a3[4];
  v59 = v33;
  if (v7)
  {
    v34 = (v59 & 0xFFFFFFFFFFFFFFFELL);
    v35 = (v58 & 0xFFFFFFFFFFFFFFFELL);
    v36 = v60;
    v37 = (v61 + 32);
    v38 = v7;
    v72 = v7;
    do
    {
      if (v7 == 1)
      {
        v43 = v62;
      }

      else
      {
        v43 = &v62[*v37];
      }

      v69 = v43;
      v70 = v35;
      v68 = v55;
      v71 = v34;
      v44 = *v34;
      v67 = *v35;
      v45 = *(v44 - 8);
      v46 = v45[8];
      v47 = MEMORY[0x1EEE9AC00](v32);
      v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
      v49 = v45[2];
      v51 = v49(v55 - v48, v64 + v50, v44, v47);
      v66 = v55;
      v39 = MEMORY[0x1EEE9AC00](v51);
      v49(v55 - v48, &v65[v40], v44, v39);
      v41 = v69;
      v63(v55 - v48, v55 - v48, v44, *(v67 + 8));
      v42 = v45[1];
      v42(v55 - v48, v44);
      v32 = (v42)(v55 - v48, v44);
      *v36++ = v41;
      v37 += 4;
      v35 = v70 + 1;
      v34 = v71 + 1;
      --v38;
      v7 = v72;
    }

    while (v38);
  }

  AnimatableValues.init(_:)(v60, v7, v59, v57);
  v52 = *(v56 + 8);
  v53 = v61;
  v52(v65, v61);
  return (v52)(v64, v53);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance AnimatablePair<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  v21 = a5;
  v9 = *(a3 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v15);
  a4(a1 + *(a3 + 52), a2 + *(a3 + 52), v9, *(*(a3 + 40) + 8));
  return AnimatablePair.init(_:_:)(v17, v11, v13, v9, v21);
}

uint64_t AnimatableValues.init(_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v8 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v5)
      {
LABEL_9:
        v17 = v5 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AnimatableValues();
  v45 = &v40;
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v40 - v28;
  if (v5)
  {
    v43 = v6;
    v44 = a4;
    v30 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v31 = 32;
    v41 = v30;
    v42 = v25;
    v32 = v5;
    do
    {
      if (v5 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v8 + v31);
      }

      v35 = *v30++;
      v34 = v35;
      v36 = *v6++;
      (*(*(v34 - 8) + 16))(&v24[v33], v36);
      v31 += 16;
      --v32;
    }

    while (v32);
    (*(v22 + 32))(v29, v24, v8);
    (*(v26 + 32))(v44, v29, v42);
    v37 = v41 - 1;
    v38 = v43 - 1;
    do
    {
      result = (*(*(v37[v5] - 8) + 8))(v38[v5]);
      --v5;
    }

    while (v5);
  }

  else
  {
    (*(v22 + 32))(v29, v24, v8, v27);
    return (*(v26 + 32))(a4, v29, v25);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void *assignWithCopy for _AnyAnimatableData(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_0(a1 + 1, a2 + 1);
  return a1;
}

void *specialized AnimatorState.addListeners(transaction:)(void *a1)
{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 160) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 96) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 144) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 208) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 200) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 256) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 248) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 176) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 192) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 184) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 184) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 592) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 112) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 272) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 264) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 264) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 288) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 320) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 320) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 336) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 328) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 328) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (result)
  {
    v8 = result[9];
    if (v8)
    {
      v9 = *(*v8 + 88);

      v11 = v9(v10);
      if (*(v1 + 128) == 1)
      {
        (*(*v8 + 96))(v11);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v12);
        if (*((*(v1 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}