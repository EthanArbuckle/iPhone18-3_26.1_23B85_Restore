unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t getEnumTagSinglePayload for _AGAttributeVTable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for _AGAttributeVTable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGClosureStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGClosureStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AGTreeElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AGTreeElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGAttributeType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGAttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AGSwiftMetadata(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AGSwiftMetadata(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t View.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a1;
  v8[3] = a2;
  v9 = a3 & 1;
  v10 = a4;
  return View.accessibility(isEnabled:body:)(a5, partial apply for closure #1 in View.accessibilityValue(_:isEnabled:), v8, a6, a7);
}

uint64_t closure #1 in View.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  AccessibilityValueStorage.init(description:)();
  return outlined assign with take of AccessibilityValueStorage?(&v6, a1 + 64);
}

uint64_t View.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v18 = v10;
  v19 = v11;
  v14 = v13 & 1;
  v20 = v13 & 1;
  v21 = v15;
  View.accessibility(isEnabled:body:)(a5, partial apply for closure #1 in View.accessibilityValue(_:isEnabled:), v17, a6, a7);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t View.accessibilityValue<A>(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v20 = v11;
  v21 = v12;
  v15 = v14 & 1;
  v22 = v14 & 1;
  v23 = v16;
  View.accessibility(isEnabled:body:)(a2, partial apply for closure #1 in View.accessibilityValue(_:isEnabled:), v19, a3, a5);
  outlined consume of Text.Storage(v11, v13, v15);
}

uint64_t closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  AccessibilityValueStorage.init(description:)();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e40AttachmentModifierVRs_rlE18accessibilityf63_9isEnabledACyxAEGAA4TextV_SbtFyAA0E10PropertiesVzXEfU_SbAA0eI7G6VXEfU_AFTf1cn_n(a1 + 64, v6);
  outlined destroy of AnyAccessibilityValue?(a1 + 64, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  outlined init with copy of AccessibilityValueStorage(v6, a1 + 64);
  return outlined destroy of AccessibilityValueStorage(v6);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e40AttachmentModifierVRs_rlE18accessibilityf63_9isEnabledACyxAEGAA4TextV_SbtFyAA0E10PropertiesVzXEfU_SbAA0eI7G6VXEfU_AFTf1cn_n(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyAccessibilityValue?(a1, &v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  if (*(&v7 + 1) == 1)
  {
    return 2;
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)(v5, a2, &v9);
  if (v2)
  {
    result = outlined destroy of AccessibilityValueStorage(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of AccessibilityValueStorage(v5);
    return v9;
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityValue<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v17[4] = v10;
  v17[5] = v11;
  v14 = v13 & 1;
  v18 = v13 & 1;
  v19 = v15;
  ModifiedContent<>.update(isEnabled:body:)(a2, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:), a3, a4);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t TabContent.accessibilityValue(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityValueStorage.init(description:)();
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v11);
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  TabContent.accessibility(_:isEnabled:)(v10, a4, a5, a6);
  return outlined destroy of AccessibilityProperties(v10);
}

uint64_t TabContent.accessibilityValue(_:isEnabled:)@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  TabContent.accessibilityValue(_:isEnabled:)(v6, v7, v9 & 1, a1, a2, a3);
  outlined consume of Text.Storage(v6, v8, v10 & 1);
}

uint64_t TabContent.accessibilityValue<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  TabContent.accessibilityValue(_:isEnabled:)(v10, v11, v13 & 1, a2, a3, a4);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

uint64_t View.accessibilityValue(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityValueStorage.init(description:)();
  v11 = v9;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), v10, a5, a6);
  return outlined destroy of AccessibilityValueStorage(v9);
}

uint64_t View.accessibilityValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  View.accessibilityValue(_:)(v8, v9, v11 & 1, v13, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t View.accessibilityValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  View.accessibilityValue(_:)(v9, v10, v12 & 1, v14, a2, a4);
  outlined consume of Text.Storage(v9, v11, v13 & 1);
}

uint64_t ModifiedContent<>.accessibilityValue(_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  ModifiedContent<>.accessibilityValue(_:)(v4, v5, v7 & 1, a1, a2);
  outlined consume of Text.Storage(v4, v6, v8 & 1);
}

uint64_t View.accessibilityValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = 0;
  AccessibilityValueStorage.init<A>(_:description:)();
  v9 = v6;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), &v7, a2, a3);
  return outlined destroy of AccessibilityValueStorage(v6);
}

uint64_t View.accessibilityValue(percentage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  v7 = 0;
  v8 = 0;
  v5 = 0x3FF0000000000000;
  v6 = 0;
  return View.accessibilityValue<A>(_:from:to:description:)(&v9, &v7, &v5, 0, 0, 0, 0, a1, a3, MEMORY[0x1E69E63B0], a2, MEMORY[0x1E69E63F0]);
}

uint64_t View.accessibilityValue<A>(_:from:to:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a8;
  v32 = a7;
  v33 = a9;
  v29 = a2;
  v30 = a3;
  v31 = a12;
  v34 = a11;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  (*(v26 + 16))(&v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a10, v24);
  v27 = *(v17 + 16);
  v27(v22, v29, v16);
  v27(v19, v30, v16);
  outlined copy of Text?(a4, a5, a6, v32);
  AccessibilityValueStorage.init<A>(_:from:to:description:)();
  v38 = v36;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), v37, v35, v34);
  return outlined destroy of AccessibilityValueStorage(v36);
}

uint64_t ModifiedContent<>.accessibilityValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1;
  v8 = 0;
  AccessibilityValueStorage.init<A>(_:description:)();
  v9 = v6;
  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:), a2, a3);
  return outlined destroy of AccessibilityValueStorage(v6);
}

uint64_t ModifiedContent<>.accessibilityValue(percentage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v8 = a3;
  v6 = 0;
  v7 = 0;
  v4 = 0x3FF0000000000000;
  v5 = 0;
  return ModifiedContent<>.accessibilityValue<A>(_:from:to:description:)(&v8, &v6, &v4, 0, 0, 0, 0, a1, a2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63F0]);
}

uint64_t ModifiedContent<>.accessibilityValue<A>(_:from:to:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a8;
  v32 = a7;
  v33 = a9;
  v29 = a2;
  v30 = a3;
  v31 = a11;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a10, v23);
  v26 = *(v16 + 16);
  v26(v21, v29, v15);
  v26(v18, v30, v15);
  outlined copy of Text?(a4, a5, a6, v32);
  AccessibilityValueStorage.init<A>(_:from:to:description:)();
  v36 = v35;
  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:), v34, v33);
  return outlined destroy of AccessibilityValueStorage(v35);
}

uint64_t View.accessibilityValue<A>(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v12);
  View.accessibilityAttachment<A>(content:_:)(v14, closure #1 in View.accessibilityValue<A>(value:), 0, a2, a3, a4, a5, a6);
  return (*(v11 + 8))(v14, a3);
}

uint64_t closure #1 in View.accessibilityValue<A>(value:)(_BYTE *a1)
{
  AccessibilityAttachment.Tree.mergedProperties.getter(a1);
  outlined init with copy of AnyAccessibilityValue?(v11, v6, &lazy cache variable for type metadata for AccessibilityProperties?);
  if (*(&v6[17] + 1))
  {
    outlined init with copy of AnyAccessibilityValue?(&v6[4], v7, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    outlined destroy of AccessibilityProperties(v6);
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for AccessibilityProperties?);
    memset(v7, 0, sizeof(v7));
    v8 = 1;
    v9 = 0;
    v10 = 0;
  }

  outlined init with copy of AnyAccessibilityValue?(v11, v6, &lazy cache variable for type metadata for AccessibilityProperties?);
  if (!*(&v6[17] + 1))
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);
    v3 = &lazy cache variable for type metadata for AccessibilityProperties?;
LABEL_10:
    outlined destroy of AnyAccessibilityValue?(v6, v3);
    goto LABEL_18;
  }

  v2 = *(&v6[1] + 1);

  outlined destroy of AccessibilityProperties(v6);
  if (!v2)
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);
    goto LABEL_18;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_16;
  }

  outlined init with copy of AnyAccessibilityValue?(v7, v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  if (*(&v6[1] + 1) == 1)
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    memset(v6, 0, 40);
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for AnyAccessibilityValue?);
    memset(v6, 0, 40);
    *(&v6[2] + 1) = v2;
    outlined assign with take of AccessibilityValueStorage?(v6, v7);
LABEL_18:
    AccessibilityAttachment.init()();
    outlined destroy of AnyAccessibilityValue?(v11, &lazy cache variable for type metadata for AccessibilityProperties?);
    outlined assign with copy of AccessibilityValueStorage?(v7, &v6[4]);
    memcpy(a1, v6, 0x128uLL);
    a1[296] = 0;
    return outlined destroy of AnyAccessibilityValue?(v7, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  }

  outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  outlined init with copy of AnyAccessibilityValue?(v7, v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  if (*(&v6[1] + 1) == 1)
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);

    v3 = &lazy cache variable for type metadata for AccessibilityValueStorage?;
    goto LABEL_10;
  }

  result = outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  if (v8 == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(AccessibilityValueStorage.valueDescription.getter() + 16);

    if (v5)
    {
LABEL_16:
      outlined destroy of AccessibilityAttachment.Tree(a1);
LABEL_17:

      goto LABEL_18;
    }

    if (v8 != 1)
    {
      outlined destroy of AccessibilityAttachment.Tree(a1);
      v10 = v2;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  outlined init with copy of AnyAccessibilityValue?(a2, &v14, &lazy cache variable for type metadata for AnyAccessibilityValue?);
  v6 = *(&v15 + 1);
  result = outlined destroy of AnyAccessibilityValue?(&v14, &lazy cache variable for type metadata for AnyAccessibilityValue?);
  if (!v6)
  {
    outlined init with copy of AnyAccessibilityValue?(a1, &v11, &lazy cache variable for type metadata for AnyAccessibilityValue?);
    if (*(&v12 + 1))
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      result = outlined destroy of AnyAccessibilityValue?(a2, &lazy cache variable for type metadata for AnyAccessibilityValue?);
      v10 = v15;
      *a2 = v14;
      *(a2 + 16) = v10;
      *(a2 + 32) = v16;
      v8 = 1;
      v9 = *(a2 + 40);
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    result = outlined destroy of AnyAccessibilityValue?(&v11, &lazy cache variable for type metadata for AnyAccessibilityValue?);
  }

  v8 = 0;
  v9 = *(a2 + 40);
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_6:
  if (!*(v9 + 16))
  {
    result = *(a1 + 40);
    if (result)
    {
      if (*(result + 16))
      {
        *(a2 + 40) = result;

        v8 = 1;
      }
    }
  }

LABEL_7:
  *a3 = v8;
  return result;
}

uint64_t outlined assign with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AccessibilityValueStorage.impliedRole(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  outlined init with copy of AnyAccessibilityValue?(v1, &v6, &lazy cache variable for type metadata for AnyAccessibilityValue?);
  if (!v8)
  {
    outlined destroy of AnyAccessibilityValue?(&v6, &lazy cache variable for type metadata for AnyAccessibilityValue?);
    return 0;
  }

  AnyAccessibilityValue.type.getter();
  outlined destroy of AnyAccessibilityValue(&v6);
  result = 0;
  if (v5 <= 5u)
  {
    if (v5 == 4)
    {
      v6 = v3;
      v7 = v2;
      if ((AccessibilityNullableOptionSet<>.subscript.getter() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v5 != 5)
      {
        return result;
      }

      v6 = v3;
      v7 = v2;
      if (AccessibilityNullableOptionSet<>.subscript.getter())
      {
        return 1048577;
      }

      v6 = v3;
      v7 = v2;
      if (AccessibilityNullableOptionSet<>.subscript.getter() == 2)
      {
        v6 = v3;
        v7 = v2;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          return 0x20000000000000;
        }

        v6 = v3;
        v7 = v2;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          return 0x20000000000000;
        }

        v6 = v3;
        v7 = v2;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          return 0x20000000000001;
        }
      }
    }

    return 0;
  }

  else
  {
    switch(v5)
    {
      case 6u:
        return 4096;
      case 7u:
        return 4096;
      case 8u:
        AccessibilityValueStorage.isBounded.getter();
        return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for CapsuleSlider()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CapsuleSlider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = a2[2];
    a1[1] = a2[1];
    a1[2] = v12;
    v13 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
    v18 = *(v5 + 16);

    v18(v15 + 2, v16 + 2, v4);
    v19 = (v15 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v16 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);

    outlined copy of Environment<Selector?>.Content(v23, v24);
    *v21 = v23;
    *(v21 + 8) = v24;
    v25 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
    v27 = *v26;
    v28 = *(v26 + 8);
    outlined copy of Environment<Selector?>.Content(*v26, v28);
    *v25 = v27;
    *(v25 + 8) = v28;
    v29 = (v19 + 55) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v20 + 55) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    v32 = *(v30 + 8);
    outlined copy of Environment<Selector?>.Content(*v30, v32);
    *v29 = v31;
    *(v29 + 8) = v32;
    v33 = (v19 + 71) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v20 + 71) & 0xFFFFFFFFFFFFFFF8;
    v35 = *v34;
    v36 = *(v34 + 8);
    outlined copy of Environment<Selector?>.Content(*v34, v36);
    *v33 = v35;
    *(v33 + 8) = v36;
    v37 = (v19 + 87) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v20 + 87) & 0xFFFFFFFFFFFFFFF8;
    v39 = *v38;
    v40 = *(v38 + 8);
    outlined copy of Environment<Selector?>.Content(*v38, v40);
    *v37 = v39;
    *(v37 + 8) = v40;
    v41 = (v19 + 103) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v20 + 103) & 0xFFFFFFFFFFFFFFF8;
    v43 = *v42;
    v44 = *(v42 + 8);
    outlined copy of Environment<Selector?>.Content(*v42, v44);
    *v41 = v43;
    *(v41 + 8) = v44;
    v45 = (v19 + 119) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v20 + 119) & 0xFFFFFFFFFFFFFFF8;
    v47 = *v46;
    v48 = *(v46 + 8);
    LOBYTE(v41) = *(v46 + 16);
    outlined copy of Environment<Material?>.Content(*v46, v48, v41);
    *v45 = v47;
    *(v45 + 8) = v48;
    *(v45 + 16) = v41;
    v49 = ((v19 + 143) & 0xFFFFFFFFFFFFFFF8);
    v50 = ((v20 + 143) & 0xFFFFFFFFFFFFFFF8);
    *v49 = *v50;
    v49[1] = v50[1];
    v51 = v50[3];
    v49[2] = v50[2];
    v49[3] = v51;
  }

  return a1;
}

uint64_t destroy for CapsuleSlider(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  outlined consume of Environment<Selector?>.Content(*((v7 + 23) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 39) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 55) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 71) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 71) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 87) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 87) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 103) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 103) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Material?>.Content(*((v7 + 119) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 119) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v7 + 119) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void *initializeWithCopy for CapsuleSlider(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = *(a3 + 16);
  v11 = *(*(v10 - 8) + 16);
  v12 = *(v10 - 8) + 16;
  v13 = *(*(v10 - 8) + 80);
  v14 = (v7 + v13 + 16) & ~v13;
  v15 = (v8 + v13 + 16) & ~v13;

  v11(v14, v15, v10);
  v16 = *(v12 + 48) + 7;
  v17 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v15) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v9) = *(v20 + 8);

  outlined copy of Environment<Selector?>.Content(v21, v9);
  *v19 = v21;
  *(v19 + 8) = v9;
  v22 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  LOBYTE(v9) = *(v23 + 8);
  outlined copy of Environment<Selector?>.Content(*v23, v9);
  *v22 = v24;
  *(v22 + 8) = v9;
  v25 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  LOBYTE(v9) = *(v26 + 8);
  outlined copy of Environment<Selector?>.Content(*v26, v9);
  *v25 = v27;
  *(v25 + 8) = v9;
  v28 = (v17 + 71) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v18 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  LOBYTE(v9) = *(v29 + 8);
  outlined copy of Environment<Selector?>.Content(*v29, v9);
  *v28 = v30;
  *(v28 + 8) = v9;
  v31 = (v17 + 87) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  LOBYTE(v9) = *(v32 + 8);
  outlined copy of Environment<Selector?>.Content(*v32, v9);
  *v31 = v33;
  *(v31 + 8) = v9;
  v34 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v18 + 103) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  LOBYTE(v9) = *(v35 + 8);
  outlined copy of Environment<Selector?>.Content(*v35, v9);
  *v34 = v36;
  *(v34 + 8) = v9;
  v37 = (v17 + 119) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v18 + 119) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v34) = *(v38 + 16);
  outlined copy of Environment<Material?>.Content(*v38, v40, v34);
  *v37 = v39;
  *(v37 + 8) = v40;
  *(v37 + 16) = v34;
  v41 = ((v17 + 143) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v18 + 143) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  v41[1] = v42[1];
  v43 = v42[3];
  v41[2] = v42[2];
  v41[3] = v43;

  return a1;
}

void *assignWithCopy for CapsuleSlider(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = (v8 + v13 + 16) & ~v13;
  v15 = (v9 + v13 + 16) & ~v13;
  (*(v11 + 24))(v14, v15);
  v16 = *(v12 + 40) + 7;
  v17 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v15) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);

  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v15) = *(v20 + 8);
  outlined copy of Environment<Selector?>.Content(*v20, v15);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  LOBYTE(v15) = *(v25 + 8);
  outlined copy of Environment<Selector?>.Content(*v25, v15);
  v27 = *v24;
  v28 = *(v24 + 8);
  *v24 = v26;
  *(v24 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  LOBYTE(v15) = *(v30 + 8);
  outlined copy of Environment<Selector?>.Content(*v30, v15);
  v32 = *v29;
  v33 = *(v29 + 8);
  *v29 = v31;
  *(v29 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  v34 = (v17 + 71) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v18 + 71) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  LOBYTE(v15) = *(v35 + 8);
  outlined copy of Environment<Selector?>.Content(*v35, v15);
  v37 = *v34;
  v38 = *(v34 + 8);
  *v34 = v36;
  *(v34 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v37, v38);
  v39 = (v17 + 87) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8;
  v41 = *v40;
  LOBYTE(v15) = *(v40 + 8);
  outlined copy of Environment<Selector?>.Content(*v40, v15);
  v42 = *v39;
  v43 = *(v39 + 8);
  *v39 = v41;
  *(v39 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v42, v43);
  v44 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v18 + 103) & 0xFFFFFFFFFFFFFFF8;
  v46 = *v45;
  LOBYTE(v15) = *(v45 + 8);
  outlined copy of Environment<Selector?>.Content(*v45, v15);
  v47 = *v44;
  v48 = *(v44 + 8);
  *v44 = v46;
  *(v44 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v47, v48);
  v49 = (v17 + 119) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v18 + 119) & 0xFFFFFFFFFFFFFFF8;
  v51 = *v50;
  v52 = *(v50 + 8);
  LOBYTE(v44) = *(v50 + 16);
  outlined copy of Environment<Material?>.Content(*v50, v52, v44);
  v53 = *v49;
  v54 = *(v49 + 8);
  v55 = *(v49 + 16);
  *v49 = v51;
  *(v49 + 8) = v52;
  *(v49 + 16) = v44;
  outlined consume of Environment<Material?>.Content(v53, v54, v55);
  v56 = ((v17 + 143) & 0xFFFFFFFFFFFFFFF8);
  v57 = ((v18 + 143) & 0xFFFFFFFFFFFFFFF8);
  *v56 = *v57;

  v56[1] = v57[1];

  v58 = v57[3];
  v56[2] = v57[2];
  v56[3] = v58;

  return a1;
}

uint64_t initializeWithTake for CapsuleSlider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *v16 = v18;
  v19 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 39) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v20 + 8);
  *v19 = *v20;
  *(v19 + 8) = v18;
  v21 = (v14 + 55) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v22 + 8);
  *v21 = *v22;
  *(v21 + 8) = v18;
  v23 = (v14 + 71) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v24 + 8);
  *v23 = *v24;
  *(v23 + 8) = v18;
  v25 = (v14 + 87) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v15 + 87) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v26 + 8);
  *v25 = *v26;
  *(v25 + 8) = v18;
  v27 = (v14 + 103) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v15 + 103) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v28 + 8);
  *v27 = *v28;
  *(v27 + 8) = v18;
  v29 = (v14 + 119) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v15 + 119) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v30 + 16);
  *v29 = *v30;
  *(v29 + 16) = v18;
  v31 = ((v14 + 143) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v15 + 143) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;
  return a1;
}

