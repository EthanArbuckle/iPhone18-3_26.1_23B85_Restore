uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x18D0110E0);
  }

  return result;
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata accessor for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for [TableColumnCustomizationID](255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for PartialKeyPath<UISplitViewController>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t destroy for TableColumnCustomizationID.TransientHint()
{
}

void *initializeWithCopy for TableColumnCustomizationID.TransientHint(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TableColumnCustomizationID.TransientHint(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for TableColumnCustomizationID.TransientHint(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t initializeWithCopy for TableColumnCustomizationID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of TableColumnCustomizationID.Base(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for TableColumnCustomizationID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of TableColumnCustomizationID.Base(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  outlined consume of TableColumnCustomizationID.Base(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for TableColumnCustomizationID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  outlined consume of TableColumnCustomizationID.Base(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnCustomizationID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TableColumnCustomizationID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for OutsetByRowInsets(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v11;
  *(a1 + 64) = v5;
  outlined consume of Environment<EdgeInsets>.Content(v6, v7, v8, v9, v10);
  v12 = *(a2 + 80);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v12;
  outlined consume of Environment<Bool>.Content(v13, v14);
  v15 = *(a2 + 136);
  v16 = *(a2 + 144);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  v22 = *(a1 + 128);
  v23 = *(a1 + 136);
  v24 = *(a1 + 144);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v15;
  *(a1 + 144) = v16;
  outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(v17, v18, v19, v20, v21, v22, v23, v24);
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

uint64_t getEnumTagSinglePayload for OutsetByRowInsets(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 146))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OutsetByRowInsets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutsetByRowInsets and conformance OutsetByRowInsets()
{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets and conformance OutsetByRowInsets;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets and conformance OutsetByRowInsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets and conformance OutsetByRowInsets);
  }

  return result;
}

float64x2_t OutsetByRowInsets.body(content:)@<Q0>(uint64_t a1@<X8>)
{
  v25 = *(v1 + 16);
  v26 = *v1;
  v3 = *(v1 + 48);
  v30 = *(v1 + 32);
  v31 = v3;
  v32 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 104);
  v33 = *(v1 + 88);
  v34 = v6;
  v35[0] = *(v1 + 120);
  *(v35 + 9) = *(v1 + 129);
  v7 = *(v1 + 145);
  v8 = specialized Environment.wrappedValue.getter(v4, v5);
  specialized Environment.wrappedValue.getter(&v27);
  if (v29 >> 1 != 4294967294)
  {
    outlined consume of ResolvedSubviewsSizingOptions(v27, v28, v29);
    static EdgeInsets.zero.getter();
    v10.f64[1] = v9;
    v12.f64[1] = v11;
    v25 = v10;
    v26 = v12;
  }

  specialized Environment.wrappedValue.getter(&v27);
  if (v29 >> 1 == 4294967294)
  {
    v13 = specialized Environment.wrappedValue.getter();
  }

  else
  {
    outlined consume of ResolvedSubviewsSizingOptions(v27, v28, v29);
    static EdgeInsets.zero.getter();
  }

  v21 = v14;
  v22 = v13;
  v23 = v16;
  v24 = v15;
  EdgeInsets.vertical.getter();
  *a1 = v7;
  *(a1 + 8) = v8 - v17;
  v18.f64[0] = v22;
  v18.f64[1] = v21;
  v19.f64[0] = v24;
  v19.f64[1] = v23;
  result = vsubq_f64(v19, vbslq_s8(vcgtq_f64(v19, v25), v25, v19));
  *(a1 + 16) = vsubq_f64(v18, vbslq_s8(vcgtq_f64(v18, v26), v26, v18));
  *(a1 + 32) = result;
  return result;
}

uint64_t OutsetByRowInsets.OutsetLayout.sizeThatFits(in:context:child:)()
{
  v1 = *v0;
  if (*v0)
  {
    EdgeInsets.negatedInsets.getter();
    static Edge.Set.vertical.getter();
    EdgeInsets.in(_:)();
    _ProposedSize.inset(by:)();
  }

  result = LayoutProxy.size(in:)();
  if (v1)
  {
    v4 = v3 - v0[1];
    if (v4 > 0.0)
    {
      result = EdgeInsets.vertical.getter();
      if (v5 >= v4)
      {
        static Edge.Set.vertical.getter();
        EdgeInsets.in(_:)();

        return CGSize.inset(by:)();
      }
    }
  }

  return result;
}

uint64_t OutsetByRowInsets.OutsetLayout.placement(of:in:)()
{
  PlacementContext.proposedSize.getter();
  PlacementContext.size.getter();
  v1 = *v0;
  if (*v0)
  {
    EdgeInsets.negatedInsets.getter();
    static Edge.Set.vertical.getter();
    EdgeInsets.in(_:)();
    _ProposedSize.inset(by:)();
  }

  LayoutProxy.size(in:)();
  if ((v1 & 1) != 0 && (v3 = v2 - v0[1], v3 > 0.0) && (EdgeInsets.vertical.getter(), v4 >= v3))
  {
    static UnitPoint.topTrailing.getter();
    return _Placement.init(proposedSize:anchoring:at:)();
  }

  else
  {
    static UnitPoint.topTrailing.getter();
    return _Placement.init(proposedSize:aligning:in:)();
  }
}

uint64_t OutsetByRowInsets.OutsetLayout.spacing(in:child:)()
{
  if (LayoutProxy.requiresSpacingProjection.getter())
  {
    return LayoutProxy.spacing()();
  }

  LayoutProxy.spacing()();
  static AbsoluteEdge.Set.vertical.getter();
  return Spacing.reset(_:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance OutsetByRowInsets.OutsetLayout(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v9;
  v13[4] = *(a2 + 64);
  v14 = *(a2 + 80);
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v15 = v8;
  v11 = lazy protocol witness table accessor for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout();
  return (*(v11 + 80))(&v15, v13, a3, a4, a5, v11);
}

uint64_t getEnumTagSinglePayload for OutsetByRowInsets.OutsetLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
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

uint64_t storeEnumTagSinglePayload for OutsetByRowInsets.OutsetLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>();
    lazy protocol witness table accessor for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>)
  {
    type metadata accessor for _ViewModifier_Content<OutsetByRowInsets>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<OutsetByRowInsets>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OutsetByRowInsets>)
  {
    lazy protocol witness table accessor for type OutsetByRowInsets and conformance OutsetByRowInsets();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<OutsetByRowInsets>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OutsetByRowInsets>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout()
{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

uint64_t type metadata accessor for FocusEventProxyResponder()
{
  result = type metadata singleton initialization cache for FocusEventProxyResponder;
  if (!type metadata singleton initialization cache for FocusEventProxyResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FocusEventProxyResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD69590;
    *(v4 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t FocusEventProxyResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter()
{
  result = lazy protocol witness table cache variable for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter;
  if (!lazy protocol witness table cache variable for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter);
  }

  return result;
}

uint64_t assignWithCopy for FocusEventProxyResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t CustomProgressView.init(interval:countdown:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for CustomProgressView();
  v14 = v13[13];
  (*(*(a5 - 8) + 56))(a7 + v14, 1, 1, a5);
  v15 = v13[14];
  (*(*(a6 - 8) + 56))(a7 + v15, 1, 1, a6);
  v16 = v13[15];
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
  v18 = *(v17 + 48);
  _sSNy10Foundation4DateVGWObTm_0(a1, a7, type metadata accessor for ClosedRange<Date>);
  *(a7 + v18) = a2;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 40))(a7 + v14, a3, v19);
  v20 = type metadata accessor for Optional();
  result = (*(*(v20 - 8) + 40))(a7 + v15, a4, v20);
  *(a7 + v16) = 0;
  return result;
}

uint64_t CustomProgressView.init<A>(interval:countdown:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v35 = a4;
  v36 = a5;
  v37 = a3;
  HIDWORD(v32) = a2;
  v33 = a1;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v38 = a6;
  v39 = a7;
  v40 = a9;
  v41 = a10;
  v18 = type metadata accessor for CustomProgressView();
  v19 = v18[13];
  (*(*(a6 - 8) + 56))(a8 + v19, 1, 1, a6);
  v20 = v18[14];
  (*(*(a7 - 8) + 56))(a8 + v20, 1, 1, a7);
  v34 = v18[15];
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
  v22 = *(v21 + 48);
  outlined init with copy of ProgressViewValue(a1, a8, type metadata accessor for ClosedRange<Date>);
  *(a8 + v22) = BYTE4(v32);
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  (*(v24 + 24))(a8 + v19, v37, v23);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = a8 + v20;
  v28 = v35;
  (*(v26 + 24))(v27, v35, v25);
  v29 = v36;
  (*(v15 + 16))(v17, v36, v14);
  swift_getWitnessTable();
  v30 = AnyView.init<A>(_:)();
  (*(v15 + 8))(v29, v14);
  (*(v26 + 8))(v28, v25);
  (*(v24 + 8))(v37, v23);
  result = _sSNy10Foundation4DateVGWOhTm_1(v33, type metadata accessor for ClosedRange<Date>);
  *(a8 + v34) = v30;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressViewValue.AbsoluteCodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressViewValue.AbsoluteCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000018CD438C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018CD438E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressViewValue.AbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressViewValue.AbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressViewValue.CodingKeys()
{
  if (*v0)
  {
    return 0x616C655265746164;
  }

  else
  {
    return 0x6574756C6F736261;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressViewValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616C655265746164 && a2 == 0xEC00000065766974)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressViewValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressViewValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressViewValue.DateRelativeCodingKeys()
{
  if (*v0)
  {
    return 0x776F64746E756F63;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressViewValue.DateRelativeCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressViewValue.DateRelativeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressViewValue.DateRelativeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProgressViewValue.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, MEMORY[0x1E69E6F58]);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - v4;
  type metadata accessor for ClosedRange<Date>();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ProgressViewValue.AbsoluteCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v2);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ProgressViewValue.CodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys, &unk_1EFFAA528, v2);
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of ProgressViewValue(v31, v12, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v17 = v26;
    _sSNy10Foundation4DateVGWObTm_0(v12, v26, type metadata accessor for ClosedRange<Date>);
    v39 = 1;
    lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();
    v18 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = 0;
    lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date);
    v19 = v30;
    v20 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v20)
    {
      v37 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v29 + 8))(v18, v19);
    _sSNy10Foundation4DateVGWOhTm_1(v17, type metadata accessor for ClosedRange<Date>);
  }

  else
  {
    v36 = 0;
    lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = 0;
    v21 = v25;
    v22 = v32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    if (!v22)
    {
      v34 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v24 + 8))(v9, v21);
  }

  return (*(v33 + 8))(v16, v14);
}

unint64_t lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys()
{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

uint64_t ProgressViewValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ProgressViewValue.DateRelativeCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, MEMORY[0x1E69E6F48]);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v54 - v5;
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ProgressViewValue.AbsoluteCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v3);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v54 - v7;
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ProgressViewValue.CodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys, &unk_1EFFAA528, v3);
  v9 = v8;
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - v10;
  v12 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();
  v22 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v56 = v17;
  v57 = v14;
  v24 = v62;
  v23 = v63;
  v66 = v12;
  v25 = v64;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v68 = v26;
  v69 = v26 + 32;
  v70 = 0;
  v71 = v27;
  v28 = specialized Collection<>.popFirst()();
  if (v28 == 2 || v70 != v71 >> 1)
  {
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v34 = v66;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v65 + 8))(v11, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  if (v28)
  {
    v72 = 1;
    lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v25;
    v30 = v20;
    type metadata accessor for ClosedRange<Date>();
    v72 = 0;
    lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date);
    v31 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v72 = 1;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v23;
    v55 = 0;
    v42 = v60;
    v46 = v40;
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v47 = v42;
    v49 = *(v48 + 48);
    (*(v47 + 8))(v41, v31);
    (*(v65 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v50 = v46 & 1;
    v51 = v57;
    v57[v49] = v50;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v72 = 0;
    lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();
    v36 = v24;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v25;
    v30 = v20;
    v72 = 0;
    v37 = v59;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v65;
    LODWORD(v63) = v43;
    v44 = v38;
    v72 = 1;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v55 = 0;
    v52 = v45;
    (*(v58 + 8))(v36, v37);
    (*(v39 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v53 = v56;
    *v56 = v44;
    *(v53 + 8) = v63 & 1;
    *(v53 + 9) = v52 & 1;
    swift_storeEnumTagMultiPayload();
    v51 = v53;
  }

  _sSNy10Foundation4DateVGWObTm_0(v51, v30, type metadata accessor for ProgressViewValue);
  _sSNy10Foundation4DateVGWObTm_0(v30, v29, type metadata accessor for ProgressViewValue);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

void type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for CustomProgressView();
  v16 = v15[13];
  (*(*(a6 - 8) + 56))(a8 + v16, 1, 1, a6);
  v17 = v15[14];
  (*(*(a7 - 8) + 56))(a8 + v17, 1, 1, a7);
  v18 = v15[15];
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 9) = a3;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 40))(a8 + v16, a4, v19);
  v20 = type metadata accessor for Optional();
  result = (*(*(v20 - 8) + 40))(a8 + v17, a5, v20);
  *(a8 + v18) = 0;
  return result;
}

uint64_t CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a6;
  v38 = a5;
  v39 = a4;
  v34 = a2;
  v35 = a3;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v40 = a7;
  v41 = a8;
  v42 = a11;
  v43 = a12;
  v20 = type metadata accessor for CustomProgressView();
  v21 = v20[13];
  (*(*(a7 - 8) + 56))(a9 + v21, 1, 1, a7);
  v22 = v20[14];
  (*(*(a8 - 8) + 56))(a9 + v22, 1, 1, a8);
  v36 = v20[15];
  *a9 = a1;
  *(a9 + 8) = v34 & 1;
  *(a9 + 9) = v35;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  (*(v24 + 24))(a9 + v21, v39, v23);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = a9 + v22;
  v28 = v38;
  (*(v26 + 24))(v27, v38, v25);
  v29 = v19;
  v30 = v37;
  (*(v17 + 16))(v29, v37, v16);
  swift_getWitnessTable();
  v31 = AnyView.init<A>(_:)();
  (*(v17 + 8))(v30, v16);
  (*(v26 + 8))(v28, v25);
  result = (*(v24 + 8))(v39, v23);
  *(a9 + v36) = v31;
  return result;
}

uint64_t implicit closure #1 in static CustomProgressView._makeView(view:inputs:)(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v70 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 48);
  v58 = *(a3 + 32);
  v59 = v13;
  v60 = *(a3 + 64);
  LODWORD(v61) = *(a3 + 80);
  v14 = *(a3 + 16);
  v56 = *a3;
  v57 = v14;
  type metadata accessor for Optional();
  v55 = v9;
  swift_getWitnessTable();
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a2, &v56, &v63);
  v15 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage();
  v44 = v15;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(a3, &v56);
  type metadata accessor for Attribute<WidgetAuxiliaryTextImagePreference?>();
  v17 = v16;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v63, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11, v43, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v18);
  v60 = v67;
  v61 = v68;
  v62 = v69;
  v56 = v63;
  v57 = v64;
  v58 = v65;
  v59 = v66;
  (*(*(v15 - 8) + 8))(&v56, v15);
  LODWORD(v9) = v47;
  v19 = *(a3 + 48);
  v65 = *(a3 + 32);
  v66 = v19;
  v67 = *(a3 + 64);
  LODWORD(v68) = *(a3 + 80);
  v20 = *(a3 + 16);
  v63 = *a3;
  v64 = v20;
  type metadata accessor for Optional();
  v54 = a8;
  swift_getWitnessTable();
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a4, &v63, &v47);
  v21 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage();
  v41 = v21;
  v42 = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(a3, &v63);
  v22 = MEMORY[0x1E69E73E0];
  v23 = v17;
  v24 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v47, closure #1 in Attribute.init<A>(_:)partial apply, v40, v21, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v25);
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  (*(*(v21 - 8) + 8))(&v63, v21);
  v26 = v46;
  v27 = *(a3 + 16);
  swift_beginAccess();
  v28 = *(v27 + 16);
  v36[0] = a1;
  v36[1] = v9;
  v36[2] = v26;
  v36[3] = v28;
  *&v47 = a5;
  *(&v47 + 1) = a6;
  *&v48 = a7;
  *(&v48 + 1) = a8;
  v38 = type metadata accessor for CustomProgressView.WidgetMetadataWriter();
  v39 = swift_getWitnessTable();
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for Attribute<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v36, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_10, v37, v38, v22, v29, v24, v30);
  return v47;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CustomProgressView<A, B>.Child@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>();
  lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  type metadata accessor for OptionalSourceWriter();
  v2 = type metadata accessor for ModifiedContent();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t CustomProgressView.WidgetMetadataWriter.value.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v94 = a1;
  v87 = a2;
  v2 = MEMORY[0x1E69E6720];
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Progress?, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v97 = &v82 - v4;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v82 - v11;
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v2);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = &v82 - v13;
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v2);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v84 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v95 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v19 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v85 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v93 = (&v82 - v22);
  v23 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of ProgressViewValue(Value, v25, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v31 = v25[*(v30 + 48)];
    type metadata accessor for (ClosedRange<Date>, Bool)();
    v33 = &v28[*(v32 + 48)];
    _sSNy10Foundation4DateVGWObTm_0(v25, v28, type metadata accessor for ClosedRange<Date>);
  }

  else
  {
    v34 = v25[8];
    v31 = v25[9];
    *v28 = *v25;
    v28[8] = v34;
    v33 = v28 + 9;
  }

  *v33 = v31;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?);
  v35 = *AGGraphGetValue();
  v86 = v7;
  v83 = v28;
  if (v35 == 1)
  {
    goto LABEL_7;
  }

  if (!v35)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
LABEL_7:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v35);
    v36 = 1;
    goto LABEL_9;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(v35);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v37);
  PlatformItemList.mergedContentItem.getter(v35, v18);

  v36 = 0;
