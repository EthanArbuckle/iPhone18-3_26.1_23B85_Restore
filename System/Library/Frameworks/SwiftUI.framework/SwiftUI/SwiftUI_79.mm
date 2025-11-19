uint64_t assignWithCopy for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 24))(v14, v15, v9);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 24))((*(v11 + 40) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v11 + 40) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t initializeWithTake for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 32))(v14, v15, v9);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 32))((*(v11 + 32) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v11 + 32) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t assignWithTake for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 40))(v14, v15, v9);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 40))((*(v11 + 24) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v11 + 24) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _DiscreteSymbolEffectModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(type metadata accessor for SymbolEffectOptions() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v14 + 80);
  if (*(v14 + 84) <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  if (a2 > v18)
  {
    v20 = ((v16 + (v19 & ~v15) + v17) & ~v17) + *(v14 + 64);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v18 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 < 2)
      {
LABEL_30:
        if (v18)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_30;
    }

LABEL_17:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = ((v16 + (v19 & ~v15) + v17) & ~v17) + *(v14 + 64);
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v18 + (v26 | v24) + 1;
  }

LABEL_31:
  if (v8 == v18)
  {
    v27 = *(v7 + 48);
    v28 = a1;
    v29 = v8;
    v13 = v6;
LABEL_39:

    return v27(v28, v29, v13);
  }

  v31 = (a1 + v19) & ~v15;
  if (v11 != v18)
  {
    v27 = *(v14 + 48);
    v28 = ((v31 + v16 + v17) & ~v17);
    v29 = *(v14 + 84);
    goto LABEL_39;
  }

  v32 = *(v10 + 48);

  return v32(v31);
}

void storeEnumTagSinglePayload for _DiscreteSymbolEffectModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for SymbolEffectConfiguration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = type metadata accessor for SymbolEffectOptions();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v16 + 80);
  if (v17 <= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + *(v16 + 64);
  if (a3 <= v22)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v22 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v22 < a2)
  {
    v25 = ~v22 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v24 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_33;
  }

  *&a1[v23] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v22)
  {
    v30 = *(v9 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v10;
    v15 = v8;
LABEL_44:

    v30(v31, v32, v33, v15);
    return;
  }

  if (v13 != v22)
  {
    v30 = *(v16 + 56);
    v31 = (((&a1[v18 + v19] & ~v19) + v20 + v21) & ~v21);
    v32 = a2;
    v33 = v17;
    goto LABEL_44;
  }

  v34 = *(v12 + 56);

  v34(&a1[v18 + v19] & ~v19, a2);
}

char *initializeBufferWithCopyOfBuffer for _IndefiniteSymbolEffectModifier(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for SymbolEffectOptions();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    a1[*(a3 + 24)] = a2[*(a3 + 24)];
  }

  return a1;
}

uint64_t initializeWithCopy for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithCopy for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t initializeWithTake for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t type metadata completion function for _IndefiniteSymbolEffectModifier()
{
  result = type metadata accessor for SymbolEffectConfiguration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SymbolEffectOptions();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SymbolEffectTransition(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for SymbolEffectOptions();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t destroy for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for SymbolEffectOptions();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t initializeWithCopy for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithCopy for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t initializeWithTake for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithTake for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t type metadata completion function for SymbolEffectTransition()
{
  result = type metadata accessor for SymbolEffectConfiguration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SymbolEffectOptions();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>();
    lazy protocol witness table accessor for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>)
  {
    type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(255, &lazy cache variable for type metadata for PlaceholderContentView<SymbolEffectTransition>, type metadata accessor for SymbolEffectTransition, MEMORY[0x1E697FEC0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>)
  {
    type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(255, &lazy cache variable for type metadata for PlaceholderContentView<SymbolEffectTransition>, type metadata accessor for SymbolEffectTransition, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>);
  }

  return result;
}

void type metadata accessor for (DrawLayerBehavior?, DrawLayerBehavior?)()
{
  if (!lazy cache variable for type metadata for (DrawLayerBehavior?, DrawLayerBehavior?))
  {
    type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(255, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DrawLayerBehavior?, DrawLayerBehavior?));
    }
  }
}

uint64_t outlined init with copy of WiggleSymbolEffect.WiggleStyle?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (DrawLayerBehavior?, DrawLayerBehavior?)(uint64_t a1)
{
  type metadata accessor for (DrawLayerBehavior?, DrawLayerBehavior?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DrawLayerBehavior and conformance DrawLayerBehavior()
{
  result = lazy protocol witness table cache variable for type DrawLayerBehavior and conformance DrawLayerBehavior;
  if (!lazy protocol witness table cache variable for type DrawLayerBehavior and conformance DrawLayerBehavior)
  {
    type metadata accessor for DrawLayerBehavior();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DrawLayerBehavior and conformance DrawLayerBehavior);
  }

  return result;
}

uint64_t outlined init with take of SymbolEffectOptions.RepeatOption?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SwiftUI::WindowLayoutProperties __swiftcall WindowLayoutProperties.init()()
{
  result.triggers.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::WindowLayoutUpdateTriggers __swiftcall WindowLayoutUpdateTriggers.init(rawValue:)(Swift::Int rawValue)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers()
{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

uint64_t ViewGraphDelegate.popoverBridge.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingViewProvider);
  (*(a2 + 16))(v9, v4, v4, a1, a2);
  if (!v9[0])
  {
    return 0;
  }

  v5 = v9[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 48))(ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t ViewGraphDelegate.environmentOverride.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingViewProvider);
  (*(a3 + 16))(&v11, v7, v7, a2, a3);
  if (!v11)
  {
    return outlined consume of EnvironmentValues?(v6);
  }

  v8 = v12;
  ObjectType = swift_getObjectType();
  v11 = v6;
  v12 = v5;
  (*(v8 + 16))(&v11, ObjectType, v8);
  return swift_unknownObjectRelease();
}

uint64_t ViewGraphDelegate.hostingView.getter(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = type metadata accessor for ContainerBackgroundHost(0, a3);
  (*(a2 + 16))(&v7, v5, v5, a1, a2);
  return v7;
}

uint64_t outlined destroy of HostingControllerOverrides?(uint64_t a1)
{
  type metadata accessor for HostingControllerOverrides?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for HostingControllerOverrides?()
{
  if (!lazy cache variable for type metadata for HostingControllerOverrides?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HostingControllerOverrides?);
    }
  }
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = *(a1 + 56) + 80 * v12;
    v28 = *v14;
    v29 = *(v14 + 16);
    v30 = *(v14 + 32);
    v26 = *(v14 + 41);
    v27 = *(v14 + 57);
    if (!*(v14 + 40))
    {
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15 + 1, 1);
        v2 = v31;
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v13);
      result = Hasher._finalize()();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v17) >> 6;
        while (++v19 != v22 || (v21 & 1) == 0)
        {
          v23 = v19 == v22;
          if (v19 == v22)
          {
            v19 = 0;
          }

          v21 |= v23;
          v24 = *(v16 + 8 * v19);
          if (v24 != -1)
          {
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v2 + 48) + 8 * v20) = v13;
      v25 = *(v2 + 56) + 80 * v20;
      *v25 = v28;
      *(v25 + 16) = v29;
      *(v25 + 41) = v26;
      *(v25 + 32) = v30;
      *(v25 + 40) = 0;
      *(v25 + 57) = v27;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

{
  v2 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (v9 << 9) | (8 * v11);
      v13 = *(*(a1 + 48) + v12);
      outlined init with copy of WeakBox<EntityGestureResponder>(*(a1 + 56) + v12, &v33, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
      v32 = v13;
      outlined init with take of (key: UInt64, value: WeakBox<EntityGestureResponder>)(&v32, v30);
      if (swift_weakLoadStrong())
      {
        break;
      }

      result = outlined destroy of (key: UInt64, value: WeakBox<EntityGestureResponder>)(v30);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    outlined init with copy of WeakBox<EntityGestureResponder>(&v31, v29, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
    outlined init with take of (key: UInt64, value: WeakBox<EntityGestureResponder>)(v30, &v27);
    outlined init with take of WeakBox<EntityGestureResponder>(v29, v26);
    v14 = *(v2 + 16);
    if (*(v2 + 24) <= v14)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14 + 1, 1);
      v2 = v34;
    }

    v15 = v27;
    result = MEMORY[0x18D00F6C0](*(v2 + 40), v27);
    v16 = v2 + 64;
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v16 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = 8 * v20;
    *(*(v2 + 48) + v25) = v15;
    outlined init with take of WeakBox<EntityGestureResponder>(v26, *(v2 + 56) + v25);
    ++*(v2 + 16);
    result = outlined destroy of WeakBox<EntityGestureResponder>(&v28, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.indices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;

  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1 << *(a1 + 32);
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  return result;
}

Swift::Int SpatialEventCollection.Event.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t SpatialEventCollection.Event.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  MEMORY[0x18D00F6F0](*v0);
  v10 = 0.0;
  if (v1 != 0.0)
  {
    v10 = v1;
  }

  MEMORY[0x18D00F730](*&v10);
  if (v2 <= 2)
  {
    if (v2)
    {
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    }
  }

  else if (v2 == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  MEMORY[0x18D00F6F0](v2);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x18D00F730](*&v11);
  if (v3 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v3;
  }

  MEMORY[0x18D00F730](*&v12);
  MEMORY[0x18D00F6F0](v5);
  result = MEMORY[0x18D00F6F0](v6);
  if ((v9 & 1) == 0)
  {
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x18D00F730](v14);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    return MEMORY[0x18D00F730](v15);
  }

  return result;
}

uint64_t SpatialEventCollection.Event.Kind.hash(into:)()
{
  v1 = *v0;
  if (*v0 > 2u)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    return MEMORY[0x18D00F6F0](v1);
  }

  if (!*v0)
  {
    return MEMORY[0x18D00F6F0](v1);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t SpatialEventCollection.Event.InputDevicePose.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18D00F730](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x18D00F730](*&v3);
}

uint64_t static SpatialEventCollection.Event.Kind.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 2u)
  {
    if (*a1)
    {
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v4 = v2 == 3;
    v2 = 1;
    if (!v4)
    {
      v2 = 2;
    }
  }

  if (*a2 > 2u)
  {
    v4 = v3 == 3;
    v3 = 1;
    if (!v4)
    {
      v3 = 2;
    }

    return v2 == v3;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

LABEL_13:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int SpatialEventCollection.Event.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    goto LABEL_6;
  }

  if (!v1)
  {
LABEL_6:
    MEMORY[0x18D00F6F0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpatialEventCollection.Event.Kind(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 2u)
  {
    if (*a1)
    {
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v4 = v2 == 3;
    v2 = 1;
    if (!v4)
    {
      v2 = 2;
    }
  }

  if (*a2 > 2u)
  {
    v4 = v3 == 3;
    v3 = 1;
    if (!v4)
    {
      v3 = 2;
    }

    return v2 == v3;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

LABEL_13:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialEventCollection.Event.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    goto LABEL_6;
  }

  if (!v1)
  {
LABEL_6:
    MEMORY[0x18D00F6F0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpatialEventCollection.Event.Kind()
{
  v1 = *v0;
  if (*v0 > 2u)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    return MEMORY[0x18D00F6F0](v1);
  }

  if (!*v0)
  {
    return MEMORY[0x18D00F6F0](v1);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialEventCollection.Event.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    goto LABEL_6;
  }

  if (!v1)
  {
LABEL_6:
    MEMORY[0x18D00F6F0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int SpatialEventCollection.Event.Phase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int SpatialEventCollection.Event.InputDevicePose.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x18D00F730](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x18D00F730](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialEventCollection.Event.InputDevicePose()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x18D00F730](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x18D00F730](*&v4);
  return Hasher._finalize()();
}

__n128 SpatialEventCollection.Event.inputDevicePose.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 SpatialEventCollection.Event.inputDevicePose.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  return result;
}

__n128 (*SpatialEventCollection.Event.inputDevicePose.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  return SpatialEventCollection.Event.inputDevicePose.modify;
}

__n128 SpatialEventCollection.Event.inputDevicePose.modify(__n128 *a1)
{
  v1 = a1[1].n128_u64[1];
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  return result;
}

Swift::Int SpatialEventCollection.Event.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialEventCollection.Event.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialEventCollection.Event()
{
  Hasher.init(_seed:)();
  SpatialEventCollection.Event.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialEventCollection.Event()
{
  Hasher.init(_seed:)();
  SpatialEventCollection.Event.hash(into:)();
  return Hasher._finalize()();
}

double SpatialEventCollection.subscript.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 80 * v5);
    v8 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v8;
    *(a2 + 57) = *(v7 + 57);
    v9 = v7[1];
    *a2 = *v7;
    *(a2 + 16) = v9;
  }

  else
  {
    *&v9 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
    *(a2 + 40) = 3;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a2 + 72) = 0;
  }

  return *&v9;
}

uint64_t SpatialEventCollection.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v5;
  if (v6)
  {
LABEL_9:
    v12 = (v6 - 1) & v6;
    v13 = (*(v2 + 56) + 80 * (__clz(__rbit64(v6)) | (v7 << 6)));
    v14 = v13[3];
    *(a1 + 32) = v13[2];
    *(a1 + 48) = v14;
    *(a1 + 57) = *(v13 + 57);
    v15 = v13[1];
    *a1 = *v13;
    *(a1 + 16) = v15;
    v10 = v7;
LABEL_10:
    outlined copy of [A : B].Iterator._Variant<A, B>();
    result = outlined consume of Set<UIPress>.Iterator._Variant();
    *v1 = v2;
    v1[1] = v3;
    v1[2] = v4;
    v1[3] = v10;
    v1[4] = v12;
  }

  else
  {
    v8 = (v4 + 64) >> 6;
    if (v8 <= v5 + 1)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = (v4 + 64) >> 6;
    }

    v10 = v9 - 1;
    v11 = v1[3];
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        v12 = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0;
        *(a1 + 40) = 3;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 48) = 0;
        *(a1 + 72) = 0;
        goto LABEL_10;
      }

      v6 = *(v3 + 8 * v7);
      ++v11;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SpatialEventCollection.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = -1 << *(*v1 + 32);
  v3 = ~v2;
  v4 = *v1 + 64;
  v5 = -v2;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v1 + 64);
  *a1 = *v1;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v7;
}

uint64_t SpatialEventCollection.updateWithEvent(_:)(_OWORD *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v9[0] = v3;
  *(v9 + 9) = *(a1 + 57);
  v4 = *&v8[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  *v1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v4, isUniquelyReferenced_nonNull_native);

  *v1 = v7;
  return result;
}

Swift::Void __swiftcall SpatialEventCollection.updateAfterCallback()()
{
  v1 = specialized Dictionary.compactMapValues<A>(_:)(*v0);

  *v0 = v1;
}

BOOL static SpatialEventCollection.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static SpatialEventCollection.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 >= *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result >= *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 < *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SpatialEventCollection.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = _HashTable.startBucket.getter();
  v5 = *(v3 + 36);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  return result;
}

void SpatialEventCollection.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

__n128 SpatialEventCollection.subscript.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Dictionary.subscript.getter(&v6, v7, *a1, *(a1 + 8), *(a1 + 16), *v2);
  v4 = v8[0];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 57) = *(v8 + 9);
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

