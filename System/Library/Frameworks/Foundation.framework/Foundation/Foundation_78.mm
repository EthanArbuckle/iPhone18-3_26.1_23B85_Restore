uint64_t Duration.TimeFormatStyle.grouping.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Duration.TimeFormatStyle.grouping.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Duration.TimeFormatStyle.grouping.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Duration.TimeFormatStyle.Attributed(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return Duration.TimeFormatStyle.grouping.modify;
}

uint64_t Duration.TimeFormatStyle.grouping(_:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v3, a3, a2);
  result = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t Duration.TimeFormatStyle.Attributed.subscript.getter(uint64_t a1)
{
  return Duration.TimeFormatStyle.Attributed.subscript.getter(a1);
}

{
  return Duration.TimeFormatStyle.Attributed.subscript.getter(a1);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v5 - v2;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v1, &v5 - v2, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  swift_getAtKeyPath();
  return outlined destroy of Duration.TimeFormatStyle.Pattern.Fields(v3, type metadata accessor for Duration.TimeFormatStyle);
}

uint64_t Duration.TimeFormatStyle.Attributed.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  specialized Duration.TimeFormatStyle.Attributed.subscript.setter(a1);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

void (*Duration.TimeFormatStyle.Attributed.subscript.modify(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *a2;
  v10 = MEMORY[0x1E69E6CE8];
  v11 = *MEMORY[0x1E69E6CE8];
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
    v11 = *v10;
  }

  else
  {
    v12 = malloc(*(*(*(*a2 + *MEMORY[0x1E69E6CE8]) - 8) + 64));
  }

  v8[2] = v12;
  v13 = *(v9 + v11 + 8);
  v8[3] = v13;
  v14 = *(v13 - 8);
  v8[4] = v14;
  v15 = *(v14 + 64);
  if (v6)
  {
    v8[5] = swift_coroFrameAlloc();
    v8[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v15);
    v8[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v8[7] = v16;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v3, v12, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  swift_getAtKeyPath();
  outlined destroy of Duration.TimeFormatStyle.Pattern.Fields(v12, type metadata accessor for Duration.TimeFormatStyle);
  return Duration.TimeFormatStyle.Attributed.subscript.modify;
}

void Duration.TimeFormatStyle.Attributed.subscript.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[4] + 16);
  v4((*a1)[6], v3[7], v3[3]);
  v5 = v3[6];
  v17 = v3[7];
  v7 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v9 = v3[1];
  if (a2)
  {
    v10 = v3[5];
    v11 = v3[3];
    v4(v10, v5, v11);
    v12 = v5;
    outlined init with take of Duration.TimeFormatStyle.Pattern(v9, v8, type metadata accessor for Duration.TimeFormatStyle.Attributed);
    swift_setAtWritableKeyPath();
    v13 = *(v7 + 8);
    v13(v5, v11);
    outlined init with take of Duration.TimeFormatStyle.Pattern(v8, v9, type metadata accessor for Duration.TimeFormatStyle.Attributed);
    v14 = v17;
    v15 = v11;
    v6 = v10;
    v13(v17, v15);
  }

  else
  {
    v16 = v3[3];
    outlined init with take of Duration.TimeFormatStyle.Pattern(v3[1], v3[2], type metadata accessor for Duration.TimeFormatStyle.Attributed);
    v12 = v5;
    swift_setAtWritableKeyPath();
    v14 = v17;
    (*(v7 + 8))(v17, v16);
    outlined init with take of Duration.TimeFormatStyle.Pattern(v8, v9, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  }

  free(v14);
  free(v12);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t Duration.TimeFormatStyle.Attributed.discreteInput(before:)(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v45 = a4;
  v51 = a3;
  v52 = a2;
  v50 = a1;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v44 - v9;
  v10 = type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v44 - v14);
  v16 = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for Duration.TimeFormatStyle(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v4, v24, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  v25 = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  v26 = *(v25 + 24);
  v24[*(v25 + 20)] = 0;
  v27 = *(v25 + 24);
  v46 = *(v4 + v26);
  *&v24[v27] = v46;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v24, v21, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v21, v15, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  v48 = v10;
  if (swift_getEnumCaseMultiPayload())
  {
    v28 = *v15;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
    swift_unknownObjectRetain();
    static Duration.interval(fractionalSecondsLength:)(v28);
    v53 = 1;
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    v30 = static Duration.* infix<A>(_:_:)();
    v32 = v31;
    v33 = *(v6 + 8);
    v33(v15 + v29, v5);
  }

  else
  {
    v33 = *(v6 + 8);
    swift_unknownObjectRetain();
    v33(v15, v5);
    v30 = 0x40AAD21B3B700000;
    v32 = 3;
  }

  v34 = v47;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v24, v18, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v18, v12, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  if (swift_getEnumCaseMultiPayload())
  {
    v12 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
  }

  v35 = *(v6 + 32);
  v36 = v49;
  v35(v49, v12, v5);
  v35(v34, v36, v5);
  v37 = static Duration.bound(for:in:countingDown:roundingRule:)(v50, v52, v30, v32, v51 & 1, v34);
  v39 = v38;
  LOBYTE(v36) = v40;
  v33(v34, v5);
  if (v36)
  {
    v41 = Duration.init(secondsComponent:attosecondsComponent:)();
    v37 = v45(v37, v39, v41, v42);
  }

  outlined destroy of Duration.TimeFormatStyle.Pattern.Fields(v24, type metadata accessor for Duration.TimeFormatStyle);
  return v37;
}

uint64_t Duration.TimeFormatStyle.discreteInput(before:)(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v47 = a3;
  v46 = a1;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v11;
  v12 = type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v40 - v16);
  v18 = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v44 = v4;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v4, &v40 - v22, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v23, v17, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = a4;
  v48 = a2;
  if (EnumCaseMultiPayload)
  {
    v25 = *v17;
    v17 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48));
    static Duration.interval(fractionalSecondsLength:)(v25);
    v49 = 1;
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    v42 = static Duration.* infix<A>(_:_:)();
    v27 = v26;
  }

  else
  {
    v42 = 0x40AAD21B3B700000;
    v27 = 3;
  }

  v28 = v43;
  v29 = *(v8 + 8);
  v29(v17, v7);
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v44, v20, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v20, v14, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  if (swift_getEnumCaseMultiPayload())
  {
    v14 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
  }

  v30 = *(v8 + 32);
  v31 = v45;
  v30(v45, v14, v7);
  v30(v28, v31, v7);
  v32 = static Duration.bound(for:in:countingDown:roundingRule:)(v46, v48, v42, v27, v47 & 1, v28);
  v34 = v33;
  v36 = v35;
  v29(v28, v7);
  if ((v36 & 1) == 0)
  {
    return v32;
  }

  v37 = Duration.init(secondsComponent:attosecondsComponent:)();
  return v41(v32, v34, v37, v38);
}

uint64_t protocol witness for DiscreteFormatStyle.discreteInput(before:) in conformance Duration.TimeFormatStyle.Attributed@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  return result;
}

uint64_t specialized static Duration.TimeFormatStyle.Pattern.Fields.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v48 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8DurationV10FoundationE15TimeFormatStyleV7PatternV6FieldsO_AItMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v48 - v25;
  v28 = (&v48 + *(v27 + 56) - v25);
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(a1, &v48 - v25, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(a2, v28, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v26, v20, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
      v23 = v20 + v30;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *v20;
        v32 = *v28;
        v33 = v52;
        v34 = *(v52 + 32);
        v35 = v49;
        v36 = v53;
        v34(v49, v20 + v30, v53);
        v37 = v28 + v30;
        v38 = v48;
LABEL_9:
        v34(v38, v37, v36);
        if (v31 == v32)
        {
          v41 = static FloatingPointRoundingRule.== infix(_:_:)();
          v45 = *(v33 + 8);
          v45(v38, v36);
          v45(v35, v36);
          goto LABEL_11;
        }

        v46 = *(v33 + 8);
        v46(v38, v36);
        v46(v35, v36);
        outlined destroy of Duration.TimeFormatStyle.Pattern.Fields(v26, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
LABEL_14:
        v41 = 0;
        return v41 & 1;
      }
    }

    else
    {
      outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v26, v17, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
      v23 = v17 + v43;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = *v17;
        v32 = *v28;
        v35 = v51;
        v33 = v52;
        v34 = *(v52 + 32);
        v44 = v23;
        v36 = v53;
        v34(v51, v44, v53);
        v37 = v28 + v43;
        v38 = v50;
        goto LABEL_9;
      }
    }

LABEL_12:
    (*(v52 + 8))(v23, v53);
    outlined destroy of TermOfAddress?(v26, &_ss8DurationV10FoundationE15TimeFormatStyleV7PatternV6FieldsO_AItMd);
    goto LABEL_14;
  }

  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v26, v23, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_12;
  }

  v40 = v52;
  v39 = v53;
  (*(v52 + 32))(v14, v28, v53);
  v41 = static FloatingPointRoundingRule.== infix(_:_:)();
  v42 = *(v40 + 8);
  v42(v14, v39);
  v42(v23, v39);
LABEL_11:
  outlined destroy of Duration.TimeFormatStyle.Pattern.Fields(v26, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  return v41 & 1;
}

unint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of Duration.TimeFormatStyle.Pattern(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Duration.TimeFormatStyle.Pattern.Fields(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of Duration.TimeFormatStyle.Pattern(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Duration.TimeFormatStyle.Attributed.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Duration.TimeFormatStyle.Pattern.Fields.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = *(type metadata accessor for Duration.TimeFormatStyle.Pattern(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  v9 = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  if (*(a1 + *(v9 + 20)) == *(a2 + *(v9 + 20)))
  {
    v12 = *(v9 + 24);
    v13 = *(a1 + v12);
    v14 = *(a2 + v12);
    v15 = v13;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = specialized static Locale.== infix(_:_:)(&v15, &v14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v10 & 1;
  }

LABEL_9:
  v10 = 0;
  return v10 & 1;
}

uint64_t specialized static Duration.TimeFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Duration.TimeFormatStyle.Pattern.Fields.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Duration.TimeFormatStyle.Pattern(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  if (*(a1 + *(v9 + 20)) == *(a2 + *(v9 + 20)))
  {
    v10 = *(v9 + 24);
    v11 = *(a1 + v10);
    v14 = *(a2 + v10);
    v15 = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = specialized static Locale.== infix(_:_:)(&v15, &v14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v12)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.CodingKeys and conformance Duration.TimeFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed.CodingKeys and conformance Duration.TimeFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

uint64_t specialized Duration.TimeFormatStyle.Pattern.Fields.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756E694D72756F68 && a2 == 0xEA00000000006574;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018147F4F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536574756E696DLL && a2 == 0xEC000000646E6F63)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized Duration.TimeFormatStyle.Attributed.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E726574746170 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized Duration.TimeFormatStyle.Attributed.subscript.setter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v9 - v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, v5);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v1, v3, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  swift_setAtWritableKeyPath();
  return outlined init with take of Duration.TimeFormatStyle.Pattern(v3, v1, type metadata accessor for Duration.TimeFormatStyle.Attributed);
}

uint64_t instantiation function for generic protocol witness table for Duration.TimeFormatStyle.Attributed(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  a1[2] = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  result = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Duration.TimeFormatStyle.Attributed(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, type metadata accessor for Duration.TimeFormatStyle.Attributed);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Duration.TimeFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, type metadata accessor for Duration.TimeFormatStyle);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.CodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.MinuteSecondCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteSecondCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys and conformance Duration.TimeFormatStyle.Pattern.Fields.HourMinuteCodingKeys);
  }

  return result;
}

uint64_t outlined assign with copy of Duration.TimeFormatStyle.Pattern(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Duration.TimeFormatStyle.Attributed.PatternComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Duration.TimeFormatStyle.Attributed.PatternComponent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys()
{
  if (*v0)
  {
    return 0x536E726574746170;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x536E726574746170 && a2 == 0xEC000000656C7974)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Duration.UnitsFormatStyle.UnitWidth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV9UnitWidthV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMd);
    v14 = 0;
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Measurement<NSUnitDuration><>.FormatStyle.UnitWidth and conformance Measurement<A><>.FormatStyle.UnitWidth, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMd);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v15;
    v13 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 4) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys);
  }

  return result;
}

uint64_t Duration.UnitsFormatStyle.UnitWidth.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV9UnitWidthV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth.CodingKeys and conformance Duration.UnitsFormatStyle.UnitWidth.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Measurement<NSUnitDuration><>.FormatStyle.UnitWidth and conformance Measurement<A><>.FormatStyle.UnitWidth, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMd);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void Duration.UnitsFormatStyle.UnitWidth.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x1865CD060](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int Duration.UnitsFormatStyle.UnitWidth.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Duration.UnitsFormatStyle.UnitWidth()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Duration.UnitsFormatStyle.UnitWidth()
{
  v1 = *(v0 + 1);
  MEMORY[0x1865CD060](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Duration.UnitsFormatStyle.UnitWidth()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Duration.UnitsFormatStyle.Unit._Unit@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Duration.UnitsFormatStyle.Unit._Unit.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t Duration.UnitsFormatStyle.Unit.icuSkeleton.getter()
{
  v1 = 0xE400000000000000;
  v2 = *v0;
  v3 = 1801807223;
  v4 = 0x6365736F7263696DLL;
  v5 = 0xEB00000000646E6FLL;
  if (v2 != 6)
  {
    v4 = 0x6F6365736F6E616ELL;
    v5 = 0xEA0000000000646ELL;
  }

  v6 = 0xE600000000000000;
  v7 = 0x646E6F636573;
  if (v2 != 4)
  {
    v7 = 0x636573696C6C696DLL;
    v6 = 0xEB00000000646E6FLL;
  }

  if (*v0 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1920298856;
  if (v2 != 2)
  {
    v9 = 0x6574756E696DLL;
    v8 = 0xE600000000000000;
  }

  if (*v0)
  {
    v3 = 7954788;
    v1 = 0xE300000000000000;
  }

  if (*v0 > 1u)
  {
    v3 = v9;
    v1 = v8;
  }

  if (*v0 <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (*v0 <= 3u)
  {
    v11 = v1;
  }

  else
  {
    v11 = v5;
  }

  _StringGuts.grow(_:)(24);

  MEMORY[0x1865CB0E0](v10, v11);

  return 0xD000000000000016;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Duration.UnitsFormatStyle.Unit.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953066613 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Duration.UnitsFormatStyle.Unit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Duration.UnitsFormatStyle.Unit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Duration.UnitsFormatStyle.Unit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV4UnitV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit);
  }

  return result;
}

Swift::Int Duration.UnitsFormatStyle.Unit.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t Duration.UnitsFormatStyle.Unit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV4UnitV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit.CodingKeys and conformance Duration.UnitsFormatStyle.Unit.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit._Unit and conformance Duration.UnitsFormatStyle.Unit._Unit();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV09ZeroValueF15DisplayStrategyV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys);
  }

  return result;
}

Swift::Int Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV09ZeroValueF15DisplayStrategyV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV09ZeroValueF15DisplayStrategyV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.roundingRule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0) + 24);
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.roundingRule.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0) + 24);
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.roundingIncrement.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.init<A>(lengthLimits:roundingRule:roundingIncrement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 0x7FFFFFFFFFFFFFFFLL, a5);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(*(a5 - 8) + 8))(a1, a5);
  if (v14)
  {
    v19 = 0;
  }

  else
  {
    v19 = v12;
  }

  if (v18)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v16;
  }

  v21 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  v22 = &a6[*(v21 + 28)];
  *a6 = v19;
  *(a6 + 1) = v20;
  v23 = *(v21 + 24);
  v24 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v24 - 8) + 32))(&a6[v23], a2, v24);
  *v22 = a3;
  v22[8] = a4 & 1;
  return result;
}

uint64_t static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.show(length:rounded:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v12 - 8) + 16))(&a5[v11], a2, v12);
  v14 = &a5[*(v10 + 28)];
  *a5 = a1;
  *(a5 + 1) = a1;
  *v14 = a3;
  v14[8] = a4 & 1;
  return result;
}

uint64_t static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide(rounded:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v6 - 8) + 16))(&a2[v5], a1, v6);
  v8 = &a2[*(v4 + 28)];
  *a2 = 0;
  *(a2 + 1) = 0;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys()
{
  v1 = 0x4C6D756D696E696DLL;
  v2 = 0x676E69646E756F72;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x4C6D756D6978616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV29FractionalPartDisplayStrategyV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
    v8[13] = 2;
    type metadata accessor for FloatingPointRoundingRule();
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hash(into:)()
{
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v0[1]);
  v1 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  type metadata accessor for FloatingPointRoundingRule();
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(v1 + 28);
  if (v2[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1865CD090](v4);
  }
}

Swift::Int Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hashValue.getter()
{
  Hasher.init(_seed:)();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV29FractionalPartDisplayStrategyV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys();
  v31 = v7;
  v11 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v8;
  v12 = a1;
  v13 = v28;
  v14 = v29;
  v37 = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v10;
  v10[1] = v15;
  v35 = 2;
  lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050]);
  v16 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v32;
  v18 = *(v14 + 32);
  v19 = v26;
  v25 = *(v32 + 24);
  v18(v26 + v25, v16, v3);
  v34 = 3;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v21;
  v22 = v20;
  v23 = v19 + *(v17 + 28);
  (*(v13 + 8))(v31, v30);
  *v23 = v22;
  *(v23 + 8) = v33 & 1;
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v19, v27, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v19, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy()
{
  Hasher.init(_seed:)();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy()
{
  Hasher.init(_seed:)();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hash(into:)();
  return Hasher._finalize()();
}

__n128 Duration.UnitsFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t Duration.UnitsFormatStyle.allowedUnits.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void Duration.UnitsFormatStyle.unitWidth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  *a1 = *(v1 + 24);
  *(a1 + 4) = v2;
}

uint64_t Duration.UnitsFormatStyle.unitWidth.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 24) = *result;
  *(v1 + 28) = v2;
  return result;
}

