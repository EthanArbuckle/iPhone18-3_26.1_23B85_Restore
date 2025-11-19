uint64_t partial apply for closure #1 in TransitionHelper.update()(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = type metadata accessor for TransitionHelper();
  result = (*(*(v3 - 8) + 24))(v5 + *(v6 + 44), a1, v3);
  *v4 = 1;
  return result;
}

uint64_t TransitionHelper.info.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = *(Value + 44);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 44) = v6;
}

void TransitionHelper.list.getter(uint64_t a1@<X8>)
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, a1);
  }
}

void protocol witness for Transition.body(content:phase:) in conformance OpacityTransition(char a1@<W1>, double *a2@<X8>)
{
  v2 = 0.0;
  if (a1 == 1)
  {
    v2 = 1.0;
  }

  *a2 = v2;
}

uint64_t ViewListTransition.updateValue()(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for UncheckedSendable();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TransitionHelper();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = type metadata accessor for UncheckedSendable();
  v19 = *(v13 - 8);
  v20 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if ((TransitionHelper.update()(v9) & 1) != 0 || (result = AGGraphGetOutputValue()) == 0)
  {
    (*(v10 + 16))(v12, v1, v9);
    UncheckedSendable.init(_:)(v12, v9, v15);
    v17 = closure #1 in ViewListTransition.updateValue()(v15, v4, v3, v8);
    MEMORY[0x1EEE9AC00](v17);
    *(&v19 - 2) = a1;
    *(&v19 - 1) = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in StatefulRule.value.setter, (&v19 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
    (*(*(AssociatedTypeWitness - 8) + 8))(v8, AssociatedTypeWitness);
    return (*(v19 + 8))(v15, v20);
  }

  return result;
}

uint64_t TransitionHelper.update()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  v29 = 0;
  TransitionHelper.info.getter(v26);
  v9 = v26[1];

  if (*(v9 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(*(v2 + 8));
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      TransitionHelper.info.getter(v26);
      v13 = v26[0];

      if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v13 + 8 * v12 + 32);

          goto LABEL_7;
        }

        __break(1u);
        return result;
      }

      v15 = MEMORY[0x193AC03C0](v12, v13);
LABEL_7:

      swift_beginAccess();
      v16 = *(v15 + 84);

      if (v16 != 3)
      {
        v17 = *(a1 + 48);
        v29 = *(v2 + v17) != v16;
        *(v2 + v17) = v16;
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  if (*(v2 + *(a1 + 48)) != 2)
  {
    TransitionHelper.list.getter(v26);
    v18 = v27;
    if (v27)
    {
      v19 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v19 + 56))(&v25, v18, v19);
      v20 = v25;
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      outlined destroy of ViewList?(v26);
      v20 = MEMORY[0x1E69E7CC0];
    }

    if (one-time initialization token for opacity != -1)
    {
      swift_once();
    }

    _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v20);

    v21 = *(a1 + 24);
    v22 = AnyTransition.base<A>(as:)(v4, v8);
    MEMORY[0x1EEE9AC00](v22);
    v24[-4] = v4;
    v24[-3] = v21;
    v24[-2] = v2;
    v24[-1] = &v29;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TransitionHelper.update(), &v24[-6], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v23, v26);

    (*(v6 + 8))(v8, v5);
  }

  return v29;
}

uint64_t closure #1 in ViewListTransition.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TransitionHelper();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v20 - v14;
  v16 = (*(v9 + 16))(v11, a1, v8, v13);
  v17 = *(v8 + 44);
  v18 = PlaceholderContentView.init()(a2, v16);
  (*(a3 + 24))(v18, *(a1 + *(v8 + 48)), a2, a3);
  (*(*(a2 - 8) + 8))(&v11[v17], a2);
  return UncheckedSendable.init(_:)(v15, AssociatedTypeWitness, a4);
}

uint64_t AnyTransition.base<A>(as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for TransitionBox();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v9 = *(a1 - 8);
    (*(v9 + 16))(a2, v4 + *(*v4 + 136), a1);
    v5 = v9;
    v6 = 0;
  }

  else
  {
    v5 = *(a1 - 8);
    v6 = 1;
  }

  v7 = *(v5 + 56);

  return v7(a2, v6, 1, a1);
}

uint64_t StatefulRule<>.update<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  v6[6] = a1;
  return StatefulRule<>.update<A>(modify:create:)(partial apply for closure #1 in StatefulRule<>.update<A>(to:), v7, partial apply for closure #2 in StatefulRule<>.update<A>(to:), v6, a2, a3, a4, a5);
}

uint64_t initializeWithCopy for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t storeEnumTagSinglePayload for RBColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RootGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t InvalidatableLeafLayoutComputer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PlatformViewLayoutEngine();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - v6;
  v7 = type metadata accessor for ViewLeafView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v40 = v1;
  InvalidatableLeafLayoutComputer.view.getter(&v31 - v12);
  v14 = *(v8 + 8);
  swift_unknownObjectRetain();
  v32 = v14;
  v14(v13, v7);
  swift_getAssociatedTypeWitness();
  v33 = v4;
  v34 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 40);
  v17 = swift_checkMetadataState();
  v16(&v41, v17, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v18 = v42;
  outlined destroy of ViewGraphHost.LayoutInvalidator?(&v41, &lazy cache variable for type metadata for ViewGraphHost.LayoutInvalidator?, &type metadata for ViewGraphHost.LayoutInvalidator);
  v38 = a1;
  v39 = v10;
  if (v18)
  {
    v19 = v40;
    InvalidatableLeafLayoutComputer.view.getter(v10);
    swift_unknownObjectRetain();
    v32(v10, v7);
    swift_weakLoadStrong();
    result = AGGraphGetCurrentAttribute();
    v21 = *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      goto LABEL_8;
    }

    v22 = AGCreateWeakAttribute();
    v23 = v22;
    v24 = HIDWORD(v22);
    swift_weakInit();
    swift_weakAssign();

    *(&v41 + 1) = __PAIR64__(v24, v23);
    LOBYTE(v42) = 0;
    (*(AssociatedConformanceWitness + 48))(&v41, v17, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = *MEMORY[0x1E698D3F8];
    v19 = v40;
  }

  v26 = v38;
  v25 = v39;
  InvalidatableLeafLayoutComputer.view.getter(v39);
  result = AGGraphGetCurrentAttribute();
  if (result != v21)
  {
    v27 = *(v19 + 4);
    v57 = 1;
    v56 = 1;
    v55 = 1;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(&v54[7], 0, 48);
    memset(&v53[7], 0, 48);
    v44 = 1;
    *&v47[15] = 0;
    *v47 = *&v54[32];
    v46 = *&v54[16];
    v45 = *v54;
    v48 = 1;
    *&v51[15] = 0;
    *v51 = *&v53[32];
    v50 = *&v53[16];
    v49 = *v53;
    v52 = 1;
    v28 = v35;
    PlatformViewLayoutEngine.init(cache:view:environment:context:)(&v41, v25, v27, result, v35);
    WitnessTable = swift_getWitnessTable();
    v30 = v37;
    StatefulRule<>.update<A>(to:)(v28, v26, v37, WitnessTable, &protocol witness table for PlatformViewLayoutEngine<A>);
    return (*(v36 + 8))(v28, v30);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t InvalidatableLeafLayoutComputer.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ViewLeafView();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t MergedTransaction.value.getter()
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v0 = 1;
  }

  else
  {
    v0 = *AGGraphGetValue();
  }

  v2 = *AGGraphGetValue();

  if (v0 != 1)
  {
    PropertyList.merge(_:)(v0);
    outlined consume of Transaction?(v0);
    return v2;
  }

  return result;
}

uint64_t DynamicTransaction.updateValue()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v4 = *(AGGraphGetValue() + 8);
  if (!*(v4 + 16))
  {
    return AGGraphSetOutputValue();
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v6 & 1) == 0)
  {
    return AGGraphSetOutputValue();
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = *AGGraphGetValue();
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v7 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_32;
  }

  v9 = MEMORY[0x193AC03C0](v7, v8);

LABEL_7:
  swift_beginAccess();
  v10 = *(v9 + 84);

  if (v10 == 3)
  {
    return AGGraphSetOutputValue();
  }

  v22 = *AGGraphGetValue();
  v12 = v22;
  v13 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (!v10)
  {
    v14 = swift_retain_n();
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v14);
    if (v15 && !v15[9])
    {
    }

    else
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
      *(swift_allocObject() + 72) = 0;
      type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>);
      value = PropertyList.Element.init(keyType:before:after:)(v16, 0, v22).value;

      v12 = value;
    }

    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v19);
    if (!v20 || *(v20 + 72) != 1)
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>();
      *(swift_allocObject() + 72) = 1;
      type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>);
      PropertyList.Element.init(keyType:before:after:)(v21, 0, v12);
    }

    goto LABEL_28;
  }

  if (v10 != 1)
  {

    if (v13)
    {
LABEL_22:
      *(v1 + 12) = 1;
      goto LABEL_28;
    }

    v2 = *AGGraphGetValue();
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v2 + 8 * v7 + 32);

        goto LABEL_20;
      }

      __break(1u);
    }

LABEL_32:

    v17 = MEMORY[0x193AC03C0](v7, v2);

LABEL_20:
    v18 = *(v17 + 56);

    if (v18)
    {
      Transaction.addAnimationListener(_:)(v18);
    }

    goto LABEL_22;
  }