void *assignWithTake for CapsuleSlider(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v8 + v12 + 16) & ~v12;
  v14 = (v9 + v12 + 16) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + v14) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  v21 = *v18;
  v22 = *(v18 + 8);
  *v18 = v20;
  *(v18 + 8) = v19;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v26 = *v23;
  v27 = *(v23 + 8);
  *v23 = v25;
  *(v23 + 8) = v24;
  outlined consume of Environment<Selector?>.Content(v26, v27);
  v28 = (v16 + 55) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  v31 = *v28;
  v32 = *(v28 + 8);
  *v28 = v30;
  *(v28 + 8) = v29;
  outlined consume of Environment<Selector?>.Content(v31, v32);
  v33 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v17 + 71) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v36 = *v33;
  v37 = *(v33 + 8);
  *v33 = v35;
  *(v33 + 8) = v34;
  outlined consume of Environment<Selector?>.Content(v36, v37);
  v38 = (v16 + 87) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v17 + 87) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v41 = *v38;
  v42 = *(v38 + 8);
  *v38 = v40;
  *(v38 + 8) = v39;
  outlined consume of Environment<Selector?>.Content(v41, v42);
  v43 = (v16 + 103) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = *v43;
  v47 = *(v43 + 8);
  *v43 = v45;
  *(v43 + 8) = v44;
  outlined consume of Environment<Selector?>.Content(v46, v47);
  v48 = (v16 + 119) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v17 + 119) & 0xFFFFFFFFFFFFFFF8;
  v50 = *(v49 + 16);
  v51 = *v48;
  v52 = *(v48 + 8);
  v53 = *(v48 + 16);
  *v48 = *v49;
  *(v48 + 16) = v50;
  outlined consume of Environment<Material?>.Content(v51, v52, v53);
  v54 = (v16 + 143) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v17 + 143) & 0xFFFFFFFFFFFFFFF8;
  *v54 = *v55;

  *(v54 + 8) = *(v55 + 8);

  *(v54 + 16) = *(v55 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for CapsuleSlider(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 32;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for CapsuleSlider(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((((result + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[1] = 0;
        result[2] = 0;
        *result = a2 & 0x7FFFFFFF;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _MaskEffect<Image>>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _MaskEffect<Image>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _MaskEffect<Image>>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>, lazy protocol witness table accessor for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _FrameLayout>, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>)
  {
    type metadata accessor for _ShapeView<Rectangle, Color>();
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for _MaskEffect<Image>, MEMORY[0x1E6981710], MEMORY[0x1E697DDE0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle, Color>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, Color>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Rectangle, Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>();
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, Color>);
    lazy protocol witness table accessor for type _MaskEffect<Image> and conformance _MaskEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _MaskEffect<Image> and conformance _MaskEffect<A>()
{
  result = lazy protocol witness table cache variable for type _MaskEffect<Image> and conformance _MaskEffect<A>;
  if (!lazy protocol witness table cache variable for type _MaskEffect<Image> and conformance _MaskEffect<A>)
  {
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for _MaskEffect<Image>, MEMORY[0x1E6981710], MEMORY[0x1E697DDE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _MaskEffect<Image> and conformance _MaskEffect<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _MaskEffect<Image>>)
  {
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for _MaskEffect<Image>, MEMORY[0x1E6981710], MEMORY[0x1E697DDE0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Image, _MaskEffect<Image>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>();
    lazy protocol witness table accessor for type _MaskEffect<Image> and conformance _MaskEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>()
{
  if (!lazy cache variable for type metadata for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>)
  {
    type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0();
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _FrameLayout>, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>);
    }
  }
}

void type metadata accessor for _MaskEffect<Image>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E6981748]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _FrameLayout>, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>()
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>)
  {
    type metadata accessor for _EndedGesture<_ChangedGesture<DragGesture>>(255);
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<DragGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<_ChangedGesture<DragGesture>>);
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for _ChangedGesture<DragGesture>()
{
  if (!lazy cache variable for type metadata for _ChangedGesture<DragGesture>)
  {
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, type metadata accessor for DragGesture.Value);
    v0 = type metadata accessor for _ChangedGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ChangedGesture<DragGesture>);
    }
  }
}

void type metadata accessor for _EndedGesture<_ChangedGesture<DragGesture>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(a4, a5);
    v8 = type metadata accessor for _EndedGesture();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _ChangedGesture<IndirectScrollGesture>()
{
  if (!lazy cache variable for type metadata for _ChangedGesture<IndirectScrollGesture>)
  {
    lazy protocol witness table accessor for type IndirectScrollGesture and conformance IndirectScrollGesture();
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
    v0 = type metadata accessor for _ChangedGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ChangedGesture<IndirectScrollGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IndirectScrollGesture and conformance IndirectScrollGesture()
{
  result = lazy protocol witness table cache variable for type IndirectScrollGesture and conformance IndirectScrollGesture;
  if (!lazy protocol witness table cache variable for type IndirectScrollGesture and conformance IndirectScrollGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndirectScrollGesture and conformance IndirectScrollGesture);
  }

  return result;
}

void type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>()
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _OverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Image?, _OpacityEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image?, _OpacityEffect>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Image?);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Image?, _OpacityEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Image? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Image? and conformance <A> A?)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Image?);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for _ContentShapeModifier<RoundedRectangle>()
{
  if (!lazy cache variable for type metadata for _ContentShapeModifier<RoundedRectangle>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v0 = type metadata accessor for _ContentShapeModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContentShapeModifier<RoundedRectangle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle()
{
  result = lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle;
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle;
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }

  return result;
}

uint64_t AccessibilityLargeContentViewTree.hasValue.getter()
{
  v1 = *(v0 + 208);
  v23[12] = *(v0 + 192);
  v23[13] = v1;
  v23[14] = *(v0 + 224);
  v24 = *(v0 + 240);
  v2 = *(v0 + 144);
  v23[8] = *(v0 + 128);
  v23[9] = v2;
  v3 = *(v0 + 176);
  v23[10] = *(v0 + 160);
  v23[11] = v3;
  v4 = *(v0 + 80);
  v23[4] = *(v0 + 64);
  v23[5] = v4;
  v5 = *(v0 + 112);
  v23[6] = *(v0 + 96);
  v23[7] = v5;
  v6 = *(v0 + 16);
  v23[0] = *v0;
  v23[1] = v6;
  v7 = *(v0 + 48);
  v23[2] = *(v0 + 32);
  v23[3] = v7;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v23);
  if (!Enum)
  {
    LOBYTE(result) = *(destructiveProjectEnumData for AccessibilityLargeContentViewTree(v23) + 241) == 2;
    return result & 1;
  }

  if (Enum != 1 || (result = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v23), v17 = *result, (v18 = *(*result + 16)) == 0))
  {
    LOBYTE(result) = 0;
    return result & 1;
  }

  v19 = 0;
  v20 = (v17 + 32);
  v21 = v18 - 1;
  while (v19 < *(v17 + 16))
  {
    result = AccessibilityLargeContentViewTree.hasValue.getter(result, v10, v11, v12, v13, v14, v15, v16, *v20, v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14], v20[15], v20[16], v20[17], v20[18], v20[19], v20[20], v20[21], v20[22]);
    if ((result & 1) == 0)
    {
      v20 += 31;
      if (v21 != v19++)
      {
        continue;
      }
    }

    return result & 1;
  }

  __break(1u);
  return result;
}

void closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(__int128 *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  v7 = a1[13];
  v8 = a1[11];
  v247 = a1[12];
  v248 = v7;
  v9 = a1[13];
  v249 = a1[14];
  v10 = a1[9];
  v11 = a1[7];
  v243 = a1[8];
  v244 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v245 = a1[10];
  v246 = v13;
  v14 = a1[5];
  v15 = a1[3];
  v239 = a1[4];
  v240 = v14;
  v16 = a1[5];
  v17 = a1[7];
  v241 = a1[6];
  v242 = v17;
  v18 = a1[1];
  v235 = *a1;
  v236 = v18;
  v19 = a1[3];
  v21 = *a1;
  v20 = a1[1];
  v237 = a1[2];
  v238 = v19;
  v251[12] = v247;
  v251[13] = v9;
  v251[14] = a1[14];
  v251[8] = v243;
  v251[9] = v12;
  v251[10] = v245;
  v251[11] = v8;
  v251[4] = v239;
  v251[5] = v16;
  v251[6] = v241;
  v251[7] = v11;
  v251[0] = v21;
  v251[1] = v20;
  v250 = *(a1 + 120);
  v252 = *(a1 + 120);
  v251[2] = v237;
  v251[3] = v15;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v251);
  if (!Enum)
  {
    v48 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v251);
    if (*(v48 + 241) == 2)
    {
      v49 = v48;
      v50 = *(v48 + 208);
      v51 = *(v48 + 216);
      v52 = *(v48 + 224);
      v53 = *(v48 + 232);
      v227 = v243;
      v228 = v244;
      v229 = v245;
      v230 = v246;
      v223 = v239;
      v224 = v240;
      v225 = v241;
      v226 = v242;
      v219 = v235;
      v220 = v236;
      v221 = v237;
      v222 = v238;
      v231 = v247;
      v232 = v248;
      v233 = v249;
      v234 = v250;
      v54 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v219);
      outlined init with copy of AccessibilityLargeContentViewItem(v54, &v203);
      v254.origin.x = v50;
      v254.origin.y = v51;
      v254.size.width = v52;
      v254.size.height = v53;
      v253.x = a3;
      v253.y = a4;
      if (CGRectContainsPoint(v254, v253))
      {
        v58 = *v49;
        v59 = *(v49 + 16);
        v60 = *(v49 + 32);
        v206 = *(v49 + 48);
        v205 = v60;
        v204 = v59;
        v203 = v58;
        v61 = *(v49 + 64);
        v62 = *(v49 + 80);
        v63 = *(v49 + 96);
        v210 = *(v49 + 112);
        v209 = v63;
        v208 = v62;
        v207 = v61;
        v64 = *(v49 + 128);
        v65 = *(v49 + 144);
        v66 = *(v49 + 160);
        v214 = *(v49 + 176);
        v213 = v66;
        v212 = v65;
        v211 = v64;
        v67 = *(v49 + 192);
        v68 = *(v49 + 208);
        v69 = *(v49 + 224);
        v218 = *(v49 + 240);
        v217 = v69;
        v216 = v68;
        v215 = v67;
        destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v203, v55, v56, v57);
        goto LABEL_13;
      }

      outlined destroy of AccessibilityLargeContentViewTree(&v235);
    }

LABEL_18:
    _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOi0_(&v219);
    v101 = v232;
    *(a2 + 192) = v231;
    *(a2 + 208) = v101;
    *(a2 + 224) = v233;
    *(a2 + 240) = v234;
    v102 = v228;
    *(a2 + 128) = v227;
    *(a2 + 144) = v102;
    v103 = v230;
    *(a2 + 160) = v229;
    *(a2 + 176) = v103;
    v104 = v224;
    *(a2 + 64) = v223;
    *(a2 + 80) = v104;
    v105 = v226;
    *(a2 + 96) = v225;
    *(a2 + 112) = v105;
    v106 = v220;
    *a2 = v219;
    *(a2 + 16) = v106;
    v76 = v221;
    v77 = v222;
    goto LABEL_19;
  }

  if (Enum != 1)
  {
    goto LABEL_18;
  }

  v23 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v251);
  v24 = *v23;
  v25 = *(*v23 + 16);
  v222 = v238;
  v221 = v237;
  v219 = v235;
  v220 = v236;
  v226 = v242;
  v225 = v241;
  v224 = v240;
  v223 = v239;
  v230 = v246;
  v229 = v245;
  v228 = v244;
  v227 = v243;
  v234 = v250;
  v233 = v249;
  v232 = v248;
  v231 = v247;
  destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v219);

  v26 = 0;
  if (v25)
  {
    v27 = (v24 + 32);
    while (1)
    {
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[3];
      v141 = v27[2];
      v142 = v30;
      v139 = v28;
      v140 = v29;
      v31 = v27[4];
      v32 = v27[5];
      v33 = v27[7];
      v145 = v27[6];
      v146 = v33;
      v143 = v31;
      v144 = v32;
      v34 = v27[8];
      v35 = v27[9];
      v36 = v27[11];
      v149 = v27[10];
      v150 = v36;
      v147 = v34;
      v148 = v35;
      v37 = v27[12];
      v38 = v27[13];
      v39 = v27[14];
      v154 = *(v27 + 120);
      v152 = v38;
      v153 = v39;
      v151 = v37;
      v40 = v27[13];
      v119 = v27[12];
      v120 = v40;
      v121 = v27[14];
      v122 = *(v27 + 120);
      v41 = v27[9];
      v115 = v27[8];
      v116 = v41;
      v42 = v27[11];
      v117 = v27[10];
      v118 = v42;
      v43 = v27[5];
      v111 = v27[4];
      v112 = v43;
      v44 = v27[7];
      v113 = v27[6];
      v114 = v44;
      v45 = v27[1];
      v107 = *v27;
      v108 = v45;
      v46 = v27[3];
      v109 = v27[2];
      v110 = v46;
      outlined init with copy of AccessibilityLargeContentViewTree(&v139, &v123);
      closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v123, &v107, a3, a4);
      v167 = v119;
      v168 = v120;
      v169 = v121;
      v170 = v122;
      v163 = v115;
      v164 = v116;
      v165 = v117;
      v166 = v118;
      v159 = v111;
      v160 = v112;
      v161 = v113;
      v162 = v114;
      v155 = v107;
      v156 = v108;
      v157 = v109;
      v158 = v110;
      outlined destroy of AccessibilityLargeContentViewTree(&v155);
      v183 = v135;
      v184 = v136;
      v185 = v137;
      v179 = v131;
      v180 = v132;
      v181 = v133;
      v182 = v134;
      v175 = v127;
      v176 = v128;
      v177 = v129;
      v178 = v130;
      v171 = v123;
      v172 = v124;
      v173 = v125;
      v174 = v126;
      v199 = v135;
      v200 = v136;
      v201 = v137;
      v195 = v131;
      v196 = v132;
      v197 = v133;
      v198 = v134;
      v191 = v127;
      v192 = v128;
      v193 = v129;
      v194 = v130;
      v187 = v123;
      v188 = v124;
      v186 = v138;
      v202 = v138;
      v189 = v125;
      v190 = v126;
      outlined destroy of PlatformItemList.Item?(&v187, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
      v215 = v183;
      v216 = v184;
      v217 = v185;
      v218 = v186;
      v211 = v179;
      v212 = v180;
      v213 = v181;
      v214 = v182;
      v207 = v175;
      v208 = v176;
      v209 = v177;
      v210 = v178;
      v203 = v171;
      v204 = v172;
      v205 = v173;
      v206 = v174;
      if (_s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v203) != 1)
      {
        break;
      }

      ++v26;
      v27 = (v27 + 248);
      if (v25 == v26)
      {
        v26 = v25;
        break;
      }
    }
  }

  v47 = *(v24 + 16);
  if (v26 == v47)
  {
    outlined destroy of AccessibilityLargeContentViewTree(&v235);
    _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOi0_(&v203);
LABEL_13:
    v70 = v216;
    *(a2 + 192) = v215;
    *(a2 + 208) = v70;
    *(a2 + 224) = v217;
    *(a2 + 240) = v218;
    v71 = v212;
    *(a2 + 128) = v211;
    *(a2 + 144) = v71;
    v72 = v214;
    *(a2 + 160) = v213;
    *(a2 + 176) = v72;
    v73 = v208;
    *(a2 + 64) = v207;
    *(a2 + 80) = v73;
    v74 = v210;
    *(a2 + 96) = v209;
    *(a2 + 112) = v74;
    v75 = v204;
    *a2 = v203;
    *(a2 + 16) = v75;
    v76 = v205;
    v77 = v206;
LABEL_19:
    *(a2 + 32) = v76;
    *(a2 + 48) = v77;
    return;
  }

  if (v26 >= v47)
  {
    __break(1u);
  }

  else
  {
    v78 = v24 + 248 * v26;
    v79 = *(v78 + 32);
    v80 = *(v78 + 48);
    v81 = *(v78 + 80);
    v141 = *(v78 + 64);
    v142 = v81;
    v139 = v79;
    v140 = v80;
    v82 = *(v78 + 96);
    v83 = *(v78 + 112);
    v84 = *(v78 + 144);
    v145 = *(v78 + 128);
    v146 = v84;
    v143 = v82;
    v144 = v83;
    v85 = *(v78 + 160);
    v86 = *(v78 + 176);
    v87 = *(v78 + 208);
    v149 = *(v78 + 192);
    v150 = v87;
    v147 = v85;
    v148 = v86;
    v88 = *(v78 + 224);
    v89 = *(v78 + 240);
    v90 = *(v78 + 256);
    v154 = *(v78 + 272);
    v152 = v89;
    v153 = v90;
    v151 = v88;
    v199 = *(v78 + 224);
    v200 = *(v78 + 240);
    v201 = *(v78 + 256);
    v202 = *(v78 + 272);
    v195 = *(v78 + 160);
    v196 = *(v78 + 176);
    v197 = *(v78 + 192);
    v198 = *(v78 + 208);
    v191 = *(v78 + 96);
    v192 = *(v78 + 112);
    v193 = *(v78 + 128);
    v194 = *(v78 + 144);
    v187 = *(v78 + 32);
    v188 = *(v78 + 48);
    v189 = *(v78 + 64);
    v190 = *(v78 + 80);
    outlined init with copy of AccessibilityLargeContentViewTree(&v139, &v203);
    closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v203, &v187, a3, a4);
    v167 = v199;
    v168 = v200;
    v169 = v201;
    v170 = v202;
    v163 = v195;
    v164 = v196;
    v165 = v197;
    v166 = v198;
    v159 = v191;
    v160 = v192;
    v161 = v193;
    v162 = v194;
    v155 = v187;
    v156 = v188;
    v157 = v189;
    v158 = v190;
    outlined destroy of AccessibilityLargeContentViewTree(&v155);
    v183 = v215;
    v184 = v216;
    v185 = v217;
    v179 = v211;
    v180 = v212;
    v181 = v213;
    v182 = v214;
    v175 = v207;
    v176 = v208;
    v177 = v209;
    v178 = v210;
    v171 = v203;
    v172 = v204;
    v173 = v205;
    v174 = v206;
    v199 = v215;
    v200 = v216;
    v201 = v217;
    v195 = v211;
    v196 = v212;
    v197 = v213;
    v198 = v214;
    v191 = v207;
    v192 = v208;
    v193 = v209;
    v194 = v210;
    v187 = v203;
    v188 = v204;
    v186 = v218;
    v202 = v218;
    v189 = v205;
    v190 = v206;
    outlined init with copy of Image.Resolved?(&v171, &v123, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem);
    outlined destroy of PlatformItemList.Item?(&v187, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
    v215 = v183;
    v216 = v184;
    v217 = v185;
    v218 = v186;
    v211 = v179;
    v212 = v180;
    v213 = v181;
    v214 = v182;
    v207 = v175;
    v208 = v176;
    v209 = v177;
    v210 = v178;
    v203 = v171;
    v204 = v172;
    v205 = v173;
    v206 = v174;
    if (_s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v203) != 1)
    {
      v94 = v184;
      *(a2 + 192) = v183;
      *(a2 + 208) = v94;
      *(a2 + 224) = v185;
      *(a2 + 240) = v186;
      v95 = v180;
      *(a2 + 128) = v179;
      *(a2 + 144) = v95;
      v96 = v182;
      *(a2 + 160) = v181;
      *(a2 + 176) = v96;
      v97 = v176;
      *(a2 + 64) = v175;
      *(a2 + 80) = v97;
      v98 = v178;
      *(a2 + 96) = v177;
      *(a2 + 112) = v98;
      v99 = v172;
      *a2 = v171;
      *(a2 + 16) = v99;
      v100 = v174;
      *(a2 + 32) = v173;
      *(a2 + 48) = v100;
      destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, v91, v92, v93);
      outlined destroy of AccessibilityLargeContentViewTree(&v235);
      return;
    }
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityLargeContentViewBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityLargeContentViewBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unsigned __int8 *protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilityLargeContentViewBehavior@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