uint64_t Duration.UnitsFormatStyle.maximumUnitCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t Duration.UnitsFormatStyle.valueLengthLimits.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for Duration.UnitsFormatStyle(0);
  v8 = v3 + *(result + 40);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, int64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *a5;
  v18 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v19 = *(v18 + 40);
  *(a9 + 16) = a1;
  *(a9 + 24) = v15;
  *(a9 + 28) = v16;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4 & 1;
  *(a9 + 48) = v17;
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(a8, a9 + *(v18 + 36), type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  v20 = 0x7FFFFFFFFFFFFFFELL;
  if (a6 < 0x7FFFFFFFFFFFFFFELL)
  {
    v20 = a6;
  }

  if (a7 & 1 | (a6 < 1))
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  if (a7 & 1 | (a6 < 1))
  {
    v22 = 0;
  }

  else
  {
    v22 = v20 + 1;
  }

  v23 = a9 + v19;
  *v23 = v21;
  *(v23 + 8) = v22;
  *(v23 + 16) = a7 & 1 | (a6 < 1);
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(a8, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  *a9 = inited;
  *(a9 + 8) = result;
  return result;
}

uint64_t Duration.UnitsFormatStyle.init<A>(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLengthLimits:fractionalPart:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *a5;
  v18 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v19 = a9 + *(v18 + 40);
  *(a9 + 16) = a1;
  *(a9 + 24) = v15;
  *(a9 + 28) = v16;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4 & 1;
  *(a9 + 48) = v17;
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(a7, a9 + *(v18 + 36), type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  result = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 0x7FFFFFFFFFFFFFFFLL, a8);
  if ((v23 & 1) == 0)
  {
    if (v22)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v21 < result)
    {
      goto LABEL_10;
    }

LABEL_7:
    *v19 = result;
    *(v19 + 8) = v21;
    *(v19 + 16) = 0;
    goto LABEL_8;
  }

  if (v22)
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
LABEL_8:
    type metadata accessor for _LocaleAutoupdating();
    inited = swift_initStaticObject();
    outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(a7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    (*(*(a8 - 8) + 8))(a6, a8);
    result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
    *a9 = inited;
    *(a9 + 8) = result;
    return result;
  }

  result = 0;
  if (v21 >= 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Duration.UnitsFormatStyle._formatFields(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = *MEMORY[0x1E69E9840];
  v4 = Duration.UnitsFormatStyle._getSkeletons(_:)(a1, a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v88 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v78 = v4 + 32;
    v6 = v88;
    v7 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v8 = 0;
    v9 = 0;
    v82 = v7;
    v80 = *(v7 + 472);
    v77 = v5;
    v76 = v4;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        __break(1u);
LABEL_84:
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
      }

      v86 = v6;
      v85 = v8;
      v10 = v78 + 32 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v83 = *(v10 + 16);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v13 = v80(ObjectType, v82);
      v15 = v14;
      if (one-time initialization token for cache != -1)
      {
        v35 = v13;
        swift_once();
        v13 = v35;
      }

      v17 = static ICUMeasurementNumberFormatter.cache;
      v16 = *algn_1EA7B1588;
      v84 = v13;
      MEMORY[0x1EEE9AC00](v13);
      os_unfair_lock_lock((v16 + 24));
      closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v16 + 16, &v89);
      v87 = v9;
      os_unfair_lock_unlock((v16 + 24));
      v18 = v89;
      if (v89 == 1)
      {
        break;
      }

LABEL_47:

      swift_unknownObjectRelease();
      if (!v18)
      {
        goto LABEL_88;
      }

      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      inited = swift_initStackObject();
      LODWORD(v89) = 0;
      v56 = unumf_openResult();
      if (!v56)
      {
        goto LABEL_89;
      }

      *(inited + 16) = v56;
      v57 = v89;
      if (v89 > 0 || (unumf_formatDouble(), v57 = v89, v89 >= 1))
      {
        lazy protocol witness table accessor for type ICUError and conformance ICUError();
        v58 = swift_allocError();
        *v59 = v57;
        swift_willThrow();
        swift_setDeallocating();
        unumf_closeResult();

        v87 = 0;
LABEL_52:
        v89 = 0;
        v90 = 0xE000000000000000;
        Double.write<A>(to:)();
        MEMORY[0x1865CB0E0](32, 0xE100000000000000);
        if (v83 > 3)
        {
          v60 = 0x6365736F7263696DLL;
          if (v83 != 6)
          {
            v60 = 0x6F6365736F6E616ELL;
          }

          v61 = 0xEB00000000646E6FLL;
          v62 = 0xEA0000000000646ELL;
          if (v83 == 6)
          {
            v62 = 0xEB00000000646E6FLL;
          }

          v63 = 0x646E6F636573;
          if (v83 == 4)
          {
            v61 = 0xE600000000000000;
          }

          else
          {
            v63 = 0x636573696C6C696DLL;
          }

          v64 = v83 <= 5;
        }

        else
        {
          v60 = 1920298856;
          if (v83 != 2)
          {
            v60 = 0x6574756E696DLL;
          }

          v61 = 0xE400000000000000;
          v62 = 0xE600000000000000;
          if (v83 == 2)
          {
            v62 = 0xE400000000000000;
          }

          v63 = 1801807223;
          if (v83)
          {
            v63 = 7954788;
            v61 = 0xE300000000000000;
          }

          v64 = v83 <= 1;
        }

        if (v64)
        {
          v65 = v63;
        }

        else
        {
          v65 = v60;
        }

        if (v64)
        {
          v66 = v61;
        }

        else
        {
          v66 = v62;
        }

        _StringGuts.grow(_:)(24);

        MEMORY[0x1865CB0E0](v65, v66);

        MEMORY[0x1865CB0E0](0xD000000000000016, 0x800000018147F5F0);

        v67 = v89;
        v68 = v90;
        goto LABEL_75;
      }

      v67 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v68 = v72;

      swift_setDeallocating();
      unumf_closeResult();
      if (!v68)
      {
        goto LABEL_52;
      }

LABEL_75:
      v6 = v86;
      v70 = *(v86 + 16);
      v69 = *(v86 + 24);
      v9 = v87;
      if (v70 >= v69 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
        v6 = v86;
      }

      v8 = v85 + 1;
      *(v6 + 16) = v70 + 1;
      v71 = v6 + 16 * v70;
      *(v71 + 32) = v67;
      *(v71 + 40) = v68;
      if (v85 + 1 == v77)
      {

        return v6;
      }
    }

    v80(ObjectType, v82);
    type metadata accessor for ICUMeasurementNumberFormatter();
    v18 = swift_allocObject();
    v18[3] = v11;
    v18[4] = v12;

    v19 = MEMORY[0x1865CB200](v11, v12);
    v79 = v11;
    if (v19)
    {
      v20 = v19;
      v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v19, 0);

      v22 = specialized Sequence._copySequenceContents(initializing:)(&v89, (v21 + 4), v20, v11, v12);

      if (v22 != v20)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v89) = 0;
    if (v21[2] >> 31)
    {
      goto LABEL_84;
    }

    String.utf8CString.getter();

    v23 = unumf_openForSkeletonAndLocale();

    if (v23)
    {
      if (v89 < 1)
      {
        v18[2] = v23;
LABEL_17:
        os_unfair_lock_lock((v16 + 24));
        if (v17 >= *(*(v16 + 16) + 16))
        {
        }

        else
        {
          *(v16 + 16) = MEMORY[0x1E69E7CC8];
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = *(v16 + 16);
        v25 = v89;
        *(v16 + 16) = 0x8000000000000000;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v12, v84, v15);
        v28 = *(v25 + 16);
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_85;
        }

        v31 = v26;
        if (*(v25 + 24) < v30)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
          v32 = v89;
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v12, v84, v15);
          if ((v31 & 1) != (v34 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v27 = v33;
          if ((v31 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_27:

          *(*(v32 + 56) + 8 * v27) = v18;

LABEL_46:
          *(v16 + 16) = v32;

          os_unfair_lock_unlock((v16 + 24));

          outlined consume of ICUMeasurementNumberFormatter??(1);
          v4 = v76;
          goto LABEL_47;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v25;
          if (v26)
          {
            goto LABEL_27;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
          v36 = static _DictionaryStorage.copy(original:)();
          v32 = v36;
          if (*(v25 + 16))
          {
            v37 = (v36 + 64);
            v38 = (v25 + 64);
            v39 = ((1 << *(v32 + 32)) + 63) >> 6;
            if (v32 != v25 || v37 >= &v38[8 * v39])
            {
              memmove(v37, v38, 8 * v39);
            }

            v40 = 0;
            *(v32 + 16) = *(v25 + 16);
            v41 = 1 << *(v25 + 32);
            if (v41 < 64)
            {
              v42 = ~(-1 << v41);
            }

            else
            {
              v42 = -1;
            }

            v43 = v42 & *(v25 + 64);
            v44 = (v41 + 63) >> 6;
            v74 = v44;
            if (!v43)
            {
              goto LABEL_37;
            }

            while (1)
            {
              v45 = __clz(__rbit64(v43));
              for (i = (v43 - 1) & v43; ; i = (v47 - 1) & v47)
              {
                v48 = v45 | (v40 << 6);
                v49 = (*(v25 + 48) + 32 * v48);
                v50 = v49[1];
                v51 = v49[2];
                v52 = v49[3];
                v53 = *(*(v25 + 56) + 8 * v48);
                v54 = (*(v32 + 48) + 32 * v48);
                *v54 = *v49;
                v54[1] = v50;
                v54[2] = v51;
                v54[3] = v52;
                *(*(v32 + 56) + 8 * v48) = v53;

                v44 = v74;
                v43 = i;
                if (i)
                {
                  break;
                }

LABEL_37:
                v46 = v40;
                do
                {
                  v40 = v46 + 1;
                  if (__OFADD__(v46, 1))
                  {
                    goto LABEL_87;
                  }

                  if (v40 >= v44)
                  {
                    goto LABEL_44;
                  }

                  v47 = *(v25 + 64 + 8 * v40);
                  ++v46;
                }

                while (!v47);
                v45 = __clz(__rbit64(v47));
              }
            }
          }

LABEL_44:

          if (v31)
          {
            goto LABEL_27;
          }
        }

LABEL_45:
        specialized _NativeDictionary._insert(at:key:value:)(v27, v79, v12, v84, v15, v18, v32);
        goto LABEL_46;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v18 = 0;
    goto LABEL_17;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t specialized BidirectionalCollection._range<A>(of:anchored:backwards:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5, char a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10)
{
  v14 = a10;
  if (a6)
  {
    v60 = a8;
    v62 = a2;
    v15 = a8;
    v54 = a1 >> 14;
    v57 = a2 >> 14;
    if (a1 >> 14 < a2 >> 14)
    {
      v16 = a5;
      v17 = a7 >> 14;
      do
      {
        if (v17 >= v60 >> 14)
        {
          return 0;
        }

        Substring.UnicodeScalarView.formIndex(before:)();
        Substring.UnicodeScalarView.formIndex(before:)();
      }

      while (v54 < v62 >> 14);
      v15 = v60;
      a5 = v16;
    }

    if (a5)
    {
      v18 = v15;
    }

    else
    {
      v18 = a7;
    }
  }

  else
  {
    if (a5)
    {
      v57 = a2 >> 14;
      v54 = a1 >> 14;
      v18 = a7;
    }

    else
    {
      v60 = a8;
      v62 = a2;
      v18 = a8;
      v54 = a1 >> 14;
      v57 = a2 >> 14;
      if (a1 >> 14 < a2 >> 14)
      {
        v19 = a7 >> 14;
        do
        {
          if (v19 >= v60 >> 14)
          {
            return 0;
          }

          Substring.UnicodeScalarView.formIndex(before:)();
          Substring.UnicodeScalarView.formIndex(before:)();
        }

        while (v54 < v62 >> 14);
        v18 = v60;
      }
    }

    v15 = a7;
  }

  v49 = v18 >> 14;
  v48 = a1;
  v56 = a8 >> 14;
  v20 = a9;
  v21 = (a9 >> 59) & 1;
  if ((a10 & 0x1000000000000000) == 0)
  {
    LOBYTE(v21) = 1;
  }

  v22 = 4 << v21;
  v53 = a7 >> 14;
  v23 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v23) = 1;
  }

  v58 = 4 << v23;
  v24 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a10 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(a10) & 0xF;
  }

  else
  {
    v25 = a9 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(a4) & 0xF;
  }

  v51 = v24;
  v52 = v25;
  v55 = v22;
  while (1)
  {
    v50 = v15;
    v26 = v54;
    if (v54 < v57)
    {
      v26 = v54;
      v27 = v48;
      do
      {
        v28 = v15 >> 14;
        if (v15 >> 14 >= v56)
        {
          break;
        }

        v29 = v15 & 0xC;
        v30 = (v15 & 1) == 0 || v29 == v22;
        v31 = v30;
        result = v15;
        if (v30)
        {
          if (v29 == v22)
          {
            result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, v20, v14);
            v28 = result >> 14;
          }

          if (v28 < v53 || v28 >= v56)
          {
            goto LABEL_120;
          }

          if ((result & 1) == 0)
          {
            _StringGuts.scalarAlignSlow(_:)(result, v20, v14);
          }
        }

        else if (v28 < v53)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if ((v14 & 0x1000000000000000) != 0)
        {
          v33 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((v14 & 0x2000000000000000) != 0)
          {
            v60 = v20;
            v61 = a10 & 0xFFFFFFFFFFFFFFLL;
          }

          else if ((v20 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v33 = _decodeScalar(_:startingAt:)();
        }

        v34 = v33;
        v35 = v27 & 0xC;
        v36 = (v27 & 1) == 0 || v35 == v58;
        v37 = v36;
        result = v27;
        if (v36)
        {
          if (v35 == v58)
          {
            result = _StringGuts._slowEnsureMatchingEncoding(_:)(v27, a3, a4);
          }

          if (result >> 14 < v54 || result >> 14 >= v57)
          {
            goto LABEL_122;
          }

          if ((result & 1) == 0)
          {
            _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
          }
        }

        else if (v26 < v54)
        {
          goto LABEL_121;
        }

        if ((a4 & 0x1000000000000000) != 0)
        {
          result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
          if (v34 != result)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v60 = a3;
            v61 = a4 & 0xFFFFFFFFFFFFFFLL;
          }

          else if ((a3 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          result = _decodeScalar(_:startingAt:)();
          v20 = a9;
          if (v34 != result)
          {
LABEL_112:
            v14 = a10;
            v22 = v55;
            break;
          }
        }

        v14 = a10;
        if (v31)
        {
          if (v29 == v55)
          {
            result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, v20, a10);
            v15 = result;
          }

          if (v52 <= v15 >> 16)
          {
            goto LABEL_123;
          }

          if ((v15 & 1) == 0)
          {
            result = _StringGuts.scalarAlignSlow(_:)(v15, v20, a10);
            v15 = v15 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else if (v52 <= v15 >> 16)
        {
          goto LABEL_124;
        }

        if ((a10 & 0x1000000000000000) != 0)
        {
          result = String.UnicodeScalarView._foreignIndex(after:)();
          v15 = result;
          v40 = v58;
          if (!v37)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v38 = v15 >> 16;
          if ((a10 & 0x2000000000000000) != 0)
          {
            v60 = v20;
            v61 = a10 & 0xFFFFFFFFFFFFFFLL;
            v39 = *(&v60 + v38);
          }

          else
          {
            result = (a10 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v20 & 0x1000000000000000) == 0)
            {
              result = _StringObject.sharedUTF8.getter();
            }

            v39 = *(result + v38);
          }

          v41 = v39;
          v42 = __clz(v39 ^ 0xFF) - 24;
          if (v41 >= 0)
          {
            LOBYTE(v42) = 1;
          }

          v15 = ((v38 + v42) << 16) | 5;
          v40 = v58;
          if (!v37)
          {
LABEL_88:
            v22 = v55;
            if (v51 <= v27 >> 16)
            {
              goto LABEL_125;
            }

LABEL_98:
            if ((a4 & 0x1000000000000000) == 0)
            {
              goto LABEL_99;
            }

            goto LABEL_30;
          }
        }

        if (v35 == v40)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v27, a3, a4);
          v27 = result;
        }

        v22 = v55;
        if (v51 <= v27 >> 16)
        {
          goto LABEL_126;
        }

        if (v27)
        {
          goto LABEL_98;
        }

        v27 = v27 & 0xC | _StringGuts.scalarAlignSlow(_:)(v27, a3, a4) & 0xFFFFFFFFFFFFFFF3 | 1;
        if ((a4 & 0x1000000000000000) == 0)
        {
LABEL_99:
          v43 = v27 >> 16;
          if ((a4 & 0x2000000000000000) != 0)
          {
            v60 = a3;
            v61 = a4 & 0xFFFFFFFFFFFFFFLL;
            v45 = *(&v60 + v43);
          }

          else
          {
            v44 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((a3 & 0x1000000000000000) == 0)
            {
              v44 = _StringObject.sharedUTF8.getter();
            }

            v45 = *(v44 + v43);
          }

          v46 = v45;
          v47 = __clz(v45 ^ 0xFF) - 24;
          if (v46 >= 0)
          {
            LOBYTE(v47) = 1;
          }

          v27 = ((v43 + v47) << 16) | 5;
          goto LABEL_31;
        }

LABEL_30:
        v27 = String.UnicodeScalarView._foreignIndex(after:)();
LABEL_31:
        v26 = v27 >> 14;
      }

      while (v27 >> 14 < v57);
    }

    if (v26 == v57)
    {
      break;
    }

    if (v49 == v50 >> 14)
    {
      return 0;
    }

    v15 = Substring.UnicodeScalarView.index(_:offsetBy:)();
  }

  result = v50;
  if (v15 >> 14 < v50 >> 14)
  {
LABEL_127:
    __break(1u);
  }

  return result;
}

uint64_t specialized getter of mostSignificantUnit #1 in Duration.UnitsFormatStyle._getSkeletons(_:)(_BYTE *a1, uint64_t a2, double a3, uint8x16_t a4)
{
  v4 = *a1;
  if (v4 == 9)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      v28 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v8 = v28;
      v9 = (a2 + 32);
      v10 = *(v28 + 16);
      do
      {
        v12 = *v9++;
        v11 = v12;
        v29 = v8;
        v13 = *(v8 + 24);
        v14 = v10 + 1;
        if (v10 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v10 + 1, 1);
          v8 = v29;
        }

        *(v8 + 16) = v14;
        *(v8 + v10++ + 32) = v11;
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
      v14 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v14)
      {
        v4 = 8;
        goto LABEL_29;
      }
    }

    v4 = *(v8 + 32);
    v15 = v14 - 1;
    if (v14 != 1)
    {
      if (v14 < 5)
      {
        v16 = 1;
        goto LABEL_24;
      }

      if (v14 >= 0x21)
      {
        v17 = v15 & 0xFFFFFFFFFFFFFFE0;
        v18 = vdupq_n_s8(v4);
        v19 = (v8 + 49);
        v20 = v15 & 0xFFFFFFFFFFFFFFE0;
        a4 = v18;
        do
        {
          v18 = vminq_u8(v19[-1], v18);
          a4 = vminq_u8(*v19, a4);
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        v21 = vminq_u8(v18, a4);
        v21.i8[0] = vminvq_u8(v21);
        v4 = v21.u32[0];
        if (v15 == v17)
        {
          goto LABEL_29;
        }

        if ((v15 & 0x1C) == 0)
        {
          v16 = v17 | 1;
          goto LABEL_24;
        }
      }

      else
      {
        v17 = 0;
      }

      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v22 = vdup_n_s16(v4);
      v23 = v17 + 33;
      v24 = v17 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        a4.i32[0] = *(v8 + v23);
        a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
        v22 = vmin_u16(*a4.i8, (*&v22 & 0xFF00FF00FF00FFLL));
        v23 += 4;
        v24 += 4;
      }

      while (v24);
      v22.i16[0] = vminv_u16(v22);
      v4 = v22.u32[0];
      if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_29;
      }

LABEL_24:
      v25 = v14 - v16;
      v26 = v16 + 32;
      do
      {
        if (*(v8 + v26) >= v4)
        {
          v4 = v4;
        }

        else
        {
          v4 = *(v8 + v26);
        }

        ++v26;
        --v25;
      }

      while (v25);
    }

LABEL_29:

    *a1 = v4;
  }

  return v4;
}

uint64_t closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  ObjectType = swift_getObjectType();
  (*(v4 + 64))(ObjectType, v4);
  String.utf8CString.getter();

  ListPattern = uatmufmt_getListPattern();

  return ListPattern;
}