LABEL_28:
  AGGraphSetOutputValue();
}

uint64_t PlatformViewRepresentableContext.init(coordinator:preferenceBridge:transaction:environmentStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 16);
  v12 = *(type metadata accessor for PlatformViewRepresentableContext() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a5 + v12, a1, AssociatedTypeWitness);
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  return result;
}

uint64_t outlined copy of RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PlatformViewRepresentableContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v5, v6, v7);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))((*(v9 + 80) + 33 + a1) & ~*(v9 + 80), (*(v9 + 80) + 33 + a2) & ~*(v9 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t PlatformViewRepresentableContext.coordinator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t destroy for PlatformViewRepresentableContext(uint64_t a1)
{

  outlined consume of RepresentableContextValues.EnvironmentStorage(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = (a1 + *(v3 + 80) + 33) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

uint64_t outlined consume of RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t static _ConditionalContent<>._viewListCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v44 = a1[2];
  v45 = v10;
  v46 = a1[4];
  v11 = a1[1];
  v43[0] = *a1;
  v43[1] = v11;
  v13 = (a1 + 65);
  v12 = *(a1 + 65);
  v47[0] = v43[0];
  v47[1] = v11;
  v47[2] = v44;
  v47[3] = v10;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = *(a1 + 9);
  *(&v48 + 1) = v12;
  v40 = v44;
  v41 = v10;
  v42 = v48;
  v38 = v43[0];
  v39 = v11;
  v14 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v43, v49);
  outlined init with copy of _ViewListCountInputs(v47, v49);
  v15 = v14(&v38, a2, a4);
  LOBYTE(a2) = v16;
  v49[2] = v40;
  v49[3] = v41;
  v49[4] = v42;
  v49[0] = v38;
  v49[1] = v39;
  outlined destroy of _ViewListCountInputs(v49);
  if (a2)
  {
    v17 = a1[1];
    v38 = *a1;
    v39 = v17;
    v18 = a1[3];
    v40 = a1[2];
    v41 = v18;
    LOBYTE(v42) = 0;
    *(&v42 + 1) = *v13;
    *(&v42 + 1) = *(v13 + 7);
    outlined destroy of _ViewListCountInputs(&v38);
  }

  else
  {
    v19 = a1[1];
    v33[0] = *a1;
    v33[1] = v19;
    v20 = a1[3];
    v34 = a1[2];
    v35 = v20;
    LOBYTE(v36) = 0;
    *(&v36 + 1) = *v13;
    *(&v36 + 1) = *(v13 + 7);
    v30 = v34;
    v31 = v20;
    v32 = v36;
    v28 = v33[0];
    v29 = v19;
    v21 = *(a5 + 40);
    outlined init with copy of _ViewListCountInputs(v33, &v38);
    v22 = v21(&v28, a3, a5);
    v24 = v23;
    v37[2] = v30;
    v37[3] = v31;
    v37[4] = v32;
    v37[0] = v28;
    v37[1] = v29;
    outlined destroy of _ViewListCountInputs(v37);
    v25 = a1[1];
    v38 = *a1;
    v39 = v25;
    v26 = a1[3];
    v40 = a1[2];
    v41 = v26;
    LOBYTE(v42) = 0;
    *(&v42 + 1) = *v13;
    *(&v42 + 1) = *(v13 + 7);
    outlined destroy of _ViewListCountInputs(&v38);
    if (v24 & 1 | (v15 != v22))
    {
      return 0;
    }
  }

  return v15;
}

uint64_t closure #6 in ForEachState.item(at:offset:)(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(a2[2]);
  if (v7 && *(v7 + 72) == 1)
  {
    *(a3 + 9) = a1;
    *(a3 + 64) = 1;
  }

  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[4];
  v26 = a3[3];
  v27 = v10;
  v11 = *a3;
  v12 = *a3;
  v25[1] = a3[1];
  v25[2] = v9;
  v22 = v9;
  v23 = v26;
  v24 = a3[4];
  v25[0] = v11;
  v13 = *(v6 + 96);
  v20 = v12;
  v21 = v8;
  v14 = *(v6 + 120);
  v15 = *(v14 + 40);
  outlined init with copy of _ViewListCountInputs(v25, v28);
  v16 = v15(&v20, v13, v14);
  LOBYTE(v14) = v17;
  v28[2] = v22;
  v28[3] = v23;
  v28[4] = v24;
  v28[0] = v20;
  v28[1] = v21;
  result = outlined destroy of _ViewListCountInputs(v28);
  v19 = a2 + *(*a2 + 176);
  *v19 = v16;
  v19[8] = v14 & 1;
  v19[9] = 0;
  return result;
}

uint64_t initializeWithCopy for _ViewListCountInputs(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a5;
  return (*(a5 + 40))(v9, partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:), v8, a3);
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance _OffsetEffect(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1)
{
  v2 = *(v1 + 32);
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(v2 + 40))(v6);
}

uint64_t _ViewListCountInputs.popLast<A, B>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  PropertyList.subscript.getter(a1, *v3, a1, v6);
  v7 = type metadata accessor for Stack();
  Stack.pop()(v7, a3);
  v9[0] = v9[1];
  return PropertyList.subscript.setter(v9, a1, a1, v6);
}

uint64_t static ViewModifier.viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v7 = type metadata accessor for _ViewModifier_Content();
  return static _ViewListCountInputs.withBodyCache<A>(type:inputs:content:body:)(v7, v9, a2, a3, partial apply for closure #1 in static ViewModifier.viewListCount(inputs:body:));
}

unint64_t type metadata accessor for (_:)()
{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [LayoutDirection](255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(255, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for AGSubgraphRef(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for AtomicBuffer<TrackerData>(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for Int?();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for Attribute<ContentShapePathData>(255, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

uint64_t _ViewListCountInputs.append<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  PropertyList.subscript.getter(a3, *v5, a3, v8);
  v9 = type metadata accessor for Stack();
  Stack.push(_:)(a1, v9);
  v11[0] = v11[1];
  return PropertyList.subscript.setter(v11, a3, a3, v8);
}

uint64_t closure #1 in static ViewModifier.viewListCount(inputs:body:)(_OWORD *a1)
{
  v1 = a1[3];
  v6[2] = a1[2];
  v6[3] = v1;
  v6[4] = a1[4];
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static ViewModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  return static ViewModifier.viewListCount(inputs:body:)(a1, a2, a3);
}

{
  return static ViewModifier._viewListCount(inputs:body:)(a1, a2, a3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)@<X0>(uint64_t a1@<X8>)
{
  return thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)(*(v1 + 16), a1);
}

{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t AnyGestureStorage.__allocating_init(gesture:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 120) - 8) + 32))(v2 + *(*v2 + 136), a1);
  return v2;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectGroupModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t AnyTransition.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized AnyTransition.init<A>(_:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t specialized AnyTransition.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TransitionBox();
  (*(v4 + 16))(v6, a1, a2);
  return AnyGestureStorage.__allocating_init(gesture:)(v6);
}

uint64_t AnyGestureStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 120) - 8) + 8))(v0 + *(*v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for _TraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectTransitionModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectIDModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t ViewGraphHost.preferenceValue<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    ViewGraphRootValueUpdater._preferenceValue<A>(_:)(a1, ObjectType, a2, v15, a3, v14);
    swift_unknownObjectRelease();
    v17 = *(AssociatedTypeWitness - 8);
    (*(v17 + 56))(v14, 0, 1, AssociatedTypeWitness);
    return (*(v17 + 32))(a4, v14, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(AssociatedTypeWitness - 8);
    (*(v19 + 56))(v14, 1, 1, AssociatedTypeWitness);
    (*(v9 + 16))(a2, v9);
    result = (*(v19 + 48))(v14, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v12 + 8))(v14, v11);
    }
  }

  return result;
}

uint64_t type metadata completion function for ForEachChild()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17IsInLazyContainerV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17IsInLazyContainerV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for IsInLazyContainer)
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

uint64_t closure #1 in ForEachState.item(at:offset:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v21[2] = a2;
  v28 = *a1;
  v4 = v28;
  v5 = *(v28 + 104);
  v21[1] = *(*(v5 + 8) + 8);
  v6 = *(v28 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v21 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = a1 + *(v4 + 160);
  swift_beginAccess();
  v15 = *(v4 + 112);
  v24 = v6;
  v25 = *(v28 + 88);
  v26 = v5;
  v27 = v15;
  v16 = type metadata accessor for ForEach();
  result = (*(*(v16 - 8) + 48))(v14, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *&v14[*(v16 + 60)];
    (*(v10 + 16))(v13, v14, v6);

    v19 = dispatch thunk of Collection.subscript.read();
    v20 = AssociatedTypeWitness;
    (*(v7 + 16))(v9);
    v19(&v24, 0);
    (*(v10 + 8))(v13, v6);
    v18(v9);

    return (*(v7 + 8))(v9, v20);
  }

  return result;
}