void *specialized Dictionary.subscript.getter(void *result, _OWORD *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v6 = *(a6 + 56);
    *result = *(*(a6 + 48) + 8 * a3);
    v7 = (v6 + 80 * a3);
    v8 = v7[3];
    a2[2] = v7[2];
    a2[3] = v8;
    *(a2 + 57) = *(v7 + 57);
    v9 = v7[1];
    *a2 = *v7;
    a2[1] = v9;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    outlined init with copy of NavigationDestinationPresentation(*(a5 + 56) + 96 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t SpatialEventCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance SpatialEventCollection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = _HashTable.startBucket.getter();
  v5 = *(v3 + 36);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance SpatialEventCollection(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void (*protocol witness for Collection.subscript.read in conformance SpatialEventCollection(void *a1, uint64_t a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x49uLL);
  }

  *a1 = v5;
  specialized Dictionary.subscript.getter(&v7, v5, *a2, *(a2 + 8), *(a2 + 16), *v2);
  return ListBatchUpdates.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance SpatialEventCollection@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return specialized Collection<>.subscript.getter(&v5, *v2, a2);
}

uint64_t specialized Collection.index(_:offsetBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = a3;
  v8 = result;
  v9 = a6;
  if (a4)
  {
    v11 = a5 + 64;
    result = outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
    v13 = a2;
    v14 = 0;
    v15 = a4 - 1;
    v16 = v13;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v18 = 1 << *(a5 + 32);
      if (v8 >= v18)
      {
        break;
      }

      v19 = v8 >> 6;
      v20 = *(v11 + 8 * (v8 >> 6));
      if (((v20 >> v8) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != v13)
      {
        goto LABEL_22;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v13, v7 & 1);
        v8 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a5 + 72 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v13, v7 & 1);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_5;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v13, v7 & 1);
        v8 = v18;
      }

LABEL_5:
      v7 = 0;
      v13 = v16;
      if (v14++ == v15)
      {
        v9 = a6;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
  v16 = a2;
LABEL_19:
  *v9 = v8;
  *(v9 + 8) = v16;
  *(v9 + 16) = v7 & 1;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance SpatialEventCollection(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance SpatialEventCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance SpatialEventCollection(uint64_t a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = specialized _NativeDictionary.index(after:)(*a1, v5, v6, v3);
  v9 = v8;
  v11 = v10;
  result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v4, v5, v6);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance SpatialEventCollection@<X0>(void *a1@<X8>)
{
  SpatialEventCollection.makeIterator()(a1);
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance SpatialEventCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized static SpatialEventCollection.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v8 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a2 + 24);
    v12 = *(a1 + 16);
    if (v12 <= 2)
    {
      if (v12)
      {
        _diagnoseUnavailableCodeReached()();
        __break(1u);
        goto LABEL_41;
      }

      v13 = 0;
      v14 = 1;
      if (*(a2 + 16) <= 2u)
      {
LABEL_14:
        if (!*(a2 + 16))
        {
          if (v5 == v11)
          {
            v12 = v14;
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_21;
        }

LABEL_41:
        result = _diagnoseUnavailableCodeReached()();
        __break(1u);
        return result;
      }
    }

    else if (v12 == 3)
    {
      v13 = 0;
      v14 = 0;
      v12 = 1;
      if (*(a2 + 16) <= 2u)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0;
      v14 = 0;
      v13 = 1;
      if (*(a2 + 16) <= 2u)
      {
        goto LABEL_14;
      }
    }

    if (*(a2 + 16) == 3)
    {
      if (v5 != v11)
      {
        v12 = 0;
      }
    }

    else if (v5 == v11)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
    if (v12 != 1 || v4 != *(a2 + 32) || v6 != *(a2 + 40) || v7 != *(a2 + 48))
    {
      return 0;
    }

    if (v10)
    {
      if (*(a2 + 72))
      {
        return 1;
      }
    }

    else if ((*(a2 + 72) & 1) == 0 && v9 == *(a2 + 56) && v8 == *(a2 + 64))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection and conformance SpatialEventCollection()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<SpatialEventCollection> and conformance DefaultIndices<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultIndices<SpatialEventCollection>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for DefaultIndices<SpatialEventCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SpatialEventCollection and conformance SpatialEventCollection();
    v7 = a3(a1, &type metadata for SpatialEventCollection, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialEventCollection.Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialEventCollection.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

void *initializeWithCopy for SpatialEventCollection.Iterator(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of [A : B].Iterator._Variant<A, B>();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

void *assignWithCopy for SpatialEventCollection.Iterator(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of [A : B].Iterator._Variant<A, B>();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  outlined consume of Set<UIPress>.Iterator._Variant();
  return a1;
}

uint64_t assignWithTake for SpatialEventCollection.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  outlined consume of Set<UIPress>.Iterator._Variant();
  return a1;
}

uint64_t getEnumTagSinglePayload for SpatialEventCollection.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SpatialEventCollection.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SpatialEventCollection.Index(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for SpatialEventCollection.Index(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for SpatialEventCollection.Index(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v4, v5, v6);
  return a1;
}

uint64_t ListRowConfiguration.background.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double ListRowConfiguration.insets.getter@<D0>(uint64_t a1@<X8>)
{
  EdgeInsets.init(_:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double ListRowConfiguration.insets.setter()
{
  OptionalEdgeInsets.init(_:)();
  *(v0 + 8) = v2;
  *(v0 + 24) = v3;
  *(v0 + 40) = *v4;
  result = *&v4[9];
  *(v0 + 49) = *&v4[9];
  return result;
}

void (*ListRowConfiguration.insets.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  EdgeInsets.init(_:)();
  return ListRowConfiguration.insets.modify;
}

void ListRowConfiguration.insets.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 96);
  if (a2)
  {
    *v2 = v2[5];
    v2[1] = v4;
    *(v2 + 32) = *(v2 + 112);
  }

  else
  {
    *(v2 + 40) = v2[5];
    *(v2 + 56) = v4;
    *(v2 + 72) = *(v2 + 112);
  }

  OptionalEdgeInsets.init(_:)();
  *(v3 + 8) = v5;
  *(v3 + 24) = v6;
  *(v3 + 40) = *v7;
  *(v3 + 49) = *&v7[9];

  free(v2);
}

__n128 ListRowConfiguration.customInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 40);
  result = *(v1 + 49);
  *(a1 + 41) = result;
  return result;
}

__n128 ListRowConfiguration.customInsets.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 40) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 49) = result;
  return result;
}

uint64_t key path getter for ListRowConfiguration.onMove : ListRowConfiguration@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 72);
  if (v3 >= 2)
  {
    v5 = *(result + 80);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    result = outlined copy of AppIntentExecutor?(v3);
    v3 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ListRowConfiguration.onMove : ListRowConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 >= 2uLL)
  {
    v5 = *(a1 + 8);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    outlined copy of AppIntentExecutor?(v3);
    v3 = thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v4 = 0;
  }

  result = _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(*(a2 + 72));
  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  return result;
}

uint64_t ListRowConfiguration.onMove.getter()
{
  v1 = *(v0 + 72);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())??(v1);
  return v1;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())??(uint64_t result)
{
  if (result != 1)
  {
    return outlined copy of AppIntentExecutor?(result);
  }

  return result;
}

uint64_t ListRowConfiguration.onMove.setter(uint64_t a1, uint64_t a2)
{
  result = _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void ListRowConfiguration.sectionSpacing.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 105);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t ListRowConfiguration.sectionSpacing.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  *(v1 + 105) = v3;
  return result;
}

__n128 ContainerValues.listRowConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  MEMORY[0x18D007000](&v10[8]);
  *&v11[16] = 0;
  *&v11[24] = 256;
  *&v12 = v3;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *&v9 = v3;
  ViewTraitCollection.listRowInsets.getter();
  *&v10[8] = v12;
  *&v10[24] = v13;
  *&v10[40] = v14[0];
  *&v10[49] = *(v14 + 9);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v9;
    v5 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @in_guaranteed Transaction) -> (@out ());
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *&v10[72] = v5;
  *v11 = v4;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v11[8] = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *&v11[16] = v3;
  *&v11[24] = WORD4(v9);
  v6 = *v11;
  *(a1 + 64) = *&v10[64];
  *(a1 + 80) = v6;
  *(a1 + 90) = *&v11[10];
  v7 = *&v10[16];
  *a1 = *v10;
  *(a1 + 16) = v7;
  result = *&v10[48];
  *(a1 + 32) = *&v10[32];
  *(a1 + 48) = result;
  return result;
}

uint64_t destroy for ListRowConfiguration(uint64_t a1)
{

  if (*(a1 + 72) >= 2uLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ListRowConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  v4 = (a2 + 72);
  v5 = *(a2 + 72);

  if (v5 > 1)
  {
    v6 = *(a2 + 80);
    *(a1 + 72) = v5;
    *(a1 + 80) = v6;
  }

  else
  {
    *(a1 + 72) = *v4;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithCopy for ListRowConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v7;
  v8 = *(a1 + 72);
  v9 = *(a2 + 72);
  if (v8 == 1)
  {
    if (v9 >= 2)
    {
      goto LABEL_11;
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())?(a1 + 72);
  }

  else if (v8)
  {
    if (v9)
    {
      v10 = *(a2 + 80);
      *(a1 + 72) = v9;
      *(a1 + 80) = v10;

      goto LABEL_12;
    }
  }

  else if (v9)
  {
LABEL_11:
    v11 = *(a2 + 80);
    *(a1 + 72) = v9;
    *(a1 + 80) = v11;

    goto LABEL_12;
  }

  *(a1 + 72) = *(a2 + 72);
LABEL_12:
  *(a1 + 88) = *(a2 + 88);
  v12 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v12;
  return a1;
}

uint64_t outlined destroy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())?(uint64_t a1)
{
  type metadata accessor for (())?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for ListRowConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 72);
  v5 = *(a1 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  if (v5 != 1)
  {
    if (v4 == 1)
    {
      outlined destroy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())?(a1 + 72);
    }

    else if (v5)
    {
      if (v4)
      {
        v7 = *(a2 + 80);
        *(a1 + 72) = v4;
        *(a1 + 80) = v7;

        goto LABEL_5;
      }
    }

    else if (v4)
    {
      v8 = *(a2 + 80);
      *(a1 + 72) = v4;
      *(a1 + 80) = v8;
      goto LABEL_5;
    }
  }

  *(a1 + 72) = *(a2 + 72);
LABEL_5:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 106))
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

uint64_t storeEnumTagSinglePayload for ListRowConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t LinearProgressViewStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t LinearProgressViewStyle.init(tint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
  return result;
}

uint64_t LinearProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  v9 = *(v2 + 32);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>();
  return closure #1 in LinearProgressViewStyle.makeBody(configuration:)(v8, a1, (a2 + *(v6 + 44)));
}

uint64_t closure #1 in LinearProgressViewStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v44 = a3;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && specialized Environment.wrappedValue.getter(*(a1 + 2), *(a1 + 24)) == 2)
  {
    v43 = 0x100000000;
  }

  else
  {
    v43 = *(a2 + *(type metadata accessor for ProgressViewStyleConfiguration(0) + 28));
  }

  v10 = a1[1];
  v50 = *a1;
  v51 = v10;
  v52 = *(a1 + 4);
  v11 = v9;
  LinearProgressViewStyle.progressBar(configuration:)(a2, v9);
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && specialized Environment.wrappedValue.getter(*(a1 + 2), *(a1 + 24)) == 2)
  {
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
  }

  else
  {
    LOBYTE(v46) = *(a2 + *(type metadata accessor for ProgressViewStyleConfiguration(0) + 32));
    static Color.secondary.getter();
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?);
    lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?();
    View.defaultForegroundColor(_:)();

    v12 = v50;
    v13 = *(&v50 + 1);
    v14 = v51;
    v15 = static Font.caption.getter();
    KeyPath = swift_getKeyPath();
    LOBYTE(v46) = v12;
    *(&v46 + 1) = v13;
    *&v47 = v14;
    *(&v47 + 1) = KeyPath;
    *&v48 = v15;
    type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.monospacedDigit()();

    v41 = *(&v50 + 1);
    v42 = v50;
    v39 = *(&v51 + 1);
    v40 = v51;
    v38 = v52;
    v37 = v53;
    v36 = v54;
    v35 = v55;
  }

  v34 = v11;
  v17 = v45;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v11, v45, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
  v18 = v44;
  v19 = BYTE4(v43);
  *v44 = v43;
  v18[1] = v19;
  type metadata accessor for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)();
  v21 = v20;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v17, &v18[*(v20 + 48)], type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
  v22 = &v18[*(v21 + 64)];
  v23 = v42;
  v24 = v41;
  *&v46 = v42;
  *(&v46 + 1) = v41;
  v25 = v40;
  v26 = v39;
  *&v47 = v40;
  *(&v47 + 1) = v39;
  v27 = v38;
  v28 = v37;
  *&v48 = v38;
  *(&v48 + 1) = v37;
  v29 = v36;
  v30 = v35;
  *&v49 = v36;
  *(&v49 + 1) = v35;
  v31 = v47;
  *v22 = v46;
  v22[1] = v31;
  v32 = v49;
  v22[2] = v48;
  v22[3] = v32;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(&v46, &v50, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?);
  outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v34, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
  *&v50 = v23;
  *(&v50 + 1) = v24;
  *&v51 = v25;
  *(&v51 + 1) = v26;
  v52 = v27;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(&v50, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?);
  return outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v17, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
}

uint64_t LinearProgressViewStyle.progressBar(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for LinearUIKitProgressView();
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - v7;
  v8 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ArchivableLinearProgressView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *v2;
  v20 = *(v2 + 8);
  v21 = *(v2 + 32);
  v33 = a1;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(a1, v12, type metadata accessor for ProgressViewStyleConfiguration);
  if (v21)
  {
    outlined init with take of ProgressViewStyleConfiguration(v12, v15, type metadata accessor for ProgressViewStyleConfiguration);
    *&v15[*(v13 + 20)] = v21;
    outlined init with take of ProgressViewStyleConfiguration(v15, v18, type metadata accessor for ArchivableLinearProgressView);
    v22 = v36;
    outlined init with take of ProgressViewStyleConfiguration(v18, v36, type metadata accessor for ArchivableLinearProgressView);
    v23 = v32;
    outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v33, v32, type metadata accessor for ProgressViewStyleConfiguration);
    v24 = v21;
  }

  else
  {
    v25 = specialized Environment.wrappedValue.getter(v19, v20);
    outlined init with take of ProgressViewStyleConfiguration(v12, v15, type metadata accessor for ProgressViewStyleConfiguration);
    *&v15[*(v13 + 20)] = v25;
    outlined init with take of ProgressViewStyleConfiguration(v15, v18, type metadata accessor for ArchivableLinearProgressView);
    v22 = v36;
    outlined init with take of ProgressViewStyleConfiguration(v18, v36, type metadata accessor for ArchivableLinearProgressView);
    v23 = v32;
    outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v33, v32, type metadata accessor for ProgressViewStyleConfiguration);
    v24 = specialized Environment.wrappedValue.getter(v19, v20);
  }

  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>();
  v27 = *(v26 + 44);
  outlined init with take of ProgressViewStyleConfiguration(v23, v5, type metadata accessor for ProgressViewStyleConfiguration);
  *&v5[*(v35 + 20)] = v24;
  v28 = v5;
  v29 = v34;
  outlined init with take of ProgressViewStyleConfiguration(v28, v34, type metadata accessor for LinearUIKitProgressView);
  outlined init with take of ProgressViewStyleConfiguration(v29, v22 + v27, type metadata accessor for LinearUIKitProgressView);
  return swift_retain_n();
}

uint64_t protocol witness for ProgressViewStyle.makeBody(configuration:) in conformance LinearProgressViewStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  v9 = *(v2 + 32);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>();
  return closure #1 in LinearProgressViewStyle.makeBody(configuration:)(v8, a1, (a2 + *(v6 + 44)));
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>)
  {
    type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(255);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>);
    }
  }
}

void type metadata accessor for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)()
{
  if (!lazy cache variable for type metadata for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?))
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label??, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label?, &type metadata for ProgressViewStyleConfiguration.Label, MEMORY[0x1E69E6720]);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?));
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>();
    type metadata accessor for ArchivableLinearProgressView(255);
    type metadata accessor for LinearUIKitProgressView();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>()
{
  if (!lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>)
  {
    v0 = type metadata accessor for InterfaceIdiomPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>);
    }
  }
}

void type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>();
    type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, type metadata accessor for [AnyFontModifier], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for LinearProgressViewStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for LinearProgressViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>)
  {
    type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(255);
    lazy protocol witness table accessor for type VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>> and conformance VStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>();
    lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized MutableCollection<>.sort(by:)(char **a1, char a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, a2 & 1);
  *a1 = v4;
}