double closure #1 in AccessibilityLargeContentViewHitTestingTransform.value.getter(uint64_t a1)
{
  if ((*AGGraphGetValue() & 1) == 0)
  {
    v3 = *(a1 + 208);
    v17[12] = *(a1 + 192);
    v17[13] = v3;
    v17[14] = *(a1 + 224);
    v18 = *(a1 + 240);
    v4 = *(a1 + 144);
    v17[8] = *(a1 + 128);
    v17[9] = v4;
    v5 = *(a1 + 176);
    v17[10] = *(a1 + 160);
    v17[11] = v5;
    v6 = *(a1 + 80);
    v17[4] = *(a1 + 64);
    v17[5] = v6;
    v7 = *(a1 + 112);
    v17[6] = *(a1 + 96);
    v17[7] = v7;
    v8 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v8;
    v9 = *(a1 + 48);
    v17[2] = *(a1 + 32);
    v17[3] = v9;
    outlined destroy of AccessibilityLargeContentViewTree(v17);
    _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(v19);
    v10 = v31;
    *(a1 + 192) = v30;
    *(a1 + 208) = v10;
    *(a1 + 224) = v32;
    *(a1 + 240) = v33;
    v11 = v27;
    *(a1 + 128) = v26;
    *(a1 + 144) = v11;
    v12 = v29;
    *(a1 + 160) = v28;
    *(a1 + 176) = v12;
    v13 = v23;
    *(a1 + 64) = v22;
    *(a1 + 80) = v13;
    v14 = v25;
    *(a1 + 96) = v24;
    *(a1 + 112) = v14;
    v15 = v19[1];
    *a1 = v19[0];
    *(a1 + 16) = v15;
    result = *&v20;
    v16 = v21;
    *(a1 + 32) = v20;
    *(a1 + 48) = v16;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityLargeContentViewHitTestingTransform@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in AccessibilityLargeContentViewHitTestingTransform.value.getter;
  *(result + 24) = v4;
  *a1 = thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ()partial apply;
  a1[1] = result;
  return result;
}

uint64_t AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

uint64_t AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.platformItemList.getter()
{
  if (*(v0 + 20) == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.updateValue()(uint64_t a1)
{
  v2 = v1;
  v125 = *MEMORY[0x1E69E9840];
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v78 = &v75 - v5;
  v6 = type metadata accessor for PlatformItemList.Item();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue())
  {
    v11 = v1[15];
    AGGraphClearUpdate();
    *&v77 = v6;
    v12 = v7;
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v14 = *(a1 + 32);
    v81 = *(a1 + 16);
    v82 = v14;
    v15 = type metadata accessor for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform();
    AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(v15);
    AGSubgraphSetCurrent();

    v7 = v12;
    v6 = v77;
    AGGraphSetUpdate();
  }

  v16 = *(v1 + 5);
  v85 = *(v1 + 4);
  v86 = v16;
  v17 = *(v1 + 7);
  v87 = *(v1 + 6);
  v88 = v17;
  v18 = *(v1 + 1);
  v81 = *v1;
  v82 = v18;
  v19 = *(v1 + 3);
  v83 = *(v1 + 2);
  v84 = v19;
  AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.transform.getter(v124);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*Value);
  v21 = AGGraphGetValue();
  v22 = v21[1];
  v81 = *v21;
  v82 = v22;
  v23 = MEMORY[0x18D00B390]();
  v79 = 0uLL;
  *&v80 = v23;
  *(&v80 + 1) = v24;
  *&v105 = 0;
  v103 = 0u;
  v104 = 0u;
  BYTE8(v105) = 2;
  v81 = v124[0];
  v82 = v124[1];
  v83 = v124[2];

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(&v103);
  v25 = *(v1 + 5);
  v120 = *(v1 + 4);
  v121 = v25;
  v26 = *(v1 + 7);
  v122 = *(v1 + 6);
  v123 = v26;
  v27 = *(v1 + 1);
  v116 = *v1;
  v117 = v27;
  v28 = *(v1 + 3);
  v118 = *(v1 + 2);
  v119 = v28;
  v29 = AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.platformItemList.getter();
  v30 = v7;
  v31 = (v7 + 56);
  if (v29)
  {
    v32 = v78;
    PlatformItemList.mergedContentItem.getter(v29, v78);

    (*v31)(v32, 0, 1, v6);
    outlined init with take of PlatformItemList.Item(v32, v9);
  }

  else
  {
    *&v77 = v10;
    (*(v30 + 56))(v78, 1, 1, v6);
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v92);
    v90 = 0u;
    memset(v91, 0, sizeof(v91));
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v9[32] = 0;
    *(v9 + 3) = 0;
    *(v9 + 8) = 0u;
    *(v9 + 5) = -1;
    v9[56] = 1;
    v33 = v101;
    *(v9 + 12) = v100;
    *(v9 + 13) = v33;
    *(v9 + 14) = v102[0];
    *(v9 + 235) = *(v102 + 11);
    v34 = v97;
    *(v9 + 8) = v96;
    *(v9 + 9) = v34;
    v35 = v99;
    *(v9 + 10) = v98;
    *(v9 + 11) = v35;
    v36 = v93;
    *(v9 + 4) = v92;
    *(v9 + 5) = v36;
    v37 = v95;
    *(v9 + 6) = v94;
    *(v9 + 7) = v37;
    *(v9 + 19) = 0u;
    *(v9 + 20) = 0u;
    *(v9 + 17) = 0u;
    *(v9 + 18) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 42) = 0x3FFFFFFFCLL;
    *(v9 + 344) = 0u;
    *(v9 + 360) = 0u;
    *(v9 + 376) = 0u;
    *(v9 + 392) = 0u;
    *(v9 + 51) = 0;
    *(v9 + 52) = 1;
    *(v9 + 424) = 0u;
    *(v9 + 440) = 0u;
    *(v9 + 456) = 0u;
    v9[472] = 0;
    *(v9 + 60) = 0;
    *(v9 + 488) = 0u;
    v9[504] = 0;
    *(v9 + 32) = 0u;
    v9[528] = 4;
    *(v9 + 536) = 0u;
    *(v9 + 552) = 0u;
    *(v9 + 568) = 0u;
    *(v9 + 584) = 0u;
    *(v9 + 600) = 0u;
    *(v9 + 616) = 0u;
    *(v9 + 632) = 0u;
    *(v9 + 648) = 0u;
    *(v9 + 664) = 0u;
    *(v9 + 680) = 0u;
    *(v9 + 696) = 0u;
    *(v9 + 712) = 0u;
    *(v9 + 728) = 0u;
    *(v9 + 744) = 0u;
    *(v9 + 760) = 0u;
    *(v9 + 776) = 0u;
    *(v9 + 792) = 0u;
    *(v9 + 808) = 0u;
    *(v9 + 824) = 0u;
    *(v9 + 840) = 0u;
    *(v9 + 107) = 0;
    *(v9 + 108) = 1;
    *(v9 + 872) = 0u;
    *(v9 + 888) = 0u;
    *(v9 + 904) = 0u;
    *(v9 + 920) = 0u;
    *(v9 + 936) = 0u;
    *(v9 + 476) = 1283;
    v9[954] = 3;
    v38 = v6[28];
    v39 = type metadata accessor for CommandOperation();
    (*(*(v39 - 8) + 56))(&v9[v38], 1, 1, v39);
    v9[v6[29]] = 0;
    v9[v6[30]] = 0;
    v9[v6[31]] = 2;
    v9[v6[32]] = 0;
    v9[v6[33]] = 0;
    v76 = v6[34];
    *v9 = 0;
    v40 = *(v9 + 13);
    v111 = *(v9 + 12);
    v112 = v40;
    v113[0] = *(v9 + 14);
    *(v113 + 11) = *(v9 + 235);
    v41 = *(v9 + 9);
    v107 = *(v9 + 8);
    v108 = v41;
    v42 = *(v9 + 11);
    v109 = *(v9 + 10);
    v110 = v42;
    v43 = *(v9 + 5);
    v103 = *(v9 + 4);
    v104 = v43;
    v44 = *(v9 + 7);
    v105 = *(v9 + 6);
    v106 = v44;
    v45 = MEMORY[0x1E69E6720];
    outlined destroy of PlatformItemList.Item?(&v103, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
    v46 = v101;
    *(v9 + 12) = v100;
    *(v9 + 13) = v46;
    *(v9 + 14) = v102[0];
    *(v9 + 235) = *(v102 + 11);
    v47 = v97;
    *(v9 + 8) = v96;
    *(v9 + 9) = v47;
    v48 = v99;
    *(v9 + 10) = v98;
    *(v9 + 11) = v48;
    v49 = v93;
    *(v9 + 4) = v92;
    *(v9 + 5) = v49;
    v50 = v95;
    *(v9 + 6) = v94;
    *(v9 + 7) = v50;
    v51 = *(v9 + 456);
    v114[2] = *(v9 + 440);
    v114[3] = v51;
    v115 = v9[472];
    v52 = *(v9 + 424);
    v114[0] = *(v9 + 408);
    v114[1] = v52;
    outlined destroy of PlatformItemList.Item?(v114, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, v45, type metadata accessor for Image.Resolved?);
    *(v9 + 408) = xmmword_18CD633F0;
    *(v9 + 424) = 0u;
    *(v9 + 440) = 0u;
    *(v9 + 456) = 0u;
    v9[472] = 0;
    outlined assign with take of PlatformItemList.Item.Accessibility?(&v81, (v9 + 536));
    *&v9[v76] = 0;
    *(v9 + 6) = 0;
    if ((*(v30 + 48))(v78, 1, v6) != 1)
    {
      outlined destroy of PlatformItemList.Item?(v78, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for Attribute<(_:)>);
    }
  }

  v53 = *v9;
  if (*v9 || (v53 = *(v9 + 112)) != 0)
  {
    v54 = [v53 string];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = *(v9 + 13);
  v89 = *(v9 + 12);
  v90 = v58;
  v91[0] = *(v9 + 14);
  *(v91 + 11) = *(v9 + 235);
  v59 = *(v9 + 9);
  v85 = *(v9 + 8);
  v86 = v59;
  v60 = *(v9 + 11);
  v87 = *(v9 + 10);
  v88 = v60;
  v61 = *(v9 + 5);
  v81 = *(v9 + 4);
  v82 = v61;
  v62 = *(v9 + 7);
  v83 = *(v9 + 6);
  v84 = v62;
  v77 = v80;
  v78 = v79;
  v63 = *v2;
  v64 = *(v2 + 6);
  outlined init with copy of Image.Resolved?(&v81, &v103, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  if (v64 == *MEMORY[0x1E698D3F8])
  {
    v65 = 2;
  }

  else
  {
    v65 = *AGGraphGetValue();
  }

  v66 = (v65 == 2) | v65 & 1;
  v67 = swift_allocObject();
  *(v67 + 16) = v55;
  *(v67 + 24) = v57;
  v68 = v90;
  *(v67 + 160) = v89;
  *(v67 + 176) = v68;
  *(v67 + 192) = v91[0];
  *(v67 + 203) = *(v91 + 11);
  v69 = v86;
  *(v67 + 96) = v85;
  *(v67 + 112) = v69;
  v70 = v88;
  *(v67 + 128) = v87;
  *(v67 + 144) = v70;
  v71 = v82;
  *(v67 + 32) = v81;
  *(v67 + 48) = v71;
  v72 = v84;
  *(v67 + 64) = v83;
  *(v67 + 80) = v72;
  *(v67 + 219) = v92;
  *(v67 + 223) = BYTE4(v92);
  v73 = v77;
  *(v67 + 224) = v78;
  *(v67 + 240) = v73;
  *(v67 + 256) = v66;
  *(v67 + 257) = v63;
  *&v103 = partial apply for closure #2 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.updateValue();
  *(&v103 + 1) = v67;
  AGGraphSetOutputValue();

  return outlined destroy of (Image.Resolved?, Image.Resolved?)(v9, type metadata accessor for PlatformItemList.Item);
}

uint64_t AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(uint64_t *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (*(*(v3 - 8) + 64))
  {
    closure #1 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(1, a1[2], v3, a1[4], a1[5]);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v5 = *(v1 + 80);
  v6 = *(v1 + 48);
  v26 = *(v1 + 64);
  v27 = v5;
  v7 = *(v1 + 80);
  v28 = *(v1 + 96);
  v8 = *(v1 + 48);
  v25[0] = *(v1 + 32);
  v25[1] = v8;
  v32 = v26;
  v33 = v7;
  v34 = *(v1 + 96);
  v29 = *(v1 + 112);
  LODWORD(v35[0]) = *(v1 + 112);
  v30 = v25[0];
  v31 = v6;
  v9 = a1[5];
  v10 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v30, 1, &v19);
  MEMORY[0x1EEE9AC00](v10);
  *&v30 = &type metadata for LargeContentViewerPlatformItemListFlags;
  *(&v30 + 1) = v3;
  *&v31 = &protocol witness table for LargeContentViewerPlatformItemListFlags;
  *(&v31 + 1) = v9;
  v11 = type metadata accessor for PlatformItemListGenerator();
  v17[2] = v11;
  v17[3] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v25, &v30);
  type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, closure #1 in Attribute.init<A>(_:)partial apply, v17, v11, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v34 = v23;
  v35[0] = v24[0];
  *(v35 + 12) = *(v24 + 12);
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  (*(*(v11 - 8) + 8))(&v30, v11);
  *(v1 + 20) = v18;
  v14 = *(v1 + 48);
  v19 = *(v1 + 32);
  v20 = v14;
  v21 = *(v1 + 64);
  result = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  if (result)
  {
    v16 = *(v1 + 48);
    v19 = *(v1 + 32);
    v20 = v16;
    v21 = *(v1 + 64);
    result = _GraphInputs.isEnabled.getter();
    *(v1 + 24) = result;
  }

  return result;
}

uint64_t closure #2 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.updateValue()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 208);
  v39 = *(a2 + 192);
  v40 = v4;
  v41 = *(a2 + 224);
  v42 = *(a2 + 240);
  v5 = *(a2 + 144);
  v35 = *(a2 + 128);
  v36 = v5;
  v6 = *(a2 + 176);
  v37 = *(a2 + 160);
  v38 = v6;
  v7 = *(a2 + 80);
  v31 = *(a2 + 64);
  v32 = v7;
  v8 = *(a2 + 112);
  v33 = *(a2 + 96);
  v34 = v8;
  v9 = *(a2 + 16);
  v27 = *a2;
  v28 = v9;
  v10 = *(a2 + 48);
  v29 = *(a2 + 32);
  v30 = v10;
  v11 = *(a1 + 208);
  v43[12] = *(a1 + 192);
  v43[13] = v11;
  v43[14] = *(a1 + 224);
  v44 = *(a1 + 240);
  v12 = *(a1 + 144);
  v43[8] = *(a1 + 128);
  v43[9] = v12;
  v13 = *(a1 + 176);
  v43[10] = *(a1 + 160);
  v43[11] = v13;
  v14 = *(a1 + 80);
  v43[4] = *(a1 + 64);
  v43[5] = v14;
  v15 = *(a1 + 112);
  v43[6] = *(a1 + 96);
  v43[7] = v15;
  v16 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v16;
  v17 = *(a1 + 48);
  v43[2] = *(a1 + 32);
  v43[3] = v17;
  outlined destroy of AccessibilityLargeContentViewTree(v43);
  v57 = v39;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi_(&v45);
  v18 = v58;
  *(a1 + 192) = v57;
  *(a1 + 208) = v18;
  *(a1 + 224) = v59;
  *(a1 + 240) = v60;
  v19 = v54;
  *(a1 + 128) = v53;
  *(a1 + 144) = v19;
  v20 = v56;
  *(a1 + 160) = v55;
  *(a1 + 176) = v20;
  v21 = v50;
  *(a1 + 64) = v49;
  *(a1 + 80) = v21;
  v22 = v52;
  *(a1 + 96) = v51;
  *(a1 + 112) = v22;
  v23 = v46;
  *a1 = v45;
  *(a1 + 16) = v23;
  v24 = v48;
  *(a1 + 32) = v47;
  *(a1 + 48) = v24;
  return outlined init with copy of AccessibilityLargeContentViewItem(a2, v26);
}