LABEL_9:
  v38 = type metadata accessor for PlatformItemList.Item();
  v39 = *(*(v38 - 8) + 56);
  v39(v18, v36, 1, v38);
  v40 = type metadata accessor for URL();
  v41 = *(v40 - 8);
  v42 = v18;
  v43 = v89;
  v91 = *(v41 + 56);
  v92 = v40;
  v90 = v41 + 56;
  v91(v89, 1, 1);
  v44 = *(v19 + 56);
  v88 = xmmword_18CD633F0;
  v101 = xmmword_18CD633F0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v45 = v98;
  v46 = v19 + 56;
  v47 = v44;
  v44(v98, 1, 1, v95);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v42, v43, &v101, v45, v93);
  v48 = AGGraphGetValue();
  v49 = *v48;
  v50 = v84;
  v51 = v83;
  if (*v48 != 1)
  {
    if (v49)
    {
      outlined copy of WidgetAuxiliaryTextImagePreference?(*v48);

      outlined consume of WidgetAuxiliaryTextImagePreference?(v53);
      PlatformItemList.mergedContentItem.getter(v49, v50);

      v52 = 0;
      goto LABEL_14;
    }

    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
  }

  outlined consume of WidgetAuxiliaryTextImagePreference?(v49);
  v52 = 1;
LABEL_14:
  v39(v50, v52, 1, v38);
  v54 = v89;
  (v91)(v89, 1, 1, v92);
  v101 = v88;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v55 = v98;
  v56 = v95;
  v57 = v46;
  v47(v98, 1, 1, v95);
  v58 = v85;
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v50, v54, &v101, v55, v85);
  outlined init with copy of ProgressViewValue(v51, v97, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  v59 = v93;
  outlined init with copy of ProgressViewValue(v93, v55, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v47(v55, 0, 1, v56);
  v60 = v96;
  outlined init with copy of ProgressViewValue(v58, v96, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v47(v60, 0, 1, v56);
  v61 = v47;
  v62 = AGGraphGetValue();
  v63 = *v62;
  v64 = v62[1];

  *&v101 = v63;
  *(&v101 + 1) = v64;
  static WidgetAuxiliaryViewMetadata.tint(from:)(&v101, v99);

  _sSNy10Foundation4DateVGWOhTm_1(v58, type metadata accessor for WidgetAuxiliaryViewMetadata);
  _sSNy10Foundation4DateVGWOhTm_1(v59, type metadata accessor for WidgetAuxiliaryViewMetadata);
  _sSNy10Foundation4DateVGWOhTm_1(v51, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  v93 = v99[1];
  v94 = v99[0];
  LODWORD(v89) = v100;
  v65 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v85 = v65[5];
  v66 = v86;
  v47(v86, 1, 1, v56);
  v82 = v57;
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for MutableBox<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E697DAC0]);
  v67 = swift_allocObject();
  v68 = *(*v67 + *MEMORY[0x1E697DAC8] + 8);
  _sSNy10Foundation4DateVGWObTm_0(v66, v67 + v68, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v69 = v97;
  *(v85 + v97) = v67;
  v85 = v65[6];
  v61(v66, 1, 1, v56);
  v70 = swift_allocObject();
  v71 = *(*v70 + *MEMORY[0x1E697DAC8] + 8);
  _sSNy10Foundation4DateVGWObTm_0(v66, v70 + v71, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  *(v85 + v69) = v70;
  v72 = v69 + v65[7];
  *v72 = 0;
  *(v72 + 8) = 0;
  *(v72 + 16) = 0;
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v98, v67 + v68);
  swift_endAccess();
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v96, v70 + v71);
  swift_endAccess();

  v73 = v93;
  *v72 = v94;
  *(v72 + 8) = v73;
  *(v72 + 16) = v89;
  v74 = *(*(v65 - 1) + 56);
  v74(v69, 0, 1, v65);
  v75 = v87;
  *v87 = 0;
  *(v75 + 1) = 0;
  v76 = v56[6];
  v77 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v77 - 8) + 56))(&v75[v76], 1, 1, v77);
  *&v75[v56[7]] = 0;
  v78 = v56[8];
  v74(&v75[v78], 1, 1, v65);
  v79 = &v75[v56[9]];
  *(v79 + 41) = 0u;
  *(v79 + 1) = 0u;
  *(v79 + 2) = 0u;
  *v79 = 0u;
  (v91)(&v75[v56[10]], 1, 1, v92);
  v80 = &v75[v56[11]];
  *v80 = v88;
  v80[1] = 0u;
  v80[2] = 0u;
  v80[3] = 0u;
  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v69, &v75[v78]);
  return (v61)(v75, 0, 1, v56);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CustomProgressView<A, B>.WidgetMetadataWriter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ProgressView<>.init(label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, a1, v8, v10);
  LOBYTE(v16[0]) = 1;
  v13 = MEMORY[0x1E6981E60];
  v14 = MEMORY[0x1E6981E70];
  CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)(0, 1, 1, v12, v16, a2, MEMORY[0x1E6981E70], a4);
  (*(v9 + 8))(a1, v8);
  v16[0] = a2;
  v16[1] = v14;
  v16[2] = a3;
  v16[3] = v13;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init(label:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - v10;
  a1(v9);
  (*(*(a2 - 8) + 56))(v11, 0, 1, a2);
  return ProgressView<>.init(label:)(v11, a2, a3, a4);
}

uint64_t ProgressView<>.init<>(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7 & 1;
  v9 = MEMORY[0x1E6981148];
  v10 = MEMORY[0x1E6981138];
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for CustomProgressView<Text, EmptyView>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for CustomProgressView);
  v12 = v11[14];
  v13 = (a1 + v11[13]);
  v14 = v11[15];
  *a1 = 0;
  *(a1 + 8) = 257;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *v13 = v2;
  v13[1] = v4;
  v13[2] = v8;
  v13[3] = v6;
  *(a1 + v12) = 1;
  *(a1 + v14) = 0;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<Text, EmptyView>.Base, v9, v10, type metadata accessor for ProgressView.Base);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v6 + 8))(a1, a2);
  v16 = MEMORY[0x1E6981148];
  v17 = MEMORY[0x1E6981138];
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for CustomProgressView<Text, EmptyView>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for CustomProgressView);
  v19 = v18[14];
  v20 = (a3 + v18[13]);
  v21 = v18[15];
  *a3 = 0;
  *(a3 + 8) = 257;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *v20 = v9;
  v20[1] = v11;
  v20[2] = v13 & 1;
  v20[3] = v15;
  *(a3 + v19) = 1;
  *(a3 + v21) = 0;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<Text, EmptyView>.Base, v16, v17, type metadata accessor for ProgressView.Base);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init<A>(label:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[0] = a1;
  v22[1] = a6;
  v23 = a7;
  v24 = a5;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v22 - v18;
  (*(v16 + 16))(v22 - v18, a1, v15, v17);
  LOBYTE(v25[0]) = 0;
  (*(v12 + 16))(v14, a2, v11);
  v20 = MEMORY[0x1E6981E70];
  CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)(0, 1, 1, v19, v25, v14, a3, MEMORY[0x1E6981E70], v23, a4, v24, MEMORY[0x1E6981E60]);
  (*(v12 + 8))(a2, v11);
  (*(v16 + 8))(v22[0], v15);
  v25[0] = a3;
  v25[1] = v20;
  v25[2] = v24;
  v25[3] = MEMORY[0x1E6981E60];
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init<A>(label:actions:)@<X0>(void (*a1)(double)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v23 = a6;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v22 - v18;
  a1(v17);
  v20 = (*(*(a3 - 8) + 56))(v19, 0, 1, a3);
  a2(v20);
  (*(*(a4 - 8) + 56))(v15, 0, 1, a4);
  return ProgressView<>.init<A>(label:actions:)(v19, v15, a3, a4, a5, v23, a7);
}

uint64_t ProgressView<>.init<A>(_:actions:)@<X0>(void (*a1)(void)@<X4>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-1] - v9;
  v16[0] = Text.init(_:tableName:bundle:comment:)();
  v16[1] = v11;
  v16[2] = v12 & 1;
  v16[3] = v13;
  a1();
  (*(*(a2 - 8) + 56))(v10, 0, 1, a2);
  return ProgressView<>.init<A>(label:actions:)(v16, v10, MEMORY[0x1E6981148], a2, MEMORY[0x1E6981138], a3, a4);
}

uint64_t ProgressView<>.init<A, B>(_:actions:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v23 = a5;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v14 + 16))(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v16);
  v24[0] = Text.init<A>(_:)();
  v24[1] = v18;
  v24[2] = v19 & 1;
  v24[3] = v20;
  a2();
  (*(*(a4 - 8) + 56))(v13, 0, 1, a4);
  ProgressView<>.init<A>(label:actions:)(v24, v13, MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], v23, a6);
  return (*(v14 + 8))(a1, a3);
}

uint64_t ProgressView.init(label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for Optional();
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = *(a3 - 8);
  (*(v20 + 16))(&v25 - v18, a1, a3, v17);
  (*(v20 + 56))(v19, 0, 1, a3);
  v21 = *(a4 - 8);
  (*(v21 + 16))(v15, a2, a4);
  (*(v21 + 56))(v15, 0, 1, a4);
  v22 = v15;
  v23 = v26;
  CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)(0, 1, 1, v19, v22, a3, a4, a7);
  (*(v21 + 8))(a2, a4);
  (*(v20 + 8))(a1, a3);
  v27 = a3;
  v28 = a4;
  v29 = v23;
  v30 = a6;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init(label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19(v16);
  a2(v20);
  return ProgressView.init(label:currentValueLabel:)(v18, v14, a3, a4, a5, a6, a7);
}

uint64_t ProgressView.init<>(_:currentValueLabel:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = Text.init(_:tableName:bundle:comment:)();
  v16[1] = v11;
  v17 = v12 & 1;
  v18 = v13;
  a2();
  return ProgressView.init(label:currentValueLabel:)(v16, v10, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981138], a4, a5);
}

uint64_t ProgressView.init<A>(_:currentValueLabel:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v14 + 16))(&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v25[0] = Text.init<A>(_:)();
  v25[1] = v19;
  v26 = v20 & 1;
  v27 = v21;
  a2();
  ProgressView.init(label:currentValueLabel:)(v25, v12, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981138], v24, a6);
  return (*(v14 + 8))(a1, a4);
}

uint64_t ProgressView.init<A>(label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v32 = a3;
  v34 = a2;
  v35 = a1;
  v37 = a9;
  v36 = a10;
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v32 - v20;
  v22 = type metadata accessor for Optional();
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v32 - v24;
  v26 = *(a4 - 8);
  (*(v26 + 16))(&v32 - v24, a1, a4, v23);
  (*(v26 + 56))(v25, 0, 1, a4);
  v27 = *(a5 - 8);
  v28 = *(v27 + 16);
  v33 = v21;
  v28(v21, a2, a5);
  (*(v27 + 56))(v21, 0, 1, a5);
  v29 = *(a6 - 8);
  (*(v29 + 16))(v18, a3, a6);
  (*(v29 + 56))(v18, 0, 1, a6);
  v30 = v38;
  CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)(0, 1, 1, v25, v33, v18, a4, a5, v37, a6, v38, v39);
  (*(v29 + 8))(v32, a6);
  (*(v27 + 8))(v34, a5);
  (*(v26 + 8))(v35, a4);
  v40 = a4;
  v41 = a5;
  v42 = v30;
  v43 = v39;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A>(label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a4;
  v30 = a3;
  v31 = a7;
  v32 = a9;
  v28 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23(v20);
  v25 = a2(v24);
  v30(v25);
  return ProgressView.init<A>(label:currentValueLabel:actions:)(v22, v18, v15, a5, a6, a8, v32, v28, v31, a11);
}

uint64_t ProgressView.init<A>(_:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, void (*a3)(uint64_t)@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = Text.init(_:tableName:bundle:comment:)();
  v21[1] = v15;
  v22 = v16 & 1;
  v23 = v17;
  v18 = a2();
  a3(v18);
  return ProgressView.init<A>(label:currentValueLabel:actions:)(v21, v14, v11, MEMORY[0x1E6981148], a5, a6, MEMORY[0x1E6981138], a7, v20, a8);
}

uint64_t ProgressView.init<A, B>(_:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a4;
  v34 = a3;
  v36 = a8;
  v31 = a2;
  v32 = a11;
  v35 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v21 + 16))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v25, v23);
  v37[0] = Text.init<A>(_:)();
  v37[1] = v26;
  v38 = v27 & 1;
  v39 = v28;
  v29 = v31(v37[0]);
  v34(v29);
  ProgressView.init<A>(label:currentValueLabel:actions:)(v37, v19, v16, MEMORY[0x1E6981148], a5, a7, MEMORY[0x1E6981138], v35, v36, v32);
  return (*(v21 + 8))(a1, a6);
}

uint64_t ProgressView.init<A>(value:total:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v88 = a8;
  v89 = a4;
  v90 = a3;
  v92 = a2;
  v94 = a9;
  v95 = a10;
  v87 = a6;
  v86 = type metadata accessor for Optional();
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v69 - v14;
  v85 = a5;
  v82 = type metadata accessor for Optional();
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v69 - v15;
  v72 = a11;
  v75 = *(a11 + 16);
  v16 = *(*(*(v75 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v69 - v18;
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v69 - v22;
  v24 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v69 - v30;
  v32 = *(v21 + 16);
  v91 = a1;
  v33 = a1;
  v35 = v34;
  v32(v23, v33, v34, v29);
  v36 = (*(v24 + 48))(v23, 1, a7);
  v80 = v24;
  v93 = a7;
  v78 = v35;
  if (v36 == 1)
  {
    (*(v21 + 8))(v23, v35);
    v37 = 0;
    LODWORD(v77) = 1;
    v38 = v21;
  }

  else
  {
    (*(v24 + 32))(v31, v23, a7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v71 = v19;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v39 = *(*(v75 + 24) + 8);
    v76 = v31;
    v73 = v39;
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    v77 = *(v24 + 8);
    v77(v27, a7);
    if (v40 & 1) != 0 || (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      v69 = v16;
      v42 = a7;
      v43 = v41;
      os_log(_:dso:log:_:_:)();

      a7 = v42;
    }

    v70 = v21;
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v44 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v77(v27, a7);
    if (v44 & 1) != 0 && (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v45 = v93, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v46 = dispatch thunk of static Comparable.>= infix(_:_:)(), v77(v27, v45), (v46) && ((dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v47 = v93, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v48 = dispatch thunk of static Equatable.== infix(_:_:)(), v77(v27, v47), (v48 & 1) == 0) || (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v49 = v93, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v50 = dispatch thunk of static Equatable.== infix(_:_:)(), v77(v27, v49), (v50 & 1) == 0)))
    {
      v66 = v76;
      v67 = v93;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      lazy protocol witness table accessor for type Double and conformance Double();
      BinaryFloatingPoint.init<A>(_:)();
      v77(v66, v67);
      LODWORD(v77) = 0;
      v68 = v96;
      if (v96 < 0.0)
      {
        v68 = 0.0;
      }

      if (v68 > 1.0)
      {
        v68 = 1.0;
      }

      v37 = *&v68;
    }

    else
    {
      v77(v76, v93);
      v37 = 0;
      LODWORD(v77) = 1;
    }

    v38 = v70;
  }

  v51 = v79;
  v52 = v81;
  v53 = v82;
  v54 = v90;
  (*(v79 + 16))(v81, v90, v82);
  v55 = v83;
  v56 = v84;
  v57 = v89;
  v58 = v86;
  (*(v83 + 16))(v84, v89, v86);
  v59 = v37;
  v60 = v52;
  v61 = v56;
  v62 = v85;
  v64 = v87;
  v63 = v88;
  CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)(v59, v77, 0, v60, v61, v85, v87, v94);
  (*(v55 + 8))(v57, v58);
  (*(v51 + 8))(v54, v53);
  (*(v80 + 8))(v92, v93);
  (*(v38 + 8))(v91, v78);
  v96 = *&v62;
  v97 = v64;
  v98 = v63;
  v99 = v95;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A>(value:total:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19[-v16];
  (*(v14 + 16))(&v19[-v16], a1, v13, v15);
  (*(v10 + 16))(v12, a2, a3);
  v21 = 1;
  v20 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v17, v12, &v21, &v20, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], a3, MEMORY[0x1E6981E60], a5, MEMORY[0x1E6981E60], a4);
  (*(v10 + 8))(a2, a3);
  return (*(v14 + 8))(a1, v13);
}

uint64_t ProgressView.init<A>(value:total:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a3;
  v31 = a8;
  v32 = a9;
  v33 = a7;
  v28 = a1;
  v29 = a4;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v21 + 16))(&v27 - v23, a1, v20, v22);
  v25 = (*(v16 + 16))(v19, a2, a6);
  v30(v25);
  (*(*(a5 - 8) + 56))(v15, 0, 1, a5);
  v34 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v24, v19, v15, &v34, a5, MEMORY[0x1E6981E70], a6, v33, v32, MEMORY[0x1E6981E60], v31);
  (*(v16 + 8))(a2, a6);
  return (*(v21 + 8))(v28, v20);
}

uint64_t ProgressView.init<A>(value:total:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a8;
  v40 = a6;
  v37 = a4;
  v38 = a3;
  v36 = a1;
  v44 = a9;
  v43 = a12;
  v41 = a5;
  v42 = a13;
  v45 = a11;
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v34 - v20;
  v22 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Optional();
  v26 = *(v35 - 8);
  v27 = MEMORY[0x1EEE9AC00](v35);
  v29 = &v34 - v28;
  (*(v26 + 16))(&v34 - v28, a1, v27);
  v30 = (*(v22 + 16))(v25, a2, a10);
  v38(v30);
  v31 = (*(*(a7 - 8) + 56))(v21, 0, 1, a7);
  v41(v31);
  v32 = v39;
  (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v29, v25, v21, v18, a7, v32, a10, v45, v44, v43, v42);
  (*(v22 + 8))(a2, a10);
  return (*(v26 + 8))(v36, v35);
}

uint64_t ProgressView.init<A>(_:value:total:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a3;
  v25 = a7;
  v23[1] = a2;
  v26 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - v17;
  (*(v15 + 16))(v23 - v17, a4, v14, v16);
  (*(v11 + 16))(v13, a5, a6);
  v28[0] = Text.init(_:tableName:bundle:comment:)();
  v28[1] = v20;
  v28[2] = v19 & 1;
  v28[3] = v21;
  v27 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v18, v13, v28, &v27, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a6, MEMORY[0x1E6981138], v26, MEMORY[0x1E6981E60], v25);
  (*(v11 + 8))(a5, a6);
  return (*(v15 + 8))(a4, v14);
}

