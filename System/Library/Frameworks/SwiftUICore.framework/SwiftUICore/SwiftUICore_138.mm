void type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

SwiftUI::AccessibilityChildBehaviorKind_optional __swiftcall AccessibilityChildBehaviorKind.init(protobufValue:)(Swift::UInt protobufValue)
{
  if (protobufValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!protobufValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return protobufValue;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind and conformance AccessibilityChildBehaviorKind);
  }

  return result;
}

void StyleableView.scrapeableContent.getter(void *a1@<X8>)
{
  StyleableView.scrapeableContent.getter(a1);
}

{
  *a1 = 0xF000000000000007;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MakeDefaultRepresentation<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t static MakeScrapeableResolvedRepresentation.scrapeContent(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetAttributeInfo();
  v11 = v10;
  v12 = *(type metadata accessor for MakeScrapeableResolvedRepresentation() + 16);
  Value = AGGraphGetValue();
  (*(*(v12 - 8) + 16))(v9, Value, v12);
  (*(a3 + 64))(&v18, a2, a3);
  result = (*(v7 + 8))(v9, a2);
  v15 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v17 = v18;
    outlined copy of ScrapeableContent.Content(v18);
    closure #1 in static MakeScrapeableResolvedRepresentation.scrapeContent(from:)(&v17, v11, a4);
    outlined consume of ScrapeableContent.Content?(v15);
    return outlined consume of ScrapeableContent.Content(v17);
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
  }

  return result;
}

float64x2_t closure #1 in static MakeScrapeableResolvedRepresentation.scrapeContent(from:)@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 4);
  type metadata accessor for MakeScrapeableResolvedRepresentation();
  v8 = *MEMORY[0x1E698D3F8];
  if (v7 == *MEMORY[0x1E698D3F8])
  {
    outlined copy of ScrapeableContent.Content(v5);
    v9 = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  else
  {
    type metadata accessor for CGPoint(0);
    outlined copy of ScrapeableContent.Content(v5);
    v9 = *AGGraphGetValue();
  }

  v21 = v9;
  if (*(a2 + 8) == v8)
  {
    if (one-time initialization token for invalidValue != -1)
    {
      swift_once();
    }

    Value = &static CGSize.invalidValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v12 = *Value;
  v11 = *(Value + 1);
  if (*(a2 + 12) == v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    v17 = AGGraphGetValue();
    v13 = *v17;
    v14 = *(v17 + 8);
    v19 = *(v17 + 32);
    v20 = *(v17 + 16);

    v15 = v19;
    v16 = v20;
  }

  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  result = vsubq_f64(v15, vsubq_f64(v21, v16));
  *(a3 + 48) = v21;
  *(a3 + 64) = result;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MakeScrapeableResolvedRepresentation<A>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t AnyStyleModifier.makeReusable(indirectMap:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    IndirectAttribute = *(*(v5 + 56) + 4 * v6);
  }

  else
  {
    swift_endAccess();
    AGGraphClearUpdate();
    v9 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    IndirectAttribute = AGGraphCreateIndirectAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(IndirectAttribute, v4, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v12;
  }

  result = swift_endAccess();
  *v2 = IndirectAttribute;
  return result;
}

uint64_t AnyStyleModifier.tryToReuse(by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  if (a6 != a2)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*(a3 + 24) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a5), (v10 & 1) != 0))
  {
    swift_endAccess();
    if ((a4 & 1) == 0)
    {
      AGGraphSetIndirectAttribute();
    }

    return 1;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t static AutomaticStyleOverrideModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AutomaticStyleOverrideModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static AutomaticStyleOverrideModifier._makeInputs(modifier:inputs:), a4, &v8);
  v7[0] = v8;
  v7[1] = type metadata accessor for StyleModifierType();
  v5 = type metadata accessor for StyleOverrideInput();
  return _GraphInputs.subscript.setter(v7, v5, v5, &protocol witness table for StyleOverrideInput<A>);
}

uint64_t closure #1 in static AutomaticStyleOverrideModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = type metadata accessor for AutomaticStyleOverrideModifier();
  v8[3] = a3;
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, a3, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t instantiation function for generic protocol witness table for MakeScrapeableResolvedRepresentation<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t VelocitySampler.lastTime.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 44));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

uint64_t VelocitySampler.init()@<X0>(uint64_t a1@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(*(TupleTypeMetadata2 - 8) + 56);
  v3(a1, 1, 1, TupleTypeMetadata2);
  v4 = type metadata accessor for VelocitySampler();
  v3(a1 + v4[9], 1, 1, TupleTypeMetadata2);
  result = (v3)(a1 + v4[10], 1, 1, TupleTypeMetadata2);
  v6 = a1 + v4[11];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a1 + v4[12]) = 0x3FE8000000000000;
  return result;
}

uint64_t VelocitySampler.addSample(_:time:)(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v84 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v85 = &v76 - v25;
  v26 = *a2;
  v27 = &v4[*(a3 + 44)];
  if ((v27[8] & 1) != 0 || (v28 = *v27, v26 >= *v27))
  {
    v80 = v22;
    v81 = v23;
    v77 = v21;
    v82 = v20;
    v86 = TupleTypeMetadata2;
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = a1;
    v36 = v85;
    (*(*(v8 - 8) + 16))(v85, v35, v8, v24);
    *&v36[v34] = v26;
    v37 = v27[8];
    v83 = v4;
    if ((v37 & 1) != 0 || v26 - *v27 >= 2.22044605e-16)
    {
      *v27 = v26;
      v27[8] = 0;
      v51 = *(a3 + 40);
      v52 = v84;
      v79 = *(v84 + 16);
      v79(v14, &v4[v51], v10);
      v53 = v82;
      v78 = *(v82 + 48);
      v54 = v78(v14, 1, v86);
      v81 = *(v52 + 8);
      v81(v14, v10);
      v55 = *(a3 + 36);
      if (v54 == 1)
      {
        v56 = v51;
        v57 = v83;
        v58 = v80;
        v79(v80, &v83[v55], v10);
        v59 = v78(v58, 1, v86);
        v60 = v58;
        v61 = v81;
        v81(v60, v10);
        if (v59 == 1)
        {
          v62 = (v53 + 56);
          v63 = v77;
          v79(v77, v57, v10);
          v64 = v78(v63, 1, v86);
          v65 = v81;
          v81(v63, v10);
          v66 = (v53 + 32);
          if (v64 == 1)
          {
            v65(v57, v10);
            v67 = v86;
            (*v66)(v57, v85, v86);
            return (*v62)(v57, 0, 1, v67);
          }

          else
          {
            v65(&v57[v55], v10);
            v74 = v86;
            (*v66)(&v57[v55], v85, v86);
            return (*v62)(&v57[v55], 0, 1, v74);
          }
        }

        else
        {
          v61(&v57[v56], v10);
          v71 = v86;
          (*(v53 + 32))(&v57[v56], v85, v86);
          return (*(v53 + 56))(&v57[v56], 0, 1, v71);
        }
      }

      else
      {
        v68 = *(v52 + 24);
        v69 = v83;
        v68(v83, &v83[v55], v10);
        v68(&v69[v55], &v69[v51], v10);
        v81(&v69[v51], v10);
        v70 = v86;
        (*(v53 + 32))(&v69[v51], v85, v86);
        return (*(v53 + 56))(&v69[v51], 0, 1, v70);
      }
    }

    else
    {
      v38 = *(a3 + 40);
      v39 = v84;
      v40 = v10;
      v80 = *(v84 + 16);
      (v80)(v18, &v4[v38], v10);
      v41 = v82;
      v79 = *(v82 + 48);
      v42 = (v79)(v18, 1, v86);
      v43 = *(v39 + 8);
      v43(v18, v10);
      if (v42 == 1)
      {
        v44 = *(a3 + 36);
        v45 = v81;
        (v80)(v81, &v83[v44], v10);
        v46 = v86;
        v47 = (v79)(v45, 1, v86);
        v43(v45, v40);
        v48 = (v41 + 32);
        v49 = (v41 + 56);
        if (v47 == 1)
        {
          v50 = v83;
          v43(v83, v40);
          (*v48)(v50, v85, v46);
          return (*v49)(v50, 0, 1, v46);
        }

        else
        {
          v75 = v83;
          v43(&v83[v44], v40);
          (*v48)(&v75[v44], v85, v46);
          return (*v49)(&v75[v44], 0, 1, v46);
        }
      }

      else
      {
        v72 = v83;
        v43(&v83[v38], v40);
        v73 = v86;
        (*(v41 + 32))(&v72[v38], v85, v86);
        return (*(v41 + 56))(&v72[v38], 0, 1, v73);
      }
    }
  }

  else
  {
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    MEMORY[0x193ABEDD0](0x2064696C61766E49, 0xEF20656C706D6173);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    v30 = v88;
    v29 = v89;
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    MEMORY[0x193ABEDD0](0x6D69742068746977, 0xEA00000000002065);
    v87 = v26;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0x207473616C203E20, 0xED000020656D6974);
    v87 = v28;
    _print_unlocked<A, B>(_:_:)();
    v31 = v88;
    v32 = v89;
    v88 = v30;
    v89 = v29;

    MEMORY[0x193ABEDD0](v31, v32);

    specialized static Log.externalWarning(_:)(v88, v89);
  }
}

Swift::Void __swiftcall VelocitySampler.reset()()
{
  (*(*(v0 - 8) + 8))();

  VelocitySampler.init()(v1);
}

uint64_t VelocitySampler.velocity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v99 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v96 = a1;
  v91 = v4;
  v100 = *(v4 + 8);
  v90 = *(v100 + 8);
  v6 = type metadata accessor for _Velocity();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v74 - v11;
  v93 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v74 - v17;
  v98 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  v28 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v85 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v74 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v101 = &v74 - v36;
  v95 = v20;
  v37 = *(v20 + 16);
  v97 = v3;
  v37(v27, v3, v19, v35);
  v38 = *(v28 + 48);
  if (v38(v27, 1, TupleTypeMetadata2) == 1)
  {
    v24 = v27;
LABEL_5:
    v40 = v98;
    (*(v95 + 8))(v24, v19);
    return static _Velocity<>.zero.getter(v40, v100);
  }

  v39 = *(v28 + 32);
  v81 = v28 + 32;
  v80 = v39;
  v39(v101, v27, TupleTypeMetadata2);
  (v37)(v24, v97 + v96[9], v19);
  if (v38(v24, 1, TupleTypeMetadata2) == 1)
  {
    (*(v28 + 8))(v101, TupleTypeMetadata2);
    goto LABEL_5;
  }

  v78 = v28;
  v80(v33, v24, TupleTypeMetadata2);
  v77 = v38;
  v42 = v92;
  v43 = v37;
  v44 = TupleTypeMetadata2;
  v45 = v101;
  v46 = v98;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v47 = *(v44 + 48);
  v79 = v33;
  v48 = *&v33[v47];
  v49 = *&v45[v47];
  v50 = v44;
  v51 = *(v91 + 16);
  v76 = v91 + 16;
  v75 = v51;
  (v51)(v46, 1.0 / (v48 - v49));
  v52 = v93;
  v53 = v86;
  v74 = *(v93 + 16);
  v74(v86, v42, v46);
  v54 = v53;
  _Velocity.init(valuePerSecond:)(v53, v46, v94);
  v55 = v84;
  v43(v84, v97 + v96[10], v19);
  if (v77(v55, 1, v50) == 1)
  {
    (*(v52 + 8))(v92, v46);
    v56 = *(v78 + 8);
    v56(v79, v50);
    v56(v101, v50);
    (*(v95 + 8))(v55, v19);
    return (*(v88 + 32))(v99, v94, v89);
  }

  else
  {
    v57 = v85;
    v80(v85, v55, v50);
    v58 = v54;
    v59 = v46;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v60 = 1.0 / (*&v57[*(v50 + 48)] - v48);
    v61 = v91;
    v75(v46, v91, v60);
    v62 = v52;
    v63 = v82;
    v74(v82, v54, v46);
    v64 = v83;
    _Velocity.init(valuePerSecond:)(v63, v46, v83);
    v65 = *(v97 + v96[12]);
    v102 = v61;
    v66 = v89;
    WitnessTable = swift_getWitnessTable();
    v68 = v94;
    mix<A>(_:_:by:)(v66, WitnessTable, v87, v65);
    v69 = v88;
    v70 = *(v88 + 8);
    v70(v64, v66);
    v71 = *(v62 + 8);
    v93 = v62 + 8;
    v71(v58, v59);
    v72 = *(v78 + 8);
    v72(v85, v50);
    v70(v68, v66);
    v71(v92, v59);
    v72(v79, v50);
    v72(v101, v50);
    v73 = *(v69 + 32);
    v73(v68, v87, v66);
    return (v73)(v99, v68, v66);
  }
}

uint64_t AnimatableVelocitySampler.base.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for VelocitySampler();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnimatableVelocitySampler.base.setter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for VelocitySampler();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AnimatableVelocitySampler.init()@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return VelocitySampler.init()(a1);
}

uint64_t AnimatableVelocitySampler.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  VelocitySampler.init()(a2);
  v4 = type metadata accessor for VelocitySampler();
  v5 = *(*(v4 - 8) + 40);

  return v5(a2, a1, v4);
}

uint64_t AnimatableVelocitySampler.addSample(_:time:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = *a2;
  (*(v4 + 24))(v5, v4, v8);
  v15 = v11;
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for VelocitySampler();
  VelocitySampler.addSample(_:time:)(v10, &v15, v12);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t AnimatableVelocitySampler.velocity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for _Velocity();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  (*(*(v6 - 8) + 16))(a3, a1, v6, v12);
  v15 = type metadata accessor for VelocitySampler();
  VelocitySampler.velocity.getter(v15, v14);
  (*(v8 + 32))(v10, v14, AssociatedTypeWitness);
  return (*(v5 + 32))(v10, v6, v5);
}