uint64_t closure #1 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for AccessibilityLargeContentViewModifier();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t modify #1 <A>(_:) in closure #1 in static AccessibilityLargeContentViewBehaviorModifier.makeTransform(behavior:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[13];
  v5 = a1[11];
  v206 = a1[12];
  v207 = v4;
  v6 = a1[13];
  v208 = a1[14];
  v7 = a1[9];
  v8 = a1[7];
  v202 = a1[8];
  v203 = v7;
  v9 = a1[9];
  v10 = a1[11];
  v204 = a1[10];
  v205 = v10;
  v11 = a1[5];
  v12 = a1[3];
  v198 = a1[4];
  v199 = v11;
  v13 = a1[5];
  v14 = a1[7];
  v200 = a1[6];
  v201 = v14;
  v15 = a1[1];
  v194 = *a1;
  v195 = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v196 = a1[2];
  v197 = v16;
  v210[12] = v206;
  v210[13] = v6;
  v210[14] = a1[14];
  v210[8] = v202;
  v210[9] = v9;
  v210[10] = v204;
  v210[11] = v5;
  v210[4] = v198;
  v210[5] = v13;
  v210[6] = v200;
  v210[7] = v8;
  v210[0] = v18;
  v210[1] = v17;
  v209 = *(a1 + 120);
  v211 = *(a1 + 120);
  v210[2] = v196;
  v210[3] = v12;
  result = getEnumTag for AccessibilityLargeContentViewTree(v210);
  if (!result)
  {
    v52 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v210);
    v110 = *(v52 + 192);
    v111 = *(v52 + 208);
    v112 = *(v52 + 224);
    LOBYTE(v113) = *(v52 + 240);
    v106 = *(v52 + 128);
    v107 = *(v52 + 144);
    v108 = *(v52 + 160);
    v109 = *(v52 + 176);
    v102 = *(v52 + 64);
    v103 = *(v52 + 80);
    v104 = *(v52 + 96);
    v105 = *(v52 + 112);
    v98 = *v52;
    v99 = *(v52 + 16);
    v100 = *(v52 + 32);
    v101 = *(v52 + 48);
    if (a2 == 1)
    {
      v53 = *(v52 + 241);
      v174 = v110;
      v175 = v111;
      v176 = v112;
      LOBYTE(v177) = v113;
      v170 = v106;
      v171 = v107;
      v172 = v108;
      v173 = v109;
      v166 = v102;
      v167 = v103;
      v168 = v104;
      v169 = v105;
      v162 = v98;
      v163 = v99;
      v164 = v100;
      v165 = v101;
      HIBYTE(v177) = v53;
      v190 = v206;
      v191 = v207;
      v192 = v208;
      v193 = v209;
      v186 = v202;
      v187 = v203;
      v188 = v204;
      v189 = v205;
      v182 = v198;
      v183 = v199;
      v184 = v200;
      v185 = v201;
      v178 = v194;
      v179 = v195;
      v180 = v196;
      v181 = v197;
      v54 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v178);
      outlined init with copy of AccessibilityLargeContentViewItem(v54, &v146);
      return outlined destroy of AccessibilityLargeContentViewItem(&v162);
    }

    v63 = a1[13];
    v126 = a1[12];
    v127 = v63;
    v128 = a1[14];
    v129 = *(a1 + 120);
    v64 = a1[9];
    v122 = a1[8];
    v123 = v64;
    v65 = a1[11];
    v124 = a1[10];
    v125 = v65;
    v66 = a1[5];
    v118 = a1[4];
    v119 = v66;
    v67 = a1[7];
    v120 = a1[6];
    v121 = v67;
    v68 = a1[1];
    v114 = *a1;
    v115 = v68;
    v69 = a1[3];
    v116 = a1[2];
    v117 = v69;
    v142 = v206;
    v143 = v207;
    v144 = v208;
    v145 = v209;
    v138 = v202;
    v139 = v203;
    v140 = v204;
    v141 = v205;
    v134 = v198;
    v135 = v199;
    v136 = v200;
    v137 = v201;
    v130 = v194;
    v131 = v195;
    v132 = v196;
    v133 = v197;
    v70 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v130);
    outlined init with copy of AccessibilityLargeContentViewItem(v70, &v178);
    outlined destroy of AccessibilityLargeContentViewTree(&v114);
    _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(&v146);
    v71 = v158;
    v72 = v159;
    v73 = v157;
    a1[12] = v158;
    a1[13] = v72;
    v74 = v159;
    a1[14] = v160;
    v76 = v154;
    v75 = v155;
    v77 = v153;
    a1[8] = v154;
    a1[9] = v75;
    v78 = v155;
    v80 = v156;
    v79 = v157;
    a1[10] = v156;
    a1[11] = v79;
    v82 = v150;
    v81 = v151;
    v83 = v149;
    a1[4] = v150;
    a1[5] = v81;
    v84 = v151;
    v86 = v152;
    v85 = v153;
    a1[6] = v152;
    a1[7] = v85;
    v87 = v147;
    *a1 = v146;
    a1[1] = v87;
    v88 = v149;
    v90 = v146;
    v89 = v147;
    v91 = v148;
    a1[2] = v148;
    a1[3] = v88;
    v174 = v71;
    v175 = v74;
    v176 = v160;
    v170 = v76;
    v171 = v78;
    v172 = v80;
    v173 = v73;
    v166 = v82;
    v167 = v84;
    v168 = v86;
    v169 = v77;
    v162 = v90;
    v163 = v89;
    *(a1 + 120) = v161;
    v177 = v161;
    v164 = v91;
    v165 = v83;
    outlined destroy of AccessibilityLargeContentViewTree(&v162);
    v190 = v110;
    v191 = v111;
    v192 = v112;
    LOBYTE(v193) = v113;
    v186 = v106;
    v187 = v107;
    v188 = v108;
    v189 = v109;
    v182 = v102;
    v183 = v103;
    v184 = v104;
    v185 = v105;
    v178 = v98;
    v179 = v99;
    v180 = v100;
    v181 = v101;
    HIBYTE(v193) = a2;
    result = _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi_(&v178);
    v92 = v191;
    a1[12] = v190;
    a1[13] = v92;
    a1[14] = v192;
    *(a1 + 120) = v193;
    v93 = v187;
    a1[8] = v186;
    a1[9] = v93;
    v94 = v189;
    a1[10] = v188;
    a1[11] = v94;
    v95 = v183;
    a1[4] = v182;
    a1[5] = v95;
    v96 = v185;
    a1[6] = v184;
    a1[7] = v96;
    v97 = v179;
    *a1 = v178;
    a1[1] = v97;
    v61 = v180;
    v62 = v181;
    goto LABEL_14;
  }

  if (result != 1)
  {
    return result;
  }

  v20 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v210);
  v21 = a1[3];
  v116 = a1[2];
  v117 = v21;
  v22 = a1[1];
  v114 = *a1;
  v115 = v22;
  v23 = a1[7];
  v120 = a1[6];
  v121 = v23;
  v24 = a1[5];
  v118 = a1[4];
  v119 = v24;
  v25 = a1[11];
  v124 = a1[10];
  v125 = v25;
  v26 = a1[9];
  v122 = a1[8];
  v123 = v26;
  v129 = *(a1 + 120);
  v27 = a1[14];
  v127 = a1[13];
  v128 = v27;
  v126 = a1[12];
  v142 = v206;
  v143 = v207;
  v144 = v208;
  v145 = v209;
  v138 = v202;
  v139 = v203;
  v140 = v204;
  v141 = v205;
  v134 = v198;
  v135 = v199;
  v136 = v200;
  v137 = v201;
  v130 = v194;
  v131 = v195;
  v132 = v196;
  v133 = v197;
  destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v130);

  outlined destroy of AccessibilityLargeContentViewTree(&v114);
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(&v146);
  v28 = v158;
  v29 = v159;
  v30 = v157;
  a1[12] = v158;
  a1[13] = v29;
  v31 = v159;
  a1[14] = v160;
  v33 = v154;
  v32 = v155;
  v34 = v153;
  a1[8] = v154;
  a1[9] = v32;
  v35 = v155;
  v37 = v156;
  v36 = v157;
  a1[10] = v156;
  a1[11] = v36;
  v39 = v150;
  v38 = v151;
  v40 = v149;
  a1[4] = v150;
  a1[5] = v38;
  v41 = v151;
  v43 = v152;
  v42 = v153;
  a1[6] = v152;
  a1[7] = v42;
  v44 = v147;
  *a1 = v146;
  a1[1] = v44;
  v45 = v149;
  v47 = v146;
  v46 = v147;
  v48 = v148;
  a1[2] = v148;
  a1[3] = v45;
  v174 = v28;
  v175 = v31;
  v176 = v160;
  v170 = v33;
  v171 = v35;
  v172 = v37;
  v173 = v30;
  v166 = v39;
  v167 = v41;
  v168 = v43;
  v169 = v34;
  v162 = v47;
  v163 = v46;
  *(a1 + 120) = v161;
  v177 = v161;
  v164 = v48;
  v165 = v40;
  v190 = v206;
  v191 = v207;
  v192 = v208;
  v193 = v209;
  v186 = v202;
  v187 = v203;
  v188 = v204;
  v189 = v205;
  v182 = v198;
  v183 = v199;
  v184 = v200;
  v185 = v201;
  v178 = v194;
  v179 = v195;
  v180 = v196;
  v181 = v197;
  destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v178);

  outlined destroy of AccessibilityLargeContentViewTree(&v162);
  v49 = *(v20 + 16);
  outlined destroy of AccessibilityLargeContentViewTree(&v194);
  if (!v49)
  {
LABEL_12:
    *&v98 = v20;
    result = _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi0_(&v98);
    v55 = v111;
    a1[12] = v110;
    a1[13] = v55;
    a1[14] = v112;
    *(a1 + 120) = v113;
    v56 = v107;
    a1[8] = v106;
    a1[9] = v56;
    v57 = v109;
    a1[10] = v108;
    a1[11] = v57;
    v58 = v103;
    a1[4] = v102;
    a1[5] = v58;
    v59 = v105;
    a1[6] = v104;
    a1[7] = v59;
    v60 = v99;
    *a1 = v98;
    a1[1] = v60;
    v61 = v100;
    v62 = v101;
LABEL_14:
    a1[2] = v61;
    a1[3] = v62;
    return result;
  }

  v50 = 0;
  v51 = 32;
  while (1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v20 = result;
    }

    if (v50 >= *(v20 + 16))
    {
      break;
    }

    ++v50;
    modify #1 <A>(_:) in closure #1 in static AccessibilityLargeContentViewBehaviorModifier.makeTransform(behavior:)(v20 + v51, a2);
    v51 += 248;
    if (v49 == v50)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnvironmentValues.accessibilityLargeContentViewerEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v1 = v3;
  if (v3 == 2)
  {
    v1 = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t EnvironmentValues._accessibilityLargeContentViewerEnabled.setter()
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path setter for EnvironmentValues.accessibilityLargeContentViewerEnabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues._accessibilityLargeContentViewerEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = *(a1 + 25);
  if (v5 == 2)
  {
    LOBYTE(v5) = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  *(a1 + 24) = v5 & 1;
  return EnvironmentValues._accessibilityLargeContentViewerEnabled.modify;
}

uint64_t EnvironmentValues._accessibilityLargeContentViewerEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.accessibilityShowsLargeContentViewer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessibilityLargeContentViewBehaviorModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

void type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void destroy for AccessibilityLargeContentViewItem(uint64_t a1)
{

  v2 = *(a1 + 144);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v3 = *(a1 + 24);
    if (v3 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 16), v3);
    }

    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 128), *(a1 + 136), v2);
    }

    swift_unknownObjectRelease();

    v4 = *(a1 + 192);
  }
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 144);

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFCLL)
  {
    v6 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v6;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 187) = *(a2 + 187);
    v7 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v7;
    v8 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v8;
    v9 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v9;
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
  }

  else
  {
    v11 = *(a2 + 24);
    if (v11 == 255)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v12 = *(a2 + 16);
      outlined copy of GraphicsImage.Contents(v12, *(a2 + 24));
      *(a1 + 16) = v12;
      *(a1 + 24) = v11;
    }

    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 88) = *(a2 + 88);
    v13 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 122) = *(a2 + 122);
    *(a1 + 123) = *(a2 + 123);
    *(a1 + 104) = v13;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      v14 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v14;
    }

    else
    {
      v15 = *(a2 + 128);
      v16 = *(a2 + 136);
      v17 = *(a2 + 152);
      outlined copy of AccessibilityImageLabel(v15, v16, v5);
      *(a1 + 128) = v15;
      *(a1 + 136) = v16;
      *(a1 + 144) = v5;
      *(a1 + 152) = v17;
    }

    v18 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v18;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 180) = *(a2 + 180);
    *(a1 + 184) = *(a2 + 184);
    v19 = *(a2 + 192);
    *(a1 + 192) = v19;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 202) = *(a2 + 202);
    swift_unknownObjectRetain();

    v20 = v19;
  }

  v21 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v21;
  *(a1 + 240) = *(a2 + 240);
  return a1;
}

uint64_t assignWithCopy for AccessibilityLargeContentViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 144) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 144) >> 1 == 4294967294)
  {
    if (v4 == 0x1FFFFFFFCLL)
    {
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v7;
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
      v8 = *(a2 + 80);
      v9 = *(a2 + 96);
      v10 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v10;
      *(a1 + 80) = v8;
      *(a1 + 96) = v9;
      v11 = *(a2 + 144);
      v12 = *(a2 + 160);
      v13 = *(a2 + 176);
      *(a1 + 187) = *(a2 + 187);
      *(a1 + 160) = v12;
      *(a1 + 176) = v13;
      *(a1 + 144) = v11;
    }

    else
    {
      v23 = *(a2 + 24);
      if (v23 == 255)
      {
        v29 = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 16) = v29;
      }

      else
      {
        v24 = *(a2 + 16);
        outlined copy of GraphicsImage.Contents(v24, *(a2 + 24));
        *(a1 + 16) = v24;
        *(a1 + 24) = v23;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v30 = *(a2 + 60);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 60) = v30;
      v31 = *(a2 + 88);
      v32 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v32;
      *(a1 + 88) = v31;
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 122) = *(a2 + 122);
      *(a1 + 123) = *(a2 + 123);
      v33 = *(a2 + 144);
      if (v33 >> 1 == 0xFFFFFFFF)
      {
        v34 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v34;
      }

      else
      {
        v35 = *(a2 + 128);
        v36 = *(a2 + 136);
        v37 = *(a2 + 152);
        outlined copy of AccessibilityImageLabel(v35, v36, *(a2 + 144));
        *(a1 + 128) = v35;
        *(a1 + 136) = v36;
        *(a1 + 144) = v33;
        *(a1 + 152) = v37;
      }

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 177) = *(a2 + 177);
      v38 = *(a2 + 180);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 180) = v38;
      v39 = *(a2 + 192);
      *(a1 + 192) = v39;
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 202) = *(a2 + 202);
      swift_unknownObjectRetain();

      v40 = v39;
    }
  }

  else if (v4 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 16);
    v14 = *(a2 + 64);
    v16 = *(a2 + 16);
    v15 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v14;
    *(a1 + 16) = v16;
    *(a1 + 32) = v15;
    v17 = *(a2 + 128);
    v19 = *(a2 + 80);
    v18 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
    *(a1 + 80) = v19;
    *(a1 + 96) = v18;
    v21 = *(a2 + 160);
    v20 = *(a2 + 176);
    v22 = *(a2 + 144);
    *(a1 + 187) = *(a2 + 187);
    *(a1 + 160) = v21;
    *(a1 + 176) = v20;
    *(a1 + 144) = v22;
  }

  else
  {
    v25 = *(a2 + 24);
    if (*(a1 + 24) == 255)
    {
      if (v25 == 255)
      {
        v43 = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 16) = v43;
      }

      else
      {
        v41 = *(a2 + 16);
        outlined copy of GraphicsImage.Contents(v41, *(a2 + 24));
        *(a1 + 16) = v41;
        *(a1 + 24) = v25;
      }
    }

    else if (v25 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 16);
      v42 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v42;
    }

    else
    {
      v26 = *(a2 + 16);
      outlined copy of GraphicsImage.Contents(v26, *(a2 + 24));
      v27 = *(a1 + 16);
      *(a1 + 16) = v26;
      v28 = *(a1 + 24);
      *(a1 + 24) = v25;
      outlined consume of GraphicsImage.Contents(v27, v28);
    }

    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    v44 = *(a2 + 60);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 60) = v44;
    v45 = *(a2 + 88);
    v46 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v46;
    *(a1 + 88) = v45;
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 122) = *(a2 + 122);
    *(a1 + 123) = *(a2 + 123);
    v47 = *(a2 + 144);
    v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 144) >> 1 == 0xFFFFFFFFLL)
    {
      if (v48 == 0x1FFFFFFFELL)
      {
        v49 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v49;
      }

      else
      {
        v51 = *(a2 + 128);
        v52 = *(a2 + 136);
        v53 = *(a2 + 152);
        outlined copy of AccessibilityImageLabel(v51, v52, *(a2 + 144));
        *(a1 + 128) = v51;
        *(a1 + 136) = v52;
        *(a1 + 144) = v47;
        *(a1 + 152) = v53;
      }
    }

    else if (v48 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 128);
      v50 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v50;
    }

    else
    {
      v54 = *(a2 + 128);
      v55 = *(a2 + 136);
      v56 = *(a2 + 152);
      outlined copy of AccessibilityImageLabel(v54, v55, *(a2 + 144));
      v57 = *(a1 + 128);
      v58 = *(a1 + 136);
      v59 = *(a1 + 144);
      *(a1 + 128) = v54;
      *(a1 + 136) = v55;
      *(a1 + 144) = v47;
      *(a1 + 152) = v56;
      outlined consume of AccessibilityImageLabel(v57, v58, v59);
    }

    *(a1 + 160) = *(a2 + 160);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 168) = *(a2 + 168);

    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v60 = *(a2 + 180);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 180) = v60;
    v61 = *(a1 + 192);
    v62 = *(a2 + 192);
    *(a1 + 192) = v62;
    v63 = v62;

    *(a1 + 200) = *(a2 + 200);
    *(a1 + 202) = *(a2 + 202);
  }

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 241) = *(a2 + 241);
  return a1;
}

uint64_t assignWithTake for AccessibilityLargeContentViewItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  if (*(a1 + 144) >> 1 == 4294967294)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 144);
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v11 = *(a1 + 24);
    if (v11 != 255)
    {
      v12 = *(a2 + 24);
      if (v12 != 255)
      {
        v13 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = v12;
        outlined consume of GraphicsImage.Contents(v13, v11);
        goto LABEL_10;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 16);
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
LABEL_10:
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 121) = *(a2 + 121);
    v14 = *(a1 + 144);
    *(a1 + 122) = *(a2 + 122);
    if (v14 >> 1 != 0xFFFFFFFF)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        v16 = *(a2 + 152);
        v17 = *(a1 + 128);
        v18 = *(a1 + 136);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v5;
        *(a1 + 152) = v16;
        outlined consume of AccessibilityImageLabel(v17, v18, v14);
        goto LABEL_15;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 128);
    }

    v15 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v15;
LABEL_15:
    *(a1 + 160) = *(a2 + 160);
    swift_unknownObjectRelease();
    *(a1 + 168) = *(a2 + 168);

    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    *(a1 + 180) = *(a2 + 180);
    *(a1 + 184) = *(a2 + 184);
    v19 = *(a1 + 192);
    *(a1 + 192) = *(a2 + 192);

    *(a1 + 200) = *(a2 + 200);
    *(a1 + 202) = *(a2 + 202);
    goto LABEL_16;
  }

  outlined destroy of Image.Resolved(a1 + 16);
LABEL_4:
  v6 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v6;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 187) = *(a2 + 187);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  v9 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v9;
  v10 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v10;
LABEL_16:
  v20 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v20;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 241) = *(a2 + 241);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 242))
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

uint64_t storeEnumTagSinglePayload for AccessibilityLargeContentViewItem(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void outlined copy of AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int16 a31)
{
  v31 = a31 >> 14;
  if (v31 == 1)
  {
  }

  else if (!v31)
  {

    outlined copy of Image.Resolved?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }
}

void *outlined copy of Image.Resolved?(void *result, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a17 >> 1 != 4294967294)
  {
    outlined copy of GraphicsImage.Contents?(result, a2);
    outlined copy of AccessibilityImageLabel?(a15, a16, a17);
    v23 = a23;
    swift_unknownObjectRetain();
  }

  return result;
}

void outlined consume of Image.Resolved?(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a17 >> 1 != 4294967294)
  {
    outlined consume of GraphicsImage.Contents?(a1, a2);
    outlined consume of AccessibilityImageLabel?(a15, a16, a17);
    swift_unknownObjectRelease();
  }
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  v21 = *(a2 + 136);
  v22 = *(a2 + 144);
  v23 = *(a2 + 152);
  v24 = *(a2 + 160);
  v25 = *(a2 + 168);
  v26 = *(a2 + 176);
  v27 = *(a2 + 184);
  v28 = *(a2 + 192);
  v29 = *(a2 + 200);
  v30 = *(a2 + 208);
  v31 = *(a2 + 216);
  v32 = *(a2 + 224);
  v33 = *(a2 + 232);
  v34 = *(a2 + 240);
  v8 = *(a2 + 64);
  v10 = *(a2 + 8);
  v9 = *a2;
  v11 = *(a2 + 16);
  outlined copy of AccessibilityLargeContentViewTree(*a2, v10, v11, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  *(a1 + 128) = v20;
  *(a1 + 136) = v21;
  *(a1 + 144) = v22;
  *(a1 + 152) = v23;
  *(a1 + 160) = v24;
  *(a1 + 168) = v25;
  *(a1 + 176) = v26;
  *(a1 + 184) = v27;
  *(a1 + 192) = v28;
  *(a1 + 200) = v29;
  *(a1 + 208) = v30;
  *(a1 + 216) = v31;
  *(a1 + 224) = v32;
  *(a1 + 232) = v33;
  *(a1 + 240) = v34;
  return a1;
}

uint64_t assignWithCopy for AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v34 = *(a2 + 72);
  v35 = *(a2 + 80);
  v36 = *(a2 + 88);
  v37 = *(a2 + 96);
  v38 = *(a2 + 104);
  v39 = *(a2 + 112);
  v40 = *(a2 + 120);
  v41 = *(a2 + 128);
  v42 = *(a2 + 136);
  v43 = *(a2 + 144);
  v44 = *(a2 + 152);
  v45 = *(a2 + 160);
  v46 = *(a2 + 168);
  v47 = *(a2 + 176);
  v48 = *(a2 + 184);
  v49 = *(a2 + 192);
  v50 = *(a2 + 200);
  v51 = *(a2 + 208);
  v52 = *(a2 + 216);
  v53 = *(a2 + 224);
  v54 = *(a2 + 232);
  v55 = *(a2 + 240);
  v7 = *(a2 + 64);
  v8 = *(a2 + 40);
  v9 = *(a2 + 32);
  v11 = *(a2 + 56);
  v10 = *(a2 + 48);
  outlined copy of AccessibilityLargeContentViewTree(*a2, v4, v5, v6, v9, v8, v10, v11, v7, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v12 = *a1;
  v13 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *(a1 + 32) = v9;
  *(a1 + 40) = v8;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  *(a1 + 64) = v7;
  *(a1 + 72) = v34;
  *(a1 + 80) = v35;
  *(a1 + 88) = v36;
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  *(a1 + 96) = v37;
  *(a1 + 104) = v38;
  *(a1 + 112) = v39;
  *(a1 + 120) = v40;
  v24 = *(a1 + 128);
  v25 = *(a1 + 144);
  *(a1 + 128) = v41;
  *(a1 + 136) = v42;
  *(a1 + 144) = v43;
  *(a1 + 152) = v44;
  v26 = *(a1 + 160);
  v27 = *(a1 + 176);
  *(a1 + 160) = v45;
  *(a1 + 168) = v46;
  *(a1 + 176) = v47;
  *(a1 + 184) = v48;
  v28 = *(a1 + 192);
  v29 = *(a1 + 208);
  *(a1 + 192) = v49;
  *(a1 + 200) = v50;
  *(a1 + 208) = v51;
  *(a1 + 216) = v52;
  v30 = *(a1 + 224);
  v31 = *(a1 + 232);
  *(a1 + 224) = v53;
  *(a1 + 232) = v54;
  v32 = *(a1 + 240);
  *(a1 + 240) = v55;
  outlined consume of AccessibilityLargeContentViewTree(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31, v32);
  return a1;
}

uint64_t assignWithTake for AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 240);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  v19 = *(a1 + 160);
  v20 = *(a1 + 176);
  v21 = *(a1 + 192);
  v22 = *(a1 + 208);
  v23 = *(a1 + 224);
  v24 = *(a1 + 232);
  v25 = *(a1 + 240);
  v26 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v26;
  v27 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v27;
  v28 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v28;
  v29 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v29;
  v30 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v30;
  v31 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v31;
  v32 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v32;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v4;
  outlined consume of AccessibilityLargeContentViewTree(v5, v6, v7, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  return a1;
}