uint64_t ProgressView.init<A, B>(_:value:total:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v30 = a2;
  v31 = a3;
  v34 = a8;
  v35 = a1;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  (*(v20 + 16))(&v29 - v22, a2, v19, v21);
  v24 = v31;
  (*(v15 + 16))(v18, v31, a5);
  (*(v11 + 16))(v13, v35, a4);
  v37[0] = Text.init<A>(_:)();
  v37[1] = v26;
  v37[2] = v25 & 1;
  v37[3] = v27;
  v36 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v23, v18, v37, &v36, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a5, MEMORY[0x1E6981138], v34, MEMORY[0x1E6981E60], v33);
  (*(v15 + 8))(v24, a5);
  (*(v20 + 8))(v30, v19);
  return (*(v11 + 8))(v35, a4);
}

uint64_t ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v87 = a5;
  v88 = a4;
  v93 = a9;
  v94 = a3;
  v90 = a2;
  v91 = a12;
  v95 = a11;
  v83 = a10;
  v84 = a14;
  v82 = type metadata accessor for Optional();
  v74 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v67 - v18;
  v86 = a7;
  v73 = type metadata accessor for Optional();
  v80 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v79 = v67 - v19;
  v85 = a6;
  v92 = type metadata accessor for Optional();
  v77 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v76 = v67 - v20;
  v67[4] = a13;
  v70 = *(a13 + 16);
  v21 = *(*(*(v70 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = v67 - v23;
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v67 - v27;
  v29 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = v67 - v35;
  v37 = *(v26 + 16);
  v89 = a1;
  v38 = a1;
  v40 = v39;
  v37(v28, v38, v39, v34);
  v41 = (*(v29 + 48))(v28, 1, a8);
  v78 = v40;
  v75 = v29;
  v72 = v26;
  v71 = a8;
  if (v41 == 1)
  {
    (*(v26 + 8))(v28, v40);
LABEL_11:
    v69 = 0;
    LODWORD(v70) = 1;
    goto LABEL_12;
  }

  (*(v29 + 32))(v36, v28, a8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67[1] = AssociatedTypeWitness;
  v67[0] = AssociatedConformanceWitness;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v67[2] = v24;
  v67[3] = v21;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v69 = *(*(v70 + 24) + 8);
  v43 = dispatch thunk of static Comparable.< infix(_:_:)();
  v44 = *(v29 + 8);
  v44(v32, a8);
  if (v43 & 1) != 0 || (dispatch thunk of static Comparable.> infix(_:_:)())
  {
    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v68 = v36;
  v46 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v44(v32, a8);
  if (v46 & 1) == 0 || (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v47 = dispatch thunk of static Comparable.>= infix(_:_:)(), v44(v32, a8), (v47 & 1) == 0) || (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v48 = dispatch thunk of static Equatable.== infix(_:_:)(), v44(v32, a8), (v48) && (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v49 = dispatch thunk of static Equatable.== infix(_:_:)(), v44(v32, a8), (v49))
  {
    v44(v68, a8);
    goto LABEL_11;
  }

  v65 = v68;
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v44(v65, a8);
  LODWORD(v70) = 0;
  v66 = v96;
  if (v96 < 0.0)
  {
    v66 = 0.0;
  }

  if (v66 > 1.0)
  {
    v66 = 1.0;
  }

  v69 = *&v66;
LABEL_12:
  v50 = v77;
  v51 = v76;
  (*(v77 + 16))(v76, v94, v92);
  v52 = v79;
  v53 = v80;
  v54 = v88;
  v55 = v73;
  (*(v80 + 16))(v79, v88, v73);
  v56 = v74;
  v57 = v81;
  v58 = v82;
  v59 = v87;
  (*(v74 + 16))(v81, v87, v82);
  v60 = v52;
  v61 = v57;
  v63 = v85;
  v62 = v86;
  CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)(v69, v70, 0, v51, v60, v61, v85, v86, v93, v83, v95, v91);
  (*(v56 + 8))(v59, v58);
  (*(v53 + 8))(v54, v55);
  (*(v50 + 8))(v94, v92);
  (*(v75 + 8))(v90, v71);
  (*(v72 + 8))(v89, v78);
  v96 = *&v63;
  v97 = v62;
  v98 = v95;
  v99 = v91;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A, B>(value:total:label:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a7;
  v40 = a1;
  v45 = a6;
  v46 = a5;
  v42 = a4;
  v43 = a3;
  v41 = a2;
  v50 = a9;
  v47 = a13;
  v48 = a12;
  v49 = a11;
  v44 = a10;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v38 - v19;
  v21 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a8;
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v38 - v28;
  (*(v26 + 16))(&v38 - v28, a1, v25, v27);
  v30 = v41;
  v31 = (*(v21 + 16))(v24, v41, a8);
  v43(v31);
  v32 = v39;
  v33 = (*(*(v39 - 8) + 56))(v20, 0, 1, v39);
  v51 = 0;
  v46(v33);
  v34 = v44;
  (*(*(v44 - 8) + 56))(v17, 0, 1);
  v37 = v34;
  v35 = v38;
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v29, v24, v20, &v51, v17, v32, MEMORY[0x1E6981E70], v38, v50, v37, v49, MEMORY[0x1E6981E60], v48, v47);
  (*(v21 + 8))(v30, v35);
  return (*(v26 + 8))(v40, v25);
}

uint64_t ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v55 = a8;
  v56 = a7;
  v52 = a5;
  v53 = a6;
  v49 = a4;
  v50 = a3;
  v60 = a9;
  v59 = a14;
  v57 = a16;
  v58 = a15;
  v47 = a1;
  v48 = a11;
  v54 = a13;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v51 = &v43 - v19;
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v43 - v21;
  v23 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v43 - v24;
  v26 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a12;
  v46 = type metadata accessor for Optional();
  v30 = *(v46 - 8);
  v31 = MEMORY[0x1EEE9AC00](v46);
  v33 = &v43 - v32;
  (*(v30 + 16))(&v43 - v32, a1, v31);
  v34 = (*(v26 + 16))(v29, a2, a12);
  v50(v34);
  v44 = a10;
  v35 = (*(*(v44 - 8) + 56))(v25, 0, 1, v44);
  v52(v35);
  v36 = v48;
  v37 = (*(*(v48 - 8) + 56))(v22, 0, 1, v48);
  v38 = v51;
  v56(v37);
  v39 = v54;
  (*(*(v54 - 8) + 56))(v38, 0, 1);
  v42 = v39;
  v40 = v45;
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v33, v29, v25, v22, v38, v44, v36, v45, v60, v42, v59, *(&v59 + 1), v58, v57);
  (*(v26 + 8))(a2, v40);
  return (*(v30 + 8))(v47, v46);
}

uint64_t ProgressView.init<A, B>(_:value:total:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a8;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v31[0] = a1;
  v31[1] = a2;
  v39 = a9;
  v37 = a13;
  v38 = a12;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v31 - v16;
  v18 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v31 - v25;
  (*(v23 + 16))(v31 - v25, a5, v22, v24);
  (*(v18 + 16))(v21, a6, a10);
  v41[0] = Text.init(_:tableName:bundle:comment:)();
  v41[1] = v27;
  v41[2] = v28 & 1;
  v41[3] = v29;
  v40 = 0;
  v36(v41[0], v27);
  (*(*(a11 - 8) + 56))(v17, 0, 1, a11);
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v26, v21, v41, &v40, v17, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a10, v39, a11, MEMORY[0x1E6981138], MEMORY[0x1E6981E60], v38, v37);
  (*(v18 + 8))(a6, a10);
  return (*(v23 + 8))(v34, v22);
}

uint64_t ProgressView.init<A, B, C>(_:value:total:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a8;
  v46 = a5;
  v40 = a6;
  v42 = a2;
  v43 = a3;
  v50 = a9;
  v51 = a1;
  v47 = a4;
  v48 = a12;
  v49 = a11;
  v44 = a10;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v41 = *(a6 - 8);
  v18 = v41;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v40 - v29;
  (*(v27 + 16))(&v40 - v29, a2, v26, v28);
  v31 = v43;
  (*(v22 + 16))(v25, v43, a7);
  v32 = *(v18 + 16);
  v33 = v40;
  v32(v21, v51, v40);
  v34 = v33;
  v53[0] = Text.init<A>(_:)();
  v53[1] = v35;
  v53[2] = v36 & 1;
  v53[3] = v37;
  v52 = 0;
  v47();
  v38 = v45;
  (*(*(v45 - 8) + 56))(v17, 0, 1);
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v30, v25, v53, &v52, v17, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a7, v50, v38, MEMORY[0x1E6981138], MEMORY[0x1E6981E60], v49, v48);
  (*(v22 + 8))(v31, a7);
  (*(v27 + 8))(v42, v26);
  return (*(v41 + 8))(v51, v34);
}

uint64_t ProgressView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<EmptyView, EmptyView>.Base, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for ProgressView.Base);
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;

  return swift_storeEnumTagMultiPayload();
}