uint64_t closure #2 in ForEachState.item(at:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, _DWORD *a7@<X6>, uint64_t a8@<X8>)
{
  v103 = a7;
  v102 = a6;
  v115 = a5;
  v117 = a4;
  v118 = a1;
  v113 = a8;
  v128 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  v11 = *a3;
  v111 = type metadata accessor for ObservationTracking._AccessList();
  v120 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v105 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v101 - v14;
  type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v112 = &v101 - v16;
  v17 = v10[11];
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v101 - v20;
  v22 = v10[10];
  v23 = *(v11 + 6);
  v24 = v10[14];
  v25 = v10[15];
  *&v124 = v22;
  *(&v124 + 1) = v17;
  v119 = v23;
  v125 = v23;
  v126 = v24;
  v127 = v25;
  v110 = type metadata accessor for ForEachChild();
  v114 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v27 = (&v101 - v26);
  _GraphInputs.pushStableID<A>(_:)(a2, v17);
  if (*(a3 + 164))
  {
    __break(1u);
  }

  v109 = a3;
  v28 = *(a3 + 160);
  (*(v18 + 16))(v21, a2, v17);
  *v27 = v28;
  v106 = v22;
  *&v124 = v22;
  *(&v124 + 1) = v17;
  v125 = v119;
  v107 = v24;
  v126 = v24;
  v127 = v25;
  v116 = v25;
  v29 = type metadata accessor for ForEachChild();
  v30 = *(v18 + 32);
  v31 = v27 + *(v29 + 68);
  v108 = v17;
  v32 = v30(v31, v21, v17);
  MEMORY[0x1EEE9AC00](v32);
  v33 = v119;
  *(&v101 - 4) = v119;
  v34 = v110;
  *(&v101 - 3) = v110;
  *(&v101 - 2) = swift_getWitnessTable();
  v35 = type metadata accessor for Attribute();
  v36 = MEMORY[0x1E69E73E0];
  v37 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v101 - 6), v34, MEMORY[0x1E69E73E0], v35, MEMORY[0x1E69E7410], v38);
  v39 = (*(v114 + 8))(v27, v34);
  v40 = v124;
  MEMORY[0x1EEE9AC00](v39);
  *(&v101 - 2) = v119;
  *(&v101 - 2) = v40;
  v41 = v117;
  v117 = v33;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v41, partial apply for closure #1 in Attribute.setValue(_:), (&v101 - 4), v33, v36, MEMORY[0x1E69E6370], v37, v42);
  v114 = 0;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v43 = static ObservationCenter._current;
  swift_beginAccess();
  v44 = pthread_getspecific(v43[2]);
  v45 = v120;
  v46 = v112;
  v47 = v111;
  if (!v44)
  {
    v48 = swift_slowAlloc();
    pthread_setspecific(v43[2], v48);
    *(&v125 + 1) = type metadata accessor for ObservationCenter();
    *&v124 = v43[3];
    outlined init with take of Any(&v124, v48);

    v44 = v48;
  }

  outlined init with copy of Any(v44, &v124);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  outlined init with copy of ObservationTracking._AccessList?(v115, v46);
  v49 = v45[6](v46, 1, v47);
  LODWORD(v115) = v40;
  if (v49 == 1)
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v51 = v45[4];
    v52 = v104;
    v51(v104, v46, v47);
    type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObservationTracking._AccessList>, MEMORY[0x1E69E6F90]);
    v53 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_18DDA6EB0;
    v51(v50 + v53, v52, v47);
  }

  v54 = v116;
  v55 = *(v50 + 16);
  if (v55)
  {
    v57 = v45[2];
    v56 = (v45 + 2);
    v120 = v57;
    v58 = (v56[64] + 32) & ~v56[64];
    v112 = v50;
    v59 = v50 + v58;
    v60 = *(v56 + 7);
    v61 = v105;
    v62 = v115;
    do
    {
      (v120)(v61, v59, v47);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v62, v61);
      (*(v56 - 1))(v61, v47);
      v59 += v60;
      --v55;
    }

    while (v55);

    v54 = v116;
  }

  else
  {
  }

  v64 = v118;
  v65 = v113;
  v66 = v109;
  v67 = v108;
  v68 = v117;
  if ((*(v118 + 58) & 1) == 0)
  {
    goto LABEL_23;
  }

  v69 = *(v109 + 144);
  if (v69 == 255)
  {
    v122 = *MEMORY[0x1E698D3F8];
    v123 = 0;
    *&v81 = MEMORY[0x1EEE9AC00](v63);
    *&v124 = v82;
    *(&v124 + 1) = v67;
    v125 = v81;
    v126 = v83;
    v127 = v54;
    v84 = type metadata accessor for ForEachState.ItemOffset();
    *(&v101 - 2) = v84;
    *(&v101 - 1) = swift_getWitnessTable();
    type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
    v76 = v114;
    result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v122, closure #1 in Attribute.init<A>(_:)partial apply, (&v101 - 4), v84, MEMORY[0x1E69E73E0], v85, MEMORY[0x1E69E7410], v86);
    v70 = 0;
LABEL_20:
    v80 = v124;
    goto LABEL_21;
  }

  v70 = *(v109 + 128);
  if ((v69 & 1) == 0)
  {
    v122 = *MEMORY[0x1E698D3F8];
    v123 = 0;
    *&v87 = MEMORY[0x1EEE9AC00](v63);
    *&v124 = v88;
    *(&v124 + 1) = v67;
    v125 = v87;
    v126 = v89;
    v127 = v54;
    v90 = type metadata accessor for ForEachState.ItemOffset();
    *(&v101 - 2) = v90;
    *(&v101 - 1) = swift_getWitnessTable();
    type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
    v76 = v114;
    result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v122, closure #1 in Attribute.init<A>(_:)partial apply, (&v101 - 4), v90, MEMORY[0x1E69E73E0], v91, MEMORY[0x1E69E7410], v92);
    goto LABEL_20;
  }

  v71 = *(v109 + 136);
  v122 = *(v109 + 128);
  v123 = 0;
  *&v72 = MEMORY[0x1EEE9AC00](v63);
  *&v124 = v73;
  *(&v124 + 1) = v67;
  v125 = v72;
  v126 = v74;
  v127 = v116;
  v75 = type metadata accessor for ForEachState.ItemOffset();
  *(&v101 - 2) = v75;
  *(&v101 - 1) = swift_getWitnessTable();
  type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
  v76 = v114;
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v122, closure #1 in Attribute.init<A>(_:)partial apply, (&v101 - 4), v75, MEMORY[0x1E69E73E0], v77, MEMORY[0x1E69E7410], v78);
  v54 = v116;
  v80 = v124;
  v70 = v71;
LABEL_21:
  v64 = v118;
  *(v118 + 112) = v80;
  *(v64 + 120) = v70;
  *(v64 + 128) = 1;
  if (*(v66 + 172))
  {
    __break(1u);
    goto LABEL_32;
  }

  v114 = v76;
  AGGraphAddInput();
  v93 = v102;
  *v102 = v80;
  *(v93 + 4) = 0;
  v68 = v117;