uint64_t PagingScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, __int128 *a2)
{
  v3 = a2[11];
  *&v57[96] = a2[10];
  *&v57[112] = v3;
  v4 = a2[13];
  v58 = a2[12];
  v59 = v4;
  v5 = a2[7];
  *&v57[32] = a2[6];
  *&v57[48] = v5;
  v6 = a2[9];
  *&v57[64] = a2[8];
  *&v57[80] = v6;
  v7 = a2[3];
  v55 = a2[2];
  v56 = v7;
  v8 = a2[5];
  *v57 = a2[4];
  *&v57[16] = v8;
  v9 = a2[1];
  v53 = *a2;
  v54 = v9;
  _s7SwiftUI20ScrollTargetBehaviorPAAE05clampD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7contextyAA0cD0Vz_AA0cdE7ContextVtFAA011ViewAlignedcdE0V_Tt1B5Tm(a1, &v53);
  result = ScrollTarget.rect.getter();
  v13 = v12;
  v14 = v57[120];
  if ((v57[120] & 2) != 0)
  {
    v15 = v11;
    v50 = *&v57[72];
    v51 = *&v57[88];
    v52 = *&v57[104];
    v46 = *&v57[8];
    v47 = *&v57[24];
    v48 = *&v57[40];
    v49 = *&v57[56];
    v36 = *&v57[72];
    v37 = *&v57[88];
    v38 = *&v57[104];
    v32 = *&v57[8];
    v33 = *&v57[24];
    v34 = *&v57[40];
    v35 = *&v57[56];
    ScrollGeometry.containerSize.getter();
    v17 = v16;
    result = ScrollGeometry.contentSize.getter();
    if (v15 > 0.0 && v15 < v18 - v17)
    {
      v19 = *(a1 + 48);
      v20 = *(a1 + 16);
      v46 = *a1;
      v47 = v20;
      v48 = *(a1 + 32);
      LOBYTE(v49) = v19;
      v42 = *&v57[96];
      v43 = *&v57[112];
      v44 = v58;
      v45 = v59;
      v38 = *&v57[32];
      v39 = *&v57[48];
      v40 = *&v57[64];
      v41 = *&v57[80];
      v34 = v55;
      v35 = v56;
      v36 = *v57;
      v37 = *&v57[16];
      v32 = v53;
      v33 = v54;
      result = PagingScrollTargetBehavior.makeInfo(_:context:axis:)(&v46, &v32, 1);
      if ((v23 & 1) == 0)
      {
        result = _s7SwiftUI20ScrollTargetBehaviorPAAE05alignD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7context4axis8itemInfoyAA0cD0Vz_AA0cdE7ContextVAA4AxisOAA04ItemS0AELLVtFAA06PagingcdE0V_Tt3B5(*&result, v21, v22, a1, &v53, 1);
      }
    }
  }

  if (v14)
  {
    v50 = *&v57[72];
    v51 = *&v57[88];
    v52 = *&v57[104];
    v46 = *&v57[8];
    v47 = *&v57[24];
    v48 = *&v57[40];
    v49 = *&v57[56];
    v36 = *&v57[72];
    v37 = *&v57[88];
    v38 = *&v57[104];
    v32 = *&v57[8];
    v33 = *&v57[24];
    v34 = *&v57[40];
    v35 = *&v57[56];
    ScrollGeometry.containerSize.getter();
    v25 = v24;
    result = ScrollGeometry.contentSize.getter();
    if (v13 > 0.0 && v13 < v26 - v25)
    {
      v27 = *(a1 + 48);
      v28 = *(a1 + 16);
      v46 = *a1;
      v47 = v28;
      v48 = *(a1 + 32);
      LOBYTE(v49) = v27;
      v42 = *&v57[96];
      v43 = *&v57[112];
      v44 = v58;
      v45 = v59;
      v38 = *&v57[32];
      v39 = *&v57[48];
      v40 = *&v57[64];
      v41 = *&v57[80];
      v34 = v55;
      v35 = v56;
      v36 = *v57;
      v37 = *&v57[16];
      v32 = v53;
      v33 = v54;
      result = PagingScrollTargetBehavior.makeInfo(_:context:axis:)(&v46, &v32, 0);
      if ((v31 & 1) == 0)
      {
        return _s7SwiftUI20ScrollTargetBehaviorPAAE05alignD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7context4axis8itemInfoyAA0cD0Vz_AA0cdE7ContextVAA4AxisOAA04ItemS0AELLVtFAA06PagingcdE0V_Tt3B5(*&result, v29, v30, a1, &v53, 0);
      }
    }
  }

  return result;
}

uint64_t _s7SwiftUI20ScrollTargetBehaviorPAAE05clampD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7contextyAA0cD0Vz_AA0cdE7ContextVtFAA011ViewAlignedcdE0V_Tt1B5Tm(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 184);
  if (v3)
  {
    ScrollTarget.rect.getter();
    v5 = v4;
    v6 = *(a2 + 120);
    v7 = *(a2 + 152);
    v31 = *(a2 + 136);
    v32 = v7;
    v33 = *(a2 + 168);
    v8 = *(a2 + 88);
    v27 = *(a2 + 72);
    v28 = v8;
    v29 = *(a2 + 104);
    v30 = v6;
    ScrollGeometry.containerSize.getter();
    v10 = v5 - v9;
    if (v5 - v9 <= v5)
    {
      v10 = v5;
    }

    v11 = v5 + v9;
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = ScrollTarget.rect.modify();
    *v14 = v12;
    result = v13(&v27, 0);
  }

  if ((v3 & 2) != 0)
  {
    ScrollTarget.rect.getter();
    v17 = v16;
    v18 = *(a2 + 120);
    v19 = *(a2 + 152);
    v31 = *(a2 + 136);
    v32 = v19;
    v33 = *(a2 + 168);
    v20 = *(a2 + 88);
    v27 = *(a2 + 72);
    v28 = v20;
    v29 = *(a2 + 104);
    v30 = v18;
    ScrollGeometry.containerSize.getter();
    v22 = v17 - v21;
    if (v17 - v21 <= v17)
    {
      v22 = v17;
    }

    v23 = v17 + v21;
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = ScrollTarget.rect.modify();
    *(v26 + 8) = v24;
    return v25(&v27, 0);
  }

  return result;
}

uint64_t PagingScrollTargetBehavior.makeInfo(_:context:axis:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a3 & 1;
  if (*(a2 + 112) == *(a2 + 128))
  {
    EdgeInsets.subscript.getter();
    v5 = v4 * 0.5;
  }

  else
  {
    v5 = 0.0;
  }

  ScrollGeometry.containerSize.getter();
  v7 = v6;
  v9 = v8;
  ScrollTarget.rect.getter();
  v11 = v10;
  v13 = v12;
  ScrollTarget.rect.getter();
  if (v3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v7;
  }

  v15 = v5 + v14;
  if (v3)
  {
    v16 = v13;
  }

  else
  {
    v16 = v11;
  }

  return round(v16 / v15);
}