__n128 Duration.UnitsFormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2, a2, type metadata accessor for Duration.UnitsFormatStyle);
  v6 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v6;
  *a2 = v6;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Duration.UnitsFormatStyle.CodingKeys()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x556465776F6C6C61;
    if (v1 != 1)
    {
      v5 = 0x7464695774696E75;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x656C61636F6CLL;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Duration.UnitsFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Duration.UnitsFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Duration.UnitsFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Duration.UnitsFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Duration.UnitsFormatStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v14;
  v17 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    *&v15 = *(v3 + 2);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
    lazy protocol witness table accessor for type Set<Duration.UnitsFormatStyle.Unit> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Duration.UnitsFormatStyle.Unit> and conformance <> Set<A>, lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 7);
    LOBYTE(v15) = *(v3 + 24);
    DWORD1(v15) = v9;
    v17 = 2;
    lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v15 = *(v3 + 6);
    v17 = 4;
    lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = type metadata accessor for Duration.UnitsFormatStyle(0);
    LOBYTE(v15) = 5;
    type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + *(v10 + 40));
    v12 = *(v11 + 16);
    v15 = *v11;
    v16 = v12;
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Duration.UnitsFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v5 = 1;
LABEL_5:
    Hasher._combine(_:)(v5);
    goto LABEL_54;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v52, ObjectType, v3);
  v60[6] = v58;
  v61[0] = *v59;
  *(v61 + 12) = *&v59[12];
  v60[2] = v54;
  v60[3] = v55;
  v60[4] = v56;
  v60[5] = v57;
  v60[0] = v52;
  v60[1] = v53;
  if (_s10Foundation17LocalePreferencesVSgWOg(v60) == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = v52;
  v7 = *(&v52 + 1);
  v8 = *(&v53 + 1);
  v9 = *(&v54 + 1);
  v44 = v55;
  v45 = v56;
  v47 = v57;
  v10 = v58;
  v48 = *v59;
  v49 = *&v59[16];
  v50 = v59[24];
  v51 = v59[25];
  v11 = v59[26];
  v12 = v59[27];
  Hasher._combine(_:)(1u);
  if (v6 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v6 & 1;
  }

  Hasher._combine(_:)(v13);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v7 + 16));
    v14 = *(v7 + 16);
    if (v14)
    {
      v15 = v7 + 40;
      do
      {

        String.hash(into:)();

        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v46 = v11;
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v44)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v44, v16, v17, v18, v19, v20, v21);
    if (*(&v44 + 1))
    {
      goto LABEL_23;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v44 + 1))
    {
LABEL_23:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v44 + 1), v22, v23, v24, v25, v26, v27);
      if (v45)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }
  }

  Hasher._combine(_:)(0);
  if (v45)
  {
LABEL_24:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v45 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  Hasher._combine(_:)(0);
  if (*(&v45 + 1))
  {
LABEL_25:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v47)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  Hasher._combine(_:)(0);
  if (v47)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v28 = v49;
    if (*(&v47 + 1))
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
  v28 = v49;
  if (*(&v47 + 1))
  {
LABEL_27:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v10)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  Hasher._combine(_:)(0);
  if (v10)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v29 = v50;
    v30 = v51;
    if (*(&v10 + 1))
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  Hasher._combine(_:)(0);
  v29 = v50;
  v30 = v51;
  if (*(&v10 + 1))
  {
LABEL_29:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, *(&v10 + 1));
    if (v48)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  Hasher._combine(_:)(0);
  if (v48)
  {
LABEL_30:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v48);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_42:
    Hasher._combine(_:)(0);
    if (v29 == 2)
    {
      goto LABEL_32;
    }

LABEL_43:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v29 & 1);
    goto LABEL_44;
  }

LABEL_41:
  Hasher._combine(_:)(0);
  if (!v28)
  {
    goto LABEL_42;
  }

LABEL_31:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v29 != 2)
  {
    goto LABEL_43;
  }

LABEL_32:
  Hasher._combine(_:)(0);
LABEL_44:
  if (v30 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v30 & 1);
  }

  if (v46 == 2)
  {
    v31 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v31 = v46 & 1;
  }

  Hasher._combine(_:)(v31);
  if (v12 == 2)
  {
    v32 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v32 = v12 & 1;
  }

  Hasher._combine(_:)(v32);
  outlined destroy of TermOfAddress?(&v52, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_54:
  specialized Set.hash(into:)(a1, *(v1 + 16));
  v33 = *(v1 + 28);
  MEMORY[0x1865CD060](*(v1 + 24));
  Hasher._combine(_:)(v33);
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v34);
  }

  MEMORY[0x1865CD060](*(v1 + 48));
  v35 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v36 = (v1 + *(v35 + 36));
  MEMORY[0x1865CD060](*v36);
  MEMORY[0x1865CD060](v36[1]);
  v37 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  type metadata accessor for FloatingPointRoundingRule();
  dispatch thunk of Hashable.hash(into:)();
  v38 = v36 + *(v37 + 28);
  if (v38[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v39 = *v38;
    Hasher._combine(_:)(1u);
    if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    MEMORY[0x1865CD090](v40);
  }

  v41 = (v1 + *(v35 + 40));
  if (*(v41 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v43 = *v41;
    v42 = v41[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v43);
    MEMORY[0x1865CD060](v42);
  }
}

uint64_t Duration.UnitsFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Duration.UnitsFormatStyle(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys();
  v14 = v9;
  v15 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v16 = v5;
  v34 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  v17 = v28;
  v18 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v12;
  v30 = v32;
  *v12 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
  v34 = 1;
  lazy protocol witness table accessor for type Set<Duration.UnitsFormatStyle.Unit> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Duration.UnitsFormatStyle.Unit> and conformance <> Set<A>, lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + 2) = v32;
  v34 = 2;
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = DWORD1(v32);
  v12[24] = v32;
  *(v12 + 7) = v20;
  LOBYTE(v32) = 3;
  *(v12 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[40] = v21 & 1;
  v34 = 4;
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v29;
  *(v19 + 48) = v32;
  LOBYTE(v32) = 5;
  lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v16, v19 + *(v10 + 36), type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  v34 = 6;
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v19 + *(v10 + 40);
  (*(v22 + 8))(v18, v17);
  v25 = v33;
  *v24 = v32;
  *(v24 + 16) = v25;
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v19, v27, type metadata accessor for Duration.UnitsFormatStyle);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v19, type metadata accessor for Duration.UnitsFormatStyle);
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance Duration.UnitsFormatStyle@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2, a2, type metadata accessor for Duration.UnitsFormatStyle);
  v6 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v6;
  *a2 = v6;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Duration.UnitsFormatStyle(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v4 + 48))(ObjectType, v4))
  {
    v6 = 1;
LABEL_5:
    Hasher._combine(_:)(v6);
    goto LABEL_55;
  }

  Hasher._combine(_:)(0);
  (*(v4 + 64))(ObjectType, v4);
  String.hash(into:)();

  (*(v4 + 464))(&v52, ObjectType, v4);
  v60[6] = v58;
  v61[0] = *v59;
  *(v61 + 12) = *&v59[12];
  v60[2] = v54;
  v60[3] = v55;
  v60[4] = v56;
  v60[5] = v57;
  v60[0] = v52;
  v60[1] = v53;
  if (_s10Foundation17LocalePreferencesVSgWOg(v60) == 1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v51 = a2;
  v7 = v52;
  v8 = *(&v52 + 1);
  v9 = *(&v53 + 1);
  v10 = *(&v54 + 1);
  v43 = v55;
  v44 = v56;
  v45 = v57;
  v11 = v58;
  v48 = *v59;
  v49 = *&v59[16];
  v50 = v59[24];
  v47 = v59[25];
  v12 = v59[26];
  v13 = v59[27];
  Hasher._combine(_:)(1u);
  if (v7 == 2)
  {
    Hasher._combine(_:)(0);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    goto LABEL_14;
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v7 & 1);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_8:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](*(v8 + 16));
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = v8 + 40;
    do
    {

      String.hash(into:)();

      v15 += 16;
      --v14;
    }

    while (v14);
  }

LABEL_14:
  v46 = v13;
  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = v12;
  a2 = v51;
  if (v10)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v43)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v62, v43, v17, v18, v19, v20, v21, v22);
    if (*(&v43 + 1))
    {
      goto LABEL_22;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v43 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v62, *(&v43 + 1), v23, v24, v25, v26, v27, v28);
      if (v44)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  Hasher._combine(_:)(0);
  if (v44)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v44 + 1))
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (*(&v44 + 1))
  {
LABEL_24:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v45)
    {
      goto LABEL_25;
    }

LABEL_31:
    v29 = v16;
    Hasher._combine(_:)(0);
    if (*(&v45 + 1))
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_30:
  Hasher._combine(_:)(0);
  if (!v45)
  {
    goto LABEL_31;
  }

LABEL_25:
  v29 = v16;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (*(&v45 + 1))
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
LABEL_33:
  if (v11)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v11 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v62, *(&v11 + 1));
    if (v48)
    {
      goto LABEL_38;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v48)
    {
LABEL_38:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v62, v48);
      if (v49)
      {
        goto LABEL_39;
      }

LABEL_43:
      Hasher._combine(_:)(0);
      if (v50 == 2)
      {
        goto LABEL_40;
      }

LABEL_44:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v50 & 1);
      goto LABEL_45;
    }
  }

  Hasher._combine(_:)(0);
  if (!v49)
  {
    goto LABEL_43;
  }

LABEL_39:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v50 != 2)
  {
    goto LABEL_44;
  }

LABEL_40:
  Hasher._combine(_:)(0);
LABEL_45:
  if (v47 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v47 & 1);
  }

  if (v29 == 2)
  {
    v30 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v30 = v29 & 1;
  }

  Hasher._combine(_:)(v30);
  if (v46 == 2)
  {
    v31 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v31 = v46 & 1;
  }

  Hasher._combine(_:)(v31);
  outlined destroy of TermOfAddress?(&v52, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_55:
  specialized Set.hash(into:)(v62, *(v2 + 16));
  v32 = *(v2 + 28);
  MEMORY[0x1865CD060](*(v2 + 24));
  Hasher._combine(_:)(v32);
  if (*(v2 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v33 = *(v2 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v33);
  }

  MEMORY[0x1865CD060](*(v2 + 48));
  v34 = (v2 + *(a2 + 36));
  MEMORY[0x1865CD060](*v34);
  MEMORY[0x1865CD060](v34[1]);
  v35 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  type metadata accessor for FloatingPointRoundingRule();
  dispatch thunk of Hashable.hash(into:)();
  v36 = v34 + *(v35 + 28);
  if (v36[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v37 = *v36;
    Hasher._combine(_:)(1u);
    if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    MEMORY[0x1865CD090](v38);
  }

  v39 = (v2 + *(a2 + 40));
  if (*(v39 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v41 = *v39;
    v40 = v39[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v41);
    MEMORY[0x1865CD060](v40);
  }

  return Hasher._finalize()();
}

uint64_t static FormatStyle<>.units<A>(allowed:width:maximumUnitCount:zeroValueUnits:valueLengthLimits:fractionalPart:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a6;
  v35 = a7;
  v37 = a4;
  v36 = a3;
  v38 = a10;
  v15 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = *(a2 + 1);
  v24 = *a5;
  v33 = v25;
  (*(v25 + 16))(v21, v34, a8, v19);
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v35, v17, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  v26 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v27 = a9 + *(v26 + 40);
  *(a9 + 16) = a1;
  *(a9 + 24) = v22;
  *(a9 + 28) = v23;
  *(a9 + 32) = v36;
  *(a9 + 40) = v37 & 1;
  *(a9 + 48) = v24;
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v17, a9 + *(v26 + 36), type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);

  result = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 0x7FFFFFFFFFFFFFFFLL, a8);
  if (v31)
  {
    if (v30)
    {
      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 1;
LABEL_9:
      type metadata accessor for _LocaleAutoupdating();
      inited = swift_initStaticObject();
      outlined destroy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v17, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
      (*(v33 + 8))(v21, a8);
      result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
      *a9 = inited;
      *(a9 + 8) = result;
      return result;
    }

    result = 0;
  }

  else if (v30)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
    *v27 = result;
    *(v27 + 8) = v29;
    *(v27 + 16) = 0;
    goto LABEL_9;
  }

  if (v29 >= result)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t Duration.UnitsFormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X8>)
{
  result = Duration.UnitsFormatStyle.Attributed._formatFields(_:)(a1, a2);
  v4 = result;
  v5 = *(result + 16);
  v63 = result;
  if (v5 == 2)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
    v8 = 0x7D317B202C7D307BLL;
    if (v7)
    {
      v8 = v6;
    }

    v9 = 0xE800000000000000;
    if (v7)
    {
      v9 = v7;
    }

    *&v88 = v8;
    *(&v88 + 1) = v9;
    v76 = 8204667;
    v77 = 0xE300000000000000;
    *&v111 = 8204411;
    *(&v111 + 1) = 0xE300000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
  }

  else
  {
    if (v5 == 1)
    {
      v88 = xmmword_18122B840;
      goto LABEL_26;
    }

    MEMORY[0x1EEE9AC00](result);
    v10 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x7D317B202C7D307BLL;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    MEMORY[0x1EEE9AC00](v10);
    result = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
    if (v14)
    {
      v15 = result;
    }

    else
    {
      v15 = 0x7D317B202C7D307BLL;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    *&v88 = v15;
    *(&v88 + 1) = v16;
    v17 = v5 - 3;
    if (v5 < 3)
    {
LABEL_45:
      __break(1u);
      __break(1u);
      goto LABEL_46;
    }

    if (v5 != 3)
    {
      do
      {
        v76 = 8204667;
        v77 = 0xE300000000000000;
        *&v111 = v12;
        *(&v111 + 1) = v13;
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        result = RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
        --v17;
      }

      while (v17);
    }

    MEMORY[0x1EEE9AC00](result);
    _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();

    v76 = 8204667;
    v77 = 0xE300000000000000;
    *&v111 = 8204411;
    *(&v111 + 1) = 0xE300000000000000;
    v4 = v63;
  }

  result = RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
LABEL_26:
  if (!*(&v88 + 1))
  {
LABEL_46:
    __break(1u);
    __break(1u);
    __break(1u);
    return result;
  }

  BigString.init(_:)();
  AttributedString.init(_:attributes:)(&v87, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v88);
  v18 = v88;
  v86 = v88;
  v19 = *(v4 + 16);
  if (v19)
  {
    while (1)
    {
      if (v19 > *(v4 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v70 = v19;
      v20 = *(v4 + 8 * v19 + 24);
      v21 = v86;
      v22 = *(v86 + 40);
      v111 = *(v86 + 24);
      v112 = v22;
      v113 = *(v86 + 56);
      v23 = BigString.startIndex.getter();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = BigString.endIndex.getter();
      v76 = v21;
      v77 = v23;
      v78 = v25;
      v79 = v27;
      v80 = v29;
      v81 = v30;
      v82 = v31;
      v83 = v32;
      v84 = v33;
      v85 = 0;
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

      v34 = Substring.init<A>(_:)();
      v36 = v35;
      v76 = 8204411;
      v77 = 0xE300000000000000;
      v37 = Substring.init<A>(_:)();
      if ((v34 ^ v36) < 0x4000 || (v37 ^ v38) < 0x4000)
      {
        break;
      }

      v69 = v20;
      specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v37, v38, v39, v40, 0, 0, 0, 0, 1, v34, v36);
      v42 = v41;

      if (v42)
      {
        goto LABEL_44;
      }

      v43 = Substring.UTF8View.distance(from:to:)();

      v75 = Substring.UTF8View.distance(from:to:)();

      v44 = *(v21 + 24);
      v45 = *(v21 + 56);
      v109 = *(v21 + 40);
      v110 = v45;
      v108 = v44;
      v71 = *(v21 + 24);
      v73 = *(v21 + 40);
      v47 = *(v21 + 56);
      v46 = *(v21 + 64);
      v18 = &v108;
      if (__OFADD__(v43, BigString.startIndex.getter() >> 11))
      {
        goto LABEL_39;
      }

      v104 = v71;
      v105 = v73;
      v106 = v47;
      v107 = v46;
      v114[0] = v108;
      v114[1] = v109;
      v115 = v110;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v114, &v76);
      v74 = BigString.UTF8View.index(_:offsetBy:)();
      v66 = v49;
      v67 = v48;
      v65 = v50;
      outlined destroy of BigString(&v108);
      v64 = *(v21 + 16);
      v51 = *(v21 + 24);
      v52 = *(v21 + 56);
      v102 = *(v21 + 40);
      v103 = v52;
      v101 = v51;
      v72 = *(v21 + 40);
      v68 = *(v21 + 24);
      v53 = *(v21 + 56);
      v54 = *(v21 + 64);
      v18 = &v101;
      if (__OFADD__(v75, BigString.startIndex.getter() >> 11))
      {
        goto LABEL_40;
      }

      v97 = v68;
      v98 = v72;
      v99 = v53;
      v100 = v54;
      v116[0] = v101;
      v116[1] = v102;
      v117 = v103;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v116, &v76);
      v55 = BigString.UTF8View.index(_:offsetBy:)();
      v18 = v56;
      v58 = v57;
      v60 = v59;
      outlined destroy of BigString(&v101);
      if (v55 >> 10 < v74 >> 10)
      {
        goto LABEL_41;
      }

      v19 = v70 - 1;
      v61 = *(v21 + 16);
      *&v88 = v74;
      *(&v88 + 1) = v67;
      v89 = v66;
      v90 = v65;
      v91 = v64;
      v92 = v55;
      v93 = v18;
      v94 = v58;
      v95 = v60;
      v96 = v61;
      v18 = &v86;
      specialized AttributedString.replaceSubrange<A, B>(_:with:)(&v88, v69);

      v4 = v63;
      if (v70 == 1)
      {

        v18 = v86;
        goto LABEL_37;
      }
    }

LABEL_44:

    __break(1u);
    goto LABEL_45;
  }

LABEL_42:

LABEL_37:
  *a3 = v18;
  return result;
}

uint64_t Duration.UnitsFormatStyle.Attributed._formatFields(_:)(uint64_t a1, uint64_t a2)
{
  v316 = *MEMORY[0x1E69E9840];
  v221 = a1;
  v222 = a2;
  v2 = Duration.UnitsFormatStyle._getSkeletons(_:)(a1, a2);
  v3 = *(v2 + 16);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v256 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = 0;
  v233 = 0;
  v227 = v2 + 32;
  v5 = v256;
  v223 = 0x800000018147F5D0;
  v219 = "butedString+_InternalRun.swift";
  v226 = xmmword_1812187D0;
  v220 = xmmword_181218E20;
  v224 = v3;
  v225 = v2;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      goto LABEL_162;
    }

    v230 = v4;
    v231 = v5;
    v6 = v227 + 32 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v246 = v9;
    v247 = v10;
    v11 = *v232;
    v12 = v232[1];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 472);
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v249 = v11;
    v242 = v14;
    v243 = v12 + 472;
    v15 = (v14)(ObjectType, v12);
    v17 = v16;
    if (one-time initialization token for cache != -1)
    {
      v47 = v15;
      swift_once();
      v15 = v47;
    }

    v18 = *algn_1EA7B1588;
    v241 = static ICUMeasurementNumberFormatter.cache;
    v252 = v7;
    v253 = v8;
    v244 = v15;
    v254 = v15;
    v255 = v17;
    MEMORY[0x1EEE9AC00](v15);
    v217 = &v252;
    os_unfair_lock_lock(v18 + 6);
    v19 = v233;
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v18[4], &v257);
    v233 = v19;
    v245 = v18;
    os_unfair_lock_unlock(v18 + 6);
    v20 = v257;
    if (v257 == 1)
    {
      v248 = v17;
      v242(ObjectType, v12);
      type metadata accessor for ICUMeasurementNumberFormatter();
      v21 = swift_allocObject();
      *(v21 + 24) = v7;
      *(v21 + 32) = v8;
      v22 = v21;

      v23 = MEMORY[0x1865CB200](v7, v8);
      v24 = v7;
      if (v23)
      {
        v25 = v23;
        v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v23, 0);

        v27 = v8;
        v28 = specialized Sequence._copySequenceContents(initializing:)(&v257, (v26 + 4), v25, v24, v8);

        if (v28 != v25)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v27 = v8;
        v26 = MEMORY[0x1E69E7CC0];
      }

      LODWORD(v257) = 0;
      v29 = v245;
      if (v26[2] >> 31)
      {
        goto LABEL_166;
      }

      String.utf8CString.getter();

      v30 = unumf_openForSkeletonAndLocale();

      v31 = v22;
      if (v30)
      {
        if (v257 < 1)
        {
          *(v22 + 16) = v30;
LABEL_17:
          os_unfair_lock_lock((v29 + 24));
          if (v241 >= *(*(v29 + 16) + 16))
          {
          }

          else
          {
            *(v29 + 16) = MEMORY[0x1E69E7CC8];
          }

          v32 = v31;

          v33 = v27;

          v34 = v248;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v257 = *(v29 + 16);
          v36 = v257;
          *(v29 + 16) = 0x8000000000000000;
          v8 = v33;
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v33, v244, v34);
          v39 = *(v36 + 16);
          v40 = (v38 & 1) == 0;
          v41 = __OFADD__(v39, v40);
          v42 = v39 + v40;
          if (v41)
          {
            goto LABEL_167;
          }

          v43 = v38;
          if (*(v36 + 24) >= v42)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v241 = v37;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
              v48 = static _DictionaryStorage.copy(original:)();
              v44 = v48;
              if (*(v36 + 16))
              {
                v49 = (v48 + 64);
                v50 = ((1 << *(v44 + 32)) + 63) >> 6;
                if (v44 != v36 || v49 >= v36 + 64 + 8 * v50)
                {
                  memmove(v49, (v36 + 64), 8 * v50);
                }

                v240 = v36 + 64;
                v51 = 0;
                *(v44 + 16) = *(v36 + 16);
                v52 = 1 << *(v36 + 32);
                if (v52 < 64)
                {
                  v53 = ~(-1 << v52);
                }

                else
                {
                  v53 = -1;
                }

                v54 = v53 & *(v36 + 64);
                v239 = (v52 + 63) >> 6;
                if (v54)
                {
                  do
                  {
                    v55 = __clz(__rbit64(v54));
                    v243 = (v54 - 1) & v54;
LABEL_42:
                    v58 = v55 | (v51 << 6);
                    v59 = *(v36 + 56);
                    v60 = (*(v36 + 48) + 32 * v58);
                    v61 = *v60;
                    v242 = v60[1];
                    v62 = v242;
                    v63 = v60[2];
                    v64 = v60[3];
                    v65 = *(v59 + 8 * v58);
                    v66 = (*(v44 + 48) + 32 * v58);
                    *v66 = v61;
                    v66[1] = v62;
                    v66[2] = v63;
                    v66[3] = v64;
                    *(*(v44 + 56) + 8 * v58) = v65;

                    v54 = v243;
                  }

                  while (v243);
                }

                v56 = v51;
                while (1)
                {
                  v51 = v56 + 1;
                  if (__OFADD__(v56, 1))
                  {
                    goto LABEL_171;
                  }

                  if (v51 >= v239)
                  {
                    break;
                  }

                  v57 = *(v240 + 8 * v51);
                  ++v56;
                  if (v57)
                  {
                    v55 = __clz(__rbit64(v57));
                    v243 = (v57 - 1) & v57;
                    goto LABEL_42;
                  }
                }
              }

              v37 = v241;
              if (v43)
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            }

            v44 = v36;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
            v44 = v257;
            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v8, v244, v248);
            if ((v43 & 1) != (v45 & 1))
            {
              goto LABEL_176;
            }
          }

          if (v43)
          {
LABEL_27:
            v46 = v37;

            *(*(v44 + 56) + 8 * v46) = v32;

LABEL_46:
            v67 = v245;
            *(v245 + 16) = v44;

            os_unfair_lock_unlock(v67 + 6);

            outlined consume of ICUMeasurementNumberFormatter??(1);
            v20 = v32;
            goto LABEL_47;
          }