{
  v4 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressViewValue(a1, v7, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
  v9 = v8;
  v10 = *(v8 + 52);
  *(a2 + v10) = 1;
  v11 = *(v8 + 56);
  *(a2 + v11) = 1;
  outlined init with copy of ProgressViewValue(v7, a2, type metadata accessor for ProgressViewValue);
  *(a2 + v10) = v7[v5[9]];
  *(a2 + v11) = v7[v5[10]];
  if (v7[v5[11]])
  {
    _sSNy10Foundation4DateVGWOhTm_1(v7, type metadata accessor for ProgressViewStyleConfiguration);
    v12 = 0;
  }

  else
  {
    v12 = AnyView.init<A>(_:)();
    _sSNy10Foundation4DateVGWOhTm_1(v7, type metadata accessor for ProgressViewStyleConfiguration);
  }

  *(a2 + *(v9 + 60)) = v12;
  _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
  return swift_storeEnumTagMultiPayload();
}

void type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for ProgressViewStyleConfiguration.Label;
    v8[1] = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
    v8[2] = &protocol witness table for ProgressViewStyleConfiguration.Label;
    v8[3] = &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeWithTake for ProgressView(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(v13 - 8);
  v16 = *(v15 + 80);
  v17 = v12 + v16 + 1;
  if (*(v15 + 84))
  {
    v18 = *(v15 + 64);
  }

  else
  {
    v18 = *(v15 + 64) + 1;
  }

  v19 = *(v14 - 8);
  v20 = *(v19 + 80);
  v21 = (v18 + v20 + (v17 & ~v16)) & ~v20;
  if (*(v19 + 84))
  {
    v22 = *(*(v14 - 8) + 64);
  }

  else
  {
    v22 = *(*(v14 - 8) + 64) + 1;
  }

  if (((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x40)
  {
    v23 = 64;
  }

  else
  {
    v23 = ((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v24 = *(a2 + v23);
  if (v24 >= 2 && v23 != 0)
  {
    v24 = *a2 + 2;
  }

  if (v24 == 1)
  {
    v26 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v26;
    v27 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v27;
    goto LABEL_46;
  }

  v28 = *(a2 + v12);
  v29 = v28 - 2;
  if (v28 >= 2)
  {
    if (v12 <= 3)
    {
      v30 = v12;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *a2;
        if (v12 < 4)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v30 == 3)
        {
          v31 = *a2 | (*(a2 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        v31 = *a2;
        if (v12 < 4)
        {
LABEL_35:
          v28 = (v31 | (v29 << (8 * v12))) + 2;
          goto LABEL_36;
        }
      }

LABEL_33:
      v28 = v31 + 2;
      goto LABEL_36;
    }

    if (v30)
    {
      v31 = *a2;
      if (v12 < 4)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

LABEL_36:
  __n = v18;
  v54 = v13;
  v32 = ~v16;
  v55 = *(v14 - 8);
  v56 = v22 + 7;
  v52 = v22;
  if (v28 == 1)
  {
    v51 = v23;
    v33 = ~v9;
    v34 = *(v7 + 32);
    v35 = v6;
    v49 = *(v13 - 8);
    v50 = v12 + v16 + 1;
    v36 = v11;
    v48 = v12;
    v34(a1, a2, v6);
    v37 = (v10 + a1) & v33;
    v38 = (a2 + v10) & v33;
    v23 = v51;
    v34(v37, v38, v35);
    v17 = v50;
    *(v36 + a1) = *(a2 + v36);
    v12 = v48;
    v15 = v49;
    v39 = 1;
  }

  else
  {
    v39 = 0;
    *a1 = *a2;
    *(a1 + 8) = a2[4];
  }

  v40 = ~v20;
  *(a1 + v12) = v39;
  v41 = ((v17 + a1) & v32);
  v42 = ((a2 + v17) & v32);
  if ((*(v15 + 48))(v42, 1, v54))
  {
    v43 = __n;
    memcpy(v41, v42, __n);
  }

  else
  {
    (*(v15 + 32))(v41, v42, v54);
    (*(v15 + 56))(v41, 0, 1, v54);
    v43 = __n;
  }

  v44 = &v42[v43];
  v45 = ((v41 + v43 + v20) & v40);
  v46 = (&v44[v20] & v40);
  if ((*(v55 + 48))(v46, 1, v14))
  {
    memcpy(v45, v46, v52);
  }

  else
  {
    (*(v55 + 32))(v45, v46, v14);
    (*(v55 + 56))(v45, 0, 1, v14);
  }

  LOBYTE(v24) = 0;
  *((v45 + v56) & 0xFFFFFFFFFFFFFFF8) = *((v46 + v56) & 0xFFFFFFFFFFFFFFF8);
LABEL_46:
  *(a1 + v23) = v24;
  return a1;
}

unsigned __int16 *assignWithTake for ProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v54 = type metadata accessor for Date();
    v6 = *(*(v54 - 8) + 64);
    v53 = *(v54 - 8);
    v7 = *(v53 + 80);
    v52 = v6 + v7;
    v8 = ((v6 + v7) & ~v7) + v6;
    v50 = v8;
    if ((v8 + 1) > 0xA)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 10;
    }

    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = *(v10 - 8);
    v13 = *(v12 + 80);
    v58 = v9 + v13 + 1;
    if (*(v12 + 84))
    {
      v14 = *(v12 + 64);
    }

    else
    {
      v14 = *(v12 + 64) + 1;
    }

    v15 = *(v11 - 8);
    v16 = *(v15 + 80);
    __n = v14;
    v17 = (v14 + v16 + (v58 & ~v13)) & ~v16;
    v61 = v15;
    if (*(v15 + 84))
    {
      v18 = *(*(v11 - 8) + 64);
    }

    else
    {
      v18 = *(*(v11 - 8) + 64) + 1;
    }

    v59 = v18 + 7;
    v19 = 64;
    if (((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x40)
    {
      v19 = ((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v20 = *(a1 + v19);
    v62 = v19;
    v21 = v19;
    if (v20 >= 2 && v19 != 0)
    {
      v20 = *a1 + 2;
    }

    v51 = ~v7;
    v57 = ~v13;
    v56 = ~v16;
    if (v20 == 1)
    {
      v23 = *(a3 + 16);

      if (*(a1 + 4))
      {
      }

      goto LABEL_45;
    }

    v24 = *(a1 + v9);
    v25 = v24 - 2;
    if (v24 >= 2)
    {
      if (v9 <= 3)
      {
        v26 = v9;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v27 = *a1;
          if (v9 < 4)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_37;
            }

            goto LABEL_35;
          }

          v27 = *a1;
          if (v9 < 4)
          {
LABEL_37:
            v24 = (v27 | (v25 << (8 * v9))) + 2;
            goto LABEL_38;
          }
        }

LABEL_35:
        v24 = v27 + 2;
        goto LABEL_38;
      }

      if (v26)
      {
        v27 = *a1;
        if (v9 < 4)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

LABEL_38:
    v55 = v18;
    if (v24 == 1)
    {
      v28 = *(a3 + 16);
      v29 = v11;
      v30 = *(v53 + 8);
      v30(a1, v54);
      v30(((a1 + v52) & v51), v54);
      v11 = v29;
      v10 = v28;
    }

    v31 = (a1 + v58) & v57;
    v23 = v10;
    if (!(*(v12 + 48))(v31, 1, v10))
    {
      (*(v12 + 8))(v31, v23);
    }

    v32 = (v31 + __n + v16) & v56;
    if (!(*(v61 + 48))(v32, 1, v11))
    {
      (*(v61 + 8))(v32, v11);
    }

    v18 = v55;
LABEL_45:

    v33 = *(a2 + v62);
    if (v21)
    {
      v34 = v33 >= 2;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v33 = *a2 + 2;
    }

    if (v33 == 1)
    {
      v35 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v35;
      v36 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v36;
LABEL_79:
      *(a1 + v62) = v33;
      return a1;
    }

    v37 = *(a2 + v9);
    v38 = v37 - 2;
    if (v37 >= 2)
    {
      if (v9 <= 3)
      {
        v39 = v9;
      }

      else
      {
        v39 = 4;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v40 = *a2;
          if (v9 < 4)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v39 == 3)
          {
            v40 = *a2 | (*(a2 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_68;
            }

            goto LABEL_66;
          }

          v40 = *a2;
          if (v9 < 4)
          {
LABEL_68:
            v37 = (v40 | (v38 << (8 * v9))) + 2;
            goto LABEL_69;
          }
        }

LABEL_66:
        v37 = v40 + 2;
        goto LABEL_69;
      }

      if (v39)
      {
        v40 = *a2;
        if (v9 < 4)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }
    }

LABEL_69:
    v49 = v11;
    if (v37 == 1)
    {
      v41 = *(v53 + 32);
      v41(a1, a2, v54);
      v41(((a1 + v52) & v51), ((a2 + v52) & v51), v54);
      *(a1 + v50) = *(a2 + v50);
      v42 = 1;
    }

    else
    {
      v42 = 0;
      *a1 = *a2;
      a1[4] = a2[4];
    }

    *(a1 + v9) = v42;
    v43 = ((a1 + v58) & v57);
    v44 = ((a2 + v58) & v57);
    if ((*(v12 + 48))(v44, 1, v23))
    {
      memcpy(v43, v44, __n);
    }

    else
    {
      (*(v12 + 32))(v43, v44, v23);
      (*(v12 + 56))(v43, 0, 1, v23);
    }

    v45 = &v44[__n];
    v46 = ((v43 + __n + v16) & v56);
    v47 = (&v45[v16] & v56);
    if ((*(v61 + 48))(v47, 1, v49))
    {
      memcpy(v46, v47, v18);
    }

    else
    {
      (*(v61 + 32))(v46, v47, v49);
      (*(v61 + 56))(v46, 0, 1, v49);
    }

    LOBYTE(v33) = 0;
    *((v46 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v47 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_79;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ProgressView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 64) + ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80));
  v8 = 10;
  if (v7 + 1 > 0xA)
  {
    v8 = v7 + 1;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = (v8 + *(v9 + 80) + 1) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(*(a3 + 24) - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 84);
  v15 = *(v12 + 64);
  if (!*(v9 + 84))
  {
    ++v11;
  }

  v16 = (v11 + v13 + v10) & ~v13;
  if (!v14)
  {
    ++v15;
  }

  v17 = ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 <= 0x40)
  {
    v17 = 64;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_33;
  }

  v18 = v17 | 1;
  if ((v17 | 1) <= 3)
  {
    v19 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v18];
      if (*&a1[v18])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *&a1[v18];
      if (v22)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    v26 = a1[v17];
    if (v26 >= 2)
    {
      return (v26 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v21)
  {
    goto LABEL_33;
  }

  v22 = a1[v18];
  if (!a1[v18])
  {
    goto LABEL_33;
  }

LABEL_29:
  v24 = (v22 - 1) << (8 * v18);
  if (v18 <= 3)
  {
    v25 = *a1;
  }

  else
  {
    v24 = 0;
    v25 = *a1;
  }

  return (v25 | v24) + 255;
}

void storeEnumTagSinglePayload for ProgressView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Date() - 8);
  v9 = *(v8 + 64) + ((*(v8 + 64) + *(v8 + 80)) & ~*(v8 + 80));
  v10 = 10;
  if (v9 + 1 > 0xA)
  {
    v10 = v9 + 1;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(*(a4 + 24) - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 84);
  v17 = *(v14 + 64);
  if (!*(v11 + 84))
  {
    ++v13;
  }

  v18 = (v13 + v15 + v12) & ~v15;
  if (!v16)
  {
    ++v17;
  }

  v19 = ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 <= 0x40)
  {
    v19 = 64;
  }

  v20 = v19 | 1;
  if (a3 < 0xFF)
  {
    v23 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_22;
    }

LABEL_30:
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v20] = 0;
    }

    else if (v23)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

LABEL_40:
      a1[v19] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (v20 <= 3)
  {
    v21 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_30;
  }

LABEL_22:
  v24 = a2 - 255;
  bzero(a1, v19 | 1);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_27:
      if (v23 == 2)
      {
        *&a1[v20] = v25;
      }

      else
      {
        *&a1[v20] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v23)
  {
    a1[v20] = v25;
  }
}

void *initializeBufferWithCopyOfBuffer for ProgressViewValue(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8((a1 + *(v9 + 36)), (a2 + *(v9 + 36)), v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    *(a1 + *(v10 + 48)) = *(a2 + *(v10 + 48));
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for ProgressViewValue(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for Date();
    v6 = *(*(v3 - 8) + 8);
    (v6)((v3 - 8), a1, v3);
    type metadata accessor for ClosedRange<Date>();
    v5 = a1 + *(v4 + 36);

    return v6(v5, v3);
  }

  return result;
}

_BYTE *initializeWithCopy for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>();
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_BYTE *assignWithCopy for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>();
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *initializeWithTake for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>();
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_BYTE *assignWithTake for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>();
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t initializeBufferWithCopyOfBuffer for CustomProgressView(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v9;
  v11 = v8 + v9;
  v12 = ((v8 + v10) & ~v10) + v8;
  if ((v12 + 1) > 0xA)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 10;
  }

  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v16 = *(v14 - 8);
  v17 = *(v16 + 80);
  v18 = v13 + v17 + 1;
  if (*(v16 + 84))
  {
    v19 = *(v16 + 64);
  }

  else
  {
    v19 = *(v16 + 64) + 1;
  }

  v20 = *(v15 - 8);
  v21 = *(v20 + 80);
  v55 = v19;
  if (*(v20 + 84))
  {
    v22 = *(*(v15 - 8) + 64);
  }

  else
  {
    v22 = *(*(v15 - 8) + 64) + 1;
  }

  v23 = v17 | v9 | v21;
  v24 = (v17 | v9 | *(v20 + 80)) & 0x100000;
  if (v23 > 7 || v24 != 0 || ((v22 + 7 + ((v19 + v21 + (v18 & ~v17)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = v27 + ((v23 & 0xF8 ^ 0x1F8) & (v23 + 16));
    goto LABEL_45;
  }

  v28 = *(a2 + v13);
  v29 = v28 - 2;
  if (v28 >= 2)
  {
    if (v13 <= 3)
    {
      v30 = v13;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *a2;
        if (v13 < 4)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v30 == 3)
        {
          v31 = *a2 | (*(a2 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v31 = *a2;
        if (v13 < 4)
        {
LABEL_34:
          v28 = (v31 | (v29 << (8 * v13))) + 2;
          goto LABEL_35;
        }
      }

LABEL_32:
      v28 = v31 + 2;
      goto LABEL_35;
    }

    if (v30)
    {
      v31 = *a2;
      if (v13 < 4)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

LABEL_35:
  v53 = v22 + 7;
  v54 = *(v15 - 8);
  v32 = ~v17;
  __n = v22;
  if (v28 == 1)
  {
    v33 = ~v10;
    v50 = v14;
    v51 = v15;
    v34 = *(v7 + 16);
    v47 = v13;
    v48 = v13 + v17 + 1;
    v35 = v6;
    v49 = *(v14 - 8);
    v36 = v12;
    v34(a1, a2, v6);
    v37 = v35;
    v13 = v47;
    v34((v11 + a1) & v33, ((a2 + v11) & v33), v37);
    v14 = v50;
    v15 = v51;
    *(v36 + a1) = *(a2 + v36);
    v18 = v48;
    v16 = v49;
    v38 = 1;
  }

  else
  {
    v38 = 0;
    *a1 = *a2;
    *(a1 + 8) = a2[4];
  }

  v39 = ~v21;
  *(a1 + v13) = v38;
  v40 = ((v18 + a1) & v32);
  v41 = ((a2 + v18) & v32);
  v42 = v14;
  if ((*(v16 + 48))(v41, 1, v14))
  {
    memcpy(v40, v41, v55);
  }

  else
  {
    (*(v16 + 16))(v40, v41, v42);
    (*(v16 + 56))(v40, 0, 1, v42);
  }

  v43 = &v41[v55];
  v44 = ((v40 + v55 + v21) & v39);
  v45 = (&v43[v21] & v39);
  if ((*(v54 + 48))(v45, 1, v15))
  {
    memcpy(v44, v45, __n);
  }

  else
  {
    (*(v54 + 16))(v44, v45, v15);
    (*(v54 + 56))(v44, 0, 1, v15);
  }

  *((v44 + v53) & 0xFFFFFFFFFFFFFFF8) = *((v45 + v53) & 0xFFFFFFFFFFFFFFF8);
LABEL_45:

  return a1;
}

uint64_t initializeWithTake for CustomProgressView(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = a2[v12];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = *a2;
      if (v12 < 4)
      {
LABEL_21:
        if ((v16 | (v14 << (8 * v12))) != 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

LABEL_19:
        v17 = ~v9;
        v18 = *(v7 + 32);
        v18(a1, a2, v6);
        v18((v10 + a1) & v17, (&a2[v10] & v17), v6);
        *(v11 + a1) = a2[v11];
        v19 = 1;
        goto LABEL_23;
      }
    }

    else if (v15 == 2)
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    v13 = v16 + 2;
  }

LABEL_18:
  if (v13 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  v19 = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
LABEL_23:
  *(a1 + v12) = v19;
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v12 + v22 + 1;
  v24 = ((v23 + a1) & ~v22);
  v25 = (&a2[v23] & ~v22);
  if ((*(v21 + 48))(v25, 1, v20))
  {
    v26 = *(v21 + 84);
    v27 = *(v21 + 64);
    if (v26)
    {
      v28 = *(v21 + 64);
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v21 + 32))(v24, v25, v20);
    v30 = *(v21 + 56);
    v29 = v21 + 56;
    v30(v24, 0, 1, v20);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = *(a3 + 24);
  v33 = *(v32 - 8);
  v34 = *(v33 + 80);
  v35 = v31 + v34;
  v36 = ((v24 + v35) & ~v34);
  v37 = ((v25 + v35) & ~v34);
  if ((*(v33 + 48))(v37, 1, v32))
  {
    v38 = *(v33 + 84);
    v39 = *(v33 + 64);
    if (v38)
    {
      v40 = *(v33 + 64);
    }

    else
    {
      v40 = v39 + 1;
    }

    memcpy(v36, v37, v40);
  }

  else
  {
    (*(v33 + 32))(v36, v37, v32);
    v42 = *(v33 + 56);
    v41 = v33 + 56;
    v42(v36, 0, 1, v32);
    v38 = *(v41 + 28);
    v39 = *(v41 + 8);
  }

  if (v38)
  {
    v43 = v39;
  }

  else
  {
    v43 = v39 + 1;
  }

  *((v36 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int16 *assignWithTake for CustomProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v54 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    if ((v10 + 1) > 0xA)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 10;
    }

    v12 = *(a1 + v11);
    v13 = v12 - 2;
    if (v12 < 2)
    {
LABEL_21:
      v16 = ~v9;
      if (v12 == 1)
      {
        v17 = *(v7 + 8);
        v17(a1, v6);
        v17(((a1 + v54) & v16), v6);
      }

      v18 = *(a2 + v11);
      v19 = v18 - 2;
      if (v18 >= 2)
      {
        if (v11 <= 3)
        {
          v20 = v11;
        }

        else
        {
          v20 = 4;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            goto LABEL_37;
          }

          v21 = *a2;
          if (v11 < 4)
          {
LABEL_40:
            if ((v21 | (v19 << (8 * v11))) != 0xFFFFFFFF)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }
        }

        else if (v20 == 2)
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        v18 = v21 + 2;
      }

LABEL_37:
      if (v18 != 1)
      {
LABEL_41:
        v23 = 0;
        *a1 = *a2;
        a1[4] = a2[4];
        goto LABEL_42;
      }

LABEL_38:
      v22 = *(v7 + 32);
      v22(a1, a2, v6);
      v22(((a1 + v54) & v16), ((a2 + v54) & v16), v6);
      *(a1 + v10) = *(a2 + v10);
      v23 = 1;
LABEL_42:
      *(a1 + v11) = v23;
      goto LABEL_43;
    }

    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v12 = v15 + 2;
          goto LABEL_21;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v12 = (v15 | (v13 << (8 * v11))) + 2;
      goto LABEL_21;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_43:
  v24 = *(type metadata accessor for Date() - 8);
  v25 = *(v24 + 64) + ((*(v24 + 64) + *(v24 + 80)) & ~*(v24 + 80));
  v26 = 10;
  if (v25 + 1 > 0xA)
  {
    v26 = v25 + 1;
  }

  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29 + 1;
  v31 = ((a1 + v30) & ~v29);
  v32 = ((a2 + v30) & ~v29);
  v33 = *(v28 + 48);
  v34 = v33(v31, 1, v27);
  v35 = v33(v32, 1, v27);
  if (v34)
  {
    if (!v35)
    {
      (*(v28 + 32))(v31, v32, v27);
      (*(v28 + 56))(v31, 0, 1, v27);
      goto LABEL_56;
    }

    v36 = *(v28 + 84);
    v37 = *(v28 + 64);
  }

  else
  {
    if (!v35)
    {
      (*(v28 + 40))(v31, v32, v27);
      goto LABEL_56;
    }

    (*(v28 + 8))(v31, v27);
    v36 = *(v28 + 84);
    v37 = *(v28 + 64);
  }

  if (v36)
  {
    v38 = v37;
  }

  else
  {
    v38 = v37 + 1;
  }

  memcpy(v31, v32, v38);
LABEL_56:
  v39 = *(v28 + 64);
  if (!*(v28 + 84))
  {
    ++v39;
  }

  v40 = *(a3 + 24);
  v41 = *(v40 - 8);
  v42 = *(v41 + 80);
  v43 = v39 + v42;
  v44 = ((v31 + v43) & ~v42);
  v45 = ((v32 + v43) & ~v42);
  v46 = *(v41 + 48);
  v47 = v46(v44, 1, v40);
  v48 = v46(v45, 1, v40);
  if (v47)
  {
    if (!v48)
    {
      (*(v41 + 32))(v44, v45, v40);
      (*(v41 + 56))(v44, 0, 1, v40);
      goto LABEL_69;
    }

    v49 = *(v41 + 84);
    v50 = *(v41 + 64);
  }

  else
  {
    if (!v48)
    {
      (*(v41 + 40))(v44, v45, v40);
      goto LABEL_69;
    }

    (*(v41 + 8))(v44, v40);
    v49 = *(v41 + 84);
    v50 = *(v41 + 64);
  }

  if (v49)
  {
    v51 = v50;
  }

  else
  {
    v51 = v50 + 1;
  }

  memcpy(v44, v45, v51);
LABEL_69:
  if (*(v41 + 84))
  {
    v52 = *(v41 + 64);
  }

  else
  {
    v52 = *(v41 + 64) + 1;
  }

  *((v44 + v52 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v45 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomProgressView(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 64) + ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80));
  if (v7 + 1 > 0xA)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 10;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v12 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  v18 = *(v9 + 64);
  if (!v11)
  {
    ++v18;
  }

  v19 = *(v10 + 80);
  v20 = *(v13 + 80);
  v21 = *(v13 + 64);
  if (!v15)
  {
    ++v21;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v8 + v19 + 1;
  v23 = v21 + 7;
  if (v17 < a2)
  {
    v24 = ((v23 + ((v18 + v20 + (v22 & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v25 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = a2 - v17 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v24);
      if (v29)
      {
LABEL_35:
        v30 = v29 - 1;
        if (v25)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v17 + (v31 | v30) + 1;
      }
    }
  }

  v32 = (a1 + v22) & ~v19;
  if (v12 == v17)
  {
    if (v11 >= 2)
    {
      v33 = (*(v10 + 48))(v32);
      goto LABEL_53;
    }

    return 0;
  }

  v34 = (v32 + v18 + v20) & ~v20;
  if (v16 == v17)
  {
    if (v15 >= 2)
    {
      v33 = (*(v14 + 48))(v34, v15, *(a3 + 24));
LABEL_53:
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v36 = *((v23 + v34) & 0xFFFFFFFFFFFFFFF8);
  if (v36 >= 0xFFFFFFFF)
  {
    LODWORD(v36) = -1;
  }

  if ((v36 + 1) >= 2)
  {
    return v36;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for CustomProgressView(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for Date() - 8);
  v10 = *(v9 + 64) + ((*(v9 + 64) + *(v9 + 80)) & ~*(v9 + 80));
  if (v10 + 1 > 0xA)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 10;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a4 + 24);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(*(*(a4 + 16) - 8) + 64);
  v19 = *(v12 + 80);
  v20 = *(v16 + 80);
  if (v17)
  {
    v21 = v17 - 1;
  }

  else
  {
    v21 = 0;
  }

  if (v14 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  if (!v13)
  {
    ++v18;
  }

  v23 = v11 + v19 + 1;
  if (v17)
  {
    v24 = *(v16 + 64);
  }

  else
  {
    v24 = *(v16 + 64) + 1;
  }

  v25 = v24 + 7;
  v26 = ((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v22 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v22)
  {
    if (((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a2 - v22;
    }

    else
    {
      v29 = 1;
    }

    if (((v25 + ((v18 + v20 + (v23 & ~v19)) & ~v20)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v30 = ~v22 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v8)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v26) = 0;
  }

  else if (v8)
  {
    *(a1 + v26) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  v31 = (a1 + v23) & ~v19;
  if (v14 == v22)
  {
    v32 = *(v12 + 56);

    v32(v31, a2 + 1);
  }

  else
  {
    v33 = (v31 + v18 + v20) & ~v20;
    if (v21 == v22)
    {
      v34 = *(v16 + 56);

      v34(v33, a2 + 1, v17, v15);
    }

    else
    {
      v35 = ((v25 + v33) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v35 = 0;
        *v35 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v35 = a2;
      }
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ProgressView(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 80) | *(*(*(a3 + 24) - 8) + 80) | *(*(type metadata accessor for Date() - 8) + 80);
  *a1 = *a2;
  return  + ((v5 & 0xF8 ^ 0x1F8u) & (v5 + 16));
}

void type metadata accessor for Attribute<WidgetAuxiliaryTextImagePreference?>()
{
  if (!lazy cache variable for type metadata for Attribute<WidgetAuxiliaryTextImagePreference?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<WidgetAuxiliaryTextImagePreference?>);
    }
  }
}

void type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *initializeBufferWithCopyOfBuffer for ResolvedProgressView(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>();
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v13) = *(a2 + v13);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t destroy for ResolvedProgressView(uint64_t a1)
{
  type metadata accessor for ProgressViewValue(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for Date();
    v6 = *(*(v3 - 8) + 8);
    (v6)((v3 - 8), a1, v3);
    type metadata accessor for ClosedRange<Date>();
    v5 = a1 + *(v4 + 36);

    return v6(v5, v3);
  }

  return result;
}

_BYTE *initializeWithCopy for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v11] = a2[v11];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

_BYTE *assignWithCopy for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  a1[a3[5]] = a2[a3[5]];
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

_BYTE *initializeWithTake for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 32);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v11] = a2[v11];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

_BYTE *assignWithTake for ResolvedProgressView(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v11] = a2[v11];
  a1[a3[7]] = a2[a3[7]];
  return a1;
}

void type metadata accessor for (ClosedRange<Date>, Bool)()
{
  if (!lazy cache variable for type metadata for (ClosedRange<Date>, Bool))
  {
    type metadata accessor for ClosedRange<Date>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ClosedRange<Date>, Bool));
    }
  }
}

uint64_t outlined copy of WidgetAuxiliaryTextImagePreference?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined consume of WidgetAuxiliaryTextImagePreference?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined assign with take of WidgetAuxiliaryViewMetadata?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Progress?, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC7SwiftUI29PresentationOptionsPreferenceVSg_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        outlined init with copy of PresentationOptionsPreference?(v3, v5);
        v5 += 144;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of PresentationOptionsPreference?(v3);
    return v4;
  }

  return result;
}

void specialized _UIHostingView.beginDescendingAllowUIKitAnimations(depth:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  ++*(v1 + v3);
  v4 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  v5 = [v1 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v7;
    v48 = a1;
    if (v6 >> 62)
    {
      break;
    }

    v9 = v6 & 0xFFFFFFFFFFFFFF8;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        v11 = v6 & 0xFFFFFFFFFFFFFF8;
        v12 = v6;
      }

      else
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v12 & 0xFFFFFFFFFFFFFF8;
      }

      swift_arrayDestroy();
      if (v10)
      {
        if (v12 >> 62)
        {
          v47 = __CocoaSet.count.getter();
          if (__OFSUB__(v47, v10))
          {
            goto LABEL_85;
          }

          memmove((v11 + 32), (v11 + 8 * v10 + 32), 8 * (v47 - v10));
          v46 = __CocoaSet.count.getter();
        }

        else
        {
          v46 = *(v11 + 16);
          memmove((v11 + 32), (v11 + 8 * v10 + 32), 8 * (v46 - v10));
        }

        if (__OFADD__(v46, -v10))
        {
          goto LABEL_84;
        }

        *(v11 + 16) = v46 - v10;
      }

      goto LABEL_17;
    }

    if (!(*((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
LABEL_14:
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }

LABEL_10:
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v12);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v12 + 16) = 0;
    *(v12 + 24) = (2 * (v16 >> 3)) | 1;
LABEL_15:

    if (!(v6 >> 62))
    {
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v17 = *(v9 + 16);
      v7 = v8;
      if (v17)
      {
        goto LABEL_18;
      }

      goto LABEL_69;
    }

    v17 = __CocoaSet.count.getter();
    if (v17)
    {
LABEL_18:
      v18 = 0;
      v52 = v17;
      v53 = v6 & 0xC000000000000001;
      v49 = v6 + 32;
      v50 = v6 & 0xFFFFFFFFFFFFFF8;
      v51 = v6;
      while (1)
      {
        if (v53)
        {
          v19 = MEMORY[0x18D00E9C0](v18, v6);
        }

        else
        {
          if (v18 >= *(v50 + 16))
          {
            goto LABEL_79;
          }

          v19 = *(v49 + 8 * v18);
        }

        v20 = v19;
        v21 = __OFADD__(v18, 1);
        v22 = v18 + 1;
        if (v21)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v60 = v19;
        type metadata accessor for UIKitAnimationCooperating();
        v23 = v20;
        if (swift_dynamicCast())
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v58, v61);
          v24 = v62;
          v25 = v63;
          __swift_project_boxed_opaque_existential_1(v61, v62);
          (*(v25 + 8))(v24, v25);
          outlined init with copy of _Benchmark(v61, v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
          }

          v27 = v7[2];
          v26 = v7[3];
          if (v27 >= v26 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v7);
          }

          v7[2] = v27 + 1;
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v58, &v7[5 * v27 + 4]);
          __swift_destroy_boxed_opaque_existential_1(v61);
        }

        else
        {
          v59 = 0;
          memset(v58, 0, sizeof(v58));
          outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v58, &lazy cache variable for type metadata for UIKitAnimationCooperating?, type metadata accessor for UIKitAnimationCooperating);
        }

        v56 = v23;
        v28 = [v23 v4[453]];
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = v29 >> 62;
        if (v29 >> 62)
        {
          v31 = __CocoaSet.count.getter();
        }

        else
        {
          v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = v12 >> 62;
        if (v12 >> 62)
        {
          v33 = __CocoaSet.count.getter();
        }

        else
        {
          v33 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v31;
        v21 = __OFADD__(v33, v31);
        v34 = v33 + v31;
        if (v21)
        {
          goto LABEL_75;
        }

        v54 = v22;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v32)
        {
          goto LABEL_44;
        }

        v35 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v34 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = v12;
          goto LABEL_46;
        }

LABEL_45:
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v35 = v55 & 0xFFFFFFFFFFFFFF8;
LABEL_46:
        v36 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v30)
        {
          v38 = __CocoaSet.count.getter();
          if (v38)
          {
LABEL_50:
            if (((v37 >> 1) - v36) < v57)
            {
              goto LABEL_77;
            }

            if (v30)
            {
              if (v38 < 1)
              {
                goto LABEL_80;
              }

              type metadata accessor for UIViewController?(0, &lazy cache variable for type metadata for [UIView], &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E69E62F8]);
              lazy protocol witness table accessor for type [UIView] and conformance [A]();
              for (i = 0; i != v38; ++i)
              {
                v41 = specialized protocol witness for Collection.subscript.read in conformance [A](v61, i, v29);
                v43 = *v42;
                (v41)(v61, 0);
                *(v35 + 8 * v36 + 32 + 8 * i) = v43;
              }

              v4 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
              v39 = v57;
            }

            else
            {
              v39 = v57;
              swift_arrayInitWithCopy();
            }

            v6 = v51;
            v18 = v54;
            v12 = v55;
            if (v39 >= 1)
            {
              v44 = *(v35 + 16);
              v21 = __OFADD__(v44, v39);
              v45 = v44 + v39;
              if (v21)
              {
                goto LABEL_78;
              }

              *(v35 + 16) = v45;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v38 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            goto LABEL_50;
          }
        }

        v18 = v54;
        v12 = v55;
        if (v57 > 0)
        {
          goto LABEL_76;
        }

LABEL_20:
        if (v18 == v52)
        {
          goto LABEL_69;
        }
      }

      if (!v32)
      {
        goto LABEL_45;
      }

LABEL_44:
      __CocoaSet.count.getter();
      goto LABEL_45;
    }

LABEL_69:

    a1 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_81;
    }

    v6 = v12;
    if (a1 <= 0)
    {

      return;
    }
  }

  v13 = __CocoaSet.count.getter();
  if (__CocoaSet.count.getter() < 0)
  {
    goto LABEL_82;
  }

  v14 = __CocoaSet.count.getter();
  if ((v13 & 0x8000000000000000) == 0 && v14 >= v13)
  {
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

void SheetBridge.presenterHasWindow.getter()
{
  v0 = SheetBridge.presenter.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SheetBridge.presentationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  return outlined init with copy of PresentationState(v1 + v3, a1);
}

uint64_t SheetBridge.lastEnvironment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + direct field offset for SheetBridge.lastEnvironment + 8);
  *a1 = *(v1 + direct field offset for SheetBridge.lastEnvironment);
  a1[1] = v2;
}

void closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:)(void *a1, uint64_t (*a2)(), uint64_t a3, char a4)
{
  v8 = [a1 transitionCoordinator];
  if (!v8)
  {
LABEL_6:
    if ((a4 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    v11 = [a1 presentingViewController];
    if (!v11)
    {
      v11 = a1;
    }

    v25 = a2;
    v26 = a3;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed () -> ();
    v24 = &block_descriptor_32;
    v14 = _Block_copy(&v21);

    [v11 dismissViewControllerAnimated:1 completion:v14];
    _Block_release(v14);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [a1 presentationController];
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v11 = v10;
  if ([v10 dismissing])
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v25 = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
    v26 = v12;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v24 = &block_descriptor_38;
    v13 = _Block_copy(&v21);

    [v9 animateAlongsideTransition:0 completion:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  swift_unknownObjectRelease();

  if (a4)
  {
    goto LABEL_7;
  }

LABEL_12:
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #2 in closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:);
  *(v17 + 24) = v16;
  v25 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v26 = v17;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed () -> ();
  v24 = &block_descriptor_29_0;
  v18 = _Block_copy(&v21);

  v19 = a1;

  [v15 _performWithoutDeferringTransitions_];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void closure #2 in closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 presentingViewController];
  if (!v6)
  {
    v6 = a1;
  }

  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_41;
  v7 = _Block_copy(v8);

  [v6 dismissViewControllerAnimated:0 completion:v7];
  _Block_release(v7);
}

Swift::Void __swiftcall SheetBridge.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(UISheetPresentationController a1)
{
  v3 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v1 + v3, v5);
  v4 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v5);
  if (v4)
  {
    specialized PresentationHostingController.didChangeSelectedDetent(sheet:)(a1.super.super.isa);
  }
}

void specialized PresentationHostingController.didChangeSelectedDetent(sheet:)(void *a1)
{
  v2 = v1;
  v4 = direct field offset for UIHostingController.host;
  v5 = *(v1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.beginDescendingAllowUIKitAnimations(depth:)(10);
  v7 = v6;

  v8 = *(v2 + v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = v8;
  onNextMainRunLoop(do:)();

  v11 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  outlined init with copy of PresentationOptionsPreference?(v2 + v11, v41);
  if (!*&v41[0])
  {
    outlined destroy of PresentationOptionsPreference?(v41);
    return;
  }

  v49 = v41[6];
  v50[0] = v42[0];
  *(v50 + 10) = *(v42 + 10);
  v45 = v41[2];
  v46 = v41[3];
  v47 = v41[4];
  v48 = v41[5];
  v43 = v41[0];
  v44 = v41[1];
  v12 = [a1 selectedDetentIdentifier];
  if (!v12)
  {
    outlined destroy of PresentationOptionsPreference(&v43);
    return;
  }

  v13 = v12;
  if (!v44)
  {
    outlined destroy of PresentationOptionsPreference(&v43);

    return;
  }

  v14 = v43;
  v15 = v43 + 56;
  v16 = 1 << *(v43 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v43 + 56);
  v38 = *(&v43 + 1);
  v39 = v44;
  outlined copy of Binding<Int>?(*(&v43 + 1), v44);
  v19 = (v16 + 63) >> 6;
  v37 = *MEMORY[0x1E69DE3B0];
  v36 = *MEMORY[0x1E69DE3B8];

  v20 = 0;
  while (v18)
  {
LABEL_13:
    v23 = __clz(__rbit64(v18));
    v24 = *(*(v14 + 48) + ((v20 << 10) | (16 * v23)));
    v25 = *(*(v14 + 48) + ((v20 << 10) | (16 * v23)) + 8);
    v26 = v25 >> 62;
    v40 = v24;
    if ((v25 >> 62) <= 1)
    {
      if (v26)
      {
        *&v41[0] = 0x3A746867696548;
        v27 = 0xE700000000000000;
      }

      else
      {
        *&v41[0] = 0x6E6F697463617246;
        v27 = 0xE90000000000003ALL;
      }

      *(&v41[0] + 1) = v27;
      v28 = Double.description.getter();
      goto LABEL_20;
    }

    if (v26 == 2)
    {
      *&v41[0] = 0x3A6D6F74737543;
      *(&v41[0] + 1) = 0xE700000000000000;
      v28 = _typeName(_:qualified:)();
LABEL_20:
      MEMORY[0x18D00C9B0](v28);

      v29 = MEMORY[0x18D00C850](*&v41[0], *(&v41[0] + 1));

      goto LABEL_25;
    }

    if (v24 | v25 ^ 0xC000000000000000)
    {
      v30 = v37;
    }

    else
    {
      v30 = v36;
    }

    v29 = v30;
LABEL_25:
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {

      v35 = v40;
LABEL_31:
      v41[0] = v35;
      dispatch thunk of AnyLocation.set(_:transaction:)();

      outlined destroy of PresentationOptionsPreference(&v43);
      outlined consume of Binding<NavigationSplitViewColumn>?(v38, v39);
      return;
    }

    v18 &= v18 - 1;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {

      v35 = v40;
      goto LABEL_31;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v35 = xmmword_18CD848D0;
      goto LABEL_31;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void @objc SheetBridge.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SheetBridge.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(v4);
}

Swift::Void __swiftcall SheetBridge._sheetPresentationControllerDidChangeHosting(_:)(UISheetPresentationController a1)
{
  v3 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v1 + v3, v12);
  v4 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v12);
  if (v4)
  {
    if (([(objc_class *)a1.super.super.isa _isHosting]& 1) != 0)
    {
      v5 = [v4 view];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() clearColor];
        [v6 setBackgroundColor_];

        v8 = *&v4[direct field offset for UIHostingController.host];
        v9 = v4;
        v10 = v8;
        v11 = specialized _UIHostingView.base.getter();
        UIHostingViewBase.safeAreaRegions.setter();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void @objc SheetBridge._sheetPresentationControllerDidChangeHosting(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SheetBridge._sheetPresentationControllerDidChangeHosting(_:)(v4);
}

uint64_t closure #1 in variable initialization expression of SheetBridge.clientNeedsOutOfWindowPresentationSuppression()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000013 && 0x800000018CD43BD0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

void @objc SheetBridge.presentationControllerDidAttemptToDismiss(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized SheetBridge.presentationControllerDidAttemptToDismiss(_:)();
}

Swift::Void __swiftcall SheetBridge.didBeginInteractiveDismissal(_:)(UIViewController *a1)
{
  v2 = v1;
  v4 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v2 + v4, v6);
  v5 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v6);
  if (v5)
  {

    if (v5 == a1)
    {
      type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      if (static SemanticFeature.isEnabled.getter())
      {
        swift_beginAccess();
        PresentationState.presentationDidBeginInteractiveDismissal()();
        swift_endAccess();
      }
    }
  }
}

Swift::Void __swiftcall SheetBridge.didDismissViewController(_:wasPreempted:modifierRemoved:)(UIViewController *_, Swift::Bool wasPreempted, Swift::Bool modifierRemoved)
{
  if (!wasPreempted)
  {
    v4 = v3;
    if (modifierRemoved)
    {
      type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      if (static SemanticFeature.isEnabled.getter())
      {
        swift_beginAccess();
        PresentationState.dismiss(willPresentAgain:hasNoModifier:)(0, 1);
        swift_endAccess();
      }
    }

    v6 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v4 + v6, v13);
    PresentationState.delayedPresentation.getter(v15);
    outlined destroy of PresentationState(v13);
    swift_beginAccess();
    PresentationState.presentationDidDisappear()();
    swift_endAccess();
    outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v15, v11);
    if (*&v11[0])
    {
      v13[4] = v11[4];
      v13[5] = v11[5];
      *v14 = *v12;
      *&v14[9] = *&v12[9];
      v13[0] = v11[0];
      v13[1] = v11[1];
      v13[2] = v11[2];
      v13[3] = v11[3];
      v7 = SheetBridge.presenter.getter();
      if (v7)
      {
        v8 = v7;
        outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(v13, v11);
        v9 = *&v12[16];
        outlined destroy of SheetPreference(v11);
        if (v9)
        {
          if (v9 == _)
          {
            v10 = v9;
            specialized PresentationHostingController.resetSheetControllerOscillationDetection()();
          }
        }

        SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(v13, v8, v14[24], *&v14[16], 0);
      }

      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v15, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(v13);
    }

    else
    {
      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v15, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
      outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v11, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
    }
  }
}

uint64_t specialized PresentationHostingController.resetSheetControllerOscillationDetection()()
{
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  v1 = direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration;
  swift_beginAccess();
  outlined assign with take of PresentationOptionsPreference?(&v4, v0 + v1);
  result = swift_endAccess();
  v3 = *(v0 + direct field offset for PresentationHostingController.oscillationDetector);
  if (v3)
  {
    memset(v11, 0, sizeof(v11));
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    swift_beginAccess();
    *(v3 + 16) = _sSa9repeating5countSayxGx_SitcfC7SwiftUI29PresentationOptionsPreferenceVSg_Tt1g5(&v4, *(*(v3 + 16) + 16));
  }

  return result;
}

Swift::Void __swiftcall SheetBridge.didDismissViewController(_:wasPreempted:)(UIViewController *_, Swift::Bool wasPreempted)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  static Log.presentation.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_18BD4A000, v9, v10, "Non-sheet-bridge-originated dismissal finished", v11, 2u);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  SheetBridge.didDismissViewController(_:wasPreempted:modifierRemoved:)(_, wasPreempted, 0);
}

uint64_t one-time initialization function for willDismiss()
{
  result = MEMORY[0x18D00C850](0xD000000000000016, 0x800000018CD43B00);
  static SheetBridgeNotifications.willDismiss = result;
  return result;
}

void *specialized closure #1 in PresentationHostingController.didChangeSelectedDetent(sheet:)(void *result, uint64_t a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *result) + 0x80);
  v3 = *(result + v2);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + v2) = v5 & ~(v5 >> 31);
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = (a2 + 32);
      do
      {
        v8 = v7[3];
        v9 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v8);
        result = (*(v9 + 16))(v8, v9);
        v7 += 5;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSo16UIViewControllerCSg_Tt1g5Tf4gn_nTm(void *result, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = result;
    type metadata accessor for UIViewController?(0, a3, a4, a5, MEMORY[0x1E69E6720]);
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v8 = v7;
    *(v7 + 16) = a2;
    *(v7 + 32) = v6;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = (v7 + 40);
      do
      {
        *v10++ = v6;
        v11 = v6;
        --v9;
      }

      while (v9);
    }

    v12 = v6;
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for PresentationHostingController<AnyView>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(0, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)()
{
  if (!lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool))
  {
    type metadata accessor for PresentationHostingController<AnyView>?();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
    }
  }
}

void type metadata accessor for PresentationHostingController<AnyView>?()
{
  if (!lazy cache variable for type metadata for PresentationHostingController<AnyView>?)
  {
    type metadata accessor for PresentationHostingController<AnyView>(255, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>?);
    }
  }
}

uint64_t outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(uint64_t a1)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PresentationOptionsPreference?(uint64_t a1)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void specialized SheetBridge.presentationControllerDidAttemptToDismiss(_:)()
{
  v1 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v0 + v1, v6);
  v2 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v6);
  if (v2)
  {
    v3 = *&v2[direct field offset for UIHostingController.host];
    v4 = specialized _UIHostingView.sheetBridge.getter();

    if (v4)
    {
      v5 = *&v4[direct field offset for SheetBridge.interactiveDismissHandler];
      outlined copy of AppIntentExecutor?(v5);

      if (v5)
      {
        v5();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
      }
    }
  }
}