uint64_t _s7SwiftUI20ScrollTargetBehaviorPAAE05alignD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7context4axis8itemInfoyAA0cD0Vz_AA0cdE7ContextVAA4AxisOAA04ItemS0AELLVtFAA06PagingcdE0V_Tt3B5(double a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2;
  if (*(a5 + 185) == 4)
  {
    if (a6)
    {
      goto LABEL_20;
    }

    v10 = 0;
    goto LABEL_5;
  }

  v10 = a1 == a2;
  if ((a6 & 1) == 0)
  {
LABEL_5:
    v21 = *(a5 + 208);
    EnvironmentValues.layoutDirection.getter();
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = (a5 + 56);
    if (a6)
    {
      v11 = (a5 + 64);
    }

    if (*v11 > 0.0)
    {
      v12 = -1.0;
      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (*v11 >= 0.0)
    {
      goto LABEL_20;
    }

    v12 = 1.0;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = -1.0;
    goto LABEL_19;
  }

  if (a1 != a2)
  {
    goto LABEL_20;
  }

  v13 = *(a5 + 64);
  if (v13 <= 0.0)
  {
    if (v13 >= 0.0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_13:
  v12 = 1.0;
LABEL_19:
  v7 = v12 + v7;
LABEL_20:
  ScrollTarget.rect.getter();
  if (a6)
  {
    v14 = v15;
  }

  if (v7 < 0.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v7 * a3;
  }

  v17 = ScrollTarget.rect.modify();
  *(v18 + 8 * (a6 & 1)) = v16;
  return v17(&v21, 0);
}

_BYTE *ViewAlignedScrollTargetBehavior.init(limitBehavior:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

_BYTE *ViewAlignedScrollTargetBehavior.init(limitBehavior:anchor:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t ViewAlignedScrollTargetBehavior.init(anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3 & 1;
  return result;
}

void ViewAlignedScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, __int128 *a2)
{
  v4 = a2[11];
  *&v68[96] = a2[10];
  *&v68[112] = v4;
  v5 = a2[13];
  v69 = a2[12];
  v70 = v5;
  v6 = a2[7];
  *&v68[32] = a2[6];
  *&v68[48] = v6;
  v7 = a2[9];
  *&v68[64] = a2[8];
  *&v68[80] = v7;
  v8 = a2[3];
  v66 = a2[2];
  v67 = v8;
  v9 = a2[5];
  *v68 = a2[4];
  *&v68[16] = v9;
  v10 = a2[1];
  v64 = *a2;
  v65 = v10;
  v11 = *v2;
  v12 = *(v2 + 1);
  v13 = *(v2 + 2);
  v14 = v2[24];
  if (v68[120] == 2)
  {
    v15 = 0;
  }

  else
  {
    if (v68[120] != 1)
    {
      return;
    }

    v15 = 1;
  }

  if (v68[121] == 2 && v11 != 2)
  {
    _s7SwiftUI20ScrollTargetBehaviorPAAE05clampD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7contextyAA0cD0Vz_AA0cdE7ContextVtFAA011ViewAlignedcdE0V_Tt1B5Tm(a1, &v64);
  }

  ScrollTarget.rect.getter();
  v17 = v16;
  v19 = v18;
  ScrollGeometry.containerSize.getter();
  v21 = v20;
  v23 = v22;
  v46 = *&v68[72];
  v47 = *&v68[88];
  v48 = *&v68[104];
  v42 = *&v68[8];
  v43 = *&v68[24];
  v44 = *&v68[40];
  v45 = *&v68[56];
  ScrollGeometry.contentSize.getter();
  if (v15)
  {
    v26 = v17;
  }

  else
  {
    v26 = v19;
  }

  if (v15)
  {
    v27 = v21;
  }

  else
  {
    v27 = v23;
  }

  if (!v15)
  {
    v24 = v25;
  }

  x = 0.0;
  v29 = 1;
  if (v26 <= 0.0 || v26 >= v24 - v27 || (v58 = v11, v59 = v12, v60 = v13, v61 = v14, v30 = *(a1 + 48), v31 = *(a1 + 16), v56[0] = *a1, v56[1] = v31, v56[2] = *(a1 + 32), v57 = v30, v52 = *&v68[96], v53 = *&v68[112], v54 = v69, v55 = v70, v48 = *&v68[32], v49 = *&v68[48], v50 = *&v68[64], v51 = *&v68[80], v44 = v66, v45 = v67, v46 = *v68, v47 = *&v68[16], v42 = v64, v43 = v65, ViewAlignedScrollTargetBehavior.makeTarget(_:context:)(v56, &v42, v62), v32 = v63, (v63 & 1) != 0))
  {
    y = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v32 = 1;
    if (v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v29 = 0;
    x = *v62;
    y = *&v62[1];
    v34 = *&v62[2];
    v35 = *&v62[3];
    if (v14)
    {
LABEL_20:
      if (v32)
      {
        return;
      }

      goto LABEL_26;
    }
  }

  if (v32)
  {
    return;
  }

  v36 = UnitPoint.in(_:)(__PAIR128__(*&v35, *&v34));
  v46 = *&v68[72];
  v47 = *&v68[88];
  v48 = *&v68[104];
  v42 = *&v68[8];
  v43 = *&v68[24];
  v44 = *&v68[40];
  v45 = *&v68[56];
  ScrollGeometry.containerSize.getter();
  v39 = UnitPoint.in(_:)(__PAIR128__(v38, v37));
  if (v29)
  {
    return;
  }

  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = v34;
  v71.size.height = v35;
  v72 = CGRectOffset(v71, v39.x - v36.x, v39.y - v36.y);
  x = v72.origin.x;
  y = v72.origin.y;
LABEL_26:
  v41 = ScrollTarget.rect.modify();
  if (v15)
  {
    *v40 = x;
  }

  else
  {
    v40[1] = y;
  }

  v41(&v42, 0);
}

uint64_t ViewAlignedScrollTargetBehavior.makeTarget(_:context:)@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  v4 = *result;
  v5 = *(result + 8);
  v7 = *(result + 16);
  v6 = *(result + 24);
  v9 = *(result + 32);
  v8 = *(result + 40);
  v77 = *(result + 48);
  v10 = a2[9];
  *&v128[64] = a2[8];
  *&v128[80] = v10;
  *&v128[96] = a2[10];
  *&v128[112] = *(a2 + 22);
  v11 = a2[5];
  *v128 = a2[4];
  *&v128[16] = v11;
  v12 = a2[7];
  *&v128[32] = a2[6];
  *&v128[48] = v12;
  v13 = a2[1];
  v124 = *a2;
  v125 = v13;
  v14 = a2[3];
  v126 = a2[2];
  v127 = v14;
  v15 = *(a2 + 184);
  v123[0] = *(a2 + 185);
  *(v123 + 3) = *(a2 + 47);
  v16 = *(a2 + 24);
  v121 = *(a2 + 200);
  v122 = *(a2 + 27);
  v73 = v16;
  v17 = *(v16 + 16);
  if (!v17)
  {
    result = MEMORY[0x18D009810](0xD000000000000075, 0x800000018CD441A0);
    LOBYTE(v18) = 1;
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    goto LABEL_38;
  }

  v18 = 1;
  if (v15 == 2)
  {
    v71 = 2;
    v72 = a3;
    goto LABEL_7;
  }

  v19 = v4;
  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
  if (v15 != 1)
  {
LABEL_38:
    *v3 = x;
    *(v3 + 8) = y;
    *(v3 + 16) = width;
    *(v3 + 24) = height;
    *(v3 + 32) = v18;
    return result;
  }

  v71 = 1;
  v72 = a3;
  v18 = 0;
  v4 = v19;
LABEL_7:
  v24 = *(a2 + 120);
  v25 = *(a2 + 152);
  v93 = *(a2 + 136);
  v94 = v25;
  v95 = *(a2 + 168);
  v26 = *(a2 + 88);
  v89 = *(a2 + 72);
  v90 = v26;
  v91 = *(a2 + 104);
  v92 = v24;
  ScrollGeometry.containerSize.getter();
  v29 = 0;
  if (v18)
  {
    v30 = v28;
  }

  else
  {
    v30 = v27;
  }

  v118 = MEMORY[0x1E69E7CC0];
  v76 = v73 + 32;
  v74 = v7;
  v75 = v30 * 1.1;
  do
  {
    outlined init with copy of _Benchmark(v76 + 40 * v29, v115);
    v31 = v117;
    v32 = __swift_project_boxed_opaque_existential_1(v115, v116);
    v33 = MEMORY[0x1EEE9AC00](v32);
    (*(v31 + 24))(partial apply for closure #1 in ViewAlignedScrollTargetBehavior.makeTarget(_:context:), v33);
    v34 = v116;
    v35 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    *&v81 = v4;
    *(&v81 + 1) = v5;
    *&v82 = v7;
    *(&v82 + 1) = v6;
    *&v83 = v9;
    *(&v83 + 1) = v8;
    LOBYTE(v84) = v77;
    ScrollTarget.rect.getter();
    (*(v35 + 32))(&v89, v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v115);
    v106[4] = v93;
    v106[5] = v94;
    v106[6] = v95;
    v106[7] = v96;
    v106[0] = v89;
    v106[1] = v90;
    v106[2] = v91;
    v106[3] = v92;
    v113 = v95;
    v114 = v96;
    v111 = v93;
    v112 = v94;
    v109 = v91;
    v110 = v92;
    v107 = v89;
    v108 = v90;
    if (_s7SwiftUI27ScrollableCollectionSubviewVSgWOg(&v107) != 1)
    {
      v36 = v6;
      v37 = v5;
      v38 = v4;
      v93 = v111;
      v94 = v112;
      v95 = v113;
      v96 = v114;
      v89 = v107;
      v90 = v108;
      v91 = v109;
      v92 = v110;
      ScrollableCollectionSubview.frameInContent.getter();
      v42 = v41;
      v44 = v43;
      if (v18)
      {
        v45 = v40;
      }

      else
      {
        v45 = v39;
      }

      if (v45 > v75)
      {
LABEL_11:
        outlined destroy of ScrollableCollectionSubview?(v106);
      }

      else
      {
        v46 = v39;
        v47 = v40;
        v48 = v118;
        v49 = v118 + 56;
        v50 = *(v118 + 2) + 1;
        while (--v50)
        {
          v51 = v49 + 32;
          v131.origin.x = v42;
          v131.origin.y = v44;
          v131.size.width = v46;
          v131.size.height = v47;
          v52 = CGRectEqualToRect(*(v49 - 24), v131);
          v49 = v51;
          if (v52)
          {
            goto LABEL_11;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        }

        v54 = *(v48 + 2);
        v53 = *(v48 + 3);
        if (v54 >= v53 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v48);
        }

        outlined destroy of ScrollableCollectionSubview?(v106);
        *(v48 + 2) = v54 + 1;
        v55 = &v48[32 * v54];
        v55[4] = v42;
        v55[5] = v44;
        v55[6] = v46;
        v55[7] = v47;
        v118 = v48;
      }

      v4 = v38;
      v5 = v37;
      v6 = v36;
      v7 = v74;
    }

    ++v29;
  }

  while (v29 != v17);
  *&v81 = v4;
  *(&v81 + 1) = v5;
  *&v82 = v7;
  *(&v82 + 1) = v6;
  *&v83 = v9;
  *(&v83 + 1) = v8;
  LOBYTE(v84) = v77;
  ScrollTarget.rect.getter();
  v97 = *&v128[64];
  v98 = *&v128[80];
  v99 = *&v128[96];
  v100 = *&v128[112];
  v93 = *v128;
  v94 = *&v128[16];
  v95 = *&v128[32];
  v96 = *&v128[48];
  v89 = v124;
  v90 = v125;
  v91 = v126;
  v92 = v127;
  v101 = v71;
  *v102 = v123[0];
  *&v102[3] = *(v123 + 3);
  v104 = v121;
  v103 = v73;
  v105 = v122;
  ViewAlignedScrollTargetBehavior.findClosestRect(rects:targetOffset:context:)(&v118, &v89, v119, v56, v57);
  x = *v119;
  y = *&v119[1];
  width = *&v119[2];
  height = *&v119[3];
  v58 = v120;
  if (v120)
  {

    LOBYTE(v18) = v58;
    v3 = v72;
    goto LABEL_38;
  }

  v93 = *&v128[72];
  v94 = *&v128[88];
  v95 = *&v128[104];
  v89 = *&v128[8];
  v90 = *&v128[24];
  v91 = *&v128[40];
  v92 = *&v128[56];
  result = ScrollGeometry.containerSize.getter();
  v3 = v72;
  if (*(v73 + 16))
  {
    v61 = v59;
    v62 = v60;
    outlined init with copy of _Benchmark(v76, v78);
    v63 = v79;
    v64 = v80;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    (*(v64 + 32))(&v81, v63, v64, 0.0, 0.0, v61, v62);
    v93 = v85;
    v94 = v86;
    v95 = v87;
    v96 = v88;
    v89 = v81;
    v90 = v82;
    v91 = v83;
    v92 = v84;
    if (_s7SwiftUI27ScrollableCollectionSubviewVSgWOg(&v89) != 1)
    {
      ScrollableCollectionSubview.frameInContent.getter();
      if (v18)
      {
        v67 = v68;
      }

      if (v67 <= v75)
      {
        v69 = -v65;
        v70 = -v66;
        v129.origin.x = x;
        v129.origin.y = y;
        v129.size.width = width;
        v129.size.height = height;
        v130 = CGRectOffset(v129, v69, v70);
        x = v130.origin.x;
        y = v130.origin.y;
        width = v130.size.width;
        height = v130.size.height;
      }

      outlined destroy of ScrollableCollectionSubview?(&v81);
    }

    __swift_destroy_boxed_opaque_existential_1(v78);

    LOBYTE(v18) = 0;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ViewAlignedScrollTargetBehavior.makeTarget(_:context:)(double a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  result = ScrollableCollectionSubview.frameInContent.getter();
  v12 = v11;
  v14 = v13;
  if (a4)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= a1 * 1.1)
  {
    v16 = v9;
    v17 = v10;
    v18 = *a5;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v18;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      v18 = result;
      *a5 = result;
    }

    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
      v18 = result;
      *a5 = result;
    }

    *(v18 + 16) = v20 + 1;
    v21 = (v18 + 32 * v20);
    *(v21 + 4) = v12;
    *(v21 + 5) = v14;
    v21[6] = v16;
    v21[7] = v17;
  }

  return result;
}

void ViewAlignedScrollTargetBehavior.findClosestRect(rects:targetOffset:context:)(char **a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v8 = *a2;
  v9 = a2[7];
  v10 = a2[8];
  v11 = *(a2 + 184);
  v12 = *(a2 + 185);
  v13 = 0uLL;
  v14 = 1;
  if (v11 != 2)
  {
    if (v11 != 1)
    {
      v36 = 0uLL;
      goto LABEL_58;
    }

    v14 = 0;
  }

  specialized MutableCollection<>.sort(by:)(a1, v14);
  v16 = *a1;
  v17 = *(*a1 + 2);
  if (!v17)
  {
    goto LABEL_20;
  }

  v52 = a4;
  v54 = a5;
  v49 = LOBYTE(v8);
  v50 = v10;
  v51 = v9;
  v18 = &v16[32 * v17];
  v19 = *(v18 + 2);
  v20 = *(v18 + 3);
  v57 = CGRect.outset(bySize:)(*(v16 + 3));
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  MinY = CGRectGetMinY(v58);
  v59 = CGRect.outset(bySize:)(__PAIR128__(v20, v19));
  v26 = v59.origin.x;
  v27 = v59.origin.y;
  v28 = v59.size.width;
  v29 = v59.size.height;
  MaxX = CGRectGetMaxX(v59);
  v60.origin.x = v26;
  v60.origin.y = v27;
  v60.size.width = v28;
  v60.size.height = v29;
  MaxY = CGRectGetMaxY(v60);
  if (v14)
  {
    v32 = MinY;
  }

  else
  {
    v32 = MinX;
  }

  if (v14)
  {
    v33 = MaxY;
  }

  else
  {
    v33 = MaxX;
  }

  if (v32 > v33)
  {
    __break(1u);
    goto LABEL_61;
  }

  v34 = v14 ? v54 : v52;
  if (v32 > v34 || v34 > v33)
  {
LABEL_20:
    LOBYTE(v14) = 1;
    v36 = 0uLL;
    v13 = 0uLL;
LABEL_58:
    *a3 = v13;
    *(a3 + 16) = v36;
    *(a3 + 32) = v14;
    return;
  }

  v53 = ViewAlignedScrollTargetBehavior.findClosestRectIndex(rects:targetOffset:context:)(v16);
  v55 = v37;
  ScrollTarget.rect.getter();
  v38 = ViewAlignedScrollTargetBehavior.findClosestRectIndex(rects:targetOffset:context:)(v16);
  if (v55)
  {
    LOBYTE(v14) = 1;
    v36 = 0uLL;
    v13 = 0uLL;
    goto LABEL_58;
  }

  v13 = 0uLL;
  if (v39)
  {
    LOBYTE(v14) = 1;
    v36 = 0uLL;
    goto LABEL_58;
  }

  v40 = &v16[32 * v53 + 32];
  if (v53 == v38 && v12 != 4)
  {
    if (v14)
    {
      if (v50 > 0.0)
      {
LABEL_42:
        v42 = 1;
        goto LABEL_44;
      }

      if (v50 < 0.0)
      {
LABEL_43:
        v42 = -1;
        goto LABEL_44;
      }

      goto LABEL_55;
    }

    v41 = 1;
  }

  else
  {
    if (v14)
    {
      goto LABEL_55;
    }

    v41 = 0;
  }

  EnvironmentValues.layoutDirection.getter();
  if (!v41)
  {
LABEL_55:
    if ((v53 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v51 <= 0.0)
  {
    if (v51 < 0.0)
    {
      if (v49)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    goto LABEL_55;
  }

  v42 = -1;
  if (!v49)
  {
    v42 = 1;
  }

LABEL_44:
  if ((v53 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v43 = *(v16 + 2);
  if (v53 < v43)
  {
    if (v14)
    {
      v44 = (v40 + 8);
    }

    else
    {
      v44 = &v16[32 * v53 + 32];
    }

    v45 = v42 + v53;
    if (v42 + v53 < v43)
    {
      v46 = *v44;
      v47 = &v16[32 * v45 + 48];
      while (1)
      {
        v13 = *(v47 - 1);
        v48 = *(v47 - 1);
        if (!v14)
        {
          v48 = *(v47 - 2);
        }

        if (v46 != v48)
        {
          break;
        }

        v45 += v42;
        v47 += 4 * v42;
        if (v45 >= v43)
        {
          goto LABEL_55;
        }
      }

      LOBYTE(v14) = 0;
      v36 = *v47;
      goto LABEL_58;
    }

LABEL_56:
    if (v53 < *(v16 + 2))
    {
      LOBYTE(v14) = 0;
      v13 = *v40;
      v36 = *(v40 + 1);
      goto LABEL_58;
    }

    goto LABEL_62;
  }

LABEL_64:
  __break(1u);
}

uint64_t ViewAlignedScrollTargetBehavior.findClosestRectIndex(rects:targetOffset:context:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 72;
  for (i = 1; i != v1; ++i)
  {
    distance(_:_:)();
    v6 = v5;
    distance(_:_:)();
    if (v6 < v7)
    {
      v2 = i;
    }

    v3 += 32;
  }

  return v2;
}

uint64_t ViewAlignedScrollTargetBehavior.properties(context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*v2 - 1 < 2)
  {
    goto LABEL_2;
  }

  if (*v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  v4 = *(result + 16);
  v5 = a2;
  EnvironmentValues.horizontalSizeClass.getter();
  result = EnvironmentValues.verticalSizeClass.getter();
  a2 = v5;
  v6 = v8 != 2 && (v8 & 1) == 0;
  v7 = !v6 || (v4 & 1) == 0;
  if (!v7 || (v3 = 0, v8 != 2) && (v8 & 1) == 0 && (v4 & 2) != 0)
  {
LABEL_2:
    v3 = 1;
  }

LABEL_17:
  *a2 = v3;
  *(a2 + 1) = 0;
  return result;
}

uint64_t AnyScrollTargetBehavior.base.setter(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of ScrollEnvironmentTransform(a1, v1);
}

uint64_t AnyScrollTargetBehavior.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t AnyScrollTargetBehavior._updateEnvironment(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t protocol witness for ScrollTargetBehavior.updateTarget(_:context:) in conformance AnyScrollTargetBehavior(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t protocol witness for ScrollTargetBehavior.properties(context:) in conformance AnyScrollTargetBehavior(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t AnyScrollTargetBehavior.properties(context:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t protocol witness for ScrollTargetBehavior._updateEnvironment(_:context:) in conformance AnyScrollTargetBehavior(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t getEnumTagSinglePayload for ViewAlignedScrollTargetBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewAlignedScrollTargetBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role;
  if (!lazy protocol witness table cache variable for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role);
  }

  return result;
}

uint64_t outlined destroy of ScrollableCollectionSubview?(uint64_t a1)
{
  type metadata accessor for ScrollableCollectionSubview?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ScrollableCollectionSubview?()
{
  if (!lazy cache variable for type metadata for ScrollableCollectionSubview?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollableCollectionSubview?);
    }
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CGRect(0);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2 & 1);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2 & 1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 32 * a3 - 32;
    v10 = a1 - a3;
LABEL_5:
    v11 = (v8 + 32 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = v10;
    v15 = v9;
    while (1)
    {
      v31 = *&v12;
      v32 = *&v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(&v12 + 1);
      v19 = *(&v13 + 1);
      v20 = *(v15 + 16);
      v21 = *(v15 + 24);
      v22 = *(&v12 + 1);
      v23 = *(&v13 + 1);
      MinX = CGRectGetMinX(*&v12);
      v33.origin.x = v31;
      v33.size.width = v32;
      v33.origin.y = v18;
      v33.size.height = v19;
      MinY = CGRectGetMinY(v33);
      v34.origin.x = v16;
      v34.origin.y = v17;
      v34.size.width = v20;
      v34.size.height = v21;
      v26 = CGRectGetMinX(v34);
      v35.origin.x = v16;
      v35.origin.y = v17;
      v35.size.width = v20;
      v35.size.height = v21;
      v27 = CGRectGetMinY(v35);
      if (a5)
      {
        v28 = MinY;
      }

      else
      {
        v28 = MinX;
      }

      if ((a5 & 1) == 0)
      {
        v27 = v26;
      }

      if (v28 >= v27)
      {
LABEL_4:
        ++v6;
        v9 += 32;
        --v10;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v12 = *(v15 + 32);
      v13 = *(v15 + 48);
      v29 = *(v15 + 16);
      *(v15 + 32) = *v15;
      *(v15 + 48) = v29;
      *v15 = v12;
      *(v15 + 16) = v13;
      v15 -= 32;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  LOBYTE(v7) = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_132:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    v120 = *(v11 + 2);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *&v11[16 * v120];
        v122 = *&v11[16 * v120 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v121), (*a3 + 32 * *&v11[16 * v120 + 16]), (*a3 + 32 * v122), v6, v7 & 1);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v122 < v121)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
        }

        if (v120 - 2 >= *(v11 + 2))
        {
          goto LABEL_126;
        }

        v123 = &v11[16 * v120];
        *v123 = v121;
        *(v123 + 1) = v122;
        specialized Array.remove(at:)(v120 - 1);
        v120 = *(v11 + 2);
        if (v120 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_136;
    }

LABEL_110:

    return;
  }

  v9 = 0;
  v10 = a5 & 1;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v9;
    v13 = v9 + 1;
    if (v13 >= v8)
    {
      v8 = v13;
    }

    else
    {
      v14 = *a3 + 32 * v13;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      v6 = 32 * v12;
      v19 = *a3 + 32 * v12;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v137.origin.x = *v14;
      v137.origin.y = v16;
      v137.size.width = v17;
      v137.size.height = v18;
      MinX = CGRectGetMinX(v137);
      v138.origin.x = v15;
      v138.origin.y = v16;
      v138.size.width = v17;
      v138.size.height = v18;
      MinY = CGRectGetMinY(v138);
      v139.origin.x = v20;
      v139.origin.y = v21;
      v139.size.width = v22;
      v139.size.height = v23;
      v25 = CGRectGetMinX(v139);
      v140.origin.x = v20;
      v140.origin.y = v21;
      v140.size.width = v22;
      v140.size.height = v23;
      v26 = CGRectGetMinY(v140);
      v27 = MinX;
      if (v10)
      {
        v27 = MinY;
      }

      v132 = v27;
      if (!v10)
      {
        v26 = v25;
      }

      v128 = v26;
      v28 = v12 + 2;
      v29 = (v19 + 48);
      while (v8 != v28)
      {
        v7 = v29 + 4;
        v30 = v29[4];
        v31 = v29[2];
        v32 = v29[3];
        v33 = v29[5];
        v34 = *(v29 - 2);
        v35 = *(v29 - 1);
        v36 = *v29;
        v37 = v29[1];
        v141.origin.x = v31;
        v141.origin.y = v32;
        v141.size.width = v30;
        v141.size.height = v33;
        v135 = CGRectGetMinX(v141);
        v142.origin.x = v31;
        v142.origin.y = v32;
        v142.size.width = v30;
        v142.size.height = v33;
        v38 = CGRectGetMinY(v142);
        v143.origin.x = v34;
        v143.origin.y = v35;
        v143.size.width = v36;
        v143.size.height = v37;
        v39 = CGRectGetMinX(v143);
        v144.origin.x = v34;
        v144.origin.y = v35;
        v144.size.width = v36;
        v144.size.height = v37;
        v40 = CGRectGetMinY(v144);
        v41 = v135;
        if (v10)
        {
          v41 = v38;
        }

        else
        {
          v40 = v39;
        }

        ++v28;
        v29 = v7;
        if (v132 < v128 == v41 >= v40)
        {
          v8 = v28 - 1;
          break;
        }
      }

      if (v132 < v128)
      {
        if (v8 < v12)
        {
          goto LABEL_129;
        }

        if (v12 < v8)
        {
          v42 = 0;
          v43 = 32 * v8;
          v44 = v12;
          do
          {
            if (v44 != v8 + v42 - 1)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v45 = (v50 + v6);
              v46 = v50 + v43;
              v47 = *v45;
              v48 = v45[1];
              v49 = *(v46 - 16);
              *v45 = *(v46 - 32);
              v45[1] = v49;
              *(v46 - 32) = v47;
              *(v46 - 16) = v48;
            }

            ++v44;
            --v42;
            v43 -= 32;
            v6 += 32;
          }

          while (v44 < v8 + v42);
        }
      }
    }

    v51 = a3[1];
    if (v8 < v51)
    {
      if (__OFSUB__(v8, v12))
      {
        goto LABEL_128;
      }

      if (v8 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_130;
        }

        if (v12 + a4 < v51)
        {
          v51 = v12 + a4;
        }

        if (v51 < v12)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v8 != v51)
        {
          break;
        }
      }
    }

    v52 = v8;
    if (v8 < v12)
    {
      goto LABEL_127;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v54 = *(v11 + 2);
    v53 = *(v11 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v11);
    }

    *(v11 + 2) = v55;
    v56 = &v11[16 * v54];
    *(v56 + 4) = v12;
    *(v56 + 5) = v52;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    v129 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v11 + 4);
          v59 = *(v11 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_54:
          if (v61)
          {
            goto LABEL_116;
          }

          v74 = &v11[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_119;
          }

          v80 = &v11[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_123;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v84 = &v11[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_68:
        if (v79)
        {
          goto LABEL_118;
        }

        v87 = &v11[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_121;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_75:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_134;
        }

        v96 = *&v11[16 * v95 + 32];
        v6 = *&v11[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v96), (*a3 + 32 * *&v11[16 * v57 + 32]), (*a3 + 32 * v6), v7, v10);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v6 < v96)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
        }

        if (v95 >= *(v11 + 2))
        {
          goto LABEL_113;
        }

        v97 = &v11[16 * v95];
        *(v97 + 4) = v96;
        *(v97 + 5) = v6;
        specialized Array.remove(at:)(v57);
        v55 = *(v11 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v11[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_114;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_115;
      }

      v69 = &v11[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_117;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_120;
      }

      if (v73 >= v65)
      {
        v91 = &v11[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_124;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v9 = v129;
    v8 = a3[1];
    LOBYTE(v7) = a5;
    if (v129 >= v8)
    {
      goto LABEL_100;
    }
  }

  v130 = v51;
  v98 = v12;
  v99 = *a3;
  v6 = *a3 + 32 * v8 - 32;
  v124 = v98;
  v100 = (v98 - v8);
LABEL_86:
  v101 = (v99 + 32 * v8);
  v102 = *v101;
  v103 = v101[1];
  v7 = v100;
  v104 = v6;
  while (1)
  {
    v133 = *&v102;
    v136 = *&v103;
    v105 = *v104;
    v106 = *(v104 + 8);
    v107 = *(&v102 + 1);
    v108 = *(&v103 + 1);
    v109 = *(v104 + 16);
    v110 = *(v104 + 24);
    v111 = *(&v102 + 1);
    v112 = *(&v103 + 1);
    v113 = CGRectGetMinX(*&v102);
    v145.origin.x = v133;
    v145.size.width = v136;
    v145.origin.y = v107;
    v145.size.height = v108;
    v114 = CGRectGetMinY(v145);
    v146.origin.x = v105;
    v146.origin.y = v106;
    v146.size.width = v109;
    v146.size.height = v110;
    v115 = CGRectGetMinX(v146);
    v147.origin.x = v105;
    v147.origin.y = v106;
    v147.size.width = v109;
    v147.size.height = v110;
    v116 = CGRectGetMinY(v147);
    if (v10)
    {
      v117 = v114;
    }

    else
    {
      v117 = v113;
    }

    if (!v10)
    {
      v116 = v115;
    }

    if (v117 >= v116)
    {
LABEL_85:
      ++v8;
      v6 += 32;
      v100 = (v100 - 1);
      if (v8 != v130)
      {
        goto LABEL_86;
      }

      v52 = v130;
      v12 = v124;
      if (v130 < v124)
      {
        goto LABEL_127;
      }

      goto LABEL_35;
    }

    if (!v99)
    {
      break;
    }

    v102 = *(v104 + 32);
    v103 = *(v104 + 48);
    v118 = *(v104 + 16);
    *(v104 + 32) = *v104;
    *(v104 + 48) = v118;
    *v104 = v102;
    *(v104 + 16) = v103;
    v104 -= 32;
    v119 = __CFADD__(v7, 1);
    v7 = (v7 + 1);
    if (v119)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, _OWORD *a3, double *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v14 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v12] <= a4)
    {
      memmove(a4, __dst, 32 * v12);
    }

    v16 = &v5[4 * v12];
    if (v10 < 32)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_41;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v20 = *v7;
      v21 = v7[1];
      v22 = v7[2];
      v23 = v7[3];
      v24 = *v5;
      v25 = v5[1];
      v26 = v5[2];
      v27 = v5[3];
      v52.origin.x = *v7;
      v52.origin.y = v21;
      v52.size.width = v22;
      v52.size.height = v23;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v20;
      v53.origin.y = v21;
      v53.size.width = v22;
      v53.size.height = v23;
      MinY = CGRectGetMinY(v53);
      v54.origin.x = v24;
      v54.origin.y = v25;
      v54.size.width = v26;
      v54.size.height = v27;
      v29 = CGRectGetMinX(v54);
      v55.origin.x = v24;
      v55.origin.y = v25;
      v55.size.width = v26;
      v55.size.height = v27;
      v30 = CGRectGetMinY(v55);
      v31 = MinX;
      if (a5)
      {
        v31 = MinY;
      }

      else
      {
        v30 = v29;
      }

      if (v31 < v30)
      {
        break;
      }

      v17 = v5;
      v18 = v8 == v5;
      v5 += 4;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 4;
      if (v5 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v7;
    v18 = v8 == v7;
    v7 += 4;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    v19 = *(v17 + 1);
    *v8 = *v17;
    *(v8 + 1) = v19;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v15] <= a4)
  {
    memmove(a4, __src, 32 * v15);
  }

  v16 = &v5[4 * v15];
  if (v13 >= 32 && v7 > v8)
  {
LABEL_27:
    v32 = v7 - 4;
    v6 -= 2;
    v33 = v16;
    do
    {
      v34 = *(v33 - 32);
      v35 = *(v33 - 24);
      v33 -= 32;
      v36 = v6 + 2;
      v37 = *(v33 + 16);
      v38 = *(v33 + 24);
      v39 = *(v7 - 4);
      v40 = *(v7 - 3);
      v41 = *(v7 - 2);
      v42 = *(v7 - 1);
      v56.origin.x = v34;
      v56.origin.y = v35;
      v56.size.width = v37;
      v56.size.height = v38;
      v51 = CGRectGetMinX(v56);
      v57.origin.x = v34;
      v57.origin.y = v35;
      v57.size.width = v37;
      v57.size.height = v38;
      v43 = CGRectGetMinY(v57);
      v58.origin.x = v39;
      v58.origin.y = v40;
      v58.size.width = v41;
      v58.size.height = v42;
      v44 = CGRectGetMinX(v58);
      v59.origin.x = v39;
      v59.origin.y = v40;
      v59.size.width = v41;
      v59.size.height = v42;
      v45 = CGRectGetMinY(v59);
      v46 = v51;
      if (a5)
      {
        v46 = v43;
      }

      else
      {
        v45 = v44;
      }

      if (v46 < v45)
      {
        if (v36 != v7)
        {
          v48 = *(v7 - 1);
          *v6 = *v32;
          v6[1] = v48;
        }

        if (v16 <= v5 || (v7 -= 4, v32 <= v8))
        {
          v7 = v32;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

      if (v36 != v16)
      {
        v47 = *(v33 + 16);
        *v6 = *v33;
        v6[1] = v47;
      }

      v6 -= 2;
      v16 = v33;
    }

    while (v33 > v5);
    v16 = v33;
  }

LABEL_41:
  if (v7 != v5 || v7 >= (v5 + ((v16 - v5 + (v16 - v5 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v7, v5, 32 * ((v16 - v5) / 32));
  }

  return 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x18D00F6C0](*(a2 + 40), a1);
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
  MEMORY[0x18D00F6F0](a1);
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

uint64_t specialized Set.contains(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  PresentationDetent.Identifier.hash(into:)(v23, a1, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = a2 != 0xC000000000000000 || a1 != 2;
    v11 = a2 != 0xC000000000000000 || a1 != 1;
    v12 = a2 != 0xC000000000000000 || a1 != 0;
    v13 = a2 & 0xC000000000000000;
    v14 = a2 >> 62 != 3 || v10;
    v15 = a2 >> 62 != 3 || v11;
    v16 = a2 >> 62 != 3 || v12;
    do
    {
      v17 = *(a3 + 48) + 16 * v8;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v20 == 2)
        {
          if (v13 == 0x8000000000000000 && *&v18 == a1)
          {
            return 1;
          }
        }

        else if (*&v18 | v19 ^ 0xC000000000000000)
        {
          if (v19 == 0xC000000000000000 && *&v18 == 1)
          {
            if ((v15 & 1) == 0)
            {
              return 1;
            }
          }

          else if (!v14)
          {
            return 1;
          }
        }

        else if ((v16 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v20)
        {
          if (v13 != 0x4000000000000000)
          {
            goto LABEL_24;
          }
        }

        else if (a2 >> 62)
        {
          goto LABEL_24;
        }

        if (v18 == *&a1)
        {
          return 1;
        }
      }

LABEL_24:
      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t specialized Set.contains(_:)(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  String.hash(into:)();
  AnyHashable.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    outlined init with copy of SceneRequestCache.Item(*(a2 + 48) + 56 * v8, v12);
    v10 = v12[0] == v4 && v12[1] == v5;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (MEMORY[0x18D00E7E0](&v13, a1 + 2))
    {
      break;
    }

    outlined destroy of SceneRequestCache.Item(v12);
    v8 = (v8 + 1) & v9;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  outlined destroy of SceneRequestCache.Item(v12);
  return 1;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v4);
  if (v7 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v5);
    MEMORY[0x18D00F6F0](v7);
    MEMORY[0x18D00F6F0](v6);
  }

  v9 = *(a1 + 32);
  Hasher._combine(_:)(v9 & 1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(a2 + 32);
  v12 = v10 & ~v11;
  if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(a2 + 48) + 48 * v12;
    if (*v14 != v4)
    {
      goto LABEL_10;
    }

    v15 = *(v14 + 16);
    v16 = *(v14 + 32);
    if (v15 != 6)
    {
      break;
    }

    if (v7 == 6)
    {
      goto LABEL_9;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (v7 == 6)
  {
    goto LABEL_10;
  }

  v17 = *(v14 + 8);
  v18 = *(v14 + 24);
  v19 = (v15 ^ v7);
  v20 = v17 == v5 && v19 == 0;
  if (!v20 || v18 != v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  if ((v16 ^ v9))
  {
    goto LABEL_10;
  }

  return 1;
}

uint64_t _ArchivedViewHost.viewGraph.getter()
{
  specialized _ArchivedViewHost.viewGraph.getter();
}

uint64_t _ArchivedViewHost.valuesNeedingUpdate.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t _ArchivedViewHost.renderingPhase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 26);
  return result;
}

uint64_t _ArchivedViewHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

double _ArchivedViewHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

uint64_t _ArchivedViewHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t _ArchivedViewHost.externalUpdateCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t _ArchivedViewHost.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t key path getter for _ArchivedViewHost.content : <A, B>_ArchivedViewHost<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v6 = *a1;
  v7 = *(**a1 + 200);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t _ArchivedViewHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  specialized _ArchivedViewHost.content.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*_ArchivedViewHost.content.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.content.modify;
}

uint64_t _ArchivedViewHost.content.modify(uint64_t a1, char a2)
{
  return _ArchivedViewHost.content.modify(a1, a2);
}

{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return _ArchivedViewHost.content.didset();
  }

  return result;
}

uint64_t _ArchivedViewHost.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(*v1 + 208));
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t key path getter for _ArchivedViewHost.environment : <A, B>_ArchivedViewHost<A, B>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 208));
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for _ArchivedViewHost.environment : <A, B>_ArchivedViewHost<A, B>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return _ArchivedViewHost.environment.setter(v4);
}

uint64_t _ArchivedViewHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(*v1 + 208));
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return _ArchivedViewHost.content.didset();
}

uint64_t (*_ArchivedViewHost.environment.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.environment.modify;
}

double _ArchivedViewHost.size.getter()
{
  v1 = v0 + *(*v0 + 216);
  swift_beginAccess();
  return *v1;
}

uint64_t _ArchivedViewHost.size.setter(double a1, double a2)
{
  v5 = (v2 + *(*v2 + 216));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return _ArchivedViewHost.content.didset();
}

uint64_t (*_ArchivedViewHost.size.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.size.modify;
}

double _ArchivedViewHost.safeAreaInsets.getter()
{
  v1 = v0 + *(*v0 + 224);
  swift_beginAccess();
  return *v1;
}

uint64_t _ArchivedViewHost.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + *(*v4 + 224));
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return _ArchivedViewHost.content.didset();
}

uint64_t _ArchivedViewHost.content.didset()
{
  GraphHost.emptyTransaction(_:)();
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t (*_ArchivedViewHost.safeAreaInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.safeAreaInsets.modify;
}

uint64_t _ArchivedViewHost.auxiliaryData.getter()
{
  v1 = v0 + *(*v0 + 232);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t _ArchivedViewHost.auxiliaryData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 232));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

uint64_t _ArchivedViewHost.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  swift_beginAccess();
  return (*(*(*(v3 + 88) - 8) + 16))(a1, v1 + v4);
}

uint64_t _ArchivedViewHost.delegate.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  swift_beginAccess();
  (*(*(*(v3 + 88) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t _ArchivedViewHost.encodesCustomFontsAsURLs.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xFB | v2;
  return result;
}

_BYTE *(*_ArchivedViewHost.encodesCustomFontsAsURLs.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 4) != 0;
  return _ArchivedViewHost.encodesCustomFontsAsURLs.modify;
}

_BYTE *_ArchivedViewHost.encodesCustomFontsAsURLs.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xFB | v1;
  return result;
}

uint64_t _ArchivedViewHost.encodesPreciseTextLayout.setter(uint64_t result)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xEF | v2;
  return result;
}