LABEL_45:
          specialized _NativeDictionary._insert(at:key:value:)(v37, v24, v8, v244, v248, v32, v44);
          goto LABEL_46;
        }

        unumf_close();
      }

      type metadata accessor for ICUNumberFormatterBase();
      swift_deallocPartialClassInstance();
      v31 = 0;
      goto LABEL_17;
    }

LABEL_47:

    v229 = v8;

    swift_unknownObjectRelease();
    if (!v20)
    {
      goto LABEL_172;
    }

    v68 = 0x705060403020100uLL >> (8 * v246);
    v228 = v20;
    v69 = ICUNumberFormatterBase.attributedFormatPositions(_:)(v247, 0, 0x100000000);
    if (!v70)
    {
      break;
    }

    v72 = v69;
    v73 = v70;
    v74 = v71;

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(&v264, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v252);
    _s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV013DurationFieldF0O_Tt0B5(v68);
    v246 = *(v74 + 16);
    if (v246)
    {
      v244 = v74;
      v245 = v72;
      v75 = 0;
      v76 = v74 + 48;
      v243 = v73;
      while (1)
      {
        if (v75 >= *(v74 + 16))
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
        }

        v248 = v75;
        v249 = v76;
        LODWORD(v247) = *(v76 - 16);
        v77 = v245;
        v257 = v245;
        v258 = v73;
        lazy protocol witness table accessor for type String and conformance String();

        v78 = String.Index.init<A>(utf16Offset:in:)();
        v257 = v77;
        v258 = v73;

        v79 = String.Index.init<A>(utf16Offset:in:)();
        if (v79 >> 14 < v78 >> 14)
        {
          goto LABEL_161;
        }

        v80 = v79;
        v81 = v252;
        v82 = *(v252 + 24);
        v83 = *(v252 + 56);
        v313[1] = *(v252 + 40);
        v313[2] = v83;
        v313[0] = v82;
        if ((v78 & 0xC) == 8)
        {
          v84 = *(v252 + 24);
          v85 = *(v252 + 32);
          v86 = *(v252 + 40);
          v87 = *(v252 + 48);
          v88 = *(v252 + 56);
          v89 = *(v252 + 64);
          v307 = v84;
          v308 = v85;
          v309 = v86;
          v310 = v87;
          v241 = v89;
          v242 = v88;
          v311 = v88;
          v312 = v89;
          if (BigString.UTF16View.count.getter() < (v78 >> 16))
          {
            goto LABEL_65;
          }

          v240 = v78 >> 14;
          BigString.startIndex.getter();
          v238 = v91;
          v239 = v90;
          v237 = v92;

          outlined init with copy of BigString(v313, &v257);
          v96 = BigString.UTF16View.index(_:offsetBy:)();
          if (v240)
          {
            v301 = v84;
            v302 = v85;
            v303 = v86;
            v304 = v87;
            v305 = v242;
            v306 = v241;
            v96 = BigString.UTF8View.index(_:offsetBy:)();
            v240 = v97;
            v241 = v98;
            v242 = v99;
          }

          else
          {
            v241 = v95;
            v242 = v94;
            v240 = v93;
          }

          outlined destroy of BigString(v313);
          v73 = v243;
        }

        else
        {
          v96 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
          v101 = v100;
          v241 = v103;
          v242 = v102;
          if (BigString.endIndex.getter() >> 10 < v96 >> 10)
          {
            goto LABEL_51;
          }

          v240 = v101;
        }

        v104 = *(v81 + 24);
        v105 = *(v81 + 56);
        v299 = *(v81 + 40);
        v300 = v105;
        v298 = v104;
        if ((v80 & 0xC) == 8)
        {
          v239 = v96;
          v106 = *(v81 + 24);
          v107 = *(v81 + 32);
          v108 = *(v81 + 40);
          v109 = *(v81 + 48);
          v111 = *(v81 + 56);
          v110 = *(v81 + 64);
          v292 = v106;
          v293 = v107;
          v294 = v108;
          v295 = v109;
          v296 = v111;
          v238 = v110;
          v297 = v110;
          if (BigString.UTF16View.count.getter() < (v80 >> 16))
          {

LABEL_65:
            v73 = v243;
LABEL_89:
            v74 = v244;
            goto LABEL_51;
          }

          v237 = v80 >> 14;
          BigString.startIndex.getter();
          v235 = v118;
          v236 = v117;
          v234 = v119;
          v314[0] = v298;
          v314[1] = v299;
          v315 = v300;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v314, &v257);
          v112 = BigString.UTF16View.index(_:offsetBy:)();
          if (v237)
          {
            v286 = v106;
            v287 = v107;
            v288 = v108;
            v289 = v109;
            v290 = v111;
            v291 = v238;
            v112 = BigString.UTF8View.index(_:offsetBy:)();
            v236 = v123;
            v237 = v124;
            v238 = v125;
          }

          else
          {
            v237 = v122;
            v238 = v121;
            v236 = v120;
          }

          v96 = v239;
          outlined destroy of BigString(&v298);
          v73 = v243;
        }

        else
        {
          v112 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
          v114 = v113;
          v237 = v116;
          v238 = v115;
          if (BigString.endIndex.getter() >> 10 < v112 >> 10)
          {

            goto LABEL_89;
          }

          v236 = v114;
        }

        v74 = v244;
        v126 = *(v81 + 40);
        v285[3] = *(v81 + 24);
        v285[4] = v126;
        v285[5] = *(v81 + 56);
        if (v96 >> 10 >= BigString.startIndex.getter() >> 10)
        {
          v127 = BigString.endIndex.getter() >> 10;

          if (v127 >= v112 >> 10)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v128 = *(v81 + 40);
              v285[0] = *(v81 + 24);
              v285[1] = v128;
              v285[2] = *(v81 + 56);
              v239 = v96;
              v129 = *(v81 + 72);
              v130 = *(v81 + 80);
              v131 = *(v81 + 88);
              v132 = *(v81 + 96);
              type metadata accessor for AttributedString.Guts();
              swift_allocObject();
              outlined init with copy of BigString(v285, &v257);
              swift_unknownObjectRetain();
              v133 = v130;
              v96 = v239;
              v134 = AttributedString.Guts.init(string:runs:)(v285, v129, v133, v131, v132);

              v252 = v134;
              v81 = v134;
            }

            v135 = v236;
            if (one-time initialization token for _nextVersion != -1)
            {
              swift_once();
            }

            *(v81 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v136 = *(v81 + 40);
            v282 = *(v81 + 24);
            v283 = v136;
            v284 = *(v81 + 56);
            BigString.startIndex.getter();
            BigString.endIndex.getter();
            v271 = v96;
            v272 = v240;
            v273 = v242;
            v274 = v241;
            v275 = v112;
            v276 = v135;
            v277 = v238;
            v278 = v237;
            v137 = *(v81 + 40);
            v279 = *(v81 + 24);
            v280 = v137;
            v281 = *(v81 + 56);
            swift_unknownObjectRetain();

            BigString.UnicodeScalarView.subscript.getter();
            swift_unknownObjectRelease();
            outlined destroy of BigSubstring.UnicodeScalarView(v265);
            v138 = v265[7];
            v240 = v265[9];
            v241 = v265[8];
            v242 = v265[10];
            v139 = v265[11];
            v140 = v265[12];
            v141 = v265[13];
            if (one-time initialization token for currentIdentity != -1)
            {
              swift_once();
            }

            v142 = static AttributedString.currentIdentity;
            os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
            v143 = *(v142 + 16);
            v41 = __OFADD__(v143, 1);
            v144 = v143 + 1;
            if (v41)
            {
              goto LABEL_164;
            }

            v237 = v138;
            v238 = v141;
            v239 = v140;
            *(v142 + 16) = v144;
            os_unfair_lock_unlock((v142 + 24));
            BigString.init()();
            v257 = 0;
            MEMORY[0x1865D26B0](&v257, 8);
            v145 = v257;
            type metadata accessor for AttributedString.Guts();
            v146 = swift_allocObject();
            if ((BigString.isEmpty.getter() & 1) == 0)
            {
              goto LABEL_165;
            }

            v236 = v139;
            *(v146 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v147 = v267;
            *(v146 + 24) = v266;
            *(v146 + 40) = v147;
            *(v146 + 56) = v268;
            *(v146 + 72) = 0;
            *(v146 + 80) = 0;
            *(v146 + 88) = 0;
            *(v146 + 96) = v145;
            *(v146 + 104) = MEMORY[0x1E69E7CC0];

            v252 = v146;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = *(v81 + 40);
              v270[0] = *(v81 + 24);
              v270[1] = v148;
              v270[2] = *(v81 + 56);
              v149 = *(v81 + 72);
              v150 = *(v81 + 80);
              v152 = *(v81 + 88);
              v151 = *(v81 + 96);
              swift_allocObject();
              outlined init with copy of BigString(v270, &v257);
              swift_unknownObjectRetain();
              v153 = v152;
              v73 = v243;
              v154 = AttributedString.Guts.init(string:runs:)(v270, v149, v150, v153, v151);

              v81 = v154;
            }

            v155 = v247 == 11;
            v259 = &type metadata for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component;
            v260 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
            LOBYTE(v257) = v155;
            v261 = v226;
            v262 = 1;
            v263 = 0;
            v156 = *(v81 + 40);
            v269[6] = *(v81 + 24);
            v269[7] = v156;
            v269[8] = *(v81 + 56);
            swift_unknownObjectRetain();
            v157 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v158 = *(v81 + 40);
            v269[3] = *(v81 + 24);
            v269[4] = v158;
            v269[5] = *(v81 + 56);
            swift_unknownObjectRetain();
            v159 = BigString.UnicodeScalarView.index(roundingDown:)();
            v160 = swift_unknownObjectRelease();
            v161 = v157 >> 11;
            v162 = v159 >> 11;
            MEMORY[0x1EEE9AC00](v160);
            v216[2] = 0xD00000000000001FLL;
            v216[3] = v223;
            v217 = &v257;
            AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:), v216, v81, v157 >> 11, v159 >> 11);
            v163 = *(&v261 + 1);
            if (*(&v261 + 1) != 1)
            {
              v164 = v261;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
              v165 = swift_allocObject();
              *(v165 + 16) = v220;
              *(v165 + 32) = v164;
              *(v165 + 40) = v163;
              outlined copy of AttributedString.AttributeRunBoundaries?(v164, v163);
              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v161, v162, 0, v165);
            }

            outlined destroy of AttributedString._AttributeValue(&v257);

            v252 = v81;
            goto LABEL_89;
          }
        }

        else
        {
        }

LABEL_51:
        v75 = v248 + 1;
        v76 = v249 + 24;
        if (v246 == v248 + 1)
        {

          goto LABEL_99;
        }
      }
    }

    v81 = v252;
LABEL_99:

LABEL_100:
    v175 = v230;
    v5 = v231;
    v256 = v231;
    v177 = *(v231 + 16);
    v176 = *(v231 + 24);
    if (v177 >= v176 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v176 > 1), v177 + 1, 1);
      v5 = v256;
    }

    v4 = v175 + 1;
    *(v5 + 16) = v177 + 1;
    *(v5 + 8 * v177 + 32) = v81;
    v2 = v225;
    if (v4 == v224)
    {
      goto LABEL_159;
    }
  }

  v245 = v68;
  v166 = Duration.UnitsFormatStyle._formatFields(_:)(v221, v222);
  v167 = *(v166 + 16);
  v244 = v166;
  if (v167 != 1)
  {
    if (v167 == 2)
    {
      MEMORY[0x1EEE9AC00](v166);
      v217 = v232;
      LODWORD(v218) = 0;
      v169 = v168;
      v170 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
      v172 = 0x7D317B202C7D307BLL;
      if (v171)
      {
        v172 = v170;
      }

      v173 = 0xE800000000000000;
      if (v171)
      {
        v173 = v171;
      }

      v257 = v172;
      v258 = v173;
      v252 = 8204667;
      v253 = 0xE300000000000000;
      v250 = 8204411;
      v251 = 0xE300000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v217 = lazy protocol witness table accessor for type String and conformance String();
      v218 = MEMORY[0x1E69E5EF8];
      RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
      v166 = v169;
      v174 = v245;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v166);
      v179 = v232;
      v217 = v232;
      LODWORD(v218) = 2;
      v180 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
      if (v181)
      {
        v182 = v180;
      }

      else
      {
        v182 = 0x7D317B202C7D307BLL;
      }

      if (v181)
      {
        v183 = v181;
      }

      else
      {
        v183 = 0xE800000000000000;
      }

      MEMORY[0x1EEE9AC00](v180);
      v217 = v179;
      LODWORD(v218) = 3;
      v184 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
      if (v185)
      {
        v186 = v184;
      }

      else
      {
        v186 = 0x7D317B202C7D307BLL;
      }

      if (v185)
      {
        v187 = v185;
      }

      else
      {
        v187 = 0xE800000000000000;
      }

      v257 = v186;
      v258 = v187;
      v188 = v167 - 3;
      if (v167 < 3)
      {
        goto LABEL_169;
      }

      if (v167 != 3)
      {
        do
        {
          v252 = 8204667;
          v253 = 0xE300000000000000;
          v250 = v182;
          v251 = v183;
          if (!v258)
          {
            goto LABEL_170;
          }

          lazy protocol witness table accessor for type String and conformance String();
          v217 = lazy protocol witness table accessor for type String and conformance String();
          v218 = MEMORY[0x1E69E5EF8];
          v184 = RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
          --v188;
        }

        while (v188);
      }

      v252 = 8204667;
      v253 = 0xE300000000000000;
      MEMORY[0x1EEE9AC00](v184);
      v217 = v232;
      LODWORD(v218) = 1;
      v189 = _withFixedUCharBuffer(size:defaultIsError:_:)(128, 0, closure #1 in Duration.UnitsFormatStyle._getListPattern(_:)partial apply);
      v191 = 0x7D317B202C7D307BLL;
      if (v190)
      {
        v191 = v189;
        v192 = v190;
      }

      else
      {
        v192 = 0xE800000000000000;
      }

      v250 = v191;
      v251 = v192;
      if (!v258)
      {
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      lazy protocol witness table accessor for type String and conformance String();
      v193 = lazy protocol witness table accessor for type String and conformance String();
      v194 = MEMORY[0x1E69E5EF8];
      v217 = v193;
      v218 = MEMORY[0x1E69E5EF8];
      RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();

      v252 = 8204667;
      v253 = 0xE300000000000000;
      v250 = 8204411;
      v251 = 0xE300000000000000;
      if (!v258)
      {
        goto LABEL_175;
      }

      v217 = v193;
      v218 = v194;
      RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
      v166 = v244;
      v174 = v245;
    }

    if (!v258)
    {
      goto LABEL_173;
    }

    v178 = *(v166 + 16);
    if (v178)
    {
      goto LABEL_129;
    }

LABEL_155:

    v252 = MEMORY[0x1E69E7CC8];
    v253 = MEMORY[0x1E69E7CD0];
    v259 = &type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
    v260 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
    LOBYTE(v257) = v174;
    v261 = v226;
    v262 = 1;
    v263 = 0;
    specialized AttributedString._AttributeStorage.subscript.setter(&v257, 0xD000000000000021, v219 | 0x8000000000000000);
    v212 = v252;
    v213 = v253;
    BigString.init(_:)();
    AttributedString.init(_:attributes:)(v269, v212, v213, &v257);

    v81 = v257;
    goto LABEL_100;
  }

  v257 = 8204411;
  v258 = 0xE300000000000000;
  v178 = 1;
LABEL_129:
  v243 = v166 + 32;
  while (v178 <= *(v166 + 16))
  {
    v195 = v178 - 1;
    v196 = (v243 + 16 * v195);
    v197 = v196[1];
    v247 = *v196;
    v248 = v197;
    LOBYTE(v252) = 1;
    if ((v258 & 0x2000000000000000) != 0)
    {
      v198 = HIBYTE(v258) & 0xF;
    }

    else
    {
      v198 = v257 & 0xFFFFFFFFFFFFLL;
    }

    v199 = 7;
    if (((v258 >> 60) & ((v257 & 0x800000000000000) == 0)) != 0)
    {
      v199 = 11;
    }

    v200 = v199 | (v198 << 16);

    v201 = specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(v200, 8204411, 0xE300000000000000);
    if (v202)
    {
      goto LABEL_163;
    }

    v203 = v201;
    v246 = v195;
    if (v201 < 0x4000)
    {
      v204 = 1;
    }

    else
    {
      v204 = -1;
    }

    v249 = v204;
    while (1)
    {
      v205 = v203;
      for (i = 15; i < 0x30000; i = String.index(after:)())
      {
        if (4 * v198 <= v205 >> 14)
        {
          break;
        }

        v208 = String.subscript.getter();
        v210 = v209;
        if (v208 == String.subscript.getter() && v210 == v211)
        {
        }

        else
        {
          v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v207 & 1) == 0)
          {
            break;
          }
        }

        v205 = String.index(after:)();
      }

      if ((i & 0xFFFFFFFFFFFFC000) == 0x30000)
      {
        if (v205 >> 14 >= v203 >> 14)
        {
          goto LABEL_131;
        }

        goto LABEL_158;
      }

      if (!(v203 >> 14))
      {
        break;
      }

      v203 = String.index(_:offsetBy:)();
    }

    if (v252)
    {
      goto LABEL_163;
    }