uint64_t getEnumTag for AccessibilityLargeContentViewTree(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for AccessibilityLargeContentViewTree(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 240) & 0x301 | (a2 << 14);
    *(result + 200) &= 0xFFFFFFuLL;
    *(result + 240) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0;
    *(result + 240) = 0x8000;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityLargeContentViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t assignWithTake for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t specialized static Image.Resolved.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v70 = a1[4];
  v71[0] = v3;
  *(v71 + 12) = *(a1 + 92);
  v4 = a1[1];
  v67[0] = *a1;
  v67[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v68 = a1[2];
  v69 = v5;
  v8 = a2[3];
  v9 = a2[5];
  v75 = a2[4];
  v76[0] = v9;
  *(v76 + 12) = *(a2 + 92);
  v10 = a2[1];
  v72[0] = *a2;
  v72[1] = v10;
  v11 = a2[3];
  v13 = *a2;
  v12 = a2[1];
  v73 = a2[2];
  v74 = v11;
  v14 = a1[5];
  v65 = v70;
  v66[0] = v14;
  *(v66 + 12) = *(a1 + 92);
  v61 = v7;
  v62 = v6;
  v16 = *(a1 + 14);
  v15 = *(a1 + 15);
  v18 = *(a1 + 16);
  v17 = *(a1 + 17);
  v53 = *(a1 + 18);
  v51 = *(a1 + 19);
  v50 = *(a1 + 160);
  v48 = *(a1 + 161);
  v63 = v68;
  v64 = v2;
  v19 = a2[5];
  v59 = v75;
  v60[0] = v19;
  *(v60 + 12) = *(a2 + 92);
  v20 = *(a1 + 41);
  v44 = *(a1 + 22);
  v42 = *(a1 + 186);
  v43 = *(a1 + 92);
  v22 = *(a2 + 14);
  v21 = *(a2 + 15);
  v24 = *(a2 + 16);
  v23 = *(a2 + 17);
  v52 = *(a2 + 18);
  v54 = *(a2 + 19);
  v49 = *(a2 + 160);
  v46 = *(a1 + 168);
  v47 = *(a2 + 161);
  v55 = v13;
  v56 = v12;
  v25 = *(a2 + 41);
  v45 = *(a2 + 168);
  v41 = *(a2 + 22);
  v39 = *(a2 + 186);
  v40 = *(a2 + 92);
  v57 = v73;
  v58 = v8;
  outlined init with copy of GraphicsImage(v67, v79);
  outlined init with copy of GraphicsImage(v72, v79);
  v26 = MEMORY[0x18D0041B0](&v61, &v55);
  v77[4] = v59;
  v78[0] = v60[0];
  *(v78 + 12) = *(v60 + 12);
  v77[0] = v55;
  v77[1] = v56;
  v77[2] = v57;
  v77[3] = v58;
  outlined destroy of GraphicsImage(v77);
  v79[4] = v65;
  v80[0] = v66[0];
  *(v80 + 12) = *(v66 + 12);
  v79[0] = v61;
  v79[1] = v62;
  v79[2] = v63;
  v79[3] = v64;
  outlined destroy of GraphicsImage(v79);
  if ((v26 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v18 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24);
    if (v24 >> 1 == 0xFFFFFFFF)
    {
      outlined consume of AccessibilityImageLabel?(v16, v15, v18);
      goto LABEL_11;
    }

LABEL_7:
    outlined consume of AccessibilityImageLabel?(v16, v15, v18);
    outlined consume of AccessibilityImageLabel?(v22, v21, v24);
    goto LABEL_8;
  }

  *&v61 = v16;
  *(&v61 + 1) = v15;
  *&v62 = v18;
  *(&v62 + 1) = v17;
  if (v24 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24);
    outlined copy of AccessibilityImageLabel?(v16, v15, v18);
    outlined consume of AccessibilityImageLabel(v16, v15, v18);
    goto LABEL_7;
  }

  *&v55 = v22;
  *(&v55 + 1) = v21;
  *&v56 = v24;
  *(&v56 + 1) = v23;
  outlined copy of AccessibilityImageLabel?(v16, v15, v18);
  outlined copy of AccessibilityImageLabel?(v22, v21, v24);
  outlined copy of AccessibilityImageLabel?(v16, v15, v18);
  v29 = MEMORY[0x18D0084D0](&v61, &v55);
  outlined consume of AccessibilityImageLabel(v55, *(&v55 + 1), v56);
  outlined consume of AccessibilityImageLabel(v61, *(&v61 + 1), v62);
  outlined consume of AccessibilityImageLabel?(v16, v15, v18);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v53)
  {
    v30 = v54;
    if (v53 != v52)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v30 = v54;
    if (v52)
    {
      goto LABEL_8;
    }
  }

  v31 = (v51 | v30) == 0;
  if (v51 && v30)
  {
    v32 = *(v51 + 32);
    v61 = *(v51 + 16);
    v62 = v32;
    v33 = *(v51 + 64);
    v63 = *(v51 + 48);
    v64 = v33;
    v34 = *(v30 + 32);
    v55 = *(v30 + 16);
    v56 = v34;
    v35 = *(v30 + 64);
    v57 = *(v30 + 48);
    v58 = v35;
    v31 = MEMORY[0x18D00A980](&v61, &v55);
  }

  v27 = 0;
  if ((v31 & 1) != 0 && ((v50 ^ v49) & 1) == 0)
  {
    if (v48 == 3)
    {
      if (v47 == 3)
      {
        goto LABEL_25;
      }

LABEL_8:
      v27 = 0;
      return v27 & 1;
    }

    v27 = 0;
    if (v47 != 3 && v48 == v47)
    {
LABEL_25:
      if (v46)
      {
        if (v45)
        {
LABEL_31:
          *&v61 = v44;
          WORD4(v61) = v43;
          BYTE10(v61) = v42;
          *&v55 = v41;
          WORD4(v55) = v40;
          BYTE10(v55) = v39;
          v37 = v41;
          v38 = v44;
          v27 = MEMORY[0x18D008B00](&v61, &v55);

          return v27 & 1;
        }
      }

      else
      {
        v36 = v45;
        if (v20 != v25)
        {
          v36 = 1;
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_8;
    }
  }

  return v27 & 1;
}

BOOL specialized static AccessibilityLargeContentViewItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 10);
  v138[8] = *(a1 + 9);
  v138[9] = v6;
  v139[0] = *(a1 + 11);
  *(v139 + 11) = *(a1 + 187);
  v7 = *(a1 + 6);
  v138[4] = *(a1 + 5);
  v138[5] = v7;
  v8 = *(a1 + 8);
  v138[6] = *(a1 + 7);
  v138[7] = v8;
  v9 = *(a1 + 2);
  v138[0] = *(a1 + 1);
  v138[1] = v9;
  v10 = *(a1 + 4);
  v138[2] = *(a1 + 3);
  v138[3] = v10;
  v11 = *(a1 + 26);
  v12 = *(a1 + 27);
  v13 = *(a1 + 28);
  v14 = *(a1 + 29);
  v15 = *(a1 + 240);
  v16 = *(a1 + 241);
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 10);
  v140[8] = *(a2 + 9);
  v140[9] = v19;
  v141[0] = *(a2 + 11);
  *(v141 + 11) = *(a2 + 187);
  v20 = *(a2 + 6);
  v140[4] = *(a2 + 5);
  v140[5] = v20;
  v21 = *(a2 + 8);
  v140[6] = *(a2 + 7);
  v140[7] = v21;
  v22 = *(a2 + 2);
  v140[0] = *(a2 + 1);
  v140[1] = v22;
  v23 = *(a2 + 4);
  v140[2] = *(a2 + 3);
  v140[3] = v23;
  v24 = *(a2 + 26);
  v25 = *(a2 + 27);
  v26 = *(a2 + 28);
  v27 = *(a2 + 29);
  v28 = *(a2 + 240);
  v29 = *(a2 + 241);
  if (v5)
  {
    if (!v18 || (v4 != v17 || v5 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v31 = *(a1 + 10);
  v32 = *(a1 + 8);
  __src[8] = *(a1 + 9);
  __src[9] = v31;
  v33 = *(a2 + 1);
  v34 = *(a2 + 2);
  v35 = *(a1 + 10);
  __src[10] = *(a1 + 11);
  *(&__src[10] + 11) = *(a1 + 187);
  v36 = *(a1 + 6);
  v37 = *(a1 + 4);
  __src[4] = *(a1 + 5);
  __src[5] = v36;
  v38 = *(a1 + 6);
  v39 = *(a1 + 8);
  __src[6] = *(a1 + 7);
  __src[7] = v39;
  v40 = *(a1 + 2);
  __src[0] = *(a1 + 1);
  __src[1] = v40;
  v41 = *(a1 + 4);
  v43 = *(a1 + 1);
  v42 = *(a1 + 2);
  __src[2] = *(a1 + 3);
  __src[3] = v41;
  *(&__src[22] + 11) = *(a2 + 187);
  v44 = *(a2 + 9);
  v45 = *(a2 + 11);
  __src[21] = *(a2 + 10);
  __src[22] = v45;
  v46 = *(a2 + 5);
  v47 = *(a2 + 7);
  v48 = *(a2 + 8);
  __src[17] = *(a2 + 6);
  __src[18] = v47;
  __src[20] = v44;
  __src[19] = v48;
  __src[12] = v33;
  v49 = *(a2 + 3);
  v50 = *(a2 + 4);
  __src[13] = v34;
  __src[14] = v49;
  __src[16] = v46;
  __src[15] = v50;
  v136[8] = __src[8];
  v136[9] = v35;
  v137[0] = *(a1 + 11);
  *(v137 + 11) = *(a1 + 187);
  v136[4] = __src[4];
  v136[5] = v38;
  v136[6] = __src[6];
  v136[7] = v32;
  v136[0] = v43;
  v136[1] = v42;
  v136[2] = __src[2];
  v136[3] = v37;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v136) == 1)
  {
    v51 = *(a2 + 10);
    __dst[8] = *(a2 + 9);
    __dst[9] = v51;
    __dst[10] = *(a2 + 11);
    *(&__dst[10] + 11) = *(a2 + 187);
    v52 = *(a2 + 6);
    __dst[4] = *(a2 + 5);
    __dst[5] = v52;
    v53 = *(a2 + 8);
    __dst[6] = *(a2 + 7);
    __dst[7] = v53;
    v54 = *(a2 + 2);
    __dst[0] = *(a2 + 1);
    __dst[1] = v54;
    v55 = *(a2 + 4);
    __dst[2] = *(a2 + 3);
    __dst[3] = v55;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(__dst) == 1)
    {
      v56 = *(a1 + 10);
      v132 = *(a1 + 9);
      v133 = v56;
      v134[0] = *(a1 + 11);
      *(v134 + 11) = *(a1 + 187);
      v57 = *(a1 + 6);
      v128 = *(a1 + 5);
      v129 = v57;
      v58 = *(a1 + 8);
      v130 = *(a1 + 7);
      v131 = v58;
      v59 = *(a1 + 2);
      v124 = *(a1 + 1);
      v125 = v59;
      v60 = *(a1 + 4);
      v126 = *(a1 + 3);
      v127 = v60;
      v61 = MEMORY[0x1E6981730];
      outlined init with copy of Image.Resolved?(v138, &v112, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      outlined init with copy of Image.Resolved?(v140, &v112, &lazy cache variable for type metadata for Image.Resolved?, v61);
      outlined destroy of PlatformItemList.Item?(&v124, &lazy cache variable for type metadata for Image.Resolved?, v61, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
      goto LABEL_17;
    }

    v84 = MEMORY[0x1E6981730];
    outlined init with copy of Image.Resolved?(v138, &v124, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    outlined init with copy of Image.Resolved?(v140, &v124, &lazy cache variable for type metadata for Image.Resolved?, v84);
LABEL_15:
    memcpy(__dst, __src, 0x17BuLL);
    outlined destroy of (Image.Resolved?, Image.Resolved?)(__dst, type metadata accessor for (Image.Resolved?, Image.Resolved?));
    return 0;
  }

  v62 = *(a1 + 10);
  v63 = *(a1 + 8);
  v132 = *(a1 + 9);
  v133 = v62;
  v64 = *(a1 + 10);
  v134[0] = *(a1 + 11);
  *(v134 + 11) = *(a1 + 187);
  v65 = *(a1 + 6);
  v66 = *(a1 + 4);
  v128 = *(a1 + 5);
  v129 = v65;
  v67 = *(a1 + 6);
  v68 = *(a1 + 8);
  v130 = *(a1 + 7);
  v131 = v68;
  v69 = *(a1 + 2);
  v124 = *(a1 + 1);
  v125 = v69;
  v70 = *(a1 + 4);
  v72 = *(a1 + 1);
  v71 = *(a1 + 2);
  v126 = *(a1 + 3);
  v127 = v70;
  v120 = v132;
  v121 = v64;
  v122[0] = *(a1 + 11);
  *(v122 + 11) = *(a1 + 187);
  v116 = v128;
  v117 = v67;
  v118 = v130;
  v119 = v63;
  v112 = v72;
  v113 = v71;
  v114 = v126;
  v115 = v66;
  v73 = *(a2 + 10);
  __dst[8] = *(a2 + 9);
  __dst[9] = v73;
  __dst[10] = *(a2 + 11);
  *(&__dst[10] + 11) = *(a2 + 187);
  v74 = *(a2 + 6);
  __dst[4] = *(a2 + 5);
  __dst[5] = v74;
  v75 = *(a2 + 8);
  __dst[6] = *(a2 + 7);
  __dst[7] = v75;
  v76 = *(a2 + 2);
  __dst[0] = *(a2 + 1);
  __dst[1] = v76;
  v77 = *(a2 + 4);
  __dst[2] = *(a2 + 3);
  __dst[3] = v77;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(__dst) == 1)
  {
    v78 = *(a1 + 10);
    v109 = *(a1 + 9);
    v110 = v78;
    v111[0] = *(a1 + 11);
    *(v111 + 11) = *(a1 + 187);
    v79 = *(a1 + 6);
    v105 = *(a1 + 5);
    v106 = v79;
    v80 = *(a1 + 8);
    v107 = *(a1 + 7);
    v108 = v80;
    v81 = *(a1 + 2);
    v101 = *(a1 + 1);
    v102 = v81;
    v82 = *(a1 + 4);
    v103 = *(a1 + 3);
    v104 = v82;
    v83 = MEMORY[0x1E6981730];
    outlined init with copy of Image.Resolved?(v138, v99, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    outlined init with copy of Image.Resolved?(v140, v99, &lazy cache variable for type metadata for Image.Resolved?, v83);
    outlined init with copy of Image.Resolved?(&v124, v99, &lazy cache variable for type metadata for Image.Resolved?, v83);
    outlined destroy of Image.Resolved(&v101);
    goto LABEL_15;
  }

  v85 = *(a2 + 10);
  v109 = *(a2 + 9);
  v110 = v85;
  v111[0] = *(a2 + 11);
  *(v111 + 11) = *(a2 + 187);
  v86 = *(a2 + 6);
  v105 = *(a2 + 5);
  v106 = v86;
  v87 = *(a2 + 8);
  v107 = *(a2 + 7);
  v108 = v87;
  v88 = *(a2 + 2);
  v101 = *(a2 + 1);
  v102 = v88;
  v89 = *(a2 + 4);
  v103 = *(a2 + 3);
  v104 = v89;
  v90 = MEMORY[0x1E6981730];
  outlined init with copy of Image.Resolved?(v138, v99, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  outlined init with copy of Image.Resolved?(v140, v99, &lazy cache variable for type metadata for Image.Resolved?, v90);
  outlined init with copy of Image.Resolved?(&v124, v99, &lazy cache variable for type metadata for Image.Resolved?, v90);
  v91 = specialized static Image.Resolved.== infix(_:_:)(&v112, &v101);
  v97[8] = v109;
  v97[9] = v110;
  v98[0] = v111[0];
  *(v98 + 11) = *(v111 + 11);
  v97[4] = v105;
  v97[5] = v106;
  v97[6] = v107;
  v97[7] = v108;
  v97[0] = v101;
  v97[1] = v102;
  v97[2] = v103;
  v97[3] = v104;
  outlined destroy of Image.Resolved(v97);
  v99[8] = v120;
  v99[9] = v121;
  v100[0] = v122[0];
  *(v100 + 11) = *(v122 + 11);
  v99[4] = v116;
  v99[5] = v117;
  v99[6] = v118;
  v99[7] = v119;
  v99[0] = v112;
  v99[1] = v113;
  v99[2] = v114;
  v99[3] = v115;
  outlined destroy of Image.Resolved(v99);
  v92 = *(a1 + 10);
  v109 = *(a1 + 9);
  v110 = v92;
  v111[0] = *(a1 + 11);
  *(v111 + 11) = *(a1 + 187);
  v93 = *(a1 + 6);
  v105 = *(a1 + 5);
  v106 = v93;
  v94 = *(a1 + 8);
  v107 = *(a1 + 7);
  v108 = v94;
  v95 = *(a1 + 2);
  v101 = *(a1 + 1);
  v102 = v95;
  v96 = *(a1 + 4);
  v103 = *(a1 + 3);
  v104 = v96;
  outlined destroy of PlatformItemList.Item?(&v101, &lazy cache variable for type metadata for Image.Resolved?, v90, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v142.origin.x = v11;
  v142.origin.y = v12;
  v142.size.width = v13;
  v142.size.height = v14;
  v143.origin.x = v24;
  v143.origin.y = v25;
  v143.size.width = v26;
  v143.size.height = v27;
  result = CGRectEqualToRect(v142, v143);
  if (!result)
  {
    return result;
  }

  if (v15 != v28)
  {
    return 0;
  }

  return v16 == v29;
}

uint64_t specialized static AccessibilityLargeContentViewTree.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[13];
  v3 = a1[11];
  v78 = a1[12];
  v79 = v2;
  v4 = a1[13];
  v80 = a1[14];
  v5 = a1[9];
  v6 = a1[7];
  v74 = a1[8];
  v75 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v76 = a1[10];
  v77 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v70 = a1[4];
  v71 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v72 = a1[6];
  v73 = v12;
  v13 = a1[1];
  v67[0] = *a1;
  v67[1] = v13;
  v14 = a1[3];
  v15 = *a1;
  v16 = a1[1];
  v68 = a1[2];
  v69 = v14;
  v17 = a2[11];
  v94 = a2[12];
  v18 = a2[12];
  v95 = a2[13];
  v19 = a2[13];
  v96 = a2[14];
  v20 = a2[7];
  v90 = a2[8];
  v21 = a2[8];
  v91 = a2[9];
  v22 = a2[9];
  v92 = a2[10];
  v23 = a2[10];
  v93 = a2[11];
  v24 = a2[3];
  v86 = a2[4];
  v25 = a2[4];
  v87 = a2[5];
  v26 = a2[5];
  v88 = a2[6];
  v27 = a2[6];
  v89 = a2[7];
  v28 = a2[1];
  v82 = *a2;
  v29 = *a2;
  v83 = a2[1];
  v84 = a2[2];
  v30 = a2[2];
  v85 = a2[3];
  v98[12] = a1[12];
  v98[13] = a1[13];
  v98[14] = a1[14];
  v98[8] = a1[8];
  v98[9] = a1[9];
  v98[10] = a1[10];
  v98[11] = a1[11];
  v98[4] = a1[4];
  v98[5] = a1[5];
  v98[6] = a1[6];
  v98[7] = a1[7];
  v98[0] = *a1;
  v98[1] = a1[1];
  v98[2] = a1[2];
  v98[3] = a1[3];
  v31 = a2[14];
  v113 = v19;
  v114 = v31;
  v109 = v22;
  v110 = v23;
  v111 = v17;
  v112 = v18;
  v105 = v26;
  v106 = v27;
  v107 = v20;
  v108 = v21;
  v101 = v28;
  v102 = v30;
  v103 = v24;
  v104 = v25;
  v100 = v29;
  v116[12] = v78;
  v116[13] = v4;
  v116[14] = a1[14];
  v116[8] = v74;
  v116[9] = v7;
  v116[10] = v76;
  v116[11] = v3;
  v116[4] = v70;
  v116[5] = v11;
  v116[6] = v72;
  v116[7] = v6;
  v116[0] = v15;
  v116[1] = v16;
  v81 = *(a1 + 120);
  v97 = *(a2 + 120);
  v99 = *(a1 + 120);
  v115 = *(a2 + 120);
  v117 = *(a1 + 120);
  v116[2] = v68;
  v116[3] = v10;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v116);
  if (!Enum)
  {
    v36 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v116);
    v63 = v94;
    v64 = v95;
    v65 = v96;
    v66 = v97;
    v59 = v90;
    v60 = v91;
    v61 = v92;
    v62 = v93;
    v55 = v86;
    v56 = v87;
    v57 = v88;
    v58 = v89;
    v51 = v82;
    v52 = v83;
    v53 = v84;
    v54 = v85;
    if (!getEnumTag for AccessibilityLargeContentViewTree(&v51))
    {
      v37 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v51);
      v49[12] = *(v36 + 192);
      v49[13] = *(v36 + 208);
      v49[14] = *(v36 + 224);
      v50 = *(v36 + 240);
      v49[8] = *(v36 + 128);
      v49[9] = *(v36 + 144);
      v49[10] = *(v36 + 160);
      v49[11] = *(v36 + 176);
      v49[4] = *(v36 + 64);
      v49[5] = *(v36 + 80);
      v49[6] = *(v36 + 96);
      v49[7] = *(v36 + 112);
      v49[0] = *v36;
      v49[1] = *(v36 + 16);
      v49[2] = *(v36 + 32);
      v49[3] = *(v36 + 48);
      v38 = *(v37 + 208);
      v47[12] = *(v37 + 192);
      v47[13] = v38;
      v47[14] = *(v37 + 224);
      v48 = *(v37 + 240);
      v39 = *(v37 + 144);
      v47[8] = *(v37 + 128);
      v47[9] = v39;
      v40 = *(v37 + 176);
      v47[10] = *(v37 + 160);
      v47[11] = v40;
      v41 = *(v37 + 80);
      v47[4] = *(v37 + 64);
      v47[5] = v41;
      v42 = *(v37 + 112);
      v47[6] = *(v37 + 96);
      v47[7] = v42;
      v43 = *(v37 + 16);
      v47[0] = *v37;
      v47[1] = v43;
      v44 = *(v37 + 48);
      v47[2] = *(v37 + 32);
      v47[3] = v44;
      outlined init with copy of AccessibilityLargeContentViewTree(&v82, v46);
      outlined init with copy of AccessibilityLargeContentViewTree(v67, v46);
      outlined init with copy of AccessibilityLargeContentViewTree(&v82, v46);
      outlined init with copy of AccessibilityLargeContentViewTree(v67, v46);
      v35 = specialized static AccessibilityLargeContentViewItem.== infix(_:_:)(v49, v47);
      outlined destroy of (Image.Resolved?, Image.Resolved?)(v98, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
      outlined destroy of AccessibilityLargeContentViewTree(&v82);
      outlined destroy of AccessibilityLargeContentViewTree(v67);
      return v35 & 1;
    }

LABEL_9:
    outlined init with copy of AccessibilityLargeContentViewTree(&v82, &v51);
    outlined init with copy of AccessibilityLargeContentViewTree(v67, &v51);
    outlined destroy of (Image.Resolved?, Image.Resolved?)(v98, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
    v35 = 0;
    return v35 & 1;
  }

  if (Enum != 1)
  {
    v63 = v94;
    v64 = v95;
    v65 = v96;
    v66 = v97;
    v59 = v90;
    v60 = v91;
    v61 = v92;
    v62 = v93;
    v55 = v86;
    v56 = v87;
    v57 = v88;
    v58 = v89;
    v51 = v82;
    v52 = v83;
    v53 = v84;
    v54 = v85;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v51) == 2)
    {
      outlined destroy of (Image.Resolved?, Image.Resolved?)(v98, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
      v35 = 1;
      return v35 & 1;
    }

    goto LABEL_9;
  }

  v33 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v116);
  v53 = v84;
  v54 = v85;
  v51 = v82;
  v52 = v83;
  v57 = v88;
  v58 = v89;
  v55 = v86;
  v56 = v87;
  v61 = v92;
  v62 = v93;
  v59 = v90;
  v60 = v91;
  v66 = v97;
  v64 = v95;
  v65 = v96;
  v63 = v94;
  if (getEnumTag for AccessibilityLargeContentViewTree(&v51) != 1)
  {
    goto LABEL_9;
  }

  v34 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v51);
  outlined init with copy of AccessibilityLargeContentViewTree(&v82, v49);
  outlined init with copy of AccessibilityLargeContentViewTree(v67, v49);
  v35 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI33AccessibilityLargeContentViewTreeO_Tt1g5(v33, v34);
  outlined destroy of (Image.Resolved?, Image.Resolved?)(v98, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
  return v35 & 1;
}