_BYTE *(*_ArchivedViewHost.encodesPreciseTextLayout.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 0x10) != 0;
  return _ArchivedViewHost.encodesPreciseTextLayout.modify;
}

_BYTE *_ArchivedViewHost.encodesPreciseTextLayout.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xEF | v1;
  return result;
}

uint64_t _ArchivedViewHost.allowedImageTypes.getter()
{
  specialized _ArchivedViewHost.allowedImageTypes.getter();
}

uint64_t _ArchivedViewHost.allowedImageTypes.setter(uint64_t a1)
{
  v3 = *(*v1 + 248);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t _ArchivedViewHost.defaultImageType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 256);
  swift_beginAccess();
  return outlined init with copy of UTType?(v1 + v3, a1);
}

uint64_t _ArchivedViewHost.defaultImageType.setter(uint64_t a1)
{
  v3 = *(*v1 + 256);
  swift_beginAccess();
  outlined assign with take of UTType?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t _ArchivedViewHost.encodesStableDisplayListIdentifiers.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xFD | v2;
  return result;
}

_BYTE *(*_ArchivedViewHost.encodesStableDisplayListIdentifiers.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 2) != 0;
  return _ArchivedViewHost.encodesStableDisplayListIdentifiers.modify;
}

_BYTE *_ArchivedViewHost.encodesStableDisplayListIdentifiers.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xFD | v1;
  return result;
}

uint64_t _ArchivedViewHost.encodesAssetCatalogReferences.setter(uint64_t result)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xF7 | v2;
  return result;
}

_BYTE *(*_ArchivedViewHost.encodesAssetCatalogReferences.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 8) != 0;
  return _ArchivedViewHost.encodesAssetCatalogReferences.modify;
}

_BYTE *_ArchivedViewHost.encodesAssetCatalogReferences.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xF7 | v1;
  return result;
}

uint64_t _ArchivedViewHost.encodesIntelligenceContent.setter(uint64_t result)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xDF | v2;
  return result;
}

_BYTE *(*_ArchivedViewHost.encodesIntelligenceContent.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 0x20) != 0;
  return _ArchivedViewHost.encodesIntelligenceContent.modify;
}

_BYTE *_ArchivedViewHost.encodesIntelligenceContent.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 32;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xDF | v1;
  return result;
}

_BYTE *(*_ArchivedViewHost.deploymentVersion.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 73);
  return _ArchivedViewHost.deploymentVersion.modify;
}