LABEL_131:
    v252 = v247;
    v253 = v248;
    lazy protocol witness table accessor for type String and conformance String();
    String.replaceSubrange<A>(_:with:)();

    v166 = v244;
    v174 = v245;
    v178 = v246;
    if (!v246)
    {
      goto LABEL_155;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  v215 = v5;

  return v215;
}

__n128 Duration.UnitsFormatStyle.Attributed.locale(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2, a2, type metadata accessor for Duration.UnitsFormatStyle);
  v6 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v6;
  *a2 = v6;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Duration.UnitsFormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Duration.UnitsFormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Duration.UnitsFormatStyle.Attributed.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV10AttributedV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Duration.UnitsFormatStyle(0);
  lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, type metadata accessor for Duration.UnitsFormatStyle);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

void Duration.UnitsFormatStyle.Attributed.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v5 = 1;
LABEL_5:
    Hasher._combine(_:)(v5);
    goto LABEL_54;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v52, ObjectType, v3);
  v60[6] = v58;
  v61[0] = *v59;
  *(v61 + 12) = *&v59[12];
  v60[2] = v54;
  v60[3] = v55;
  v60[4] = v56;
  v60[5] = v57;
  v60[0] = v52;
  v60[1] = v53;
  if (_s10Foundation17LocalePreferencesVSgWOg(v60) == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = v52;
  v7 = *(&v52 + 1);
  v8 = *(&v53 + 1);
  v9 = *(&v54 + 1);
  v44 = v55;
  v45 = v56;
  v47 = v57;
  v10 = v58;
  v48 = *v59;
  v49 = *&v59[16];
  v50 = v59[24];
  v51 = v59[25];
  v11 = v59[26];
  v12 = v59[27];
  Hasher._combine(_:)(1u);
  if (v6 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v6 & 1;
  }

  Hasher._combine(_:)(v13);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v7 + 16));
    v14 = *(v7 + 16);
    if (v14)
    {
      v15 = v7 + 40;
      do
      {

        String.hash(into:)();

        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v46 = v11;
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v44)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v44, v16, v17, v18, v19, v20, v21);
    if (*(&v44 + 1))
    {
      goto LABEL_23;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v44 + 1))
    {
LABEL_23:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v44 + 1), v22, v23, v24, v25, v26, v27);
      if (v45)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }
  }

  Hasher._combine(_:)(0);
  if (v45)
  {
LABEL_24:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v45 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  Hasher._combine(_:)(0);
  if (*(&v45 + 1))
  {
LABEL_25:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v47)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  Hasher._combine(_:)(0);
  if (v47)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v28 = v49;
    if (*(&v47 + 1))
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
  v28 = v49;
  if (*(&v47 + 1))
  {
LABEL_27:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v10)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  Hasher._combine(_:)(0);
  if (v10)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v29 = v50;
    v30 = v51;
    if (*(&v10 + 1))
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  Hasher._combine(_:)(0);
  v29 = v50;
  v30 = v51;
  if (*(&v10 + 1))
  {
LABEL_29:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, *(&v10 + 1));
    if (v48)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  Hasher._combine(_:)(0);
  if (v48)
  {
LABEL_30:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v48);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_42:
    Hasher._combine(_:)(0);
    if (v29 == 2)
    {
      goto LABEL_32;
    }

LABEL_43:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v29 & 1);
    goto LABEL_44;
  }

LABEL_41:
  Hasher._combine(_:)(0);
  if (!v28)
  {
    goto LABEL_42;
  }

LABEL_31:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v29 != 2)
  {
    goto LABEL_43;
  }

LABEL_32:
  Hasher._combine(_:)(0);
LABEL_44:
  if (v30 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v30 & 1);
  }

  if (v46 == 2)
  {
    v31 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v31 = v46 & 1;
  }

  Hasher._combine(_:)(v31);
  if (v12 == 2)
  {
    v32 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v32 = v12 & 1;
  }

  Hasher._combine(_:)(v32);
  outlined destroy of TermOfAddress?(&v52, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_54:
  specialized Set.hash(into:)(a1, *(v1 + 16));
  v33 = *(v1 + 28);
  MEMORY[0x1865CD060](*(v1 + 24));
  Hasher._combine(_:)(v33);
  if (*(v1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v34);
  }

  MEMORY[0x1865CD060](*(v1 + 48));
  v35 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v36 = (v1 + *(v35 + 36));
  MEMORY[0x1865CD060](*v36);
  MEMORY[0x1865CD060](v36[1]);
  v37 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  type metadata accessor for FloatingPointRoundingRule();
  dispatch thunk of Hashable.hash(into:)();
  v38 = v36 + *(v37 + 28);
  if (v38[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v39 = *v38;
    Hasher._combine(_:)(1u);
    if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    MEMORY[0x1865CD090](v40);
  }

  v41 = (v1 + *(v35 + 40));
  if (*(v41 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v43 = *v41;
    v42 = v41[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v43);
    MEMORY[0x1865CD060](v42);
  }
}

uint64_t Duration.UnitsFormatStyle.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1(0);
  lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(a2, a3);

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t Duration.UnitsFormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for Duration.UnitsFormatStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV10AttributedV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Duration.UnitsFormatStyle.Attributed(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, type metadata accessor for Duration.UnitsFormatStyle);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v13, v11, type metadata accessor for Duration.UnitsFormatStyle);
    outlined init with take of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v11, v12, type metadata accessor for Duration.UnitsFormatStyle.Attributed);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Duration.UnitsFormatStyle.Attributed(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVys8DurationV10FoundationE16UnitsFormatStyleV10AttributedV10CodingKeys33_400FFB0534F5EB3476446C513C4D4276LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Duration.UnitsFormatStyle(0);
  lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, type metadata accessor for Duration.UnitsFormatStyle);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Duration.UnitsFormatStyle.Attributed()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 48))(ObjectType, v1))
  {
    v3 = 1;
LABEL_5:
    Hasher._combine(_:)(v3);
    goto LABEL_54;
  }

  Hasher._combine(_:)(0);
  (*(v1 + 64))(ObjectType, v1);
  String.hash(into:)();

  (*(v1 + 464))(&v52, ObjectType, v1);
  v60[6] = v58;
  v61[0] = *v59;
  *(v61 + 12) = *&v59[12];
  v60[2] = v54;
  v60[3] = v55;
  v60[4] = v56;
  v60[5] = v57;
  v60[0] = v52;
  v60[1] = v53;
  if (_s10Foundation17LocalePreferencesVSgWOg(v60) == 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v4 = v52;
  v5 = *(&v52 + 1);
  v6 = *(&v53 + 1);
  v7 = *(&v54 + 1);
  v45 = v55;
  v8 = v57;
  v46 = v56;
  v47 = *(&v57 + 1);
  v48 = v58;
  v9 = *v59;
  v10 = v59[24];
  v49 = *&v59[16];
  v50 = v59[25];
  v51 = v59[26];
  v11 = v59[27];
  Hasher._combine(_:)(1u);
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4 & 1);
    if (v5)
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v5 + 16));
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = v5 + 40;
        do
        {

          String.hash(into:)();

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  Hasher._combine(_:)(0);
  if (v6)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_16;
  }

LABEL_15:
  Hasher._combine(_:)(0);
LABEL_16:
  v14 = v10;
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = v8;
  if (v45)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v62, v45, v16, v17, v18, v19, v20, v21);
    v22 = v50;
    if (*(&v45 + 1))
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v62, *(&v45 + 1), v23, v24, v25, v26, v27, v28);
      goto LABEL_24;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v22 = v50;
    if (*(&v45 + 1))
    {
      goto LABEL_21;
    }
  }

  Hasher._combine(_:)(0);
LABEL_24:
  if (v46)
  {
    v29 = v14;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v46 + 1))
    {
LABEL_26:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_29;
    }
  }

  else
  {
    v29 = v14;
    Hasher._combine(_:)(0);
    if (*(&v46 + 1))
    {
      goto LABEL_26;
    }
  }

  Hasher._combine(_:)(0);
LABEL_29:
  if (v15)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v47)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v48)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v48 + 1))
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v48 + 1))
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v62, *(&v48 + 1));
      if (v9)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  Hasher._combine(_:)(0);
  if (v9)
  {
LABEL_38:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v62, v9);
    v30 = v11;
    if (v49)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

LABEL_45:
  Hasher._combine(_:)(0);
  v30 = v11;
  if (v49)
  {
LABEL_39:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v29 == 2)
    {
      goto LABEL_40;
    }

    goto LABEL_47;
  }

LABEL_46:
  Hasher._combine(_:)(0);
  if (v29 == 2)
  {
LABEL_40:
    Hasher._combine(_:)(0);
    if (v22 != 2)
    {
      goto LABEL_41;
    }

LABEL_48:
    Hasher._combine(_:)(0);
    if (v51 != 2)
    {
      goto LABEL_42;
    }

LABEL_49:
    v31 = 0;
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v29 & 1);
  if (v22 == 2)
  {
    goto LABEL_48;
  }