unint64_t type metadata accessor for UIKitAnimationCooperating()
{
  result = lazy cache variable for type metadata for UIKitAnimationCooperating;
  if (!lazy cache variable for type metadata for UIKitAnimationCooperating)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIKitAnimationCooperating);
  }

  return result;
}

uint64_t outlined destroy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for UIViewController?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [UIView] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIView] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIView] and conformance [A])
  {
    type metadata accessor for UIViewController?(255, &lazy cache variable for type metadata for [UIView], &lazy cache variable for type metadata for UIView, 0x1E69DD250, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIView] and conformance [A]);
  }

  return result;
}

uint64_t LabeledContent<>.init(_:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for LabeledContent() + 40);
  closure #1 in LabeledContent<>.init(_:content:)(a1, a2, a3, a4);
  *a5 = closure #2 in LabeledContent<>.init(_:content:)();
  *(a5 + 8) = v11;
  *(a5 + 16) = v12 & 1;
  *(a5 + 24) = v13;
  *(a5 + v10) = 1;
}

uint64_t closure #2 in LabeledContent<>.init(_:content:)()
{

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t LabeledContent<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(type metadata accessor for LabeledContent() + 40);
  closure #1 in LabeledContent<>.init<A>(_:content:)(a2, a3, a4, a5, a6);
  *a7 = closure #2 in LabeledContent<>.init<A>(_:content:)(a1);
  *(a7 + 8) = v15;
  *(a7 + 16) = v16 & 1;
  *(a7 + 24) = v17;
  *(a7 + v14) = 1;
  v18 = *(*(a5 - 8) + 8);

  return v18(a1, a5);
}