LABEL_23:
  _GraphValue.init(_:)(v115, &v122);
  v94 = v122;
  outlined init with copy of _ViewListInputs(v64, &v124);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v121[0] = v94;
  (*(v54 + 32))(v121, &v124, v68, v54);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v94, v68, v54);
  result = outlined destroy of _ViewListInputs(&v124);
  if ((*(v66 + 73) & 8) != 0)
  {
    v95 = _ViewListOutputs.makeAttribute(inputs:)(v66 + 16);
    v122 = v95;
    v123 = 0;
    MEMORY[0x1EEE9AC00](v95);
    *&v96 = v106;
    *(&v96 + 1) = v67;
    v124 = v96;
    v125 = v119;
    v126 = v107;
    v127 = v54;
    v97 = type metadata accessor for ForEachState.ItemList();
    *(&v101 - 2) = v97;
    *(&v101 - 1) = swift_getWitnessTable();
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v122, closure #1 in Attribute.init<A>(_:)partial apply, (&v101 - 4), v97, MEMORY[0x1E69E73E0], v98, MEMORY[0x1E69E7410], v99);
    result = v124;
    v100 = v103;
    *v103 = v124;
    *(v100 + 4) = 0;
    if ((*(v66 + 172) & 1) == 0)
    {
      result = AGGraphAddInput();
      if ((v100[1] & 1) == 0)
      {
        LODWORD(v124) = *v100;
        *(&v124 + 1) = 0;
        LOBYTE(v127) = 1;
        return outlined assign with take of _ViewListOutputs.Views(&v124, v65);
      }

LABEL_33:
      __break(1u);
      return result;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ObservationTracking._AccessList();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ForEachState.viewsPerElement.getter()
{
  v1 = (v0 + *(*v0 + 176));
  result = *v1;
  if (*(v1 + 9) & 1) == 0 && (v1[1])
  {
    v3 = *(*v0 + 168);
    v4 = *(v0 + v3);
    if (v4)
    {
      swift_beginAccess();
      result = *(v4 + 16);
      if ((*(v4 + 24) & 1) == 0)
      {
        *(v0 + v3) = 0;
        v5 = result;

        result = v5;
        *v1 = v5;
        *(v1 + 4) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *specialized ForEachState.Item.init(id:reuseID:views:subgraph:index:offset:contentID:seed:state:isConstant:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10)
{
  v17 = *v10;
  swift_weakInit();
  *(v10 + *(*v10 + 232)) = 8;
  *(v10 + *(*v10 + 240)) = 0;
  *(v10 + *(*v10 + 248)) = 0;
  (*(*(*(v17 + 120) - 8) + 32))(v10 + *(*v10 + 160), a1);
  *(v10 + *(*v10 + 168)) = a2;
  v18 = (v10 + *(*v10 + 176));
  v19 = a3[1];
  *v18 = *a3;
  v18[1] = v19;
  *(v18 + 25) = *(a3 + 25);
  swift_weakAssign();
  v20 = *(*v10 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v10 + v20, a5, AssociatedTypeWitness);
  *(v10 + *(*v10 + 200)) = a6;
  *(v10 + *(*v10 + 208)) = a7;
  *(v10 + *(*v10 + 216)) = a8;
  *(v10 + *(*v10 + 224)) = a10;
  *(v10 + 6) = 1;
  v10[2] = a4;
  return v10;
}

uint64_t ForEach.IDGenerator.makeID(data:index:offset:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v13 = a1;
  v14 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v13 - v8;
  if (*v3)
  {
    v10 = dispatch thunk of Collection.subscript.read();
    (*(v6 + 16))(v9);
    v10(v15, 0);
    swift_getAtKeyPath();
    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    result = v14;
    v15[0] = v13;
    v12 = *(*(a2 + 24) - 8);
    if (*(v12 + 64) == 8)
    {
      return (*(v12 + 16))(v14, v15, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #2 in closure #1 in ForEachState.applyNodes(from:style:list:transform:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  outlined init with copy of AnyTrackedValue(a2, v22);
  v16 = v23;
  v17 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v21 = a4;
  v19 = v14;
  v20 = v15;
  *a8 = (*(v17 + 64))(a3, &v21, a5, &v19, a6, a7, v16, v17) & 1;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t ForEachState.item(at:offset:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v171 = a2;
  v172 = a1;
  v198[4] = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v166 = v4;
  type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E6720]);
  v150 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v152 = (&v141 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v159 = &v141 - v10;
  v11 = v4[12];
  v158 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v148 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v141 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v141 - v17;
  v18 = v4[13];
  v19 = v4[10];
  v153 = *(*(v18 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v161 = *(AssociatedTypeWitness - 8);
  v162 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v147 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v141 - v23;
  v24 = v4[11];
  v25 = type metadata accessor for Optional();
  v164 = *(v25 - 8);
  v165 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v163 = &v141 - v26;
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v141 - v29;
  v168 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v146 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v156 = &v141 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v175 = &v141 - v36;
  *(v3 + v4[33]) = 1;
  v37 = v3 + *(*v3 + 160);
  swift_beginAccess();
  v169 = v19;
  v170 = v24;
  *&v38 = v19;
  *(&v38 + 1) = v24;
  v167 = v11;
  *&v39 = v11;
  *(&v39 + 1) = v18;
  v40 = v4[14];
  v173 = v39;
  v174 = v38;
  v192 = v39;
  v191 = v38;
  v193 = v40;
  v41 = type metadata accessor for ForEach();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v42 + 48;
  if (v43(v37, 1, v41) == 1)
  {
    __break(1u);
LABEL_63:
    __break(1u);
  }

  *&v181 = *&v37[*(v41 + 64)];
  v160 = v41;
  v154 = v44;
  v155 = v43;
  if (v43(v37, 1, v41) == 1)
  {
    goto LABEL_63;
  }

  v45 = v169;
  (*(v27 + 16))(v30, v37, v169);

  v192 = v173;
  v191 = v174;
  v193 = v40;
  v46 = type metadata accessor for ForEach.IDGenerator();
  v47 = v175;
  ForEach.IDGenerator.makeID(data:index:offset:)(v171, v46, v175);
  (*(v27 + 8))(v30, v45);

  swift_beginAccess();
  v48 = v170;
  type metadata accessor for Set();
  v49 = v163;
  Set.remove(_:)();
  swift_endAccess();
  v50 = v48;
  (*(v164 + 8))(v49, v165);
  v51 = v40;
  v52 = *(*v3 + 200);
  swift_beginAccess();
  v53 = *(v3 + v52);
  v54 = v166[15];
  v192 = v173;
  v191 = v174;
  v193 = v51;
  v194 = v54;
  v55 = type metadata accessor for ForEachState.Item();
  v56 = v47;
  v57 = v50;
  v58 = v53;
  v59 = v55;
  MEMORY[0x193ABE750](v198, v56, v58, v50, v55, v51);
  v60 = v198[0];
  if (v198[0])
  {
    swift_endAccess();
    v61 = *v60;
    if (*(v60 + *(*v60 + 240)) == 1)
    {
      ForEachState.uneraseItem(_:)(v60);
      v61 = *v60;
    }

    v62 = v61[27];
    v63 = *(*v3 + 240);
    v64 = v175;
    if (*(v60 + v62) == *(v3 + v63))
    {
      v65 = v61[31];
      if (*(v60 + v65))
      {
        goto LABEL_40;
      }

      v66 = v61[24];
      swift_beginAccess();
      v68 = v161;
      v67 = v162;
      v69 = v145;
      (*(v161 + 16))(v145, v60 + v66, v162);
      swift_getAssociatedConformanceWitness();
      LOBYTE(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v68 + 8))(v69, v67);
      if (v66)
      {
        goto LABEL_40;
      }

      if (one-time initialization token for v3 != -1)
      {
        swift_once();
      }

      v70 = static Semantics.v3;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if (dyld_program_sdk_at_least())
        {
          goto LABEL_59;
        }
      }

      else if (static Semantics.forced >= v70)
      {
LABEL_59:
        *(v60 + v65) = 1;
        *&v197[0] = 0;
        *(&v197[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(92);
        v135 = _typeName(_:qualified:)();
        MEMORY[0x193ABEDD0](v135);

        MEMORY[0x193ABEDD0](0x444920656874203ALL, 0xE900000000000020);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x193ABEDD0](0xD00000000000004FLL, 0x800000018DD83090);
        specialized static Log.externalWarning(_:)(*&v197[0], *(&v197[0] + 1));
      }
    }

    else
    {
      v122 = v61[24];
      swift_beginAccess();
      (*(v161 + 24))(v60 + v122, v172, v162);
      swift_endAccess();
      *(v60 + *(*v60 + 200)) = v171;
      *(v60 + *(*v60 + 208)) = *(v3 + *(*v3 + 232));
      *(v60 + v62) = *(v3 + v63);
    }

LABEL_40:
    *(v60 + *(*v60 + 232)) = 8;
LABEL_56:
    (*(v168 + 8))(v64, v57);
    return v60;
  }

  v164 = v54;
  v165 = v51;
  v143 = v59;
  v144 = v52;
  v145 = v37;
  swift_endAccess();
  v71 = AGSubgraphGetGraph();
  if (*(v3 + 172) == 1)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v72 = v71;
  v73 = AGSubgraphCreate2();

  v166 = v73;
  AGSubgraphAddChild();
  outlined init with copy of _ViewListInputs((v3 + 2), &v191);
  v74 = v192;
  swift_beginAccess();
  v75 = v74[3];
  v197[1] = v74[2];
  v197[2] = v75;
  v76 = v74[5];
  v197[3] = v74[4];
  v197[4] = v76;
  v197[0] = v74[1];
  type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v77 = swift_allocObject();
  memmove((v77 + 16), v74 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v197, &v181);

  *&v192 = v77;
  v195 = 0;
  v78 = v167;
  v52 = v151;
  if ((v196 & 1) == 0)
  {
    v196 |= 1uLL;
  }

  v142 = v3[2];
  v79 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v142);
  if (v79 && *(v79 + 72) == 1 && !*(v3 + *(*v3 + 168)))
  {
    type metadata accessor for MutableBox<Int?>();
    v134 = swift_allocObject();
    *(v134 + 16) = 0;
    *(v134 + 24) = 1;
    v163 = v134;
    swift_weakAssign();
  }

  else
  {
    v163 = 0;
  }

  v179 = 0;
  v180 = 1;
  v177 = 0;
  v178 = 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v80 = static ObservationCenter._current;
  swift_beginAccess();
  v81 = pthread_getspecific(v80[2]);
  if (!v81)
  {
    v82 = swift_slowAlloc();
    pthread_setspecific(v80[2], v82);
    *(&v182 + 1) = type metadata accessor for ObservationCenter();
    *&v181 = v80[3];
    outlined init with take of Any(&v181, v82);

    v81 = v82;
  }

  outlined init with copy of Any(v81, &v181);
  type metadata accessor for ObservationCenter();
  v83 = swift_dynamicCast();
  MEMORY[0x1EEE9AC00](v83);
  v139 = v3;
  v140 = v172;
  v84 = type metadata accessor for ObservationTracking._AccessList();
  v85 = (*(*(v84 - 8) + 56))(v52, 1, 1, v84);
  MEMORY[0x1EEE9AC00](v85);
  *(&v141 - 4) = v78;
  *(&v141 - 3) = partial apply for closure #1 in ForEachState.item(at:offset:);
  v139 = &v141 - 4;
  v86 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
  v87 = v148;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v52, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v141 - 6), v150, v86, v78, MEMORY[0x1E69E7288], &v181);

  v88 = *(v158 + 32);
  v89 = v149;
  v88(v149, v87, v78);
  v90 = v152;
  outlined init with take of ObservationTracking._AccessList?(v52, v152);
  v91 = v157;
  v88(v157, v89, v78);
  v92 = v159;
  outlined init with take of ObservationTracking._AccessList?(v90, v159);
  AGGraphClearUpdate();
  v93 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #2 in ForEachState.item(at:offset:)(&v191, v175, v3, v91, v92, &v177, &v179, v189);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v94 = v145;
  v95 = v160;
  v96 = v155(v145, 1, v160);
  if (v96 == 1)
  {
    goto LABEL_65;
  }

  v152 = &v141;
  *&v186 = *&v94[*(v95 + 68)];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v172;
  v139 = v3;
  v140 = v172;
  swift_getAssociatedTypeWitness();
  v98 = MEMORY[0x1E69E6530];
  type metadata accessor for KeyPath();
  v52 = type metadata accessor for Optional();

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in ForEachState.item(at:offset:), (&v141 - 4), MEMORY[0x1E69E73E0], v98, v99, &v181);
  v151 = 0;

  v100 = v181;
  v101 = BYTE8(v181);
  v153 = *(v168 + 16);
  v153(v156, v175, v170);
  outlined init with copy of _ViewListOutputs.Views(v189, &v181);
  v102 = v147;
  v103 = v97;
  v104 = v160;
  (*(v161 + 16))(v147, v103, v162);
  v105 = *v3;
  if (v155(v94, 1, v104) != 1)
  {
    if (v101)
    {
      v100 = v167;
    }

    v106 = *(v105 + 232);
    v107 = *(v3 + *(v105 + 240));
    v108 = *(v3 + v106);
    v109 = *&v94[*(v104 + 64)] == 0;
    swift_allocObject();
    v110 = v166;
    v60 = specialized ForEachState.Item.init(id:reuseID:views:subgraph:index:offset:contentID:seed:state:isConstant:)(v156, v100, &v181, v166, v102, v171, v108, v107, v3, v109);
    v57 = v170;
    v153(v146, v175, v170);
    *&v186 = v60;
    swift_beginAccess();
    v111 = v165;
    type metadata accessor for Dictionary();
    v112 = v110;

    Dictionary.subscript.setter();
    swift_endAccess();
    v113 = v164;
    if ((v180 & 1) == 0)
    {
      v181 = v174;
      v182 = v173;
      *&v183 = v111;
      *(&v183 + 1) = v164;
      v114 = type metadata accessor for ForEachState.ItemList();
      MEMORY[0x1EEE9AC00](v114);
      *(&v141 - 4) = v115;
      *(&v141 - 3) = partial apply for closure #4 in ForEachState.item(at:offset:);
      v139 = v60;
      AGGraphMutateAttribute();
    }

    if ((v178 & 1) == 0)
    {
      v181 = v174;
      v182 = v173;
      *&v183 = v111;
      *(&v183 + 1) = v113;
      v116 = type metadata accessor for ForEachState.ItemOffset();
      MEMORY[0x1EEE9AC00](v116);
      *(&v141 - 4) = v117;
      *(&v141 - 3) = partial apply for closure #5 in ForEachState.item(at:offset:);
      v139 = v60;
      AGGraphMutateAttribute();
    }

    v118 = v167;
    if (*(v3 + *(*v3 + 224)) <= v171)
    {
      v119 = *(*v60 + 160);
      swift_beginAccess();
      v181 = v174;
      v182 = v173;
      *&v183 = v165;
      *(&v183 + 1) = v164;
      v120 = type metadata accessor for ForEachState.LazyEdits();
      ForEachState.LazyEdits.appendInsert(id:)(v60 + v119, v120);
      swift_endAccess();
    }

    ForEachState.viewsPerElement.getter();
    v64 = v175;
    if ((v121 & 0x100) != 0)
    {
      if (v190)
      {
        outlined init with copy of _ViewListInputs(&v191, &v181);
        LOBYTE(v188) = 0;
        *(&v188 + 1) = 0;
        *(v187 + 8) = 0u;
        *(&v187[1] + 8) = 0u;
        BYTE8(v187[2]) = 0;
        *&v186 = v181;
        LODWORD(v187[0]) = DWORD1(v183);
        v123 = *(&v184 + 1);

        outlined destroy of _ViewListInputs(&v181);
        *(&v186 + 1) = v123;
        v176[0] = 0;
        closure #6 in ForEachState.item(at:offset:)(v176, v3, &v186);
        v124 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v142);
        if (!v124 || *(v124 + 72) != 1)
        {
          goto LABEL_53;
        }

        if (v163)
        {
          if (v176[0] == 1)
          {
            v125 = ForEachState.viewsPerElement.getter();
            if ((v126 & 0x100) == 0 && (v126 & 1) == 0)
            {
              v136 = v3 + *(*v3 + 176);
              *v136 = 0;
              *(v136 + 4) = 1;
              v137 = v125;
              v138 = v163;

              v183 = v187[1];
              v184 = v187[2];
              v185 = v188;
              v181 = v186;
              v182 = v187[0];
              outlined destroy of _ViewListCountInputs(&v181);
              outlined destroy of _ViewListOutputs(v189);
              swift_beginAccess();
              *(v138 + 2) = v137;
              v138[24] = 0;

              *(v3 + *(*v3 + 168)) = v138;

              goto LABEL_55;
            }
          }
        }

        ForEachState.viewsPerElement.getter();
        if (v127 & 0x100) == 0 && (v127 & 1) != 0 && (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA18LogForEachSlowPath33_1A3DD35AB7F6976908CD7AF959F34D1FLLV_Ttg5())
        {
          *&v181 = 0;
          *(&v181 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(186);
          MEMORY[0x193ABEDD0](0xD000000000000042, 0x800000018DD82FC0);
          v128 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v128);

          v64 = v175;
          MEMORY[0x193ABEDD0](0xD000000000000076, 0x800000018DD83010);
          specialized static Log.externalWarning(_:)(v181, *(&v181 + 1));

          v183 = v187[1];
          v184 = v187[2];
          v185 = v188;
          v130 = v186;
          v129 = v187[0];
        }

        else
        {
LABEL_53:

          v183 = v187[1];
          v184 = v187[2];
          v185 = v188;
          v130 = v186;
          v129 = v187[0];
        }

        v181 = v130;
        v182 = v129;
        outlined destroy of _ViewListCountInputs(&v181);
        outlined destroy of _ViewListOutputs(v189);
      }

      else
      {
        v131 = v189[7];
        outlined destroy of _ViewListOutputs(v189);

        v132 = v3 + *(*v3 + 176);
        *v132 = v131;
        *(v132 + 4) = 0;
      }
    }

    else
    {
      outlined destroy of _ViewListOutputs(v189);
    }

LABEL_55:
    outlined destroy of ObservationTracking._AccessList?(v159);
    (*(v158 + 8))(v157, v118);
    outlined destroy of _ViewListInputs(&v191);
    goto LABEL_56;
  }

LABEL_66:
  __break(1u);
  result = outlined destroy of ObservationTracking._AccessList?(v52);
  __break(1u);
  return result;
}

uint64_t ForEachChild.updateValue()(char *a1)
{
  v102[4] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v94 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v81 - v9;
  type metadata accessor for _ContiguousArrayStorage<ObservationTracking._AccessList>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E6720]);
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = (&v81 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v81 - v15;
  v16 = *(a1 + 4);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v81 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v81 - v23;
  v24 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = specialized ForEachChild.info.getter();
  (*(v24 + 16))(v27, v1, a1);
  v29 = *(a1 + 17);
  v30 = *(*v28 + 200);
  swift_beginAccess();
  v31 = *(v28 + v30);
  v32 = *(a1 + 1);
  *&v33 = v16;
  *(&v33 + 1) = *(a1 + 5);
  v97 = v33;
  v98 = v32;

  v99 = v98;
  v100 = v97;
  v97 = *(a1 + 3);
  v101 = v97;
  v34 = type metadata accessor for ForEachState.Item();
  v35 = *(&v98 + 1);
  MEMORY[0x193ABE750](v102, &v27[v29], v31, *(&v98 + 1), v34, v97);
  (*(*(v35 - 8) + 8))(&v27[v29], v35);
  v36 = v102[0];
  if (!v102[0])
  {
    swift_endAccess();
  }

  v37 = swift_endAccess();
  v38 = v28;
  if (*&v36[*(*v36 + 216)] != *(v28 + *(*v28 + 240)))
  {
  }

  *&v98 = v16;
  *&v97 = v17;
  v86 = &v81;
  MEMORY[0x1EEE9AC00](v37);
  v85 = (&v81 - 4);
  *(&v81 - 2) = v28;
  *(&v81 - 1) = v36;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v39 = static ObservationCenter._current;
  swift_beginAccess();
  v40 = pthread_getspecific(v39[2]);
  v41 = v94;
  v42 = v91;
  v43 = v92;
  if (!v40)
  {
    v44 = swift_slowAlloc();
    pthread_setspecific(v39[2], v44);
    *(&v100 + 1) = type metadata accessor for ObservationCenter();
    *&v99 = v39[3];
    outlined init with take of Any(&v99, v44);
    v43 = v92;

    v40 = v44;
  }

  outlined init with copy of Any(v40, &v99);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v45 = v102[0];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_23;
  }

  v81 = v5;
  v82 = CurrentAttribute;
  v84 = v38;
  swift_beginAccess();
  v83 = *(v45 + 24);
  *(v45 + 24) = MEMORY[0x1E69E7CC0];
  v47 = *(v41 + 7);
  v92 = v3;
  v48 = v47(v42, 1, 1, v3);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v98;
  *(&v81 - 4) = v98;
  *(&v81 - 3) = partial apply for closure #1 in ForEachChild.updateValue();
  *(&v81 - 2) = v85;
  v50 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
  v51 = v41;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, (&v81 - 6), v87, v50, v49, MEMORY[0x1E69E7288], v102);
  v87 = 0;
  v52 = v97;
  v53 = v49;
  v3 = *(v97 + 32);
  (v3)(v95, v43, v53);
  v54 = v93;
  outlined init with take of ObservationTracking._AccessList?(v42, v93);
  v55 = v88;
  outlined init with copy of ObservationTracking._AccessList?(v54, v88);
  v56 = v92;
  if ((*(v51 + 6))(v55, 1, v92) != 1)
  {
    v60 = v90;
    v91 = *(v51 + 4);
    v91(v90, v55, v56);
    (*(v51 + 2))(v89, v60, v56);
    v39 = *(v45 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + 24) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_14:
      v58 = v98;
      v63 = v39[2];
      v62 = v39[3];
      v85 = v3;
      if (v63 >= v62 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1, v39);
      }

      v39[2] = v63 + 1;
      v64 = v39 + ((v94[80] + 32) & ~v94[80]) + *(v94 + 9) * v63;
      v65 = v94;
      v66 = v92;
      v91(v64, v89, v92);
      *(v45 + 24) = v39;
      v51 = v65;
      (*(v65 + 1))(v90, v66);
      v52 = v97;
      v57 = v93;
      v3 = v85;
      goto LABEL_17;
    }

LABEL_23:
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    *(v45 + 24) = v39;
    goto LABEL_14;
  }

  outlined destroy of ObservationTracking._AccessList?(v54);
  v57 = v55;
  v58 = v98;
LABEL_17:
  outlined destroy of ObservationTracking._AccessList?(v57);
  (v3)(v96, v95, v58);
  v67 = *(v45 + 24);
  v68 = *(v67 + 16);
  if (v68)
  {
    v94 = v36;
    v95 = a1;
    v70 = *(v51 + 2);
    v69 = v51 + 16;
    *&v98 = v70;
    v71 = v67 + ((v69[64] + 32) & ~v69[64]);
    v72 = v58;
    v73 = *(v69 + 7);
    v74 = (v69 - 8);
    v93 = v67;

    v75 = v82;
    v76 = v92;
    v77 = v81;
    do
    {
      (v98)(v77, v71, v76);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v75, v77);
      (*v74)(v77, v76);
      v71 += v73;
      --v68;
    }

    while (v68);

    v52 = v97;
    v58 = v72;
    a1 = v95;
  }

  *(v45 + 24) = v83;

  MEMORY[0x1EEE9AC00](v78);
  *(&v81 - 2) = a1;
  *(&v81 - 1) = swift_getWitnessTable();
  v79 = v96;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v96, partial apply for closure #1 in StatefulRule.value.setter, (&v81 - 4), v58, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v80);

  return (*(v52 + 8))(v79, v58);
}