uint64_t type metadata completion function for VelocitySampler()
{
  swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for VelocitySampler(void *a1, _DWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v11 = v9 + 9;
  if (v7)
  {
    v12 = v9 + 8;
  }

  else
  {
    v12 = v9 + 9;
  }

  v13 = *(v6 + 80);
  v14 = v13 & 0xF8 | 7;
  if ((v13 & 0x1000F8) == 0 && ((v12 + ((v12 + v14 + ((v12 + v14) & ~v14)) & ~v14) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v35 = v8 + 7;
    if (v7)
    {
      if (!(*(v6 + 48))(a2, v7, v5))
      {
        goto LABEL_21;
      }
    }

    else if (!*(a2 + v10) || ((v17 = *(a2 + v10) - 1, v9 == -8) ? (v18 = 0) : (v17 = 0, v18 = *a2), (v18 | v17) == 0xFFFFFFFF))
    {
LABEL_21:
      (*(v6 + 16))(a1, a2, v5);
      v22 = a1 + 7;
      v23 = a2 + 7;
      *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v7)
      {
        v19 = (&v22[v10] & 0xFFFFFFFFFFFFFFF8);
        v20 = (&v23[v10] & 0xFFFFFFFFFFFFFFF8);
LABEL_23:
        if (!(*(v6 + 48))(v20, v7, v5))
        {
          goto LABEL_33;
        }

LABEL_30:
        memcpy(v19, v20, v12);
        v26 = ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v27 = ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v7)
        {
          goto LABEL_35;
        }

        v28 = *(v27 + v10);
        if (!*(v27 + v10))
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      *(a1 + v10) = 0;
      v19 = (&v22[v11] & 0xFFFFFFFFFFFFFFF8);
      v20 = (&v23[v11] & 0xFFFFFFFFFFFFFFF8);
      v21 = *(v20 + v10);
      if (*(v20 + v10))
      {
LABEL_26:
        v24 = v21 - 1;
        if (v9 == -8)
        {
          v25 = 0;
        }

        else
        {
          v24 = 0;
          v25 = *v20;
        }

        if ((v25 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

LABEL_33:
      (*(v6 + 16))(v19, v20, v5);
      *((v19 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v35) & 0xFFFFFFFFFFFFFFF8);
      if (v7)
      {
        v26 = ((v19 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
        v27 = ((v20 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
LABEL_35:
        if (!(*(v6 + 48))(v27, v7, v5))
        {
LABEL_43:
          (*(v6 + 16))(v26, v27, v5);
          *(&v26[v35] & 0xFFFFFFFFFFFFFFF8) = *((v27 + v35) & 0xFFFFFFFFFFFFFFF8);
          if (!v7)
          {
            v26[v10] = 0;
          }

          goto LABEL_45;
        }

LABEL_42:
        memcpy(v26, v27, v12);
LABEL_45:
        v31 = &v26[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
        v32 = (v27 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = *v32;
        *(v31 + 8) = *(v32 + 8);
        *v31 = v33;
        *(&v26[v12 + 23] & 0xFFFFFFFFFFFFFFF8) = *((v27 + v12 + 23) & 0xFFFFFFFFFFFFFFF8);
        return a1;
      }

      *(v19 + v10) = 0;
      v26 = ((v19 + v9 + 16) & 0xFFFFFFFFFFFFFFF8);
      v27 = ((v20 + v9 + 16) & 0xFFFFFFFFFFFFFFF8);
      v28 = *(v27 + v10);
      if (!*(v27 + v10))
      {
        goto LABEL_43;
      }

LABEL_38:
      v29 = v28 - 1;
      if (v9 == -8)
      {
        v30 = 0;
      }

      else
      {
        v29 = 0;
        v30 = *v27;
      }

      if ((v30 | v29) == 0xFFFFFFFF)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    memcpy(a1, a2, v12);
    v19 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      goto LABEL_23;
    }

    v21 = *(v20 + v10);
    if (*(v20 + v10))
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v16 = *a2;
  *a1 = *a2;
  a1 = (v16 + ((v14 + 16) & ~v14));

  return a1;
}

uint64_t destroy for VelocitySampler(_DWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = (*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v25 = v4;
  if (v5)
  {
    v8 = (*(v4 + 48))(a1, v5, v3);
    v4 = v25;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!*(a1 + v7) || ((v9 = *(a1 + v7) - 1, v6 == -8) ? (v10 = 0) : (v9 = 0, v10 = *a1), (v10 | v9) == 0xFFFFFFFF))
  {
LABEL_9:
    (*(v4 + 8))(a1, v3);
    v4 = v25;
  }

LABEL_10:
  v11 = v6 + 9;
  if (v5)
  {
    v11 = v6 + 8;
  }

  v12 = *(v4 + 80) & 0xF8 | 7;
  v13 = v11 + v12;
  v14 = ~v12;
  v15 = ((a1 + v11 + v12) & ~v12);
  if (v5)
  {
    v16 = (*(v4 + 48))(v15, v5, v3);
    v4 = v25;
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!*(v15 + v7) || ((v17 = *(v15 + v7) - 1, !v7) ? (v18 = 0) : (v17 = 0, v18 = *v15), (v18 | v17) == 0xFFFFFFFF))
  {
LABEL_20:
    (*(v4 + 8))(v15, v3);
    v4 = v25;
  }

LABEL_21:
  v19 = ((v15 + v13) & v14);
  if (v5)
  {
    result = (*(v4 + 48))(v19, v5, v3);
    v4 = v25;
    if (result)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!*(v19 + v7) || ((v21 = *(v19 + v7) - 1, !v7) ? (v22 = 0) : (v21 = 0, v22 = *v19), v23 = v22 | v21, result = (v23 + 1), v23 == -1))
  {
LABEL_30:
    v24 = *(v4 + 8);

    return v24(v19, v3);
  }

  return result;
}

char *initializeWithCopy for VelocitySampler(char *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v37 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v40 = v5;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v7)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v9 + 9;
    }

    memcpy(a1, a2, v13);
    goto LABEL_15;
  }

  if (*(a2 + v10))
  {
    v11 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v6 + 16))(a1, a2, v5);
  *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    a1[v10] = 0;
  }

LABEL_15:
  v14 = v9 + 9;
  if (v7)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  __n = v15;
  v39 = a1;
  v17 = v15 + v16;
  v18 = &a1[v15 + v16];
  v19 = ~v16;
  v20 = v10;
  v21 = (v18 & ~v16);
  v22 = ((a2 + v17) & ~v16);
  if (v7)
  {
    v23 = v20;
    if (!(*(v6 + 48))((a2 + v17) & ~v16, v7, v40))
    {
      goto LABEL_28;
    }

LABEL_25:
    v25 = __n;
    memcpy(v21, ((a2 + v17) & ~v16), __n);
    v26 = ((v21 + v17) & v19);
    v27 = ((v22 + v17) & v19);
    v28 = v40;
    if (v7)
    {
      goto LABEL_30;
    }

    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

LABEL_33:
    v31 = v29 - 1;
    if (v23)
    {
      v31 = 0;
      v32 = *v27;
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v31) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v26, v27, v25);
    goto LABEL_40;
  }

  v23 = v20;
  if (*(v22 + v20))
  {
    v24 = *(v22 + v20) - 1;
    if (v20)
    {
      v24 = 0;
      LODWORD(v20) = *v22;
    }

    if ((v20 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v30 = (a2 + v17) & ~v16;
  v28 = v40;
  (*(v6 + 16))(v21, v30, v40);
  *((v21 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v21 + v23) = 0;
    v26 = ((v21 + v16 + v14) & v19);
    v27 = ((v22 + v16 + v14) & v19);
    v25 = __n;
    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v26 = ((v21 + v16 + v23) & v19);
  v27 = ((v22 + v16 + v23) & v19);
  v25 = __n;
LABEL_30:
  if ((*(v6 + 48))(v27, v7, v28))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v6 + 16))(v26, v27, v28);
  *((v26 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v26 + v23) = 0;
  }

LABEL_40:
  v33 = (v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  *(v33 + 8) = *(v34 + 8);
  *v33 = v35;
  *((v26 + v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

int *assignWithCopy for VelocitySampler(int *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v59 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v62 = v9 + 8;
  if (v7)
  {
    v11 = *(v6 + 48);
    v12 = v11(a1, v7, v5);
    v13 = v11(a2, v7, v5);
    v10 = v9 + 8;
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v7)
      {
        v20 = v10;
      }

      else
      {
        v20 = v9 + 9;
      }

      memcpy(a1, a2, v20);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v10) || ((v14 = *(a1 + v10) - 1, v9 == -8) ? (v15 = 0) : (v14 = 0, v15 = *a1), (v15 | v14) == 0xFFFFFFFF))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_18:
    if (v13)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_20;
    }

LABEL_24:
    (*(v6 + 24))(a1, a2, v5);
    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v10))
  {
    v16 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = *a2;
    }

    if ((v17 | v16) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v6 + 16))(a1, a2, v5);
  *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_29:
  v21 = v9 + 9;
  if (v7)
  {
    v22 = v10;
  }

  else
  {
    v22 = v9 + 9;
  }

  v23 = *(v6 + 80) & 0xF8 | 7;
  __n = v22;
  v24 = v22 + v23;
  v25 = a1 + v22 + v23;
  v26 = ~v23;
  v27 = v10;
  v28 = (v25 & ~v23);
  v29 = ((a2 + v24) & ~v23);
  v61 = a1;
  if (v7)
  {
    v58 = v21;
    v30 = v6;
    v31 = *(v6 + 48);
    v32 = v31(v28, v7, v5);
    v33 = v31(v29, v7, v5);
    v6 = v30;
    v26 = ~v23;
    v34 = __n;
    if (v32)
    {
      if (!v33)
      {
LABEL_44:
        (*(v6 + 16))(v28, v29, v5);
        *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
        v7 = v7;
        if (v7)
        {
          v39 = ((v28 + v23 + v62) & v26);
          v40 = ((v29 + v23 + v62) & v26);
          v41 = v61;
          goto LABEL_55;
        }

        *(v28 + v62) = 0;
        v39 = ((v28 + v23 + v58) & v26);
        v40 = ((v29 + v23 + v58) & v26);
        v41 = v61;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v33)
    {
      (*(v6 + 8))(v28, v5);
LABEL_52:
      memcpy(v28, v29, v34);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v28 + v27))
  {
    v35 = *(v28 + v27) - 1;
    if (v27)
    {
      v35 = 0;
      LODWORD(v27) = *v28;
    }

    v36 = v27 | v35;
    v27 = v62;
    if (v36 != -1)
    {
      v58 = v21;
      v34 = __n;
      if (!*(v29 + v62))
      {
        goto LABEL_44;
      }

      v37 = *(v29 + v62) - 1;
      v38 = v62;
      if (v62)
      {
        v37 = 0;
        v38 = *v29;
      }

      if ((v38 | v37) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v34 = __n;
  if (*(v29 + v27))
  {
    v42 = *(v29 + v27) - 1;
    v43 = v62;
    if (v62)
    {
      v42 = 0;
      v43 = *v29;
    }

    v33 = (v43 | v42) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v6 + 24))(v28, v29, v5);
  *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v7 = v7;
  v39 = ((v28 + v24) & v26);
  v40 = ((v29 + v24) & v26);
  v41 = v61;
  if (v7)
  {
LABEL_55:
    v44 = *(v6 + 48);
    v45 = v44(v39, v7, v5);
    v46 = v44(v40, v7, v5);
    if (v45)
    {
      if (!v46)
      {
LABEL_57:
        v47 = v62;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v39, v40, v34);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v47 = v62;
  if (!*(v39 + v62) || ((v48 = *(v39 + v62) - 1, !v62) ? (v49 = 0) : (v48 = 0, v49 = *v39), (v49 | v48) == 0xFFFFFFFF))
  {
    if (!*(v40 + v62))
    {
      goto LABEL_77;
    }

    v52 = *(v40 + v62) - 1;
    if (v62)
    {
      v52 = 0;
      v53 = *v40;
    }

    else
    {
      v53 = 0;
    }

    v46 = (v53 | v52) + 1;
LABEL_74:
    if (v46)
    {
      (*(v6 + 8))(v39, v5);
      goto LABEL_76;
    }

LABEL_77:
    (*(v6 + 24))(v39, v40, v5);
    *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v40 + v62))
  {
    v50 = *(v40 + v62) - 1;
    if (v62)
    {
      v50 = 0;
      v51 = *v40;
    }

    else
    {
      v51 = 0;
    }

    if ((v51 | v50) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v6 + 16))(v39, v40, v5);
  *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v39 + v47) = 0;
  }

LABEL_78:
  v54 = (v39 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v40 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *v55;
  *(v54 + 8) = *(v55 + 8);
  *v54 = v56;
  *((v39 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v41;
}

char *initializeWithTake for VelocitySampler(char *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v37 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v40 = v5;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v7)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v9 + 9;
    }

    memcpy(a1, a2, v13);
    goto LABEL_15;
  }

  if (*(a2 + v10))
  {
    v11 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v6 + 32))(a1, a2, v5);
  *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    a1[v10] = 0;
  }

LABEL_15:
  v14 = v9 + 9;
  if (v7)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80) & 0xF8 | 7;
  __n = v15;
  v39 = a1;
  v17 = v15 + v16;
  v18 = &a1[v15 + v16];
  v19 = ~v16;
  v20 = v10;
  v21 = (v18 & ~v16);
  v22 = ((a2 + v17) & ~v16);
  if (v7)
  {
    v23 = v20;
    if (!(*(v6 + 48))((a2 + v17) & ~v16, v7, v40))
    {
      goto LABEL_28;
    }

LABEL_25:
    v25 = __n;
    memcpy(v21, ((a2 + v17) & ~v16), __n);
    v26 = ((v21 + v17) & v19);
    v27 = ((v22 + v17) & v19);
    v28 = v40;
    if (v7)
    {
      goto LABEL_30;
    }

    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

LABEL_33:
    v31 = v29 - 1;
    if (v23)
    {
      v31 = 0;
      v32 = *v27;
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v31) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v26, v27, v25);
    goto LABEL_40;
  }

  v23 = v20;
  if (*(v22 + v20))
  {
    v24 = *(v22 + v20) - 1;
    if (v20)
    {
      v24 = 0;
      LODWORD(v20) = *v22;
    }

    if ((v20 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v30 = (a2 + v17) & ~v16;
  v28 = v40;
  (*(v6 + 32))(v21, v30, v40);
  *((v21 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v21 + v23) = 0;
    v26 = ((v21 + v16 + v14) & v19);
    v27 = ((v22 + v16 + v14) & v19);
    v25 = __n;
    v29 = *(v27 + v23);
    if (!*(v27 + v23))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v26 = ((v21 + v16 + v23) & v19);
  v27 = ((v22 + v16 + v23) & v19);
  v25 = __n;
LABEL_30:
  if ((*(v6 + 48))(v27, v7, v28))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v6 + 32))(v26, v27, v28);
  *((v26 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v26 + v23) = 0;
  }

LABEL_40:
  v33 = (v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  *(v33 + 8) = *(v34 + 8);
  *v33 = v35;
  *((v26 + v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

int *assignWithTake for VelocitySampler(int *a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v59 = v8 + 7;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v62 = v9 + 8;
  if (v7)
  {
    v11 = *(v6 + 48);
    v12 = v11(a1, v7, v5);
    v13 = v11(a2, v7, v5);
    v10 = v9 + 8;
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v7)
      {
        v20 = v10;
      }

      else
      {
        v20 = v9 + 9;
      }

      memcpy(a1, a2, v20);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v10) || ((v14 = *(a1 + v10) - 1, v9 == -8) ? (v15 = 0) : (v14 = 0, v15 = *a1), (v15 | v14) == 0xFFFFFFFF))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_18:
    if (v13)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_20;
    }

LABEL_24:
    (*(v6 + 40))(a1, a2, v5);
    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v10))
  {
    v16 = *(a2 + v10) - 1;
    if (v9 == -8)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = *a2;
    }

    if ((v17 | v16) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v6 + 32))(a1, a2, v5);
  *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_29:
  v21 = v9 + 9;
  if (v7)
  {
    v22 = v10;
  }

  else
  {
    v22 = v9 + 9;
  }

  v23 = *(v6 + 80) & 0xF8 | 7;
  __n = v22;
  v24 = v22 + v23;
  v25 = a1 + v22 + v23;
  v26 = ~v23;
  v27 = v10;
  v28 = (v25 & ~v23);
  v29 = ((a2 + v24) & ~v23);
  v61 = a1;
  if (v7)
  {
    v58 = v21;
    v30 = v6;
    v31 = *(v6 + 48);
    v32 = v31(v28, v7, v5);
    v33 = v31(v29, v7, v5);
    v6 = v30;
    v26 = ~v23;
    v34 = __n;
    if (v32)
    {
      if (!v33)
      {
LABEL_44:
        (*(v6 + 32))(v28, v29, v5);
        *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
        v7 = v7;
        if (v7)
        {
          v39 = ((v28 + v23 + v62) & v26);
          v40 = ((v29 + v23 + v62) & v26);
          v41 = v61;
          goto LABEL_55;
        }

        *(v28 + v62) = 0;
        v39 = ((v28 + v23 + v58) & v26);
        v40 = ((v29 + v23 + v58) & v26);
        v41 = v61;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v33)
    {
      (*(v6 + 8))(v28, v5);
LABEL_52:
      memcpy(v28, v29, v34);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v28 + v27))
  {
    v35 = *(v28 + v27) - 1;
    if (v27)
    {
      v35 = 0;
      LODWORD(v27) = *v28;
    }

    v36 = v27 | v35;
    v27 = v62;
    if (v36 != -1)
    {
      v58 = v21;
      v34 = __n;
      if (!*(v29 + v62))
      {
        goto LABEL_44;
      }

      v37 = *(v29 + v62) - 1;
      v38 = v62;
      if (v62)
      {
        v37 = 0;
        v38 = *v29;
      }

      if ((v38 | v37) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v34 = __n;
  if (*(v29 + v27))
  {
    v42 = *(v29 + v27) - 1;
    v43 = v62;
    if (v62)
    {
      v42 = 0;
      v43 = *v29;
    }

    v33 = (v43 | v42) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v6 + 40))(v28, v29, v5);
  *((v28 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v59) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v7 = v7;
  v39 = ((v28 + v24) & v26);
  v40 = ((v29 + v24) & v26);
  v41 = v61;
  if (v7)
  {
LABEL_55:
    v44 = *(v6 + 48);
    v45 = v44(v39, v7, v5);
    v46 = v44(v40, v7, v5);
    if (v45)
    {
      if (!v46)
      {
LABEL_57:
        v47 = v62;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v39, v40, v34);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v47 = v62;
  if (!*(v39 + v62) || ((v48 = *(v39 + v62) - 1, !v62) ? (v49 = 0) : (v48 = 0, v49 = *v39), (v49 | v48) == 0xFFFFFFFF))
  {
    if (!*(v40 + v62))
    {
      goto LABEL_77;
    }

    v52 = *(v40 + v62) - 1;
    if (v62)
    {
      v52 = 0;
      v53 = *v40;
    }

    else
    {
      v53 = 0;
    }

    v46 = (v53 | v52) + 1;
LABEL_74:
    if (v46)
    {
      (*(v6 + 8))(v39, v5);
      goto LABEL_76;
    }

LABEL_77:
    (*(v6 + 40))(v39, v40, v5);
    *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v40 + v62))
  {
    v50 = *(v40 + v62) - 1;
    if (v62)
    {
      v50 = 0;
      v51 = *v40;
    }

    else
    {
      v51 = 0;
    }

    if ((v51 | v50) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v6 + 32))(v39, v40, v5);
  *((v39 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v59) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    *(v39 + v47) = 0;
  }

LABEL_78:
  v54 = (v39 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v40 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *v55;
  *(v54 + 8) = *(v55 + 8);
  *v54 = v56;
  *((v39 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v40 + v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v41;
}

uint64_t getEnumTagSinglePayload for VelocitySampler(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!v5)
  {
    v7 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v7;
  v9 = *(v4 + 80) & 0xF8 | 7;
  v10 = ((v8 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v19 = (*(v4 + 48))(a1, v5);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v6 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for VelocitySampler(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 9;
  if (v7)
  {
    v12 = v11;
  }

  v8 = *(v6 + 80);
  v13 = ((v12 + ((v12 + (v8 & 0xF8 | 7) + ((v12 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7))) & ~(v8 & 0xF8 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v14 = a3 - v9;
    if (((v12 + ((v12 + (v8 & 0xF8 | 7) + ((v12 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7))) & ~(v8 & 0xF8 | 7)) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2 - v9;
    }

    if (v13)
    {
      v18 = ~v9 + a2;
      v19 = a1;
      bzero(a1, v13);
      a1 = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v5)
    {
      *(a1 + v13) = v17;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v13) = 0;
  }

  else if (v5)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v7 >= 2)
  {
    v20 = a2 - v7;
    if (a2 >= v7)
    {
      if (v11)
      {
        v22 = a1;
        bzero(a1, v11);
        *v22 = v20;
      }
    }

    else
    {
      v21 = *(v6 + 56);

      v21();
    }
  }
}

uint64_t type metadata completion function for AnimatableVelocitySampler()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for VelocitySampler();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatableVelocitySampler(void *a1, _DWORD *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = v8 + 9;
  if (v6)
  {
    v11 = v8 + 8;
  }

  else
  {
    v11 = v8 + 9;
  }

  v12 = *(v5 + 80);
  v13 = v12 & 0xF8 | 7;
  if ((v12 & 0x1000F8) == 0 && ((v11 + ((v11 + v13 + ((v11 + v13) & ~v13)) & ~v13) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v16 = AssociatedTypeWitness;
    v35 = v7 + 7;
    if (v6)
    {
      if (!(*(v5 + 48))(a2, v6, AssociatedTypeWitness))
      {
        goto LABEL_21;
      }
    }

    else if (!*(a2 + v9) || ((v17 = *(a2 + v9) - 1, v8 == -8) ? (v18 = 0) : (v17 = 0, v18 = *a2), (v18 | v17) == 0xFFFFFFFF))
    {
LABEL_21:
      (*(v5 + 16))(a1, a2, v16);
      v22 = a1 + 7;
      v23 = a2 + 7;
      *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        v19 = (&v22[v9] & 0xFFFFFFFFFFFFFFF8);
        v20 = (&v23[v9] & 0xFFFFFFFFFFFFFFF8);
LABEL_23:
        if (!(*(v5 + 48))(v20, v6, v16))
        {
          goto LABEL_33;
        }

LABEL_30:
        memcpy(v19, v20, v11);
        v26 = ((v19 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        v27 = ((v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v6)
        {
          goto LABEL_35;
        }

        v28 = *(v27 + v9);
        if (!*(v27 + v9))
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      *(a1 + v9) = 0;
      v19 = (&v22[v10] & 0xFFFFFFFFFFFFFFF8);
      v20 = (&v23[v10] & 0xFFFFFFFFFFFFFFF8);
      v21 = *(v20 + v9);
      if (*(v20 + v9))
      {
LABEL_26:
        v24 = v21 - 1;
        if (v8 == -8)
        {
          v25 = 0;
        }

        else
        {
          v24 = 0;
          v25 = *v20;
        }

        if ((v25 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

LABEL_33:
      (*(v5 + 16))(v19, v20, v16);
      *((v19 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v35) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        v26 = ((v19 + v8 + 15) & 0xFFFFFFFFFFFFFFF8);
        v27 = ((v20 + v8 + 15) & 0xFFFFFFFFFFFFFFF8);
LABEL_35:
        if (!(*(v5 + 48))(v27, v6, v16))
        {
LABEL_43:
          (*(v5 + 16))(v26, v27, v16);
          *(&v26[v35] & 0xFFFFFFFFFFFFFFF8) = *((v27 + v35) & 0xFFFFFFFFFFFFFFF8);
          if (!v6)
          {
            v26[v9] = 0;
          }

          goto LABEL_45;
        }

LABEL_42:
        memcpy(v26, v27, v11);
LABEL_45:
        v31 = &v26[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
        v32 = (v27 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = *v32;
        *(v31 + 8) = *(v32 + 8);
        *v31 = v33;
        *(&v26[v11 + 23] & 0xFFFFFFFFFFFFFFF8) = *((v27 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
        return a1;
      }

      *(v19 + v9) = 0;
      v26 = ((v19 + v8 + 16) & 0xFFFFFFFFFFFFFFF8);
      v27 = ((v20 + v8 + 16) & 0xFFFFFFFFFFFFFFF8);
      v28 = *(v27 + v9);
      if (!*(v27 + v9))
      {
        goto LABEL_43;
      }

LABEL_38:
      v29 = v28 - 1;
      if (v8 == -8)
      {
        v30 = 0;
      }

      else
      {
        v29 = 0;
        v30 = *v27;
      }

      if ((v30 | v29) == 0xFFFFFFFF)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    memcpy(a1, a2, v11);
    v19 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      goto LABEL_23;
    }

    v21 = *(v20 + v9);
    if (*(v20 + v9))
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v15 = *a2;
  *a1 = *a2;
  a1 = (v15 + ((v13 + 16) & ~v13));

  return a1;
}

uint64_t destroy for AnimatableVelocitySampler(_DWORD *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 84);
  v5 = (*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 8;
  v24 = v3;
  if (v4)
  {
    v7 = (*(v3 + 48))(a1, v4, AssociatedTypeWitness);
    v3 = v24;
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!*(a1 + v6) || ((v8 = *(a1 + v6) - 1, v5 == -8) ? (v9 = 0) : (v8 = 0, v9 = *a1), (v9 | v8) == 0xFFFFFFFF))
  {
LABEL_9:
    (*(v3 + 8))(a1, AssociatedTypeWitness);
    v3 = v24;
  }

LABEL_10:
  v10 = v5 + 9;
  if (v4)
  {
    v10 = v5 + 8;
  }

  v11 = *(v3 + 80) & 0xF8 | 7;
  v12 = v10 + v11;
  v13 = ~v11;
  v14 = ((a1 + v10 + v11) & ~v11);
  if (v4)
  {
    v15 = (*(v3 + 48))(v14, v4, AssociatedTypeWitness);
    v3 = v24;
    if (v15)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!*(v14 + v6) || ((v16 = *(v14 + v6) - 1, !v6) ? (v17 = 0) : (v16 = 0, v17 = *v14), (v17 | v16) == 0xFFFFFFFF))
  {
LABEL_20:
    (*(v3 + 8))(v14, AssociatedTypeWitness);
    v3 = v24;
  }

LABEL_21:
  v18 = ((v14 + v12) & v13);
  if (v4)
  {
    result = (*(v3 + 48))(v18, v4, AssociatedTypeWitness);
    v3 = v24;
    if (result)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!*(v18 + v6) || ((v20 = *(v18 + v6) - 1, !v6) ? (v21 = 0) : (v20 = 0, v21 = *v18), v22 = v21 | v20, result = (v22 + 1), v22 == -1))
  {
LABEL_30:
    v23 = *(v3 + 8);

    return v23(v18, AssociatedTypeWitness);
  }

  return result;
}

char *initializeWithCopy for AnimatableVelocitySampler(char *a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v37 = v7 + 7;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v40 = AssociatedTypeWitness;
  if (v6)
  {
    if (!(*(v5 + 48))(a2, v6, AssociatedTypeWitness))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v6)
    {
      v12 = v8 + 8;
    }

    else
    {
      v12 = v8 + 9;
    }

    memcpy(a1, a2, v12);
    goto LABEL_15;
  }

  if (*(a2 + v9))
  {
    v10 = *(a2 + v9) - 1;
    if (v8 == -8)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = *a2;
    }

    if ((v11 | v10) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  *(&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    a1[v9] = 0;
  }

LABEL_15:
  v13 = v8 + 9;
  if (v6)
  {
    v14 = v8 + 8;
  }

  else
  {
    v14 = v8 + 9;
  }

  v15 = *(v5 + 80) & 0xF8 | 7;
  __n = v14;
  v39 = a1;
  v16 = v14 + v15;
  v17 = &a1[v14 + v15];
  v18 = ~v15;
  v19 = v9;
  v20 = (v17 & ~v15);
  v21 = ((a2 + v16) & ~v15);
  if (v6)
  {
    v22 = v19;
    if (!(*(v5 + 48))((a2 + v16) & ~v15, v6, v40))
    {
      goto LABEL_28;
    }

LABEL_25:
    v24 = ((a2 + v16) & ~v15);
    v25 = __n;
    memcpy(v20, v24, __n);
    v26 = ((v20 + v16) & v18);
    v27 = ((v21 + v16) & v18);
    v28 = v40;
    if (v6)
    {
      goto LABEL_30;
    }

    v29 = *(v27 + v22);
    if (!*(v27 + v22))
    {
      goto LABEL_38;
    }

LABEL_33:
    v31 = v29 - 1;
    if (v22)
    {
      v31 = 0;
      v32 = *v27;
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v31) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v26, v27, v25);
    goto LABEL_40;
  }

  v22 = v19;
  if (*(v21 + v19))
  {
    v23 = *(v21 + v19) - 1;
    if (v19)
    {
      v23 = 0;
      LODWORD(v19) = *v21;
    }

    if ((v19 | v23) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v30 = (a2 + v16) & ~v15;
  v28 = v40;
  (*(v5 + 16))(v20, v30, v40);
  *((v20 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(v20 + v22) = 0;
    v26 = ((v20 + v15 + v13) & v18);
    v27 = ((v21 + v15 + v13) & v18);
    v25 = __n;
    v29 = *(v27 + v22);
    if (!*(v27 + v22))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v26 = ((v20 + v15 + v22) & v18);
  v27 = ((v21 + v15 + v22) & v18);
  v25 = __n;
LABEL_30:
  if ((*(v5 + 48))(v27, v6, v28))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v5 + 16))(v26, v27, v28);
  *((v26 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(v26 + v22) = 0;
  }

LABEL_40:
  v33 = (v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  *(v33 + 8) = *(v34 + 8);
  *v33 = v35;
  *((v26 + v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

int *assignWithCopy for AnimatableVelocitySampler(int *a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v58 = v7 + 7;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v61 = v8 + 8;
  if (v6)
  {
    v10 = *(v5 + 48);
    v11 = v10(a1, v6, AssociatedTypeWitness);
    v12 = v10(a2, v6, AssociatedTypeWitness);
    v9 = v8 + 8;
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v6)
      {
        v19 = v9;
      }

      else
      {
        v19 = v8 + 9;
      }

      memcpy(a1, a2, v19);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v9) || ((v13 = *(a1 + v9) - 1, v8 == -8) ? (v14 = 0) : (v13 = 0, v14 = *a1), (v14 | v13) == 0xFFFFFFFF))
  {
    if (!*(a2 + v9))
    {
      goto LABEL_24;
    }

    v17 = *(a2 + v9) - 1;
    if (v8 == -8)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = *a2;
    }

    v12 = (v18 | v17) + 1;
LABEL_18:
    if (v12)
    {
      (*(v5 + 8))(a1, AssociatedTypeWitness);
      goto LABEL_20;
    }

LABEL_24:
    (*(v5 + 24))(a1, a2, AssociatedTypeWitness);
    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v9))
  {
    v15 = *(a2 + v9) - 1;
    if (v8 == -8)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = *a2;
    }

    if ((v16 | v15) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(a1 + v9) = 0;
  }

LABEL_29:
  v20 = v8 + 9;
  if (v6)
  {
    v21 = v9;
  }

  else
  {
    v21 = v8 + 9;
  }

  v22 = *(v5 + 80) & 0xF8 | 7;
  __n = v21;
  v23 = v21 + v22;
  v24 = a1 + v21 + v22;
  v25 = ~v22;
  v26 = v9;
  v27 = (v24 & ~v22);
  v28 = ((a2 + v23) & ~v22);
  v60 = a1;
  if (v6)
  {
    v57 = v20;
    v29 = v5;
    v30 = *(v5 + 48);
    v31 = v30(v27, v6, AssociatedTypeWitness);
    v32 = v30(v28, v6, AssociatedTypeWitness);
    v5 = v29;
    v25 = ~v22;
    v33 = __n;
    if (v31)
    {
      if (!v32)
      {
LABEL_44:
        (*(v5 + 16))(v27, v28, AssociatedTypeWitness);
        *((v27 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v58) & 0xFFFFFFFFFFFFFFF8);
        v6 = v6;
        if (v6)
        {
          v38 = ((v27 + v22 + v61) & v25);
          v39 = ((v28 + v22 + v61) & v25);
          v40 = v60;
          goto LABEL_55;
        }

        *(v27 + v61) = 0;
        v38 = ((v27 + v22 + v57) & v25);
        v39 = ((v28 + v22 + v57) & v25);
        v40 = v60;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v32)
    {
      (*(v5 + 8))(v27, AssociatedTypeWitness);
LABEL_52:
      memcpy(v27, v28, v33);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v27 + v26))
  {
    v34 = *(v27 + v26) - 1;
    if (v26)
    {
      v34 = 0;
      LODWORD(v26) = *v27;
    }

    v35 = v26 | v34;
    v26 = v61;
    if (v35 != -1)
    {
      v57 = v20;
      v33 = __n;
      if (!*(v28 + v61))
      {
        goto LABEL_44;
      }

      v36 = *(v28 + v61) - 1;
      v37 = v61;
      if (v61)
      {
        v36 = 0;
        v37 = *v28;
      }

      if ((v37 | v36) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v33 = __n;
  if (*(v28 + v26))
  {
    v41 = *(v28 + v26) - 1;
    v42 = v61;
    if (v61)
    {
      v41 = 0;
      v42 = *v28;
    }

    v32 = (v42 | v41) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v5 + 24))(v27, v28, AssociatedTypeWitness);
  *((v27 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v58) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v6 = v6;
  v38 = ((v27 + v23) & v25);
  v39 = ((v28 + v23) & v25);
  v40 = v60;
  if (v6)
  {
LABEL_55:
    v43 = *(v5 + 48);
    v44 = v43(v38, v6, AssociatedTypeWitness);
    v45 = v43(v39, v6, AssociatedTypeWitness);
    if (v44)
    {
      if (!v45)
      {
LABEL_57:
        v46 = v61;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v38, v39, v33);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v46 = v61;
  if (!*(v38 + v61) || ((v47 = *(v38 + v61) - 1, !v61) ? (v48 = 0) : (v47 = 0, v48 = *v38), (v48 | v47) == 0xFFFFFFFF))
  {
    if (!*(v39 + v61))
    {
      goto LABEL_77;
    }

    v51 = *(v39 + v61) - 1;
    if (v61)
    {
      v51 = 0;
      v52 = *v39;
    }

    else
    {
      v52 = 0;
    }

    v45 = (v52 | v51) + 1;
LABEL_74:
    if (v45)
    {
      (*(v5 + 8))(v38, AssociatedTypeWitness);
      goto LABEL_76;
    }

LABEL_77:
    (*(v5 + 24))(v38, v39, AssociatedTypeWitness);
    *((v38 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v58) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v39 + v61))
  {
    v49 = *(v39 + v61) - 1;
    if (v61)
    {
      v49 = 0;
      v50 = *v39;
    }

    else
    {
      v50 = 0;
    }

    if ((v50 | v49) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v5 + 16))(v38, v39, AssociatedTypeWitness);
  *((v38 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v58) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(v38 + v46) = 0;
  }

LABEL_78:
  v53 = (v38 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v39 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = *v54;
  *(v53 + 8) = *(v54 + 8);
  *v53 = v55;
  *((v38 + v33 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v33 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v40;
}

char *initializeWithTake for AnimatableVelocitySampler(char *a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v37 = v7 + 7;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v40 = AssociatedTypeWitness;
  if (v6)
  {
    if (!(*(v5 + 48))(a2, v6, AssociatedTypeWitness))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v6)
    {
      v12 = v8 + 8;
    }

    else
    {
      v12 = v8 + 9;
    }

    memcpy(a1, a2, v12);
    goto LABEL_15;
  }

  if (*(a2 + v9))
  {
    v10 = *(a2 + v9) - 1;
    if (v8 == -8)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = *a2;
    }

    if ((v11 | v10) != 0xFFFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
  *(&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    a1[v9] = 0;
  }

LABEL_15:
  v13 = v8 + 9;
  if (v6)
  {
    v14 = v8 + 8;
  }

  else
  {
    v14 = v8 + 9;
  }

  v15 = *(v5 + 80) & 0xF8 | 7;
  __n = v14;
  v39 = a1;
  v16 = v14 + v15;
  v17 = &a1[v14 + v15];
  v18 = ~v15;
  v19 = v9;
  v20 = (v17 & ~v15);
  v21 = ((a2 + v16) & ~v15);
  if (v6)
  {
    v22 = v19;
    if (!(*(v5 + 48))((a2 + v16) & ~v15, v6, v40))
    {
      goto LABEL_28;
    }

LABEL_25:
    v24 = ((a2 + v16) & ~v15);
    v25 = __n;
    memcpy(v20, v24, __n);
    v26 = ((v20 + v16) & v18);
    v27 = ((v21 + v16) & v18);
    v28 = v40;
    if (v6)
    {
      goto LABEL_30;
    }

    v29 = *(v27 + v22);
    if (!*(v27 + v22))
    {
      goto LABEL_38;
    }

LABEL_33:
    v31 = v29 - 1;
    if (v22)
    {
      v31 = 0;
      v32 = *v27;
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v31) == 0xFFFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_37:
    memcpy(v26, v27, v25);
    goto LABEL_40;
  }

  v22 = v19;
  if (*(v21 + v19))
  {
    v23 = *(v21 + v19) - 1;
    if (v19)
    {
      v23 = 0;
      LODWORD(v19) = *v21;
    }

    if ((v19 | v23) != 0xFFFFFFFF)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v30 = (a2 + v16) & ~v15;
  v28 = v40;
  (*(v5 + 32))(v20, v30, v40);
  *((v20 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(v20 + v22) = 0;
    v26 = ((v20 + v15 + v13) & v18);
    v27 = ((v21 + v15 + v13) & v18);
    v25 = __n;
    v29 = *(v27 + v22);
    if (!*(v27 + v22))
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v26 = ((v20 + v15 + v22) & v18);
  v27 = ((v21 + v15 + v22) & v18);
  v25 = __n;
LABEL_30:
  if ((*(v5 + 48))(v27, v6, v28))
  {
    goto LABEL_37;
  }

LABEL_38:
  (*(v5 + 32))(v26, v27, v28);
  *((v26 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v37) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(v26 + v22) = 0;
  }

LABEL_40:
  v33 = (v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v27 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  *(v33 + 8) = *(v34 + 8);
  *v33 = v35;
  *((v26 + v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v39;
}

int *assignWithTake for AnimatableVelocitySampler(int *a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v58 = v7 + 7;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v61 = v8 + 8;
  if (v6)
  {
    v10 = *(v5 + 48);
    v11 = v10(a1, v6, AssociatedTypeWitness);
    v12 = v10(a2, v6, AssociatedTypeWitness);
    v9 = v8 + 8;
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v6)
      {
        v19 = v9;
      }

      else
      {
        v19 = v8 + 9;
      }

      memcpy(a1, a2, v19);
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!*(a1 + v9) || ((v13 = *(a1 + v9) - 1, v8 == -8) ? (v14 = 0) : (v13 = 0, v14 = *a1), (v14 | v13) == 0xFFFFFFFF))
  {
    if (!*(a2 + v9))
    {
      goto LABEL_24;
    }

    v17 = *(a2 + v9) - 1;
    if (v8 == -8)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = *a2;
    }

    v12 = (v18 | v17) + 1;
LABEL_18:
    if (v12)
    {
      (*(v5 + 8))(a1, AssociatedTypeWitness);
      goto LABEL_20;
    }

LABEL_24:
    (*(v5 + 40))(a1, a2, AssociatedTypeWitness);
    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_29;
  }

  if (*(a2 + v9))
  {
    v15 = *(a2 + v9) - 1;
    if (v8 == -8)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = *a2;
    }

    if ((v16 | v15) != 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
  *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(a1 + v9) = 0;
  }

LABEL_29:
  v20 = v8 + 9;
  if (v6)
  {
    v21 = v9;
  }

  else
  {
    v21 = v8 + 9;
  }

  v22 = *(v5 + 80) & 0xF8 | 7;
  __n = v21;
  v23 = v21 + v22;
  v24 = a1 + v21 + v22;
  v25 = ~v22;
  v26 = v9;
  v27 = (v24 & ~v22);
  v28 = ((a2 + v23) & ~v22);
  v60 = a1;
  if (v6)
  {
    v57 = v20;
    v29 = v5;
    v30 = *(v5 + 48);
    v31 = v30(v27, v6, AssociatedTypeWitness);
    v32 = v30(v28, v6, AssociatedTypeWitness);
    v5 = v29;
    v25 = ~v22;
    v33 = __n;
    if (v31)
    {
      if (!v32)
      {
LABEL_44:
        (*(v5 + 32))(v27, v28, AssociatedTypeWitness);
        *((v27 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v58) & 0xFFFFFFFFFFFFFFF8);
        v6 = v6;
        if (v6)
        {
          v38 = ((v27 + v22 + v61) & v25);
          v39 = ((v28 + v22 + v61) & v25);
          v40 = v60;
          goto LABEL_55;
        }

        *(v27 + v61) = 0;
        v38 = ((v27 + v22 + v57) & v25);
        v39 = ((v28 + v22 + v57) & v25);
        v40 = v60;
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_50:
    if (v32)
    {
      (*(v5 + 8))(v27, AssociatedTypeWitness);
LABEL_52:
      memcpy(v27, v28, v33);
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (*(v27 + v26))
  {
    v34 = *(v27 + v26) - 1;
    if (v26)
    {
      v34 = 0;
      LODWORD(v26) = *v27;
    }

    v35 = v26 | v34;
    v26 = v61;
    if (v35 != -1)
    {
      v57 = v20;
      v33 = __n;
      if (!*(v28 + v61))
      {
        goto LABEL_44;
      }

      v36 = *(v28 + v61) - 1;
      v37 = v61;
      if (v61)
      {
        v36 = 0;
        v37 = *v28;
      }

      if ((v37 | v36) == 0xFFFFFFFF)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  v33 = __n;
  if (*(v28 + v26))
  {
    v41 = *(v28 + v26) - 1;
    v42 = v61;
    if (v61)
    {
      v41 = 0;
      v42 = *v28;
    }

    v32 = (v42 | v41) + 1;
    goto LABEL_50;
  }

LABEL_53:
  (*(v5 + 40))(v27, v28, AssociatedTypeWitness);
  *((v27 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v58) & 0xFFFFFFFFFFFFFFF8);
LABEL_54:
  v6 = v6;
  v38 = ((v27 + v23) & v25);
  v39 = ((v28 + v23) & v25);
  v40 = v60;
  if (v6)
  {
LABEL_55:
    v43 = *(v5 + 48);
    v44 = v43(v38, v6, AssociatedTypeWitness);
    v45 = v43(v39, v6, AssociatedTypeWitness);
    if (v44)
    {
      if (!v45)
      {
LABEL_57:
        v46 = v61;
        goto LABEL_67;
      }

LABEL_76:
      memcpy(v38, v39, v33);
      goto LABEL_78;
    }

    goto LABEL_74;
  }

LABEL_59:
  v46 = v61;
  if (!*(v38 + v61) || ((v47 = *(v38 + v61) - 1, !v61) ? (v48 = 0) : (v47 = 0, v48 = *v38), (v48 | v47) == 0xFFFFFFFF))
  {
    if (!*(v39 + v61))
    {
      goto LABEL_77;
    }

    v51 = *(v39 + v61) - 1;
    if (v61)
    {
      v51 = 0;
      v52 = *v39;
    }

    else
    {
      v52 = 0;
    }

    v45 = (v52 | v51) + 1;
LABEL_74:
    if (v45)
    {
      (*(v5 + 8))(v38, AssociatedTypeWitness);
      goto LABEL_76;
    }

LABEL_77:
    (*(v5 + 40))(v38, v39, AssociatedTypeWitness);
    *((v38 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v58) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_78;
  }

  if (*(v39 + v61))
  {
    v49 = *(v39 + v61) - 1;
    if (v61)
    {
      v49 = 0;
      v50 = *v39;
    }

    else
    {
      v50 = 0;
    }

    if ((v50 | v49) == 0xFFFFFFFF)
    {
      goto LABEL_57;
    }

    goto LABEL_76;
  }

LABEL_67:
  (*(v5 + 32))(v38, v39, AssociatedTypeWitness);
  *((v38 + v58) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v58) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    *(v38 + v46) = 0;
  }

LABEL_78:
  v53 = (v38 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v39 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = *v54;
  *(v53 + 8) = *(v54 + 8);
  *v53 = v55;
  *((v38 + v33 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v39 + v33 + 23) & 0xFFFFFFFFFFFFFFF8);
  return v40;
}

uint64_t getEnumTagSinglePayload for AnimatableVelocitySampler(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = 8;
  if (!v6)
  {
    v8 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v8;
  v10 = *(v5 + 80) & 0xF8 | 7;
  v11 = ((v9 + ((v9 + v10 + ((v9 + v10) & ~v10)) & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v7 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v6 >= 2)
    {
      v19 = (*(v5 + 48))(a1);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for AnimatableVelocitySampler(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = (*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = v11 + 9;
  if (v8)
  {
    v13 = v12;
  }

  v9 = *(v7 + 80);
  v14 = ((v13 + ((v13 + (v9 & 0xF8 | 7) + ((v13 + (v9 & 0xF8 | 7)) & ~(v9 & 0xF8 | 7))) & ~(v9 & 0xF8 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 < a3)
  {
    if (((v13 + ((v13 + (v9 & 0xF8 | 7) + ((v13 + (v9 & 0xF8 | 7)) & ~(v9 & 0xF8 | 7))) & ~(v9 & 0xF8 | 7)) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v10 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v10)
  {
    if (v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2 - v10;
    }

    if (v14)
    {
      v18 = ~v10 + a2;
      bzero(a1, v14);
      *a1 = v18;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a1 + v14) = v17;
      }

      else
      {
        *(a1 + v14) = v17;
      }
    }

    else if (v6)
    {
      *(a1 + v14) = v17;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v14) = 0;
  }

  else if (v6)
  {
    *(a1 + v14) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v19 = a2 - v8;
    if (a2 >= v8)
    {
      if (v12)
      {
        bzero(a1, v12);
        *a1 = v19;
      }
    }

    else
    {
      v20 = *(v7 + 56);

      v20(a1, a2 + 1);
    }
  }
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for RequiredTapCountWriter<TappableEvent>, type metadata accessor for RequiredTapCountWriter);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA08CategoryC0VyA1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for CategoryGesture<TappableEvent>, type metadata accessor for CategoryGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(void, uint64_t))
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, a6, &type metadata for TappableEvent, a7);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v7, 0);

  AGGraphClearUpdate();
  v8 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v9 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v11 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA06RepeatC0VyA1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for RepeatGesture<TappableEvent>, type metadata accessor for RepeatGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA09SingleTapC0VyA1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t))
{
  type metadata accessor for EventListener<SpatialEvent>(0, a6, &type metadata for TappableEvent, a7, a8);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v8, 0);

  AGGraphClearUpdate();
  v9 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v12 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA0Z6FilterVyA1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for EventFilter<TappableEvent>, type metadata accessor for EventFilter);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA04Map2C0VyA1_AA08ModifierC0VyAA08DurationC0VyA1_GAA0Z8ListenerVyA1_GGA1_GTtB5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t), unint64_t *a8, void (*a9)(uint64_t))
{
  _s7SwiftUI11Map2GestureVyAA13TappableEventVAA08ModifierD0VyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGAEGMaTm_0(0, a6, a7, a8, a9);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v9, 0);

  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v11 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v13 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA015CoordinateSpaceC0VyA2_GTtB5()
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for CoordinateSpaceGesture);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA08DistanceC0VTtB5()
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlF12CoreGraphics7CGFloatV_AA014StateContainerC0VyAA08DistanceC0V9StateTypeVAA12SpatialEventVA2_GTtB5()
{
  type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA12SpatialEventV_AA0Z8ListenerVyA1_GTtB5()
{
  type metadata accessor for EventListener<SpatialEvent>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFSd_AA08DurationC0VyAA13TappableEventVGTtB5()
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA0Z8ListenerVyA1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for EventListener<TappableEvent>, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA09DependentC033_8687835E41FEE17B108D67665C1D2D0BLLVyA1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyA1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for DependentGesture<TappableEvent>, type metadata accessor for DependentGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA03MapC0VyA1_A1_GTtB5Tm(a1, a2, a3, a4, a5, &lazy cache variable for type metadata for MapGesture<TappableEvent, TappableEvent>, &type metadata for TappableEvent, type metadata accessor for MapGesture);
}

uint64_t _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFyt_AA03AnyC0VyytGTtB5()
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  _GestureInputs.transform.getter();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GestureDebug.Value<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GestureDebug.Value);
  lazy protocol witness table accessor for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v4 + 4) = result;
  return result;
}

uint64_t _s7SwiftUI10AnyGestureV05_makeD07gesture6inputsAA01_D7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZyt_Tt2B5@<X0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  specialized _GestureInputs.makeIndirectOutputs<A>()(v30);
  v6 = a2[5];
  *(&v36[4] + 4) = a2[4];
  *(&v36[5] + 4) = v6;
  *(&v36[6] + 4) = a2[6];
  v36[7] = *(a2 + 108);
  v7 = a2[1];
  *(v36 + 4) = *a2;
  *(&v36[1] + 4) = v7;
  v8 = a2[3];
  *(&v36[2] + 4) = a2[2];
  v9 = *v30;
  v10 = *&v30[4];
  v11 = *&v30[8];
  v12 = *&v30[16];
  *(&v36[3] + 4) = v8;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  *&v30[116] = v36[7];
  *&v30[68] = v36[4];
  *&v30[84] = v36[5];
  *&v30[100] = v36[6];
  *&v30[4] = v36[0];
  *&v30[20] = v36[1];
  *&v30[36] = v36[2];
  *&v30[52] = v36[3];
  *v30 = a1;
  *&v30[136] = v9;
  *&v30[140] = v10;
  *&v31 = v11;
  DWORD2(v31) = v12;
  v34 = 0;
  v32 = v13;
  v33 = 0;
  v35 = 0;
  v27 = *&v30[128];
  v28 = v31;
  v29[0] = v13;
  *(v29 + 12) = 0u;
  v23 = *&v30[64];
  v24 = *&v30[80];
  v25 = *&v30[96];
  v26 = *&v30[112];
  v19 = *v30;
  v20 = *&v30[16];
  v21 = *&v30[32];
  v22 = *&v30[48];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

  outlined init with copy of _GestureInputs(a2, v18);
  v14 = MEMORY[0x1E69E7CA8];
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGestureInfo<()>.Value, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGestureInfo.Value);
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGestureInfo<()>, v14 + 8, type metadata accessor for AnyGestureInfo);
  lazy protocol witness table accessor for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AnyGestureInfo<()>(v30, &lazy cache variable for type metadata for AnyGestureInfo<()>, v14 + 8, type metadata accessor for AnyGestureInfo);
  AGGraphGetFlags();
  AGGraphSetFlags();
  result = AGGraphSetIndirectDependency();
  if (v10 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  v16 = *(v11 + 16);
  if (v16)
  {

    v17 = 48;
    do
    {
      AGGraphSetIndirectDependency();
      v17 += 24;
      --v16;
    }

    while (v16);
  }

  *a3 = v9;
  *(a3 + 4) = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  return result;
}

void specialized AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  specialized _GestureInputs.makeDefaultOutputs<A>()(&v72);
  v6 = v72;
  v7 = DWORD1(v72);
  v8 = *(&v72 + 1);
  v9 = v73;
  if (!AGSubgraphIsValid())
  {

LABEL_15:
    *a3 = v6;
    *(a3 + 4) = v7;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    return;
  }

  v10 = *(a1 + 120);
  v47 = AGSubgraphGetCurrent();
  if (!v47)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v45 = v8;
  v46 = v7;
  v44 = v9;
  v11 = AGSubgraphGetGraph();
  v12 = AGSubgraphCreate();

  swift_beginAccess();
  v13 = *(a2 + 280);
  *(a2 + 280) = v12;
  v14 = v12;

  AGSubgraphAddChild2();
  if (!*(a2 + 280))
  {
    goto LABEL_17;
  }

  AGSubgraphAddChild();
  if ((v10 & 0x10) != 0)
  {
    v15 = AGSubgraphGetGraph();
    v16 = AGSubgraphCreate();

    swift_beginAccess();
    v17 = *(a2 + 288);
    *(a2 + 288) = v16;
    v18 = v16;

    v19 = *(a2 + 280);
    if (!v19)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v20 = v19;
    AGSubgraphAddChild2();
  }

  v21 = *(a2 + 280);
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  AGGraphClearUpdate();
  v42 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v23 = *a1;
  v24 = *(a1 + 16);
  v25 = *(a1 + 40);
  v66 = *(a1 + 24);
  v67 = v25;
  v26 = *(a1 + 72);
  *v68 = *(a1 + 56);
  *&v68[16] = v26;
  v69 = v23;
  v48 = *(a1 + 96);
  v49 = *(a1 + 112);
  v27 = *(a2 + 64);
  v70 = *(a2 + 48);
  *v71 = v27;
  v28 = *(a2 + 80);
  v29 = *(a2 + 96);
  v30 = *(a2 + 112);
  *&v71[64] = *(a2 + 128);
  *&v71[32] = v29;
  *&v71[48] = v30;
  *&v71[16] = v28;
  swift_beginAccess();
  v31 = *(a2 + 288);
  v43 = v22;
  if (v31)
  {
    v32 = *(a2 + 288);
LABEL_14:
    v34 = *(a1 + 88);
    v60 = v69;
    v61 = v24;
    v62 = v66;
    v63 = v67;
    v64[0] = *v68;
    *(v64 + 12) = *&v68[12];
    outlined init with copy of _GestureInputs(a1, &v72);
    outlined init with copy of _ViewInputs(&v70, &v72);
    v35 = v31;
    outlined destroy of _ViewInputs(&v60);
    v7 = *v71;
    v69 = v70;
    v66 = *&v71[8];
    v67 = *&v71[24];
    *v68 = *&v71[40];
    *&v68[12] = *&v71[52];
    swift_beginAccess();
    v36 = v7[3];
    v65[1] = v7[2];
    v65[2] = v36;
    v37 = v7[5];
    v65[3] = v7[4];
    v65[4] = v37;
    v65[0] = v7[1];
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v38 = swift_allocObject();
    memmove((v38 + 16), v7 + 1, 0x50uLL);
    outlined init with copy of CachedEnvironment(v65, &v72);

    v72 = v69;
    v74 = v66;
    v75 = v67;
    v76 = *v68;
    LODWORD(v34) = v10 & 0xFFFFFFFB;
    v77 = *&v68[16];
    v73 = v38;
    v78 = v32;
    v79 = v48;
    v80 = v49;
    v81 = v10 & 0xFFFFFFFB;
    outlined init with copy of _GestureInputs(&v72, &v50);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    KeyPath = swift_getKeyPath();
    LODWORD(v50) = OffsetAttribute2;
    *(&v50 + 1) = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
    v51 = KeyPath;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    type metadata accessor for Map<ResolvedStyledText, AnyGesture<()>>();
    lazy protocol witness table accessor for type _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Map<ResolvedStyledText, AnyGesture<()>> and conformance Map<A, B>, type metadata accessor for Map<ResolvedStyledText, AnyGesture<()>>);

    v41 = Attribute.init<A>(body:value:flags:update:)();

    _s7SwiftUI10AnyGestureV05_makeD07gesture6inputsAA01_D7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZyt_Tt2B5(v41, &v72, &v50);
    outlined destroy of _GestureInputs(&v72);
    v8 = v45;
    LODWORD(v7) = v46;
    specialized _GestureOutputs.overrideDefaultValues(_:)(v50, *(&v50 + 1), v51, v6 | (v46 << 32), v45);

    v50 = v69;
    v52 = v66;
    v53 = v67;
    v54 = *v68;
    v51 = v38;
    v55 = *&v68[16];
    v56 = v32;
    v57 = v48;
    v58 = v49;
    v59 = v34;
    v9 = v44;
    outlined destroy of _GestureInputs(&v50);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    goto LABEL_15;
  }

  v33 = *(a2 + 280);
  if (v33)
  {
    v32 = v33;
    v31 = 0;
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

void AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(_OWORD *a1@<X0>, void (*a2)(unint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1[5];
  v62[4] = a1[4];
  v62[5] = v10;
  *v63 = a1[6];
  *&v63[12] = *(a1 + 108);
  v11 = a1[1];
  v62[0] = *a1;
  v62[1] = v11;
  v12 = a1[3];
  v62[2] = a1[2];
  v62[3] = v12;
  specialized _GestureInputs.makeDefaultOutputs<A>()(v59);
  v14 = v59[0];
  v13 = v59[1];
  v15 = v60;
  v16 = v61;
  v56 = *(a5 + 8);
  v57 = v6;
  v17 = a4;
  v58 = *(v56 + 8);
  v18 = v58(a4);
  LODWORD(a4) = AGSubgraphIsValid();

  if (!a4)
  {
    goto LABEL_14;
  }

  v51 = v15;
  v52 = v13;
  v19 = v63[24];
  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v49 = v16;
  v13 = v17;
  v22 = a5;
  v50 = a6;
  v53 = v19;
  if ((v19 & 0x10) != 0)
  {
    v28 = AGSubgraphGetGraph();
    v24 = v56;
    v23 = v57;
    v26 = v58;
  }

  else
  {
    v24 = v56;
    v23 = v57;
    v25 = v17;
    v26 = v58;
    v27 = (v58)(v25, v56);
    v28 = AGSubgraphGetGraph();
  }

  v29 = AGSubgraphCreate();

  (*(a5 + 32))(v29, v13, a5);
  v30 = v26(v13, v24);
  v31 = *(a5 + 24);
  v32 = v31(v13, a5);
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = v32;
  AGSubgraphAddChild2();

  v34 = v31(v13, a5);
  if (!v34)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v34;
  AGSubgraphAddChild();

  if ((v53 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v36 = (v58)(v13, v24);
  v37 = AGSubgraphGetGraph();

  v38 = AGSubgraphCreate();
  (*(v22 + 56))(v38, v13, v22);
  v39 = v31(v13, v22);
  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  v41 = (*(v22 + 48))(v13, v22);
  if (v41)
  {
    v42 = v41;
    AGSubgraphAddChild2();

LABEL_12:
    v43 = v21;
    v44 = v31(v13, v22);
    if (v44)
    {
      v45 = v44;
      v46 = v13;
      AGGraphClearUpdate();
      v47 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v15 = v51;
      LODWORD(v13) = v52;
      v48 = v22;
      v16 = v49;
      closure #1 in AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(v62, v23, a2, a3, v14 | (v52 << 32), v51, v49, v46, v48);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      a6 = v50;
LABEL_14:
      *a6 = v14;
      *(a6 + 4) = v13;
      *(a6 + 8) = v15;
      *(a6 + 16) = v16;
      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void AnyGestureResponder.exclusionPolicy.getter(_BYTE *a1@<X8>)
{
  *a1 = 3;
}

{
  AnyGestureResponder.exclusionPolicy.getter(a1);
}

uint64_t protocol witness for AnyGestureResponder.makeSubviewsGesture(inputs:) in conformance StyledTextResponder@<X0>(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v3 = specialized GraphHost.intern<A>(_:for:id:)(768, v2, 4);

  v5 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *a1 = v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t AnyGestureResponder.makeSubviewsGesture(inputs:)@<X0>(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v3 = specialized GraphHost.intern<A>(_:for:id:)(768, v2, 4);

  v5 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *a1 = v3;
  *(a1 + 4) = v5;
  return result;
}

{
  return AnyGestureResponder.makeSubviewsGesture(inputs:)(a1);
}

uint64_t specialized GesturePhase.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  outlined init with copy of GesturePhase<URL>(v2, &v13 - v10);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      (*(v6 + 32))(v8, v11, v5);
      a1(v8);
      result = (*(v6 + 8))(v8, v5);
      *(a2 + 1) = 2;
    }

    else
    {
      *a2 = 768;
    }
  }

  else if (result)
  {
    (*(v6 + 32))(v8, v11, v5);
    a1(v8);
    result = (*(v6 + 8))(v8, v5);
    *(a2 + 1) = 1;
  }

  else if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    *a2 = 1;
    return outlined destroy of URL?(v11);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    a1(v8);
    result = (*(v6 + 8))(v8, v5);
    *a2 = 0;
  }

  return result;
}

uint64_t specialized closure #1 in MapGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  if (BYTE1(result) > 1u)
  {
    if (BYTE1(result) == 2)
    {
      v9 = result & 1;
      result = a2(&v9);
      *(a3 + 1) = 2;
      return result;
    }

    v6 = 768;
  }

  else
  {
    if (BYTE1(result))
    {
      v8 = result & 1;
      result = a2(&v8);
      *(a3 + 1) = 1;
      return result;
    }

    if (result != 0xFF)
    {
      v7 = result & 1;
      result = a2(&v7);
      *a3 = 0;
      return result;
    }

    v6 = 1;
  }

  *a3 = v6;
  return result;
}

uint64_t specialized closure #1 in MapGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t (*a2)(__int16 *)@<X1>, uint64_t a3@<X8>)
{
  v3 = BYTE3(result);
  if (BYTE3(result) > 1u)
  {
    if (v3 == 2)
    {
      v10 = result & 0x101;
      result = a2(&v10);
      *(a3 + 1) = 2;
      return result;
    }

    v7 = 768;
  }

  else
  {
    if (v3)
    {
      v9 = result & 0x101;
      result = a2(&v9);
      *(a3 + 1) = 1;
      return result;
    }

    if ((result & 0x10000) == 0)
    {
      v8 = result & 0x101;
      result = a2(&v8);
      *a3 = 0;
      return result;
    }

    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t specialized _GestureInputs.makeIndirectOutputs<A>()@<X0>(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  specialized GraphHost.intern<A>(_:for:id:)(768, v3, 0);

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  if ((*(v1 + 120) & 8) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v13[6] = xmmword_1EAB1D4A8;
    v13[7] = xmmword_1EAB1D4B8;
    v13[8] = xmmword_1EAB1D4C8;
    v13[2] = xmmword_1EAB1D468;
    v13[3] = xmmword_1EAB1D478;
    v13[4] = xmmword_1EAB1D488;
    v13[5] = xmmword_1EAB1D498;
    v13[0] = static GestureDebug.Data.defaultValue;
    v13[1] = xmmword_1EAB1D458;
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.intern<A>(_:for:id:)(v13, &type metadata for GestureDebug.Data, 0);

    v5 = AGGraphCreateIndirectAttribute2();
  }

  else
  {
    v5 = *MEMORY[0x1E698D3F8];
  }

  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  outlined init with copy of PreferencesInputs(&v11, &v9);
  PreferencesInputs.makeIndirectOutputs()(&v9);

  v6 = v9;
  v7 = v10;

  *a1 = IndirectAttribute2;
  *(a1 + 4) = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t View.globallySimultaneousGesture<A>(_:name:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a7;
  v30 = a9;
  v31 = a5;
  v28 = a2;
  v29 = a3;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = lazy protocol witness table accessor for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner();
  v33 = a6;
  v34 = &type metadata for GloballySimultaneousGestureCombiner;
  v35 = a8;
  v36 = v16;
  v17 = type metadata accessor for AddGestureModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  (*(v13 + 16))(v15, a1, a6, v19);
  if (a4)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v33 = a6;
  v34 = &type metadata for GloballySimultaneousGestureCombiner;
  v35 = a8;
  v36 = v16;
  v23 = type metadata accessor for AddGestureModifier();
  v24 = &v21[*(v23 + 52)];
  (*(v13 + 32))(v21, v15, a6);
  v25 = v29;
  *v24 = v28;
  *(v24 + 1) = v25;
  *&v21[*(v23 + 56)] = v22;
  View.modifier<A>(_:)(v21, v31, v17);
  v26 = *(v18 + 8);

  return v26(v21, v17);
}

Swift::Int GestureResponderExclusionPolicy.SimultaneityConstraint.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

BOOL static GestureResponderExclusionPolicy.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GestureResponderExclusionPolicy(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t GestureResponderExclusionPolicy.description.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000014;
  }

  else if (v1 == 3)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 0x6F69725068676968;
  }
}

uint64_t AddGestureModifier.name.getter(uint64_t a1)
{
  v1 = specialized AddGestureModifier.name.getter(a1);

  return v1;
}

uint64_t AddGestureModifier.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for GestureViewModifier.name.getter in conformance AddGestureModifier<A, B>(uint64_t a1)
{
  v1 = specialized AddGestureModifier.name.getter(a1);

  return v1;
}

uint64_t static DefaultGestureCombiner.combine(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = _ViewInputs.base.modify;
  *(v6 + 24) = 0;
  *a3 = a1;
  a3[1] = a2;
  a3[2] = partial apply for specialized closure #1 in MapGesture.init(_:);
  a3[3] = v6;
}

BOOL protocol witness for static GestureCombiner.exclusionPolicy.getter in conformance SimultaneousGestureCombiner@<W0>(char *a1@<X8>)
{
  result = specialized static SimultaneousGestureAppliesToChildrenOnlyFeature.isEnabled.getter();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for static GestureCombiner.combine(_:_:) in conformance DefaultGestureCombiner@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = 0;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = v10;
}

uint64_t protocol witness for static GestureCombiner.combine(_:_:) in conformance HighPriorityGestureCombiner@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = _ViewInputs.base.modify;
  *(v6 + 24) = 0;
  *a3 = a2;
  a3[1] = a1;
  a3[2] = closure #1 in MapGesture.init(_:)specialized partial apply;
  a3[3] = v6;
}

uint64_t closure #1 in AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(uint64_t a1, uint64_t a2, void (*a3)(unint64_t *__return_ptr, __int128 *), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 40);
  v51 = *(a1 + 24);
  v52 = v12;
  v13 = *(a1 + 72);
  v53[0] = *(a1 + 56);
  v53[1] = v13;
  v49 = *(a1 + 96);
  v50 = *(a1 + 112);
  v24 = *(a1 + 120);
  v14 = *(a9 + 16);
  outlined init with copy of _GestureInputs(a1, &v41);
  v14(&v44, a8, a9);
  v15 = v45;
  result = (*(a9 + 48))(a8, a9);
  if (result || (result = (*(a9 + 24))(a8, a9)) != 0)
  {
    v17 = result;
    v35 = v54;
    v37 = v51;
    v18 = *(a1 + 120);
    v19 = *(a1 + 88);
    v36 = v11;
    v38 = v52;
    *v39 = v53[0];
    *&v39[12] = *(v53 + 12);
    outlined destroy of _ViewInputs(&v35);
    v51 = v46;
    v52 = v47;
    v53[0] = v48[0];
    *(v53 + 12) = *(v48 + 12);
    swift_beginAccess();
    v20 = v15[3];
    v40[1] = v15[2];
    v40[2] = v20;
    v21 = v15[5];
    v40[3] = v15[4];
    v40[4] = v21;
    v40[0] = v15[1];
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v22 = swift_allocObject();
    memmove((v22 + 16), v15 + 1, 0x50uLL);
    outlined init with copy of CachedEnvironment(v40, &v41);

    v30 = v44;
    *&v31[8] = v51;
    *&v31[56] = v53[1];
    if ((v18 & 4) != 0)
    {
      v23 = v18 & 0xFFFFFFFB;
    }

    else
    {
      v23 = v24;
    }

    *v31 = v22;
    *&v31[24] = v52;
    *&v31[40] = v53[0];
    *&v31[72] = v17;
    *v32 = v49;
    *&v32[16] = v50;
    *&v32[24] = v23;
    *&v42[64] = *&v31[64];
    *&v43[12] = *&v32[12];
    *v43 = v49;
    v41 = v30;
    *v42 = *v31;
    *&v42[16] = *&v31[16];
    *&v42[32] = *&v31[32];
    *&v42[48] = *&v31[48];
    outlined init with copy of _GestureInputs(&v30, v33);
    a3(v28, &v41);
    v33[4] = *&v42[48];
    v33[5] = *&v42[64];
    v34[0] = *v43;
    *(v34 + 12) = *&v43[12];
    v33[0] = v41;
    v33[1] = *v42;
    v33[2] = *&v42[16];
    v33[3] = *&v42[32];
    outlined destroy of _GestureInputs(v33);
    specialized _GestureOutputs.overrideDefaultValues(_:)(v28[0], v28[1], v29, a5, a6);

    v41 = v44;
    *&v42[8] = v51;
    *&v42[24] = v52;
    *&v42[40] = v53[0];
    *&v42[56] = v53[1];
    *v42 = v22;
    *&v42[72] = v17;
    *v43 = v49;
    *&v43[16] = v50;
    *&v43[24] = v23;
    return outlined destroy of _GestureInputs(&v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AnyGestureResponder.isCancellable.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 96))();
  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  if (*(v2 + 248) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  static Update.end()();

  return v3;
}

uint64_t AnyGestureResponder.requiredTapCount.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 96))();
  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  if (*(v2 + 252) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v3 = *AGGraphGetValue();
  }

  static Update.end()();

  return v3;
}

uint64_t AnyGestureResponder.dependency.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(a1 + 96))();
  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  if (*(v3 + 256) == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
  }

  else
  {
    v4 = *AGGraphGetValue();
  }

  *a2 = v4;
  static Update.end()();
}

BOOL AnyGestureResponder.canPrevent(_:otherExclusionPolicy:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if ((AnyGestureResponder.isPrioritized(over:otherExclusionPolicy:)(a1, &v8, a3, a4) & 1) == 0)
  {
    return 0;
  }

  v4 = swift_conformsToProtocol2();
  if (!v4)
  {
    return 1;
  }

  v5 = v4;

  AnyGestureResponder.dependency.getter(v5, &v7);

  return v7 - 3 < 0xFFFFFFFE;
}

uint64_t AnyGestureResponder.isPrioritized(over:otherExclusionPolicy:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  BYTE1(v10) = *a2;
  if (AnyGestureResponder.isSimultaneous(with:otherExclusionPolicy:)(a1, &v10 + 1, a3, a4))
  {
    return 0;
  }

  (*(a4 + 72))(&v10, a3, a4);
  if (v10 == 3)
  {
    if (v8 == 4)
    {
      return 0;
    }
  }

  else if (v10 == 4)
  {
    if (v8 == 3)
    {
      return 1;
    }

    if (v8 == 4)
    {
      return ViewResponder.isDescendant(of:)(v4) & 1;
    }
  }

  return ViewResponder.isDescendant(of:)(a1);
}

BOOL AnyGestureResponder.shouldRequireFailure(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  (*(a2 + 72))(&v17 + 1, *a1);
  if ((AnyGestureResponder.isSimultaneous(with:otherExclusionPolicy:)(a1, &v17 + 1, a3, a4) & 1) == 0)
  {
    v10 = AnyGestureResponder.requiredTapCount.getter(a3, a4);
    if ((v11 & 1) == 0)
    {
      v13 = v10;
      v14 = AnyGestureResponder.requiredTapCount.getter(v9, a2);
      if ((v15 & 1) == 0 && v14 != v13)
      {
        return v13 < v14;
      }
    }
  }

  (*(a4 + 72))(&v17, a3, a4);
  if ((AnyGestureResponder.isPrioritized(over:otherExclusionPolicy:)(v4, &v17, v9, a2) & 1) == 0)
  {
    return 0;
  }

  AnyGestureResponder.dependency.getter(a4, &v16);
  return v16 != 0;
}

uint64_t AnyGestureResponder.isSimultaneous(with:otherExclusionPolicy:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  (*(a4 + 72))(&v10, a3, a4);
  v7 = static AnyGestureResponder.isSimultaneous(_:with:exclusionPolicy:)(v4, a1, &v10);
  v9 = v6;
  return (v7 | static AnyGestureResponder.isSimultaneous(_:with:exclusionPolicy:)(a1, v4, &v9)) & 1;
}

uint64_t static AnyGestureResponder.isSimultaneous(_:with:exclusionPolicy:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  if ((v3 - 3) < 2)
  {
    return 0;
  }

  if (!*a3)
  {
    return ViewResponder.isDescendant(of:)(a1) & 1;
  }

  if (v3 == 1)
  {
    a1 = a2;
    return ViewResponder.isDescendant(of:)(a1) & 1;
  }

  return 1;
}

uint64_t GestureResponder.gestureGraph.getter()
{
  if (v0[30])
  {
    v1 = v0[30];
  }

  else
  {
    v2 = *v0;
    type metadata accessor for GestureGraph();
    v3 = swift_allocObject();

    v1 = specialized GestureGraph.init(rootResponder:)(v4, v3, v2, &protocol witness table for GestureResponder<A>);
    v0[30] = v1;
  }

  return v1;
}

uint64_t GestureResponder.bindingBridge.getter()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v1 = closure #1 in GestureResponder.bindingBridge.getter(v0);
    *(v0 + 248) = v1;
    *(v0 + 256) = v2;
  }

  return v1;
}

uint64_t closure #1 in GestureResponder.bindingBridge.getter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 136);
  v20[2] = *(a1 + 120);
  v20[3] = v3;
  v20[4] = *(a1 + 152);
  v21 = *(a1 + 168);
  v4 = *(a1 + 104);
  v20[0] = *(a1 + 88);
  v20[1] = v4;
  v5 = *(a1 + 136);
  v16 = *(a1 + 120);
  v17 = v5;
  v18 = *(a1 + 152);
  v19 = *(a1 + 168);
  v6 = *(a1 + 104);
  v14 = *(a1 + 88);
  v15 = v6;
  v7 = v2;
  outlined init with copy of _ViewInputs(v20, v22);
  v8 = *(GestureResponder.gestureGraph.getter() + 208);

  v9 = specialized _ViewInputs.makeEventBindingBridge(bindingManager:responder:)(v8, a1, &v14, v7, &protocol witness table for GestureResponder<A>);
  v11 = v10;

  v22[2] = v16;
  v22[3] = v17;
  v22[4] = v18;
  v23 = v19;
  v22[0] = v14;
  v22[1] = v15;
  outlined destroy of _ViewInputs(v22);
  v12 = *(a1 + 240);
  swift_beginAccess();
  *(v12 + 200) = v11;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t GestureResponder.gestureContainer.getter()
{
  if (*(v0 + 264))
  {
    return swift_unknownObjectRetain();
  }

  v1 = *v0;
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v2 = *(v0 + 136);
  v14[2] = *(v0 + 120);
  v14[3] = v2;
  v14[4] = *(v0 + 152);
  v15 = *(v0 + 168);
  v3 = *(v0 + 104);
  v14[0] = *(v0 + 88);
  v14[1] = v3;
  v4 = *(v0 + 136);
  v10 = *(v0 + 120);
  v11 = v4;
  v12 = *(v0 + 152);
  v13 = *(v0 + 168);
  v5 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = v5;
  outlined init with copy of _ViewInputs(v14, v16);
  v6 = specialized _ViewInputs.makeGestureContainer(responder:)(v0, &v8, v1, &protocol witness table for GestureResponder<A>);
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v17 = v13;
  v16[0] = v8;
  v16[1] = v9;
  outlined destroy of _ViewInputs(v16);
  *(v0 + 264) = v6;
  swift_unknownObjectRelease();
  result = *(v0 + 264);
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t GestureResponder.eventSources.getter()
{
  v0 = GestureResponder.bindingBridge.getter();
  v1 = (*(*v0 + 160))(v0);

  return v1;
}

uint64_t GestureResponder.exclusionPolicy.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t GestureResponder.label.getter()
{
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  AGGraphClearUpdate();
  closure #1 in GestureResponder.label.getter(v0, v4);
  AGGraphSetUpdate();
  if (v4[1])
  {
    return v4[0];
  }

  v2 = GestureResponder.gestureGraph.getter();
  swift_beginAccess();
  v3 = 0;
  if (*(v2 + 128) == 1)
  {
    specialized static Update.begin()();
    if (*(v2 + 244) == *MEMORY[0x1E698D3F8])
    {
      v3 = 0;
    }

    else
    {
      _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v3 = *AGGraphGetValue();
    }

    static Update.end()();
  }

  return v3;
}

uint64_t closure #1 in GestureResponder.label.getter@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  AGGraphClearUpdate();
  v4 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in GestureResponder.label.getter(a1, v8);
  AGSubgraphSetCurrent();

  v5 = v8[0];
  v6 = v8[1];
  result = AGGraphSetUpdate();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t closure #1 in closure #1 in GestureResponder.label.getter@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1[54];
  v19 = *(*a1 + 400);
  v13 = v3;
  v14 = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  KeyPath = swift_getKeyPath();
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1E69E6720];
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v17 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<GesturePhase<()>>(0, &lazy cache variable for type metadata for Attribute<String?>, &lazy cache variable for type metadata for String?, v4, v5);
  v7 = v6;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, v16, v17, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

  Value = AGGraphGetValue();
  v11 = *Value;
  v10 = Value[1];
  *a2 = v11;
  a2[1] = v10;
}

uint64_t GestureResponder.isValid.getter()
{
  if (*(v0 + 264))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

void GestureResponder.makeSubviewsGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[5];
  v5[4] = a1[4];
  v5[5] = v2;
  v6[0] = a1[6];
  *(v6 + 12) = *(a1 + 108);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v4 = a1[3];
  v5[2] = a1[2];
  v5[3] = v4;
  DefaultLayoutViewResponder.makeGesture(inputs:)(v5, a2);
}

unint64_t GestureResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v8 = *a3;
  v14[0] = *a3;
  MultiViewResponder.hitTestPolicy(options:)(v14);
  if (LOBYTE(v13) == 1)
  {
    swift_beginAccess();
    v9 = *(v4 + 40);
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = v9;
  }

  else
  {
    v13 = v8;
    result = MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | ((HIDWORD(a2) & 1) << 32), &v13, v14);
    v11 = v14[1];
    if ((LOBYTE(v8) & 2) == 0)
    {
      v11 = 16.0;
    }

    v12 = v14[2];
    *a4 = v14[0];
    a4[1] = v11;
    a4[2] = v12;
  }

  return result;
}

uint64_t GestureResponder.features.getter@<X0>(__int16 *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          v9 = v6 | 2;
          goto LABEL_15;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      (*(*v7 + 216))(&v11);

      v6 |= v11;
      ++v5;
      if (v8 == v4)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = 2;
LABEL_15:

  *a1 = v9;
  return result;
}

uint64_t GestureResponder.bindEvent(_:)(uint64_t a1)
{
  if (specialized static GestureContainerFeature.isEnabled.getter())
  {
    outlined init with copy of AnyTrackedValue(a1, v10);
    HitTestableEvent.init(_:)(v10, v11);
    if (v12 == 1)
    {
      return 0;
    }

    v3 = 0;
    if (v17)
    {
      v4 = 0;
    }

    else
    {
      v4 = v16;
    }

    if ((v4 & 0x20) == 0)
    {
      v3 = ++static ViewResponder.hitTestKey;
    }

    if ((v4 & 4) != 0)
    {
      v10[0] = v4;
      LOBYTE(v9) = (v4 & 0x20) != 0;
      v7 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v3 | (v9 << 32), v10, v13, v14);
      outlined destroy of AnyGestureInfo<()>(v11, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720]);
      result = v7;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      hitPoints(point:radius:)(v13, v14, v15);
      v8 = v4;
      v9 = 0;
      LOBYTE(v10[0]) = (v4 & 0x20) != 0;
      ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v5, v6, &v9, v3 | (LOBYTE(v10[0]) << 32), &v8, v10);
      outlined destroy of AnyGestureInfo<()>(v11, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720]);

      result = v10[0];
      if (!v10[0])
      {
        return 0;
      }
    }
  }

  else
  {

    return MultiViewResponder.bindEvent(_:)(a1);
  }

  return result;
}

void GestureResponder.makeGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = a1[5];
  v9[4] = a1[4];
  v9[5] = v4;
  v10[0] = a1[6];
  *(v10 + 12) = *(a1 + 108);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v7[2] = v9;
  v8 = v2;
  AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(a1, partial apply for closure #1 in GestureResponder.makeGesture(inputs:), v7, v3, &protocol witness table for GestureResponder<A>, a2);
}

void closure #1 in GestureResponder.makeGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1[5];
  v30 = a1[4];
  v31 = v7;
  v32[0] = a1[6];
  *(v32 + 12) = *(a1 + 108);
  v8 = a1[1];
  v27[0] = *a1;
  v27[1] = v8;
  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  v25[0] = v27[0];
  v25[1] = v8;
  v26 = *(a1 + 20);
  v25[3] = v9;
  v25[4] = v30;
  v25[2] = v28;
  closure #1 in closure #1 in GestureResponder.makeGesture(inputs:)(a2, a3, v25, v27, &v21);
  if ((*(a2 + 120) & 8) != 0)
  {
    v20[0] = *(a3 + 216);
    v20[1] = v22;
    MEMORY[0x1EEE9AC00](v10);
    v17 = type metadata accessor for GestureViewDebug();
    WitnessTable = swift_getWitnessTable();
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for Attribute<GestureDebug.Data>, &type metadata for GestureDebug.Data, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in Attribute.init<A>(_:)partial apply, &v16, v17, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
    v11 = v19;
  }

  else
  {
    v11 = v22;
  }

  v14 = v23;
  v15 = v24;
  *a4 = v21;
  *(a4 + 4) = v11;
  *(a4 + 8) = v14;
  *(a4 + 16) = v15;
}

double closure #1 in closure #1 in GestureResponder.makeGesture(inputs:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 216);
  v8 = *(a3 + 24);
  if ((*(a1 + 120) & 4) != 0)
  {
    if (one-time initialization token for isEnabled != -1)
    {
      swift_once();
    }

    v30 = static CachedEnvironment.ID.isEnabled;
    swift_beginAccess();
    v31 = specialized CachedEnvironment.attribute<A>(id:_:)(v30);
    v32 = swift_endAccess();
    *&v51 = __PAIR64__(v31, v7);
    DWORD2(v51) = v8;
    MEMORY[0x1EEE9AC00](v32);
    v44 = type metadata accessor for GestureViewChild();
    WitnessTable = swift_getWitnessTable();
    v33 = MEMORY[0x1E69E7CA8];
    type metadata accessor for Attribute<GesturePhase<()>>(0, &lazy cache variable for type metadata for Attribute<AnyGesture<()>>, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v51, closure #1 in Attribute.init<A>(_:)partial apply, &v42, v44, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);
    v36 = v49[0];
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for AnyGesture<()>, v33 + 8, type metadata accessor for AnyGesture);
    v38 = v37;
    _s7SwiftUI10AnyGestureV05_makeD07gesture6inputsAA01_D7OutputsVyxGAA11_GraphValueVyACyxGG_AA01_D6InputsVtFZyt_Tt2B5(v36, a4, &v51);
    if ((*(a4 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !v38))
    {
      _gestureModifierProtocolDescriptor();
      swift_conformsToProtocol();
      LOBYTE(v49[0]) = 1;
      _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFyt_AA03AnyC0VyytGTtB5();
    }

    v39 = *(&v51 + 1);
    v40 = v52;
    result = *&v51;
    *a5 = v51;
    *(a5 + 8) = v39;
    *(a5 + 16) = v40;
  }

  else
  {
    v46 = a5;
    if (one-time initialization token for isEnabled != -1)
    {
      swift_once();
    }

    v10 = static CachedEnvironment.ID.isEnabled;
    swift_beginAccess();
    v11 = specialized CachedEnvironment.attribute<A>(id:_:)(v10);
    v12 = swift_endAccess();
    *&v51 = __PAIR64__(v11, v7);
    DWORD2(v51) = v8;
    *&v52 = a2;
    *(&v52 + 1) = &protocol witness table for GestureResponder<A>;
    MEMORY[0x1EEE9AC00](v12);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v42 = AssociatedTypeWitness;
    v43 = type metadata accessor for CombiningGestureViewChild();
    v44 = swift_getWitnessTable();
    v14 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v51, partial apply for closure #1 in Attribute.init<A>(_:), &v41, v43, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

    _GraphValue.init(_:)(LODWORD(v49[0]), &v48);
    v16 = *(a4 + 80);
    v55 = *(a4 + 64);
    v56 = v16;
    v57[0] = *(a4 + 96);
    *(v57 + 12) = *(a4 + 108);
    v17 = *(a4 + 16);
    v51 = *a4;
    v52 = v17;
    v18 = *(a4 + 48);
    v53 = *(a4 + 32);
    v54 = v18;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v49, &v48, &v51, AssociatedTypeWitness, AssociatedConformanceWitness);
    if ((*(a4 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !AssociatedTypeWitness))
    {
      _gestureModifierProtocolDescriptor();
      if (swift_conformsToProtocol())
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      LOBYTE(v48) = v20;
      v21 = *(a4 + 80);
      v55 = *(a4 + 64);
      v56 = v21;
      v57[0] = *(a4 + 96);
      *(v57 + 12) = *(a4 + 108);
      v22 = *(a4 + 16);
      v51 = *a4;
      v52 = v22;
      v23 = *(a4 + 48);
      v53 = *(a4 + 32);
      v54 = v23;
      v24 = HIDWORD(v49[0]) == *MEMORY[0x1E698D3F8];
      if (HIDWORD(v49[0]) == *MEMORY[0x1E698D3F8])
      {
        v25 = 0;
      }

      else
      {
        v25 = HIDWORD(v49[0]);
      }

      _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for _GestureOutputs<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for _GestureOutputs);
      v47 = 1;
      _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(AssociatedTypeWitness, &v48, 0x100000000, &v51, v25 | (v24 << 32), 0x100000000);
    }

    v26 = v49[1];
    v27 = v50;
    result = *v49;
    v29 = v46;
    *v46 = v49[0];
    v29[1] = v26;
    *(v29 + 4) = v27;
  }

  return result;
}

void GestureResponder.resetGesture()()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  *(v0 + 224) = 0;

  swift_beginAccess();
  v2 = *(v0 + 232);
  *(v0 + 232) = 0;

  DefaultLayoutViewResponder.resetGesture()();
}

uint64_t GestureResponder.extendPrintTree(string:)()
{
  swift_getAssociatedTypeWitness();
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);
}

uint64_t GestureResponder.__ivar_destroyer()
{

  return swift_unknownObjectRelease();
}

void GestureViewDebug.debugData.getter(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v16);
    v3 = v23;
    a2[6] = v22;
    a2[7] = v3;
    a2[8] = v24;
    v4 = v19;
    a2[2] = v18;
    a2[3] = v4;
    v5 = v21;
    a2[4] = v20;
    a2[5] = v5;
    v6 = v17;
    *a2 = v16;
    a2[1] = v6;
  }

  else
  {
    Value = AGGraphGetValue();
    v16 = *Value;
    v8 = Value[4];
    v10 = Value[1];
    v9 = Value[2];
    v19 = Value[3];
    v20 = v8;
    v17 = v10;
    v18 = v9;
    v11 = Value[8];
    v13 = Value[5];
    v12 = Value[6];
    v23 = Value[7];
    v24 = v11;
    v21 = v13;
    v22 = v12;
    memmove(a2, Value, 0x90uLL);
    _ViewInputs.base.modify(a2, v14);
    outlined init with copy of GestureDebug.Data(&v16, &v15);
  }
}

void *protocol witness for AnyGestureResponder.childSubgraph.getter in conformance GestureResponder<A>()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childSubgraph.setter in conformance GestureResponder<A>(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *(v1 + 224) = a1;
}

void *protocol witness for AnyGestureResponder.childViewSubgraph.getter in conformance GestureResponder<A>()
{
  swift_beginAccess();
  v1 = *(v0 + 232);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childViewSubgraph.setter in conformance GestureResponder<A>(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
}

__n128 GestureViewDebug.value.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  GestureViewDebug.debugData.getter(a1, &v48);
  v57[6] = v54;
  v57[7] = v55;
  v57[8] = v56;
  v57[2] = v50;
  v57[3] = v51;
  v57[4] = v52;
  v57[5] = v53;
  v57[0] = v48;
  v57[1] = v49;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v57) == 1)
  {
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v39 = v48;
    v40 = v49;
  }

  else
  {
    v18 = v54;
    v19 = v55;
    v20 = v56;
    v14 = v50;
    v15 = v51;
    v16 = v52;
    v17 = v53;
    v12 = v48;
    v13 = v49;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v30 = v48;
    v31 = v49;
    outlined init with copy of GestureDebug.Data(&v30, &v39);
    closure #1 in GestureViewDebug.value.getter(&v12, v4, a2, &v39);
    outlined destroy of AnyGestureInfo<()>(&v48, &lazy cache variable for type metadata for GestureDebug.Data?, &type metadata for GestureDebug.Data, MEMORY[0x1E69E6720]);
    v11[6] = v18;
    v11[7] = v19;
    v11[8] = v20;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v16;
    v11[5] = v17;
    v11[0] = v12;
    v11[1] = v13;
    outlined destroy of GestureDebug.Data(v11);
    _ViewInputs.base.modify(&v39, v6);
  }

  v27 = v45;
  v28 = v46;
  v29 = v47;
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v21 = v39;
  v22 = v40;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v30 = v39;
  v31 = v40;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v30) == 1)
  {
    result.n128_f64[0] = GestureDebug.Data.init()(a3);
  }

  else
  {
    v8 = v28;
    *(a3 + 96) = v27;
    *(a3 + 112) = v8;
    *(a3 + 128) = v29;
    v9 = v24;
    *(a3 + 32) = v23;
    *(a3 + 48) = v9;
    v10 = v26;
    *(a3 + 64) = v25;
    *(a3 + 80) = v10;
    result = v22;
    *a3 = v21;
    *(a3 + 16) = result;
  }

  return result;
}

__n128 closure #1 in GestureViewDebug.value.getter@<Q0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[5];
  v8 = a1[7];
  v30 = a1[6];
  v31 = v8;
  v9 = a1[7];
  v32 = a1[8];
  v10 = a1[1];
  v11 = a1[3];
  v26 = a1[2];
  v27 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v28 = a1[4];
  v29 = v13;
  v14 = a1[1];
  v24 = *a1;
  v25 = v14;
  *&__src[96] = v30;
  *&__src[112] = v9;
  *&__src[128] = a1[8];
  *&__src[32] = v26;
  *&__src[48] = v12;
  *&__src[64] = v28;
  *&__src[80] = v7;
  *__src = v24;
  *&__src[16] = v10;
  _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi_(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v15 = v25;
  v16 = DWORD2(v25);
  v20 = v27;
  v21 = v26;
  outlined init with copy of GestureDebug.Data(&v24, v22);
  _s7SwiftUI16ArrayWith2InlineVyACyxGqd__c7ElementQyd__RszSTRd__lufCSS_SSt_SRySS_SStGTt1g5((MEMORY[0x1E69E7CC0] + 32), 0, v22);
  *a4 = 3;
  *(a4 + 8) = a3;
  v17 = swift_allocObject();
  memcpy((v17 + 16), __dst, 0x121uLL);
  *(a4 + 136) = v17;
  *(a4 + 16) = v15;
  *(a4 + 20) = a2;
  *(a4 + 24) = v16;
  *(a4 + 32) = v21;
  *(a4 + 48) = v20;
  v18 = v22[3];
  *(a4 + 96) = v22[2];
  *(a4 + 112) = v18;
  *(a4 + 128) = v23;
  result = v22[1];
  *(a4 + 64) = v22[0];
  *(a4 + 80) = result;
  return result;
}

uint64_t GestureViewChild.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &AssociatedConformanceWitness - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = type metadata accessor for _MapGesture();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &AssociatedConformanceWitness - v8;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &AssociatedConformanceWitness - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v14 = *(v9 + 16);
  v14(v12, Value, a3);
  v15 = (*(a4 + 72))(a3, a4);
  v16 = *(v9 + 8);
  v16(v12, a3);
  if ((v15 & 1) != 0 && *AGGraphGetValue() == 1)
  {
    v17 = AGGraphGetValue();
    v14(v12, v17, a3);
    v18 = v28;
    (*(a4 + 56))(a3, a4);
    v16(v12, a3);
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v20 = MEMORY[0x1E69E7CA8];
    v21 = v26;
    Gesture.map<A>(_:)(_ViewInputs.base.modify, v19, AssociatedTypeWitness, MEMORY[0x1E69E7CA8] + 8, AssociatedConformanceWitness, v26);

    (*(v30 + 8))(v18, AssociatedTypeWitness);
    v22 = v29;
    swift_getWitnessTable();
    v23 = specialized AnyGesture.init<A>(_:)(v21, v20 + 8, v22);
    (*(v27 + 8))(v21, v22);
    return v23;
  }

  else
  {
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>();
    return swift_allocObject();
  }
}

uint64_t protocol witness for Rule.value.getter in conformance GestureViewChild<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = GestureViewChild.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t CombiningGestureViewChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a3;
  v42 = a2;
  v55 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v41 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ContentGesture();
  WitnessTable = swift_getWitnessTable();
  v45 = v12;
  v56 = v12;
  v57 = AssociatedTypeWitness;
  v51 = AssociatedTypeWitness;
  v43 = WitnessTable;
  v58 = WitnessTable;
  v59 = AssociatedConformanceWitness;
  v48 = AssociatedConformanceWitness;
  v14 = type metadata accessor for ModifierGesture();
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v41 - v15;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  Value = AGGraphGetValue();
  v53 = *(v16 + 16);
  v53(v19, Value, a4);
  v22 = *(a5 + 72);
  v23 = a5;
  LOBYTE(a5) = v22(a4, a5);
  v24 = *(v16 + 8);
  v24(v19, a4);
  v25 = 0;
  if (a5)
  {
    v25 = *AGGraphGetValue();
  }

  v52 = v25;
  v54 = v20;
  v26 = AGGraphGetValue();
  v27 = v53;
  v53(v19, v26, a4);
  v28 = v22(a4, v23);
  v24(v19, a4);
  if ((v28 & 2) != 0)
  {
    type metadata accessor for EventListener<SpatialEvent>(0, &lazy cache variable for type metadata for AnyGestureStorage<SubviewsGesture>, &unk_1F0096430, &protocol witness table for SubviewsGesture, type metadata accessor for AnyGestureStorage);
    v29 = swift_allocObject();
    v30 = v41;
    *(v29 + 16) = v42;
    *(v29 + 24) = v30;
  }

  else
  {
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>();
    v29 = swift_allocObject();
  }

  if (v52)
  {
    v31 = AGGraphGetValue();
    v27(v19, v31, a4);
    v32 = v49;
    (*(v23 + 56))(a4, v23);
    v33 = (v24)(v19, a4);
    v34 = v44;
    v35 = v51;
    Gesture.modifier<A>(_:)(v33, v51, v45, v44);
    (*(v50 + 8))(v32, v35);
    v36 = v47;
    swift_getWitnessTable();
    v37 = specialized AnyGesture.init<A>(_:)(v34, MEMORY[0x1E69E7CA8] + 8, v36);
    (*(v46 + 8))(v34, v36);
  }

  else
  {
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>();
    v37 = swift_allocObject();
  }

  v38 = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedConformanceWitness();
  (*(v39 + 24))(v29, v37, v38, v39);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CombiningGestureViewChild<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t static ContentGesture._makeGesture(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(__int128 *__return_ptr, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a1[5];
  v23 = a1[4];
  v24 = v4;
  v25 = a1[6];
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  v6 = a1[3];
  v21 = a1[2];
  v22 = v6;
  v8 = *(a1 + 116);
  v26 = *(a1 + 28);
  v7 = v26;
  v27 = v8;
  a2(&v14, &v19);
  v19 = v14;
  LODWORD(v20) = v15;
  *(&v14 + 4) = v7;
  v9 = type metadata accessor for ContentPhase();
  v17 = v9;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<GesturePhase<()>>(0, &lazy cache variable for type metadata for Attribute<GesturePhase<()>>, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, closure #1 in Attribute.init<A>(_:)partial apply, v16, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  type metadata accessor for _GestureOutputs();
  _GestureOutputs.withPhase<A>(_:)(v13, a3);
}

uint64_t static SubviewsGesture._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[5];
  v45 = a2[4];
  v46 = v5;
  *v47 = a2[6];
  *&v47[12] = *(a2 + 108);
  v6 = a2[1];
  v41 = *a2;
  v42 = v6;
  v7 = a2[3];
  v43 = a2[2];
  v44 = v7;
  specialized _GestureInputs.makeIndirectOutputs<A>()(v18);
  v8 = *&v47[16];
  v9 = v18[0];
  IndirectAttribute2 = v18[1];
  v11 = v19;
  v12 = v20;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  v14 = *MEMORY[0x1E698D3F8];
  *v35 = v4;
  *&v35[4] = v8;
  *&v35[72] = v45;
  *&v35[88] = v46;
  *&v35[104] = *v47;
  *&v35[116] = *&v47[12];
  *&v35[8] = v41;
  *&v35[24] = v42;
  *&v35[40] = v43;
  *&v35[56] = v44;
  *&v35[136] = v9;
  *&v35[140] = IndirectAttribute2;
  *&v36 = v11;
  DWORD2(v36) = v12;
  *&v40 = 0;
  DWORD2(v39) = 0;
  v37 = v13;
  v38 = 0;
  *&v39 = 0;
  DWORD2(v40) = v14;
  HIDWORD(v40) = v14;
  v32 = v13;
  v33 = v39;
  v34 = v40;
  v28 = *&v35[96];
  v29 = *&v35[112];
  v30 = *&v35[128];
  v31 = v36;
  v24 = *&v35[32];
  v25 = *&v35[48];
  v26 = *&v35[64];
  v27 = *&v35[80];
  v22 = *v35;
  v23 = *&v35[16];
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GestureInputs(&v41, v21);
  lazy protocol witness table accessor for type SubviewsPhase and conformance SubviewsPhase();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of SubviewsPhase(v35);
  if ((v47[24] & 8) != 0)
  {
    AGGraphCreateOffsetAttribute2();
    if (IndirectAttribute2 == v14)
    {
      IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
    }

    else
    {
      AGGraphSetIndirectAttribute();
    }
  }

  result = AGGraphSetIndirectDependency();
  if (IndirectAttribute2 != v14)
  {
    result = AGGraphSetIndirectDependency();
  }

  v16 = *(v11 + 16);
  if (v16)
  {
    v17 = v11 + 48;
    do
    {
      v17 += 24;
      result = AGGraphSetIndirectDependency();
      --v16;
    }

    while (v16);
  }

  *a3 = v9;
  *(a3 + 4) = IndirectAttribute2;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  return result;
}

uint64_t ContentPhase.phase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t ContentPhase.updateValue()()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for GesturePhase();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    ContentPhase.phase.getter(v3);
    v5 = MEMORY[0x1E69E7CA8];
    GesturePhase.withValue<A>(_:)(v0, MEMORY[0x1E69E7CA8] + 8, &v7);
    (*(v1 + 8))(v3, v0);
    v6[2] = v7;
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, v5 + 8, type metadata accessor for GesturePhase);
    return AGGraphSetOutputValue();
  }

  return result;
}

uint64_t SubviewsPhase.updateValue()()
{
  v1 = v0;
  v82 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = Value[1];
  v61 = *Value;

  v4 = AGGraphGetValue();
  v5 = MEMORY[0x1E698D3F8];
  if (*v4 != *(v0 + 184) || (v6 = *(v0 + 168)) == 0 || v61 != v6)
  {
    v7 = *(v0 + 192);
    if (v7)
    {
      v8 = *(v0 + 136);
      v9 = *(v1 + 144);
      v10 = v7;
      specialized _GestureOutputs.detachIndirectOutputs()(v8, v9);

      *(v1 + 192) = 0;
      *(v1 + 200) = *v5;
      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
    }

    v11 = *(v1 + 168);
    if (v11)
    {
      (*(*v11 + 120))();
    }

    v12 = AGSubgraphGetGraph();
    v13 = AGSubgraphCreate();

    *(v1 + 192) = v13;
    v58 = v13;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v57 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v14 = *v61;
    v15 = *(v1 + 88);
    v71 = *(v1 + 72);
    v72 = v15;
    v73[0] = *(v1 + 104);
    *(v73 + 12) = *(v1 + 116);
    v16 = *(v1 + 24);
    v67 = *(v1 + 8);
    v68 = v16;
    v17 = *(v1 + 56);
    v69 = *(v1 + 40);
    v70 = v17;
    v18 = *(v1 + 88);
    v79 = *(v1 + 72);
    v80 = v18;
    v81[0] = *(v1 + 104);
    *(v81 + 12) = *(v1 + 116);
    v19 = *(v1 + 24);
    v75 = *(v1 + 8);
    v76 = v19;
    v20 = *(v1 + 56);
    v56 = v3;
    v77 = *(v1 + 40);
    v78 = v20;
    v21 = v3[14];
    v22 = v14;
    outlined init with copy of _GestureInputs(&v67, __src);
    v21(v64, &v75, v22, v3);
    __src[4] = v79;
    __src[5] = v80;
    __src[6] = v81[0];
    *(&__src[6] + 12) = *(v81 + 12);
    __src[0] = v75;
    __src[1] = v76;
    __src[2] = v77;
    __src[3] = v78;
    outlined destroy of _GestureInputs(__src);
    v23 = v64[1];
    LODWORD(v22) = v65;
    v25 = v64[0];
    v24 = HIDWORD(v64[0]);
    v26 = *(v1 + 136);
    v27 = *(v1 + 144);
    LODWORD(v21) = *(v1 + 152);
    v28 = LODWORD(v64[0]) | (HIDWORD(v64[0]) << 32);

    specialized _GestureOutputs.attachIndirectOutputs(_:)(v28, v23, v22, v26, v27, v21);

    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v1 + 200) = v25;

    *(v1 + 204) = v24;
    *(v1 + 184) = *AGGraphGetValue();

    *(v1 + 168) = v61;
    *(v1 + 176) = v56;
    v5 = MEMORY[0x1E698D3F8];
  }

  v29 = *v5;
  v30 = MEMORY[0x1E69E7CA8];
  if (*(v1 + 200) == *v5)
  {
    v31 = 0;
    v32 = 3;
  }

  else
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    v33 = AGGraphGetValue();
    v31 = *v33;
    v32 = v33[1];
  }

  if (*(v1 + 204) == v29)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, &lazy cache variable for type metadata for EmptyGesture<()>, v30 + 8, type metadata accessor for EmptyGesture);
    v35 = v34;
    _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(__src);
    v36 = swift_allocObject();
    memcpy((v36 + 16), __src, 0x121uLL);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 3;
    v43 = 3;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
  }

  else
  {
    v48 = AGGraphGetValue();
    __src[0] = *v48;
    v49 = v48[4];
    v51 = v48[1];
    v50 = v48[2];
    __src[3] = v48[3];
    __src[4] = v49;
    __src[1] = v51;
    __src[2] = v50;
    v52 = v48[8];
    v54 = v48[5];
    v53 = v48[6];
    __src[7] = v48[7];
    __src[8] = v52;
    __src[5] = v54;
    __src[6] = v53;
    v36 = *(&v52 + 1);
    v59 = __src[3];
    v60 = __src[2];
    v29 = DWORD1(__src[1]);
    v39 = DWORD2(__src[1]);
    v38 = __src[1];
    v43 = BYTE1(__src[1]);
    v35 = *(&__src[0] + 1);
    v37 = __src[0];
    outlined init with copy of GestureDebug.Data(__src, &v67);
    v44 = v59;
    v41 = v60;
    v40 = __src[4];
    v45 = __src[5];
    v46 = __src[6];
    v47 = __src[7];
    v42 = __src[8];
  }

  LOBYTE(__src[0]) = v31;
  BYTE1(__src[0]) = v32;
  *(__src + 2) = v62;
  WORD3(__src[0]) = v63;
  BYTE8(__src[0]) = v37;
  *(__src + 9) = v75;
  HIDWORD(__src[0]) = *(&v75 + 3);
  *&__src[1] = v35;
  BYTE8(__src[1]) = v38;
  BYTE9(__src[1]) = v43;
  HIDWORD(__src[1]) = v29;
  LODWORD(__src[2]) = v39;
  *(&__src[2] + 8) = v41;
  *(&__src[3] + 8) = v44;
  *(&__src[4] + 8) = v40;
  *(&__src[5] + 8) = v45;
  *(&__src[6] + 8) = v46;
  *(&__src[7] + 8) = v47;
  BYTE8(__src[8]) = v42;
  HIDWORD(__src[8]) = *(v64 + 3);
  *(&__src[8] + 9) = v64[0];
  *&__src[9] = v36;
  v73[0] = __src[6];
  v73[1] = __src[7];
  v73[2] = __src[8];
  v74 = v36;
  v69 = __src[2];
  v70 = __src[3];
  v71 = __src[4];
  v72 = __src[5];
  v67 = __src[0];
  v68 = __src[1];
  AGGraphSetOutputValue();

  return outlined destroy of SubviewsPhase.Value(__src);
}

double protocol witness for static StatefulRule.initialValue.getter in conformance SubviewsPhase@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI13SubviewsPhase33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV5ValueVSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v8;
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance SubviewsPhase()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance SubviewsPhase(uint64_t result)
{
  v1 = *(result + 168);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  return result;
}

uint64_t key path setter for _GraphInputs.gestureAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.gestureAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.gestureAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.gestureAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.GestureAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.GestureAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.GestureAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.gestureAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.gestureAccessibilityProvider.modify;
}

void _GraphInputs.gestureAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

unint64_t lazy protocol witness table accessor for type GestureResponderExclusionPolicy.SimultaneityConstraint and conformance GestureResponderExclusionPolicy.SimultaneityConstraint()
{
  result = lazy protocol witness table cache variable for type GestureResponderExclusionPolicy.SimultaneityConstraint and conformance GestureResponderExclusionPolicy.SimultaneityConstraint;
  if (!lazy protocol witness table cache variable for type GestureResponderExclusionPolicy.SimultaneityConstraint and conformance GestureResponderExclusionPolicy.SimultaneityConstraint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureResponderExclusionPolicy.SimultaneityConstraint and conformance GestureResponderExclusionPolicy.SimultaneityConstraint);
  }

  return result;
}

void type metadata accessor for _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()>()
{
  if (!lazy cache variable for type metadata for _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()>)
  {
    type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(255, &lazy cache variable for type metadata for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for ExclusiveGesture);
    lazy protocol witness table accessor for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>(&lazy protocol witness table cache variable for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>, &lazy cache variable for type metadata for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for ExclusiveGesture);
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyGesture<()> and conformance AnyGesture<A>()
{
  result = lazy protocol witness table cache variable for type AnyGesture<()> and conformance AnyGesture<A>;
  if (!lazy protocol witness table cache variable for type AnyGesture<()> and conformance AnyGesture<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGesture<()> and conformance AnyGesture<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GestureResponderExclusionPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GestureResponderExclusionPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for GestureResponderExclusionPolicy(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for GestureResponderExclusionPolicy(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AddGestureModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    *((v10 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithTake for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void type metadata accessor for _MapGesture<SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, ()>()
{
  if (!lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, ()>)
  {
    type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(255, &lazy cache variable for type metadata for SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for SimultaneousGesture);
    lazy protocol witness table accessor for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>(&lazy protocol witness table cache variable for type SimultaneousGesture<AnyGesture<()>, AnyGesture<()>> and conformance SimultaneousGesture<A, B>, &lazy cache variable for type metadata for SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, type metadata accessor for SimultaneousGesture);
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<AnyGesture<()>, AnyGesture<()>>, ()>);
    }
  }
}

void type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    v9[0] = v6;
    v9[1] = v6;
    v10 = lazy protocol witness table accessor for type AnyGesture<()> and conformance AnyGesture<A>();
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ExclusiveGesture<AnyGesture<()>, AnyGesture<()>> and conformance ExclusiveGesture<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Attribute<GesturePhase<()>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, a3, a4, a5);
    v6 = type metadata accessor for Attribute();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply(uint64_t a1, uint64_t a2)
{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1, a2, &lazy cache variable for type metadata for AnyGesture<()>, type metadata accessor for AnyGesture, closure #1 in Attribute.init<A>(_:));
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1, a2, &lazy cache variable for type metadata for GesturePhase<()>, type metadata accessor for GesturePhase, closure #1 in Attribute.init<A>(_:));
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_0(a1, a2, closure #1 in Attribute.init<A>(_:));
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, a3, MEMORY[0x1E69E7CA8] + 8, a4);
  return a5(a1, v11, v10, v9, a2);
}

unint64_t lazy protocol witness table accessor for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>()
{
  result = lazy protocol witness table cache variable for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>;
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GestureDebug.Value);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDebug.Value<()> and conformance GestureDebug.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>()
{
  result = lazy protocol witness table cache variable for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>;
  if (!lazy protocol witness table cache variable for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGestureInfo<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGestureInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGestureInfo<()> and conformance AnyGestureInfo<A>);
  }

  return result;
}

uint64_t outlined destroy of AnyGestureInfo<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI12GesturePhaseOyytGMaTm_1(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>()
{
  result = lazy protocol witness table cache variable for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>;
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GestureDebug.Value);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDebug.Value<CGFloat> and conformance GestureDebug.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>()
{
  result = lazy protocol witness table cache variable for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>;
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GestureDebug.Value);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDebug.Value<SpatialEvent> and conformance GestureDebug.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>()
{
  result = lazy protocol witness table cache variable for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>;
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GestureDebug.Value);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDebug.Value<TappableEvent> and conformance GestureDebug.Value<A>);
  }

  return result;
}

void _s7SwiftUI11Map2GestureVyAA13TappableEventVAA08ModifierD0VyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGAEGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()> and conformance _MapGesture<A, B>(a4, a5);
    v8 = type metadata accessor for Map2Gesture();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>()
{
  result = lazy protocol witness table cache variable for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>;
  if (!lazy protocol witness table cache variable for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for GestureDebug.Value<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GestureDebug.Value);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDebug.Value<Double> and conformance GestureDebug.Value<A>);
  }

  return result;
}

void type metadata accessor for Map<ResolvedStyledText, AnyGesture<()>>()
{
  if (!lazy cache variable for type metadata for Map<ResolvedStyledText, AnyGesture<()>>)
  {
    type metadata accessor for ResolvedStyledText();
    _s7SwiftUI12GesturePhaseOyytGMaTm_1(255, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<ResolvedStyledText, AnyGesture<()>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _MapGesture<ExclusiveGesture<AnyGesture<()>, AnyGesture<()>>, ()> and conformance _MapGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of GesturePhase<URL>(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for CombiningGestureViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for CombiningGestureViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = v3;
  return a1;
}

uint64_t assignWithTake for CombiningGestureViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void *assignWithCopy for SubviewsGesture(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;

  a1[1] = v3;
  return a1;
}

_OWORD *assignWithTake for SubviewsGesture(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;
  return a1;
}

void type metadata accessor for EventListener<SpatialEvent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SubviewsPhase and conformance SubviewsPhase()
{
  result = lazy protocol witness table cache variable for type SubviewsPhase and conformance SubviewsPhase;
  if (!lazy protocol witness table cache variable for type SubviewsPhase and conformance SubviewsPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsPhase and conformance SubviewsPhase);
  }

  return result;
}

void destroy for SubviewsPhase(uint64_t a1)
{

  v2 = *(a1 + 192);
}

uint64_t initializeWithCopy for SubviewsPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v6 = *(a2 + 96);
  v5 = *(a2 + 104);
  *(a1 + 96) = v6;
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 160);
  *(a1 + 160) = v7;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  v8 = *(a2 + 192);
  *(a1 + 192) = v8;
  *(a1 + 200) = *(a2 + 200);

  v9 = v6;

  v10 = v7;

  v11 = v8;
  return a1;
}

uint64_t assignWithCopy for SubviewsPhase(uint64_t a1, uint64_t a2)
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

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 160);
  v8 = *(a1 + 160);
  *(a1 + 160) = v7;
  v9 = v7;

  v10 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = v10;
  *(a1 + 184) = *(a2 + 184);
  v11 = *(a1 + 192);
  v12 = *(a2 + 192);
  *(a1 + 192) = v12;
  v13 = v12;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  return a1;
}

uint64_t assignWithTake for SubviewsPhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  v5 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 176) = v5;
  *(a1 + 184) = *(a2 + 184);
  v6 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t getEnumTagSinglePayload for SubviewsPhase(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t storeEnumTagSinglePayload for SubviewsPhase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for SubviewsPhase.Value(uint64_t a1)
{
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136));
}

uint64_t initializeWithCopy for SubviewsPhase.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v13 = *(a2 + 136);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v13);
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a1 + 136) = v13;
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithCopy for SubviewsPhase.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  v22 = *(a2 + 136);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v22);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  v20 = *(a1 + 136);
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a1 + 136) = v22;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithTake for SubviewsPhase.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 136);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v4;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t getEnumTagSinglePayload for SubviewsPhase.Value(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SubviewsPhase.Value(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _s7SwiftUI13SubviewsPhase33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV5ValueVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ContentPhase<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double static Optional<A>._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v5;
  v35 = *(a2 + 96);
  v36 = *(a2 + 112);
  v6 = *(a2 + 16);
  v29 = *a2;
  v30 = v6;
  v7 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v7;
  v8 = *(a2 + 120);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for AnyGesture();
  LODWORD(v17) = v4;
  v10 = type metadata accessor for Optional<A>.Child();
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(&v17, v9, v10, WitnessTable, &v26);
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v25 = v8;
  static AnyGesture._makeGesture(gesture:inputs:)(&v26, &v17, v27);
  if ((v8 & 8) != 0 && (!swift_conformsToProtocol2() || !v9))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v26) = v12;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v25 = v8;
    type metadata accessor for _GestureOutputs();
    v13 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v9, &v26, 0x100000000, &v17, v13 | ((HIDWORD(v13) & 1) << 32), 0x100000000);
  }

  v14 = v27[1];
  v15 = v28;
  result = *v27;
  *a3 = v27[0];
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  return result;
}

uint64_t Optional<A>.Child.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t Optional<A>.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  Optional<A>.Child.gesture.getter(&v15[-v7]);
  v16 = a2;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for AnyGesture();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.Child.value.getter, v15, MEMORY[0x1E69E73E0], v10, v11, &v18);
  (*(v6 + 8))(v8, v5);
  result = v18;
  if (!v18)
  {
    v13 = type metadata accessor for Optional<A>.Empty();
    WitnessTable = swift_getWitnessTable();
    return specialized AnyGesture.init<A>(_:)(WitnessTable, AssociatedTypeWitness, v13);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance A?<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Optional<A>.Child.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t static Optional<A>.Empty._makeGesture(gesture:inputs:)@<X0>(uint64_t a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - v4;
  swift_storeEnumTagMultiPayload();
  v11 = v2;
  v6 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in Attribute.init(value:), v10, v2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  (*(v3 + 8))(v5, v2);
  return _GestureOutputs.init(phase:)(v9[3], a1);
}

uint64_t partial apply for closure #1 in Optional<A>.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = specialized AnyGesture.init<A>(_:)(a1, AssociatedTypeWitness, v5);
  *a2 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for A?<A>.Empty(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void _FrameLayout.placement(of:in:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v24[0] = *a2;
  v24[1] = v5;
  v7 = *a2;
  v6 = a2[1];
  v24[2] = a2[2];
  v8 = *a1;
  v9 = *(a1 + 8);
  v25 = *(a2 + 48);
  v20 = v7;
  v21 = v6;
  v22 = a2[2];
  v23 = *(a2 + 48);
  PlacementContext.proposedSize.getter(v16);
  if (*(v3 + 8))
  {
    v10 = v16;
  }

  else
  {
    v10 = v3;
  }

  v11 = *v10;
  v12 = *(v3 + 8) & v17;
  v13 = (v3 + 16);
  v14 = *(v3 + 24);
  if (v14)
  {
    v13 = &v18;
  }

  v15 = *v13;
  LOBYTE(v20) = *(v3 + 8) & v17;
  v16[0] = v14 & v19;
  specialized FrameLayoutCommon.commonPlacement(of:in:childProposal:)(v8, v9, v24, v11, v12, v15, v14 & v19, a3);
}

uint64_t View.frame()(uint64_t a1)
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  specialized _FrameLayout.init(width:height:alignment:)(0.0, 1, 0.0, 1, static Alignment.center, *(&static Alignment.center + 1), v3);
  return View.modifier<A>(_:)(v3, a1, &type metadata for _FrameLayout);
}

Swift::Int AccessibilityLabelStorage.Placement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t AccessibilityLabelStorage.texts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

SwiftUI::AccessibilityLabelStorage __swiftcall AccessibilityLabelStorage.init(texts:placement:)(Swift::OpaquePointer texts, SwiftUI::AccessibilityLabelStorage::Placement placement)
{
  v3 = *placement;
  *v2 = texts;
  *(v2 + 8) = v3;
  result.texts = texts;
  result.placement = placement;
  return result;
}

BOOL AccessibilityLabelStorage.removing(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = specialized Collection<>.firstIndex(of:)(a1, a2, a3 & 1, a4, *v4);
  v7 = v6;
  if ((v6 & 1) == 0)
  {
    v8 = specialized Array.remove(at:)(v5);
    outlined consume of Text.Storage(v8, v10, v9 & 1);
  }

  return (v7 & 1) == 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityLabelStorage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(*a1, *a2) & (v2 == v3);
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabelStorage.Placement and conformance AccessibilityLabelStorage.Placement()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabelStorage.Placement and conformance AccessibilityLabelStorage.Placement;
  if (!lazy protocol witness table cache variable for type AccessibilityLabelStorage.Placement and conformance AccessibilityLabelStorage.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabelStorage.Placement and conformance AccessibilityLabelStorage.Placement);
  }

  return result;
}

SwiftUI::CachedEnvironment::ID __swiftcall CachedEnvironment.ID.init()()
{
  v1 = v0;
  result.base.value = AGMakeUniqueID();
  v1->base.value = result.base.value;
  return result;
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA023ContainerContextStylingC7EnabledV_Ttg5()
{
  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v4[3] = &type metadata for ContainerContextStylingFeatureEnabled.Key;
    v4[4] = lazy protocol witness table accessor for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key();
    v2 = swift_allocObject();
    v4[0] = v2;
    *(v2 + 16) = "SwiftUI";
    *(v2 + 24) = 7;
    *(v2 + 32) = 2;
    *(v2 + 40) = "containerContextStylingEnabled";
    *(v2 + 48) = 30;
    *(v2 + 56) = 2;
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return v1 & 1;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v1 = 0;
  return v1 & 1;
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA026EndedGestureWaitsForActiveC0V_Ttg5Tm()
{
  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    v0 = 1;
  }

  else
  {
    swift_beginAccess();
    v0 = static GestureContainerFeature.isEnabledOverride;
    if (static GestureContainerFeature.isEnabledOverride == 2)
    {
      if (one-time initialization token for envValue != -1)
      {
        swift_once();
      }

      v0 = static GestureContainerFeature.envValue;
      if (static GestureContainerFeature.envValue == 2)
      {
        if (one-time initialization token for userDefaultsValue != -1)
        {
          swift_once();
        }

        v0 = static GestureContainerFeature.userDefaultsValue;
        if (static GestureContainerFeature.userDefaultsValue == 2)
        {
          v5 = &type metadata for GestureContainerFeature.IOSFeature;
          v6 = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
          v1 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v4);
          if (v1)
          {
            if (one-time initialization token for v6 != -1)
            {
              swift_once();
            }

            v2 = static Semantics.v6;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C)
            {
              v0 = dyld_program_sdk_at_least();
            }

            else
            {
              v0 = static Semantics.forced >= v2;
            }
          }

          else
          {
            v0 = 0;
          }
        }
      }
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA016GestureContainerC0V_Ttg5()
{
  swift_beginAccess();
  v0 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride == 2)
  {
    swift_beginAccess();
    if (static CoreTesting.isRunning == 1)
    {
LABEL_3:
      v0 = 0;
      return v0 & 1;
    }

    if (one-time initialization token for envValue != -1)
    {
      swift_once();
    }

    v0 = static GestureContainerFeature.envValue;
    if (static GestureContainerFeature.envValue == 2)
    {
      if (one-time initialization token for userDefaultsValue != -1)
      {
        swift_once();
      }

      v0 = static GestureContainerFeature.userDefaultsValue;
      if (static GestureContainerFeature.userDefaultsValue == 2)
      {
        v5 = &type metadata for GestureContainerFeature.IOSFeature;
        v6 = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
        v1 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v4);
        if ((v1 & 1) == 0)
        {
          goto LABEL_3;
        }

        if (one-time initialization token for v6 != -1)
        {
          swift_once();
        }

        v2 = static Semantics.v6;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C)
        {
          v0 = dyld_program_sdk_at_least();
        }

        else
        {
          v0 = static Semantics.forced >= v2;
        }
      }
    }
  }

  return v0 & 1;
}

uint64_t CachedEnvironment.AnimatedFrame.animatedPosition()()
{
  if (*(v0 + 32) != 1)
  {
    return *(v0 + 28);
  }

  result = AGGraphCreateOffsetAttribute2();
  *(v0 + 28) = result;
  *(v0 + 32) = 0;
  return result;
}

uint64_t CachedEnvironment.AnimatedFrame.animatedSize()()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = AGGraphCreateOffsetAttribute2();
  *(v0 + 36) = result;
  *(v0 + 40) = 0;
  return result;
}

uint64_t CachedEnvironment.AnimatedFrame.animatedCGSize()()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 44);
  }

  result = AGGraphCreateOffsetAttribute2();
  *(v0 + 44) = result;
  *(v0 + 48) = 0;
  return result;
}

int32x2_t CachedEnvironment.AnimatedFrame.init(inputs:position:size:pixelLength:animatedFrame:environment:)@<D0>(int32x2_t *a1@<X0>, __int32 a2@<W1>, __int32 a3@<W2>, __int32 a4@<W3>, __int32 a5@<W4>, int32x2_t *a6@<X8>)
{
  v12 = a1[1].i32[0];

  a6->i32[0] = a2;
  a6->i32[1] = a3;
  a6[1].i32[0] = a4;
  a6[1].i32[1] = v12;
  result = vrev64_s32(a1[3]);
  a6[2] = result;
  a6[3].i32[0] = a5;
  a6[3].i32[1] = 0;
  a6[4].i8[0] = 1;
  a6[4].i32[1] = 0;
  a6[5].i8[0] = 1;
  a6[5].i32[1] = 0;
  a6[6].i8[0] = 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvedShapeStyles()
{
  Hasher.init(_seed:)();
  ResolvedShapeStyles.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvedShapeStyles()
{
  Hasher.init(_seed:)();
  ResolvedShapeStyles.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17ArchivedViewInputV_Tt2g5@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(a1, v8);
  if (result)
  {
    v5 = (result + 72);
    v6 = (result + 73);
  }

  else
  {
    v5 = &static ArchivedViewInput.defaultValue;
    v6 = &static ArchivedViewInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      result = swift_once();
    }
  }

  v7 = *v6;
  *a2 = *v5;
  a2[1] = v7;
  return result;
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, v7);
  if (v3)
  {
    v4 = *(v3 + 18);
    v5 = *(v3 + 76);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 32);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LayoutAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027LayoutAccessibilityProviderV033_BD5DB579992638706C312416A6669149LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.LayoutAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5Tm@<X0>(Swift::Int hashValue@<X2>, uint64_t a2@<X0>, uint64_t (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a2);
  if (result)
  {
    v8 = *(result + 72);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(a1, v6);
  if (result)
  {
    v5 = *(result + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
  updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(a1, v5);
  if (updated)
  {
    return *(updated + 72);
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v4 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v4;
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17StyleContextInputV_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for StyleContextInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17StyleContextInputV_Tt0B5(a1, v8);
  if (result)
  {
    v5 = (result + 72);
    v6 = (result + 80);
  }

  else
  {
    v5 = &static StyleContextInput.defaultValue;
    v6 = &static StyleContextInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      result = swift_once();
    }
  }

  v7 = *v6;
  *a2 = *v5;
  a2[1] = v7;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V027DisabledPageScrollAnimationF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  v8 = a5(a1);
  if (v8)
  {
    return *(v8 + 72);
  }

  else
  {
    return 2;
  }
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE030GlassContainerSettingsOverrideV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(a1, *&v8[0]);
  if (v5)
  {

    memcpy(a2, v5 + 9, 0x149uLL);
  }

  else
  {
    _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOi0_(v8);
    *&v7[119] = v8[7];
    *&v7[103] = v8[6];
    *&v7[55] = v8[3];
    *&v7[39] = v8[2];
    *&v7[135] = v9[0];
    *&v7[144] = *(v9 + 9);
    *&v7[71] = v8[4];
    *&v7[87] = v8[5];
    *&v7[7] = v8[0];
    *&v7[23] = v8[1];
    *(a2 + 185) = *&v7[96];
    *(a2 + 201) = *&v7[112];
    *(a2 + 217) = *&v7[128];
    *(a2 + 233) = *&v7[144];
    *(a2 + 121) = *&v7[32];
    *(a2 + 137) = *&v7[48];
    *(a2 + 153) = *&v7[64];
    *(a2 + 169) = *&v7[80];
    *(a2 + 89) = *v7;
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 1;
    *(a2 + 105) = *&v7[16];
    *(a2 + 40) = 0;
    a2[18] = 0u;
    a2[19] = 0u;
    a2[16] = 0u;
    a2[17] = 0u;
    *(a2 + 328) = 1;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE033UseDefaultGlassContainerAnimationV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, char *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 2;
  }

  *a6 = v11;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(a1, v8);
  if (!v5)
  {
    return _s7SwiftUI22EnvironmentPropertyKeyV12defaultValue0G0QzvgZAA0C6ValuesVAAE02__E22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLV_Tt0g5(a2);
  }

  v6 = v5[12];
  *a2 = v5[9];
  *(a2 + 8) = *(v5 + 5);
  *(a2 + 24) = v6;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(a1, v9);
  if (result)
  {
    v6 = *(result + 9);
    v7 = *(result + 22) | (*(result + 92) << 32);
    v8 = *(result + 93);
  }

  else
  {
    v7 = 0;
    v6 = 0uLL;
    v8 = 1;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 20) = BYTE4(v7);
  *(a2 + 21) = v8;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(a1, v13);
  if (result)
  {
    v6 = result[9];
    v7 = result[10];
    v8 = result[11];
    v9 = result[12];
    v10 = result[13];
    v11 = result[14];
    v12 = result[15];
    result = outlined copy of HoverEffectContext?(v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  a2[5] = v11;
  a2[6] = v12;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(a1, v12);
  if (v5)
  {
    v6 = (v5 + 9);
    v7 = v5 + 10;
    v8 = v5 + 11;
  }

  else
  {
    v6 = &static EnvironmentValues.HoverEffectStateKey.defaultValue;
    v7 = &qword_1EAB144B0;
    v8 = &qword_1EAB144B8;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  v9 = *v7;
  v10 = *v8;
  *a2 = *v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(a1, v7);
  if (result)
  {
    v6 = *(result + 72);
  }

  else
  {
    v6 = 10;
  }

  *a2 = v6;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021PresentingContextMenuV033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V18_glassEffectHidden33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028GlassEffectBackdropGroupNameV033_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(a1, v6);
  if (!v3)
  {
    return 0;
  }

  v4 = v3[9];

  return v4;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
    v12 = *(result + 80);
    v13 = *(result + 88);
    v14 = *(result + 96);
    v15 = *(result + 104);
    result = outlined copy of OpenURLAction?(v11, v12, v13, v14, v15);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 255;
  }

  *a6 = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 32) = v15;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt0B5(a1, v4);
  if (result)
  {
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV013ContentShapesV033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt0B5(a1, v8);
  if (v5)
  {
    v6 = v5 + 9;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v6 = &static EnvironmentValues.ContentShapesKey.defaultValue;
  }

  *a2 = *v6;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(a1, v7);
  if (result)
  {
    v6 = *(result + 72);
  }

  else
  {
    v6 = 5;
  }

  *a2 = v6;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE026DefaultSeparatorShapeStyleV033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt0B5(a1, v5);
  if (v3)
  {
    return *(v3 + 18);
  }

  else
  {
    return 3;
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV040AccessibilitySpeechAnnouncementsPriorityF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, char *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 3;
  }

  *a6 = v11;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE017RenderingRootViewV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(a1, v7);
  if (v5)
  {
    return _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOcTm_0((v5 + 9), a2, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, type metadata accessor for WeakBox, _sypSgMaTm_8);
  }

  swift_unknownObjectWeakInit();
  return swift_unknownObjectWeakAssign();
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO11AppearsMainVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, _BYTE *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 0;
  }

  *a6 = v11;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, _BYTE *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 0;
  }

  *a6 = v11;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  if (_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(a1, v6))
  {
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010InTouchBarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021IsLowPowerModeEnabledV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t specialized closure #1 in PropertyList.subscript.getter(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t, Swift::Int), uint64_t (*a4)(void))
{
  BloomFilter.init(hashValue:)(hashValue);
  v8 = a3(a1, hashValue);
  if (v8)
  {
    return *(v8 + 72);
  }

  else
  {
    return a4() & 1;
  }
}

uint64_t specialized closure #1 in PropertyList.subscript.getter(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t, Swift::Int))
{
  BloomFilter.init(hashValue:)(hashValue);
  v6 = a3(a1, hashValue);
  if (v6)
  {
    active = *(v6 + 72);
  }

  else
  {
    active = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA026EndedGestureWaitsForActiveC0V_Ttg5Tm();
  }

  return active & 1;
}

{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a1, hashValue);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

char *specialized closure #1 in PropertyList.subscript.getter(void *a1, Swift::Int hashValue)
{
  BloomFilter.init(hashValue:)(hashValue);
  v4 = specialized find1<A>(_:key:filter:)(a1, hashValue, v6);
  if (v4)
  {
    return *(v4 + 72);
  }

  swift_beginAccess();
  if (static ResettableLazyLayoutsFeature.isEnabledForTesting)
  {
    return 1;
  }

  result = getenv("XCODE_RUNNING_FOR_PREVIEWS");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

uint64_t specialized static ResolvedShapeStyles.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].u8[4] == a2[1].u8[4])
  {
    v5 = a1[1].u8[5];
    v6 = a1[1].u8[6];
    v7 = a2[1].u8[5];
    if (v5 == 3)
    {
      if (v7 != 3)
      {
        return 0;
      }
    }

    else if (v7 == 3 || v5 != v7)
    {
      return 0;
    }

    return v6 ^ a2[1].u8[6] ^ 1u;
  }

  return result;
}

uint64_t assignWithCopy for CachedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithTake for CachedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for CachedEnvironment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CachedEnvironment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy23_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedShapeStyles(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 23))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 22);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedShapeStyles(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      *(result + 22) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for Map<EnvironmentValues, GlassEffectBackdropObserver?>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, GlassEffectBackdropObserver?>)
  {
    _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1(255, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, GlassEffectBackdropObserver?>);
    }
  }
}

unint64_t type metadata accessor for GestureConstantsProvider.Type()
{
  result = lazy cache variable for type metadata for GestureConstantsProvider.Type;
  if (!lazy cache variable for type metadata for GestureConstantsProvider.Type)
  {
    type metadata accessor for GestureConstantsProvider();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GestureConstantsProvider.Type);
  }

  return result;
}

unint64_t type metadata accessor for GestureConstantsProvider()
{
  result = lazy cache variable for type metadata for GestureConstantsProvider;
  if (!lazy cache variable for type metadata for GestureConstantsProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GestureConstantsProvider);
  }

  return result;
}

void type metadata accessor for Map<EnvironmentValues, GestureConstantsProvider.Type?>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, GestureConstantsProvider.Type?>)
  {
    _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1(255, &lazy cache variable for type metadata for GestureConstantsProvider.Type?, type metadata accessor for GestureConstantsProvider.Type, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, GestureConstantsProvider.Type?>);
    }
  }
}