uint64_t closure #1 in LabeledContent<>.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  v15 = *(v7 + 8);
  v15(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v13, a3, a5);
  return (v15)(v13, a3);
}

uint64_t closure #2 in LabeledContent<>.init<A>(_:content:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return Text.init<A>(_:)();
}

uint64_t LabeledContent<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for LabeledContent() + 40);
  closure #1 in LabeledContent<>.init(_:content:)(a2, a3, a4, a5);
  *a6 = closure #2 in LabeledContent<>.init(_:content:)(a1);
  *(a6 + 8) = v13;
  *(a6 + 16) = v14 & 1;
  *(a6 + 24) = v15;
  *(a6 + v12) = 1;
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(*(v16 - 8) + 8);

  return v17(a1, v16);
}

uint64_t closure #1 in LabeledContent<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)(v8, a3, a4);
  v14 = *(v6 + 8);
  v14(v8, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t closure #2 in LabeledContent<>.init(_:content:)(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return Text.init(_:)();
}

uint64_t LabeledContent<>.init<A>(_:value:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  closure #1 in LabeledContent<>.init<A>(_:value:)(a1, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v19;
  v20 = v18;
  v9 = Text.init(_:tableName:bundle:comment:)();
  LOBYTE(v17[0]) = v10 & 1;
  v11 = v20;
  *a3 = v9;
  *(a3 + 8) = v12;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v13;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v11;
  *(a3 + 56) = v8;
  v14 = *(a2 - 8);
  *(a3 + 64) = 1;
  v15 = *(v14 + 8);

  return v15(a1, a2);
}

uint64_t LabeledContent<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v17, a1, v15);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a2;
  LabeledContent<>.init<A>(_:content:)(v17, partial apply for closure #1 in LabeledContent<>.init<A, B>(_:value:), v21, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981138], v27);
  (*(v14 + 8))(a1, a3);
  v18 = v27[3];
  *(a7 + 32) = v27[2];
  *(a7 + 48) = v18;
  *(a7 + 64) = v28;
  v19 = v27[1];
  *a7 = v27[0];
  *(a7 + 16) = v19;
  return (*(*(a4 - 8) + 8))(a2, a4);
}

uint64_t closure #1 in LabeledContent<>.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t LabeledContent<>.init<A>(_:value:format:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  closure #1 in LabeledContent<>.init<A>(_:value:format:)(a1, a2, a3, v19);
  v8 = v19[0];
  v7 = v19[1];
  v9 = v21;
  v22 = v20;
  v10 = Text.init(_:tableName:bundle:comment:)();
  LOBYTE(v19[0]) = v11 & 1;
  v12 = v22;
  *a4 = v10;
  *(a4 + 8) = v13;
  *(a4 + 16) = v11 & 1;
  *(a4 + 24) = v14;
  *(a4 + 32) = v8;
  *(a4 + 40) = v7;
  *(a4 + 48) = v12;
  *(a4 + 56) = v9;
  *(a4 + 64) = 1;
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 8);

  return v16(a1, AssociatedTypeWitness);
}

uint64_t LabeledContent<>.init<A, B>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = v27;
  v34 = a2;
  v35 = a3;
  LabeledContent<>.init<A>(_:content:)(v20, partial apply for closure #1 in LabeledContent<>.init<A, B>(_:value:format:), v28, MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], v36);
  (*(v17 + 8))(a1, a4);
  v22 = v36[3];
  *(a9 + 32) = v36[2];
  *(a9 + 48) = v22;
  *(a9 + 64) = v37;
  v23 = v36[1];
  *a9 = v36[0];
  *(a9 + 16) = v23;
  (*(*(a5 - 8) + 8))(a3, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
}

uint64_t closure #1 in LabeledContent<>.init<A, B>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v14 + 16))(&v19 - v13, a1, v12);
  (*(v8 + 16))(v10, a2, a3);
  result = Text.init<A>(_:format:)();
  *a4 = result;
  *(a4 + 8) = v16;
  *(a4 + 16) = v17 & 1;
  *(a4 + 24) = v18;
  return result;
}

uint64_t LabeledContent<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v30 = a1;
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(v9 + 16);
  v16(&v30 - v14, a1, v8, v13);
  closure #1 in LabeledContent<>.init<A>(_:value:)(a2, v35);
  v17 = v35[1];
  v33 = v35[0];
  v31 = v37;
  v38 = v36;
  (v16)(v11, v15, v8);
  v18 = Text.init(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v30, v8);
  v25(v15, v8);
  LOBYTE(v35[0]) = v22 & 1;
  v26 = v38;
  *a5 = v18;
  *(a5 + 8) = v20;
  *(a5 + 16) = v22 & 1;
  v27 = v32;
  v28 = v33;
  *(a5 + 24) = v24;
  *(a5 + 32) = v28;
  *(a5 + 40) = v17;
  *(a5 + 48) = v26;
  *(a5 + 56) = v31;
  *(a5 + 64) = 1;
  return (*(*(v27 - 8) + 8))(v34);
}

uint64_t closure #1 in LabeledContent<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t LabeledContent<>.init<A>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a4;
  v41 = a6;
  v43 = a2;
  v44 = a5;
  v42 = a3;
  v37 = a1;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = *(v12 + 16);
  v19(&v36 - v17, a1, v11, v16);
  v20 = a3;
  v21 = v40;
  closure #1 in LabeledContent<>.init<A>(_:value:format:)(a2, v20, v40, v45);
  v41 = v45[0];
  v38 = v47;
  v39 = v45[1];
  v48 = v46;
  (v19)(v14, v18, v11);
  v22 = Text.init(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(v12 + 8);
  v29(v37, v11);
  v29(v18, v11);
  LOBYTE(v45[0]) = v26 & 1;
  v30 = v48;
  *a7 = v22;
  *(a7 + 8) = v24;
  *(a7 + 16) = v26 & 1;
  v32 = v41;
  v31 = v42;
  *(a7 + 24) = v28;
  *(a7 + 32) = v32;
  v33 = v38;
  *(a7 + 40) = v39;
  *(a7 + 48) = v30;
  *(a7 + 56) = v33;
  *(a7 + 64) = 1;
  (*(*(v21 - 8) + 8))(v31, v21);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(v43, AssociatedTypeWitness);
}

uint64_t closure #1 in LabeledContent<>.init<A>(_:value:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v14 + 16))(&v19 - v13, a1, v12);
  (*(v8 + 16))(v10, a2, a3);
  result = Text.init<A>(_:format:)();
  *a4 = result;
  *(a4 + 8) = v16;
  *(a4 + 16) = v17 & 1;
  *(a4 + 24) = v18;
  return result;
}

uint64_t getEnumTagSinglePayload for LabeledContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFD)
  {
    v11 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v5 == v11)
      {
        return (*(v4 + 48))();
      }

      v22 = (a1 + v12) & ~v9;
      if (v8 == v11)
      {
        return (*(v7 + 48))(v22, v8, v6);
      }

      v23 = *(v22 + v10);
      v24 = v23 >= 2;
      v25 = v23 - 2;
      if (!v24)
      {
        v25 = -1;
      }

      if (v25 + 1 >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v10 + (v12 & ~v9) == -1)
  {
    v21 = 0;
  }

  else
  {
    if (v14 <= 3)
    {
      v20 = v10 + (v12 & ~v9) + 1;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  return v11 + (v21 | v19) + 1;
}

char *storeEnumTagSinglePayload for LabeledContent(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFD)
  {
    v12 = 253;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
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
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 2;
    }
  }

  return result;
}

unint64_t outlined copy of HoverEffectPhaseOverride.Storage(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

unint64_t outlined consume of HoverEffectPhaseOverride.Storage(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _HoverEffectActivationBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _HoverEffectActivationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t static Color.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UTType?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  UTType.init(_identifier:allowUndeclared:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4);
    static UTType.item.getter();
    lazy protocol witness table accessor for type Color and conformance Color();
    return DataRepresentation.init(exportedContentType:exporting:)();
  }

  else
  {
    v23 = *(v6 + 32);
    v23(v14, v4, v5);
    v26 = v6;
    v16 = *(v6 + 16);
    v16(v11, v14, v5);
    v16(v8, v14, v5);
    v27 = v11;
    v17 = *(v6 + 80);
    v25 = a1;
    v18 = (v17 + 16) & ~v17;
    v24 = swift_allocObject();
    v19 = v23;
    v23((v24 + v18), v8, v5);
    v16(v8, v14, v5);
    v20 = swift_allocObject();
    v19(v20 + v18, v8, v5);
    v21 = lazy protocol witness table accessor for type Color and conformance Color();
    MEMORY[0x18D000CA0](v27, &async function pointer to partial apply for closure #1 in static Color.transferRepresentation.getter, v24, &async function pointer to partial apply for closure #2 in static Color.transferRepresentation.getter, v20, MEMORY[0x1E69815C0], v21);
    return (*(v26 + 8))(v14, v5);
  }
}

void type metadata accessor for UTType?()
{
  if (!lazy cache variable for type metadata for UTType?)
  {
    type metadata accessor for UTType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UTType?);
    }
  }
}

uint64_t closure #1 in static Color.transferRepresentation.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](closure #1 in static Color.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static Color.transferRepresentation.getter()
{
  v1 = v0[4];
  type metadata accessor for UIColor();

  v3 = UIColor.init(_:)(v2);
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = closure #1 in static Color.transferRepresentation.getter;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x6174614464616F6CLL, 0xEE00293A726F6628, partial apply for closure #1 in UIColor.loadData(for:), v4, v6);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in static Color.transferRepresentation.getter;
  }

  else
  {

    v2 = closure #1 in static Color.transferRepresentation.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in static Color.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;

  return MEMORY[0x1EEE6DFA0](closure #2 in static Color.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static Color.transferRepresentation.getter()
{
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = UTType.identifier.getter();
  v4 = MEMORY[0x18D00C850](v3);

  v0[2] = 0;
  v5 = [v1 objectWithItemProviderData:isa typeIdentifier:v4 error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    v7 = v0[3];
    type metadata accessor for UIKitPlatformColorDefinition();
    v8 = v6;
    *v7 = Color.init(_platformColor:definition:)();
  }

  else
  {
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in static Color.errorRepresentation.getter()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in static Color.errorRepresentation.getter, 0, 0);
}

{
  v1 = type metadata accessor for TransferableError();
  lazy protocol witness table accessor for type DataRepresentation<Color> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E6965BC8], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in static Color.transferRepresentation.getter(uint64_t *a1)
{
  v4 = *(type metadata accessor for UTType() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static Color.transferRepresentation.getter;

  return closure #1 in static Color.transferRepresentation.getter(a1, v1 + v5);
}

uint64_t partial apply for closure #1 in static Color.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t partial apply for closure #2 in static Color.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for UTType() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in static Color.transferRepresentation.getter(a1, a2, a3, v3 + v9);
}

void type metadata accessor for DataRepresentation<Color>()
{
  if (!lazy cache variable for type metadata for DataRepresentation<Color>)
  {
    lazy protocol witness table accessor for type Color and conformance Color();
    v0 = type metadata accessor for DataRepresentation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DataRepresentation<Color>);
    }
  }
}

void closure #1 in UIColor.loadData(for:)(uint64_t a1, void *a2)
{
  type metadata accessor for CheckedContinuation<Data, Error>();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = UTType.identifier.getter();
  v9 = MEMORY[0x18D00C850](v8);

  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = partial apply for closure #1 in closure #1 in UIColor.loadData(for:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);

  v13 = [a2 loadDataWithTypeIdentifier:v9 forItemProviderCompletionHandler:v12];
  _Block_release(v12);
}

void type metadata accessor for CheckedContinuation<Data, Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<Data, Error>)
  {
    type metadata accessor for Error();
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<Data, Error>);
    }
  }
}

uint64_t closure #1 in closure #1 in UIColor.loadData(for:)(uint64_t a1, unint64_t a2, id a3)
{
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      v4 = type metadata accessor for TransferableError();
      lazy protocol witness table accessor for type DataRepresentation<Color> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6965BC8], v4);
      a3 = 0;
    }

    v6 = a3;
    type metadata accessor for CheckedContinuation<Data, Error>();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    type metadata accessor for CheckedContinuation<Data, Error>();
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t partial apply for closure #1 in closure #1 in UIColor.loadData(for:)(uint64_t a1, unint64_t a2, void *a3)
{
  type metadata accessor for CheckedContinuation<Data, Error>();

  return closure #1 in closure #1 in UIColor.loadData(for:)(a1, a2, a3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  outlined consume of Data?(v4, v8);
}

uint64_t lazy protocol witness table accessor for type DataRepresentation<Color> and conformance DataRepresentation<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.onInteractiveResizeChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for OnInteractiveResizeChangeModifier);
}

uint64_t static OnInteractiveResizeChangeModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v12 = *(a2 + 3);
  v7 = a2[5];
  v8 = *(a2 + 4);
  v14 = *(a2 + 3);
  v15 = v8;
  v16 = *(a2 + 20);
  lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput();

  PropertyList.subscript.getter();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher();
  Attribute.init<A>(body:value:flags:update:)();
  v9 = AGGraphSetFlags();
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v13 = v7;
  return a3(v9, v11);
}

unsigned __int8 *OnInteractiveResizeChangeModifier.ActionDispatcher.updateValue()()
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v2 = *result;
    if (v2 != *(v0 + 12))
    {
      Value = AGGraphGetValue();
      v5 = *Value;
      v4 = Value[1];
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      *(v6 + 32) = v2;
      swift_retain_n();
      static Update.enqueueAction(reason:_:)();

      *(v0 + 12) = v2;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OnInteractiveResizeChangeModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher();
  Attribute.init<A>(body:value:flags:update:)();
  v5 = AGGraphSetFlags();
  return a3(v5, a2);
}

unint64_t lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput()
{
  result = lazy protocol witness table cache variable for type InteractiveResizeInput and conformance InteractiveResizeInput;
  if (!lazy protocol witness table cache variable for type InteractiveResizeInput and conformance InteractiveResizeInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractiveResizeInput and conformance InteractiveResizeInput);
  }

  return result;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance InteractiveResizeInput@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static InteractiveResizeInput.defaultValue;
  *a1 = static InteractiveResizeInput.defaultValue;
  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance InteractiveResizeChangeViewGraphFeature()
{
  v1 = *v0;
  v3 = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type InteractiveResizeInput and conformance InteractiveResizeInput();
  result = PropertyList.subscript.setter();
  *(v1 + 20) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher()
{
  result = lazy protocol witness table cache variable for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher;
  if (!lazy protocol witness table cache variable for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnInteractiveResizeChangeModifier.ActionDispatcher and conformance OnInteractiveResizeChangeModifier.ActionDispatcher);
  }

  return result;
}

void *_IntelligenceSupport.SummarySymbolHost.__allocating_init(rootView:)(unsigned __int8 *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized _UIHostingView.init(rootView:)(*a1, *(a1 + 1), *(a1 + 2));
  v5 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v4;
}

uint64_t @objc _IntelligenceSupport.SummarySymbolHost.isOn.getter(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  return *(a1 + v2);
}

uint64_t _IntelligenceSupport.SummarySymbolHost.isOn.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  return *(v0 + v1);
}

void @objc _IntelligenceSupport.SummarySymbolHost.isOn.setter(void *a1, uint64_t a2, char a3)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  *(a1 + v5) = a3;
  v6 = a1;
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t _IntelligenceSupport.SummarySymbolHost.isOn.setter(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  *(v1 + v3) = a1;
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t key path setter for _IntelligenceSupport.SummarySymbolHost.isOn : _IntelligenceSupport.SummarySymbolHost(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  swift_beginAccess();
  *(v3 + v4) = v2;
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*_IntelligenceSupport.SummarySymbolHost.isOn.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return _IntelligenceSupport.SummarySymbolHost.isOn.modify;
}

void _IntelligenceSupport.SummarySymbolHost.isOn.modify(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 24) + *(*a1 + 32)) = *(*a1 + 40);
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  free(v1);
}

id @objc _IntelligenceSupport.SummarySymbolHost.font.getter(void *a1)
{
  v1 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60));
  swift_beginAccess();
  return v1[1];
}

id _IntelligenceSupport.SummarySymbolHost.font.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  v2 = *(v1 + 1);

  return v2;
}

void @objc _IntelligenceSupport.SummarySymbolHost.font.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = a3;
  v9 = a1;
  v10 = *(v5 + 1);
  *v5 = v6;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void _IntelligenceSupport.SummarySymbolHost.font.setter(void *a1)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = a1;
  v7 = *(v3 + 1);
  *v3 = v4;
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

id key path getter for _IntelligenceSupport.SummarySymbolHost.font : _IntelligenceSupport.SummarySymbolHost@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x60);
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = v4;

  return v4;
}

uint64_t key path setter for _IntelligenceSupport.SummarySymbolHost.font : _IntelligenceSupport.SummarySymbolHost(void **a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x60));
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v2;
  v7 = *(v3 + 1);
  *v3 = v4;
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*_IntelligenceSupport.SummarySymbolHost.font.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 1);
  *(v4 + 24) = v7;
  v8 = v7;
  return _IntelligenceSupport.SummarySymbolHost.font.modify;
}

void _IntelligenceSupport.SummarySymbolHost.font.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = (*(*a1 + 32) + *(*a1 + 40));
  v6 = *v5;
  v7 = *v4;
  v8 = v7;
  v9 = *(v5 + 1);
  *v5 = v6;
  *(v5 + 1) = v7;
  if (a2)
  {
    v10 = v7;

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    v8 = *v4;
  }

  else
  {

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  free(v3);
}

id @objc _IntelligenceSupport.SummarySymbolHost.foregroundColor.getter(void *a1)
{
  v1 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v2 = v6;
  v3 = v7;
  v4 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  return v4;
}

uint64_t _IntelligenceSupport.SummarySymbolHost.foregroundColor.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  swift_beginAccess();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v2 = v6;
  v3 = v7;
  v4 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  return v4;
}