uint64_t outlined init with take of LinkDestination.Configuration?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 8 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)();
      v18 = *(*(v17 - 8) + 72);
      v19 = v18 * v3;
      result = v16 + v18 * v3;
      v20 = v18 * v6;
      v21 = v16 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v2;
    v29 = v4;
    do
    {
      v30 = 20 * v6;
      v9 = *(v2 + 48) + 20 * v6;
      v10 = *v9;
      v11 = *(v9 + 4);
      v12 = *(v9 + 8);
      v13 = *(v9 + 12);
      v31 = *(v9 + 17);
      v14 = v7;
      v15 = v3;
      v16 = *(v9 + 16);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v13);
      v17 = v16;
      v3 = v15;
      v7 = v14;
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v31);
      result = Hasher._finalize()();
      v18 = result & v14;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          v2 = v28;
          v4 = v29;
          goto LABEL_4;
        }

        v2 = v28;
        if (v3 >= v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v2 = v28;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = v19 + 20 * v3;
          v21 = (v19 + v30);
          if (20 * v3 < v30 || v20 >= v21 + 20 || v3 != v6)
          {
            v22 = *v21;
            *(v20 + 16) = *(v21 + 4);
            *v20 = v22;
          }

          v23 = *(v2 + 56);
          result = v23 + (v3 << 7);
          v24 = (v23 + (v6 << 7));
          v4 = v29;
          if (v3 != v6 || result >= v24 + 128)
          {
            result = memmove(result, v24, 0x80uLL);
            v3 = v6;
          }

          goto LABEL_4;
        }
      }

      v4 = v29;
LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 640 * v3;
        v15 = (v14 + 640 * v6);
        if (640 * v3 < (640 * v6) || result >= v15 + 640 || v3 != v6)
        {
          result = memmove(result, v15, 0x280uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for AccessibilityCustomAttributes.Value() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t destroy for ObservationGraphMutation()
{
}

uint64_t outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v19 = v11;
LABEL_13:
    v21 = __clz(__rbit64(v9)) | (v19 << 6);
    v22 = *(a1 + 56);
    v43 = *(*(a1 + 48) + 8 * v21);
    v44 = *(v22 + 16 * v21);
    swift_unknownObjectRetain();

    a2(&v41, &v43);

    swift_unknownObjectRelease();
    v23 = v41;
    v40 = v42;
    v24 = *v45;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, a4 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v45;
    if (v30)
    {
      v12 = 16 * v26;
      v13 = (v33[7] + 16 * v26);
      v14 = *v13;
      v15 = v13[1];
      swift_unknownObjectRetain();

      v17 = specialized Set.union<A>(_:)(v16, v15);

      swift_unknownObjectRelease();
      v18 = (v33[7] + v12);
      *v18 = v14;
      v18[1] = v17;

      swift_unknownObjectRelease();
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      *(v33[7] + 16 * v26) = v40;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v19;
  }

  v20 = v11;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v19);
    ++v20;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  swift_unknownObjectRetain();
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ObservationEntry>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v26 + 32) = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = 40 * v14;
      v21 = *(v2 + 56) + v20;
      v22 = *(v21 + 32);
      v23 = *(v4 + 48) + v17;
      v24 = *v21;
      v25 = *(v21 + 16);
      *v23 = v19;
      *(v23 + 8) = v18;
      v26 = *(v4 + 56) + v20;
      *v26 = v24;
      *(v26 + 16) = v25;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CGFloat, Int>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyTrackedValue>, &lazy cache variable for type metadata for AnyTrackedValue, &protocol descriptor for AnyTrackedValue, outlined init with take of AnyTrackedValue);
}

{
  v1 = v0;
  v2 = type metadata accessor for NamedImage.BitmapKey(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>();
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = *(v4 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    v27 = v4;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = v28;
        v23 = *(v29 + 72) * v21;
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v4 + 48) + v23, v28, type metadata accessor for NamedImage.BitmapKey);
        outlined init with copy of SeedValue<GlassContainer.EntryState>(*(v4 + 56) + 96 * v21, v31, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
        v24 = v30;
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v22, *(v30 + 48) + v23, type metadata accessor for NamedImage.BitmapKey);
        v4 = v27;
        result = _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v31, *(v24 + 56) + 96 * v21, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for _ContiguousArrayStorage<Any>);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v6 = v30;
        goto LABEL_21;
      }

      v20 = *(v8 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for NamedImage.VectorKey(0);
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v22 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    for (i = (v12 + 63) >> 6; v14; result = outlined init with take of NamedImage.VectorInfo(v24, *(v7 + 56) + v19))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v11 << 6);
      v20 = *(v23 + 72) * v19;
      outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v5 + 48) + v20, v4, type metadata accessor for NamedImage.VectorKey);
      v19 *= 88;
      outlined init with copy of NamedImage.VectorInfo(*(v5 + 56) + v19, v24);
      _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v4, *(v7 + 48) + v20, type metadata accessor for NamedImage.VectorKey);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= i)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v18 = *(v5 + 64 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Font.RatioKey, CGFloat>, lazy protocol witness table accessor for type Font.RatioKey and conformance Font.RatioKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v28 = type metadata accessor for URL();
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<URL, WeakBox<CUICatalog>>();
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v30 + 32;
    v25[2] = v30 + 16;
    v26 = v3;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v31 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v30;
        v21 = *(v30 + 72) * v19;
        v23 = v27;
        v22 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v21, v28);
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v3 + 56) + 8 * v19, v32, type metadata accessor for WeakBox<CUICatalog>);
        v24 = v29;
        (*(v20 + 32))(*(v29 + 48) + v21, v23, v22);
        v3 = v26;
        result = _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v32, *(v24 + 56) + 8 * v19, type metadata accessor for WeakBox<CUICatalog>);
        v14 = v31;
      }

      while (v31);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v5 = v29;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v31 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>, type metadata accessor for (Solarium.EnablementLevel, Solarium.EnablementCriteria), lazy protocol witness table accessor for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 16 * v14;
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DynamicTypeSize, CGFloat>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UnsafeRawPointer, String>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<ConstantKey, AGAttribute>, type metadata accessor for AGAttribute, lazy protocol witness table accessor for type ConstantKey and conformance ConstantKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<AGWeakAttribute, (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)>();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        v22 = *(*(v5 + 48) + 8 * v20);
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v5 + 56) + v21, v4, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
        *(*(v7 + 48) + 8 * v20) = v22;
        result = _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v4, *(v7 + 56) + v21, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList));
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 24 * v14;
      v18 = *(*(v2 + 56) + 4 * v14);
      v19 = *(v4 + 48) + 24 * v14;
      v20 = *v17;
      v21 = *(v17 + 16);
      v22 = *(v17 + 20);
      *(v19 + 22) = *(v17 + 22);
      *(v19 + 20) = v22;
      *(v19 + 16) = v21;
      *v19 = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<StyleContextDescriptor>, &type metadata for StyleContextDescriptor, &protocol witness table for StyleContextDescriptor);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_DisplayList_Identity, _DisplayList_StableIdentity>, lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 16);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Int>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<UUID, NamedImage.DecodedInfo>();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v36, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v43 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v42 + 32;
    v38 = v42 + 16;
    v39 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v41;
        v22 = v42;
        v23 = *(v42 + 72) * v20;
        v24 = v40;
        (*(v42 + 16))(v40, *(v5 + 48) + v23, v41);
        v25 = *(v5 + 56);
        v26 = 48 * v20;
        v27 = v25 + 48 * v20;
        v28 = *v27;
        v44 = *(v27 + 16);
        v29 = *(v27 + 32);
        v30 = *(v27 + 40);
        v31 = v43;
        v32 = *(v22 + 32);
        LOBYTE(v22) = *(v27 + 8);
        v32(*(v43 + 48) + v23, v24, v21);
        v33 = *(v31 + 56) + v26;
        v5 = v39;
        *v33 = v28;
        *(v33 + 8) = v22;
        *(v33 + 16) = v44;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        result = outlined copy of GraphicsImage.Contents(v28, v22);
        v15 = v45;
      }

      while (v45);
    }

    v18 = v11;
    v7 = v43;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_21;
      }

      v19 = *(v36 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Int, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, CGFloat>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DynamicPropertyCache.Fields>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        LODWORD(v18) = *(v18 + 20);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 20) = v18;
        result = outlined copy of DynamicPropertyCache.Fields.Layout();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, Int>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheChildren>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v2 + 56) + v17);
        v21 = *v20;
        v22 = v20[1];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v24 = (*(v4 + 56) + v17);
        *v24 = v21;
        v24[1] = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        result = outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v19);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGSubgraphRef, [(_:)]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AttributeInfoTrace.History>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 12;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 8);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 8) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>, &lazy cache variable for type metadata for TupleTypeDescription<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>, type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item>, type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>, type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>, type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = *(v4 + 48) + 24 * v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt32>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        memcpy(__dst, (*(v2 + 56) + 640 * v17), 0x27CuLL);
        *(*(v4 + 48) + 8 * v17) = v18;
        memcpy((*(v4 + 56) + 640 * v17), __dst, 0x27CuLL);
        result = outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, v19, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, outlined init with take of AnyTrackedValue);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 12);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        v24 = *(v18 + 8);
        *v23 = *v18;
        *(v23 + 8) = v24;
        *(v23 + 12) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        outlined copy of Material.ID(v19, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 12);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 16 * v17;
        v23 = *(v18 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        *(v22 + 12) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        outlined copy of Material.ID(v19, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v17 *= 16;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        LODWORD(v24) = *(v24 + 8);
        v26 = *(v4 + 48) + v18;
        v27 = *(v19 + 32);
        *v26 = *v19;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v27;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 8) = v24;
        result = outlined copy of ResolvedIDs.Key(v20, v21, v22, v23, v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, Int>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = *(v4 + 48) + 24 * v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Int>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AnyFontModifier>, type metadata accessor for AnyFontModifier);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyFontModifier>, type metadata accessor for AnyFontModifier);
}