uint64_t specialized static AccessibilityLargeContentViewTree.Key.reduce(value:nextValue:)(__int128 *a1, void (*a2)(__int128 *__return_ptr, uint64_t))
{
  v4 = a1[13];
  v116 = a1[12];
  v117 = v4;
  v118 = a1[14];
  v119 = *(a1 + 120);
  v5 = a1[9];
  v112 = a1[8];
  v113 = v5;
  v6 = a1[11];
  v114 = a1[10];
  v115 = v6;
  v7 = a1[5];
  v108 = a1[4];
  v109 = v7;
  v8 = a1[7];
  v110 = a1[6];
  v111 = v8;
  v9 = a1[1];
  v104 = *a1;
  v105 = v9;
  v10 = a1[3];
  v106 = a1[2];
  v107 = v10;
  v11 = outlined init with copy of AccessibilityLargeContentViewTree(&v104, v136);
  a2(&v120, v11);
  v136[12] = v132;
  v136[13] = v133;
  v136[14] = v134;
  v136[8] = v128;
  v136[9] = v129;
  v136[10] = v130;
  v136[11] = v131;
  v136[4] = v124;
  v136[5] = v125;
  v136[6] = v126;
  v136[7] = v127;
  v136[0] = v120;
  v136[1] = v121;
  v136[2] = v122;
  v137 = v135;
  v136[3] = v123;
  if (getEnumTag for AccessibilityLargeContentViewTree(v136) == 2)
  {
    return outlined destroy of AccessibilityLargeContentViewTree(&v104);
  }

  v13 = a1[13];
  v100[12] = a1[12];
  v100[13] = v13;
  v100[14] = a1[14];
  v101 = *(a1 + 120);
  v14 = a1[9];
  v100[8] = a1[8];
  v100[9] = v14;
  v15 = a1[11];
  v100[10] = a1[10];
  v100[11] = v15;
  v16 = a1[5];
  v100[4] = a1[4];
  v100[5] = v16;
  v17 = a1[7];
  v100[6] = a1[6];
  v100[7] = v17;
  v18 = a1[1];
  v100[0] = *a1;
  v100[1] = v18;
  v19 = a1[3];
  v100[2] = a1[2];
  v100[3] = v19;
  outlined destroy of AccessibilityLargeContentViewTree(v100);
  v102[12] = v116;
  v102[13] = v117;
  v102[14] = v118;
  v103 = v119;
  v102[8] = v112;
  v102[9] = v113;
  v102[10] = v114;
  v102[11] = v115;
  v102[4] = v108;
  v102[5] = v109;
  v102[6] = v110;
  v102[7] = v111;
  v102[0] = v104;
  v102[1] = v105;
  v102[2] = v106;
  v102[3] = v107;
  result = getEnumTag for AccessibilityLargeContentViewTree(v102);
  if (!result)
  {
    destructiveProjectEnumData for AccessibilityLargeContentViewTree(v102);
    v96 = v132;
    v97 = v133;
    v98 = v134;
    v99 = v135;
    v92 = v128;
    v93 = v129;
    v94 = v130;
    v95 = v131;
    v88 = v124;
    v89 = v125;
    v90 = v126;
    v91 = v127;
    v84 = v120;
    v85 = v121;
    v86 = v122;
    v87 = v123;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v84) != 1)
    {
      type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
      v56 = swift_allocObject();
      v57 = v116;
      v58 = v118;
      *(v56 + 240) = v117;
      *(v56 + 256) = v58;
      v59 = v112;
      v60 = v114;
      v61 = v115;
      *(v56 + 176) = v113;
      *(v56 + 192) = v60;
      *(v56 + 208) = v61;
      *(v56 + 224) = v57;
      v62 = v108;
      v63 = v110;
      v64 = v111;
      *(v56 + 112) = v109;
      *(v56 + 128) = v63;
      *(v56 + 144) = v64;
      *(v56 + 160) = v59;
      v65 = v104;
      v66 = v105;
      *(v56 + 16) = xmmword_18CD63410;
      *(v56 + 32) = v65;
      v67 = v106;
      v68 = v107;
      *(v56 + 48) = v66;
      *(v56 + 64) = v67;
      *(v56 + 272) = v119;
      *(v56 + 80) = v68;
      *(v56 + 96) = v62;
      v69 = v133;
      *(v56 + 472) = v132;
      *(v56 + 488) = v69;
      *(v56 + 504) = v134;
      *(v56 + 520) = v135;
      v70 = v129;
      *(v56 + 408) = v128;
      *(v56 + 424) = v70;
      v71 = v131;
      *(v56 + 440) = v130;
      *(v56 + 456) = v71;
      v72 = v125;
      *(v56 + 344) = v124;
      *(v56 + 360) = v72;
      v73 = v127;
      *(v56 + 376) = v126;
      *(v56 + 392) = v73;
      v74 = v121;
      *(v56 + 280) = v120;
      *(v56 + 296) = v74;
      v75 = v123;
      *(v56 + 312) = v122;
      *(v56 + 328) = v75;
      *&v82[0] = v56;
      goto LABEL_14;
    }

    v22 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v84);
    type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    v24 = v116;
    v25 = v118;
    *(v23 + 240) = v117;
    *(v23 + 256) = v25;
    v26 = v112;
    v27 = v114;
    v28 = v115;
    *(v23 + 176) = v113;
    *(v23 + 192) = v27;
    *(v23 + 208) = v28;
    *(v23 + 224) = v24;
    v29 = v108;
    v30 = v110;
    v31 = v111;
    *(v23 + 112) = v109;
    *(v23 + 128) = v30;
    *(v23 + 144) = v31;
    *(v23 + 160) = v26;
    v32 = v104;
    v33 = v105;
    *(v23 + 16) = xmmword_18CD63400;
    *(v23 + 32) = v32;
    v34 = v106;
    v35 = v107;
    *(v23 + 48) = v33;
    *(v23 + 64) = v34;
    *(v23 + 272) = v119;
    *(v23 + 80) = v35;
    *(v23 + 96) = v29;
    *&v82[0] = v23;
    v21 = v22;
LABEL_12:
    specialized Array.append<A>(contentsOf:)(v21);
LABEL_14:
    result = _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi0_(v82);
    v76 = v82[13];
    a1[12] = v82[12];
    a1[13] = v76;
    a1[14] = v82[14];
    *(a1 + 120) = v83;
    v77 = v82[9];
    a1[8] = v82[8];
    a1[9] = v77;
    v78 = v82[11];
    a1[10] = v82[10];
    a1[11] = v78;
    v79 = v82[5];
    a1[4] = v82[4];
    a1[5] = v79;
    v80 = v82[7];
    a1[6] = v82[6];
    a1[7] = v80;
    v81 = v82[1];
    *a1 = v82[0];
    a1[1] = v81;
    v42 = v82[2];
    v43 = v82[3];
    goto LABEL_15;
  }

  if (result == 1)
  {
    v20 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v102);
    v86 = v122;
    v87 = v123;
    v84 = v120;
    v85 = v121;
    v90 = v126;
    v91 = v127;
    v88 = v124;
    v89 = v125;
    v94 = v130;
    v95 = v131;
    v92 = v128;
    v93 = v129;
    v99 = v135;
    v97 = v133;
    v98 = v134;
    v96 = v132;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v84) == 1)
    {
      v21 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v84);
    }

    else
    {
      type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      v44 = v132;
      v45 = v134;
      *(v21 + 240) = v133;
      *(v21 + 256) = v45;
      v46 = v128;
      v47 = v130;
      v48 = v131;
      *(v21 + 176) = v129;
      *(v21 + 192) = v47;
      *(v21 + 208) = v48;
      *(v21 + 224) = v44;
      v49 = v124;
      v50 = v126;
      v51 = v127;
      *(v21 + 112) = v125;
      *(v21 + 128) = v50;
      *(v21 + 144) = v51;
      *(v21 + 160) = v46;
      v52 = v120;
      v53 = v121;
      *(v21 + 16) = xmmword_18CD63400;
      *(v21 + 32) = v52;
      v54 = v122;
      v55 = v123;
      *(v21 + 48) = v53;
      *(v21 + 64) = v54;
      *(v21 + 272) = v135;
      *(v21 + 80) = v55;
      *(v21 + 96) = v49;
    }

    *&v82[0] = v20;
    goto LABEL_12;
  }

  v36 = v133;
  a1[12] = v132;
  a1[13] = v36;
  a1[14] = v134;
  *(a1 + 120) = v135;
  v37 = v129;
  a1[8] = v128;
  a1[9] = v37;
  v38 = v131;
  a1[10] = v130;
  a1[11] = v38;
  v39 = v125;
  a1[4] = v124;
  a1[5] = v39;
  v40 = v127;
  a1[6] = v126;
  a1[7] = v40;
  v41 = v121;
  *a1 = v120;
  a1[1] = v41;
  v42 = v122;
  v43 = v123;
LABEL_15:
  a1[2] = v42;
  a1[3] = v43;
  return result;
}

uint64_t _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi0_(uint64_t result)
{
  v1 = *(result + 240) & 0x301 | 0x4000;
  *(result + 200) &= 0xFFFFFFuLL;
  *(result + 240) = v1;
  return result;
}

uint64_t _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi_(uint64_t result)
{
  v1 = *(result + 240) & 0x301;
  *(result + 200) &= 0xFFFFFFuLL;
  *(result + 240) = v1;
  return result;
}

void type metadata accessor for (Image.Resolved?, Image.Resolved?)()
{
  if (!lazy cache variable for type metadata for (Image.Resolved?, Image.Resolved?))
  {
    type metadata accessor for Image.Resolved?(255, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Image.Resolved?, Image.Resolved?));
    }
  }
}

uint64_t outlined destroy of (Image.Resolved?, Image.Resolved?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree)()
{
  if (!lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
    }
  }
}

uint64_t _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t outlined init with copy of Image.Resolved?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Image.Resolved?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_18CD633F0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  return result;
}

uint64_t assignWithCopy for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *(a1 + 120);
  *(a1 + 120) = v4;
  v6 = v4;

  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t assignWithTake for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior()
{
  result = lazy protocol witness table cache variable for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior;
  if (!lazy protocol witness table cache variable for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior);
  }

  return result;
}

uint64_t AsOptional.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for AsOptional();
  v9 = (a5 + *(result + 52));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t static AsOptional._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of _ViewListInputs(a2, v16);
  _ViewListCountInputs.init(_:)();
  (*(a5 + 40))(&v11, a3, a5);
  v16[3] = v14;
  v16[4] = v15;
  v16[1] = v12;
  v16[2] = v13;
  v16[0] = v11;
  outlined destroy of _ViewListCountInputs(v16);
  *&v11 = a3;
  *(&v11 + 1) = a4;
  *&v12 = a5;
  *(&v12 + 1) = a6;
  type metadata accessor for AsOptional();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  *&v11 = a3;
  *(&v11 + 1) = a4;
  *&v12 = a5;
  *(&v12 + 1) = a6;
  type metadata accessor for AsOptional.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t AsOptional.Child.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AsOptional();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t AsOptional.Child.value.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v28 = type metadata accessor for Optional();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = v24 - v11;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v13 = type metadata accessor for AsOptional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  v24[0] = a4;
  v24[1] = a5;
  AsOptional.Child.view.getter(v24 - v18);
  v25 = *&v19[*(v13 + 52)];
  v20 = *(v14 + 8);

  v20(v19, v13);
  if (a1)
  {
    v21 = *(a2 - 8);
    v22 = 1;
  }

  else
  {
    AsOptional.Child.view.getter(v16);
    v21 = *(a2 - 8);
    (*(v21 + 16))(v12, v16, a2);
    v20(v16, v13);
    v22 = 0;
  }

  (*(v21 + 56))(v12, v22, 1, a2);
  v25(v12);

  return (*(v26 + 8))(v12, v28);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AsOptional<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE59E8](a1, a2, a3, WitnessTable);
}

uint64_t *initializeBufferWithCopyOfBuffer for AsOptional(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t initializeWithTake for AsOptional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsOptional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsOptional(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for AsOptional(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
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
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsOptional.Child(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AsOptional.Child(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t OptionalFormatInputToString.get(base:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a1, v3, v9);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v11, v6, AssociatedTypeWitness);
    dispatch thunk of FormatStyle.format(_:)();
    (*(v7 + 8))(v11, AssociatedTypeWitness);
    return v13;
  }
}

uint64_t OptionalFormatInputToString.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v15 - v5;
  v7 = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = *(v9 + 8);
  v19 = a1;
  v13(a1, v8, v10);
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v20 = v16;
  v21 = v17;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v18 + 8))(v6, AssociatedTypeWitness);
  (*(*(v7 - 8) + 56))(v12, 0, 1, v7);
  return (*(v9 + 32))(v19, v12, v8);
}

uint64_t protocol witness for Projection.get(base:) in conformance OptionalFormatInputToString<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OptionalFormatInputToString.get(base:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FormatInputToString.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v14 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14 - v6;
  v8 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15);
  v10 = &v14 - v9;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v17 = a2;
  v18 = v16;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v11 = *(v8 - 8);
  (*(v11 + 56))(v10, 0, 1, v8);
  v12 = v14;
  (*(v11 + 8))(v14, v8);
  return (*(v11 + 32))(v12, v10, v8);
}

Swift::Int OptionalFormatInputToString.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance FormatInputToString<A>@<X0>(uint64_t *a1@<X8>)
{
  result = FormatInputToString.get(base:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OptionalFormatInputToString<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t Optional<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  (*(*(a1 - 8) + 56))(v7, 0, 1, a1);
  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t Optional<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  v11[1] = a1;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(*(a2 - 8) + 56))(v9, 0, 1, a2);
  (*(v7 + 32))(a3, v9, v6);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t AnyToFormattedString.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  AnyToFormattedString.init(_:)(a1);
  return v2;
}

uint64_t AnyToFormattedString.init(_:)(void *a1)
{
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFormatter);
  swift_dynamicCast();
  *(v1 + 16) = v4;
  return v1;
}

uint64_t AnyToFormattedString.get(base:)()
{
  v1 = [*(v0 + 16) stringForObjectValue_];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void static AnyToFormattedString.applyFormatting(to:string:formatter:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v91 = a1;
  v101 = *MEMORY[0x1E69E9840];
  v8 = *(v4 + 80);
  v9 = type metadata accessor for Optional();
  v90 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - v10;
  v93 = v8;
  v92 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v87 - v22;
  v24 = MEMORY[0x18D00C850](a2, a3, v21);
  v98[0] = 0;
  *&v95 = 0;
  v25 = [a4 getObjectValue:v98 forString:v24 errorDescription:&v95];

  v26 = v98[0];
  if (v25)
  {
    v88 = v95;
    v27 = v93;
    if (v26)
    {
      swift_unknownObjectRetain_n();
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v90 = v26;
        v30 = v91;
        v31 = v92;
        v32 = *(v92 + 16);
        v32(v23, v91, v27);
        type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for BinaryFloatingPoint);
        if (swift_dynamicCast())
        {
          (*(v31 + 8))(v30, v27);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v95, v98);
          __swift_project_boxed_opaque_existential_1(v98, v99);
          DynamicType = swift_getDynamicType();
          v34 = v100;
          [v29 doubleValue];
          *(&v96 + 1) = DynamicType;
          v97 = v34;
          __swift_allocate_boxed_opaque_existential_1(&v95);
          dispatch thunk of BinaryFloatingPoint.init(_:)();
        }

        else
        {
          v97 = 0;
          v95 = 0u;
          v96 = 0u;
          outlined destroy of BinaryFloatingPoint?(&v95, &lazy cache variable for type metadata for BinaryFloatingPoint?, &lazy cache variable for type metadata for BinaryFloatingPoint, MEMORY[0x1E69E5D50]);
          v32(v19, v30, v27);
          type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for BinaryInteger);
          if (!swift_dynamicCast())
          {
            v97 = 0;
            v95 = 0u;
            v96 = 0u;
            outlined destroy of BinaryFloatingPoint?(&v95, &lazy cache variable for type metadata for BinaryInteger?, &lazy cache variable for type metadata for BinaryInteger, MEMORY[0x1E69E6908]);
            v32(v16, v30, v27);
            type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for OptionalBinaryFloatingPoint);
            v60 = swift_dynamicCast();
            v61 = v92;
            if (v60)
            {
              (*(v92 + 8))(v30, v27);
              outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v95, v98);
              __swift_project_boxed_opaque_existential_1(v98, v99);
              v62 = swift_getDynamicType();
              v63 = v100;
              [v29 doubleValue];
              v65 = v64;
              v66 = *(v63 + 8);
              v67 = type metadata accessor for Optional();
              v68 = *(v67 - 8);
              MEMORY[0x1EEE9AC00](v67);
              v70 = &v87 - v69;
              v66(v62, v63, v65);
              v71 = *(v62 - 8);
              if ((*(v71 + 48))(v70, 1, v62) == 1)
              {
                __swift_destroy_boxed_opaque_existential_1(v98);
                swift_unknownObjectRelease();
                (*(v68 + 8))(v70, v67);
                v97 = 0;
                v95 = 0u;
                v96 = 0u;
              }

              else
              {
                *(&v96 + 1) = v62;
                v97 = v63;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
                (*(v71 + 32))(boxed_opaque_existential_1, v70, v62);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_1(v98);
              }

              v83 = &lazy cache variable for type metadata for OptionalBinaryFloatingPoint?;
              v84 = &lazy cache variable for type metadata for OptionalBinaryFloatingPoint;
              v85 = &protocol descriptor for OptionalBinaryFloatingPoint;
            }

            else
            {
              v97 = 0;
              v95 = 0u;
              v96 = 0u;
              outlined destroy of BinaryFloatingPoint?(&v95, &lazy cache variable for type metadata for OptionalBinaryFloatingPoint?, &lazy cache variable for type metadata for OptionalBinaryFloatingPoint, &protocol descriptor for OptionalBinaryFloatingPoint);
              v32(v89, v30, v27);
              type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for OptionalBinaryInteger);
              if ((swift_dynamicCast() & 1) == 0)
              {
                swift_unknownObjectRelease();
                v97 = 0;
                v95 = 0u;
                v96 = 0u;
                outlined destroy of BinaryFloatingPoint?(&v95, &lazy cache variable for type metadata for OptionalBinaryInteger?, &lazy cache variable for type metadata for OptionalBinaryInteger, &protocol descriptor for OptionalBinaryInteger);
                goto LABEL_23;
              }

              (*(v61 + 8))(v30, v27);
              outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v95, v98);
              __swift_project_boxed_opaque_existential_1(v98, v99);
              v72 = swift_getDynamicType();
              v73 = v100;
              v74 = [v29 integerValue];
              v75 = *(v73 + 8);
              v76 = type metadata accessor for Optional();
              v77 = *(v76 - 8);
              v78 = MEMORY[0x1EEE9AC00](v76);
              v80 = &v87 - v79;
              v75(v74, v72, v73, v78);
              v81 = *(v72 - 8);
              if ((*(v81 + 48))(v80, 1, v72) == 1)
              {
                __swift_destroy_boxed_opaque_existential_1(v98);
                swift_unknownObjectRelease();
                (*(v77 + 8))(v80, v76);
                v97 = 0;
                v95 = 0u;
                v96 = 0u;
              }

              else
              {
                *(&v96 + 1) = v72;
                v97 = v73;
                v86 = __swift_allocate_boxed_opaque_existential_1(&v95);
                (*(v81 + 32))(v86, v80, v72);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_1(v98);
              }

              v83 = &lazy cache variable for type metadata for OptionalBinaryInteger?;
              v84 = &lazy cache variable for type metadata for OptionalBinaryInteger;
              v85 = &protocol descriptor for OptionalBinaryInteger;
            }

            type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, v83, v84, v85, MEMORY[0x1E69E6720]);
            goto LABEL_22;
          }

          (*(v92 + 8))(v30, v27);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v95, v98);
          __swift_project_boxed_opaque_existential_1(v98, v99);
          v52 = swift_getDynamicType();
          v53 = v100;
          v94 = [v29 integerValue];
          *(&v96 + 1) = v52;
          v97 = v53;
          __swift_allocate_boxed_opaque_existential_1(&v95);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(_:)();
        }

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v98);
LABEL_22:
        swift_dynamicCast();
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }

    v98[0] = v26;
    type metadata accessor for Swift.AnyObject?();
    swift_unknownObjectRetain();
    v42 = swift_dynamicCast();
    v43 = v92;
    v44 = *(v92 + 56);
    if (v42)
    {
      v44(v11, 0, 1, v27);
      v45 = v91;
      (*(v43 + 8))(v91, v27);
      (*(v43 + 32))(v45, v11, v27);
LABEL_23:
      swift_unknownObjectRelease();

      return;
    }

    v44(v11, 1, 1, v27);
    (*(v90 + 8))(v11, v9);
    v46 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v46 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
      goto LABEL_23;
    }

    v98[0] = v27;
    swift_getMetatypeMetadata();
    v47 = String.init<A>(describing:)();
    v49 = v48;
    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18CD63400;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v51 + 32) = v47;
    *(v51 + 40) = v49;
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();