void @objc _IntelligenceSupport.SummarySymbolHost.foregroundColor.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_beginAccess();
  v6 = *(v5 + 1);
  v7 = *(v5 + 2);
  v14 = *v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  v8 = a3;
  v9 = a1;
  v10 = v6;
  v11 = v7;
  _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
  v13 = *(v5 + 1);
  v12 = *(v5 + 2);
  *v5 = v14;
  *(v5 + 8) = v15;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void _IntelligenceSupport.SummarySymbolHost.foregroundColor.setter(void *a1)
{
  v2 = v1;
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v12 = *v4;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  v7 = a1;
  v8 = v5;
  v9 = v6;
  _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
  v11 = *(v4 + 1);
  v10 = *(v4 + 2);
  *v4 = v12;
  *(v4 + 8) = v13;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void key path getter for _IntelligenceSupport.SummarySymbolHost.foregroundColor : _IntelligenceSupport.SummarySymbolHost(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x60);
  swift_beginAccess();
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v4 = v7;
  v5 = v8;
  v6 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  *a2 = v6;
}

uint64_t key path setter for _IntelligenceSupport.SummarySymbolHost.foregroundColor : _IntelligenceSupport.SummarySymbolHost(void **a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0x60));
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v12 = *v3;
  *&v13 = v4;
  *(&v13 + 1) = v5;
  v6 = v2;
  v7 = v4;
  v8 = v5;
  _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
  v10 = *(v3 + 1);
  v9 = *(v3 + 2);
  *v3 = v12;
  *(v3 + 8) = v13;

  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*_IntelligenceSupport.SummarySymbolHost.foregroundColor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v11 = *(v6 + 1);
  v12 = *(v6 + 2);
  v7 = v11;
  v8 = v12;
  v9 = _IntelligenceSupport.AnimatingSummarySymbol.color.getter();

  *(v4 + 24) = v9;
  return _IntelligenceSupport.SummarySymbolHost.foregroundColor.modify;
}

void _IntelligenceSupport.SummarySymbolHost.foregroundColor.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = (*(*a1 + 32) + *(*a1 + 40));
  if (a2)
  {
    v6 = *(v5 + 1);
    v7 = *(v5 + 2);
    v20 = *v5;
    *&v22 = v6;
    *(&v22 + 1) = v7;
    v8 = v3;
    v9 = v6;
    v10 = v7;
    _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
    v11 = *(v5 + 1);
    v12 = *(v5 + 2);
    *v5 = v20;
    *(v5 + 8) = v22;

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  else
  {
    v13 = *(v5 + 1);
    v14 = *(v5 + 2);
    v21 = *v5;
    *&v23 = v13;
    *(&v23 + 1) = v14;
    v15 = v3;
    v16 = v13;
    v17 = v14;
    _IntelligenceSupport.AnimatingSummarySymbol.color.setter();
    v18 = *(v5 + 1);
    v19 = *(v5 + 2);
    *v5 = v21;
    *(v5 + 8) = v23;

    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  free(v2);
}

double @objc _IntelligenceSupport.SummarySymbolHost.baseline.getter(void *a1)
{
  v1 = a1;
  static VerticalAlignment.firstTextBaseline.getter();
  [v1 bounds];
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  ViewRendererHost.alignment(of:at:)();
  v3 = v2;

  return v3;
}

uint64_t _IntelligenceSupport.SummarySymbolHost.baseline.getter()
{
  static VerticalAlignment.firstTextBaseline.getter();
  [v0 bounds];
  type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);

  return ViewRendererHost.alignment(of:at:)();
}

id _IntelligenceSupport.SummarySymbolHost.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *_IntelligenceSupport.SummarySymbolHost.init(rootView:)(unsigned __int8 *a1)
{
  v1 = specialized _UIHostingView.init(rootView:)(*a1, *(a1 + 1), *(a1 + 2));
  v2 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v1;
}