char *_ArchivedViewHost.__allocating_init(content:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = specialized _ArchivedViewHost.init(content:delegate:)(a1, a2);
  (*(*(*(v3 + 88) - 8) + 8))(a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

char *_ArchivedViewHost.init(content:delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = specialized _ArchivedViewHost.init(content:delegate:)(a1, a2);
  (*(*(*(v5 + 88) - 8) + 8))(a2);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t _ArchivedViewHost.renderUntilStable()()
{
  if (*(v0 + 72) != *(v0 + 74) || *(v0 + 73) != *(v0 + 75))
  {
    GraphHost.uninstantiate(immediately:)(0);
  }

  v2 = 32;
  while (1)
  {
    *(v0 + 48) = 1;
    swift_getWitnessTable();
    result = ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    if (*(v0 + 49) != 1)
    {
      break;
    }

    *(v0 + 48) = 0;
    if (!--v2)
    {
      return result;
    }
  }

  *(v0 + 48) = 0;
  return result;
}

uint64_t _ArchivedViewHost.archiveIfChanged()()
{
  mainThreadPrecondition()();
  _ArchivedViewHost.renderUntilStable()();
  type metadata accessor for Data?(0, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  result = static Update.ensure<A>(_:)();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t closure #1 in _ArchivedViewHost.archiveIfChanged()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = type metadata accessor for ArchivedViewCore.Metadata();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Badge, Spacer)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version));
  swift_getWitnessTable();
  ViewRendererHost.updateViewGraph<A>(body:)();
  v10 = v84;
  if (*(a1 + 56) >= v85)
  {

    *a2 = xmmword_18CD77CA0;
    return result;
  }

  v73 = a2;
  v74 = v4;
  v11 = WORD4(v84);
  v12 = HIDWORD(v84);
  *(a1 + 56) = v85;
  swift_beginAccess();
  v13 = readEnvironment(_:_:)();
  swift_endAccess();
  v78 = v10;
  if (v13)
  {
    type metadata accessor for Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18CD63400;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    MEMORY[0x18D00C9B0](0x6E69766968637241, 0xEA00000000002067);
    v82 = a1;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](2618, 0xE200000000000000);
    v82 = v78;
    LOWORD(v83) = v11;
    DWORD1(v83) = v12;
    v15 = DisplayList.description.getter();
    MEMORY[0x18D00C9B0](v15);

    v16 = v84;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = v16;
    print(_:separator:terminator:)();
    v10 = v78;
  }

  type metadata accessor for DataArchiveWriter();
  swift_allocObject();
  v17 = DataArchiveWriter.init()();
  UUID.init()();
  LOBYTE(v84) = *(a1 + 73);
  default argument 1 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v68 = default argument 6 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v18 = v77;
  ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v76 = v17;
  v87 = _ArchivedViewHost.makeUserInfo(writer:metadata:)(v17, v18);
  v19 = [objc_allocWithZone(MEMORY[0x1E69C70D0]) init];
  *&v84 = v10;
  WORD4(v84) = v11;
  HIDWORD(v84) = v12;
  *(swift_allocObject() + 16) = v19;
  v20 = v19;
  DisplayList.forEachRBDisplayList(_:)();

  static ArchivedViewCore.rbEncoderSetKey.getter();
  v86 = type metadata accessor for RBEncoderSet();
  *&v84 = v20;
  v21 = v78;
  outlined init with take of Any(&v84, &v82);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v87;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v82, v7, isUniquelyReferenced_nonNull_native);
  v23 = (*(v5 + 8))(v7, v74);
  v87 = v80;
  MEMORY[0x1EEE9AC00](v23);
  *(&v71 - 4) = &v87;
  *(&v71 - 3) = a1;
  v68 = v21;
  v69 = v11;
  v70 = v12;
  v24 = v79;
  v25 = static ProtobufEncoder.encoding(_:)();
  if (!v24)
  {
    v28 = v12;
    v72 = v25;
    v74 = v26;
    v29 = ArchiveWriter.addAttachment(data:)();
    v79 = 0;
    v30 = v29;
    v31 = *(v18 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    *&v31[8 * v33 + 32] = v30;
    *(v18 + 8) = v31;
    if ((*(a1 + 72) & 2) != 0)
    {
      _DisplayList_StableIdentityMap.init()();
      *&v84 = v78;
      WORD4(v84) = v11;
      HIDWORD(v84) = v28;
      _DisplayList_StableIdentityMap.addIDs(from:root:)();

      *&v84 = v82;
      v39 = v79;
      v40 = static ProtobufEncoder.encoding<A>(_:)();
      if (v39)
      {
        v79 = v39;
        outlined consume of Data._Representation(v72, v74);

        goto LABEL_9;
      }

      v42 = v40;
      v43 = v41;

      v44 = ArchiveWriter.addAttachment(data:)();
      outlined consume of Data._Representation(v42, v43);
      v79 = 0;
      *(v18 + 16) = v44;
      *(v18 + 24) = 0;
    }

    else
    {
    }

    v34 = a1 + *(*a1 + 232);
    swift_beginAccess();
    v35 = *(v34 + 8);
    if (v35 >> 60 != 15)
    {
      v36 = *v34;
      outlined copy of Data._Representation(*v34, *(v34 + 8));
      v37 = v79;
      v38 = ArchiveWriter.addAttachment(data:)();
      v79 = v37;
      if (v37)
      {
        outlined consume of Data?(v36, v35);
LABEL_8:
        outlined consume of Data._Representation(v72, v74);

LABEL_9:
        outlined destroy of ArchivedViewCore.Metadata(v18, MEMORY[0x1E697E930]);
      }

      v45 = v38;
      outlined consume of Data?(v36, v35);
      *(v18 + 32) = v45;
      *(v18 + 40) = 0;
    }

    if ((*(a1 + 72) & 0x20) != 0)
    {
      _ArchivedViewHost.intelligenceContent()(&v82);
      v80 = v82;
      v81 = v83;
      lazy protocol witness table accessor for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent();
      v50 = v79;
      v51 = static ProtobufEncoder.encoding<A>(_:)();
      v79 = v50;
      if (v50)
      {

        goto LABEL_8;
      }

      v53 = v51;
      v54 = v52;

      v59 = v79;
      v60 = ArchiveWriter.addAttachment(data:)();
      v79 = v59;
      if (v59)
      {
        goto LABEL_33;
      }

      v61 = v60;
      v62 = *(v18 + 48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v62);
      }

      outlined consume of Data._Representation(v53, v54);
      *(v62 + 2) = v64 + 1;
      *&v62[8 * v64 + 32] = v61;
      v65 = v77;
      *(v77 + 6) = v62;
      v18 = v65;
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type ArchivedViewCore.Metadata and conformance ArchivedViewCore.Metadata, MEMORY[0x1E697E930]);
    v46 = v79;
    v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v49 = v73;
    v79 = v46;
    if (v46)
    {

      goto LABEL_8;
    }

    v53 = v47;
    v54 = v48;

    v55 = v79;
    ArchiveWriter.addAttachment(data:)();
    v79 = v55;
    if (!v55)
    {
      outlined consume of Data._Representation(v53, v54);
      v56 = v79;
      v57 = DataArchiveWriter.finalizeData()();
      v79 = v56;
      if (v56)
      {
        outlined destroy of ArchivedViewCore.Metadata(v18, MEMORY[0x1E697E930]);
        outlined consume of Data._Representation(v72, v74);
      }

      else
      {
        v66 = v57;
        v67 = v58;
        outlined destroy of ArchivedViewCore.Metadata(v18, MEMORY[0x1E697E930]);
        outlined consume of Data._Representation(v72, v74);

        *v49 = v66;
        v49[1] = v67;
      }
    }

LABEL_33:
    outlined consume of Data._Representation(v53, v54);
    goto LABEL_8;
  }

  v79 = v24;
  outlined destroy of ArchivedViewCore.Metadata(v18, MEMORY[0x1E697E930]);
}

uint64_t _ArchivedViewHost.makeUserInfo(writer:metadata:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for CodingUserInfoKey();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v38 = MEMORY[0x1E69E7CC8];
  v14 = type metadata accessor for ArchiveWriter();
  static ArchiveWriter.writerKey.getter();
  v37 = v14;
  *&v36 = a1;
  outlined init with take of Any(&v36, v35);

  v15 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, isUniquelyReferenced_nonNull_native);
  v17 = *(v8 + 8);
  v17(v13, v7);
  v18 = v34;
  v38 = v34;
  static ArchivedViewCore.archivedViewHostKey.getter();
  v37 = v6;
  *&v36 = v3;
  outlined init with take of Any(&v36, v35);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, v19);
  v17(v13, v7);
  v20 = v34;
  v38 = v34;
  static ArchivedViewCore.archiveOptionsKey.getter();
  v21 = *(v3 + 36);
  v37 = MEMORY[0x1E697EC88];
  LOWORD(v36) = v21;
  outlined init with take of Any(&v36, v35);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, v22);
  v17(v13, v7);
  v23 = v34;
  v38 = v34;
  static ArchivedViewCore.preferredBundleLanguageKey.getter();
  v24 = type metadata accessor for ArchivedViewCore.Metadata();
  v25 = (a2 + *(v24 + 44));
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
    v37 = MEMORY[0x1E69E6158];
    *&v36 = v27;
    *(&v36 + 1) = v26;
    outlined init with take of Any(&v36, v35);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v23;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v10, v28);
    v17(v10, v7);
    v29 = v34;
    v38 = v34;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v10, &v36);
    _sypSgWOhTm_1(&v36, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for Data?);
    v17(v10, v7);
    v29 = v38;
  }

  static ArchivedViewCore.preferredCompositionLanguage.getter();
  v30 = *(a2 + *(v24 + 48));
  type metadata accessor for CTCompositionLanguage(0);
  v37 = v31;
  LOBYTE(v36) = v30;
  outlined init with take of Any(&v36, v35);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v29;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, v32);
  v17(v13, v7);
  return v34;
}

uint64_t closure #2 in closure #1 in _ArchivedViewHost.archiveIfChanged()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;

  *(a1 + 32) = v4;
  swift_beginAccess();
  type metadata accessor for CGSize(0);

  ProtobufEncoder.messageField<A>(_:_:)();
  if (!v2)
  {
    ProtobufEncoder.messageField<A>(_:_:)();
  }
}

uint64_t _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v127 = a3;
  v124 = a2;
  v8 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v130 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ArchivedViewCore.Metadata();
  MEMORY[0x1EEE9AC00](v103);
  v128 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v102 - v18;
  v123 = type metadata accessor for OSSignpostID();
  v108 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v102 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v102 - v26;
  v28 = *(a4 + 8);
  v116 = a1;
  v129 = a4;
  v118 = v28(v127, a4, v25);
  static OSSignposter.archiving.getter();
  OSSignposter.logHandle.getter();
  v125 = v27;
  OSSignpostID.init(log:)();
  v29 = *(v12 + 8);
  v121 = v12 + 8;
  v122 = v11;
  v119 = v29;
  v29(v19, v11);
  static OSSignposter.archiving.getter();
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v30);
  static OSSignpostID.exclusive.getter();
  v31 = OSSignposter.logHandle.getter();
  v32 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v118;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v31, v32, v34, "archiveStates", "statesCount=%{name=statesCount}ld", v33, 0xCu);
    MEMORY[0x18D0110E0](v33, -1, -1);
  }

  v35 = v108;
  v36 = *(v108 + 16);
  v37 = v123;
  v114 = v108 + 16;
  v113 = v36;
  v36(v120, v23, v123);
  v112 = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v105 = OSSignpostIntervalState.init(id:isOpen:)();
  v38 = *(v35 + 8);
  v108 = v35 + 8;
  v38(v23, v37);
  v119(v16, v122);
  UUID.init()();
  v39 = v131;
  LOBYTE(v134) = *(v131 + 73);
  default argument 1 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v99 = default argument 6 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v40 = v128;
  ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v41 = v124;
  v117 = _ArchivedViewHost.makeUserInfo(writer:metadata:)(v124, v40);
  result = _DisplayList_StableIdentityMap.init()();
  if ((v118 & 0x8000000000000000) == 0)
  {
    v104 = v38;
    if (v118)
    {
      v109 = *(v39 + 72);
      v110 = *(v129 + 16);
      v111 = v129 + 16;
      v107 = "SWIFTUI_PRINT_TREE";

      v130 = 0;
      v106 = xmmword_18CD63400;
      v43 = v127;
      while (1)
      {
        v44 = v115;
        static OSSignposter.archiving.getter();
        v45 = OSSignposter.logHandle.getter();
        v46 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18BD4A000, v45, v46, v48, "archiveState", "", v47, 2u);
          v49 = v47;
          v43 = v127;
          MEMORY[0x18D0110E0](v49, -1, -1);
        }

        v113(v120, v125, v123);
        swift_allocObject();
        v126 = OSSignpostIntervalState.init(id:isOpen:)();
        v119(v44, v122);
        v134 = v41;
        v50 = v129;
        v110(v130, &v134, v43, v129);
        if (v5)
        {
          break;
        }

        v51 = v131;
        v52 = _ArchivedViewHost.renderUntilStable()();
        MEMORY[0x1EEE9AC00](v52);
        *(&v102 - 4) = v43;
        *(&v102 - 3) = v50;
        v99 = v51;
        static Update.ensure<A>(_:)();
        v53 = v134;
        v54 = v135;
        v55 = DWORD1(v135);
        swift_beginAccess();
        v56 = readEnvironment(_:_:)();
        v57 = swift_endAccess();
        if (v56)
        {
          type metadata accessor for Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v58 = swift_allocObject();
          *(v58 + 16) = v106;
          v134 = 0;
          *&v135 = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          MEMORY[0x18D00C9B0](0xD000000000000010, v107 | 0x8000000000000000);
          v132 = v130;
          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x18D00C9B0](v59);

          MEMORY[0x18D00C9B0](543584032, 0xE400000000000000);
          v132 = v131;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x18D00C9B0](2618, 0xE200000000000000);
          v132 = v53;
          LOWORD(v133) = v54;
          DWORD1(v133) = v55;
          v60 = DisplayList.description.getter();
          MEMORY[0x18D00C9B0](v60);
          v51 = v131;

          v61 = v134;
          v62 = v135;
          *(v58 + 56) = MEMORY[0x1E69E6158];
          *(v58 + 32) = v61;
          *(v58 + 40) = v62;
          print(_:separator:terminator:)();
          v43 = v127;
        }

        MEMORY[0x1EEE9AC00](v57);
        *(&v102 - 6) = v43;
        *(&v102 - 5) = v50;
        *(&v102 - 4) = v117;
        *(&v102 - 3) = v51;
        v99 = v53;
        v100 = v54;
        v101 = v55;
        v5 = 0;
        v63 = static ProtobufEncoder.encoding(_:)();
        v65 = v64;
        if ((*(v51 + 72) & 2) != 0)
        {
          v134 = v53;
          LOWORD(v135) = v54;
          DWORD1(v135) = v55;
          _DisplayList_StableIdentityMap.addIDs(from:root:)();
        }

        v66 = v124;
        if ((v109 & 0x20) != 0)
        {
          _ArchivedViewHost.intelligenceContent()(&v134);
          v132 = v134;
          v133 = v135;
          lazy protocol witness table accessor for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent();
          v68 = static ProtobufEncoder.encoding<A>(_:)();
          v70 = v69;

          v71 = ArchiveWriter.addAttachment(data:)();
          v72 = *(v128 + 6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
          }

          v74 = *(v72 + 2);
          v73 = *(v72 + 3);
          if (v74 >= v73 >> 1)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v72);
          }

          outlined consume of Data._Representation(v68, v70);
          *(v72 + 2) = v74 + 1;
          *&v72[8 * v74 + 32] = v71;
          v67 = v128;
          *(v128 + 6) = v72;
          v66 = v124;
        }

        else
        {
          v67 = v128;
        }

        v75 = ArchiveWriter.addAttachment(data:)();
        v76 = *(v67 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
        }

        v78 = *(v76 + 2);
        v77 = *(v76 + 3);
        v79 = v66;
        if (v78 >= v77 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v76);
        }

        v80 = v130 + 1;
        outlined consume of Data._Representation(v63, v65);
        *(v76 + 2) = v78 + 1;
        *&v76[8 * v78 + 32] = v75;
        v43 = v127;
        v40 = v128;
        *(v128 + 1) = v76;
        v39 = v131;
        $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(v131, v126, v43, v129, "archiveState");

        v130 = v80;
        v81 = v118 == v80;
        v41 = v79;
        if (v81)
        {
          goto LABEL_28;
        }
      }

      v39 = v131;
      $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(v131, v126, v43, v50, "archiveState");

      outlined destroy of ArchivedViewCore.Metadata(v40, MEMORY[0x1E697E930]);
      goto LABEL_39;
    }

    v43 = v127;
LABEL_28:

    if ((*(v39 + 72) & 2) != 0)
    {
      v134 = v136;
      v84 = static ProtobufEncoder.encoding<A>(_:)();
      if (v5)
      {

        outlined destroy of ArchivedViewCore.Metadata(v40, MEMORY[0x1E697E930]);
        v50 = v129;
        goto LABEL_39;
      }

      v88 = v84;
      v89 = v85;

      v90 = ArchiveWriter.addAttachment(data:)();
      outlined consume of Data._Representation(v88, v89);
      *(v40 + 16) = v90;
      *(v40 + 24) = 0;
    }

    else
    {
    }

    v50 = v129;
    v82 = (*(v129 + 24))(v43, v129);
    if (!v5)
    {
      if (v83 >> 60 != 15)
      {
        v86 = v82;
        v87 = v83;
        v91 = ArchiveWriter.addAttachment(data:)();
        outlined consume of Data?(v86, v87);
        *(v40 + 32) = v91;
        *(v40 + 40) = 0;
      }

      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type ArchivedViewCore.Metadata and conformance ArchivedViewCore.Metadata, MEMORY[0x1E697E930]);
      v92 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v94 = v93;

      ArchiveWriter.addAttachment(data:)();
      outlined consume of Data._Representation(v92, v94);
      dispatch thunk of ArchiveWriter.finalize()();
      outlined destroy of ArchivedViewCore.Metadata(v40, MEMORY[0x1E697E930]);

      v95 = v39;
      v96 = v105;
      v97 = v43;
      v98 = v129;
      goto LABEL_40;
    }

    outlined destroy of ArchivedViewCore.Metadata(v40, MEMORY[0x1E697E930]);

LABEL_39:
    v95 = v39;
    v96 = v105;
    v97 = v43;
    v98 = v50;
LABEL_40:
    $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(v95, v96, v97, v98, "archiveStates");

    return v104(v125, v123);
  }

  __break(1u);
  return result;
}

{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  mainThreadPrecondition()();
  if (URL.isFileURL.getter())
  {
    type metadata accessor for FileArchiveWriter();
    (*(v10 + 16))(v12, a2, v9);
    result = FileArchiveWriter.__allocating_init(url:)();
    if (!v4)
    {
      _ArchivedViewHost.archiveStates<A>(_:to:)(a1, result, a3, a4);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v24 = a5;
  v5 = type metadata accessor for OSSignpostError();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for OSSignpostID();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static OSSignposter.archiving.getter();
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v16 = v23;
    if ((*(v23 + 88))(v7, v5) == *MEMORY[0x1E69E93E8])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v7, v5);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v15, v22, v19, v24, v17, v18, 2u);
    MEMORY[0x18D0110E0](v18, -1, -1);
  }

  (*(v8 + 8))(v10, v25);
  return (*(v12 + 8))(v14, v11);
}