void type metadata accessor for Map<EnvironmentValues, UserInterfaceSizeClass?>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, UserInterfaceSizeClass?>)
  {
    _sypSgMaTm_8(255, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, UserInterfaceSizeClass?>);
    }
  }
}

void type metadata accessor for Map<EnvironmentValues, MaterialBackdropProxy?>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, MaterialBackdropProxy?>)
  {
    _sypSgMaTm_8(255, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, MaterialBackdropProxy?>);
    }
  }
}

void _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Map<EnvironmentValues, HoverEffectContext?>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, HoverEffectContext?>)
  {
    _sypSgMaTm_8(255, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, HoverEffectContext?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, GlassEffectBackdropObserver?> and conformance Map<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SDFLayer.update(list:size:style:options:in:backdropGroupID:)(uint64_t a1, unint64_t a2, CGFloat a3, CGFloat a4, uint64_t a5, double *a6, uint64_t a7)
{
  v8 = isEscapingClosureAtFileLocation;
  v10 = a2;
  v13 = *a1;
  v106 = *(a1 + 8);
  v105 = *(a1 + 12);
  v14 = *a6;
  SDFLayer.beginUpdatingStyle(_:shapeBounds:)(a2, 0.0, 0.0, a3, a4);
  v15 = COERCE_DOUBLE(SDFStyle.distanceRange.getter(v10));
  v17 = v16;
  LODWORD(isEscapingClosureAtFileLocation) = v18;
  v19 = SDFStyle.needsDistanceGradient.getter(v10);
  v107 = v13;
  if (!*(v13 + 16))
  {
    goto LABEL_39;
  }

  v20 = v19;
  v104 = isEscapingClosureAtFileLocation;
  SDFLayer.ensureSDFElement(at:)(0);
  v21 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets;
  swift_beginAccess();
  if (!*(*(v8 + v21) + 16) || (isEscapingClosureAtFileLocation & 1) != 0)
  {
    goto LABEL_39;
  }

  v22 = v15;
  v23 = v17;
  v24 = (v8 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange);
  v25 = *(v8 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange + 16);
  v100 = v10;
  v101 = a7;
  v102 = v17;
  v103 = v15;
  if (v25)
  {
    goto LABEL_18;
  }

  if (*v24 != v15 || v24[1] != v17)
  {
    goto LABEL_18;
  }

  if (*(v8 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization) != 0.0)
  {
    goto LABEL_18;
  }

  [v8 contentsScale];
  if (v14 != v27)
  {
    goto LABEL_18;
  }

  v28 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
  result = swift_beginAccess();
  v30 = *&v28[v8];
  if (!*(v30 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v32 = *(v30 + 32);
  v31 = *(v30 + 40);
  v34 = *(v30 + 48);
  v33 = *(v30 + 56);
  LODWORD(isEscapingClosureAtFileLocation) = *(v30 + 64);
  if (isEscapingClosureAtFileLocation > 0xF7)
  {
    v108 = a4;

    outlined copy of SDFLayer.SDFElement.Contents?(v32, v31, v34, v33, isEscapingClosureAtFileLocation);
    outlined consume of SDFLayer.SDFElement.Contents?(v32, v31, v34, v33, isEscapingClosureAtFileLocation);
    outlined consume of SDFLayer.SDFElement.Contents?(v107, v106 | (v105 << 32), *&a3, *&a4, 0x80u);
    v17 = v102;
    v15 = v103;
    goto LABEL_18;
  }

  *&v113 = *(v30 + 32);
  *(&v113 + 1) = v31;
  v114 = v34;
  v115 = v33;
  LOBYTE(v116) = isEscapingClosureAtFileLocation;
  v108 = *&v28;
  *&v109 = v107;
  *(&v109 + 1) = v106 | (v105 << 32);
  v110 = *&a3;
  v111 = *&a4;
  v112 = 0x80;

  outlined copy of SDFLayer.SDFElement.Contents?(v32, v31, v34, v33, isEscapingClosureAtFileLocation);
  outlined copy of SDFLayer.SDFElement.Contents?(v32, v31, v34, v33, isEscapingClosureAtFileLocation);
  v35 = specialized static SDFLayer.SDFElement.Contents.== infix(_:_:)(&v113, &v109);
  outlined consume of SDFLayer.SDFElement.Contents(v109, *(&v109 + 1), v110, v111, v112);
  outlined consume of SDFLayer.SDFElement.Contents(v113, *(&v113 + 1), v114, v115, v116);
  result = outlined consume of SDFLayer.SDFElement.Contents?(v32, v31, v34, v33, isEscapingClosureAtFileLocation);
  v10 = v100;
  a7 = v101;
  v17 = v102;
  v15 = v103;
  LOBYTE(isEscapingClosureAtFileLocation) = v104;
  if ((v35 & 1) == 0)
  {
LABEL_18:
    v120.origin.x = 0.0;
    v120.origin.y = 0.0;
    v120.size.width = a3;
    v94 = a4;
    v120.size.height = a4;
    v121 = CGRectInset(v120, -v23, -v23);
    v122 = CGRectIntegral(v121);
    x = v122.origin.x;
    y = v122.origin.y;
    width = v122.size.width;
    height = v122.size.height;
    v41 = v14 * (v23 - v22);
    if (v41 < 64.0)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    if (v41 >= 16.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v44 = EnvironmentValues.init()(v119);
    v95 = &v92;
    v98 = v119[1];
    v99 = v119[0];
    v45 = dword_18DDF8998[v43];
    MEMORY[0x1EEE9AC00](v44);
    v108 = COERCE_DOUBLE(v86);
    v86[2] = v8;
    *&v86[3] = x;
    *&v86[4] = y;
    *&v86[5] = width;
    *&v86[6] = height;
    *&v86[7] = v15;
    *&v86[8] = v17;
    v93 = v20 & 1;
    v87 = v20 & 1;
    v88 = v43;
    v89 = v107;
    v90 = v106;
    v91 = v105;
    if ([objc_opt_self() sharedDefaultDevice])
    {
      v46 = swift_unknownObjectRetain();
    }

    else
    {
      v46 = [objc_opt_self() sharedDevice];
    }

    v97 = v46;
    type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDACA80;
    v48 = *MEMORY[0x1E69C71B8];
    *(inited + 32) = *MEMORY[0x1E69C71B8];
    v49 = MEMORY[0x1E69E7DE0];
    *(inited + 40) = v14;
    v50 = *MEMORY[0x1E69C7198];
    *(inited + 64) = v49;
    *(inited + 72) = v50;
    LODWORD(v113) = v45;
    WORD2(v113) = 768;
    DWORD2(v113) = 1027;
    BYTE12(v113) = 3;
    v51 = RasterizationOptions.resolvedColorMode.getter();
    v52 = MEMORY[0x1E69E72F0];
    *(inited + 80) = v51;
    v53 = MEMORY[0x1E69E6370];
    v54 = *MEMORY[0x1E69C71A8];
    *(inited + 120) = 1;
    v55 = MEMORY[0x1E69C7188];
    *(inited + 104) = v52;
    *(inited + 112) = v54;
    v56 = *v55;
    *(inited + 144) = v53;
    *(inited + 152) = v56;
    *(inited + 184) = v52;
    *(inited + 160) = 0;
    v57 = v48;
    v58 = v50;
    v59 = v54;
    v60 = v56;
    v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    type metadata accessor for (RBImageRendererProperty, Any)();
    swift_arrayDestroy();
    v62 = *MEMORY[0x1E69C71C0];
    v115 = MEMORY[0x1E69E6448];
    LODWORD(v113) = 2139095040;
    outlined init with take of Any(&v113, &v109);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v62, isUniquelyReferenced_nonNull_native);
    type metadata accessor for RBImageRendererProperty(0);
    lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v65 = swift_allocObject();
    v66 = v98;
    *(v65 + 2) = v99;
    *(v65 + 3) = v66;
    v67 = v108;
    *(v65 + 4) = partial apply for closure #1 in SDFLayer.update(list:size:style:options:in:backdropGroupID:);
    v65[5] = v67;
    v68 = swift_allocObject();
    *(v68 + 16) = closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:)partial apply;
    *(v68 + 24) = v65;
    v116 = thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ()partial apply;
    v117 = v68;
    *&v113 = MEMORY[0x1E69E9820];
    *(&v113 + 1) = 1107296256;
    v114 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
    v115 = &block_descriptor_23_1;
    v69 = _Block_copy(&v113);

    v108 = COERCE_DOUBLE([v97 renderImageInRect:isa options:v69 renderer:{0.0, 0.0, width, height}]);
    swift_unknownObjectRelease();

    _Block_release(v69);
    swift_unknownObjectRelease();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v70 = *(*(v8 + v21) + 16);
      if (!v70)
      {
LABEL_34:
        v21 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
        swift_beginAccess();
        isEscapingClosureAtFileLocation = *(v8 + v21);

        v77 = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + v21) = isEscapingClosureAtFileLocation;
        if (v77)
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }

      v71 = 0;
      v72 = *MEMORY[0x1E6979F20];
      v73 = 32;
      v74 = *MEMORY[0x1E6979F30];
      while (1)
      {
        swift_beginAccess();
        v75 = *(v8 + v21);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + v21) = v75;
        if ((v76 & 1) == 0)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew()(v75);
          *(v8 + v21) = v75;
        }

        if (v71 >= *(v75 + 2))
        {
          break;
        }

        ++v71;
        isEscapingClosureAtFileLocation = SDFLayer.SDFSubset.elementLayer(at:)(0);
        *(v8 + v21) = v75;
        swift_endAccess();
        [isEscapingClosureAtFileLocation setPosition_];
        [isEscapingClosureAtFileLocation setBounds_];
        [isEscapingClosureAtFileLocation setContentsScale_];
        [isEscapingClosureAtFileLocation setContents_];
        [isEscapingClosureAtFileLocation setContentsZeroValueDistance_];
        [isEscapingClosureAtFileLocation setContentsOneValueDistance_];
        [isEscapingClosureAtFileLocation setMode_];
        [isEscapingClosureAtFileLocation setOperation_];
        [isEscapingClosureAtFileLocation setHidden_];

        v73 += 40;
        if (v70 == v71)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_42:
    isEscapingClosureAtFileLocation = specialized _ArrayBuffer._consumeAndCreateNew()(isEscapingClosureAtFileLocation);
    *(v8 + v21) = isEscapingClosureAtFileLocation;
LABEL_35:
    v78 = v94;
    if (*(isEscapingClosureAtFileLocation + 16))
    {
      v79 = *(isEscapingClosureAtFileLocation + 32);
      v80 = *(isEscapingClosureAtFileLocation + 40);
      v81 = v106 | (v105 << 32);
      v82 = *(isEscapingClosureAtFileLocation + 48);
      v83 = *(isEscapingClosureAtFileLocation + 56);
      *(isEscapingClosureAtFileLocation + 32) = v107;
      *(isEscapingClosureAtFileLocation + 40) = v81;
      *(isEscapingClosureAtFileLocation + 48) = a3;
      *(isEscapingClosureAtFileLocation + 56) = v78;
      v84 = *(isEscapingClosureAtFileLocation + 64);
      *(isEscapingClosureAtFileLocation + 64) = 0x80;
      *(v8 + v21) = isEscapingClosureAtFileLocation;
      swift_endAccess();
      outlined consume of SDFLayer.SDFElement.Contents?(v79, v80, v82, v83, v84);
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + v21) = isEscapingClosureAtFileLocation;
      if (result)
      {
LABEL_37:
        v10 = v100;
        a7 = v101;
        v17 = v102;
        v15 = v103;
        if (*(isEscapingClosureAtFileLocation + 16))
        {
          *(isEscapingClosureAtFileLocation + 65) = v93;
          *(v8 + v21) = isEscapingClosureAtFileLocation;
          swift_endAccess();

          LOBYTE(isEscapingClosureAtFileLocation) = v104;
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = result;
    goto LABEL_37;
  }

  v36 = *(v8 + *&v108);
  if (*(v36 + 16))
  {
    if ((v20 & 1) == *(v36 + 65))
    {
LABEL_39:
      [v8 setContentsScale_];
      v85 = (v8 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange);
      *v85 = v15;
      v85[1] = v17;
      *(v85 + 16) = isEscapingClosureAtFileLocation & 1;
      *(v8 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization) = 0;
      *&v113 = v14;
      return SDFLayer.finishUpdatingStyle(_:in:elementCount:backdropGroupID:)(v10, &v113, 1, a7);
    }

    goto LABEL_18;
  }

LABEL_47:
  __break(1u);
  return result;
}