void type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>)
  {
    lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol();
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _IntelligenceSupport.SummarySymbolHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _IntelligenceSupport.SummarySymbolHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _IntelligenceSupport.SummarySymbolHost()
{
  result = type metadata singleton initialization cache for _IntelligenceSupport.SummarySymbolHost;
  if (!type metadata singleton initialization cache for _IntelligenceSupport.SummarySymbolHost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.indexViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexViewStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance IndexViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type IndexViewBody and conformance IndexViewBody();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance IndexViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type IndexViewBody and conformance IndexViewBody();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t IndexViewStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IndexViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IndexViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t destroy for _IndexViewStyleConfiguration(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
}

uint64_t initializeWithCopy for _IndexViewStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 24, a2 + 24, v6);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = *(a2 + 80);
  v10 = v8;

  return a1;
}

void *assignWithCopy for _IndexViewStyleConfiguration(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  __swift_assign_boxed_opaque_existential_1(a1 + 3, a2 + 3);
  v4 = a2[8];
  v5 = a1[8];
  a1[8] = v4;
  v6 = v4;

  a1[9] = a2[9];

  a1[10] = a2[10];
  return a1;
}

uint64_t assignWithTake for _IndexViewStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  v5 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for _IndexViewStyleConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for _IndexViewStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewBody and conformance IndexViewBody()
{
  result = lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody;
  if (!lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody;
  if (!lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewBody and conformance IndexViewBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>)
  {
    type metadata accessor for IndexViewStyleModifier<DefaultIndexViewStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewStyleModifier<DefaultIndexViewStyle> and conformance IndexViewStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for IndexViewStyleModifier<DefaultIndexViewStyle>()
{
  if (!lazy cache variable for type metadata for IndexViewStyleModifier<DefaultIndexViewStyle>)
  {
    lazy protocol witness table accessor for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle();
    v0 = type metadata accessor for IndexViewStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexViewStyleModifier<DefaultIndexViewStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle()
{
  result = lazy protocol witness table cache variable for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle;
  if (!lazy protocol witness table cache variable for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndexViewStyle and conformance DefaultIndexViewStyle);
  }

  return result;
}

uint64_t static Section<>._makeRows(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(&v49 + 1) = a6;
  v50 = a8;
  v42 = a9;
  v131 = *MEMORY[0x1E69E9840];
  v13 = a2[7];
  v127 = a2[6];
  v128 = v13;
  v129 = a2[8];
  v14 = a2[3];
  v123 = a2[2];
  v124 = v14;
  v15 = a2[5];
  v125 = a2[4];
  v126 = v15;
  v16 = a2[1];
  v121 = *a2;
  v17 = *a1;
  v130 = *(a2 + 18);
  v122 = v16;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  v43 = a7;
  LODWORD(v109[0]) = v17;
  v18 = v17;
  v45 = v17;
  *&v49 = a5;
  type metadata accessor for Section();
  v19 = type metadata accessor for _GraphValue();
  type metadata accessor for Binding<Bool>?();
  v44 = v19;
  _GraphValue.subscript.getter();
  v47 = HIDWORD(v130);
  v120 = v130;
  v40 = v107[0];
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v113 = v123;
  v114 = v124;
  v115 = v125;
  v116 = v126;
  v111 = v121;
  v112 = v122;
  LODWORD(v107[0]) = HIDWORD(v130);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(&v121, v109);
  lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  v48 = &v40;
  v61 = a3;
  v62 = a4;
  v63 = __PAIR128__(*(&v49 + 1), a5);
  v21 = *(&v49 + 1);
  v64 = a7;
  v22 = v50;
  v65 = v50;
  LODWORD(v75) = v18;
  _GraphValue.subscript.getter();
  v107[6] = v117;
  v107[7] = v118;
  v107[8] = v119;
  v107[2] = v113;
  v107[3] = v114;
  v107[4] = v115;
  v107[5] = v116;
  v107[0] = v111;
  v107[1] = v112;
  v108 = __PAIR64__(v20, v120);
  v41 = v20;
  v103 = v117;
  v104 = v118;
  v105 = v119;
  v106 = __PAIR64__(v20, v120);
  v99 = v113;
  v100 = v114;
  v101 = v115;
  v102 = v116;
  v97 = v111;
  v98 = v112;
  v23 = *(v21 + 48);
  outlined init with copy of _TableRowInputs(v107, v109);
  v23(v85, v72, &v97, a3, v21);
  v109[6] = v103;
  v109[7] = v104;
  v109[8] = v105;
  v110 = v106;
  v109[2] = v99;
  v109[3] = v100;
  v109[4] = v101;
  v109[5] = v102;
  v109[0] = v97;
  v109[1] = v98;
  outlined destroy of _TableRowInputs(v109);
  v46 = *&v85[0];
  LODWORD(v48) = DWORD2(v85[0]);
  v93 = v127;
  v94 = v128;
  v95 = v129;
  v96 = v130;
  v89 = v123;
  v90 = v124;
  v91 = v125;
  v92 = v126;
  v87 = v121;
  v88 = v122;
  LODWORD(v85[0]) = v47;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(&v121, &v97);
  lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait();
  v24 = Attribute.init<A>(body:value:flags:update:)();
  v55 = a3;
  v56 = a4;
  v57 = v49;
  v58 = v21;
  v25 = v43;
  v59 = v43;
  v60 = v22;
  LODWORD(v53) = v45;
  _GraphValue.subscript.getter();
  v85[6] = v93;
  v85[7] = v94;
  v85[8] = v95;
  v85[2] = v89;
  v85[3] = v90;
  v85[4] = v91;
  v85[5] = v92;
  v85[0] = v87;
  v85[1] = v88;
  v86 = __PAIR64__(v24, v96);
  v47 = v24;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v84 = __PAIR64__(v24, v96);
  v77 = v89;
  v78 = v90;
  v79 = v91;
  v80 = v92;
  v75 = v87;
  v76 = v88;
  v26 = *(v25 + 48);
  outlined init with copy of _TableRowInputs(v85, &v97);
  v26(v72, &v51, &v75, a4, v25);
  v103 = v81;
  v104 = v82;
  v105 = v83;
  v106 = v84;
  v99 = v77;
  v100 = v78;
  v101 = v79;
  v102 = v80;
  v97 = v75;
  v98 = v76;
  outlined destroy of _TableRowInputs(&v97);
  v27 = *&v72[0];
  v28 = DWORD2(v72[0]);
  *&v75 = v46;
  DWORD2(v75) = v48;
  v29 = PreferencesOutputs.subscript.getter();
  if ((v29 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v30 = v29;

  v53 = v27;
  v54 = v28;
  v31 = PreferencesOutputs.subscript.getter();
  if ((v31 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

  v32 = v31;

  *&v72[0] = __PAIR64__(v30, v40);
  DWORD2(v72[0]) = v32;
  MEMORY[0x1EEE9AC00](v33);
  *&v75 = a3;
  *(&v75 + 1) = a4;
  v76 = v49;
  *&v77 = v25;
  *(&v77 + 1) = v50;
  v34 = type metadata accessor for Section<>.HierarchicalTableRowList();
  *(&v40 - 2) = v34;
  *(&v40 - 1) = swift_getWitnessTable();
  _s7SwiftUI7BindingVySbGMaTm_2(0, &lazy cache variable for type metadata for Attribute<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v72, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, (&v40 - 8), v34, MEMORY[0x1E69E73E0], v35, MEMORY[0x1E69E7410], v36);
  v37 = v75;
  v38 = PreferencesOutputs.init()();
  v51 = *(&v129 + 1);
  v52 = v130;
  MEMORY[0x1EEE9AC00](v38);
  *(&v40 - 4) = v37;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  v72[6] = v93;
  v72[7] = v94;
  v72[8] = v95;
  v72[2] = v89;
  v72[3] = v90;
  v72[4] = v91;
  v72[5] = v92;
  v72[0] = v87;
  v72[1] = v88;
  v73 = v96;
  v74 = v47;
  outlined destroy of _TableRowInputs(v72);
  v81 = v117;
  v82 = v118;
  v83 = v119;
  v77 = v113;
  v78 = v114;
  v79 = v115;
  v80 = v116;
  v75 = v111;
  v76 = v112;
  v84 = __PAIR64__(v41, v120);
  return outlined destroy of _TableRowInputs(&v75);
}

uint64_t closure #1 in static Section<>._makeRows(content:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for Section();
  v3 = *(v2 + 52);
  v9[2] = v2;
  type metadata accessor for Binding<Bool>?();
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static Section<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for Section();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #3 in static Section<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Section();
  v6 = *(v5 + 44);
  v10[2] = v5;
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #1 in Section<>.HeaderViewVisitor.visit<A, B>(rowValue:view:children:traits:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = AnyView.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t Section<>.HierarchicalTableRowList.value.getter@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of TableRowList(Value, v14);
  v3 = AGGraphGetValue();
  outlined init with copy of TableRowList(v3, v12);
  type metadata accessor for Binding<Bool>?();
  v4 = AGGraphGetValue();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  a1[3] = type metadata accessor for Section<>.HierarchicalGenerator();
  a1[4] = &protocol witness table for Section<A, B, C><>.HierarchicalGenerator;
  v8 = swift_allocObject();
  v9 = v14[1];
  *(v8 + 16) = v14[0];
  *(v8 + 32) = v9;
  v10 = v12[1];
  *(v8 + 56) = v12[0];
  *a1 = v8;
  *(v8 + 48) = v15;
  *(v8 + 72) = v10;
  *(v8 + 88) = v13;
  *(v8 + 96) = v5;
  *(v8 + 104) = v6;
  *(v8 + 112) = v7;
  return outlined copy of Binding<Int>?(v5, v6);
}

uint64_t Section<>.HierarchicalGenerator.visitRows<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v10 = *(a3 + 48);
  v11 = *(a3 + 24);
  v41 = v10;
  v40 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v33 - v13;
  v14 = *(v5 + 80);
  v15 = *(v5 + 88);
  v16 = *(v5 + 96);
  if (v15 && (v44 = *(v5 + 80), v45 = v15, LOBYTE(v46) = v16 & 1, _s7SwiftUI7BindingVySbGMaTm_2(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](v55), (v55[0] & 1) == 0))
  {
    v56 = &type metadata for EmptyTableRowGenerator;
    v57 = &protocol witness table for EmptyTableRowGenerator;
    if (*a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    outlined init with copy of TableRowList(v5 + 40, v55);
    if (*a2)
    {
LABEL_4:
      v17 = v56;
      v18 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v19 = (v18[1])(a1, a2, v42, a5, v17, v18);
      goto LABEL_10;
    }
  }

  v34 = a5;
  v35 = v12;
  v36 = a1;
  v20 = *(a3 + 16);
  v21 = *(a3 + 56);
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v33 = *(a3 + 32);
  outlined init with copy of TableRowList(v5, v49);
  v22 = v50;
  v23 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v24 = *(v23 + 8);
  v44 = v20;
  v45 = v40;
  v46 = v33;
  v47 = v41;
  v48 = v21;
  v25 = type metadata accessor for Section<>.HeaderViewVisitor();
  v24(&v53, &v52, v25, &protocol witness table for Section<A, B, C><>.HeaderViewVisitor, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v49);
  if (v54)
  {
    v43 = v54;
  }

  else
  {
    ViewTraitCollection.init()();
  }

  v26 = v35;
  v27 = v34;
  v44 = v14;
  v45 = v15;
  LOBYTE(v46) = v16;

  outlined copy of Binding<Int>?(v14, v15);
  ViewTraitCollection.subscript.setter();
  v28 = AssociatedTypeWitness;
  v29 = v38;
  (*(*(AssociatedTypeWitness - 8) + 56))(v38, 1, 1, AssociatedTypeWitness);
  v49[0] = v53;
  outlined init with copy of TableRowList(v55, &v44);
  v30 = *(v27 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v19 = v30(v29, v49, &v44, &v43, v28, MEMORY[0x1E6981910], AssociatedConformanceWitness, MEMORY[0x1E6981900], v42, v27);

  outlined destroy of Binding<Bool>(&v44, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);

  (*(v39 + 8))(v29, v26);

LABEL_10:
  outlined destroy of TableRowList(v55);
  return v19 & 1;
}

uint64_t Section<>.HierarchicalGenerator.count.getter()
{
  v1 = v0;
  outlined init with copy of TableRowList(v0, v8);
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  LOBYTE(v2) = TableRowGenerator.isEmpty.getter(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v2)
  {
    return 1;
  }

  outlined init with copy of TableRowList(v1, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = (*(v6 + 16))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v7;
}

uint64_t static Section<>._tableRowCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[7];
  v29 = a1[6];
  v30 = v9;
  v31 = a1[8];
  v32 = *(a1 + 18);
  v10 = a1[3];
  v25 = a1[2];
  v26 = v10;
  v11 = a1[5];
  v27 = a1[4];
  v28 = v11;
  v12 = a1[1];
  v23 = *a1;
  v24 = v12;
  result = (*(a6 + 56))(&v23, a3, a6);
  if ((v14 & 1) == 0)
  {
    v15 = a1[7];
    v29 = a1[6];
    v30 = v15;
    v31 = a1[8];
    v32 = *(a1 + 18);
    v16 = a1[3];
    v25 = a1[2];
    v26 = v16;
    v17 = a1[5];
    v27 = a1[4];
    v28 = v17;
    v18 = a1[1];
    v23 = *a1;
    v24 = v18;
    v19 = result;
    v20 = (*(a5 + 56))(&v23, a2, a5);
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    result = v19 + v22;
    if (__OFADD__(v19, v22))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Section<>._containsOutlineSymbol(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[7];
  v25 = a1[6];
  v26 = v9;
  v27 = a1[8];
  v28 = *(a1 + 18);
  v10 = a1[3];
  v21 = a1[2];
  v22 = v10;
  v11 = a1[5];
  v23 = a1[4];
  v24 = v11;
  v12 = a1[1];
  v19 = *a1;
  v20 = v12;
  if ((*(a5 + 64))(&v19))
  {
    v13 = 1;
  }

  else
  {
    v14 = a1[7];
    v25 = a1[6];
    v26 = v14;
    v27 = a1[8];
    v28 = *(a1 + 18);
    v15 = a1[3];
    v21 = a1[2];
    v22 = v15;
    v16 = a1[5];
    v23 = a1[4];
    v24 = v16;
    v17 = a1[1];
    v19 = *a1;
    v20 = v17;
    v13 = (*(a6 + 64))(&v19, a3, a6);
  }

  return v13 & 1;
}

uint64_t Section<>.init<A, B>(header:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28[1] = a3;
  v29 = a2;
  v30 = a8;
  v28[0] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = a5;
  v32 = a6;
  v33 = AssociatedConformanceWitness;
  v34 = a7;
  v20 = type metadata accessor for TableHeaderRowContent();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  (*(v15 + 16))(v18, a1, a6, v21);
  v24 = (*(v15 + 32))(v23, v18, a6);
  v29(v24);
  (*(v15 + 8))(a1, a6);
  v25 = type metadata accessor for EmptyTableRowContent();
  return Section.init(header:content:footer:)(v23, v13, v26, v20, v28[0], v25, v30);
}

uint64_t Section<>.init<A, B>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v27[0] = a3;
  v27[1] = a2;
  v28 = a1;
  v29 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = a5;
  v31 = a6;
  v32 = AssociatedConformanceWitness;
  v33 = a8;
  v19 = type metadata accessor for TableHeaderRowContent();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v27 - v21;
  (v27[0])(v20);
  v23 = (*(v14 + 32))(v22, v17, a6);
  v28(v23);
  v24 = type metadata accessor for EmptyTableRowContent();
  return Section.init(header:content:footer:)(v22, v12, v25, v19, a4, v24, v29);
}

uint64_t Section<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = Text.init(_:tableName:bundle:comment:)();
  *(&v22 + 1) = v11;
  v23 = v12 & 1;
  v24 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = MEMORY[0x1E6981148];
  v16 = (*(*(MEMORY[0x1E6981148] - 8) + 32))(&v25, &v22, MEMORY[0x1E6981148]);
  v22 = v25;
  v23 = v26;
  v24 = v27;
  a2(v16);
  v21[0] = a4;
  v21[1] = v15;
  v21[2] = AssociatedConformanceWitness;
  v21[3] = MEMORY[0x1E6981138];
  v17 = type metadata accessor for TableHeaderRowContent();
  v18 = type metadata accessor for EmptyTableRowContent();
  return Section.init(header:content:footer:)(&v22, v10, v19, v17, a3, v18, a5);
}

uint64_t Section<>.init<A, B>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a2;
  v29 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v13 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  *&v34 = Text.init<A>(_:)();
  *(&v34 + 1) = v18;
  v35 = v19 & 1;
  v36 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = MEMORY[0x1E6981148];
  v23 = (*(*(MEMORY[0x1E6981148] - 8) + 32))(&v37, &v34, MEMORY[0x1E6981148]);
  v34 = v37;
  v35 = v38;
  v36 = v39;
  v28(v23);
  (*(v13 + 8))(a1, a5);
  v30 = a4;
  v31 = v22;
  v32 = AssociatedConformanceWitness;
  v33 = MEMORY[0x1E6981138];
  v24 = type metadata accessor for TableHeaderRowContent();
  v25 = type metadata accessor for EmptyTableRowContent();
  return Section.init(header:content:footer:)(&v34, v11, v26, v24, a3, v25, v29);
}

uint64_t Section<>.init<A>(content:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  a1();
  v8 = type metadata accessor for EmptyTableRowContent();
  return Section.init(header:content:footer:)(v8, v7, v9, v8, a2, v8, a3);
}

uint64_t Section<>.init<A, B>(isExpanded:content:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[1] = a6;
  v22 = a5;
  v25 = a3;
  v23 = a1;
  v24 = a2;
  v13 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = a8;
  v27 = a9;
  v28 = AssociatedConformanceWitness;
  v29 = a11;
  type metadata accessor for TableHeaderRowContent();
  type metadata accessor for EmptyTableRowContent();
  v17 = a7 + *(type metadata accessor for Section() + 52);
  v18 = a4();
  v22(v18);
  result = (*(v13 + 32))(a7, v15, a9);
  v20 = v24;
  *v17 = v23;
  *(v17 + 8) = v20;
  *(v17 + 16) = v25;
  return result;
}

uint64_t Section<>.init<A>(_:isExpanded:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  Section<>.init<A, B>(isExpanded:content:header:)(a5, a6, a7, a8, partial apply for closure #1 in Section<>.init<A>(_:isExpanded:content:), v14, a9, a12, MEMORY[0x1E6981148], a13, MEMORY[0x1E6981138]);
}

uint64_t Section<>.init<A, B>(_:isExpanded:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a6;
  v15 = a7;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = a1;
  Section<>.init<A, B>(isExpanded:content:header:)(a2, a3, a4, a5, partial apply for closure #1 in Section<>.init<A, B>(_:isExpanded:content:), v13, a8, a7, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138]);
  return (*(*(a9 - 8) + 8))(a1, a9);
}

uint64_t closure #1 in Section<>.init<A, B>(_:isExpanded:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t static EmptyTableRowContent._makeRows(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 136);
  v3 = *(a2 + 144);
  PreferencesOutputs.init()();
  v7 = &type metadata for EmptyTableRowGenerator;
  v8 = &protocol witness table for EmptyTableRowGenerator;
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of TableRowList(&v5);
  v5 = v2;
  v6 = v3;
  return PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t closure #1 in TableHeaderRowContent.tableRowBody.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v10, v11, v12);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  return (*(v7 + 8))(v9, a3);
}

unint64_t lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait()
{
  result = lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait;
  if (!lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait()
{
  result = lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait;
  if (!lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for EmptyTableRowContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Section<>.HeaderViewVisitor.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = *a3;
  v14[1] = *(a4 + 16);
  v15 = *(a4 + 32);
  v16 = a5;
  v17 = a6;
  v18 = *(a4 + 40);
  v19 = *(a4 + 56);
  v20 = a7;
  v21 = a8;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Section<>.HeaderViewVisitor.visit<A, B>(rowValue:view:children:traits:), v14, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v11, &v22);
  v12 = v22;

  *v9 = v12;

  v9[1] = v10;
  return 0;
}

uint64_t destroy for Section<>.HierarchicalGenerator(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  if (*(a1 + 88))
  {
  }

  return result;
}

uint64_t initializeWithCopy for Section<>.HierarchicalGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  v6 = *(a2 + 88);
  if (v6)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v6;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  return a1;
}

uint64_t assignWithCopy for Section<>.HierarchicalGenerator(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1((a1 + 40), (a2 + 40));
  v4 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (v4)
    {
      *(a1 + 80) = *(a2 + 80);

      *(a1 + 88) = *(a2 + 88);

      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1 + 80, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v5 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  return a1;
}

uint64_t assignWithTake for Section<>.HierarchicalGenerator(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 88))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 88);
  if (!v5)
  {
    outlined destroy of Binding<Bool>(a1 + 80, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
LABEL_5:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    return a1;
  }

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for Section<>.HierarchicalGenerator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for Section<>.HierarchicalGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Section<>.HeaderViewVisitor()
{
}

void *initializeBufferWithCopyOfBuffer for Section<>.HeaderViewVisitor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for Section<>.HeaderViewVisitor(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for Section<>.HeaderViewVisitor(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t SystemSegmentItem.accessibilityIdentifier.getter()
{
  outlined init with copy of PlatformItemList.Item.Accessibility?(v0 + 536, v7);
  if (!v8)
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v7, type metadata accessor for PlatformItemList.Item.Accessibility?);
    return 0;
  }

  outlined init with copy of AccessibilityProperties(v7, v5);
  outlined destroy of PlatformItemList.Item.Accessibility(v7);
  v1 = v5[0];
  v2 = v5[1];
  v3 = v6;

  outlined destroy of AccessibilityProperties(v5);
  if (!v2)
  {
    return 0;
  }

  if (v3 >= 2)
  {

    return 0;
  }

  return v1;
}

uint64_t SystemSegmentItem.accessibilityHint.getter()
{
  outlined init with copy of PlatformItemList.Item.Accessibility?(v0 + 536, v9);
  if (v10)
  {
    AccessibilityProperties.hints.getter();
    v7 = v11;
    v8 = v12;
    v5 = 0;
    v6 = 0;

    MEMORY[0x18D005BE0](&v4, v1);
    v2 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();

    outlined destroy of PlatformItemList.Item.Accessibility(v9);
  }

  else
  {
    outlined destroy of PlatformItemList.Item.Accessibility?(v9, type metadata accessor for PlatformItemList.Item.Accessibility?);
    return 0;
  }

  return v2;
}

char *initializeBufferWithCopyOfBuffer for SystemSegmentItem(char *a1, char **a2)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = &v6[(v5 + 16) & ~v5];
    goto LABEL_58;
  }

  v8 = a2[1];
  v7 = a2[2];
  *(a1 + 1) = v8;
  *(a1 + 2) = v7;
  *(a1 + 3) = a2[3];
  a1[32] = *(a2 + 32);
  v9 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v9;
  a1[56] = *(a2 + 56);
  v10 = a2[24];
  v11 = v6;
  v12 = v8;

  if (v10 >> 1 != 4294967294)
  {
    v22 = *(a2 + 72);
    if (v22 == 255)
    {
      *(a1 + 8) = a2[8];
      a1[72] = *(a2 + 72);
    }

    else
    {
      v23 = a2[8];
      outlined copy of GraphicsImage.Contents(v23, *(a2 + 72));
      *(a1 + 8) = v23;
      a1[72] = v22;
      v10 = a2[24];
    }

    *(a1 + 10) = a2[10];
    *(a1 + 88) = *(a2 + 11);
    a1[104] = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    a1[170] = *(a2 + 170);
    a1[171] = *(a2 + 171);
    if (v10 >> 1 == 0xFFFFFFFF)
    {
      v24 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v24;
    }

    else
    {
      v25 = a2[22];
      v26 = a2[23];
      v27 = a2[25];
      outlined copy of AccessibilityImageLabel(v25, v26, v10);
      *(a1 + 22) = v25;
      *(a1 + 23) = v26;
      *(a1 + 24) = v10;
      *(a1 + 25) = v27;
    }

    v28 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v28;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    a1[232] = *(a2 + 232);
    v29 = a2[30];
    *(a1 + 30) = v29;
    *(a1 + 124) = *(a2 + 124);
    a1[250] = *(a2 + 250);
    swift_unknownObjectRetain();

    v30 = v29;
    v18 = a2[33];
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_15:
    v31 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v31;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_16;
  }

  v13 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v13;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v14 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v14;
  v15 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v15;
  v16 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v16;
  v17 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v17;
  v18 = a2[33];
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 32) = a2[32];
  *(a1 + 33) = v18;
  v19 = a2[34];

  if (v19 >= 2)
  {
    v20 = v19;
  }

  *(a1 + 34) = v19;
  *(a1 + 70) = *(a2 + 70);
  a1[284] = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v21 = a2[37];
  *(a1 + 36) = a2[36];
  *(a1 + 37) = v21;

LABEL_16:
  v32 = a2[42];
  v105 = v4;
  if (v32 >> 2 == 0xFFFFFFFF)
  {
    v33 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v33;
    *(a1 + 50) = a2[50];
    v34 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v34;
    v35 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v35;
  }

  else
  {
    v36 = a2[38];
    v37 = a2[39];
    v38 = a2[40];
    v39 = a2[41];
    v40 = a2[43];
    v41 = a2[44];
    v42 = a2[45];
    v95 = a2[46];
    v96 = a2[47];
    v98 = a2[48];
    v100 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v36, v37, v38, v39, v32, v40, v41, v42, v95, v96, v98, v100, __dsta);
    *(a1 + 38) = v36;
    *(a1 + 39) = v37;
    *(a1 + 40) = v38;
    *(a1 + 41) = v39;
    *(a1 + 42) = v32;
    *(a1 + 43) = v40;
    *(a1 + 44) = v41;
    *(a1 + 45) = v42;
    *(a1 + 46) = v95;
    *(a1 + 47) = v96;
    *(a1 + 48) = v98;
    *(a1 + 49) = v100;
    v4 = v105;
    *(a1 + 50) = __dsta;
  }

  v43 = a2[52];
  if (v43 == 1)
  {
    v44 = *(a2 + 57);
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = v44;
    a1[472] = *(a2 + 472);
    v45 = *(a2 + 53);
    *(a1 + 408) = *(a2 + 51);
    *(a1 + 424) = v45;
    goto LABEL_29;
  }

  *(a1 + 102) = *(a2 + 102);
  a1[412] = *(a2 + 412);
  if (v43)
  {
    v46 = a2[53];
    *(a1 + 52) = v43;
    *(a1 + 53) = v46;

    v47 = a2[54];
    if (v47)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 27) = *(a2 + 27);
    v49 = a2[56];
    if (v49)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_28;
  }

  *(a1 + 26) = *(a2 + 26);
  v47 = a2[54];
  if (!v47)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = a2[55];
  *(a1 + 54) = v47;
  *(a1 + 55) = v48;

  v49 = a2[56];
  if (!v49)
  {
    goto LABEL_27;
  }

LABEL_24:
  v50 = a2[57];
  *(a1 + 56) = v49;
  *(a1 + 57) = v50;

LABEL_28:
  *(a1 + 58) = a2[58];
  a1[472] = *(a2 + 472);
LABEL_29:
  v51 = a2[61];
  *(a1 + 60) = a2[60];
  *(a1 + 61) = v51;
  *(a1 + 62) = a2[62];
  a1[504] = *(a2 + 504);
  v52 = a2[64];

  if (v52)
  {
    v53 = a2[65];
    *(a1 + 64) = v52;
    *(a1 + 65) = v53;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  a1[528] = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 536, a2 + 67, 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 67) = a2[67];
  *(a1 + 68) = a2[68];
  a1[552] = *(a2 + 552);
  *(a1 + 70) = a2[70];
  a1[568] = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  a1[592] = *(a2 + 592);
  v54 = a1 + 600;
  v55 = a2 + 75;
  v56 = a2[78];

  if (!v56)
  {
    v58 = *(a2 + 77);
    *v54 = *v55;
    *(a1 + 616) = v58;
    *(a1 + 79) = a2[79];
LABEL_39:
    *(a1 + 80) = a2[80];

    goto LABEL_40;
  }

  if (v56 != 1)
  {
    *(a1 + 78) = v56;
    *(a1 + 79) = a2[79];
    (**(v56 - 1))((a1 + 600), (a2 + 75), v56);
    goto LABEL_39;
  }

  v57 = *(a2 + 77);
  *v54 = *v55;
  *(a1 + 616) = v57;
  *(a1 + 632) = *(a2 + 79);
LABEL_40:
  *(a1 + 81) = a2[81];
  a1[656] = *(a2 + 656);
  v59 = a1 + 664;
  v60 = a2 + 83;
  v61 = a2[97];
  if (v61 == 1)
  {
    v62 = *(a2 + 97);
    *(a1 + 760) = *(a2 + 95);
    *(a1 + 776) = v62;
    *(a1 + 792) = *(a2 + 99);
    a1[808] = *(a2 + 808);
    v63 = *(a2 + 89);
    *(a1 + 696) = *(a2 + 87);
    *(a1 + 712) = v63;
    v64 = *(a2 + 93);
    *(a1 + 728) = *(a2 + 91);
    *(a1 + 744) = v64;
    v65 = *(a2 + 85);
    *v59 = *v60;
    *(a1 + 680) = v65;
  }

  else
  {
    *v59 = *v60;
    a1[672] = *(a2 + 672);
    *(a1 + 85) = a2[85];
    a1[688] = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    a1[691] = *(a2 + 691);
    a1[692] = *(a2 + 692);
    *(a1 + 87) = a2[87];
    v66 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v66;
    *(a1 + 92) = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    a1[768] = *(a2 + 768);
    *(a1 + 97) = v61;
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 100) = a2[100];
    a1[808] = *(a2 + 808);
  }

  *(a1 + 102) = a2[102];
  *(a1 + 103) = a2[103];
  *(a1 + 104) = a2[104];

LABEL_44:
  v67 = a1 + 840;
  v68 = a2 + 105;
  v69 = a2[108];
  if (!v69)
  {
    v71 = *(a2 + 107);
    *v67 = *v68;
    *(a1 + 856) = v71;
    *(a1 + 109) = a2[109];
    v72 = a2[110];
    if (!v72)
    {
LABEL_50:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_51;
    }

LABEL_48:
    v73 = a2[111];
    *(a1 + 110) = v72;
    *(a1 + 111) = v73;

    goto LABEL_51;
  }

  if (v69 != 1)
  {
    *(a1 + 108) = v69;
    *(a1 + 109) = a2[109];
    (**(v69 - 1))(v67, v68);
    v72 = a2[110];
    if (!v72)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v70 = *(a2 + 107);
  *v67 = *v68;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 111) = a2[111];
LABEL_51:
  v74 = a2[112];
  *(a1 + 112) = v74;
  *(a1 + 113) = a2[113];
  *(a1 + 114) = a2[114];
  *(a1 + 115) = a2[115];
  *(a1 + 116) = a2[116];
  *(a1 + 117) = a2[117];
  *(a1 + 118) = a2[118];
  *(a1 + 476) = *(a2 + 476);
  a1[954] = *(a2 + 954);
  v75 = *(v4 + 112);
  __dst = &a1[v75];
  v76 = a2 + v75;
  v77 = type metadata accessor for CommandOperation();
  v99 = *(v77 - 8);
  v101 = *(v99 + 48);
  v78 = v74;

  if (v101(v76, 1, v77))
  {
    type metadata accessor for CommandOperation?();
    memcpy(__dst, v76, *(*(v79 - 8) + 64));
    v80 = v105;
  }

  else
  {
    *__dst = *v76;
    v81 = *(v77 + 20);
    v82 = &__dst[v81];
    v83 = &v76[v81];
    v102 = v76;
    v84 = v77;
    v85 = *v83;
    v86 = *(v83 + 1);
    v87 = v83[16];
    outlined copy of Text.Storage(*v83, v86, v87);
    *v82 = v85;
    *(v82 + 1) = v86;
    v82[16] = v87;
    *(v82 + 3) = *(v83 + 3);
    v88 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v89 = type metadata accessor for UUID();
    v97 = *(*(v89 - 8) + 16);

    v97(&v82[v88], &v83[v88], v89);
    v90 = *(v84 + 24);
    v91 = &__dst[v90];
    v92 = &v102[v90];
    if (*v92)
    {
      v93 = v92[1];
      *v91 = *v92;
      *(v91 + 1) = v93;
    }

    else
    {
      *v91 = *v92;
    }

    v80 = v105;
    (*(v99 + 56))(__dst, 0, 1, v84);
  }

  a1[v80[29]] = *(a2 + v80[29]);
  a1[v80[30]] = *(a2 + v80[30]);
  a1[v80[31]] = *(a2 + v80[31]);
  a1[v80[32]] = *(a2 + v80[32]);
  a1[v80[33]] = *(a2 + v80[33]);
  *&a1[v80[34]] = *(a2 + v80[34]);
LABEL_58:

  return a1;
}