LABEL_17:

    return;
  }

  v35 = v95;
  swift_unknownObjectRetain();
  static Semantics.v3.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    swift_unknownObjectRelease();

    return;
  }

  if (v35)
  {
    v36 = v35;
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_18CD63400;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  static os_log_type_t.fault.getter();
  v54 = static Log.runtimeIssuesLog.getter();
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_18CD63410;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 56) = MEMORY[0x1E69E6158];
  v57 = lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 64) = v57;
  *(v55 + 32) = a2;
  *(v55 + 40) = a3;
  v98[0] = v93;
  swift_getMetatypeMetadata();

  v58 = String.init<A>(describing:)();
  *(v55 + 96) = v56;
  *(v55 + 104) = v57;
  *(v55 + 72) = v58;
  *(v55 + 80) = v59;
  os_log(_:dso:log:_:_:)();
  swift_unknownObjectRelease();
}

uint64_t AnyToFormattedString.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int AnyToFormattedString.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance AnyToFormattedString<A>@<X0>(uint64_t *a1@<X8>)
{
  result = AnyToFormattedString.get(base:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyToFormattedString<A1>()
{
  Hasher.init(_seed:)();
  AnyToFormattedString.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TextField<>.init<A>(_:value:format:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v26 = a5;
  v27 = a1;
  v29 = a4;
  v28 = a3;
  v32 = a9;
  v16 = *(a12 - 8);
  v30 = a11;
  v31 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v19 = type metadata accessor for Binding();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v20 + 16))(&v25 - v22, a5, v19, v21);
  (*(v16 + 16))(v18, a6, a12);
  v36 = v27;
  v37 = a2;
  v38 = v28;
  v39 = v29;
  TextField.init<A>(_:format:prompt:label:)(v23, v18, v33, v34, v31, v30, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v35, v32, MEMORY[0x1E6981148], a12, MEMORY[0x1E6981138], a13);

  (*(v16 + 8))(a6, a12);
  return (*(v20 + 8))(v26, v19);
}

{
  v33 = a7;
  v34 = a8;
  v26 = a5;
  v27 = a1;
  v29 = a4;
  v28 = a3;
  v32 = a9;
  v16 = *(a12 - 8);
  v30 = a11;
  v31 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Binding();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v20 + 16))(&v25 - v22, a5, v19, v21);
  (*(v16 + 16))(v18, a6, a12);
  v36 = v27;
  v37 = a2;
  v38 = v28;
  v39 = v29;
  TextField.init<A>(_:format:prompt:label:)(v23, v18, v33, v34, v31, v30, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v35, v32, MEMORY[0x1E6981148], a12, MEMORY[0x1E6981138], a13);

  (*(v16 + 8))(a6, a12);
  return (*(v20 + 8))(v26, v19);
}

uint64_t TextField.init<A>(value:format:prompt:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v25 = a9;
  v24 = a10;
  v15 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24 - v21;
  (*(v19 + 16))(&v24 - v21, a1, v18, v20);
  (*(v15 + 16))(v17, a2, a11);
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v26, v27, v28, v29, v30, v31, v25, v24, a11, a12, a13);
  (*(v15 + 8))(a2, a11);
  return (*(v19 + 8))(a1, v18);
}

{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v25 = a9;
  v24 = a10;
  v15 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24 - v21;
  (*(v19 + 16))(&v24 - v21, a1, v18, v20);
  (*(v15 + 16))(v17, a2, a11);
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v26, v27, v28, v29, v30, v31, v25, v24, a11, a12, a13);
  (*(v15 + 8))(a2, a11);
  return (*(v19 + 8))(a1, v18);
}

uint64_t TextField<>.init<A, B>(_:value:format:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a8;
  v28 = a9;
  v31 = a6;
  v32 = a7;
  v29 = a4;
  v30 = a5;
  v25 = a2;
  v26 = a11;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  (*(v19 + 16))(&v25 - v21, a2, v18, v20);
  (*(v15 + 16))(v17, a3, a10);
  v23 = v27;
  v34 = v27;
  v35 = a10;
  v36 = v26;
  v37 = a12;
  v38 = a1;
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v29, v30, v31, v32, partial apply for closure #1 in TextField<>.init<A, B>(_:value:format:prompt:), v33, v28, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138], a12);
  (*(v15 + 8))(a3, a10);
  (*(v19 + 8))(v25, v18);
  return (*(*(v23 - 8) + 8))(a1, v23);
}

{
  v27 = a8;
  v28 = a9;
  v31 = a6;
  v32 = a7;
  v29 = a4;
  v30 = a5;
  v25 = a2;
  v26 = a11;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  (*(v19 + 16))(&v25 - v21, a2, v18, v20);
  (*(v15 + 16))(v17, a3, a10);
  v23 = v27;
  v34 = v27;
  v35 = a10;
  v36 = v26;
  v37 = a12;
  v38 = a1;
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v29, v30, v31, v32, partial apply for closure #1 in TextField<>.init<A, B>(_:value:format:prompt:), v33, v28, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138], a12);
  (*(v15 + 8))(a3, a10);
  (*(v19 + 8))(v25, v18);
  return (*(*(v23 - 8) + 8))(a1, v23);
}

uint64_t closure #1 in TextField<>.init<A, B>(_:value:format:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t TextField<>.init<A>(_:value:formatter:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a7;
  v29 = a8;
  v26 = a10;
  v27 = a6;
  v25 = a11;
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24 - v21;
  (*(v19 + 16))(&v24 - v21, a5, v18, v20);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v22, v27, v28, v29, v26, v25, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, a9, 0, 0, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v30, MEMORY[0x1E6981148], a12, MEMORY[0x1E6981138]);

  return (*(v19 + 8))(a5, v18);
}

uint64_t TextField.init<A>(value:formatter:prompt:label:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a1, v16, v18);
  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v20, v23, v24, v25, v26, v27, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, a9, 0, 0, a7, a8, a10, a11, a12);
  return (*(v17 + 8))(a1, v16);
}

uint64_t TextField<>.init<A, B>(_:value:formatter:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v24 = a6;
  v25 = a7;
  v22 = a4;
  v23 = a5;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a2, v16, v18);
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a1;
  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v20, a3, v22, v23, v24, v25, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, a9, 0, 0, partial apply for closure #2 in TextField<>.init<A, B>(_:value:formatter:prompt:), v26, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138]);
  (*(v17 + 8))(a2, v16);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t TextField<>.init<A>(_:value:formatter:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a7;
  v24 = a3;
  v27 = a9;
  v25 = a5;
  v26 = a10;
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23[-v20];
  (*(v18 + 16))(&v23[-v20], a5, v17, v19);
  v31 = a1;
  v32 = a2;
  v33 = v24;
  v34 = a4;

  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v21, v28, 0, 0, 0, 0, v29, a8, v27, v26, a11, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v30, MEMORY[0x1E6981148], a12, MEMORY[0x1E6981138]);

  return (*(v18 + 8))(v25, v17);
}

uint64_t TextField<>.init<A, B>(_:value:formatter:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v23 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a9;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a2, v16, v18);
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a1;

  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v20, v24, 0, 0, 0, 0, v25, a5, v22, v23, a7, partial apply for closure #1 in TextField<>.init<A, B>(_:value:formatter:onEditingChanged:onCommit:), v26, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138]);

  (*(v17 + 8))(a2, v16);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t closure #1 in TextField<>.init<A>(_:value:format:prompt:)@<X0>(uint64_t a1@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void type metadata accessor for Swift.AnyObject?()
{
  if (!lazy cache variable for type metadata for Swift.AnyObject?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Swift.AnyObject?);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of BinaryFloatingPoint?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t PickerContent.onHover(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, v10);
  (*(v9 + 32))(a4, v12, a3);
  v13 = (a4 + *(type metadata accessor for _OnHoverPickerContent() + 36));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t _OnHoverPickerContent._identifiedView.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v14 - v8;
  (*(v3 + 56))(v4, v3, v7);
  v10 = (v1 + *(a1 + 36));
  v11 = *v10;
  v12 = v10[1];
  swift_getAssociatedConformanceWitness();
  View.onHover(perform:)(v11, v12, AssociatedTypeWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for _OnHoverPickerContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized implicit closure #2 in TableDataSourceAdaptor.init(rowList:columnList:cellFormulas:hasMultipleSelection:sortOrder:columnCustomization:showsFirstColumnOnly:tableColumnHeadersVisibility:accessibilityEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TableColumnCollection.Entry(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  result = outlined copy of TableColumnCustomizationID.Base(*v3, v5, v6, v7, v8);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t outlined copy of TableColumnCustomizationID.Base(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t Array<A>.withResolvedOffsets.getter(uint64_t a1)
{
  type metadata accessor for (offset: Int, element: TableCellFormula)();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v26 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v29 = type metadata accessor for TableCellFormula();
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v16 = 0;
    v15 = v31;
    v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v28 = v14;
    v17 = a1 + v27;
    v26 = *(v11 + 72);
    do
    {
      v18 = *(v3 + 48);
      v19 = v30;
      outlined init with copy of TableCellFormula(v17, &v30[v18], type metadata accessor for TableCellFormula);
      *v8 = v16;
      outlined init with take of TableCellFormula(&v19[v18], v8 + *(v3 + 48), type metadata accessor for TableCellFormula);
      outlined init with copy of TableCellFormula(v8, v5, type metadata accessor for (offset: Int, element: TableCellFormula));
      outlined init with take of TableCellFormula(v5 + *(v3 + 48), v13, type metadata accessor for TableCellFormula);
      outlined init with take of TableCellFormula(v8, v5, type metadata accessor for (offset: Int, element: TableCellFormula));
      v20 = *(v3 + 48);
      v21 = &v13[*(v29 + 40)];
      *v21 = *v5;
      v21[8] = 0;
      outlined destroy of TableCellFormula(v5 + v20, type metadata accessor for TableCellFormula);
      v31 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
        v15 = v31;
      }

      ++v16;
      *(v15 + 16) = v23 + 1;
      v24 = v26;
      outlined init with take of TableCellFormula(v13, v15 + v27 + v23 * v26, type metadata accessor for TableCellFormula);
      v17 += v24;
    }

    while (v28 != v16);
  }

  return v15;
}

void type metadata accessor for (offset: Int, element: TableCellFormula)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: TableCellFormula))
  {
    type metadata accessor for TableCellFormula();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: TableCellFormula));
    }
  }
}

Swift::Bool __swiftcall TableDataSourceAdaptor.hasHeader(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = *(v1 + 40);
  if (*(v2 + 16) <= forSectionAt)
  {
LABEL_11:
    __break(1u);
    return forSectionAt;
  }

  if (*(v2 + 96 * forSectionAt + 40))
  {
    LOBYTE(forSectionAt) = 1;
  }

  else if (forSectionAt)
  {
    LOBYTE(forSectionAt) = 0;
  }

  else
  {
    LOBYTE(forSectionAt) = (*(v1 + 168) & 1) == 0 && *(v1 + 169) != 2;
  }

  return forSectionAt;
}

uint64_t TableDataSourceAdaptor.headerDisplayMode.getter()
{
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 2;
  }

  outlined init with copy of TableSections.Item(v1 + 32, v9);
  if (v10 == 1)
  {
    return 2;
  }

  v4[0] = v9[0];
  v4[1] = v9[1];
  v4[2] = v9[2];
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v2 = *&v9[0];
  outlined destroy of TableSections.Item(v4);
  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t TableDataSourceAdaptor.configureHeader(_:transaction:forSectionAt:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v3 + 40);
  if (*(v4 + 16) <= a3)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v4 + 96 * a3;
  v8 = *(v7 + 32);
  outlined init with copy of TableColumnCollection(v3 + 48, v18);
  v9 = *(v3 + 112);
  v10 = *(v3 + 120);
  v11 = *(v3 + 128);
  v12 = *(v3 + 104);
  v17[0] = v6;
  v17[1] = a2;
  v18[6] = v9;
  v18[7] = v10;
  v18[8] = v11;
  v19 = v12;
  v20 = v8 == 0;
  if (*(v7 + 40) == 1)
  {
    v13 = outlined init with copy of TableRowList(v3, v16);
    MEMORY[0x1EEE9AC00](v13);
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v9, v10);
    v14 = v6;
    outlined copy of Transaction?(a2);
    static Update.ensure<A>(_:)();
    outlined destroy of TableRowList(v16);
  }

  else
  {
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v9, v10);
    v15 = v6;
    outlined copy of Transaction?(a2);
    ViewTraitCollection.init()();
    CollectionViewTableHeaderVisitor.visitCommon(view:traits:)(0, v16);
  }

  return outlined destroy of CollectionViewTableHeaderVisitor(v17);
}

uint64_t TableDataSourceAdaptor.configureCell(_:transaction:context:)(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyHashable?(a3 + 160, &v27, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  if (*(&v28 + 1))
  {
    v20[0] = v27;
    v20[1] = v28;
    v21 = KeyPath;
    static _ViewList_ID.explicit<A>(_:)();
    v6 = v27;
    v7 = DWORD1(v27);
    if (!*(*(&v27 + 1) + 16))
    {

      outlined destroy of AnyHashable(v20);
      v8 = 0;
      goto LABEL_10;
    }

    v8 = *(*(&v27 + 1) + 32);
    v9 = *(*(&v27 + 1) + 52);

    outlined destroy of AnyHashable(v20);
  }

  else
  {
    outlined destroy of Binding<AnyTableColumnCustomization>(&v27, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v23 = *(a3 + 152);
    *&v27 = 0;
    BYTE8(v27) = 1;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    _ViewList_ID.init(implicitID:)();
    v6 = v20[0];
    v7 = DWORD1(v20[0]);
    v8 = *(*(&v20[0] + 1) + 16);

    if (!v8)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_10;
    }

    v8 = *(*(&v20[0] + 1) + 32);
    v9 = *(*(&v20[0] + 1) + 52);

    swift_bridgeObjectRelease_n();
  }

  if (v9)
  {
    v7 = -1;
  }

LABEL_10:
  v10 = *(a3 + 152);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v11 = 52.0;
  }

  else
  {
    v11 = 44.0;
  }

  *&v27 = swift_getKeyPath();
  BYTE8(v27) = 0;
  *&v28 = swift_getKeyPath();
  BYTE8(v28) = 0;
  KeyPath = swift_getKeyPath();
  v30 = 0;
  v31 = swift_getKeyPath();
  v32 = 0;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  v12 = swift_getKeyPath();
  v26 = 0;
  v36 = v12;
  v37 = 0;
  v39 = 1;
  v40 = 0;
  *&v20[0] = v10;

  ViewTraitCollection.listRowInsets.getter();
  *&v20[0] = v10;
  v23 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v25 = v10;
  v23 = 1;
  v24 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(v23);
  v13 = *&v20[0];
  v14 = BYTE8(v20[0]);
  outlined consume of ListItemTint?(1);
  v39 = v13;
  v40 = v14;
  v41 = 0;
  v42 = v11;
  v43 = v6;
  v44 = v7;
  v45 = v8;
  v46 = 1;
  v38 = 0;
  v15 = &a1[direct field offset for ListCollectionViewCellBase.viewListID];
  *v15 = 0;
  v15[1] = 0;

  v16 = direct field offset for TableCollectionViewCell.isHeader;
  v17 = a1[direct field offset for TableCollectionViewCell.isHeader];
  a1[direct field offset for TableCollectionViewCell.isHeader] = 0;
  if (v17 == 1)
  {
    [a1 setNeedsUpdateConfiguration];
    [a1 setAutomaticallyUpdatesBackgroundConfiguration_];
  }

  specialized ListCollectionViewCellBase.configureAccessories<A>(context:)(a3);
  outlined init with copy of TableRowView(a3 + 16, v20);
  outlined init with copy of CollectionViewCellModifier(&v27, &v22);
  specialized ListCollectionViewCellBase.configureContent(_:transaction:)(v20, a2);
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v20, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  *&v20[0] = *(a3 + 152);
  LOBYTE(v23) = 0;

  ViewTraitCollection.listItemBackground(kind:)(&v23);

  _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA08TableRowE0VG_Tt0g5Tm(v18, a2);

  return outlined destroy of CollectionViewCellModifier(&v27);
}

uint64_t specialized TableSections.firstIndexPath<A>(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 40);
  v13 = *(v3 + 16);
  if (v13)
  {
    v4 = result;
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      *v23 = v5;
      outlined init with copy of TableSections.Item(v6, &v23[8]);
      if (*&v23[56] == 1)
      {
        goto LABEL_10;
      }

      v12 = *v23;
      *v23 = *&v23[8];
      *&v23[16] = *&v23[24];
      *&v23[32] = *&v23[40];
      *&v23[48] = *&v23[56];
      *&v23[64] = *&v23[72];
      *&v23[80] = *&v23[88];
      v19 = v4;
      v20 = *&v23[16];
      v21 = 0;
      v22 = 0;
      v7 = outlined init with copy of AnyHashable?(&v23[24], &v14, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList);
      if (*(&v15 + 1))
      {
        v17[0] = v14;
        v17[1] = v15;
        v18 = v16;
        MEMORY[0x1EEE9AC00](v7);

        static Update.ensure<A>(_:)();
        outlined destroy of TableRowList(v17);
      }

      else
      {

        v8 = outlined destroy of Binding<AnyTableColumnCustomization>(&v14, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
        MEMORY[0x1EEE9AC00](v8);
        static Update.ensure<A>(_:)();
      }

      if (v21 == 1)
      {
        MEMORY[0x18D0006A0](v22, v12);
        outlined destroy of TableSections.Item(v23);

        v10 = type metadata accessor for IndexPath();
        return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
      }

      ++v5;
      outlined destroy of TableSections.Item(v23);

      v6 += 96;
      if (v13 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v9 = type metadata accessor for IndexPath();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  return result;
}

uint64_t TableDataSourceAdaptor.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v11 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewList_ID.Canonical, @inout Bool) -> ();
  v12 = v6;
  v13 = 0;
  outlined init with copy of TableRowList(v3, v10);

  static Update.ensure<A>(_:)();
  outlined destroy of TableRowList(v10);
  v7 = v13;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7 ^ 1u;
  }

  __break(1u);
  return result;
}