uint64_t closure #1 in _ArchivedViewHost.archiveStates<A>(_:to:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for (Badge, Spacer)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version));
  swift_getWitnessTable();
  result = ViewRendererHost.updateViewGraph<A>(body:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return result;
}

uint64_t closure #2 in _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = a4;
  v10 = HIDWORD(a5);
  v28 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x1E69C70D0]);

  v15 = [v14 init];
  *&v31 = a4;
  v25 = v10;
  v26 = a5;
  WORD4(v31) = a5;
  HIDWORD(v31) = v10;
  *(swift_allocObject() + 16) = v15;
  v16 = v15;
  DisplayList.forEachRBDisplayList(_:)();

  static ArchivedViewCore.rbEncoderSetKey.getter();
  v32 = type metadata accessor for RBEncoderSet();
  *&v31 = v16;
  outlined init with take of Any(&v31, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = a2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v13, isUniquelyReferenced_nonNull_native);
  (*(v11 + 8))(v13, v28);
  v18 = v33;

  *(a1 + 32) = v18;
  v19 = *(*a3 + 216);
  swift_beginAccess();
  v20 = *(a3 + v19);
  v21 = v27;
  v30[0] = v20;
  type metadata accessor for CGSize(0);

  v22 = v29;
  ProtobufEncoder.messageField<A>(_:_:)();
  if (!v22)
  {
    *&v30[0] = v21;
    WORD4(v30[0]) = v26;
    HIDWORD(v30[0]) = v25;
    ProtobufEncoder.messageField<A>(_:_:)();
  }
}

uint64_t protocol witness for ArchivedViewHostStates.auxiliaryData() in conformance _ArchivedViewHost<A, B>.LegacyStates()
{
  result = specialized _ArchivedViewHost.LegacyStates.auxiliaryData()(*v0, v0[1], v0[2], v0[3]);
  if (!v1)
  {
    v4 = result;
    outlined copy of Data?(result, v3);
    return v4;
  }

  return result;
}

uint64_t _ArchivedViewHost.archiveStates(to:count:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  closure #1 in _ArchivedViewHost.archiveStates(to:count:body:)(partial apply for thunk for @callee_guaranteed (@unowned Int) -> (), v10, a2, v4, a1);
  if (v5)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  mainThreadPrecondition()();
  if (URL.isFileURL.getter())
  {
    type metadata accessor for FileArchiveWriter();
    (*(v10 + 16))(v12, a1, v9);
    result = FileArchiveWriter.__allocating_init(url:)();
    if (!v4)
    {
      _ArchivedViewHost.archiveStates(to:count:body:)(result, a2, a3, a4);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in _ArchivedViewHost.archiveStates(to:count:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[3] = a4;
  v8[0] = a3;
  v8[1] = a1;
  v8[2] = a2;

  v6 = type metadata accessor for _ArchivedViewHost.LegacyStates();
  _ArchivedViewHost.archiveStates<A>(_:to:)(v8, a5, v6, &protocol witness table for _ArchivedViewHost<A, B>.LegacyStates);
}

uint64_t _ArchivedViewHost.archiveStates(count:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mainThreadPrecondition()();
  type metadata accessor for DataArchiveWriter();
  swift_allocObject();
  v8 = DataArchiveWriter.init()();
  _ArchivedViewHost.archiveStates(to:count:body:)(v8, a1, a2, a3);
  if (!v4)
  {
    v3 = DataArchiveWriter.finalizeData()();
  }

  return v3;
}

uint64_t _ArchivedViewHost.archiveStates(to:count:body:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mainThreadPrecondition()();
  type metadata accessor for FileArchiveWriter();
  v8 = a1;
  v9 = FileArchiveWriter.__allocating_init(file:)();
  _ArchivedViewHost.archiveStates(to:count:body:)(v9, a2, a3, a4);
}

uint64_t _ArchivedViewHost.archiveStates<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mainThreadPrecondition()();
  type metadata accessor for DataArchiveWriter();
  swift_allocObject();
  v8 = DataArchiveWriter.init()();
  _ArchivedViewHost.archiveStates<A>(_:to:)(a1, v8, a2, a3);
  if (!v4)
  {
    v3 = DataArchiveWriter.finalizeData()();
  }

  return v3;
}

uint64_t _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  mainThreadPrecondition()();
  type metadata accessor for FileArchiveWriter();
  v8 = a2;
  v9 = FileArchiveWriter.__allocating_init(file:)();
  _ArchivedViewHost.archiveStates<A>(_:to:)(a1, v9, a3, a4);
}

uint64_t _ArchivedViewHost.forEachIdentifiedView(body:)(void (*a1)(_OWORD *), uint64_t a2)
{
  mainThreadPrecondition()();
  swift_getWitnessTable();
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();
  _IdentifiedViewTree.forEach(_:)(a1, a2);
  return outlined destroy of _IdentifiedViewTree(&v5);
}

uint64_t _ArchivedViewHost.applyMutation(_:)(uint64_t a1)
{
  _ArchivedViewHost.renderUntilStable()();
  _ArchivedViewHost.preferenceValue<A>(for:)();
  v2 = *(*&v7[0] + 16);
  if (v2)
  {
    v3 = *&v7[0] + 40;
    do
    {
      v4 = *(v3 - 8);
      v5 = *(a1 + 16);
      v7[0] = *a1;
      v7[1] = v5;
      v8 = *(a1 + 32);

      v4(v7);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t _ArchivedViewHost.preferenceValue<A>(for:)()
{
  mainThreadPrecondition()();
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater._preferenceValue<A>(_:)();
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _ArchivedViewHost.filteredImage(_:)(CGImageRef a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = (*(*(v3 + 104) + 24))(a1, *(v3 + 88));
  swift_endAccess();
  return v4;
}

uint64_t _ArchivedViewHost.imageType(for:)@<X0>(CGImage *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = *v2;
  v5 = type metadata accessor for UTType();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = *(v4 + 240);
  swift_beginAccess();
  v22 = v3 + v21;
  v23 = v39;
  (*(v8 + 16))(v11, v22, v7);
  v24 = v4;
  v25 = v40;
  (*(*(v24 + 104) + 32))(v40, v7);
  (*(v8 + 8))(v11, v7);
  v26 = *(v23 + 48);
  if (v26(v17, 1, v5) == 1)
  {
    v27 = CGImageGetUTType(v25);
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      UTType.init(_:)();
    }

    else
    {
      (*(v23 + 56))(v20, 1, 1, v5);
    }

    if (v26(v17, 1, v5) != 1)
    {
      outlined destroy of UTType?(v17);
    }
  }

  else
  {
    (*(v23 + 32))(v20, v17, v5);
    (*(v23 + 56))(v20, 0, 1, v5);
  }

  outlined init with copy of UTType?(v20, v14);
  if (v26(v14, 1, v5) == 1)
  {
    outlined destroy of UTType?(v20);
    outlined destroy of UTType?(v14);
  }

  else
  {
    v29 = *(v23 + 32);
    v30 = v38;
    v29(v38, v14, v5);
    v31 = *(*v3 + 248);
    swift_beginAccess();
    v32 = *(v3 + v31);

    v33 = specialized Set.contains(_:)(v30, v32);

    outlined destroy of UTType?(v20);
    if (v33)
    {
      v34 = v41;
      v29(v41, v30, v5);
      return (*(v23 + 56))(v34, 0, 1, v5);
    }

    (*(v23 + 8))(v30, v5);
  }

  v36 = *(*v3 + 256);
  swift_beginAccess();
  return outlined init with copy of UTType?(v3 + v36, v41);
}

uint64_t _ArchivedViewHost.failedToEncodeView(type:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(v3 + 104) + 16))(a1, *(v3 + 88));
  return swift_endAccess();
}

uint64_t *_ArchivedViewHost.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 200));

  outlined consume of Data?(*(v0 + *(*v0 + 232)), *(v0 + *(*v0 + 232) + 8));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 240));

  outlined destroy of UTType?(v0 + *(*v0 + 256));
  return v0;
}

uint64_t _ArchivedViewHost.__deallocating_deinit()
{
  _ArchivedViewHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnyArchivedViewHost.allowedImageTypes.getter in conformance _ArchivedViewHost<A, B>()
{
  specialized _ArchivedViewHost.allowedImageTypes.getter();
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance _ArchivedViewHost<A, B>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.responderNode.getter();
}

uint64_t protocol witness for ViewGraphOwner.viewGraph.getter in conformance _ArchivedViewHost<A, B>()
{
  specialized _ArchivedViewHost.viewGraph.getter();
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))()
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
  *(v2 + 32) = _ArchivedViewHost.currentTimestamp.modify();
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>;
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))()
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
  *(v2 + 32) = _ArchivedViewHost.valuesNeedingUpdate.modify();
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>;
}

uint64_t (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))()
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
  *(v2 + 32) = _ArchivedViewHost.renderingPhase.modify();
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))()
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
  *(v2 + 32) = _ArchivedViewHost.externalUpdateCount.modify();
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>;
}

uint64_t _ArchivedViewHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphOwner) == a1)
  {
    v8 = v3;
    WitnessTable = swift_getWitnessTable();
    v3 = *(a1 - 8);
    if (*(v3 + 64) == 16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    result = swift_getWitnessTable();
    v8 = v3;
    WitnessTable = result;
    v3 = *(a1 - 8);
    if (*(v3 + 64) != 16)
    {
      __break(1u);
      return result;
    }

LABEL_9:
    (*(v3 + 16))(a2, &v8, a1);
    return (*(v3 + 56))(a2, 0, 1, a1);
  }

  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphDelegate) == a1)
  {
    goto LABEL_8;
  }

  v6 = *(*(a1 - 8) + 56);

  return v6(a2, 1, 1, a1);
}

Swift::Void __swiftcall _ArchivedViewHost.updateRootView()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v7 - v4;
  v6 = *(v1 + 200);
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  ViewGraph.setRootView<A>(_:)();
  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall _ArchivedViewHost.updateEnvironment()()
{
  v1 = (v0 + *(*v0 + 208));
  swift_beginAccess();
  v2 = *v1;
  v3 = one-time initialization token for configuredForPlatform;

  if (v3 != -1)
  {
    swift_once();
  }

  if (v2)
  {
    if (!static EnvironmentValues.configuredForPlatform || v2 != static EnvironmentValues.configuredForPlatform)
    {
      EnvironmentValues._configureForPlatform(traitCollection:)(0);
    }
  }

  else if (static EnvironmentValues.configuredForPlatform)
  {

    EnvironmentValues.plist.setter();
  }

  GraphHost.setEnvironment(_:)();
}

Swift::Void __swiftcall _ArchivedViewHost.updateSize()()
{
  v1 = (v0 + *(*v0 + 216));
  swift_beginAccess();
  ViewGraph.setProposedSize(_:)(*v1);
}

Swift::Void __swiftcall _ArchivedViewHost.updateSafeArea()()
{
  v1 = (v0 + *(*v0 + 224));
  swift_beginAccess();
  type metadata accessor for Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, MEMORY[0x1E697E490], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD63400;
  *(v2 + 32) = 1;
  v3 = *v1;
  *(v2 + 56) = v1[1];
  *(v2 + 40) = v3;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 1;
  ViewGraph.setSafeAreaInsets(_:)(v2);
}

Swift::Void __swiftcall _ArchivedViewHost.updateContainerSize()()
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  static ViewSize.fixed(_:)();
  ViewGraph.setContainerSize(_:)();
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance _ArchivedViewHost<A, B>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance _ArchivedViewHost<A, B>()
{
  swift_getWitnessTable();

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t _ArchivedViewHost.sizeThatFits(_:)()
{
  _ProposedSize.init(_:)();
  swift_getWitnessTable();
  return ViewRendererHost.sizeThatFits(_:)();
}

uint64_t specialized _ArchivedViewHost.requestUpdate(after:)()
{
  if (v0[6])
  {
    *(v0 + 49) = 1;
  }

  else
  {
    v1 = *v0;
    swift_beginAccess();
    (*(*(v1 + 104) + 8))(*(v1 + 88));
    return swift_endAccess();
  }

  return result;
}

uint64_t specialized _ArchivedViewHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return _ArchivedViewHost.content.didset();
}

uint64_t specialized _ArchivedViewHost.allowedImageTypes.getter()
{
  v1 = *(*v0 + 248);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of UTType?(uint64_t a1, uint64_t a2)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *specialized _ArchivedViewHost.init(content:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *v2;
  *(v2 + 12) = 0;
  v2[26] = 0;
  *(v2 + 7) = 0;
  v7 = v6;
  type metadata accessor for _DisplayList_StableIdentityRoot();
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 24) = 0;
  *(v2 + 8) = _DisplayList_StableIdentityRoot.__allocating_init()();
  static ArchivedViewInput.Value.isArchived.getter();
  *(v2 + 37) = 768;
  EnvironmentValues.init()();
  v8 = &v3[*(*v3 + 216)];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[*(*v3 + 224)];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v2[*(*v2 + 232)] = xmmword_18CD77CA0;
  v10 = *(*v2 + 248);
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E6F90]);
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CD63410;
  static UTType.png.getter();
  static UTType.jpeg.getter();
  v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v3[v10] = v14;
  v15 = *(*v3 + 256);
  static UTType.png.getter();
  (*(v12 + 56))(&v3[v15], 0, 1, v11);
  mainThreadPrecondition()();
  v16 = v5[10];
  (*(*(v16 - 8) + 16))(&v3[*(*v3 + 200)], a1, v16);
  v17 = v5[11];
  v18 = (*(*(v17 - 8) + 16))(&v3[*(*v3 + 240)], a2, v17);
  MEMORY[0x18D00ABE0](v18);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for ViewGraph();
  LOBYTE(v29) = 17;
  v19 = v5[12];
  *(v3 + 2) = ViewGraph.__allocating_init<A>(rootViewType:requestedOutputs:)();
  *&v20 = v19;
  *(&v20 + 1) = v7[13];
  v26 = v20;

  swift_weakInit();

  *&v21 = v16;
  *(&v21 + 1) = v17;
  v29 = v21;
  v30 = v26;
  v22 = type metadata accessor for _ArchivedViewHost.ArchiveHostViewGraph();
  swift_getWitnessTable();
  ViewGraph.append<A>(feature:)();
  (*(*(v22 - 8) + 8))(v27, v22);

  AccessibilityViewGraph.init(graph:)(v23, v27);
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v29 = v27[0];
  v30 = v27[1];
  v31 = v27[2];
  v32 = v28;
  outlined destroy of AccessibilityViewGraph(&v29);

  ViewGraph.setRootView<A>(_:)();

  swift_getWitnessTable();
  ViewGraphRootValueUpdater.initializeViewGraph()();
  static Update.end()();
  return v3;
}

void type metadata completion function for _ArchivedViewHost()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t outlined destroy of ArchivedViewCore.Metadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent()
{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

unint64_t type metadata accessor for RBEncoderSet()
{
  result = lazy cache variable for type metadata for RBEncoderSet;
  if (!lazy cache variable for type metadata for RBEncoderSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBEncoderSet);
  }

  return result;
}

void *initializeWithCopy for _ArchivedViewHost.LegacyStates(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for _ArchivedViewHost.LegacyStates(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for _ArchivedViewHost.LegacyStates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t specialized _ArchivedViewHost.LegacyStates.auxiliaryData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + *(*a4 + 232);
  swift_beginAccess();
  return *v4;
}

uint64_t specialized _ArchivedViewHost.ArchiveHostViewGraph.modifyViewInputs(inputs:graph:)(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    PropertyList.subscript.setter();
    lazy protocol witness table accessor for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider();
    _ViewInputs.textAlwaysOnProvider.setter();
    v4 = v3[72];
    if ((v4 & 2) != 0)
    {

      _ViewInputs.configureStableIDs(root:)();

      v4 = v3[72];
    }

    v5 = v3[73];
    v3[74] = v4;
    v3[75] = v5;
    *(a1 + 36) |= 0x11u;
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _GraphInputs.environment.setter();
  }

  return result;
}