{
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>, type metadata accessor for LocalizedStringKey.FormatArgument);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v4 + 56) + v23, v26, type metadata accessor for LocalizedStringKey.FormatArgument);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v22, *(v24 + 56) + v23, type metadata accessor for LocalizedStringKey.FormatArgument);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_21;
      }

      v19 = *(v4 + 64 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v20 = *(*(v2 + 48) + 16 * v17);
        v19 = 40 * v17;
        outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v17, v21);
        *(*(v4 + 48) + v18) = v20;
        result = outlined init with take of AnyTrackedValue(v21, *(v4 + 56) + v19);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.CallbackKey, RBDisplayListContents>, type metadata accessor for RBDisplayListContents, lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        *v22 = *v18;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<EventID, EventType>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        result = outlined init with take of AnyTrackedValue(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 40;
        v20 = *(v2 + 56) + v17;
        v21 = *(v20 + 32);
        v22 = *(v20 + 16);
        v27 = *v20;
        v28 = v22;
        v29 = v21;
        *(*(v4 + 48) + v18) = v19;
        v23 = *(v4 + 56) + v17;
        v24 = v27;
        v25 = v28;
        *(v23 + 32) = v29;
        *v23 = v24;
        *(v23 + 16) = v25;
        result = outlined init with copy of GlassContainer.ItemData(&v27, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, UInt32>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollEdgeEffectTag.ID, Int>, lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>, type metadata accessor for LazyLayoutCacheItem, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, _ViewList_ID.Canonical>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = v18[1];
        v20 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyAccessibilityPropertiesEntry>, &lazy cache variable for type metadata for AnyAccessibilityPropertiesEntry, &protocol descriptor for AnyAccessibilityPropertiesEntry, outlined init with take of _ViewList_Elements);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 24);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v18;
        *(*(v4 + 56) + 8 * v17) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AccessibilityCustomAttributes.Value>, type metadata accessor for AccessibilityCustomAttributes.Value);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v32 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 56);
        v23 = (*(v4 + 48) + 16 * v20);
        v24 = v4;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v22 + v28, v33, type metadata accessor for AccessibilityCustomAttributes.Value);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v4 = v24;
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v27, *(v29 + 56) + v28, type metadata accessor for AccessibilityCustomAttributes.Value);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v6 = v35;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ForwardedEventDispatcher>, &lazy cache variable for type metadata for ForwardedEventDispatcher, &protocol descriptor for ForwardedEventDispatcher, outlined init with take of _ViewList_Elements);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, Int>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ForegroundLayerLevel, _ColorMatrix>, lazy protocol witness table accessor for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *v26 = v25)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 4 * v14;
      v18 = *(*(v2 + 48) + 4 * v14);
      v19 = 80 * v14;
      v20 = (*(v2 + 56) + v19);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      v25 = *v20;
      v24 = v20[1];
      *(*(v4 + 48) + v17) = v18;
      v26 = (*(v4 + 56) + v19);
      v26[3] = v22;
      v26[4] = v23;
      v26[1] = v24;
      v26[2] = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v17 *= 32;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 24);
        v27 = *(v24 + 28);
        v28 = *(v4 + 48) + v18;
        v29 = *(v24 + 8);
        v30 = *(v19 + 32);
        *v28 = *v19;
        *(v28 + 8) = v21;
        *(v28 + 16) = v22;
        *(v28 + 24) = v23;
        *(v28 + 32) = v30;
        v31 = *(v4 + 56) + v17;
        *v31 = v25;
        *(v31 + 8) = v29;
        *(v31 + 24) = v26;
        *(v31 + 28) = v27;
        result = outlined copy of GlassContainer.Entry.ModelID(v20, v21, v22, v23, v30);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Axis, FocusableFillerBounds.Metrics>, lazy protocol witness table accessor for type Axis and conformance Axis);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, PinnedSection>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *v20 = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + (v14 << 6));
      v18 = v17[1];
      *v21 = v17[2];
      *&v21[9] = *(v17 + 41);
      v19 = *v17;
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v20 = (*(v4 + 56) + (v14 << 6));
      *(v20 + 41) = *&v21[9];
      v20[1] = v18;
      v20[2] = *v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, SymbolRenderer.CachedResolvedSymbol>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v25);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(v4 + 48) + 40 * v17;
        v21 = *v18;
        v22 = v26;
        v23 = v25[1];
        *v20 = v25[0];
        *(v20 + 16) = v23;
        *(v20 + 32) = v22;
        v24 = *(v4 + 56) + 24 * v17;
        *v24 = v21;
        *(v24 + 16) = v19;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 20 * v17;
        v19 = *(v2 + 48) + 20 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 17);
        v17 <<= 7;
        v22 = (*(v2 + 56) + v17);
        v23 = *v19;
        v24 = v22[7];
        v26 = v22[4];
        v25 = v22[5];
        v45 = v22[6];
        v46 = v24;
        v43 = v26;
        v44 = v25;
        v28 = *v22;
        v27 = v22[1];
        v29 = v22[3];
        v41 = v22[2];
        v42 = v29;
        v39 = v28;
        v40 = v27;
        v30 = *(v4 + 48) + v18;
        *v30 = v23;
        *(v30 + 16) = v20;
        *(v30 + 17) = v21;
        v31 = (*(v4 + 56) + v17);
        v32 = v39;
        v33 = v40;
        v34 = v42;
        v31[2] = v41;
        v31[3] = v34;
        *v31 = v32;
        v31[1] = v33;
        v35 = v43;
        v36 = v44;
        v37 = v46;
        v31[6] = v45;
        v31[7] = v37;
        v31[4] = v35;
        v31[5] = v36;
        result = outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v39, &v38);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<OpaquePointer, DisplayList.ViewUpdater.ViewCache.Key>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 20 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 17);
      v20 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 20 * v14;
      *v21 = v20;
      *(v21 + 16) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<_NSRange, [NSAttributedStringKey : Any]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<AttributedString.AnyAttribute, AttributedString.Keys>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        outlined copy of AttributedString.AnyAttribute(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 8 * (v13 | (v8 << 6));
      v17 = *(*(v2 + 48) + v16);
      outlined init with copy of WeakBox<AnyLocationBase>(*(v2 + 56) + v16, v18);
      *(*(v4 + 48) + v16) = v17;
      _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v18, *(v4 + 56) + v16, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [(AbstractHomogeneousCollection, Int)]);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollAnchorStorage.Role, UnitPoint>, lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewCache.AnimatorInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 20 * v17;
        v19 = *(v2 + 48) + 20 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 17);
        v29 = *v19;
        v22 = 56 * v17;
        result = outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(*(v2 + 56) + 56 * v17, v30);
        v23 = *(v4 + 48) + v18;
        *v23 = v29;
        *(v23 + 16) = v20;
        *(v23 + 17) = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v31;
        v26 = v30[2];
        v27 = v30[1];
        *v24 = v30[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DisplayList.ViewUpdater.ViewCache.AsyncValues>);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Decodable & AnyViewFactory.Type>, type metadata accessor for Decodable & AnyViewFactory.Type);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CAHostingLayerEvent.MouseButton, Int>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBindingBridge.TrackedEventState>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v24 + 8) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v2 + 56) + v17;
      v22 = *v21;
      LOBYTE(v21) = *(v21 + 8);
      v23 = (*(v4 + 48) + v17);
      *v23 = v20;
      v23[1] = v19;
      v24 = *(v4 + 56) + v17;
      *v24 = v22;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewDebug.Property, Any>, lazy protocol witness table accessor for type _ViewDebug.Property and conformance _ViewDebug.Property);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<TintPlacement, AnyShapeStyle>, lazy protocol witness table accessor for type TintPlacement and conformance TintPlacement);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 56) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&lazy cache variable for type metadata for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item);
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyKeyPath();
    result = Set.Iterator.init(_cocoa:)();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      outlined consume of Set<EventID>.Iterator._Variant();
      return v16;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyKeyPath();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyKeyPath();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCs10AnyKeyPathC_Tt1g5(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyKeyPath();
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  (*(*a2 + 120))(v16);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      if (v11 == a2)
      {
        break;
      }

      v12 = *(*v11 + 112);

      LOBYTE(v12) = v12(a2);

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v9);

    return 0;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v14, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16[0];
    *a1 = a2;
    return 1;
  }
}