LABEL_41:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v22 & 1);
  if (v51 == 2)
  {
    goto LABEL_49;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  v31 = v51 & 1;
LABEL_50:
  Hasher._combine(_:)(v31);
  if (v30 == 2)
  {
    v32 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v32 = v30 & 1;
  }

  Hasher._combine(_:)(v32);
  outlined destroy of TermOfAddress?(&v52, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_54:
  specialized Set.hash(into:)(v62, *(v0 + 16));
  v33 = *(v0 + 28);
  MEMORY[0x1865CD060](*(v0 + 24));
  Hasher._combine(_:)(v33);
  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v34);
  }

  MEMORY[0x1865CD060](*(v0 + 48));
  v35 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v36 = (v0 + *(v35 + 36));
  MEMORY[0x1865CD060](*v36);
  MEMORY[0x1865CD060](v36[1]);
  v37 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  type metadata accessor for FloatingPointRoundingRule();
  dispatch thunk of Hashable.hash(into:)();
  v38 = v36 + *(v37 + 28);
  if (v38[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v39 = *v38;
    Hasher._combine(_:)(1u);
    if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    MEMORY[0x1865CD090](v40);
  }

  v41 = (v0 + *(v35 + 40));
  if (*(v41 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v43 = *v41;
    v42 = v41[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v43);
    MEMORY[0x1865CD060](v42);
  }

  return Hasher._finalize()();
}

uint64_t Duration.UnitsFormatStyle.Attributed.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  specialized Duration.UnitsFormatStyle.Attributed.subscript.setter(a1);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

void (*Duration.UnitsFormatStyle.Attributed.subscript.modify(void *a1, void *a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v8[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(v11);
    v8[5] = malloc(v11);
    v12 = malloc(v11);
  }

  v8[6] = v12;
  swift_getAtKeyPath();
  return Duration.UnitsFormatStyle.Attributed.subscript.modify;
}

void Duration.UnitsFormatStyle.Attributed.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 24) + 16);
  v4(*(*a1 + 40), v3[6], v3[2]);
  v5 = v3[5];
  v11 = v3[6];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[2];
  if (a2)
  {
    v4(v3[4], v5, v3[2]);
    swift_setAtWritableKeyPath();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_setAtWritableKeyPath();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t Duration.UnitsFormatStyle.Attributed.discreteInput(before:)(uint64_t a1, uint64_t a2)
{
  v84[9] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = 0;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[2];
  v82 = a1;
  v83 = v12;
  v13 = a1;
  v14 = a2;
  v15 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v13, a2, 1, v12);
  v17 = v16;
  v19 = v18;
  v81 = v5;
  if (v18)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7020], v8);
  }

  else
  {
    v20 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v20 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    (*(v9 + 32))(v11, v7 + *(v5 + 24), v8);
  }

  v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v82, v14, v15, v17, 1, v11);
  v23 = v22;
  v25 = v24;
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v26 = v28;
  v29 = (v28)(v11, v8);
  if (v19)
  {
    v78 = v26;
    v79 = v27;
    v77 = v73;
    MEMORY[0x1EEE9AC00](v29);
    v73[-2] = v21;
    v73[-1] = v23;
    v30 = v83;
    v31 = *(v83 + 32);
    v32 = v31 & 0x3F;
    v73[0] = ((1 << v31) + 63) >> 6;
    v33 = 8 * v73[0];

    if (v32 > 0xD)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v74 = v8;
      v75 = v2;
      v76 = v7;
      v73[1] = v73;
      MEMORY[0x1EEE9AC00](v34);
      v35 = (v73 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v35, v33);
      v82 = 0;
      v36 = 0;
      v37 = v30 + 56;
      v38 = 1 << *(v30 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v7 = v39 & *(v30 + 56);
      v8 = (v38 + 63) >> 6;
      while (1)
      {
        if (!v7)
        {
          v42 = v36;
          v33 = v82;
          while (1)
          {
            v36 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v36 >= v8)
            {
              goto LABEL_26;
            }

            v43 = *(v37 + 8 * v36);
            ++v42;
            if (v43)
            {
              v41 = __clz(__rbit64(v43));
              v7 = (v43 - 1) & v43;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_56;
        }

        v41 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_17:
        v33 = v41 | (v36 << 6);
        v44 = *(*(v30 + 48) + v33);
        if (v44 < 5)
        {
          v84[0] = qword_18122C670[v44];
          lazy protocol witness table accessor for type Int64 and conformance Int64();
          static Duration.* infix<A>(_:_:)();
        }

        else
        {
          v45 = v44 - 5;
          if (v45 > 2u)
          {
            __break(1u);
          }

          static Duration.interval(fractionalSecondsLength:)((3 * v45 + 3));
        }

        v2 = v46;
        static Duration.zero.getter();
        if (static Duration.< infix(_:_:)())
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        v40 = static Duration.< infix(_:_:)();
        v30 = v83;
        if (v40)
        {
          *(v35 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
          if (__OFADD__(v82++, 1))
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_26:
      if (!v33)
      {

        v48 = MEMORY[0x1E69E7CD0];
        goto LABEL_50;
      }

      if (v33 == *(v30 + 16))
      {
        v48 = v30;
LABEL_50:
        v2 = v75;
        v7 = v76;
        v8 = v74;
        goto LABEL_51;
      }

      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
      v48 = static _SetStorage.allocate(capacity:)();
      v8 = 0;
      v7 = *v35;
      v49 = v48 + 56;
      while (v7)
      {
        v51 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_40:
        v30 = *(*(v30 + 48) + (v51 | (v8 << 6)));
        Hasher.init(_seed:)();
        v2 = v84;
        MEMORY[0x1865CD060](v30);
        v54 = Hasher._finalize()();
        v55 = -1 << *(v48 + 32);
        v56 = v54 & ~v55;
        v57 = v56 >> 6;
        if (((-1 << v56) & ~*(v49 + 8 * (v56 >> 6))) == 0)
        {
          v58 = 0;
          v59 = (63 - v55) >> 6;
          while (++v57 != v59 || (v58 & 1) == 0)
          {
            v60 = v57 == v59;
            if (v57 == v59)
            {
              v57 = 0;
            }

            v58 |= v60;
            v61 = *(v49 + 8 * v57);
            if (v61 != -1)
            {
              v50 = __clz(__rbit64(~v61)) + (v57 << 6);
              goto LABEL_32;
            }
          }

          goto LABEL_57;
        }

        v50 = __clz(__rbit64((-1 << v56) & ~*(v49 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
        *(v49 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        *(*(v48 + 48) + v50) = v30;
        ++*(v48 + 16);
        --v33;
        v30 = v83;
        if (!v33)
        {
LABEL_49:

          goto LABEL_50;
        }
      }

      v52 = v8;
      while (1)
      {
        v8 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v8 >= v73[0])
        {
          goto LABEL_49;
        }

        v53 = v35[v8];
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v7 = (v53 - 1) & v53;
          goto LABEL_40;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v69 = v30;
    v70 = swift_slowAlloc();

    v71 = v80;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVys8DurationV10FoundationE16UnitsFormatStyleV4UnitVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_s8i3V10j3E16klm2V4N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v70, v73[0], v69, partial apply for closure #1 in Duration.UnitsFormatStyle.bound(for:countingDown:));
    if (v71)
    {

      swift_bridgeObjectRelease_n();
      result = MEMORY[0x1865D2690](v70, -1, -1);
      __break(1u);
      return result;
    }

    v48 = v72;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1865D2690](v70, -1, -1);
LABEL_51:
    v62 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v21, v23, 1, v48);
    v64 = v63;

    v65 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v65 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    v66 = *(v81 + 24);
    v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v21, v23, v62, v64, 1, v7 + v66);
    v25 = v67;
    v78(v7 + v66, v8);
  }

  if (v25)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    return static Duration.- infix(_:_:)();
  }

  return v21;
}

uint64_t Duration.UnitsFormatStyle.discreteInput(before:)(uint64_t a1, uint64_t a2)
{
  v84[9] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = 0;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[2];
  v82 = a1;
  v83 = v12;
  v13 = a1;
  v14 = a2;
  v15 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v13, a2, 1, v12);
  v17 = v16;
  v19 = v18;
  v81 = v5;
  if (v18)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7020], v8);
  }

  else
  {
    v20 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v20 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    (*(v9 + 32))(v11, v7 + *(v5 + 24), v8);
  }

  v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v82, v14, v15, v17, 1, v11);
  v23 = v22;
  v25 = v24;
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v26 = v28;
  v29 = (v28)(v11, v8);
  if (v19)
  {
    v78 = v26;
    v79 = v27;
    v77 = v73;
    MEMORY[0x1EEE9AC00](v29);
    v73[-2] = v21;
    v73[-1] = v23;
    v30 = v83;
    v31 = *(v83 + 32);
    v32 = v31 & 0x3F;
    v73[0] = ((1 << v31) + 63) >> 6;
    v33 = 8 * v73[0];

    if (v32 > 0xD)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v74 = v8;
      v75 = v2;
      v76 = v7;
      v73[1] = v73;
      MEMORY[0x1EEE9AC00](v34);
      v35 = (v73 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v35, v33);
      v82 = 0;
      v36 = 0;
      v37 = v30 + 56;
      v38 = 1 << *(v30 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v7 = v39 & *(v30 + 56);
      v8 = (v38 + 63) >> 6;
      while (1)
      {
        if (!v7)
        {
          v42 = v36;
          v33 = v82;
          while (1)
          {
            v36 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v36 >= v8)
            {
              goto LABEL_26;
            }

            v43 = *(v37 + 8 * v36);
            ++v42;
            if (v43)
            {
              v41 = __clz(__rbit64(v43));
              v7 = (v43 - 1) & v43;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_56;
        }

        v41 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_17:
        v33 = v41 | (v36 << 6);
        v44 = *(*(v30 + 48) + v33);
        if (v44 < 5)
        {
          v84[0] = qword_18122C670[v44];
          lazy protocol witness table accessor for type Int64 and conformance Int64();
          static Duration.* infix<A>(_:_:)();
        }

        else
        {
          v45 = v44 - 5;
          if (v45 > 2u)
          {
            __break(1u);
          }

          static Duration.interval(fractionalSecondsLength:)((3 * v45 + 3));
        }

        v2 = v46;
        static Duration.zero.getter();
        if (static Duration.< infix(_:_:)())
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        v40 = static Duration.< infix(_:_:)();
        v30 = v83;
        if (v40)
        {
          *(v35 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
          if (__OFADD__(v82++, 1))
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_26:
      if (!v33)
      {

        v48 = MEMORY[0x1E69E7CD0];
        goto LABEL_50;
      }

      if (v33 == *(v30 + 16))
      {
        v48 = v30;
LABEL_50:
        v2 = v75;
        v7 = v76;
        v8 = v74;
        goto LABEL_51;
      }

      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
      v48 = static _SetStorage.allocate(capacity:)();
      v8 = 0;
      v7 = *v35;
      v49 = v48 + 56;
      while (v7)
      {
        v51 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_40:
        v30 = *(*(v30 + 48) + (v51 | (v8 << 6)));
        Hasher.init(_seed:)();
        v2 = v84;
        MEMORY[0x1865CD060](v30);
        v54 = Hasher._finalize()();
        v55 = -1 << *(v48 + 32);
        v56 = v54 & ~v55;
        v57 = v56 >> 6;
        if (((-1 << v56) & ~*(v49 + 8 * (v56 >> 6))) == 0)
        {
          v58 = 0;
          v59 = (63 - v55) >> 6;
          while (++v57 != v59 || (v58 & 1) == 0)
          {
            v60 = v57 == v59;
            if (v57 == v59)
            {
              v57 = 0;
            }

            v58 |= v60;
            v61 = *(v49 + 8 * v57);
            if (v61 != -1)
            {
              v50 = __clz(__rbit64(~v61)) + (v57 << 6);
              goto LABEL_32;
            }
          }

          goto LABEL_57;
        }

        v50 = __clz(__rbit64((-1 << v56) & ~*(v49 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
        *(v49 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        *(*(v48 + 48) + v50) = v30;
        ++*(v48 + 16);
        --v33;
        v30 = v83;
        if (!v33)
        {
LABEL_49:

          goto LABEL_50;
        }
      }

      v52 = v8;
      while (1)
      {
        v8 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v8 >= v73[0])
        {
          goto LABEL_49;
        }

        v53 = v35[v8];
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v7 = (v53 - 1) & v53;
          goto LABEL_40;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v69 = v30;
    v70 = swift_slowAlloc();

    v71 = v80;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVys8DurationV10FoundationE16UnitsFormatStyleV4UnitVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_s8i3V10j3E16klm2V4N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v70, v73[0], v69, closure #1 in Duration.UnitsFormatStyle.bound(for:countingDown:)partial apply);
    if (v71)
    {

      swift_bridgeObjectRelease_n();
      result = MEMORY[0x1865D2690](v70, -1, -1);
      __break(1u);
      return result;
    }

    v48 = v72;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1865D2690](v70, -1, -1);
LABEL_51:
    v62 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v21, v23, 1, v48);
    v64 = v63;

    v65 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v65 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    v66 = *(v81 + 24);
    v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v21, v23, v62, v64, 1, v7 + v66);
    v25 = v67;
    v78(v7 + v66, v8);
  }

  if (v25)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    return static Duration.- infix(_:_:)();
  }

  return v21;
}

uint64_t Duration.UnitsFormatStyle.Attributed.discreteInput(after:)(uint64_t a1, uint64_t a2)
{
  v84[9] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = 0;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[2];
  v82 = a1;
  v83 = v12;
  v13 = a1;
  v14 = a2;
  v15 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v13, a2, 0, v12);
  v17 = v16;
  v19 = v18;
  v81 = v5;
  if (v18)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7020], v8);
  }

  else
  {
    v20 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v20 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    (*(v9 + 32))(v11, v7 + *(v5 + 24), v8);
  }

  v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v82, v14, v15, v17, 0, v11);
  v23 = v22;
  v25 = v24;
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v26 = v28;
  v29 = (v28)(v11, v8);
  if (v19)
  {
    v78 = v26;
    v79 = v27;
    v77 = v73;
    MEMORY[0x1EEE9AC00](v29);
    v73[-2] = v21;
    v73[-1] = v23;
    v30 = v83;
    v31 = *(v83 + 32);
    v32 = v31 & 0x3F;
    v73[0] = ((1 << v31) + 63) >> 6;
    v33 = 8 * v73[0];

    if (v32 > 0xD)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v74 = v8;
      v75 = v2;
      v76 = v7;
      v73[1] = v73;
      MEMORY[0x1EEE9AC00](v34);
      v35 = (v73 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v35, v33);
      v82 = 0;
      v36 = 0;
      v37 = v30 + 56;
      v38 = 1 << *(v30 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v7 = v39 & *(v30 + 56);
      v8 = (v38 + 63) >> 6;
      while (1)
      {
        if (!v7)
        {
          v42 = v36;
          v33 = v82;
          while (1)
          {
            v36 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v36 >= v8)
            {
              goto LABEL_26;
            }

            v43 = *(v37 + 8 * v36);
            ++v42;
            if (v43)
            {
              v41 = __clz(__rbit64(v43));
              v7 = (v43 - 1) & v43;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_56;
        }

        v41 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_17:
        v33 = v41 | (v36 << 6);
        v44 = *(*(v30 + 48) + v33);
        if (v44 < 5)
        {
          v84[0] = qword_18122C670[v44];
          lazy protocol witness table accessor for type Int64 and conformance Int64();
          static Duration.* infix<A>(_:_:)();
        }

        else
        {
          v45 = v44 - 5;
          if (v45 > 2u)
          {
            __break(1u);
          }

          static Duration.interval(fractionalSecondsLength:)((3 * v45 + 3));
        }

        v2 = v46;
        static Duration.zero.getter();
        if (static Duration.< infix(_:_:)())
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        v40 = static Duration.< infix(_:_:)();
        v30 = v83;
        if (v40)
        {
          *(v35 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
          if (__OFADD__(v82++, 1))
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_26:
      if (!v33)
      {

        v48 = MEMORY[0x1E69E7CD0];
        goto LABEL_50;
      }

      if (v33 == *(v30 + 16))
      {
        v48 = v30;
LABEL_50:
        v2 = v75;
        v7 = v76;
        v8 = v74;
        goto LABEL_51;
      }

      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
      v48 = static _SetStorage.allocate(capacity:)();
      v8 = 0;
      v7 = *v35;
      v49 = v48 + 56;
      while (v7)
      {
        v51 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_40:
        v30 = *(*(v30 + 48) + (v51 | (v8 << 6)));
        Hasher.init(_seed:)();
        v2 = v84;
        MEMORY[0x1865CD060](v30);
        v54 = Hasher._finalize()();
        v55 = -1 << *(v48 + 32);
        v56 = v54 & ~v55;
        v57 = v56 >> 6;
        if (((-1 << v56) & ~*(v49 + 8 * (v56 >> 6))) == 0)
        {
          v58 = 0;
          v59 = (63 - v55) >> 6;
          while (++v57 != v59 || (v58 & 1) == 0)
          {
            v60 = v57 == v59;
            if (v57 == v59)
            {
              v57 = 0;
            }

            v58 |= v60;
            v61 = *(v49 + 8 * v57);
            if (v61 != -1)
            {
              v50 = __clz(__rbit64(~v61)) + (v57 << 6);
              goto LABEL_32;
            }
          }

          goto LABEL_57;
        }

        v50 = __clz(__rbit64((-1 << v56) & ~*(v49 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
        *(v49 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        *(*(v48 + 48) + v50) = v30;
        ++*(v48 + 16);
        --v33;
        v30 = v83;
        if (!v33)
        {
LABEL_49:

          goto LABEL_50;
        }
      }

      v52 = v8;
      while (1)
      {
        v8 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v8 >= v73[0])
        {
          goto LABEL_49;
        }

        v53 = v35[v8];
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v7 = (v53 - 1) & v53;
          goto LABEL_40;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v69 = v30;
    v70 = swift_slowAlloc();

    v71 = v80;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVys8DurationV10FoundationE16UnitsFormatStyleV4UnitVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_s8i3V10j3E16klm2V4N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v70, v73[0], v69, closure #1 in Duration.UnitsFormatStyle.bound(for:countingDown:)partial apply);
    if (v71)
    {

      swift_bridgeObjectRelease_n();
      result = MEMORY[0x1865D2690](v70, -1, -1);
      __break(1u);
      return result;
    }

    v48 = v72;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1865D2690](v70, -1, -1);
LABEL_51:
    v62 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v21, v23, 0, v48);
    v64 = v63;

    v65 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v65 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    v66 = *(v81 + 24);
    v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v21, v23, v62, v64, 0, v7 + v66);
    v25 = v67;
    v78(v7 + v66, v8);
  }

  if (v25)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    return static Duration.+ infix(_:_:)();
  }

  return v21;
}

uint64_t Duration.UnitsFormatStyle.discreteInput(after:)(uint64_t a1, uint64_t a2)
{
  v84[9] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = 0;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[2];
  v82 = a1;
  v83 = v12;
  v13 = a1;
  v14 = a2;
  v15 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v13, a2, 0, v12);
  v17 = v16;
  v19 = v18;
  v81 = v5;
  if (v18)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7020], v8);
  }

  else
  {
    v20 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v20 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    (*(v9 + 32))(v11, v7 + *(v5 + 24), v8);
  }

  v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v82, v14, v15, v17, 0, v11);
  v23 = v22;
  v25 = v24;
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v26 = v28;
  v29 = (v28)(v11, v8);
  if (v19)
  {
    v78 = v26;
    v79 = v27;
    v77 = v73;
    MEMORY[0x1EEE9AC00](v29);
    v73[-2] = v21;
    v73[-1] = v23;
    v30 = v83;
    v31 = *(v83 + 32);
    v32 = v31 & 0x3F;
    v73[0] = ((1 << v31) + 63) >> 6;
    v33 = 8 * v73[0];

    if (v32 > 0xD)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v74 = v8;
      v75 = v2;
      v76 = v7;
      v73[1] = v73;
      MEMORY[0x1EEE9AC00](v34);
      v35 = (v73 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v35, v33);
      v82 = 0;
      v36 = 0;
      v37 = v30 + 56;
      v38 = 1 << *(v30 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v7 = v39 & *(v30 + 56);
      v8 = (v38 + 63) >> 6;
      while (1)
      {
        if (!v7)
        {
          v42 = v36;
          v33 = v82;
          while (1)
          {
            v36 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v36 >= v8)
            {
              goto LABEL_26;
            }

            v43 = *(v37 + 8 * v36);
            ++v42;
            if (v43)
            {
              v41 = __clz(__rbit64(v43));
              v7 = (v43 - 1) & v43;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_56;
        }

        v41 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_17:
        v33 = v41 | (v36 << 6);
        v44 = *(*(v30 + 48) + v33);
        if (v44 < 5)
        {
          v84[0] = qword_18122C670[v44];
          lazy protocol witness table accessor for type Int64 and conformance Int64();
          static Duration.* infix<A>(_:_:)();
        }

        else
        {
          v45 = v44 - 5;
          if (v45 > 2u)
          {
            __break(1u);
          }

          static Duration.interval(fractionalSecondsLength:)((3 * v45 + 3));
        }

        v2 = v46;
        static Duration.zero.getter();
        if (static Duration.< infix(_:_:)())
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        v40 = static Duration.< infix(_:_:)();
        v30 = v83;
        if (v40)
        {
          *(v35 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
          if (__OFADD__(v82++, 1))
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_26:
      if (!v33)
      {

        v48 = MEMORY[0x1E69E7CD0];
        goto LABEL_50;
      }

      if (v33 == *(v30 + 16))
      {
        v48 = v30;
LABEL_50:
        v2 = v75;
        v7 = v76;
        v8 = v74;
        goto LABEL_51;
      }

      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
      v48 = static _SetStorage.allocate(capacity:)();
      v8 = 0;
      v7 = *v35;
      v49 = v48 + 56;
      while (v7)
      {
        v51 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_40:
        v30 = *(*(v30 + 48) + (v51 | (v8 << 6)));
        Hasher.init(_seed:)();
        v2 = v84;
        MEMORY[0x1865CD060](v30);
        v54 = Hasher._finalize()();
        v55 = -1 << *(v48 + 32);
        v56 = v54 & ~v55;
        v57 = v56 >> 6;
        if (((-1 << v56) & ~*(v49 + 8 * (v56 >> 6))) == 0)
        {
          v58 = 0;
          v59 = (63 - v55) >> 6;
          while (++v57 != v59 || (v58 & 1) == 0)
          {
            v60 = v57 == v59;
            if (v57 == v59)
            {
              v57 = 0;
            }

            v58 |= v60;
            v61 = *(v49 + 8 * v57);
            if (v61 != -1)
            {
              v50 = __clz(__rbit64(~v61)) + (v57 << 6);
              goto LABEL_32;
            }
          }

          goto LABEL_57;
        }

        v50 = __clz(__rbit64((-1 << v56) & ~*(v49 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
        *(v49 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        *(*(v48 + 48) + v50) = v30;
        ++*(v48 + 16);
        --v33;
        v30 = v83;
        if (!v33)
        {
LABEL_49:

          goto LABEL_50;
        }
      }

      v52 = v8;
      while (1)
      {
        v8 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v8 >= v73[0])
        {
          goto LABEL_49;
        }

        v53 = v35[v8];
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v7 = (v53 - 1) & v53;
          goto LABEL_40;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v69 = v30;
    v70 = swift_slowAlloc();

    v71 = v80;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVys8DurationV10FoundationE16UnitsFormatStyleV4UnitVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_s8i3V10j3E16klm2V4N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v70, v73[0], v69, closure #1 in Duration.UnitsFormatStyle.bound(for:countingDown:)partial apply);
    if (v71)
    {

      swift_bridgeObjectRelease_n();
      result = MEMORY[0x1865D2690](v70, -1, -1);
      __break(1u);
      return result;
    }

    v48 = v72;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1865D2690](v70, -1, -1);
LABEL_51:
    v62 = Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(v21, v23, 0, v48);
    v64 = v63;

    v65 = type metadata accessor for Duration.UnitsFormatStyle(0);
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v2 + *(v65 + 36), v7, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    v66 = *(v81 + 24);
    v21 = static Duration.bound(for:in:countingDown:roundingRule:)(v21, v23, v62, v64, 0, v7 + v66);
    v25 = v67;
    v78(v7 + v66, v8);
  }

  if (v25)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    return static Duration.+ infix(_:_:)();
  }

  return v21;
}

uint64_t Duration.UnitsFormatStyle.interval(for:countingDown:allowedUnits:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v163 = a3;
  v188 = a2;
  v186 = a1;
  v177 = type metadata accessor for FloatingPointRoundingRule();
  v187 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v162 = &v142[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v185 = &v142[-v7];
  v178 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  MEMORY[0x1EEE9AC00](v178);
  v183 = &v142[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v184 = &v142[-v10];
  v11 = 0;
  v12 = a4 + 56;
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*(a4 + 16))
    {
      v16 = outlined read-only object #0 of static Duration.UnitsFormatStyle.Unit._Unit.allCases.getter[v11 + 32];
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(a4 + 48) + v19) != v16)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v191 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = v191;
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v13 = v191;
        }

        *(v13 + 16) = v15 + 1;
        *(v13 + v15 + 32) = v16;
      }
    }

LABEL_5:
    ++v11;
  }

  while (v11 != 8);
  v22 = *(v13 + 16);
  if (v22)
  {
    v192 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v192;
    v24 = *(v192 + 16);
    v25 = 32;
    v26 = v187;
    do
    {
      v27 = *(v13 + v25);
      v192 = v23;
      v28 = *(v23 + 24);
      if (v24 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v24 + 1, 1);
        v23 = v192;
      }

      *(v23 + 16) = v24 + 1;
      *(v23 + v24 + 32) = v27;
      ++v25;
      ++v24;
      --v22;
    }

    while (v22);
    v29 = v23;

    v30 = v29;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
    v26 = v187;
  }

  v31 = *(v30 + 16);
  v32 = v185;
  v33 = v178;
  v34 = v184;
  if (!v31)
  {

    return -1000000000000000000;
  }

  v172 = v30;
  v171 = v30 + 32;
  v35 = *(v30 + 32 + v31 - 1);
  v182 = v35;
  v192 = v186;
  v193 = v188;
  v36 = v153;
  v37 = *(v153 + 32);
  v97 = *(v153 + 40) == 0;
  v165 = v31;
  if (!v97)
  {
    v37 = v31;
  }

  v174 = v37;
  v175 = v36 + *(type metadata accessor for Duration.UnitsFormatStyle(0) + 36);
  outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v175, v34, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
  v38 = *(v33 + 24);
  v39 = *(v26 + 104);
  v154 = *MEMORY[0x1E69E7030];
  v40 = v26;
  v41 = v177;
  v181 = v39;
  v39(v32);
  v42 = static FloatingPointRoundingRule.== infix(_:_:)();
  v43 = v40 + 8;
  v44 = *(v40 + 8);
  v44(v32, v41);
  v44((v34 + v38), v41);
  v45 = MEMORY[0x1E69E7038];
  if (v42)
  {
    v158 = *MEMORY[0x1E69E7038];
    v147 = 1;
  }

  else
  {
    outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v175, v34, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
    v47 = *(v178 + 24);
    v158 = *v45;
    v48 = v177;
    v181(v32);
    v147 = static FloatingPointRoundingRule.== infix(_:_:)();
    v44(v32, v48);
    v44((v34 + v47), v48);
  }

  v169 = v44;
  v170 = v43;
  v49 = 0;
  v151 = 0;
  v152 = 0;
  v150 = 0;
  v157 = (v187 + 16);
  v156 = (v187 + 88);
  v148 = *MEMORY[0x1E69E7040];
  v145 = *MEMORY[0x1E69E7048];
  v144 = *MEMORY[0x1E69E7020];
  v143 = *MEMORY[0x1E69E7028];
  v160 = (3 * v35 - 12);
  v159 = v160 ^ 0x7FFFFFFFFFFFFFFFLL;
  v155 = v182 - 5;
  v146 = v165 - 1;
  v149 = 1;
  v161 = (v35 - 5);
  v50 = v178;
  v51 = v172;
  v173 = v35;
  v52 = v175;
  while (2)
  {
    v53 = v49;
    while (1)
    {
      if (v53 >= *(v51 + 16))
      {
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
        goto LABEL_202;
      }

      if (v174 < 1)
      {
LABEL_190:
        if (v149)
        {
          goto LABEL_213;
        }

LABEL_191:

        return v152;
      }

      v54 = *(v171 + v53);
      v55 = v54 - 5;
      v180 = v53;
      v168 = v174 - 1;
      if (v54 < 5)
      {
        static Duration.interval(fractionalSecondsLength:)(0);
        v191 = qword_18122C670[v54];
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        v56 = static Duration.* infix<A>(_:_:)();
      }

      else
      {
        if (v55 >= 3)
        {
          goto LABEL_212;
        }

        v56 = static Duration.interval(fractionalSecondsLength:)((3 * v55 + 3));
      }

      v184 = v57;
      v185 = v56;
      v58 = *(v52 + 8);
      v59 = v52 + *(v50 + 28);
      v176 = *v59;
      v60 = *(v59 + 8);
      v181 = v54;
      v166 = v60;
      v167 = v58;
      if (v35 < 5)
      {
        static Duration.interval(fractionalSecondsLength:)(v58);
        v191 = qword_18122C670[v35];
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        static Duration.* infix<A>(_:_:)();
        if (v60)
        {
          goto LABEL_46;
        }

LABEL_45:
        static Duration.* infix(_:_:)();
        static Duration.< infix(_:_:)();
        goto LABEL_46;
      }

      if (v161 >= 3)
      {
        goto LABEL_211;
      }

      v61 = v159;
      if (v159 >= v58)
      {
        v61 = v58;
      }

      if (__OFADD__(v160, v61))
      {
        goto LABEL_193;
      }

      static Duration.interval(fractionalSecondsLength:)(v160 + v61);
      if ((v60 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_46:
      outlined init with copy of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(v52, v183, type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy);
      v182 = *(v50 + 24);
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      v62 = Duration.components.getter();
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      v63 = Duration.components.getter();
      if (v63)
      {
        if (v64)
        {
          if (static Duration.< infix(_:_:)())
          {
            v65 = static Duration.zero.getter();
            v187 = v66;
            v67 = static Duration.zero.getter();
          }

          else
          {
            static Duration./ infix(_:_:)();
            if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_195;
            }

            if (v74 <= -1.0)
            {
              goto LABEL_196;
            }

            if (v74 >= 1.84467441e19)
            {
              goto LABEL_197;
            }

            v75 = v74;
            v191 = v74;
            lazy protocol witness table accessor for type UInt64 and conformance UInt64();
            static Duration.* infix<A>(_:_:)();
            static Duration.- infix(_:_:)();
            static Duration./ infix(_:_:)();
            if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_198;
            }

            if (v76 <= -9.22337204e18)
            {
              goto LABEL_199;
            }

            if (v76 >= 9.22337204e18)
            {
              goto LABEL_200;
            }

            v77 = v76;
            v179 = v76;
            Duration.init(secondsComponent:attosecondsComponent:)();
            v191 = v75;
            v187 = static Duration.* infix<A>(_:_:)();
            v164 = v78;
            Duration.init(secondsComponent:attosecondsComponent:)();
            v191 = v77;
            lazy protocol witness table accessor for type Int64 and conformance Int64();
            static Duration.* infix<A>(_:_:)();
            v79 = static Duration.+ infix(_:_:)();
            v187 = v80;
            v191 = v75;
            static Duration.* infix<A>(_:_:)();
            v191 = v179;
            static Duration.* infix<A>(_:_:)();
            v65 = v79;
            v67 = static Duration.+ infix(_:_:)();
          }
        }

        else
        {
          if (v62 == 0x8000000000000000 && v63 == -1)
          {
            goto LABEL_201;
          }

          v71 = v62 / v63;
          v72 = v63;
          v65 = Duration.init(secondsComponent:attosecondsComponent:)();
          v187 = v73;
          if ((v72 * v71) >> 64 != (v72 * v71) >> 63)
          {
            goto LABEL_194;
          }

          v67 = Duration.init(secondsComponent:attosecondsComponent:)();
        }
      }

      else
      {
        v191 = v64;
        v69 = v64;
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        v65 = static Duration./ infix<A>(_:_:)();
        v191 = v69;
        v187 = v70;
        v67 = static Duration.* infix<A>(_:_:)();
      }

      v81 = v67;
      v82 = v68;
      static Duration.zero.getter();
      v83 = v186;
      v84 = static Duration.< infix(_:_:)() & 1;
      static Duration.zero.getter();
      if (v84 != (static Duration.< infix(_:_:)() & 1))
      {
        static Duration.zero.getter();
        v81 = static Duration.- infix(_:_:)();
        v82 = v85;
        static Duration.zero.getter();
        v65 = static Duration.- infix(_:_:)();
        v187 = v86;
      }

      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      v179 = v81;
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      v87 = v178;
      static Duration.zero.getter();
      if (static Duration.== infix(_:_:)())
      {
        v50 = v87;
        v191 = 2;
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        static Duration./ infix<A>(_:_:)();
        v191 = 2;
        static Duration.* infix<A>(_:_:)();
        static Duration.- infix(_:_:)();
        static Duration.zero.getter();
        static Duration.== infix(_:_:)();
        v88 = v83;
        v89 = v188;
        goto LABEL_102;
      }

      static Duration.zero.getter();
      v90 = static Duration.< infix(_:_:)();
      v164 = v65;
      if (v90)
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      v91 = static Duration.+ infix(_:_:)();
      v93 = v92;
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      v94 = v162;
      v95 = v177;
      (*v157)(v162, &v183[v182], v177);
      v96 = (*v156)(v94, v95);
      if (v96 == v158)
      {
        v97 = (static Duration.< infix(_:_:)() & 1) == 0;
        v98 = v179;
LABEL_95:
        if (v97)
        {
          v100 = v91;
        }

        else
        {
          v100 = v98;
        }

        if (v97)
        {
          v89 = v93;
        }

        else
        {
          v89 = v82;
        }

        goto LABEL_101;
      }

      if (v96 != v154)
      {
        if (v96 != v148)
        {
          v103 = v179;
          if (v96 == v145)
          {
            v104 = static Duration.< infix(_:_:)();
            if (v104)
            {
              v100 = v91;
            }

            else
            {
              v100 = v103;
            }

            if (v104)
            {
              v89 = v93;
            }

            else
            {
              v89 = v82;
            }
          }

          else
          {
            v100 = v179;
            v89 = v82;
            if (v96 != v144)
            {
              v100 = v91;
              v89 = v93;
              if (v96 != v143)
              {
                goto LABEL_214;
              }
            }
          }

          goto LABEL_101;
        }

        v98 = v179;
        v101 = static Duration.< infix(_:_:)();
        goto LABEL_94;
      }

      v99 = static Duration.< infix(_:_:)();
      v98 = v179;
      v100 = v179;
      v89 = v82;
      if ((v99 & 1) == 0)
      {
        v100 = v91;
        v89 = v93;
        if (static Duration.== infix(_:_:)())
        {
          v191 = 2;
          lazy protocol witness table accessor for type Int64 and conformance Int64();
          static Duration./ infix<A>(_:_:)();
          v191 = 2;
          static Duration.* infix<A>(_:_:)();
          static Duration.- infix(_:_:)();
          static Duration.zero.getter();
          v101 = static Duration.== infix(_:_:)();
LABEL_94:
          v97 = (v101 & 1) == 0;
          goto LABEL_95;
        }
      }

LABEL_101:
      v191 = 2;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      static Duration./ infix<A>(_:_:)();
      v191 = 2;
      static Duration.* infix<A>(_:_:)();
      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      static Duration.== infix(_:_:)();
      static Duration.== infix(_:_:)();
      v50 = v178;
      v88 = v100;
LABEL_102:
      v169(&v183[v182], v177);
      v35 = v173;
      v102 = v181;
      v52 = v175;
      if (v181 == v173)
      {
        v187 = v88;
        v105 = v173;
        goto LABEL_125;
      }

      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      if (static Duration.< infix(_:_:)())
      {
        break;
      }

      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      if (static Duration.== infix(_:_:)())
      {
        static Duration.zero.getter();
        if (((static Duration.< infix(_:_:)() ^ v163) & 1) == 0)
        {
          break;
        }
      }

      v53 = v180 + 1;
      v51 = v172;
      if (v165 == v180 + 1)
      {
        goto LABEL_190;
      }
    }

    v187 = v88;
    v105 = v102;
    if (v174 != 1)
    {
      v179 = v89;
      if (v102 < 5)
      {
        static Duration.interval(fractionalSecondsLength:)(0);
        v191 = qword_18122C670[v102];
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        v106 = static Duration.* infix<A>(_:_:)();
      }

      else
      {
        v106 = static Duration.interval(fractionalSecondsLength:)(3 * (v102 - 5) + 3);
      }

      v110 = v106;
      v112 = v107;
      goto LABEL_136;
    }

LABEL_125:
    v179 = v89;
    if (v102 >= 5)
    {
      v108 = 3 * (v105 - 5) + 3;
      v109 = v108 ^ 0x7FFFFFFFFFFFFFFFLL;
      if ((v108 ^ 0x7FFFFFFFFFFFFFFFLL) >= v167)
      {
        v109 = v167;
      }

      if (!__OFADD__(v108, v109))
      {
        v110 = static Duration.interval(fractionalSecondsLength:)(v108 + v109);
        v112 = v111;
        if (v166)
        {
          goto LABEL_136;
        }

        goto LABEL_132;
      }

LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    static Duration.interval(fractionalSecondsLength:)(v167);
    v191 = qword_18122C670[v105];
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    v110 = static Duration.* infix<A>(_:_:)();
    v112 = v113;
    if (v166)
    {
      goto LABEL_136;
    }

LABEL_132:
    v114 = static Duration.* infix(_:_:)();
    v116 = v115;
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      v110 = v114;
      v112 = v116;
    }

LABEL_136:
    v117 = v187;
    if ((v147 & 1) != 0 && (static Duration.zero.getter(), ((static Duration.< infix(_:_:)() ^ v163) & 1) == 0))
    {
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      v189 = v110;
      v190 = v112;
      dispatch thunk of static DurationProtocol./ infix(_:_:)();
      static Duration.+ infix(_:_:)();
      v118 = (v102 != v35) & ~static Duration.< infix(_:_:)();
      if (v174 != 1)
      {
        v118 = 0;
      }

      v150 = v118;
    }

    else
    {
      v150 = 0;
    }

    static Duration.zero.getter();
    v119 = v110;
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      v119 = static Duration.- infix(_:_:)();
    }

    v151 = v112;
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v187 = v117;
    v120 = Duration.components.getter();
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v121 = Duration.components.getter();
    v152 = v110;
    if (!v121)
    {
      v191 = v122;
      v126 = v122;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v123 = static Duration./ infix<A>(_:_:)();
      v125 = v127;
      v191 = v126;
      static Duration.* infix<A>(_:_:)();
      goto LABEL_166;
    }

    if (!v122)
    {
      if (v120 == 0x8000000000000000 && v121 == -1)
      {
        goto LABEL_210;
      }

      v128 = v120 / v121;
      v129 = v121;
      v123 = Duration.init(secondsComponent:attosecondsComponent:)();
      if ((v129 * v128) >> 64 != (v129 * v128) >> 63)
      {
        goto LABEL_203;
      }

      v125 = v130;
      Duration.init(secondsComponent:attosecondsComponent:)();
LABEL_166:
      static Duration.zero.getter();
      v137 = static Duration.< infix(_:_:)() & 1;
      static Duration.zero.getter();
      if (v137 != (static Duration.< infix(_:_:)() & 1))
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
        static Duration.zero.getter();
        v123 = static Duration.- infix(_:_:)();
        v125 = v138;
      }

      v184 = v125;
      v185 = v123;
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      if (static Duration.< infix(_:_:)())
      {
        static Duration.zero.getter();
        static Duration.- infix(_:_:)();
      }

      static Duration.zero.getter();
      if (static Duration.== infix(_:_:)())
      {
        v191 = 2;
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        static Duration./ infix<A>(_:_:)();
        v191 = 2;
        static Duration.* infix<A>(_:_:)();
        static Duration.- infix(_:_:)();
        static Duration.zero.getter();
        static Duration.== infix(_:_:)();
        v50 = v178;
      }

      else
      {
        static Duration.zero.getter();
        v139 = static Duration.< infix(_:_:)();
        v140 = v178;
        if (v139)
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        static Duration.+ infix(_:_:)();
        static Duration.zero.getter();
        if (static Duration.< infix(_:_:)())
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        static Duration.zero.getter();
        if (static Duration.< infix(_:_:)())
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        static Duration.- infix(_:_:)();
        static Duration.zero.getter();
        if (static Duration.< infix(_:_:)())
        {
          static Duration.zero.getter();
          static Duration.- infix(_:_:)();
        }

        v191 = 2;
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        static Duration./ infix<A>(_:_:)();
        v191 = 2;
        static Duration.* infix<A>(_:_:)();
        static Duration.- infix(_:_:)();
        static Duration.zero.getter();
        static Duration.== infix(_:_:)();
        static Duration.== infix(_:_:)();
        v50 = v140;
      }

      static Duration.-= infix(_:_:)();
      static Duration.zero.getter();
      v141 = static Duration.== infix(_:_:)();
      v35 = v173;
      if ((v141 & 1) == 0 || *(v153 + 48) >= 1)
      {
        v174 = v168;
      }

      v149 = 0;
      v49 = v180 + 1;
      v51 = v172;
      v52 = v175;
      if (v146 == v180)
      {
        goto LABEL_191;
      }

      continue;
    }

    break;
  }

  if (static Duration.< infix(_:_:)())
  {
    v123 = static Duration.zero.getter();
    v125 = v124;
    static Duration.zero.getter();
    goto LABEL_166;
  }

  static Duration./ infix(_:_:)();
  if ((*&v131 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_204;
  }

  if (v131 <= -1.0)
  {
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  if (v131 >= 1.84467441e19)
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  v132 = v131;
  v191 = v131;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  static Duration.* infix<A>(_:_:)();
  static Duration.- infix(_:_:)();
  static Duration./ infix(_:_:)();
  if ((*&v133 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  if (v133 <= -9.22337204e18)
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  v184 = v119;
  if (v133 < 9.22337204e18)
  {
    v134 = v133;
    Duration.init(secondsComponent:attosecondsComponent:)();
    v191 = v132;
    v185 = static Duration.* infix<A>(_:_:)();
    Duration.init(secondsComponent:attosecondsComponent:)();
    v191 = v134;
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    static Duration.* infix<A>(_:_:)();
    v185 = static Duration.+ infix(_:_:)();
    v136 = v135;
    v191 = v132;
    static Duration.* infix<A>(_:_:)();
    v191 = v134;
    static Duration.* infix<A>(_:_:)();
    static Duration.+ infix(_:_:)();
    v125 = v136;
    v123 = v185;
    goto LABEL_166;
  }

LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unsigned __int8 *closure #1 in Duration.UnitsFormatStyle.bound(for:countingDown:)(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 < 5)
  {
    static Duration.interval(fractionalSecondsLength:)(0);
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    static Duration.* infix<A>(_:_:)();
  }

  else
  {
    if ((v1 - 5) >= 3u)
    {
      __break(1u);
      return result;
    }

    static Duration.interval(fractionalSecondsLength:)((3 * (v1 - 5) + 3));
  }

  static Duration.zero.getter();
  if (static Duration.< infix(_:_:)())
  {
    static Duration.zero.getter();
    static Duration.- infix(_:_:)();
  }

  return (static Duration.< infix(_:_:)() & 1);
}

uint64_t protocol witness for DiscreteFormatStyle.discreteInput(before:) in conformance Duration.UnitsFormatStyle.Attributed@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  return result;
}

unint64_t specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = result;
  v6 = a2 >> 14;
  if (a2 >> 14 < a3 >> 14)
  {
    v7 = a6 >> 14;
    while (v7 < v9 >> 14)
    {
      Substring.UnicodeScalarView.formIndex(before:)();
      Substring.UnicodeScalarView.formIndex(before:)();
      if (v6 >= a3 >> 14)
      {
        return v9;
      }
    }

    return 0;
  }

  return result;
}

unint64_t specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5, char a6, char a7, int a8, char a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13)
{
  v15 = a13;
  v16 = a10;
  v17 = a11;
  if (a5 & 1) != 0 || (a6)
  {
    if ((a7 & 1) == 0)
    {
      if (a9)
      {
        if (a6)
        {
          goto LABEL_7;
        }

        v19 = specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(a11, a1, a2, a3, a4, a10);
        if ((v21 & 1) == 0)
        {
          v18 = v19;
          if ((a8 & 1) == 0)
          {
            v19 = a10;
          }

          v156 = 1;
          v157 = a8;
          v16 = a10;
          goto LABEL_19;
        }
      }

      else
      {
        if (a8)
        {
          goto LABEL_17;
        }

        if (a6)
        {
          goto LABEL_15;
        }

        v19 = specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(a11, a1, a2, a3, a4, a10);
        if ((v155 & 1) == 0)
        {
          v156 = 0;
          v157 = a8;
          v18 = a10;
          v16 = a10;
          goto LABEL_19;
        }
      }

      return 0;
    }
  }

  else if ((a7 & 1) == 0)
  {
    return specialized BidirectionalCollection._range<A>(of:anchored:backwards:)(a1, a2, a3, a4, a8 & 1, a9 & 1, a10, a11, a12, a13);
  }

  if ((a9 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
LABEL_15:
      v157 = a8;
      v19 = String.UnicodeScalarView.index(_:offsetBy:)(a11, -1, a12, a13);
      v156 = 0;
LABEL_18:
      v18 = a10;
      goto LABEL_19;
    }

LABEL_17:
    v156 = 0;
    v157 = a8;
    v19 = a10;
    goto LABEL_18;
  }

LABEL_7:
  v157 = a8;
  v18 = String.UnicodeScalarView.index(_:offsetBy:)(a11, -1, a12, a13);
  v156 = 1;
  v19 = a10;
LABEL_19:
  v163 = a6;
  v22 = v19 >> 14;
  v170 = a2 >> 14;
  v23 = a1;
  v24 = a1 >> 14;
  v186 = 1;
  v160 = a4 & 0xFFFFFFFFFFFFFFLL;
  v169 = a4;
  v158 = v19 >> 14;
  v168 = v16;
  while (2)
  {
    v184 = v23;
    v185 = v18;
    v183 = 15;
    if (v24 >= v170)
    {
      if (v24 != v170)
      {
        goto LABEL_257;
      }

      goto LABEL_261;
    }

    v159 = v18;
    v25 = 0;
    LOBYTE(v26) = 0;
    v177 = 0;
    v165 = 0;
    v166 = 0;
    v164 = 0;
    v178 = 0;
    v179 = 0;
    v27 = 0xE000000000000000;
    v180 = 15;
    v28 = 15;
    v29 = 15;
    v172 = 15;
    v30 = v23;
    v167 = v24;
    v31 = 0xE000000000000000;
    while (1)
    {
      if (v26)
      {
        v32 = _StringGuts.validateScalarIndex(_:)(v28, v178, v31);
        if ((v31 & 0x1000000000000000) != 0)
        {
          v40 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
          _StringGuts.validateScalarIndex(_:)(v28, v178, v31);
          v28 = String.UnicodeScalarView._foreignIndex(after:)();
        }

        else
        {
          v33 = v17;
          v34 = v28;
          v35 = v25;
          v36 = v26;
          v37 = v32 >> 16;
          if ((v31 & 0x2000000000000000) != 0)
          {
            v181 = v178;
            v182 = v31 & 0xFFFFFFFFFFFFFFLL;
            v41 = &v181 + v37;
            v40 = *(&v181 + v37);
            if (*(&v181 + v37) < 0)
            {
              v44 = (__clz(v40 ^ 0xFF) - 24);
              LOBYTE(v26) = v36;
              if (v44 > 2)
              {
                v25 = v35;
                if (v44 == 3)
                {
                  v48 = v41[1];
                  v49 = v41[2];
                  v50 = ((v40 & 0xF) << 12) | ((v48 & 0x3F) << 6);
                }

                else
                {
                  v57 = v41[1];
                  v58 = v41[2];
                  v49 = v41[3];
                  v50 = ((v40 & 0xF) << 18) | ((v57 & 0x3F) << 12) | ((v58 & 0x3F) << 6);
                }

                v40 = v50 & 0xFFFFFFC0 | v49 & 0x3F;
              }

              else
              {
                v25 = v35;
                if (v44 != 1)
                {
                  v40 = v41[1] & 0x3F | ((v40 & 0x1F) << 6);
                }
              }
            }

            else
            {
              LOBYTE(v26) = v36;
              v25 = v35;
            }

            v55 = _StringGuts.validateScalarIndex(_:)(v34, v178, v31) >> 16;
            v181 = v178;
            v182 = v31 & 0xFFFFFFFFFFFFFFLL;
            v56 = *(&v181 + v55);
            v17 = v33;
          }

          else
          {
            if ((v178 & 0x1000000000000000) != 0)
            {
              v38 = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v38 = _StringObject.sharedUTF8.getter();
            }

            v39 = (v38 + v37);
            v40 = *(v38 + v37);
            if (*(v38 + v37) < 0)
            {
              v43 = (__clz(v40 ^ 0xFF) - 24);
              LOBYTE(v26) = v36;
              if (v43 > 2)
              {
                v25 = v35;
                if (v43 == 3)
                {
                  v45 = v39[1];
                  v46 = v39[2];
                  v47 = ((v40 & 0xF) << 12) | ((v45 & 0x3F) << 6);
                }

                else
                {
                  v51 = v39[1];
                  v52 = v39[2];
                  v46 = v39[3];
                  v47 = ((v40 & 0xF) << 18) | ((v51 & 0x3F) << 12) | ((v52 & 0x3F) << 6);
                }

                v40 = v47 & 0xFFFFFFC0 | v46 & 0x3F;
              }

              else
              {
                v25 = v35;
                if (v43 != 1)
                {
                  v40 = v39[1] & 0x3F | ((v40 & 0x1F) << 6);
                }
              }
            }

            else
            {
              LOBYTE(v26) = v36;
              v25 = v35;
            }

            v53 = _StringGuts.validateScalarIndex(_:)(v34, v178, v31);
            v17 = v33;
            if ((v178 & 0x1000000000000000) != 0)
            {
              v54 = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v105 = v53;
              v54 = _StringObject.sharedUTF8.getter();
              v53 = v105;
            }

            v55 = v53 >> 16;
            v56 = *(v54 + (v53 >> 16));
          }

          v59 = v56;
          v60 = __clz(v56 ^ 0xFF) - 24;
          if (v59 >= 0)
          {
            LOBYTE(v60) = 1;
          }

          v28 = ((v55 + v60) << 16) | 5;
        }

        v183 = v28;
        v29 = v28;
        v172 = v28;
        if (v25)
        {
          goto LABEL_70;
        }

        goto LABEL_42;
      }

      if ((v185 ^ v17) < 0x4000)
      {
        v16 = v168;
        v151 = v167 == v170;
LABEL_245:
        v18 = v159;
        v22 = v158;
        if (!v151)
        {
          goto LABEL_257;
        }

LABEL_261:
        if (v163)
        {
          goto LABEL_264;
        }

        goto LABEL_266;
      }

      _StringGuts.validateScalarIndex(_:in:)(v185, v168, v17, a12, v15);
      if ((v15 & 0x1000000000000000) != 0)
      {
        v40 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        if (v25)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
          v181 = a12;
          v182 = a13 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((a12 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v40 = _decodeScalar(_:startingAt:)();
        if (v25)
        {
LABEL_70:
          v61 = _StringGuts.validateScalarIndex(_:)(v180, v179, v27);
          if ((v27 & 0x1000000000000000) != 0)
          {
            v42 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
            _StringGuts.validateScalarIndex(_:)(v180, v179, v27);
            v180 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            v62 = v61 >> 16;
            v174 = v29;
            if ((v27 & 0x2000000000000000) != 0)
            {
              v64 = v28;
              v67 = v25;
              v68 = v26;
              v181 = v179;
              v182 = v27 & 0xFFFFFFFFFFFFFFLL;
              v70 = &v181 + v62;
              v42 = *(&v181 + v62);
              if (*v70 < 0)
              {
                v73 = (__clz(v42 ^ 0xFF) - 24);
                v71 = v17;
                if (v73 > 2)
                {
                  if (v73 == 3)
                  {
                    v77 = v70[1];
                    v78 = v70[2];
                    v79 = ((v42 & 0xF) << 12) | ((v77 & 0x3F) << 6);
                  }

                  else
                  {
                    v86 = v70[1];
                    v87 = v70[2];
                    v78 = v70[3];
                    v79 = ((v42 & 0xF) << 18) | ((v86 & 0x3F) << 12) | ((v87 & 0x3F) << 6);
                  }

                  v42 = v79 & 0xFFFFFFC0 | v78 & 0x3F;
                }

                else if (v73 != 1)
                {
                  v42 = v70[1] & 0x3F | ((v42 & 0x1F) << 6);
                }
              }

              else
              {
                v71 = v17;
              }

              v84 = _StringGuts.validateScalarIndex(_:)(v180, v179, v27) >> 16;
              v181 = v179;
              v182 = v27 & 0xFFFFFFFFFFFFFFLL;
              v85 = *(&v181 + v84);
              v17 = v71;
            }

            else
            {
              if ((v179 & 0x1000000000000000) != 0)
              {
                v63 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                v63 = _StringObject.sharedUTF8.getter();
              }

              v64 = v28;
              v65 = (v63 + v62);
              v66 = *(v63 + v62);
              v42 = *(v63 + v62);
              v67 = v25;
              if (v66 < 0)
              {
                v72 = (__clz(v42 ^ 0xFF) - 24);
                v68 = v26;
                v69 = v17;
                if (v72 > 2)
                {
                  if (v72 == 3)
                  {
                    v74 = v65[1];
                    v75 = v65[2];
                    v76 = ((v42 & 0xF) << 12) | ((v74 & 0x3F) << 6);
                  }

                  else
                  {
                    v80 = v65[1];
                    v81 = v65[2];
                    v75 = v65[3];
                    v76 = ((v42 & 0xF) << 18) | ((v80 & 0x3F) << 12) | ((v81 & 0x3F) << 6);
                  }

                  v42 = v76 & 0xFFFFFFC0 | v75 & 0x3F;
                }

                else if (v72 != 1)
                {
                  v42 = v65[1] & 0x3F | ((v42 & 0x1F) << 6);
                }
              }

              else
              {
                v68 = v26;
                v69 = v17;
              }

              v82 = _StringGuts.validateScalarIndex(_:)(v180, v179, v27);
              if ((v179 & 0x1000000000000000) != 0)
              {
                v83 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                v106 = v82;
                v83 = _StringObject.sharedUTF8.getter();
                v82 = v106;
              }

              v84 = v82 >> 16;
              v85 = *(v83 + (v82 >> 16));
              v17 = v69;
            }

            v88 = v85;
            v89 = __clz(v85 ^ 0xFF) - 24;
            if (v88 >= 0)
            {
              LOBYTE(v89) = 1;
            }

            v180 = ((v84 + v89) << 16) | 5;
            LOBYTE(v26) = v68;
            v25 = v67;
            v28 = v64;
            v29 = v174;
          }

          goto LABEL_99;
        }
      }

LABEL_42:
      _StringGuts.validateScalarIndex(_:in:)(v30, a1, a2, a3, v169);
      if ((v169 & 0x1000000000000000) != 0)
      {
        v42 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v169 & 0x2000000000000000) != 0)
        {
          v181 = a3;
          v182 = v160;
        }

        else if ((a3 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v42 = _decodeScalar(_:startingAt:)();
      }

LABEL_99:
      if (v40 == v42)
      {
        goto LABEL_145;
      }

      if (v26)
      {
        if (v25)
        {
          v90 = v166;
          v15 = a13;
          goto LABEL_148;
        }

        v90 = v177;
        if (v40 == v42)
        {
          goto LABEL_110;
        }

LABEL_130:
        v175 = v29;
        v101 = v28;
        v177 = v90;
        v102 = 1;
        goto LABEL_131;
      }

      v91 = Unicode.Scalar._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, v163 & 1, a7 & 1, v40);
      v93 = v92;
      v94 = specialized Collection.first.getter(v91, v92);
      if ((v94 & 0x100000000) == 0)
      {
        v95 = v94;

        v183 = 15;
        v96 = _StringGuts.validateScalarIndex(_:)(0xFuLL, v91, v93);
        if ((v93 & 0x1000000000000000) != 0)
        {
          v28 = String.UnicodeScalarView._foreignIndex(after:)();
          v15 = a13;
          v183 = v28;
          if (v25)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v97 = v96 >> 16;
          if ((v93 & 0x2000000000000000) != 0)
          {
            v181 = v91;
            v182 = v93 & 0xFFFFFFFFFFFFFFLL;
            v99 = *(&v181 + v97);
            v15 = a13;
          }

          else
          {
            if ((v91 & 0x1000000000000000) != 0)
            {
              v98 = (v93 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v98 = _StringObject.sharedUTF8.getter();
            }

            v15 = a13;
            v99 = *(v98 + v97);
          }

          v103 = v99;
          v104 = __clz(v99 ^ 0xFF) - 24;
          if (v103 >= 0)
          {
            LOBYTE(v104) = 1;
          }

          v28 = ((v97 + v104) << 16) | 5;
          v183 = v28;
          if (v25)
          {
LABEL_118:
            v29 = v28;
            v90 = v91;
            v31 = v93;
            v178 = v91;
            v17 = a11;
            goto LABEL_149;
          }
        }

        LODWORD(v40) = v95;
        v90 = v91;
        v29 = v28;
        v172 = v28;
        v166 = v91;
        v31 = v93;
        v178 = v91;
        v17 = a11;
        if (v95 == v42)
        {
LABEL_110:
          v100 = 0;
          v15 = a13;
          if ((v31 & 0x2000000000000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_220;
        }

        goto LABEL_130;
      }

      if (v25)
      {
        v16 = v168;
        v151 = v167 == v170;
        v17 = a11;
        v15 = a13;
        goto LABEL_245;
      }

      v175 = v29;
      v101 = v28;
      v102 = 0;
LABEL_131:
      v107 = Unicode.Scalar._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, v163 & 1, a7 & 1, v42);
      v109 = v108;
      v110 = specialized Collection.first.getter(v107, v108);
      v111 = (v110 & 0x100000000) == 0;
      if ((v110 & 0x100000000) == 0)
      {

        v112 = _StringGuts.validateScalarIndex(_:)(0xFuLL, v107, v109);
        if ((v109 & 0x1000000000000000) != 0)
        {
          v180 = String.UnicodeScalarView._foreignIndex(after:)();
        }

        else
        {
          v113 = v112 >> 16;
          if ((v109 & 0x2000000000000000) != 0)
          {
            v181 = v107;
            v182 = v109 & 0xFFFFFFFFFFFFFFLL;
            v115 = *(&v181 + v113);
          }

          else
          {
            if ((v107 & 0x1000000000000000) != 0)
            {
              v114 = (v109 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v114 = _StringObject.sharedUTF8.getter();
            }

            v115 = *(v114 + v113);
          }

          v116 = v115;
          v117 = __clz(v115 ^ 0xFF) - 24;
          if (v116 >= 0)
          {
            LOBYTE(v117) = 1;
          }

          v180 = ((v113 + v117) << 16) | 5;
        }

        v165 = v107;
        v164 = v107;
        v27 = v109;
        v179 = v107;
      }

      v118 = specialized Collection.first.getter(v107, v109);

      if ((v118 & 0x100000000) != 0)
      {
        v17 = a11;
        v15 = a13;
        v26 = v102;
LABEL_250:
        v22 = v158;
        if (v167 != v170)
        {
          v16 = v168;
          if (v158 != v159 >> 14)
          {
            goto LABEL_258;
          }

          goto LABEL_260;
        }

        v16 = v168;
        v18 = v159;
        if (!v26)
        {
          goto LABEL_261;
        }

LABEL_252:
        if (v163)
        {
          specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(&v183, v178, v31);
        }

        v152 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v152 = v177 & 0xFFFFFFFFFFFFLL;
        }

        if (v183 >> 14 != 4 * v152)
        {
          goto LABEL_257;
        }

        Substring.UnicodeScalarView.formIndex(after:)();
        if (v163)
        {
LABEL_264:
          if (v185 >> 14 < v17 >> 14)
          {
            specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(&v185, v16, v17, a12, v15);
          }
        }

LABEL_266:

        if ((v156 & v157) == 1 && (v185 ^ v17) >> 14)
        {
          return 0;
        }

        if (v185 >> 14 >= v18 >> 14)
        {
          v186 = 0;
          return v18;
        }

        __break(1u);
        return result;
      }

      v151 = v40 == v118;
      v17 = a11;
      v26 = v102;
      v25 = v111;
      v28 = v101;
      v29 = v175;
      if (!v151)
      {
        v15 = a13;
        goto LABEL_250;
      }

LABEL_145:
      v15 = a13;
      if ((v26 & 1) == 0)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_23;
        }

        v122 = 0;
        v90 = v177;
        if ((v27 & 0x2000000000000000) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_224;
      }

      if (v25)
      {
        break;
      }

      v100 = 0;
      v90 = v177;
      if ((v31 & 0x2000000000000000) == 0)
      {
LABEL_163:
        v121 = v90 & 0xFFFFFFFFFFFFLL;
        goto LABEL_221;
      }

LABEL_220:
      v121 = HIBYTE(v31) & 0xF;
LABEL_221:
      if (v29 >> 14 == 4 * v121)
      {
        if ((v100 & 1) == 0)
        {
          v177 = v90;
          goto LABEL_23;
        }

        v122 = 0;
        if ((v27 & 0x2000000000000000) == 0)
        {
LABEL_156:
          v123 = v165 & 0xFFFFFFFFFFFFLL;
          goto LABEL_225;
        }
      }

      else
      {
        if ((v100 & 1) == 0)
        {
          v177 = v90;
LABEL_234:
          v26 = 1;
          goto LABEL_24;
        }

        v122 = 1;
        if ((v27 & 0x2000000000000000) == 0)
        {
          goto LABEL_156;
        }
      }

LABEL_224:
      v123 = HIBYTE(v27) & 0xF;
LABEL_225:
      v177 = v90;
      if (v180 >> 14 != 4 * v123)
      {
        if (v122)
        {
          v26 = 1;
        }

        else
        {
          Substring.UnicodeScalarView.formIndex(after:)();
          v26 = 0;
        }

        v25 = 1;
        goto LABEL_25;
      }

      if (v122)
      {
        goto LABEL_234;
      }

LABEL_23:
      Substring.UnicodeScalarView.formIndex(after:)();
      v26 = 0;
LABEL_24:
      Substring.UnicodeScalarView.formIndex(after:)();
      v25 = 0;
LABEL_25:
      v30 = v184;
      v167 = v184 >> 14;
      if (v184 >> 14 >= v170)
      {
        goto LABEL_250;
      }
    }

    v90 = v166;
LABEL_148:
    v29 = v172;
LABEL_149:
    v119 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v119 = v90 & 0xFFFFFFFFFFFFLL;
    }

    v120 = 4 * v119;
    if (4 * v119 == v29 >> 14)
    {
      v100 = 1;
      if ((v31 & 0x2000000000000000) == 0)
      {
LABEL_153:
        v172 = v29;
        v166 = v90;
        v121 = v90 & 0xFFFFFFFFFFFFLL;
        goto LABEL_221;
      }

LABEL_219:
      v172 = v29;
      v166 = v90;
      goto LABEL_220;
    }

    v177 = v90;
    v124 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v124 = v164 & 0xFFFFFFFFFFFFLL;
    }

    v125 = 4 * v124;
    if (4 * v124 == v180 >> 14)
    {
LABEL_160:
      v100 = 1;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v165 = v164;
        v172 = v29;
        v90 = v177;
        v166 = v177;
        v17 = a11;
        v15 = a13;
        v121 = v177 & 0xFFFFFFFFFFFFLL;
        goto LABEL_221;
      }

      v165 = v164;
      v172 = v29;
      v90 = v177;
      v166 = v177;
      v17 = a11;
      v15 = a13;
      goto LABEL_220;
    }

    v29 = v28;
    while (2)
    {
      v126 = v178;
      v127 = _StringGuts.validateScalarIndex(_:)(v29, v178, v31);
      if ((v31 & 0x1000000000000000) != 0)
      {
        v131 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        v128 = v127 >> 16;
        if ((v31 & 0x2000000000000000) != 0)
        {
          v181 = v178;
          v182 = v31 & 0xFFFFFFFFFFFFFFLL;
          v130 = &v181 + v128;
        }

        else
        {
          v129 = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v178 & 0x1000000000000000) == 0)
          {
            v129 = _StringObject.sharedUTF8.getter();
          }

          v130 = (v129 + v128);
        }

        v131 = *v130;
        if (*v130 < 0)
        {
          v141 = (__clz(v131 ^ 0xFF) - 24);
          if (v141 > 2)
          {
            if (v141 == 3)
            {
              v131 = ((v131 & 0xF) << 12) | ((v130[1] & 0x3F) << 6) | v130[2] & 0x3F;
            }

            else
            {
              v131 = ((v131 & 0xF) << 18) | ((v130[1] & 0x3F) << 12) | ((v130[2] & 0x3F) << 6) | v130[3] & 0x3F;
            }
          }

          else if (v141 != 1)
          {
            v131 = v130[1] & 0x3F | ((v131 & 0x1F) << 6);
          }
        }
      }

      v132 = _StringGuts.validateScalarIndex(_:)(v180, v179, v27);
      if ((v27 & 0x1000000000000000) != 0)
      {
        v136 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        v133 = v132 >> 16;
        if ((v27 & 0x2000000000000000) != 0)
        {
          v181 = v179;
          v182 = v27 & 0xFFFFFFFFFFFFFFLL;
          v135 = &v181 + v133;
        }

        else
        {
          v134 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v179 & 0x1000000000000000) == 0)
          {
            v134 = _StringObject.sharedUTF8.getter();
          }

          v135 = (v134 + v133);
        }

        v136 = *v135;
        if (*v135 < 0)
        {
          v142 = (__clz(v136 ^ 0xFF) - 24);
          if (v142 <= 2)
          {
            if (v142 != 1)
            {
              v136 = v135[1] & 0x3F | ((v136 & 0x1F) << 6);
            }

            goto LABEL_181;
          }

          v126 = v178;
          if (v142 == 3)
          {
            v136 = ((v136 & 0xF) << 12) | ((v135[1] & 0x3F) << 6) | v135[2] & 0x3F;
          }

          else
          {
            v136 = ((v136 & 0xF) << 18) | ((v135[1] & 0x3F) << 12) | ((v135[2] & 0x3F) << 6) | v135[3] & 0x3F;
          }
        }

        else
        {
LABEL_181:
          v126 = v178;
        }
      }

      if (v131 == v136)
      {
        v137 = _StringGuts.validateScalarIndex(_:)(v29, v126, v31);
        if ((v31 & 0x1000000000000000) != 0)
        {
          v29 = String.UnicodeScalarView._foreignIndex(after:)();
        }

        else
        {
          v138 = v137 >> 16;
          if ((v31 & 0x2000000000000000) != 0)
          {
            v181 = v126;
            v182 = v31 & 0xFFFFFFFFFFFFFFLL;
            v140 = *(&v181 + v138);
          }

          else
          {
            v139 = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v126 & 0x1000000000000000) == 0)
            {
              v139 = _StringObject.sharedUTF8.getter();
            }

            v140 = *(v139 + v138);
          }

          v143 = v140;
          v144 = __clz(v140 ^ 0xFF) - 24;
          if (v143 >= 0)
          {
            LOBYTE(v144) = 1;
          }

          v29 = ((v138 + v144) << 16) | 5;
        }

        v183 = v29;
        v145 = _StringGuts.validateScalarIndex(_:)(v180, v179, v27);
        if ((v27 & 0x1000000000000000) != 0)
        {
          v180 = String.UnicodeScalarView._foreignIndex(after:)();
          if (v120 == v29 >> 14)
          {
            goto LABEL_218;
          }
        }

        else
        {
          v146 = v145 >> 16;
          if ((v27 & 0x2000000000000000) != 0)
          {
            v181 = v179;
            v182 = v27 & 0xFFFFFFFFFFFFFFLL;
            v148 = *(&v181 + v146);
          }

          else
          {
            v147 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v179 & 0x1000000000000000) == 0)
            {
              v147 = _StringObject.sharedUTF8.getter();
            }

            v148 = *(v147 + v146);
          }

          v149 = v148;
          v150 = __clz(v148 ^ 0xFF) - 24;
          if (v149 >= 0)
          {
            LOBYTE(v150) = 1;
          }

          v180 = ((v146 + v150) << 16) | 5;
          if (v120 == v29 >> 14)
          {
LABEL_218:
            v28 = v29;
            v17 = a11;
            v165 = v164;
            v15 = a13;
            v90 = v177;
            v100 = 1;
            if ((v31 & 0x2000000000000000) == 0)
            {
              goto LABEL_153;
            }

            goto LABEL_219;
          }
        }

        v28 = v29;
        if (v125 == v180 >> 14)
        {
          goto LABEL_160;
        }

        continue;
      }

      break;
    }

    v16 = v168;
    v17 = a11;
    v15 = a13;
    v18 = v159;
    v22 = v158;
    if (v167 == v170)
    {
      goto LABEL_252;
    }

LABEL_257:
    if (v22 != v18 >> 14)
    {
LABEL_258:
      v18 = Substring.UnicodeScalarView.index(_:offsetBy:)();

      v23 = a1;
      v24 = a1 >> 14;
      continue;
    }

    break;
  }

LABEL_260:

  return 0;
}