uint64_t PasteHelper.validatedPasteHandler.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v61 = a3;
  v65 = type metadata accessor for IndexSet.Index();
  v5 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for UTType();
  v10 = *(v63 - 1);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexSet();
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v52 - v15;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v66 = v9;
  v67 = v18;
  v58 = a1;
  if (v16)
  {
    v52 = v5;
    v53 = a2;
    v69[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v19 = v69[0];
    v20 = v10 + 16;
    v21 = *(v10 + 16);
    v22 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v59 = *(v10 + 72);
    v60 = v21;
    v23 = (v10 + 8);
    do
    {
      v24 = v62;
      v25 = v63;
      v26 = v20;
      v60(v62, v22, v63);
      v27 = UTType.identifier.getter();
      v29 = v28;
      (*v23)(v24, v25);
      v69[0] = v19;
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v19 = v69[0];
      }

      *(v19 + 16) = v31 + 1;
      v32 = v19 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v22 += v59;
      --v16;
      v20 = v26;
    }

    while (v16);
    a2 = v53;
    v12 = v67;
    v17 = MEMORY[0x1E69E7CC0];
    v5 = v52;
  }

  v33 = [objc_opt_self() generalPasteboard];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v33 itemSetWithPasteboardTypes_];

  if (v35)
  {
    v63 = v33;
    v36 = a2;
    v37 = v56;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = v17;
    v70 = v17;
    (*(v57 + 16))(v54, v37, v12);
    v38 = MEMORY[0x1E6969B50];
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v38);
    v39 = v64;
    v40 = v66;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
      v41 = v65;
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v5 + 8))(v39, v41);
      if (v42)
      {
        break;
      }

      v43 = dispatch thunk of Collection.subscript.read();
      v45 = *v44;
      v43(v69, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v69[0] = v45;
      v46 = closure #1 in PasteHelper.validatedPasteHandler.getter(v63, v58, v36, v61, &v68);
      if (v68)
      {
        MEMORY[0x18D00CC30](v46);
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v53 = v36;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v36 = v53;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v62 = v70;
      }
    }

    outlined destroy of UTType?(v40, type metadata accessor for IndexingIterator<IndexSet>);
    v47 = v62;
    if (v62 >> 62)
    {
      v51 = __CocoaSet.count.getter();
      v48 = v67;
      if (v51)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v48 = v67;
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        v49 = v36(v47);

        (*(v57 + 8))(v56, v48);
        return v49;
      }
    }

    (*(v57 + 8))(v56, v48);
  }

  else
  {
  }

  return 0;
}

uint64_t closure #1 in PasteHelper.validatedPasteHandler.getter@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v71 = a3;
  v72 = a4;
  v70 = a2;
  type metadata accessor for UTType?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v61 - v17;
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v81 = (&v61 - v20);
  v21 = type metadata accessor for IndexSet();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v61 - v25;
  IndexSet.init(integer:)();
  IndexSet._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = [a1 pasteboardTypesForItemSet_];

  if (!v30)
  {
    result = (*(v22 + 8))(v26, v21);
    v44 = 0;
LABEL_21:
    *a5 = v44;
    return result;
  }

  v76 = v26;
  v69 = v22;
  type metadata accessor for [String]();
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v31 + 16))
  {
    (*(v69 + 8))(v76, v21);

    v44 = 0;
    goto LABEL_21;
  }

  v64 = v5;
  v65 = v21;
  v62 = a1;
  v63 = a5;
  v32 = *(v31 + 32);

  v80 = *(v32 + 16);
  if (!v80)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v78;
LABEL_17:

    v45 = v74;
    PasteHelper.availableType(from:)(v38, v70, v74);

    v46 = v79;
    if ((*(v79 + 48))(v45, 1, v39) == 1)
    {
      (*(v69 + 8))(v76, v65);
      result = outlined destroy of UTType?(v45, type metadata accessor for UTType?);
      v44 = 0;
    }

    else
    {
      v81 = *(v46 + 32);
      v47 = v75;
      v81(v75, v45, v39);
      v48 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
      v49 = v39;
      v44 = v48;
      v50 = v68;
      (*(v46 + 16))(v68, v47, v49);
      v51 = v69;
      (*(v69 + 16))(v73, v76, v65);
      v52 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v53 = (v67 + *(v51 + 80) + v52) & ~*(v51 + 80);
      v54 = swift_allocObject();
      v55 = v62;
      *(v54 + 16) = v62;
      v56 = v50;
      v57 = v78;
      v81((v54 + v52), v56, v78);
      v58 = v65;
      (*(v51 + 32))(v54 + v53, v73, v65);
      v59 = v55;
      v60 = v75;
      NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

      (*(v46 + 8))(v60, v57);
      result = (*(v51 + 8))(v76, v58);
    }

    a5 = v63;
    goto LABEL_21;
  }

  v34 = 0;
  v77 = v32;
  v35 = (v79 + 48);
  v36 = (v79 + 32);
  v37 = v32 + 40;
  v38 = MEMORY[0x1E69E7CC0];
  v39 = v78;
  while (v34 < *(v32 + 16))
  {

    UTType.init(_:)();
    if ((*v35)(v12, 1, v39) == 1)
    {
      result = outlined destroy of UTType?(v12, type metadata accessor for UTType?);
    }

    else
    {
      v40 = *v36;
      (*v36)(v81, v12, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v38);
      }

      v38[2] = v42 + 1;
      v43 = v38 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v42;
      v39 = v78;
      result = (v40)(v43, v81, v78);
      v32 = v77;
    }

    ++v34;
    v37 += 16;
    if (v80 == v34)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t PasteHelper.availableType(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v53 = *(a2 + 16);
  if (v53)
  {
    v47 = &v45 - v14;
    v48 = v17;
    v49 = a3;
    v50 = v16;
    v19 = 0;
    v20 = *(v15 + 16);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = *(v15 + 72);
    v23 = a2 + v21;
    v24 = a1 + v21;
    v55 = (v15 + 8);
    v56 = v20;
    v25 = a1;
    v26 = a1 + v21;
    v51 = v15;
    v52 = v23;
    v54 = v15 + 16;
    do
    {
      v27 = v23 + v22 * v19++;
      v20(v11, v27, v6, v18);
      v28 = v25;
      v29 = *(v25 + 16) + 1;
      v30 = v24;
      while (--v29)
      {
        lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
        v30 += v22;
        v24 = v26;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v36 = v51;
          v37 = *(v51 + 32);
          v38 = v48;
          v37(v48, v11, v6);
          v39 = v47;
          v37(v47, v38, v6);
          a3 = v49;
          v37(v49, v39, v6);
          v15 = v36;
          v40 = 0;
          return (*(v15 + 56))(a3, v40, 1, v6);
        }
      }

      v31 = *v55;
      (*v55)(v11, v6);
      v23 = v52;
      v25 = v28;
      v20 = v56;
    }

    while (v19 != v53);
    v32 = 0;
    v33 = *(v28 + 16);
    a3 = v49;
    v34 = v50;
    v35 = v46;
    while (1)
    {
      (v20)(v34, v23 + v22 * v32, v6);
      if (v33)
      {
        break;
      }

LABEL_11:
      ++v32;
      v34 = v50;
      v31(v50, v6);
      v40 = 1;
      v23 = v52;
      v15 = v51;
      v20 = v56;
      if (v32 == v53)
      {
        return (*(v15 + 56))(a3, v40, 1, v6);
      }
    }

    v42 = v26;
    v43 = v33;
    while (1)
    {
      v56(v35, v42, v6);
      if (UTType.conforms(to:)())
      {
        break;
      }

      v31(v35, v6);
      v42 += v22;
      if (!--v43)
      {
        goto LABEL_11;
      }
    }

    v31(v50, v6);
    v44 = v51;
    (*(v51 + 32))(a3, v35, v6);
    v15 = v44;
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  return (*(v15 + 56))(a3, v40, 1, v6);
}

uint64_t closure #2 in closure #1 in PasteHelper.validatedPasteHandler.getter(void (*a1)(id, unint64_t, void), uint64_t a2, void *a3)
{
  v5 = UTType.identifier.getter();
  v6 = MEMORY[0x18D00C850](v5);

  IndexSet._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [a3 dataForPasteboardType:v6 inItemSet:v8];

  if (v10)
  {
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11[2])
    {
      v10 = v11[4];
      v12 = v11[5];
      outlined copy of Data._Representation(v10, v12);
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  a1(v10, v12, 0);
  outlined consume of Data?(v10, v12);
  return 0;
}

Swift::Bool __swiftcall PasteHelper.canPaste(_:)(Swift::OpaquePointer_optional a1)
{
  v29 = v1;
  v30 = v2;
  v28 = *&a1.is_nil;
  rawValue = a1.value._rawValue;
  type metadata accessor for UTType?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!rawValue)
  {
    v22 = [objc_opt_self() generalPasteboard];
    v23 = [v22 itemProviders];

    type metadata accessor for NSItemProvider();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_27:
    v7 = __CocoaSet.count.getter();
    goto LABEL_4;
  }

  v6 = rawValue;
  if (rawValue >> 62)
  {
    goto LABEL_27;
  }

LABEL_3:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v24 = v31;
    PasteHelper.availableType(from:)(v10, v28, v31);

    v25 = type metadata accessor for UTType();
    v26 = (*(*(v25 - 8) + 48))(v24, 1, v25) != 1;
    outlined destroy of UTType?(v24, type metadata accessor for UTType?);
    LOBYTE(isUniquelyReferenced_nonNull_native) = v26;
    return isUniquelyReferenced_nonNull_native;
  }

  v9 = 0;
  v32 = v6 & 0xFFFFFFFFFFFFFF8;
  v33 = v6 & 0xC000000000000001;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v33)
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x18D00E9C0](v9, v6);
    }

    else
    {
      if (v9 >= *(v32 + 16))
      {
        goto LABEL_31;
      }

      isUniquelyReferenced_nonNull_native = *(v6 + 8 * v9 + 32);
    }

    v11 = isUniquelyReferenced_nonNull_native;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [isUniquelyReferenced_nonNull_native registeredContentTypes];
    type metadata accessor for UTType();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);
    v16 = v10[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v10[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
      if (*(v14 + 16))
      {
LABEL_21:
        if ((v10[3] >> 1) - v10[2] < v15)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_35;
          }

          v10[2] = v21;
        }

        goto LABEL_7;
      }
    }

    if (v15)
    {
      goto LABEL_33;
    }

LABEL_7:
    ++v9;
    if (v12 == v7)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return isUniquelyReferenced_nonNull_native;
}

uint64_t (*closure #1 in PasteHelper.init(supportedContentTypes:payloadAction:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return partial apply for closure #1 in closure #1 in PasteHelper.init(supportedContentTypes:payloadAction:);
}

uint64_t PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static Transferable.readableContentTypes.getter();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  return v8;
}

uint64_t (*closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  return partial apply for closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
}

uint64_t closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  type metadata accessor for [NSItemProvider](0);

  AtomicBox.init(wrappedValue:)();
  v13 = v17[1];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = v13;
  v15[7] = a2;
  v15[8] = a3;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v15);

  return outlined destroy of UTType?(v12, type metadata accessor for TaskPriority?);
}

uint64_t closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for TaskPriority?(0);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(a7 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)()
{
  v0[2] = Array.init()();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<[NSItemProvider]>, type metadata accessor for [NSItemProvider], MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v1 = v0[3];
  v0[17] = v1;
  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    v0[18] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[19] = 0;
        v3 = v0[17];
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x18D00E9C0](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[20] = v4;
        v6 = swift_task_alloc();
        v0[21] = v6;
        *v6 = v0;
        v6[1] = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
        v7 = v0[13];
        v8 = v0[8];
        v9 = v0[9];

        return NSItemProvider.loadTransferable<A>(for:)(v7, v5, v8, v9);
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v10 = v0[2];
  v0[4] = v10;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
  }

  else
  {
    v11 = v0[10];
    v13 = v0[6];
    v12 = v0[7];
    v14 = type metadata accessor for TaskPriority();
    v19 = *(v0 + 4);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = v19;
    *(v16 + 48) = v13;
    *(v16 + 56) = v12;
    *(v16 + 64) = v10;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v16);
  }

  v18 = v0[1];

  return v18();
}

{

  if (v0)
  {

    v1 = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
  }

  else
  {
    v1 = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);

  (*(v2 + 56))(v1, 1, 1, v5);
  (*(v4 + 8))(v1, v3);
  v6 = *(v0 + 152) + 1;
  if (v6 == *(v0 + 144))
  {

    v7 = *(v0 + 16);
    *(v0 + 32) = v7;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
    }

    else
    {
      v10 = *(v0 + 80);
      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      v13 = type metadata accessor for TaskPriority();
      v24 = *(v0 + 64);
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      type metadata accessor for MainActor();

      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E85E0];
      *(v15 + 16) = v14;
      *(v15 + 24) = v16;
      *(v15 + 32) = v24;
      *(v15 + 48) = v12;
      *(v15 + 56) = v11;
      *(v15 + 64) = v7;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v15);
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 152) = v6;
    v8 = *(v0 + 136);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x18D00E9C0]();
    }

    else
    {
      v9 = *(v8 + 8 * v6 + 32);
    }

    *(v0 + 160) = v9;
    v20 = swift_task_alloc();
    *(v0 + 168) = v20;
    *v20 = v0;
    v20[1] = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
    v21 = *(v0 + 104);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);

    return NSItemProvider.loadTransferable<A>(for:)(v21, v19, v22, v23);
  }
}

{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[8];
  (*(v5 + 56))(v4, 0, 1, v6);
  (*(v5 + 32))(v2, v4, v6);
  (*(v5 + 16))(v3, v2, v6);
  type metadata accessor for Array();
  Array.append(_:)();

  (*(v5 + 8))(v2, v6);
  v7 = v0[19] + 1;
  if (v7 == v0[18])
  {

    v8 = v0[2];
    v0[4] = v8;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
    }

    else
    {
      v11 = v0[10];
      v13 = v0[6];
      v12 = v0[7];
      v14 = type metadata accessor for TaskPriority();
      v25 = *(v0 + 4);
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      type metadata accessor for MainActor();

      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E85E0];
      *(v16 + 16) = v15;
      *(v16 + 24) = v17;
      *(v16 + 32) = v25;
      *(v16 + 48) = v13;
      *(v16 + 56) = v12;
      *(v16 + 64) = v8;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v16);
    }

    v18 = v0[1];

    return v18();
  }

  else
  {
    v0[19] = v7;
    v9 = v0[17];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x18D00E9C0]();
    }

    else
    {
      v10 = *(v9 + 8 * v7 + 32);
    }

    v0[20] = v10;
    v21 = swift_task_alloc();
    v0[21] = v21;
    *v21 = v0;
    v21[1] = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
    v22 = v0[13];
    v23 = v0[8];
    v24 = v0[9];

    return NSItemProvider.loadTransferable<A>(for:)(v22, v20, v23, v24);
  }
}

uint64_t NSItemProvider.loadTransferable<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](NSItemProvider.loadTransferable<A>(for:), 0, 0);
}

uint64_t NSItemProvider.loadTransferable<A>(for:)()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = NSItemProvider.loadTransferable<A>(for:);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000016, 0x800000018CD44510, partial apply for closure #1 in NSItemProvider.loadTransferable<A>(for:), v2, v5);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](NSItemProvider.loadTransferable<A>(for:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v8, v7);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

void closure #1 in NSItemProvider.loadTransferable<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Error();
  v7 = type metadata accessor for CheckedContinuation();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
}

uint64_t closure #1 in closure #1 in NSItemProvider.loadTransferable<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  type metadata accessor for Error();
  v11 = type metadata accessor for Result();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (v17 - v13);
  (*(v15 + 16))(v17 - v13, a1, v11, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17[1] = *v14;
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v5 + 32))(v10, v14, a3);
    (*(v5 + 16))(v7, v10, a3);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    return (*(v5 + 8))(v10, a3);
  }
}

void PasteHelper.ConfigurationSupport.pasteHelper.didset(uint64_t a1)
{
  v31 = type metadata accessor for UTType();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  if (!v6)
  {
    __break(1u);
    return;
  }

  if (a1)
  {

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ22UniformTypeIdentifiers6UTTypeV_Tt1g5(v7, a1))
    {

      return;
    }
  }

  else
  {
  }

  v8 = *(v6 + 16);
  if (v8)
  {
    v27 = v1;
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v32;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = *(v10 + 64);
    v26[1] = v6;
    v13 = v6 + ((v12 + 32) & ~v12);
    v28 = *(v10 + 56);
    v29 = v11;
    v30 = v10;
    v14 = (v10 - 8);
    do
    {
      v15 = v31;
      v29(v5, v13, v31);
      v16 = UTType.identifier.getter();
      v18 = v17;
      (*v14)(v5, v15);
      v32 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v9 = v32;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v13 += v28;
      --v8;
    }

    while (v8);

    v1 = v27;
  }

  else
  {
  }

  v22 = objc_allocWithZone(MEMORY[0x1E69DCD38]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v22 initWithAcceptableTypeIdentifiers_];

  v25 = *(v1 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration);
  *(v1 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration) = v24;
}

unint64_t type metadata accessor for NSItemProvider()
{
  result = lazy cache variable for type metadata for NSItemProvider;
  if (!lazy cache variable for type metadata for NSItemProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSItemProvider);
  }

  return result;
}

uint64_t outlined copy of PasteHelper?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UTType and conformance UTType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of UTType?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}