void specialized ObservationGraphMutation.cancel()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(type metadata accessor for ObservationTracking() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      ObservationTracking.cancel()();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + 40;
    do
    {
      AGSubgraphRemoveObserver();
      v9 += 16;
      --v8;
    }

    while (v8);
  }
}

uint64_t outlined destroy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1)
{
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in ForEachState.applyNodes(from:style:list:transform:to:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v83 = a8;
  v81 = a6;
  v80 = a5;
  v85 = a1;
  v11 = *a3;
  v12 = *a3;
  v13 = *(*a3 + 120);
  v76 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v72 - v14;
  v84 = *v16;
  v18 = v17 + *(*v17 + 160);
  swift_beginAccess();
  v19 = *(v11 + 112);
  v82 = v12;
  v20 = *(v12 + 128);
  v21 = *(v11 + 144);
  *&v98 = v19;
  *(&v98 + 1) = v13;
  v86 = v20;
  v99 = v20;
  v87 = v21;
  v100[0] = v21;
  v22 = type metadata accessor for ForEach();
  result = (*(*(v22 - 8) + 48))(v18, 1, v22);
  if (result == 1)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v79 = *(v18 + *(v22 + 64));
  *&v98 = v19;
  *(&v98 + 1) = v13;
  v99 = v86;
  v100[0] = v87;
  type metadata accessor for ForEach.IDGenerator();
  result = outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), v111);
  v77 = v19;
  v78 = a7;
  if (v112)
  {
    if (*(a4 + 172) != 1)
    {
      v24 = v111[0];
      v25 = *(&v111[0] + 1);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      InputValue = AGGraphGetInputValue();
      outlined init with copy of AnyTrackedValue(InputValue, v88);
      if (v25)
      {
        v27 = *(*v25 + 80);

        v27(v88);
      }

      v28 = v79 == 0;
      v103 = v80;
      LOBYTE(v104) = v81 & 1;
      v29 = ForEachState.viewsPerElement.getter();
      v31 = (v29 == 1) & ~v30;
      v105 = a3;
      v106 = 1;
      if ((v30 & 0x100) != 0)
      {
        v31 = 0;
      }

      v107 = v31;
      v108 = v28;
      MEMORY[0x1EEE9AC00](v29);
      v32 = v84;
      v33 = v85;
      *(&v72 - 6) = v88;
      *(&v72 - 5) = v33;
      *(&v72 - 4) = v32;
      *(&v72 - 6) = v24;
      v34 = v83;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = v34;
      v35 = *(v82 + 152);

      *&v36 = v77;
      *(&v36 + 1) = v13;
      v99 = v86;
      v98 = v36;
      v100[0] = v87;
      v100[1] = v35;
      v37 = type metadata accessor for ForEachState.Transform();
      _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(&v105, partial apply for closure #2 in closure #1 in ForEachState.applyNodes(from:style:list:transform:to:), (&v72 - 8), MEMORY[0x1E69E6370], v37, &protocol witness table for ForEachState<A, B, C>.Transform);

      v38 = v98;
      v39 = v88;
LABEL_30:
      __swift_destroy_boxed_opaque_existential_1(v39);
      return v38;
    }

    goto LABEL_35;
  }

  outlined init with take of AnyTrackedValue(v111, &v105);
  v41 = v109;
  v40 = v110;
  v42 = __swift_project_boxed_opaque_existential_1(&v105, v109);
  result = (*(v40 + 8))(v41, v40);
  v43 = result;
  v44 = result;
  if (v84)
  {
    v44 = result * (v84 >> 1);
    if ((result * (v84 >> 1)) >> 64 != v44 >> 63)
    {
      __break(1u);
LABEL_33:
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
LABEL_24:
      v59 = *(v42 + 2);
      v58 = *(v42 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v73 = v59 + 1;
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v42);
        v60 = v73;
        v42 = v71;
      }

      *(v42 + 2) = v60;
      v61 = &v42[24 * v59];
      v62 = v74;
      *(v61 + 4) = v15;
      *(v61 + 5) = v62;
      *(v61 + 12) = v12;
      v61[52] = v76;
      v104 = v42;
      goto LABEL_27;
    }
  }

  v45 = *v85;
  v46 = __OFSUB__(*v85, v44);
  v47 = *v85 - v44;
  if (v47 < 0 == v46)
  {
    *v85 = v47;
    __swift_destroy_boxed_opaque_existential_1(&v105);
    return 1;
  }

  v103 = 0;
  v104 = MEMORY[0x1E69E7CC0];
  v48 = *a3;
  v19 = v79;
  v75 = v45;
  if (v79)
  {
    v49 = v76;
    result = (*(v76 + 16))(v15, a3 + *(v48 + 160), v13);
    if (*(a4 + 172))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v50 = *(a4 + 168);
    v51 = ForEachState.viewsPerElement.getter() == 1;
    v53 = v51 & ~v52;
    if ((v52 & 0x100) != 0)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53;
    }

    _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(v15, v50, v54, *(a3 + *(*a3 + 168)), v13);
    (*(v49 + 8))(v15, v13);
    v42 = v104;
LABEL_27:
    outlined init with copy of AnyTrackedValue(&v105, v100);
    *&v98 = v75;
    *(&v98 + 1) = v43;
    *&v99 = v103;
    *(&v99 + 1) = v42;
    v100[5] = MEMORY[0x1E69E7CC0];
    v100[6] = MEMORY[0x1E69E7CC0];
    v101 = 0;
    v102 = 1;
    v96 = v80;
    v97 = v81 & 1;
    v63 = ForEachState.viewsPerElement.getter();
    v65 = (v63 == 1) & ~v64;
    v92 = a3;
    v93 = 0;
    if ((v64 & 0x100) != 0)
    {
      v65 = 0;
    }

    v94 = v65;
    v95 = v19 == 0;
    MEMORY[0x1EEE9AC00](v63);
    v67 = v83;
    v66 = v84;
    *(&v72 - 6) = v78;
    *(&v72 - 5) = v67;
    v68 = v85;
    *(&v72 - 4) = v85;
    *(&v72 - 3) = v66;
    *(&v72 - 2) = &v98;
    v69 = *(v82 + 152);

    v88[0] = v77;
    v88[1] = v13;
    v89 = v86;
    v90 = v87;
    v91 = v69;
    v70 = type metadata accessor for ForEachState.Transform();
    _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(&v92, partial apply for closure #1 in closure #1 in ForEachState.applyNodes(from:style:list:transform:to:), (&v72 - 8), MEMORY[0x1E69E6370], v70, &protocol witness table for ForEachState<A, B, C>.Transform);

    v38 = LOBYTE(v88[0]);
    *v68 = 0;
    outlined destroy of _ViewList_Sublist(&v98);
    v39 = &v105;
    goto LABEL_30;
  }

  if ((*(a4 + 172) & 1) == 0)
  {
    v55 = *(a3 + *(v48 + 200));
    LODWORD(v12) = *(a4 + 168);
    v56 = ForEachState.viewsPerElement.getter();
    if ((v57 & 0x100) != 0)
    {
      LODWORD(v76) = 0;
    }

    else
    {
      LODWORD(v76) = (v56 == 1) & ~v57;
    }

    v74 = *(a3 + *(*a3 + 168));
    type metadata accessor for _AnyHashableBox<ForEachConstantID>();
    v15 = swift_allocObject();
    *(v15 + 2) = v55;
    *(v15 + 6) = v12;
    v42 = MEMORY[0x1E69E7CC0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
  return result;
}