unint64_t TableDataSourceAdaptor.contextForItem(index:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = result;
  v6 = *(v3 + 40);
  if (*(v6 + 16) <= result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = v6 + 32;
  v9 = v6 + 32 + 96 * result;
  result = outlined init with copy of TableSections.Item(v9, v38);
  v10 = *(v3 + 170);
  if (v10 == 1)
  {
    v11 = *(v9 + 80);
    v12 = *(v9 + 88);
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v14 < a2 || v11 > a2 || v14 < v11)
    {
      goto LABEL_33;
    }

    v13 = __OFSUB__(a2, v11);
    v17 = a2 - v11;
    if (v13)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v18 = (*(v3 + 169) != 2) & ~*(v3 + 168);
    v13 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (v13)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v27 = a3;
    if (v4)
    {
      v26 = v19;

      v20 = 0;
      v21 = v4;
      while (1)
      {
        outlined init with copy of TableSections.Item(v8, v33);
        v22 = v34;
        result = outlined destroy of TableSections.Item(v33);
        v13 = __OFADD__(v20, v22);
        v20 += v22;
        if (v13)
        {
          break;
        }

        v8 += 96;
        if (!--v21)
        {

          v19 = v26 + v20;
          if (!__OFADD__(v26, v20))
          {
            goto LABEL_19;
          }

          __break(1u);
          break;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_19:
    a3 = v27;
  }

  else
  {
    v19 = 0;
  }

  memset(v36, 0, 203);
  v23 = *(v3 + 96);
  v33[0] = v4;
  v33[1] = a2;
  v34 = v19;
  v35 = v10 ^ 1;
  v37 = v23;
  v24 = outlined init with copy of AnyHashable?(&v39, &v28, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList);
  if (*(&v29 + 1))
  {
    v31[0] = v28;
    v31[1] = v29;
    v32 = v30;
    MEMORY[0x1EEE9AC00](v24);
  }

  else
  {

    outlined destroy of Binding<AnyTableColumnCustomization>(&v28, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
    v25 = outlined init with copy of TableRowList(v3, v31);
    MEMORY[0x1EEE9AC00](v25);
  }

  static Update.ensure<A>(_:)();
  outlined destroy of TableSections.Item(v38);
  outlined destroy of TableRowList(v31);
  outlined init with copy of TableCellFormula(v36, a3, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?);
  result = outlined destroy of TableContentVisitor<TableDataSourceAdaptor>(v33);
  if (*(a3 + 144))
  {
    *(a3 + 200) = *(v3 + 104);
  }

  return result;
}

uint64_t protocol witness for CollectionViewListDataSourceBase.style.getter in conformance TableDataSourceAdaptor@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 168);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69DC248];
  if (!v3)
  {
    v6 = MEMORY[0x1E69DC240];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t protocol witness for ListCoreDataSource.firstIndexPath(viewListID:) in conformance TableDataSourceAdaptor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {

    specialized TableSections.firstIndexPath<A>(for:)(v3, a2);
  }

  else
  {
    v5 = type metadata accessor for IndexPath();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t protocol witness for ListCoreDataSource.separatorConfiguration(forRowAt:) in conformance TableDataSourceAdaptor(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for ListDiffable.sectionIDs.getter in conformance TableDataSourceAdaptor@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);
  a1[1] = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
  a1[2] = 0;
}

unint64_t *protocol witness for ListDiffable.rowIDs(forSectionAt:) in conformance TableDataSourceAdaptor@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 40);
    if (v3 < *(v4 + 16))
    {
      v5 = v4 + 96 * v3;
      v6 = *(v5 + 96);
      v7 = *(v5 + 104);
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = *(v5 + 112);
      return outlined copy of ResolvedTableRowIDs.Storage(v6, v7);
    }
  }

  __break(1u);
  return result;
}

void _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0d5TableE4CellC_Tt0g5Tm(uint64_t a1, uint64_t a2, void (*a3)(double), void (*a4)(void), void (*a5)(char *))
{
  v9 = v5;
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  if (!a1)
  {
    specialized PlatformListViewBase<>.backgroundHost.setter(0, a4, a5);
    return;
  }

  v39 = a3;
  a3(v16);
  v19 = type metadata accessor for UIBackgroundConfiguration();
  v20 = (*(v19 - 8) + 48);
  v38 = *v20;
  if (v38(v18, 1, v19))
  {
    outlined destroy of UIBackgroundConfiguration?(v18, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_4:
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
    v22 = objc_allocWithZone(v21);

    v24 = specialized _UIHostingView.init(rootView:)(v23);
    UIHostingViewBase.isHiddenForReuse.setter();
    v25 = v24;
    specialized PlatformListViewBase<>.backgroundHost.setter(v24, a4, a5);

    goto LABEL_5;
  }

  v30 = UIBackgroundConfiguration.customView.getter();
  v31 = v18;
  v32 = v30;
  outlined destroy of UIBackgroundConfiguration?(v31, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v32)
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
  v37 = v33;
  v34 = swift_dynamicCastClass();
  if (!v34)
  {

    goto LABEL_4;
  }

  v35 = v34;
  if (a2 == 1)
  {
    v36 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x60);
    swift_beginAccess();
    *(v35 + v36) = a1;

    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  else
  {

    specialized _UIHostingView.setRootView(_:transaction:)(a1);

    outlined consume of ListItemTint?(a2);
  }

LABEL_5:
  v39();
  if (v38(v14, 1, v19))
  {
    outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
    goto LABEL_20;
  }

  v20 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v20)
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

  v26 = _s7SwiftUI14_UIHostingViewC2asyqd__Sgqd__mlFAA15ModifiedContentVyAA03AnyD0VAA13EmptyModifierVG_AA23ContainerBackgroundHost_pTt0g5();
  v28 = v27;

  if (v26)
  {
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(32, 1, ObjectType, v28);
    swift_unknownObjectRelease();
  }

  [v9 setBackgroundColor_];
}

uint64_t specialized ListCollectionViewCellBase.configureAccessories<A>(context:)(uint64_t a1)
{
  v2 = type metadata accessor for UICellAccessory.ReorderOptions();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = (&v68 - v5);
  v6 = type metadata accessor for UICellAccessory.DeleteOptions();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v68 - v9);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UICellAccessory.LayoutDimension?, MEMORY[0x1E69DBF38]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v68 - v12;
  v13 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v84 = type metadata accessor for UICellAccessory();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v74 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v81 = &v68 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v68 - v34;
  specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(v88, 1, v33);
  v36 = v88[3];
  outlined destroy of Binding<AnyTableColumnCustomization>(v88, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  if (v36)
  {
    v70 = a1;
    if (*(a1 + 200) == 1)
    {
      (*(v18 + 104))(v28, *MEMORY[0x1E69DBF18], v17);
      v37 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v37 - 8) + 56))(v83, 1, 1, v37);
      UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
      static UICellAccessory.multiselect(displayed:options:)();
      v38 = v16;
      v39 = v17;
      (*(v14 + 8))(v38, v13);
      (*(v18 + 8))(v28, v17);
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v40);
      }

      a1 = v70;
      v40[2] = v42 + 1;
      (*(v82 + 32))(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v42, v35, v84);
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
      v39 = v17;
      a1 = v70;
    }
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
    v39 = v17;
  }

  v43 = *(a1 + 152);
  v88[0] = v43;
  ViewTraitCollection.deleteInteraction.getter(v10);
  v44 = type metadata accessor for DeleteInteraction();
  if ((*(*(v44 - 8) + 48))(v10, 1, v44) == 1)
  {
    outlined destroy of UIBackgroundConfiguration?(v10, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
LABEL_12:
    v46 = *(a1 + 201);
    if (!*(a1 + 201))
    {
      goto LABEL_25;
    }

    v88[0] = v43;
    v86 = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if ((v87 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v45 = *(v10 + *(v44 + 24));
  outlined destroy of TableCellFormula(v10, type metadata accessor for DeleteInteraction);
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = *(a1 + 201);
LABEL_14:
  if (v46 > 2)
  {
    if (v46 != 3)
    {
      goto LABEL_25;
    }

    v47 = MEMORY[0x1E69DBF28];
  }

  else
  {
    v47 = MEMORY[0x1E69DBF20];
    if (v46 < 2)
    {
      v47 = MEMORY[0x1E69DBF18];
    }
  }

  v48 = v76;
  (*(v18 + 104))(v76, *v47, v39);
  v49 = v77;
  (*(v18 + 32))(v77, v48, v39);
  v50 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v50 - 8) + 56))(v83, 1, 1, v50);
  v51 = v78;
  UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.delete(displayed:options:actionHandler:)();
  (*(v79 + 8))(v51, v80);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
  }

  v53 = v40[2];
  v52 = v40[3];
  if (v53 >= v52 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v40);
  }

  (*(v18 + 8))(v49, v39);
  v40[2] = v53 + 1;
  (*(v82 + 32))(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v53, v81, v84);
  v43 = *(a1 + 152);
LABEL_25:
  v88[0] = v43;
  v54 = v85;
  ViewTraitCollection.moveInteraction.getter(v85);
  v55 = type metadata accessor for MoveInteraction();
  if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
  {
    outlined destroy of UIBackgroundConfiguration?(v54, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  }

  else
  {
    v56 = *v54;
    outlined destroy of TableCellFormula(v54, type metadata accessor for MoveInteraction);
    if (v56)
    {
      v57 = *(a1 + 202);
      v58 = v57 >= 2;
      if (v57 > 2)
      {
        v61 = v74;
        v60 = v75;
        if (v57 != 3)
        {
          return UICollectionViewListCell.accessories.setter();
        }

        v59 = MEMORY[0x1E69DBF28];
      }

      else
      {
        v59 = MEMORY[0x1E69DBF20];
        if (!v58)
        {
          v59 = MEMORY[0x1E69DBF18];
        }

        v61 = v74;
        v60 = v75;
      }

      v62 = v69;
      (*(v18 + 104))(v69, *v59, v39);
      (*(v18 + 32))(v60, v62, v39);
      v63 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
      v64 = v71;
      UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
      static UICellAccessory.reorder(displayed:options:)();
      (*(v72 + 8))(v64, v73);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
      }

      v66 = v40[2];
      v65 = v40[3];
      if (v66 >= v65 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v40);
      }

      (*(v18 + 8))(v60, v39);
      v40[2] = v66 + 1;
      (*(v82 + 32))(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v66, v61, v84);
    }
  }

  return UICollectionViewListCell.accessories.setter();
}

void specialized PlatformListViewBase<>.backgroundHost.setter(void *a1, void (*a2)(void), void (*a3)(char *))
{
  v21 = a3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = a1;
  a2();
  if ((*(v6 + 48))(v14, 1, v5))
  {
    outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_3:
    v16 = 0;
    goto LABEL_4;
  }

  v19 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v19)
  {
    goto LABEL_3;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
  }

LABEL_4:
  if (a1)
  {

    if (v16 && (swift_unknownObjectRelease(), v16 == a1))
    {
    }

    else
    {
      v17 = v15;
      UIHostingViewBase.isHiddenForReuse.setter();
      static UIBackgroundConfiguration.clear()();
      v18 = v17;
      UIBackgroundConfiguration.customView.setter();
      (*(v6 + 16))(v11, v8, v5);
      (*(v6 + 56))(v11, 0, 1, v5);
      v21(v11);

      (*(v6 + 8))(v8, v5);
    }
  }

  else if (v16)
  {
    swift_unknownObjectRelease();
    static UIBackgroundConfiguration.listCell()();
    (*(v6 + 56))(v11, 0, 1, v5);
    v21(v11);
  }
}

uint64_t specialized closure #1 in _UIHostingView.setRootView(_:transaction:)()
{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = result;
    UIHostingViewBase.viewGraph.getter();

    v3 = *((*v1 & *v2) + 0x60);
    swift_beginAccess();
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v2 + v3, v4, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    AGGraphSetValue();

    return outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v4, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  }

  return result;
}

{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = result;
    UIHostingViewBase.viewGraph.getter();

    v3 = *((*v1 & *v2) + 0x60);
    swift_beginAccess();
    v4 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v2 + v3, v5, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v4, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    AGGraphSetValue();

    return outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v5, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v4, &type metadata for CollectionViewCellModifier);
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = result;
    UIHostingViewBase.viewGraph.getter();

    v3 = *((*v1 & *v2) + 0x60);
    swift_beginAccess();
    outlined init with copy of TabItem.RootView(v2 + v3, v4);
    AGGraphSetValue();

    return outlined destroy of TabItem.RootView(v4);
  }

  return result;
}

{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = result;
    UIHostingViewBase.viewGraph.getter();

    v3 = *((*v1 & *v2) + 0x60);
    swift_beginAccess();
    v4 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v2 + v3, v5, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v4, &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    AGGraphSetValue();

    return outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v5, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v4, &type metadata for ListTableCellModifier);
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = result;
    UIHostingViewBase.viewGraph.getter();

    v3 = *((*v1 & *v2) + 0x60);
    swift_beginAccess();
    outlined init with copy of BridgedNavigationView.RootView(v2 + v3, v4);
    AGGraphSetValue();

    return outlined destroy of BridgedNavigationView.RootView(v4);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.uiKitCellState : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.uiKitCellState : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues.headerProminence : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.headerProminence.getter();
  *a1 = v3;
  return result;
}

double key path getter for EnvironmentValues.prominentHeaderStyling : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey);
    PropertyList.subscript.getter();
  }

  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.prominentHeaderStyling : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v17 = *(a1 + 32);
  v18 = v3;
  v5 = *(a1 + 48);
  v19 = *(a1 + 64);
  v6 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v6;
  v11 = v4;
  v12 = v17;
  v7 = *(a1 + 64);
  v13 = v5;
  v14 = v7;
  v20 = *(a1 + 80);
  v15 = *(a1 + 80);
  v10 = v16[0];
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);

  outlined init with copy of ListContentStyling(v16, v9);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t outlined init with copy of TableCellFormula(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TableCellFormula(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Binding<AnyTableColumnCustomization>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for TableRowList?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)()
{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?()
{
  if (!lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?)
  {
    type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor()
{
  result = lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
  if (!lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
  if (!lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
  if (!lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor);
  }

  return result;
}

uint64_t outlined destroy of TableContentVisitor<TableDataSourceAdaptor>(uint64_t a1)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(0, &lazy cache variable for type metadata for TableContentVisitor<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for TableContentVisitor);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>()
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for UIHostingConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
    lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type TableRowView and conformance TableRowView();
    lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableRowView and conformance TableRowView()
{
  result = lazy protocol witness table cache variable for type TableRowView and conformance TableRowView;
  if (!lazy protocol witness table cache variable for type TableRowView and conformance TableRowView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowView and conformance TableRowView);
  }

  return result;
}

uint64_t outlined destroy of TableCellFormula(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:)()
{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)();
}

uint64_t outlined copy of Binding<[SwiftUIAnySortComparator]>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void specialized TableDataSourceAdaptor.configureGlobalHeader(_:transaction:)(void *a1)
{
  type metadata accessor for TableGlobalHeader();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    [v4 setAutomaticallyUpdatesContentConfiguration_];
    v6 = *(v1 + 112);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    outlined init with copy of TableColumnCollection(v1 + 48, v13);
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v6, v7);
    v9 = TableDataSourceAdaptor.headerDisplayMode.getter();
    v10 = *(v1 + 104);
    v12[0] = v6;
    v12[1] = v7;
    v12[2] = v8;
    v13[41] = v9;
    v13[42] = v10;
    v11 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(v12, v4 + v11);
    swift_endAccess();
    [v4 setNeedsUpdateConfiguration];
  }
}

uint64_t outlined assign with take of TableHeaderView?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TableRowList?(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t destroy for TableDataSourceAdaptor(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (*(a1 + 88))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 48);
  }

  if (*(a1 + 120))
  {
  }

  if (*(a1 + 144))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TableDataSourceAdaptor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 88);

  if (v5)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 72) = v6;
    (**(v6 - 8))(a1 + 48, a2 + 48);
  }

  *(a1 + 88) = v5;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v7 = *(a2 + 120);

  if (!v7)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    v8 = *(a2 + 144);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_9;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;
  *(a1 + 128) = *(a2 + 128);

  v8 = *(a2 + 144);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v8;
  v9 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v9;

LABEL_9:
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  return a1;
}

uint64_t assignWithCopy for TableDataSourceAdaptor(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  if (a1 != a2)
  {
    outlined destroy of TableColumnCollection.Backing(a1 + 48);
    if (*(a2 + 88))
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 88) = 1;
    }

    else
    {
      v4 = *(a2 + 72);
      *(a1 + 72) = v4;
      *(a1 + 80) = *(a2 + 80);
      (**(v4 - 8))(a1 + 48, a2 + 48);
      *(a1 + 88) = 0;
    }
  }

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (v5)
    {
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);

      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      outlined destroy of TableCellFormula(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      v6 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v6;
    }
  }

  else if (v5)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v7;
  }

  v8 = *(a2 + 144);
  if (*(a1 + 144))
  {
    if (v8)
    {
      *(a1 + 136) = *(a2 + 136);

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);

      *(a1 + 160) = *(a2 + 160);
    }

    else
    {
      outlined destroy of Binding<AnyTableColumnCustomization>(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
      v9 = *(a2 + 152);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = v9;
    }
  }

  else if (v8)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 170) = *(a2 + 170);
  return a1;
}

void type metadata accessor for Binding<[SwiftUIAnySortComparator]>()
{
  if (!lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>)
  {
    type metadata accessor for TableRowList?(255, &lazy cache variable for type metadata for [SwiftUIAnySortComparator], &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>);
    }
  }
}

__n128 __swift_memcpy171_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for TableDataSourceAdaptor(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  if (a1 != a2)
  {
    outlined destroy of TableColumnCollection.Backing(a1 + 48);
    v6 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v6;
    *(a1 + 73) = *(a2 + 73);
  }

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  if (*(a1 + 120))
  {
    if (*(a2 + 120))
    {
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);

      *(a1 + 128) = *(a2 + 128);

      if (!*(a1 + 144))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    outlined destroy of TableCellFormula(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  if (!*(a1 + 144))
  {
LABEL_12:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_13;
  }

LABEL_9:
  if (!*(a2 + 144))
  {
    outlined destroy of Binding<AnyTableColumnCustomization>(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
    goto LABEL_12;
  }

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

LABEL_13:
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 170) = *(a2 + 170);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableDataSourceAdaptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 171))
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

uint64_t storeEnumTagSinglePayload for TableDataSourceAdaptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 170) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 171) = 1;
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

    *(result + 171) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs()
{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>)
  {
    type metadata accessor for LazyMapSequence<[TableSections.Item], Int>();
    lazy protocol witness table accessor for type [TableSections.Item] and conformance [A](&lazy protocol witness table cache variable for type [TableSections.Item] and conformance [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

void type metadata accessor for LazyMapSequence<[TableSections.Item], Int>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[TableSections.Item], Int>)
  {
    type metadata accessor for TableRowList?(255, &lazy cache variable for type metadata for [TableSections.Item], &type metadata for TableSections.Item, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [TableSections.Item] and conformance [A](&lazy protocol witness table cache variable for type [TableSections.Item] and conformance [A]);
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<[TableSections.Item], Int>);
    }
  }
}

void type metadata accessor for TableRowList?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type [TableSections.Item] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableRowList?(255, &lazy cache variable for type metadata for [TableSections.Item], &type metadata for TableSections.Item, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableRowID and conformance TableRowID()
{
  result = lazy protocol witness table cache variable for type TableRowID and conformance TableRowID;
  if (!lazy protocol witness table cache variable for type TableRowID and conformance TableRowID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowID and conformance TableRowID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableRowID and conformance TableRowID;
  if (!lazy protocol witness table cache variable for type TableRowID and conformance TableRowID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowID and conformance TableRowID);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TableDataSourceAdaptor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier()
{
  result = lazy protocol witness table cache variable for type ListTableCellModifier and conformance ListTableCellModifier;
  if (!lazy protocol witness table cache variable for type ListTableCellModifier and conformance ListTableCellModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListTableCellModifier and conformance ListTableCellModifier);
  }

  return result;
}

void type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t closure #1 in TableRowList.visitRows<A>(applying:from:)specialized partial apply()
{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SceneRestorationBehavior.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneRestorationBehavior.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t Scene.restorationBehavior(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.restorationBehavior(_:), v4, a2);
}

uint64_t closure #1 in Scene.restorationBehavior(_:)(uint64_t result, char a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 == 1)
    {
      v6 = 0;
    }

    else
    {
      v7 = (v2 + 569);
      v6 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v3 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *v7 = a2;
        v7[568] = a2;
        v7 += 1136;
        v8 -= 2;
      }

      while (v8);
      if (v3 == v6)
      {
        goto LABEL_12;
      }
    }

    v9 = v3 - v6;
    v10 = (v2 + 568 * v6 + 569);
    do
    {
      *v10 = a2;
      v10 += 568;
      --v9;
    }

    while (v9);
LABEL_12:
    *v5 = v2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role;
  if (!lazy protocol witness table cache variable for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role);
  }

  return result;
}

uint64_t destroy for TableHeaderView(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }
}

uint64_t initializeWithCopy for TableHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v5 = *(a2 + 64);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(a2 + 48);
    *(a1 + 48) = v6;
    (**(v6 - 8))(a1 + 24, a2 + 24);
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 64);
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 24) = *(a2 + 24);

LABEL_6:
  *(a1 + 64) = v5;
  *(a1 + 65) = *(a2 + 65);
  return a1;
}

uint64_t assignWithCopy for TableHeaderView(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 1);

      *(a1 + 16) = *(a2 + 2);

      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      v5 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 16) = v5;
      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 16) = *(a2 + 2);

    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of TableColumnCollection.Backing(a1 + 24);
  if (a2[4])
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 64) = 1;
  }

  else
  {
    v7 = *(a2 + 6);
    *(a1 + 48) = v7;
    *(a1 + 56) = *(a2 + 7);
    (**(v7 - 8))(a1 + 24, a2 + 24);
    *(a1 + 64) = 0;
  }

LABEL_14:
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  return a1;
}