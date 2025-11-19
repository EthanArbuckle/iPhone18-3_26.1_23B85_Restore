unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v21 = ~v4;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v5;
      v9 = *v8;
      v10 = *(v8 + 8);
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v14;
      v15 = v9;
      if (a2 < 0)
      {
        goto LABEL_10;
      }

      v16 = dispatch thunk of static AttributedStringKey.name.getter();
LABEL_11:
      if (v11 == v16 && v13 == v17)
      {
        outlined consume of AttributedString.AnyAttribute(v9, v10);

        return v5;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v9, v10);

      if (v19)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v21;
      if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v9 == a1)
      {
        return v5;
      }

      goto LABEL_4;
    }

    v11 = dispatch thunk of static AttributedStringKey.name.getter();
    v13 = v12;
LABEL_10:
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_11;
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v12 = ~v6;
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v7;
      if (*v13 != a1)
      {
        goto LABEL_6;
      }

      v14 = *(v13 + 8);
      if (!v14)
      {
        break;
      }

      if (!a2)
      {

LABEL_4:

LABEL_5:

        goto LABEL_6;
      }

      v18 = *(v13 + 16);
      if (v14 == a2)
      {
        swift_retain_n();
      }

      else
      {
        v15 = *(*v14 + 112);
        swift_retain_n();

        LOBYTE(v15) = v15(v16);

        if ((v15 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (v18 == a3)
      {
        return v7;
      }

LABEL_6:
      v7 = (v7 + 1) & v12;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

    if (!a2)
    {
      return v7;
    }

    goto LABEL_4;
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void type metadata accessor for AGGraphRef?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (label: String?, value: Any)()
{
  if (!lazy cache variable for type metadata for (label: String?, value: Any))
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (label: String?, value: Any));
    }
  }
}

unint64_t lazy protocol witness table accessor for type GraphHost.RemovedState and conformance GraphHost.RemovedState()
{
  result = lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState;
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState;
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState;
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState;
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphHost.ConstantID and conformance GraphHost.ConstantID()
{
  result = lazy protocol witness table cache variable for type GraphHost.ConstantID and conformance GraphHost.ConstantID;
  if (!lazy protocol witness table cache variable for type GraphHost.ConstantID and conformance GraphHost.ConstantID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphHost.ConstantID and conformance GraphHost.ConstantID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphMutation_Style and conformance _GraphMutation_Style()
{
  result = lazy protocol witness table cache variable for type _GraphMutation_Style and conformance _GraphMutation_Style;
  if (!lazy protocol witness table cache variable for type _GraphMutation_Style and conformance _GraphMutation_Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphMutation_Style and conformance _GraphMutation_Style);
  }

  return result;
}

uint64_t assignWithCopy for GraphHost.Data(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for GraphHost.Data(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t type metadata completion function for AssignmentGraphMutation()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AssignmentGraphMutation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-10 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    (*(v4 + 16))((a1 + v5 + 9) & ~v5, (a2 + v5 + 9) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

uint64_t initializeWithCopy for AssignmentGraphMutation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithCopy for AssignmentGraphMutation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 9 + a1) & ~*(v5 + 80), (a2 + *(v5 + 80) + 9) & ~*(v5 + 80));
  return a1;
}

uint64_t initializeWithTake for AssignmentGraphMutation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for AssignmentGraphMutation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for AssignmentGraphMutation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
  }

  v8 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
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

void storeEnumTagSinglePayload for AssignmentGraphMutation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 9) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 9] & ~v8;

  v18(v19);
}

void *initializeBufferWithCopyOfBuffer for AsyncTransaction(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithCopy for AsyncTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *assignWithTake for AsyncTransaction(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

unint64_t partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(v1, v4);
}

{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), v0 + 24);
}

{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), v0 + 24);
}

uint64_t outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, a3, a4, a5);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  v0 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

uint64_t specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()(uint64_t result)
{
  v1 = result;
  if (result)
  {
    swift_getObjectType();
    v2 = off_1F00C1A70[0];

    v4 = v2();
    if (*v3)
    {
      *v3 &= ~1u;
    }

    (v4)(v29, 0);

    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((result & 2) == 0)
  {
    goto LABEL_3;
  }

  swift_getObjectType();
  v5 = off_1F00C1A70[0];

  v7 = v5();
  if ((*v6 & 2) != 0)
  {
    *v6 &= ~2u;
  }

  (v7)(v29, 0);

  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  swift_getObjectType();
  v8 = off_1F00C1A70[0];

  v10 = v8();
  if ((*v9 & 4) != 0)
  {
    *v9 &= ~4u;
  }

  (v10)(v29, 0);

  ViewGraph.invalidateTransform()();

  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  swift_getObjectType();
  v11 = off_1F00C1A70[0];

  v13 = v11();
  if ((*v12 & 8) != 0)
  {
    *v12 &= ~8u;
  }

  (v13)(v29, 0);

  if ((v1 & 0x10) == 0)
  {
LABEL_6:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  swift_getObjectType();
  v14 = off_1F00C1A70[0];

  v16 = v14();
  if ((*v15 & 0x10) != 0)
  {
    *v15 &= ~0x10u;
  }

  (v16)(v29, 0);

  if ((v1 & 0x20) == 0)
  {
LABEL_7:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  swift_getObjectType();
  v17 = off_1F00C1A70[0];

  v19 = v17();
  if ((*v18 & 0x20) != 0)
  {
    *v18 &= ~0x20u;
  }

  (v19)(v29, 0);

  if ((v1 & 0x40) == 0)
  {
LABEL_8:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  swift_getObjectType();
  v20 = off_1F00C1A70[0];

  v22 = v20();
  if ((*v21 & 0x40) != 0)
  {
    *v21 &= ~0x40u;
  }

  (v22)(v29, 0);

  if ((v1 & 0x80) == 0)
  {
LABEL_9:
    if ((v1 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_32:
  swift_getObjectType();
  v23 = off_1F00C1A70[0];

  v25 = v23();
  if ((*v24 & 0x80) != 0)
  {
    *v24 &= ~0x80u;
  }

  (v25)(v29, 0);

  if ((v1 & 0x100) != 0)
  {
LABEL_35:
    swift_getObjectType();
    v26 = off_1F00C1A70[0];

    v28 = v26();
    if ((*v27 & 0x100) != 0)
    {
      *v27 &= ~0x100u;
    }

    (v28)(v29, 0);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  ObjectType = swift_getObjectType();

  return specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()(v4, v1, v3, ObjectType, v2);
}

void *specialized static GraphHost.flushGlobalTransactions()()
{
  if (one-time initialization token for pendingGlobalTransactions != -1)
  {
LABEL_29:
    swift_once();
  }

  swift_beginAccess();
  result = static GraphHost.pendingGlobalTransactions;
  v25 = *(static GraphHost.pendingGlobalTransactions + 2);
  if (v25)
  {
    v1 = 0;
    v23 = static GraphHost.pendingGlobalTransactions + 32;
    v24 = static GraphHost.pendingGlobalTransactions;
    static GraphHost.pendingGlobalTransactions = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v1 >= result[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v2 = &v23[40 * v1];
      v3 = *(v2 + 1);
      v4 = *(v2 + 2);
      v5 = *(v2 + 6);
      v6 = *(v2 + 7);
      v7 = *(v2 + 4);
      ObjectType = swift_getObjectType();
      v9 = *(v3 + 8);

      swift_unknownObjectRetain();
      v10 = v9(ObjectType, v3);
      if (!v10)
      {
        break;
      }

      v11 = v10;
      swift_retain_n();

      LOBYTE(v26[0]) = 0;
      specialized GraphHost.runTransaction(_:do:id:)(v4, v6, v11, v4, v5 | (v6 << 32), v7);

      if ((*(*v11 + 192))(v12))
      {
        v14 = v13;
        v15 = swift_getObjectType();
        (*(v14 + 16))(v15, v14);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
LABEL_5:

LABEL_6:
      ++v1;
      result = v24;
      if (v1 == v25)
      {
      }
    }

    _threadTransactionData();
    v29 = v4;
    v16 = one-time initialization token for v5;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C524 == 1)
    {
      if ((dyld_program_minos_at_least() & 1) == 0)
      {
LABEL_22:
        _setThreadTransactionData();
        v19 = *(v7 + 16);
        if (v19)
        {
          v20 = v7 + 32;
          do
          {
            outlined init with copy of AnyTrackedValue(v20, v26);
            v22 = v27;
            v21 = v28;
            __swift_project_boxed_opaque_existential_1(v26, v27);
            (*(v21 + 8))(v22, v21);
            __swift_destroy_boxed_opaque_existential_1(v26);
            v20 += 40;
            --v19;
          }

          while (v19);
        }

        _setThreadTransactionData();

        swift_unknownObjectRelease();

        goto LABEL_5;
      }
    }

    else if (dword_1ED53C520 < v17)
    {
      goto LABEL_22;
    }

    v18 = _threadTransactionData();
    if (v18)
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v18 = swift_dynamicCastClassUnconditional();
    }

    v29 = v18;
    PropertyList.merge(_:)(v4);
    goto LABEL_22;
  }

  return result;
}

uint64_t outlined assign with take of WeakBox<AnyLocationBase>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in variable initialization expression of static GraphHost.sharedGraph()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  return handleTraceNotification(graph:token:)(v1, *(v2 + 16));
}

uint64_t destroy for GlobalTransaction()
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for GlobalTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for GlobalTransaction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for GlobalTransaction(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(uint64_t a1, unint64_t *a2)
{
  type metadata accessor for (String, String)(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance GlassEnabledPredicate(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v7 = *a1;
  v6 = a1[1];
  v12[2] = a1[2];
  v9 = v7;
  v10 = v6;
  v11 = a1[2];
  outlined init with copy of _GraphInputs(v12, v13);
  LOBYTE(a4) = a4(&v9);
  v13[0] = v9;
  v13[1] = v10;
  v13[2] = v11;
  outlined destroy of _GraphInputs(v13);
  return a4 & 1;
}

uint64_t protocol witness for static ViewInputFlag.value.getter in conformance _SemanticFeature<A>@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getWitnessTable();
  *a1 = 1;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance _SemanticFeature<A>(_OWORD *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return static ViewInputFlag.evaluate(inputs:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SemanticFeature<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static ViewInputFlag._makeInputs(modifier:inputs:)(WitnessTable, a2, a3, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance <> InvertedViewInputPredicate<A>@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getWitnessTable();
  *a1 = 0;
  return result;
}

uint64_t protocol witness for static ViewInputFlag.value.getter in conformance SemanticsIsLinkedOnOrAfter<A>@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getWitnessTable();
  *a1 = 1;
  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance SemanticsIsLinkedOnOrAfter<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static ViewInputFlag._makeInputs(modifier:inputs:)(WitnessTable, a2, a3, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance SemanticsIsLinkedOnOrAfter<A>@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getWitnessTable();
  *a1 = 0;
  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance BothFeatures<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return specialized static ViewInputFlag._makeInputs(modifier:inputs:)(a2, a3, WitnessTable);
}

uint64_t specialized static ViewInputFlag._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = &v11 - v7;
  v9 = swift_checkMetadataState();
  (*(a3 + 48))(a2, a3);
  return _GraphInputs.subscript.setter(v8, v9, v9, v5);
}

uint64_t instantiation function for generic protocol witness table for <> InvertedViewInputPredicate<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t VectorImageLayer.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  *a2 = result;
  a2[1] = 2;
  return result;
}

id CUINamedVectorGlyph.image(at:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (one-time initialization token for valueLock != -1)
  {
    swift_once();
  }

  v11 = static CUINamedVectorGlyph.valueLock;
  [static CUINamedVectorGlyph.valueLock lock];
  [v5 variableMinValue];
  v13 = v12;
  [v5 variableMaxValue];
  v15 = v14;
  if ((a5 & 0x100000000) != 0)
  {
    v16 = INFINITY;
  }

  else
  {
    v16 = *&a5;
  }

  v17 = 0.0;
  if ((a5 & 0x100000000) != 0)
  {
    v17 = INFINITY;
  }

  [v5 setVariableMinValue_];
  [v5 setVariableMaxValue_];
  if (a4)
  {
    v18 = [v5 image];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }
  }

  else
  {
    v19 = [v5 rasterizeImageUsingScaleFactor:*&a3 forTargetSize:{*&a1, *&a2}];
  }

  [v5 setVariableMinValue_];
  [v5 setVariableMaxValue_];
  [v11 unlock];
  return v19;
}

uint64_t VectorImageLayer.contents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t VectorImageLayer.init(pdfPage:size:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  a3[1] = 2;
  a2(0);
  a3[2] = 0;
  a3[3] = 0;
  result = swift_allocObject();
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *a3 = result;
  return result;
}

id VectorImageLayer.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return outlined copy of Image.Location?(v2);
}

void VectorImageLayer.location.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location?(*(v1 + 8));
  *(v1 + 8) = v2;
}

uint64_t VectorImageLayer.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VectorImageLayer.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

Swift::Int VectorImageLayer.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t VectorImageLayer.encode(to:)(uint64_t a1)
{
  v4 = *v1;
  (*(**v1 + 96))();
  v5 = specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  v6 = (*(*v4 + 88))(v5);
  v8 = v7;
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  *(a1 + 24) = v10;
  if (!__OFADD__(v9, 1))
  {
    *(a1 + 8) = v9 + 1;
    CGSize.encode(to:)(a1, v6, v8);
    ProtobufEncoder.endLengthDelimited()();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t VectorImageLayer.init(from:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    goto LABEL_56;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v6 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v6)
      {
        goto LABEL_58;
      }

      *(a1 + 24) = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    if (v11 < 8)
    {
      goto LABEL_58;
    }

LABEL_11:
    if (v11 >> 3 == 2)
    {
      break;
    }

    if (v11 >> 3 == 1)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_58;
      }

      v3 = *(a1 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v14 = *(v3 + 2);
      v13 = *(v3 + 3);
      if (v14 >= v13 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v3);
      }

      *(v3 + 2) = v14 + 1;
      *&v3[8 * v14 + 32] = v7;
      *(a1 + 40) = v3;
      v15 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return swift_unknownObjectRelease();
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = *(a1 + 8) + v15;
        if (v7 < v16)
        {
          goto LABEL_58;
        }

        *(a1 + 16) = v16;
        CodableRBDisplayListContents.init(from:)(a1, &v34);
        v3 = *(a1 + 40);
        if (!*(v3 + 2))
        {
          goto LABEL_68;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = *(v3 + 2);
          if (!v17)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v17 = *(v3 + 2);
          if (!v17)
          {
            goto LABEL_70;
          }
        }

        v18 = v17 - 1;
        v7 = *&v3[8 * v18 + 32];
        *(v3 + 2) = v18;
        swift_unknownObjectRelease();
        *(a1 + 40) = v3;
        *(a1 + 16) = v7;
        v8 = v34;
        goto LABEL_4;
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      __break(1u);
      do
      {
        __break(1u);
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v31 = *(v3 + 2);
        if (v31)
        {
          goto LABEL_65;
        }

        __break(1u);
        v3 = *(a1 + 40);
      }

      while (!*(v3 + 2));
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v31 = *(v3 + 2);
        if (v31)
        {
LABEL_65:
          v32 = v31 - 1;
          v33 = *&v3[8 * v32 + 32];
          *(v3 + 2) = v32;
          result = swift_unknownObjectRelease();
          *(a1 + 40) = v3;
          *(a1 + 16) = v33;
          return result;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v3 = result;
        v31 = *(result + 16);
        if (v31)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
      return result;
    }

    v27 = v11 & 7;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v29 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v29 < 0)
        {
          goto LABEL_71;
        }

        v28 = *(a1 + 8) + v29;
        if (v7 < v28)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v27 != 5)
        {
          goto LABEL_58;
        }

        v28 = *(a1 + 8) + 4;
        if (v7 < v28)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      if ((v11 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        goto LABEL_4;
      }

      if (v27 != 1)
      {
        goto LABEL_58;
      }

      v28 = *(a1 + 8) + 8;
      if (v7 < v28)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 8) = v28;
LABEL_4:
    v6 = *(a1 + 8);
    if (v6 >= v7)
    {
      *(a1 + 24) = 0;
      if (v8)
      {
        type metadata accessor for DisplayListImageContents();
        result = swift_allocObject();
        *(result + 32) = v9;
        *(result + 40) = v10;
        *(result + 16) = MEMORY[0x1E69E7CC8];
        *(result + 24) = v8;
        *a2 = result;
        a2[1] = 2;
        a2[2] = 0;
        a2[3] = 0;
        return result;
      }

LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_58;
  }

  v3 = *(a1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v20 = *(v3 + 2);
  v19 = *(v3 + 3);
  if (v20 >= v19 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v3);
  }

  *(v3 + 2) = v20 + 1;
  *&v3[8 * v20 + 32] = v7;
  *(a1 + 40) = v3;
  v21 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  if (v21 < 0)
  {
    goto LABEL_67;
  }

  v22 = *(a1 + 8) + v21;
  if (v7 >= v22)
  {
    *(a1 + 16) = v22;
    specialized CGPoint.init(from:)(a1);
    v3 = *(a1 + 40);
    if (!*(v3 + 2))
    {
      goto LABEL_69;
    }

    v9 = v23;
    v10 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = *(v3 + 2);
      if (!v25)
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v25 = *(v3 + 2);
    if (v25)
    {
LABEL_36:
      v26 = v25 - 1;
      v7 = *&v3[8 * v26 + 32];
      *(v3 + 2) = v26;
      *(a1 + 40) = v3;
      *(a1 + 16) = v7;
      goto LABEL_4;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    *(a1 + 24) = 0;
    goto LABEL_57;
  }

LABEL_58:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t DisplayListImageContents.__allocating_init(displayList:size:)(uint64_t a1, double a2, double a3)
{
  result = swift_allocObject();
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = a1;
  return result;
}

Swift::Void __swiftcall CachedVectorImageContents.draw(in:)(CGContextRef in)
{
  [(*(*v1 + 96))() renderInContext:in options:0];

  swift_unknownObjectRelease();
}

uint64_t CachedVectorImageContents.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t CachedVectorImageContents.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t CachedVectorImageContents.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id one-time initialization function for valueLock()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  static CUINamedVectorGlyph.valueLock = result;
  return result;
}

uint64_t DrawableImageContents.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PDFImageContents.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t DisplayListImageContents.init(displayList:size:)(uint64_t a1, double a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = a1;
  return v3;
}

uint64_t DisplayListImageContents.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t DisplayListImageContents.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type VectorImageLayer and conformance VectorImageLayer()
{
  result = lazy protocol witness table cache variable for type VectorImageLayer and conformance VectorImageLayer;
  if (!lazy protocol witness table cache variable for type VectorImageLayer and conformance VectorImageLayer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VectorImageLayer and conformance VectorImageLayer);
  }

  return result;
}

uint64_t destroy for VectorImageLayer(uint64_t a1)
{

  v2 = *(a1 + 8);
  if (v2 >= 3)
  {
  }
}

void *initializeWithCopy for VectorImageLayer(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      a1[1] = 2;
    }

    else
    {
      a1[1] = v4;
      v5 = v4;
    }
  }

  else
  {
    a1[1] = v4;
  }

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

void *assignWithCopy for VectorImageLayer(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a1 + 1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 != 2)
  {
    if (v6 == 2)
    {
      outlined destroy of Image.Location(a1 + 1);
    }

    else
    {
      if (v5 < 2)
      {
        if (v6 < 2)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

      if (v6 >= 2)
      {
        *v4 = v6;
        v9 = v6;

        goto LABEL_9;
      }
    }

    v6 = a2[1];
    goto LABEL_8;
  }

  if (v6 >= 2)
  {
    if (v6 == 2)
    {
      v6 = 2;
      goto LABEL_8;
    }

LABEL_12:
    *v4 = v6;
    v8 = v6;
    goto LABEL_9;
  }

LABEL_8:
  *v4 = v6;
LABEL_9:
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for VectorImageLayer(void *a1, void *a2)
{
  *a1 = *a2;

  v5 = a1 + 1;
  v4 = a1[1];
  v6 = a2[1];
  if (v4 == 2)
  {
    if (v6 != 2)
    {
      *v5 = v6;
      goto LABEL_7;
    }

LABEL_6:
    *v5 = 2;
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    outlined destroy of Image.Location(a1 + 1);
    goto LABEL_6;
  }

  if (v4 >= 2)
  {
    if (v6 >= 2)
    {
      *v5 = v6;
    }

    else
    {

      *v5 = v6;
    }
  }

  else
  {
    *v5 = v6;
  }

LABEL_7:
  v7 = a2[3];
  a1[2] = a2[2];
  a1[3] = v7;

  return a1;
}

uint64_t PreferenceValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized PreferenceValues.subscript.setter(a1, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for PreferenceValues.Value();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*PreferenceValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
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
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for PreferenceValues.Value();
  v11[4] = v12;
  v13 = *(v12 - 8);
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
  PreferenceValues.subscript.getter(a2, a3, a4, v15);
  return PreferenceValues.subscript.modify;
}

void PreferenceValues.subscript.modify(uint64_t **a1, char a2)
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
    specialized PreferenceValues.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized PreferenceValues.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PreferenceValues.removeValue<A>(for:)(uint64_t a1)
{
  v7[0] = *v1;

  v3 = PreferenceValues.index<A>(of:)(a1);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    specialized Array.remove(at:)(v3, v7);
    return outlined destroy of PreferenceValues.Entry(v7);
  }

  return result;
}

Swift::Bool __swiftcall PreferenceValues.mayNotBeEqual(to:)(SwiftUI::PreferenceValues to)
{
  v2 = *to.entries._rawValue;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4 != *(*to.entries._rawValue + 16))
  {
    return 1;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = v3 + 32;
  v7 = v2 + 32;
  while (v5 < *(v3 + 16))
  {
    LOBYTE(to.entries._rawValue) = outlined init with copy of PreferenceValues.Entry(v6, &v16);
    v8 = *(v2 + 16);
    if (v5 == v8)
    {
      outlined destroy of PreferenceValues.Entry(&v16);
      LOBYTE(to.entries._rawValue) = 0;
      return to.entries._rawValue;
    }

    if (v5 >= v8)
    {
      goto LABEL_18;
    }

    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    outlined init with copy of PreferenceValues.Entry(v7, v24);
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v12 = v24[0];
    v13 = v24[1];
    v14 = v24[2];
    v15 = v25;
    if (v20 != *&v24[0])
    {
      outlined destroy of PreferenceValues.Entry(&v12);
      outlined destroy of PreferenceValues.Entry(&v16);
      return 1;
    }

    v9 = v17;
    outlined destroy of PreferenceValues.Entry(&v16);
    v10 = v13;
    LOBYTE(to.entries._rawValue) = outlined destroy of PreferenceValues.Entry(&v12);
    if (v9 == -1 || v10 == -1 || v9 != v10)
    {
      return 1;
    }

    ++v5;
    v6 += 56;
    v7 += 56;
    if (v4 == v5)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return to.entries._rawValue;
}

uint64_t specialized closure #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v57 = a6;
  v65 = a5;
  v7 = result;
  if (a3 != a4)
  {
    v49 = a3;
    if (a4 < a3)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (a3 >= a4)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    v8 = 0;
    v50 = v67 + 16 * a3 + 40;
    v51 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (v49 >= *(v67 + 16))
      {
        goto LABEL_88;
      }

      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v54 = *WeakValue;

        if (!*(v54 + 16))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v54 = v51;
        if (!*(v51 + 16))
        {
          goto LABEL_70;
        }
      }

      if (AGGraphGetWeakValue())
      {

        if (!*(v54 + 16))
        {
          goto LABEL_70;
        }
      }

      else
      {
        result = v51;
        if (!*(v54 + 16))
        {
LABEL_70:

          goto LABEL_61;
        }
      }

      v52 = (v7 + 32 * v8);
      *v52 = result;
      v52[1] = v54;
      ++v8;
      v52[2] = 0;
      v52[3] = 0;
LABEL_61:
      ++v49;
      v50 += 16;
      if (a4 == v49)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = 0;
LABEL_3:
  v58 = *(v57 + 16);
  if (v58)
  {
    v9 = v65;
    v68 = *(*v65 + 16);
    v59 = v57 + 32;

    v72 = 0;
    v10 = 0;
    v56 = 32;
    while (1)
    {
      v64 = v10;
      v13 = *(v59 + 16 * v10);
      v14 = v72;
      if (v72 < v68)
      {
        break;
      }

LABEL_18:
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

LABEL_19:
      v72 = v14;
      if (v8)
      {
        v18 = 0;
        v63 = 0;
        v19 = 0;
LABEL_23:
        LODWORD(AssociatedTypeWitness) = v18;
        while (2)
        {
          if (v19 >= v8)
          {
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v20 = v19;
          if (__OFADD__(v19++, 1))
          {
            goto LABEL_84;
          }

          v22 = (v7 + 32 * v20);
          v23 = *v22;
          v24 = *(*v22 + 16);
          v25 = v22[2];
          if (v25 > v24)
          {
            v24 = v22[2];
          }

          v26 = (*v22 + 16 * v25 + 32);
          v27 = v22[2];
          do
          {
            if (v24 == v27)
            {
              goto LABEL_37;
            }

            if (v25 < 0)
            {
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

            if (v27 >= *(v23 + 16))
            {
              goto LABEL_79;
            }

            v28 = *v26;
            if (v13 < *v26)
            {
              while (1)
              {
LABEL_37:
                v29 = v22[1];
                v30 = v22[3];
                if (v30 >= *(v29 + 16))
                {
                  goto LABEL_24;
                }

                if (v30 < 0)
                {
                  goto LABEL_80;
                }

                outlined init with copy of PreferenceValues.Entry(v29 + 56 * v30 + 32, v71);
                v31 = v71[0];

                outlined destroy of PreferenceValues.Entry(v71);

                if (v13 < v31)
                {
                  goto LABEL_24;
                }

                v32 = v22[3];
                if ((v32 & 0x8000000000000000) != 0)
                {
                  goto LABEL_81;
                }

                v33 = v22[1];
                if (v32 >= *(v33 + 16))
                {
                  goto LABEL_82;
                }

                result = outlined init with copy of PreferenceValues.Entry(v33 + 56 * v32 + 32, v71);
                v22[3] = v32 + 1;
                if (v31 == v13)
                {
                  break;
                }

                result = outlined destroy of PreferenceValues.Entry(v71);
              }

              v34 = v65;
              v35 = *v65;
              if (AssociatedTypeWitness)
              {
                result = swift_isUniquelyReferenced_nonNull_native();
                *v34 = v35;
                if (result)
                {
                  if (v72 < 0)
                  {
                    goto LABEL_90;
                  }
                }

                else
                {
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
                  v35 = result;
                  *v34 = result;
                  if (v72 < 0)
                  {
                    goto LABEL_90;
                  }
                }

                if (v72 >= *(v35 + 16))
                {
                  goto LABEL_92;
                }

                v36 = v35 + 56 * v72;
                v37 = *(v36 + 32);
                v38 = *(v36 + 40);
                v36 += 32;
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v62 = v55;
                v61 = *(AssociatedTypeWitness - 8);
                MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
                v40 = &v55[-v39];
                outlined init with copy of Any(v36 + 24, &v69);
                v41 = swift_dynamicCast();
                v60 = v55;
                v42 = MEMORY[0x1EEE9AC00](v41);
                *&v55[-32] = v37;
                *&v55[-24] = v38;
                *&v55[-16] = v36;
                *&v55[-8] = v71;
                (*(v38 + 24))(v40, closure #1 in reduce #1 <A>(key:) in PreferenceValues.Entry.reduce(_:)partial apply, v42);
                v43 = AssociatedTypeWitness;
                v70 = AssociatedTypeWitness;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
                v45 = v61;
                (*(v61 + 16))(boxed_opaque_existential_1, v40, v43);
                __swift_destroy_boxed_opaque_existential_1(v36 + 24);
                outlined init with take of Any(&v69, (v36 + 24));
                (*(v45 + 8))(v40, v43);
                goto LABEL_22;
              }

              v46 = *(v35 + 16);
              v47 = v72;
              if (v46 < v72)
              {
                goto LABEL_91;
              }

              if ((v72 & 0x8000000000000000) == 0)
              {
                outlined init with copy of PreferenceValues.Entry(v71, &v69);
                specialized Array.replaceSubrange<A>(_:with:)(v47, v47, &v69);
                v63 = 1;
LABEL_22:
                result = outlined destroy of PreferenceValues.Entry(v71);
                v18 = 1;
                if (v19 == v8)
                {
                  goto LABEL_5;
                }

                goto LABEL_23;
              }

              goto LABEL_93;
            }

            v22[2] = ++v27;
            v26 += 2;
          }

          while (v28 != v13);
LABEL_24:
          if (v19 != v8)
          {
            continue;
          }

          break;
        }

LABEL_5:
        v11 = v68;
        if (v63)
        {
          v11 = v68 + 1;
        }

        v68 = v11;
        v12 = v72;
        if (v63)
        {
          v12 = v72 + 1;
        }

        v72 = v12;
        v9 = v65;
      }

LABEL_10:
      v10 = v64 + 1;
      if (v64 + 1 == v58)
      {
        goto LABEL_74;
      }
    }

    v15 = v56 + 56 * v72;
    v16 = v72;
    while ((v14 & 0x8000000000000000) == 0)
    {
      if (v16 >= *(*v9 + 16))
      {
        goto LABEL_86;
      }

      outlined init with copy of PreferenceValues.Entry(*v9 + v15, v71);
      v17 = v71[0];
      result = outlined destroy of PreferenceValues.Entry(v71);
      if (v17 >= v13)
      {
        if (v17 == v13)
        {
          v72 = v16 + 1;
          goto LABEL_10;
        }

        v14 = v16;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_89;
      }

      ++v16;
      v15 += 56;
      v14 = v72;
      if (v68 == v16)
      {
        v14 = v68;
        goto LABEL_18;
      }
    }

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
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_74:

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_96;
  }

  for (; v8; --v8)
  {
    outlined destroy of ForegroundTransform.NewList(v7);
    v7 += 32;
  }
}

uint64_t PreferenceValues.description.getter()
{
  v9 = *v0;
  v10 = closure #1 in PreferenceValues.description.getter;
  v11 = 0;
  type metadata accessor for LazyMapSequence<[PreferenceValues.Entry], String>();
  lazy protocol witness table accessor for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>();

  v1 = BidirectionalCollection<>.joined(separator:)();
  v3 = v2;

  v8 = v9;
  PreferenceValues.seed.getter(&v7);
  if (v7 == -1)
  {
    v4 = 0xE700000000000000;
    v5 = 0x64696C61766E69;
  }

  else if (v7)
  {
    LODWORD(v9) = v7;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x7974706D65;
  }

  v9 = v5;
  v10 = v4;
  MEMORY[0x193ABEDD0](5972026, 0xE300000000000000);
  MEMORY[0x193ABEDD0](v1, v3);

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  return v9;
}

uint64_t closure #1 in PreferenceValues.description.getter@<X0>(void *a1@<X8>)
{
  v2 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](2112800, 0xE300000000000000);
  result = _print_unlocked<A, B>(_:_:)();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

void type metadata accessor for LazyMapSequence<[PreferenceValues.Entry], String>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[PreferenceValues.Entry], String>)
  {
    _sSiSgMaTm_0(255, &lazy cache variable for type metadata for [PreferenceValues.Entry], &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [PreferenceValues.Entry] and conformance [A](&lazy protocol witness table cache variable for type [PreferenceValues.Entry] and conformance [A]);
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<[PreferenceValues.Entry], String>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>)
  {
    type metadata accessor for LazyMapSequence<[PreferenceValues.Entry], String>();
    lazy protocol witness table accessor for type [PreferenceValues.Entry] and conformance [A](&lazy protocol witness table cache variable for type [PreferenceValues.Entry] and conformance [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PreferenceValues.Entry] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSiSgMaTm_0(255, &lazy cache variable for type metadata for [PreferenceValues.Entry], &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t assignWithCopy for PreferenceValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  __swift_assign_boxed_opaque_existential_0((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t assignWithTake for PreferenceValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t initializeWithCopy for Child #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *assignWithCopy for Child #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Environment.Content();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  (*(v10 + 16))(&v20 - v8, v3, v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  v12 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  v13 = static Log.runtimeIssuesLog;
  if (os_log_type_enabled(static Log.runtimeIssuesLog, v12))
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_18D018000, v14, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x193AC4820](v16, -1, -1);
    MEMORY[0x193AC4820](v15, -1, -1);
  }

  EnvironmentValues.init()(&v20);
  swift_getAtKeyPath();
}

uint64_t Environment.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Environment.Content();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Environment.content.setter(uint64_t a1)
{
  v3 = type metadata accessor for Environment.Content();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void Environment.error()()
{
  _StringGuts.grow(_:)(41);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD7E050);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for Environment(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for Environment(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void *initializeBufferWithCopyOfBuffer for Environment(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
LABEL_27:

    return v3;
  }

  v9 = a2[v5];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v5))) + 2;
    v9 = v12 + 2;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 != 1)
  {
    *a1 = *a2;
    *(a1 + v5) = 0;
    goto LABEL_27;
  }

  (*(v4 + 16))(a1);
  *(v3 + v5) = 1;
  return v3;
}

uint64_t assignWithCopy for FullEnvironmentBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    if (v4 != 1)
    {
      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }

    outlined destroy of EnvironmentValues(a1 + 16);
    goto LABEL_6;
  }

  if (v4 == 1)
  {
LABEL_6:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);

LABEL_8:
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for FullEnvironmentBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    if (v4 != 1)
    {
      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    outlined destroy of EnvironmentValues(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentBox(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = *(v5 + 64) + 1;
  }

  v11 = v10 + ((v7 + 16) & ~v7) + 1;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xF8 ^ 0x1F8) & v9));
  }

  else
  {
    v17 = *a2;
    v16 = a2 + 11;
    *a1 = v17;
    v18 = ((v16 & 0xFFFFFFFFFFFFFFF8) + 8);
    v19 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *(v16 & 0xFFFFFFFFFFFFFFF8);
    v20 = v19 + 1;
    v21 = *(v5 + 48);

    if (v21(v18, 1, v4))
    {
      memcpy(v20, v18, v10);
    }

    else
    {
      (*(v6 + 16))(v20, v18, v4);
      (*(v6 + 56))(v20, 0, 1, v4);
    }

    *(v20 + v10) = *(v18 + v10);
  }

  return v3;
}

_DWORD *assignWithCopy for EnvironmentBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  LODWORD(v6) = v12(v10, 1, v7);
  v13 = v12(v11, 1, v7);
  if (v6)
  {
    if (!v13)
    {
      (*(v8 + 16))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v8 + 24))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v10, v11, v16);
LABEL_12:
  if (*(v8 + 84))
  {
    v17 = *(v8 + 64);
  }

  else
  {
    v17 = *(v8 + 64) + 1;
  }

  *(v10 + v17) = *(v11 + v17);
  return a1;
}

_DWORD *assignWithTake for EnvironmentBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, v7);
  v14 = v12(v11, 1, v7);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 32))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 40))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  if (*(v8 + 84))
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  *(v10 + v18) = *(v11 + v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnvironmentBox(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      v17 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for EnvironmentBox(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 16) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 16) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 8) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

uint64_t ObservationCenter._withObservationStashed<A>(do:)(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v48 = a3;
  v44 = a1;
  v47 = a2;
  v54[3] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v43 - v9;
  v43[0] = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v43 - v23;
  v46 = v6;
  (*(v6 + 56))(v20, 1, 1, v5, v22);
  v51 = a4;
  v52 = v47;
  v53 = v48;
  v25 = type metadata accessor for Error();
  v26 = v49;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, v50, v15, v25, a4, MEMORY[0x1E69E7288], v54);
  if (v26)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  }

  else
  {
    v48 = v10;
    v49 = 0;
    v27 = v43[1];
    (*(v43[0] + 32))(v44, v13, a4);
    v13 = MEMORY[0x1E69E81D0];
    v28 = MEMORY[0x1E69E6720];
    _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(v20, v24, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(v24, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v13, v28);
    v29 = v46;
    v30 = (*(v46 + 48))(v17, 1, v5);
    LOBYTE(v13) = v30 != 1;
    if (v30 == 1)
    {
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v24, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
      v41 = v17;
    }

    else
    {
      v44 = v24;
      v31 = *(v29 + 32);
      v32 = v48;
      v31(v48, v17, v5);
      v33 = *(v29 + 16);
      v47 = v5;
      v33(v45, v32, v5);
      v34 = v27;
      swift_beginAccess();
      v35 = *(v27 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 24) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        *(v27 + 24) = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v35);
      }

      v35[2] = v38 + 1;
      v40 = v46;
      v39 = v47;
      (v31)(v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v46 + 72) * v38);
      *(v34 + 24) = v35;
      (*(v40 + 8))(v48, v39);
      v41 = v44;
    }

    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  }

  return v13 & 1;
}

uint64_t ObservationCenter._withObservation<A, B>(attribute:do:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v73 = a3;
  v69 = a5;
  v72 = a2;
  v63 = a1;
  v68 = a6;
  v81 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - v14;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v59 - v22;
  v75 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v59 - v27;
  swift_beginAccess();
  v29 = *(v6 + 24);
  *(v6 + 24) = MEMORY[0x1E69E7CC0];
  v65 = v9;
  v30 = *(v9 + 56);
  v71 = v8;
  v30(v20, 1, 1, v8);
  v78 = a4;
  v79 = v72;
  v80 = v73;
  v31 = type metadata accessor for Error();
  v32 = v16;
  v33 = a4;
  v34 = v74;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, v77, v32, v31, a4, MEMORY[0x1E69E7288], &v76);
  if (v34)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    *(v6 + 24) = v29;
  }

  else
  {
    v72 = 0;
    v73 = v29;
    v36 = v63;
    v37 = *(v75 + 32);
    v61 = v28;
    v74 = v33;
    v75 += 32;
    v37(v28, v25, v33);
    v38 = MEMORY[0x1E69E81D0];
    v39 = MEMORY[0x1E69E6720];
    v40 = v20;
    v41 = v70;
    _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(v40, v70, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v42 = v64;
    _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(v41, v64, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v38, v39);
    v43 = v65;
    v44 = v71;
    if ((*(v65 + 48))(v42, 1, v71) == 1)
    {
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
      v45 = v42;
      v46 = v36;
    }

    else
    {
      v47 = *(v43 + 32);
      v48 = v67;
      v47();
      (*(v43 + 16))(v66, v48, v44);
      v49 = *(v6 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 24) = v49;
      v46 = v36;
      v60 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        *(v6 + 24) = v49;
      }

      v52 = v49[2];
      v51 = v49[3];
      if (v52 >= v51 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1, v49);
      }

      v49[2] = v52 + 1;
      v44 = v71;
      (v47)(v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v52);
      *(v6 + 24) = v49;
      (*(v43 + 8))(v67, v44);
      v45 = v70;
      v37 = v60;
    }

    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v45, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v37(v68, v61, v74);
    v53 = *(v6 + 24);
    v54 = *(v53 + 16);
    if (v54)
    {
      v56 = *(v43 + 16);
      v55 = v43 + 16;
      v57 = v53 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v74 = *(v55 + 56);
      v75 = v56;
      v71 = v53;

      v58 = v62;
      do
      {
        (v75)(v58, v57, v44);
        ObservationCenter.invalidate<A>(_:onChangeIn:)(v46, v58);
        (*(v55 - 8))(v58, v44);
        v57 += v74;
        --v54;
      }

      while (v54);
    }

    *(v6 + 24) = v73;
  }
}

id ObservationCenter.invalidate<A>(_:onChangeIn:)(id result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(type metadata accessor for ObservationTracking._AccessList() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      result = ObservationCenter.invalidate<A>(_:onChangeIn:)(v4, v6);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ObservationCenter.deinit()
{

  return v0;
}

uint64_t ObservationCenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for ObservationGraphMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ObservationGraphMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *initializeBufferWithCopyOfBuffer for ObservationEntry(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for ObservationEntry(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for ObservationEntry(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;

  return a1;
}

void PushTransition.body(content:phase:)(char a1@<W1>, uint64_t a2@<X8>)
{
  LOBYTE(v3) = *v2;
  if (a1)
  {
    v3 = 0x1000302u >> (8 * v3);
    if (a1 == 1)
    {
      LOBYTE(v3) = 4;
    }
  }

  v4 = 0.0;
  if (a1 == 1)
  {
    v4 = 1.0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t PushTransition._makeContentTransition(transition:)(unsigned __int8 *a1)
{
  v3 = *a1;
  if (v3 == 3)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v6 = *v1;
    if (v6 == 2)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(a1 + 1);
    }

    if (v6 == 2)
    {
      v8 = *(a1 + 2);
    }

    else
    {
      v8 = 0.0;
    }

    v9 = -*(a1 + 2);
    v10 = -*(a1 + 1);
    if (*v1)
    {
      v9 = 0.0;
    }

    else
    {
      v10 = 0.0;
    }

    if (*v1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    if (*v1 <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v5 = v13;
    *(v13 + 16) = xmmword_18DDAF080;
    if (v3)
    {
      v14 = v11 * 0.4;
      v15 = v12 * 0.4;
      *(v13 + 32) = 3;
      *(v13 + 36) = v14;
      *(v13 + 40) = 0;
      *(v13 + 44) = v15;
      *(v13 + 48) = 0;
      *(v13 + 52) = 0x3F80000000000000;
      *(v13 + 60) = 1;
      v16 = v11;
      v17 = -v16;
      v18 = 0x3F19999A3ECCCCCDLL;
      v19 = v12;
    }

    else
    {
      v20 = v11;
      v19 = v12;
      *(v13 + 32) = 3;
      *(v13 + 36) = v20;
      *(v13 + 40) = 0;
      *(v13 + 44) = v19;
      *(v13 + 48) = 0;
      v18 = 0x3F80000000000000;
      *(v13 + 52) = 0x3F80000000000000;
      *(v13 + 60) = 1;
      v17 = -v20;
    }

    *(v13 + 68) = 3;
    *(v13 + 72) = v17;
    *(v13 + 76) = 0;
    *(v13 + 80) = -v19;
    *(v13 + 84) = 0;
    *(v13 + 88) = 0x3F80000000000000;
    *(v13 + 96) = xmmword_18DDF2060;
    *(v13 + 112) = 2;
    *(v13 + 116) = 0;
    *(v13 + 120) = 2;
    *(v13 + 124) = v18;
    v4 = 1;
    *(v13 + 132) = 3;
  }

  result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 3), a1[32]);
  *(a1 + 3) = v5;
  a1[32] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>();
    lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<PushTransition>, &type metadata for PushTransition, type metadata accessor for PlaceholderContentView);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t Gradient.color(at:)(uint64_t a1, double a2)
{
  type metadata accessor for ColorBox<GradientColorProvider>();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = a2;

  return v4;
}

void type metadata accessor for ColorBox<GradientColorProvider>()
{
  if (!lazy cache variable for type metadata for ColorBox<GradientColorProvider>)
  {
    lazy protocol witness table accessor for type GradientColorProvider and conformance GradientColorProvider();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<GradientColorProvider>);
    }
  }
}

uint64_t AnyGradient.color(at:)(uint64_t a1, double a2)
{
  type metadata accessor for ColorBox<GradientColorProvider>();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  *(v4 + 32) = a2;

  return v4;
}

uint64_t GradientColorProvider.resolveHDR(in:)@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v4 = a1[1];
  v5 = *v2;
  v6 = *(v2 + 16);
  if (*(v2 + 8))
  {
    *&v41 = *a1;
    *(&v41 + 1) = v4;
    (*(*v5 + 112))(&v36, &v41);
  }

  else
  {
    *&v41 = *a1;
    *(&v41 + 1) = v4;
    Gradient.resolve(in:)(&v41, v5, &v36);
  }

  v7 = *(*&v36 + 16);
  if (v7)
  {
    v8 = *(&v37 + 1);
    v9 = LOBYTE(v38);
    if (v7 == 1)
    {
      v10 = *(*&v36 + 32);
      v11 = *(*&v36 + 36);
      v12 = *(*&v36 + 40);
      v13 = *(*&v36 + 44);
    }

    else
    {
      v16 = LOBYTE(v37);
      v17 = *&v36 + 40;
      v18 = *(*&v36 + 16);
      do
      {
        if (!--v18)
        {
          v35 = *&v36 + 48 * v7;
          v10 = *(v35 - 16);
          v11 = *(v35 - 12);
          v12 = *(v35 - 8);
          v13 = *(v35 - 4);
          goto LABEL_16;
        }

        v19 = v17 + 48;
        v20 = *(v17 + 56);
        v17 += 48;
      }

      while (v6 > v20);
      v10 = *(v19 - 56);
      v11 = *(v19 - 52);
      v12 = *(v19 - 48);
      v13 = *(v19 - 44);
      v21 = *(v19 - 40);
      if (v21 <= v6)
      {
        v22 = *(v19 - 8);
        v23 = *(v19 - 4);
        v24 = *v19;
        v25 = *(v19 + 4);
        v26 = (v6 - v21) / (v20 - v21);
        if ((*(v19 + 32) & 1) == 0)
        {
          v27 = *(v19 + 16);
          v28 = *(v19 + 24);
          v29 = v22;
          v36 = *&v27;
          v37 = *(&v27 + 1);
          v38 = *&v28;
          v39 = *(&v28 + 1);
          v40 = 0;
          v26 = UnitCurve.value(at:)(v26);
          v22 = v29;
        }

        LOBYTE(v36) = v16;
        v30 = v26;
        ResolvedGradient.ColorSpace.mix(_:_:by:)(v10, v11, v12, v13, v22, v23, v24, v25, v30);
        v10 = v31;
        v11 = v32;
        v12 = v33;
        v13 = v34;
      }
    }

LABEL_16:

    v15 = v8;
    if (v9)
    {
      v15 = NAN;
    }
  }

  else
  {

    v10 = 0.0;
    v15 = NAN;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v15;
  return result;
}

uint64_t GradientColorProvider.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  return MEMORY[0x193AC11E0](*&v5);
}

Swift::Int GradientColorProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v6);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v6, v1);
  }

  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

float protocol witness for ColorProvider.resolve(in:) in conformance GradientColorProvider(__int128 *a1)
{
  v2 = *(v1 + 8);
  v3 = v1[2];
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  v5 = *a1;
  GradientColorProvider.resolveHDR(in:)(&v5, &v9);
  return v9;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance GradientColorProvider@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  GradientColorProvider.resolveHDR(in:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GradientColorProvider()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v6);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v6, v1);
  }

  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for GradientColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GradientColorProvider and conformance GradientColorProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static GradientColorProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10 = *a1;
  v11 = v2;
  v8 = v4;
  v9 = v5;
  outlined copy of EitherGradient(v10, v2);
  outlined copy of EitherGradient(v4, v5);
  LOBYTE(v4) = static EitherGradient.== infix(_:_:)(&v10, &v8);
  outlined consume of EitherGradient(v8, v9);
  outlined consume of EitherGradient(v10, v11);
  return v4 & (v3 == v6);
}

uint64_t Binding.transaction.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Binding.location.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Binding.init(value:location:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  *a4 = a3;
  a4[1] = a2;
  v7 = *(v6 + 88);
  v8 = type metadata accessor for Binding();
  v9 = *(*(v7 - 8) + 32);
  v10 = a4 + *(v8 + 32);

  return v9(v10, a1, v7);
}

void (*Binding.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[4] = v11;
  Binding.readValue()(a2, v11);
  return Binding.wrappedValue.modify;
}

void Binding.wrappedValue.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    (*(*v7[1] + 128))(v3, *v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    (*(*v7[1] + 128))((*a1)[4], *v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Binding<A>.id.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v5, v4);
  dispatch thunk of Identifiable.id.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance <A> Binding<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(a1 - 8);
  (*(v6 + 16))(a3, v3, a1);
  swift_getWitnessTable();
  type metadata accessor for IndexingIterator();
  Binding<A>.startIndex.getter(a1, v5);
  return (*(v6 + 8))(v3, a1);
}

uint64_t Binding<A>.startIndex.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v9, v8);
  a3(v5, *(a2 + 8));
  return (*(v6 + 8))(v8, v5);
}

uint64_t Binding<A>.index(after:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v6, v5);
  dispatch thunk of Collection.index(after:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Binding<A>.formIndex(after:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v6, v5);
  dispatch thunk of Collection.formIndex(after:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in Binding<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v22 - v18, a5, v17);
  (*(v13 + 16))(v15, v23, AssociatedTypeWitness);
  v20 = type metadata accessor for Binding();
  Binding.readValue()(v20, v11);
  dispatch thunk of MutableCollection.subscript.setter();
  (*(**(a4 + 8) + 128))(v11, *a4);
  return (*(v9 + 8))(v11, a6);
}

void (*protocol witness for Collection.subscript.read in conformance <A> Binding<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Binding<A>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*Binding<A>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Binding();
  *a1 = v8;
  v9 = *(v8 - 8);
  a1[1] = v9;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  Binding<A>.subscript.getter(a2, a3, a4, v10);
  return ArrayWith2Inline.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <A> Binding<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Binding<A>.index(before:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v6, v5);
  dispatch thunk of BidirectionalCollection.index(before:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Binding<A>.formIndex(before:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v6, v5);
  dispatch thunk of BidirectionalCollection.formIndex(before:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Binding.animation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3, a1);
}

uint64_t Binding.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a4;
  v23 = a3;
  v24 = a1;
  v25 = a2;
  v4 = *(*(*a1 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v21 - v6;
  v8 = type metadata accessor for BindingOperations.NilCoalescing();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for WritableKeyPath();
  WitnessTable = swift_getWitnessTable();
  v21[1] = WitnessTable;
  v13 = swift_getWitnessTable();
  v27 = v11;
  v28 = v8;
  v29 = WitnessTable;
  v30 = v13;
  v14 = type metadata accessor for ComposedProjection();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v21 - v17;
  v27 = v24;
  (*(v5 + 16))(v7, v25, v4, v16);
  BindingOperations.NilCoalescing.init(defaultValue:)(v7, v4, v10);
  Projection.composed<A>(with:)(v10, v11, v8, v18);
  (*(v22 + 8))(v10, v8);
  v19 = swift_getWitnessTable();
  Binding.projecting<A>(_:)(v18, v23, v14, v19, v26);
  return (*(v15 + 8))(v18, v14);
}

uint64_t partial apply for closure #2 in Binding<A>.subscript.getter(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(type metadata accessor for Binding() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return closure #2 in Binding<A>.subscript.getter(a1, v8, v9, v1 + v5, v10, v3);
}

uint64_t *initializeBufferWithCopyOfBuffer for Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 80) & 0x100000;
  v8 = ((-17 - v6) | v6) - *(v5 + 64);
  v9 = *a2;
  *a1 = *a2;
  if (v6 <= 7 && v7 == 0 && v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

void *initializeWithTake for Binding(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t View.tag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TagValueTraitKey.Value();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TagValueTraitKey();
  v11 = *(a3 - 8);
  (*(v11 + 16))(v9, a1, a3);
  (*(v11 + 56))(v9, 0, 1, a3);
  swift_getWitnessTable();
  View._trait<A>(_:_:)(v10, v9, a2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t View.removeTag<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a3;
  v30 = a5;
  v8 = type metadata accessor for Optional();
  v33 = a4;
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for TagValueTraitKey.Value();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v25 = v24 - v10;
  v24[0] = type metadata accessor for TagValueTraitKey.Value();
  v11 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  v13 = v24 - v12;
  v14 = type metadata accessor for TagValueTraitKey();
  v24[1] = &protocol conformance descriptor for TagValueTraitKey<A>;
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v24 - v18;
  (*(*(a2 - 8) + 56))(v13, 1, 1, a2, v17);
  v20 = v27;
  View._trait<A>(_:_:)(v14, v13, a1);
  (*(v11 + 8))(v13, v24[0]);
  v21 = type metadata accessor for TagValueTraitKey();
  v22 = v25;
  (*(*(v8 - 8) + 56))(v25, 1, 1, v8);
  v31 = v20;
  v32 = &protocol witness table for _TraitWritingModifier<A>;
  swift_getWitnessTable();
  swift_getWitnessTable();
  View._trait<A>(_:_:)(v21, v22, v15);
  (*(v28 + 8))(v22, v29);
  return (*(v16 + 8))(v19, v15);
}

uint64_t (*ViewTraitCollection.isAuxiliaryContent.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isAuxiliaryContent.modify;
}

uint64_t ViewTraitCollection.setTag<A>(for:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TagValueTraitKey.Value();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = *(a3 - 8);
  (*(v9 + 16))(&v13 - v7, a2, a3, v6);
  (*(v9 + 56))(v8, 0, 1, a3);
  v10 = type metadata accessor for TagValueTraitKey();
  WitnessTable = swift_getWitnessTable();
  return ViewTraitCollection.subscript.setter(v8, v10, v10, WitnessTable);
}

uint64_t TagIndexProjection.init(_:)(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = Dictionary.init()();
  *(v1 + 80) = Dictionary.init()();
  outlined init with take of _ViewList_Elements(a1, v1 + 16);
  return v1;
}

uint64_t TagIndexProjection.get(base:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  MEMORY[0x193ABE750](&v10, a1, v1[10], v4, MEMORY[0x1E69E6530], v5);
  v6 = v10;
  if (v11)
  {
    v7 = swift_endAccess();
    v12 = v6;
    v13 = 1;
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = a1;
    v9[5] = &v12;
    TagIndexProjection.readUntil(_:)(partial apply for closure #1 in TagIndexProjection.get(base:), v9);
    return v12;
  }

  else
  {
    swift_endAccess();
  }

  return v6;
}

uint64_t TagIndexProjection.readUntil(_:)(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 64) & 1) == 0)
  {
    v4 = result;
    v5 = *(v2 + 48);
    v11 = *(v2 + 56);
    v12 = v11;
    v6 = *(v2 + 40);
    v7 = __swift_project_boxed_opaque_existential_1((v2 + 16), v6);
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = &v12;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = a2;
    v10 = 1;
    result = ViewList.applySublists(from:list:to:)(&v11, 0x100000000uLL, partial apply for closure #1 in TagIndexProjection.readUntil(_:), v9, v6, v5);
    v8 = v12;
    if (result)
    {
      v8 = 0;
    }

    *(v2 + 56) = v8;
    *(v2 + 64) = result & 1;
  }

  return result;
}

void TagIndexProjection.set(base:newValue:)(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *v3;
  v7 = *(v20 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v16 = v3[9];
    v21 = a2;
    MEMORY[0x193ABE750](&v21, v16, MEMORY[0x1E69E6530], v7, MEMORY[0x1E69E6540]);
    if ((*(v12 + 48))(v11, 1, v7) == 1)
    {
      (*(v9 + 8))(v11, v8);
      v17 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v17);
      v18 = *(v20 + 88);
      *(&v19 - 4) = v7;
      *(&v19 - 3) = v18;
      *(&v19 - 2) = a2;
      *(&v19 - 1) = a1;
      TagIndexProjection.readUntil(_:)(partial apply for closure #1 in TagIndexProjection.set(base:newValue:), (&v19 - 6));
    }

    else
    {
      (*(v12 + 32))(v15, v11, v7);
      swift_endAccess();
      (*(v12 + 40))(a1, v15, v7);
    }
  }
}

uint64_t closure #1 in TagIndexProjection.readUntil(_:)(uint64_t *a1, char *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, char *), uint64_t a5)
{
  v39 = a5;
  v40 = a4;
  v8 = *a3;
  v9 = *(*a3 + 80);
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v36 - v11;
  v42 = a3;
  v12 = *(v8 + 88);
  v13 = type metadata accessor for TagValueTraitKey.Value();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v23 = *a2;
  v24 = *a1;
  v43 = a1[1];
  v44 = v12;
  *a2 = v23 - v24;
  v45 = a1[10];
  v25 = type metadata accessor for TagValueTraitKey();
  WitnessTable = swift_getWitnessTable();
  ViewTraitCollection.subscript.getter(v25, WitnessTable, v16);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    (*(v14 + 8))(v16, v13);
LABEL_5:
    v27 = v43;
    goto LABEL_6;
  }

  (*(v17 + 32))(v22, v16, v9);
  if (_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, a1[10]))
  {
    (*(v17 + 8))(v22, v9);
    goto LABEL_5;
  }

  v37 = v17;
  v29 = *(v17 + 16);
  v29(v41, v22, v9);
  v46 = *a2;
  v47 = 0;
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  result = swift_endAccess();
  v30 = *a2;
  v27 = v43;
  v31 = *a2 + v43;
  if (v31 < *a2)
  {
    __break(1u);
  }

  else
  {
    if (!v43)
    {
      v34 = v40(v30, v22);
      goto LABEL_15;
    }

    v32 = v38;
    v41 = a2;
    if (v30 < v31)
    {
      swift_beginAccess();
      v33 = (v37 + 56);
      v44 = v22;
      do
      {
        v29(v32, v44, v9);
        (*v33)(v32, 0, 1, v9);
        v46 = v30;
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        ++v30;
        --v27;
      }

      while (v27);
      swift_endAccess();
      a2 = v41;
      v27 = v43;
      v22 = v44;
      v34 = v40(*v41, v44);
LABEL_15:
      v35 = v34;
      (*(v37 + 8))(v22, v9);
      if (v35)
      {
        result = 0;
        goto LABEL_7;
      }

LABEL_6:
      result = 1;
LABEL_7:
      *a2 += v27;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TagIndexProjection.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t TagIndexProjection.__deallocating_deinit()
{
  TagIndexProjection.deinit();

  return swift_deallocClassInstance();
}

Swift::Int TagIndexProjection.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance TagIndexProjection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = TagIndexProjection.get(base:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TagIndexProjection<A>()
{
  Hasher.init(_seed:)();
  TagIndexProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Binding<A>.projectingTagIndex(viewList:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagIndexProjection();
  outlined init with copy of AnyTrackedValue(a1, &v8);
  swift_allocObject();
  v7 = TagIndexProjection.init(_:)(&v8);
  WitnessTable = swift_getWitnessTable();
  Binding.projecting<A>(_:)(&v7, a2, v4, WitnessTable, &v8);

  return v8;
}

uint64_t static _TagTraitWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t static _TagTraitWritingModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
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

void type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for TagIndexProjection<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL partial apply for closure #1 in TagIndexProjection.set(base:newValue:)(uint64_t a1)
{
  v3 = v1[4];
  if (v3 == a1)
  {
    (*(*(v1[2] - 8) + 24))(v1[5]);
  }

  return v3 == a1;
}

uint64_t partial apply for closure #1 in TagIndexProjection.get(base:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *v3 = a1;
    *(v3 + 8) = 0;
  }

  return v4 & 1;
}

uint64_t _Velocity.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v3, v7);
  return (*(v6 + 32))(a3, v9, a2);
}

Swift::Int _Velocity<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> _Velocity<A>()
{
  Hasher.init(_seed:)();
  _Velocity<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _Velocity<>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _Velocity<>.animatableData.setter(a1, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*_Velocity<>.animatableData.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  (*(a3 + 24))(v10, a3);
  return _Velocity<>.animatableData.modify;
}

void _Velocity<>.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    specialized _Velocity<>.animatableData.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    specialized _Velocity<>.animatableData.setter((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance <> _Velocity<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _Velocity<>.animatableData.setter(a1, a2, *(a3 - 8));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*protocol witness for Animatable.animatableData.modify in conformance <> _Velocity<A>(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a2;
  v10 = *(a3 - 8);
  v8[2] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  _Velocity<>.animatableData.getter(a2, v10);
  return protocol witness for Animatable.animatableData.modify in conformance <> _Velocity<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance <> _Velocity<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v8 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized _Velocity<>.animatableData.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    specialized _Velocity<>.animatableData.setter(*(*a1 + 48), v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static _Velocity<>.zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t static _Velocity<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for _Velocity();
  (*(*(v12 - 8) + 16))(a6, a1, v12);
  return a5(a6, a2, a3, a4);
}

uint64_t specialized _Velocity<>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return (*(a3 + 32))(v9, v5, a3);
}

uint64_t instantiation function for generic protocol witness table for <> _Velocity<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t WhitespaceRemovingFormatStyle.locale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v11 - 8) + 16))(a3, v3, a2, v8);
  dispatch thunk of FormatStyle.locale(_:)();
  return (*(v7 + 40))(a3, v10, v6);
}

BOOL static WhitespaceRemovingFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a7;
  v60 = a8;
  v58 = a6;
  v54 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v48[-v15];
  v16 = type metadata accessor for Optional();
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v48[-v19];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v55 = &v48[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48[-v23];
  v62 = a2;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v64 = a3;
  v65 = a4;
  v51 = a4;
  v66 = a5;
  v67 = v58;
  v68 = v59;
  v69 = v60;
  v70 = a9;
  v59 = type metadata accessor for WhitespaceRemovingFormatStyle();
  v60 = TupleTypeMetadata2;
  v25 = *(v59 + 76);
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v63 + 16);
  (v27)(v24, a1 + v25, v16);
  (v27)(&v24[v26], v62 + v25, v16);
  v28 = v61;
  v29 = *(v61 + 48);
  if (v29(v24, 1, AssociatedTypeWitness) != 1)
  {
    v32 = v16;
    v33 = v56;
    v50 = v32;
    v27();
    if (v29(&v24[v26], 1, AssociatedTypeWitness) != 1)
    {
      v58 = a1;
      v34 = v53;
      (*(v28 + 32))(v53, &v24[v26], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v28 + 8);
      v35(v34, AssociatedTypeWitness);
      v35(v33, AssociatedTypeWitness);
      v30 = *(v63 + 8);
      v16 = v50;
      (v30)(v24, v50);
      v31 = v60;
      if ((v49 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v28 + 8))(v33, AssociatedTypeWitness);
LABEL_7:
    (*(v57 + 8))(v24, v60);
    return 0;
  }

  if (v29(&v24[v26], 1, AssociatedTypeWitness) != 1)
  {
    goto LABEL_7;
  }

  v58 = a1;
  v30 = *(v63 + 8);
  (v30)(v24, v16);
  v31 = v60;
LABEL_9:
  v56 = v30;
  v36 = *(v59 + 80);
  v37 = *(v31 + 48);
  v38 = v55;
  (v27)(v55, v58 + v36, v16);
  v39 = v62 + v36;
  v40 = v38;
  (v27)(&v38[v37], v39, v16);
  if (v29(v38, 1, AssociatedTypeWitness) == 1)
  {
    if (v29(&v38[v37], 1, AssociatedTypeWitness) == 1)
    {
      (v56)(v38, v16);
      return 1;
    }

    goto LABEL_14;
  }

  v41 = v52;
  (v27)(v52, v40, v16);
  if (v29(&v40[v37], 1, AssociatedTypeWitness) == 1)
  {
    (*(v61 + 8))(v41, AssociatedTypeWitness);
LABEL_14:
    (*(v57 + 8))(v40, v60);
    return 0;
  }

  v43 = v40;
  v44 = v61;
  v45 = v53;
  (*(v61 + 32))(v53, &v43[v37], AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v44 + 8);
  v47(v45, AssociatedTypeWitness);
  v47(v41, AssociatedTypeWitness);
  (v56)(v43, v16);
  return (v46 & 1) != 0;
}

uint64_t WhitespaceRemovingFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6156786966657270 && a2 == 0xEB0000000065756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6156786966667573 && a2 == 0xEB0000000065756CLL)
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

uint64_t WhitespaceRemovingFormatStyle.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1702060386;
  }

  if (a1 == 1)
  {
    return 0x6156786966657270;
  }

  return 0x6156786966667573;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys()
{
  Hasher.init(_seed:)();
  EventListenerPhase.FailureReason.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WhitespaceRemovingFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized TimeDataFormatting.Resolvable.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t WhitespaceRemovingFormatStyle.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v17 = *(a2 + 16);
  v18 = v17;
  v4 = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  v14 = v3;
  v19 = v3;
  v20 = v4;
  v13 = *(a2 + 40);
  v21 = v13;
  v22 = v5;
  v23 = v6;
  v15 = v6;
  v16 = v4;
  type metadata accessor for WhitespaceRemovingFormatStyle.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  v11 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    LOBYTE(v18) = 1;
    swift_getAssociatedTypeWitness();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t WhitespaceRemovingFormatStyle.hash(into:)()
{
  dispatch thunk of Hashable.hash(into:)();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  swift_getAssociatedConformanceWitness();
  Optional<A>.hash(into:)();
  return Optional<A>.hash(into:)();
}

Swift::Int WhitespaceRemovingFormatStyle.hashValue.getter()
{
  Hasher.init(_seed:)();
  WhitespaceRemovingFormatStyle.hash(into:)();
  return Hasher._finalize()();
}

uint64_t WhitespaceRemovingFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v72 = a1;
  v47 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v47 - v19;
  v49 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  type metadata accessor for WhitespaceRemovingFormatStyle.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v57 = type metadata accessor for KeyedDecodingContainer();
  v54 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v23 = &v47 - v22;
  v55 = a2;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v24 = a7;
  v25 = AssociatedTypeWitness;
  v52 = v24;
  v53 = a4;
  v69 = a6;
  v70 = v24;
  v71 = a8;
  v26 = type metadata accessor for WhitespaceRemovingFormatStyle();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v47 - v29;
  v32 = *(*(v25 - 8) + 56);
  v64 = *(v31 + 76);
  v32(&v47 + v64 - v29, 1, 1, v25, v28);
  v61 = *(v26 + 80);
  (v32)(&v30[v61], 1, 1, v25);
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v56 = v23;
  v33 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    v38 = v62;
    v37 = v63;
    __swift_destroy_boxed_opaque_existential_1(v72);
    v39 = *(v38 + 8);
    v39(&v30[v64], v37);
    return (v39)(&v30[v61], v37);
  }

  else
  {
    WitnessTable = v27;
    v60 = v26;
    v34 = v50;
    LOBYTE(v65) = 0;
    v35 = v51;
    v36 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v49 + 32))(v30, v35, v36);
    LOBYTE(v65) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v63;
    v41 = v34;
    v42 = *(v62 + 40);
    v42(&v30[v64], v41, v63);
    LOBYTE(v65) = 2;
    v43 = v48;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v54 + 8))(v56, v57);
    v42(&v30[v61], v43, v40);
    v44 = WitnessTable;
    v45 = v60;
    (*(WitnessTable + 16))(v47, v30, v60);
    __swift_destroy_boxed_opaque_existential_1(v72);
    return (*(v44 + 8))(v30, v45);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WhitespaceRemovingFormatStyle<A, B>()
{
  Hasher.init(_seed:)();
  WhitespaceRemovingFormatStyle.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static WhitespaceRemovingFormatStyle<>.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a9;
  v41 = a1;
  v38 = a6;
  v39 = a5;
  v17 = *(a6 + 8);
  v44 = a5;
  v45 = a3;
  v46 = a10;
  v47 = v17;
  v48 = &protocol witness table for AttributedString;
  v18 = type metadata accessor for TimeDataFormatting.Resolvable();
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v37 - v21;
  v23 = *a2;
  v24 = *(v17 + 8);
  v44 = a3;
  v45 = a4;
  v46 = v24;
  v47 = a7;
  v48 = a8;
  v49 = a11;
  v50 = a12;
  if (v23 > 1)
  {
    v32 = type metadata accessor for WhitespaceRemovingFormatStyle();
    v43 = v17;
    WitnessTable = swift_getWitnessTable();
    v44 = v39;
    v45 = v32;
    v46 = a10;
    v47 = WitnessTable;
    v48 = &protocol witness table for AttributedString;
    v34 = type metadata accessor for TimeDataFormatting.Resolvable();
    v35 = v40;
    v40[3] = v34;
    v35[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    return (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v41, v34);
  }

  else
  {
    v25 = v19;
    v26 = v20;
    v27 = type metadata accessor for WhitespaceRemovingFormatStyle();
    v42 = v17;
    v28 = swift_getWitnessTable();
    v29 = v39;
    v44 = v39;
    v45 = v27;
    v46 = a10;
    v47 = v28;
    v48 = &protocol witness table for AttributedString;
    v30 = type metadata accessor for TimeDataFormatting.Resolvable();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v41 + *(v30 + 60), v30, a3, v17, &protocol witness table for AttributedString, v22);
    LOBYTE(v44) = v23;
    (*(v38 + 24))(v22, &v44, v29, a10, a3);
    return (*(v26 + 8))(v22, v25);
  }
}

uint64_t type metadata completion function for WhitespaceRemovingFormatStyle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WhitespaceRemovingFormatStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v10;
  v12 = v7 + v10;
  v13 = (v7 + v11) & ~v11;
  if (*(v9 + 84))
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = *(v9 + 64) + 1;
  }

  v15 = *(v6 + 80) | v10;
  v16 = (*(v6 + 80) | v10);
  v17 = v15 & 0x100000;
  if (v16 > 7 || v17 != 0 || ((v14 + v11 + v13) & ~v11) + v14 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v16 + 16) & ~v16));
  }

  else
  {
    v21 = AssociatedTypeWitness;
    v22 = ~v11;
    (*(v6 + 16))(a1, a2, v5);
    v23 = ((a1 + v12) & ~v11);
    v24 = ((a2 + v12) & ~v11);
    v25 = *(v9 + 48);
    if (v25(v24, 1, v21))
    {
      memcpy(v23, v24, v14);
    }

    else
    {
      (*(v9 + 16))(v23, v24, v21);
      (*(v9 + 56))(v23, 0, 1, v21);
    }

    v26 = &v23[v11 + v14];
    v27 = &v24[v11 + v14];
    if (v25((v27 & v22), 1, v21))
    {
      memcpy((v26 & v22), (v27 & v22), v14);
    }

    else
    {
      (*(v9 + 16))(v26 & v22, v27 & v22, v21);
      (*(v9 + 56))(v26 & v22, 0, 1, v21);
    }
  }

  return a1;
}

uint64_t destroy for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = (v4 + v7) & ~v7;
  v15 = v6;
  v10 = *(v6 + 48);
  if (!v10(v9, 1, AssociatedTypeWitness))
  {
    (*(v15 + 8))(v9, AssociatedTypeWitness);
  }

  v11 = *(v15 + 64);
  if (*(v15 + 84))
  {
    v12 = v9 + v7 + v11;
  }

  else
  {
    v12 = v9 + v7 + v11 + 1;
  }

  result = v10(v12 & v8, 1, AssociatedTypeWitness);
  if (!result)
  {
    v14 = *(v15 + 8);

    return v14(v12 & v8, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v21 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  if (v13(v12, 1, AssociatedTypeWitness))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v11, v12, v16);
  }

  else
  {
    (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
    (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 1;
  }

  v18 = &v11[v9 + v17];
  v19 = &v12[v9 + v17];
  if (v13((v19 & v10), 1, AssociatedTypeWitness))
  {
    memcpy((v18 & v10), (v19 & v10), v17);
  }

  else
  {
    (*(v8 + 16))(v18 & v10, v19 & v10, AssociatedTypeWitness);
    (*(v8 + 56))(v18 & v10, 0, 1, AssociatedTypeWitness);
  }

  return v21;
}

uint64_t assignWithCopy for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v25 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
      (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = &v11[v9 + v19];
  v21 = &v12[v9 + v19];
  v22 = v13((v20 & v10), 1, AssociatedTypeWitness);
  v23 = v13((v21 & v10), 1, AssociatedTypeWitness);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 24))(v20 & v10, v21 & v10, AssociatedTypeWitness);
      return v25;
    }

    (*(v8 + 8))(v20 & v10, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v10), (v21 & v10), v19);
    return v25;
  }

  (*(v8 + 16))(v20 & v10, v21 & v10, AssociatedTypeWitness);
  (*(v8 + 56))(v20 & v10, 0, 1, AssociatedTypeWitness);
  return v25;
}

uint64_t initializeWithTake for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v21 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  if (v13(v12, 1, AssociatedTypeWitness))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v11, v12, v16);
  }

  else
  {
    (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
    (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 1;
  }

  v18 = &v11[v9 + v17];
  v19 = &v12[v9 + v17];
  if (v13((v19 & v10), 1, AssociatedTypeWitness))
  {
    memcpy((v18 & v10), (v19 & v10), v17);
  }

  else
  {
    (*(v8 + 32))(v18 & v10, v19 & v10, AssociatedTypeWitness);
    (*(v8 + 56))(v18 & v10, 0, 1, AssociatedTypeWitness);
  }

  return v21;
}

uint64_t assignWithTake for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v25 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
      (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = &v11[v9 + v19];
  v21 = &v12[v9 + v19];
  v22 = v13((v20 & v10), 1, AssociatedTypeWitness);
  v23 = v13((v21 & v10), 1, AssociatedTypeWitness);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 40))(v20 & v10, v21 & v10, AssociatedTypeWitness);
      return v25;
    }

    (*(v8 + 8))(v20 & v10, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v10), (v21 & v10), v19);
    return v25;
  }

  (*(v8 + 32))(v20 & v10, v21 & v10, AssociatedTypeWitness);
  (*(v8 + 56))(v20 & v10, 0, 1, AssociatedTypeWitness);
  return v25;
}

uint64_t getEnumTagSinglePayload for WhitespaceRemovingFormatStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = ((v14 + v13 + (v15 & ~v13)) & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, v5);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for WhitespaceRemovingFormatStyle(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v30 + 56);

        v28(a1, a2, v9, v7);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

uint64_t one-time initialization function for immersiveSpace()
{
  result = AGMakeUniqueID();
  static CoordinateSpace.ID.immersiveSpace = result;
  return result;
}

uint64_t one-time initialization function for worldReference()
{
  result = AGMakeUniqueID();
  static CoordinateSpace.ID.worldReference = result;
  return result;
}

uint64_t EnvironmentValues.init(_:tracker:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  if (a1)
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 16);

  os_unfair_lock_lock((v4 + 16));
  *(v4 + 24) = v3;
  os_unfair_lock_unlock((v4 + 16));
}

uint64_t EnvironmentValues.removingTracker()@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t EnvironmentValues.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t EnvironmentValues.plist.setter(uint64_t result)
{
  v2 = result;
  if (*v1)
  {
    v3 = *(*v1 + 64);
    if (!result)
    {
      if (!v3)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v3 = 0;
  }

  if (v3 != *(result + 64))
  {
LABEL_11:
    if (v1[1])
    {
      PropertyList.Tracker.invalidateAllValues(from:to:)(*v1, result);
    }

    *v1 = v2;
    return result;
  }
}

uint64_t *(*EnvironmentValues.plist.modify(void *a1))(uint64_t *result, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return EnvironmentValues.plist.modify;
}

uint64_t *EnvironmentValues.plist.modify(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {

    EnvironmentValues.plist.setter(v3);
LABEL_10:
  }

  v4 = result[2];
  if (v4)
  {
    v5 = *(v4 + 64);
    if (!v2)
    {
      if (!v5)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v5 = 0;
  }

  if (v5 == *(v2 + 64))
  {
    goto LABEL_10;
  }

LABEL_13:
  v6 = result[1];
  if (v6[1])
  {
    PropertyList.Tracker.invalidateAllValues(from:to:)(result[2], v2);
  }

  *v6 = v2;
  return result;
}

uint64_t EnvironmentValues.addDependencies(from:)(uint64_t result)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(result + 16);

    os_unfair_lock_lock((v3 + 16));
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v9[0] = *(v3 + 24);
    v9[1] = v4;
    v9[2] = v5;
    v9[3] = v6;
    v10 = v7;
    v8 = *(v2 + 16);

    os_unfair_lock_lock(v8 + 4);
    TrackerData.formUnion(_:)(v9);

    os_unfair_lock_unlock(v8 + 4);

    os_unfair_lock_unlock((v3 + 16));
  }

  return result;
}

void (*EnvironmentValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
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
  EnvironmentValues.getValue<A>(for:)(v15, a3, a4);
  return EnvironmentValues.subscript.modify;
}

void EnvironmentValues.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    EnvironmentValues._set<A>(_:for:)(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    EnvironmentValues._set<A>(_:for:)(*(*a1 + 56));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EnvironmentValues.description.getter()
{
  v1 = *v0;
  v5[0] = 91;
  v5[1] = 0xE100000000000000;
  v4 = 0;
  if (v1)
  {
    v3 = 0;

    specialized PropertyList.Element.forEach(filter:_:)(&v3, v1, &v4, v5);
  }

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);

  return v5[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EnvironmentValues()
{
  v1 = *v0;
  v5[0] = 91;
  v5[1] = 0xE100000000000000;
  v4 = 0;
  if (v1)
  {
    v3 = 0;

    specialized PropertyList.Element.forEach(filter:_:)(&v3, v1, &v4, v5);
  }

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);

  return v5[0];
}

uint64_t EnvironmentValues.append(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  value = *a1;
  v3 = *(a1 + 8);
  v5 = *v1;
  if (!*a1)
  {

    value = v5;
    if (v5)
    {
      goto LABEL_8;
    }

LABEL_12:
    if (!value)
    {
      goto LABEL_19;
    }

    v6 = 0;
    goto LABEL_14;
  }

  if (!v5)
  {

    goto LABEL_12;
  }

  if (value[3])
  {
    type metadata accessor for TypedElement<EmptyKey>();
    swift_allocObject();

    value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v5, value).value;
  }

  else
  {
    v7 = value[4];
    v8 = *(*value + 216);

    v10 = v8(v9, v7);

    value = v10;
  }

LABEL_8:
  v6 = *(v5 + 64);
  if (value)
  {
LABEL_14:
    if (v6 == value[8])
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v2[1])
  {

    PropertyList.Tracker.invalidateAllValues(from:to:)(v5, value);
  }

  else
  {
  }

  *v2 = value;
LABEL_19:
  if (v3)
  {
    v11 = v2[1];
    if (v11)
    {
      v12 = *(v3 + 16);

      os_unfair_lock_lock((v12 + 16));
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v15 = *(v12 + 48);
      v16 = *(v12 + 56);
      v19[0] = *(v12 + 24);
      v19[1] = v13;
      v19[2] = v14;
      v19[3] = v15;
      v20 = v16;
      v17 = *(v11 + 16);

      os_unfair_lock_lock(v17 + 4);
      TrackerData.formUnion(_:)(v19);

      os_unfair_lock_unlock(v17 + 4);

      os_unfair_lock_unlock((v12 + 16));
    }
  }
}

uint64_t EnvironmentValues.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  *a2 = v3;
  a2[1] = 0;
  return result;
}

void type metadata accessor for TypedElement<EmptyKey>()
{
  if (!lazy cache variable for type metadata for TypedElement<EmptyKey>)
  {
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EmptyKey>);
    }
  }
}

uint64_t static ScrollViewDragAutoScrollKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

void static DynamicTypeSize.systemDefault.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x78);
  v1 = static CoreGlue2.shared;
  v0();
}

Swift::Int DynamicTypeSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void (*EnvironmentValues.dynamicTypeSize.modify(char **a1))(uint64_t *a1)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 3;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.dynamicTypeSize.modify;
}

void EnvironmentValues.dynamicTypeSize.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

unsigned __int8 *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance DynamicTypeSizeCollection(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *result;
  if (v2 < *a2 || v2 >= a2[1])
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *result;
  if (v2 < *a2 || a2[1] < v2)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance DynamicTypeSizeCollection()
{
  v0 = specialized Collection.count.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15DynamicTypeSizeO_Tt1g5(v0, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v4, (v2 + 4), v1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [DynamicTypeSize] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DynamicTypeSize] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DynamicTypeSize] and conformance [A])
  {
    type metadata accessor for [DynamicTypeSize](255, &lazy cache variable for type metadata for [DynamicTypeSize], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DynamicTypeSize] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<DynamicTypeSizeCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<DynamicTypeSizeCollection>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<DynamicTypeSizeCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection();
    v7 = a3(a1, &unk_1F0091B00, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t DelayAnimation.shouldMerge<A, B>(base:previous:previousBase:value:time:context:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 != a1)
  {
    return 0;
  }

  v19 = specialized Animation.init<A>(_:)(a5, a9);
  v20.n128_f64[0] = a2 - a3;
  if (a2 - a3 <= 0.0)
  {
    v20.n128_f64[0] = 0.0;
  }

  v21 = (*(a11 + 32))(v19, a6, a7, a8, a10, a9, a11, v20);

  return v21 & 1;
}

uint64_t protocol witness for CustomAnimationModifier.function(base:) in conformance DelayAnimation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *a2 = v11;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 7;

  return outlined copy of Animation.Function(v5, v6, v7, v8, v9, v10);
}

void *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance DelayAnimation(void *result)
{
  v2 = *v1;
  if (*v1 != 0.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0x21uLL);
    v4 = v3[1];
    v5 = v4 + 8;
    if (__OFADD__(v4, 8))
    {
      __break(1u);
    }

    else if (v3[2] >= v5)
    {
      v3[1] = v5;
      result = (*v3 + v4);
LABEL_5:
      *result = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_5;
  }

  return result;
}

uint64_t (*_ScrollClipEffect.animatableData.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return _ScrollClipEffect.animatableData.modify;
}

uint64_t static _ScrollClipEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v41 = *(a2 + 32);
  v42 = v4;
  v43 = *(a2 + 64);
  v5 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v5;
  v44 = *(a2 + 80);
  v38 = v40[0];
  v39 = v5;
  v6 = v41;
  v36 = *(a2 + 36);
  v37 = *(a2 + 52);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  outlined init with copy of _ViewInputs(v40, v29);
  LODWORD(v29[0]) = AGGraphCreateOffsetAttribute2();
  *(v29 + 4) = __PAIR64__(DWORD2(v43), v43);
  HIDWORD(v29[0]) = HIDWORD(v42);
  v15 = type metadata accessor for _ScrollClipEffect.ChildTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewTransform>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_4, v14, v15, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v9 = v27[0];
  v23[0] = v38;
  v23[1] = v39;
  *&v24[4] = v36;
  *&v24[20] = v37;
  *v24 = v6 | 4;
  *&v24[28] = v27[0];
  v25 = v12;
  v26 = v13;
  v19 = *v24;
  v20 = *&v24[16];
  v21 = v12;
  v22 = v13;
  v17 = v38;
  v18 = v39;
  v10 = outlined init with copy of _ViewInputs(v23, v29);
  a3(v10, &v17);
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v28 = v22;
  v27[0] = v17;
  v27[1] = v18;
  outlined destroy of _ViewInputs(v27);
  v29[0] = v38;
  v29[1] = v39;
  v31 = v36;
  v32 = v37;
  v30 = v6 | 4;
  v33 = v9;
  v34 = v12;
  v35 = v13;
  return outlined destroy of _ViewInputs(v29);
}

uint64_t _ScrollClipEffect.ChildTransform.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeometryEffectTransform.transform.getter(&v41);
  v10 = v41;
  v11 = v42;
  v12 = v43;
  v13 = v44;
  v14 = v45;
  v15 = v46;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v17 = *Value;
  v18 = *(Value + 8);
  v19 = v14 - (*Value - v12);
  *(a4 + 32) = v19;
  *a4 = v10;
  *(a4 + 8) = v11;
  v20 = v15 - (v18 - v13);
  *(a4 + 40) = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v18;

  v21 = AGGraphGetValue();
  (*(v7 + 16))(v9, v21, a2);
  v22 = AGGraphGetValue();
  v23 = Shape.effectivePath(in:)(a2, a3, &v41, *v22);
  (*(v7 + 8))(v9, a2, v23);
  v24 = v41;
  if (LOBYTE(v45) <= 2u)
  {
    if (LOBYTE(v45) && LOBYTE(v45) != 1)
    {
      x = v41[2];
      y = v41[3];
      width = v41[4];
      height = v41[5];
    }

    else
    {
      x = *&v41;
      y = v42;
      width = v43;
      height = v44;
    }

    goto LABEL_17;
  }

  if (LOBYTE(v45) == 5)
  {
    if (*(v41 + 16))
    {
      if (*(v41 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v29 = MEMORY[0x193AC3640](v24 + 3);
      }

      x = v29;
      y = v30;
      width = v31;
      height = v32;
    }

    else
    {
      v33 = *(v41 + 3);
      if (!v33)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v34 = v33;

      PathBoundingBox = CGPathGetPathBoundingBox(v34);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;
    }

    outlined destroy of Path(&v41);
LABEL_17:
    type metadata accessor for Element<ViewTransform.ScrollGeometryItem>();
    v35 = swift_allocObject();
    v36 = v35;
    *(v35 + 32) = v19;
    *(v35 + 40) = v20;
    *(v35 + 48) = x;
    *(v35 + 56) = y;
    *(v35 + 64) = vdupq_n_s64(0x7FF0000000000000uLL);
    *(v35 + 80) = 0u;
    *(v35 + 96) = 0u;
    *(v35 + 112) = width;
    *(v35 + 120) = height;
    *(v35 + 128) = x;
    *(v35 + 136) = y;
    *(v35 + 144) = width;
    *(v35 + 152) = height;
    v37 = 1;
    *(v35 + 160) = 1;
    *(v35 + 16) = v10;
    if (!v10 || (v38 = *(v10 + 3), v39 = __OFADD__(v38, 1), v37 = v38 + 1, !v39))
    {
      *(v35 + 24) = v37;
      outlined destroy of Path(&v41);

      *a4 = v36;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (LOBYTE(v45) == 6)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_17;
  }

LABEL_22:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ScrollClipEffect<A>(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  _ScrollClipEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ScrollClipEffect<A>;
}

uint64_t _ScrollClipEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _EnabledScrollClipEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t (*_EnabledScrollClipEffect.animatableData.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return _EnabledScrollClipEffect.animatableData.modify;
}

void _ScrollClipEffect.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized _EnabledScrollClipEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _EnabledScrollClipEffect.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v7;
  v49 = *(a2 + 64);
  v8 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v8;
  v50 = *(a2 + 80);
  v44 = v46[0];
  v45 = v8;
  v9 = v47;
  v42 = *(a2 + 36);
  v43 = *(a2 + 52);
  v21 = *(a2 + 64);
  v22 = *(a2 + 80);
  if (*(*(a5 - 8) + 64))
  {
    outlined init with copy of _ViewInputs(v46, &v34);
    closure #1 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(1, a5);
  }

  else
  {
    outlined init with copy of _ViewInputs(v46, &v34);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  closure #2 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(1);
  v11 = AGGraphCreateOffsetAttribute2();
  *&v34 = __PAIR64__(v11, OffsetAttribute2);
  *(&v34 + 1) = __PAIR64__(DWORD2(v49), v49);
  LODWORD(v35) = HIDWORD(v48);
  MEMORY[0x1EEE9AC00](v11);
  v18 = type metadata accessor for _EnabledScrollClipEffect.ChildTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewTransform>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v34, closure #1 in Attribute.init<A>(_:)partial apply, &v17, v18, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v14 = v32[0];
  v29[0] = v44;
  v29[1] = v45;
  *(v30 + 4) = v42;
  *(&v30[1] + 4) = v43;
  LODWORD(v30[0]) = v9 | 4;
  HIDWORD(v30[1]) = v32[0];
  v30[2] = v21;
  v31 = v22;
  v25 = v30[0];
  v26 = v30[1];
  v27 = v21;
  v28 = v22;
  v23 = v44;
  v24 = v45;
  v15 = outlined init with copy of _ViewInputs(v29, &v34);
  a3(v15, &v23);
  v32[2] = v25;
  v32[3] = v26;
  v32[4] = v27;
  v33 = v28;
  v32[0] = v23;
  v32[1] = v24;
  outlined destroy of _ViewInputs(v32);
  v34 = v44;
  v35 = v45;
  v37 = v42;
  v38 = v43;
  v36 = v9 | 4;
  v39 = v14;
  v40 = v21;
  v41 = v22;
  return outlined destroy of _ViewInputs(&v34);
}

uint64_t closure #1 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _EnabledScrollClipEffect();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #2 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for _EnabledScrollClipEffect();
  v3 = *(v2 + 36);
  v8[2] = v2;
  v4 = MEMORY[0x1E69E6370];
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_6, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t _EnabledScrollClipEffect.ChildTransform.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

_BYTE *_EnabledScrollClipEffect.ChildTransform.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _EnabledScrollClipEffect.ChildTransform.transform.getter(&v41);
  v11 = v41;
  v10 = v42;
  v12 = v43;
  v13 = v44;
  v14 = v45;
  v15 = v46;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v17 = *Value;
  v18 = *(Value + 8);
  v19 = v14 - (*Value - v12);
  v20 = v15 - (v18 - v13);
  result = AGGraphGetValue();
  if (*result != 1)
  {
    goto LABEL_21;
  }

  v22 = AGGraphGetValue();
  (*(v7 + 16))(v9, v22, a2);
  v23 = AGGraphGetValue();
  v24 = Shape.effectivePath(in:)(a2, a3, &v41, *v23);
  (*(v7 + 8))(v9, a2, v24);
  v25 = v41;
  if (LOBYTE(v45) <= 2u)
  {
    if (LOBYTE(v45) && LOBYTE(v45) != 1)
    {
      x = v41[2];
      y = v41[3];
      width = v41[4];
      height = v41[5];
    }

    else
    {
      x = *&v41;
      y = v42;
      width = v43;
      height = v44;
    }

    goto LABEL_18;
  }

  if (LOBYTE(v45) == 5)
  {
    if (*(v41 + 16))
    {
      if (*(v41 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v30 = MEMORY[0x193AC3640](v25 + 3);
      }

      x = v30;
      y = v31;
      width = v32;
      height = v33;
    }

    else
    {
      v34 = *(v41 + 3);
      if (!v34)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v35 = v34;

      PathBoundingBox = CGPathGetPathBoundingBox(v35);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;
    }

    outlined destroy of Path(&v41);
LABEL_18:
    type metadata accessor for Element<ViewTransform.ScrollGeometryItem>();
    v36 = swift_allocObject();
    v37 = v36;
    *(v36 + 32) = v19;
    *(v36 + 40) = v20;
    *(v36 + 48) = x;
    *(v36 + 56) = y;
    *(v36 + 64) = vdupq_n_s64(0x7FF0000000000000uLL);
    *(v36 + 80) = 0u;
    *(v36 + 96) = 0u;
    *(v36 + 112) = width;
    *(v36 + 120) = height;
    *(v36 + 128) = x;
    *(v36 + 136) = y;
    *(v36 + 144) = width;
    *(v36 + 152) = height;
    v38 = 1;
    *(v36 + 160) = 1;
    *(v36 + 16) = v11;
    if (!v11 || (v39 = *(v11 + 3), v40 = __OFADD__(v39, 1), v38 = v39 + 1, !v40))
    {
      *(v36 + 24) = v38;
      result = outlined destroy of Path(&v41);
      v19 = 0.0;
      v11 = v37;
      v20 = 0.0;
LABEL_21:
      *a4 = v11;
      *(a4 + 8) = v10;
      *(a4 + 16) = v17;
      *(a4 + 24) = v18;
      *(a4 + 32) = v19;
      *(a4 + 40) = v20;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (LOBYTE(v45) == 6)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_18;
  }

LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _EnabledScrollClipEffect<A>(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  _ScrollClipEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _EnabledScrollClipEffect<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _ScrollClipEffect<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized _EnabledScrollClipEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _EnabledScrollClipEffect.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t View.scrollClipShape<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _ScrollClipEffect();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  (*(v6 + 32))(v13, v8, a3);
  View.modifier<A>(_:)(v13, a2, v9);
  return (*(v10 + 8))(v13, v9);
}

uint64_t specialized _EnabledScrollClipEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

void type metadata accessor for Attribute<ViewTransform>()
{
  if (!lazy cache variable for type metadata for Attribute<ViewTransform>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<ViewTransform>);
    }
  }
}

uint64_t type metadata completion function for _EnabledScrollClipEffect()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for Element<ViewTransform.ScrollGeometryItem>()
{
  if (!lazy cache variable for type metadata for Element<ViewTransform.ScrollGeometryItem>)
  {
    lazy protocol witness table accessor for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem();
    v0 = type metadata accessor for Element();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Element<ViewTransform.ScrollGeometryItem>);
    }
  }
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t static AttributedStringKey.nsAttributedStringKey.getter()
{
  v0 = dispatch thunk of static AttributedStringKey.name.getter();
  v1 = MEMORY[0x193ABEC20](v0);

  return v1;
}

uint64_t Dictionary<>.removeValue<A>(forKey:)@<X0>(uint64_t a1@<X8>)
{
  v2 = static AttributedStringKey.nsAttributedStringKey.getter();
  specialized Dictionary._Variant.removeValue(forKey:)(&v6);

  type metadata accessor for Any?();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, v4 ^ 1u, 1, AssociatedTypeWitness);
}

{
  v2 = static AttributedStringKey.nsAttributedStringKey.getter();
  specialized Dictionary._Variant.removeValue(forKey:)(&v7);

  if (!v8)
  {
    _sypSgWOhTm_12(&v7, type metadata accessor for Any?);
    goto LABEL_5;
  }

  swift_getAssociatedTypeWitness();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  dispatch thunk of static ObjectiveCConvertibleAttributedStringKey.value(for:)();

  v5 = 0;
LABEL_6:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, v5, 1, AssociatedTypeWitness);
}

void static AttributeScope.keys.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = a1;
  v17 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v8 = &v16 - v7;
  if (one-time initialization token for scopeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);
  v9 = off_1ED5247F0;
  if (!*(off_1ED5247F0 + 2) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v11 & 1) == 0))
  {
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
LABEL_8:
    static AttributeScope.attributeKeys.getter();
    v16 = a1;
    v17 = a2;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    AttributedString.Keys.init<A>(_:)(v8, OpaqueTypeMetadata2, OpaqueTypeConformance2, v14, &v16);
    v12 = v16;
    os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = off_1ED5247F0;
    off_1ED5247F0 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, isUniquelyReferenced_nonNull_native);
    off_1ED5247F0 = v16;
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
    goto LABEL_9;
  }

  v12 = *(v9[7] + 8 * v10);

  os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a3 = v12;
}

uint64_t static AttributeScope.contains<A>(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  static AttributeScope.keys.getter(a2, a4, &v22);
  v5 = v22;
  if (*(v22 + 16))
  {
    Hasher.init(_seed:)();
    dispatch thunk of static AttributedStringKey.name.getter();
    String.hash(into:)();

    v6 = Hasher._finalize()();
    v7 = -1 << *(v5 + 32);
    v8 = v6 & ~v7;
    if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      do
      {
        v10 = *(v5 + 48) + 16 * v8;
        v11 = *v10;
        v12 = *(v10 + 8);
        if (v12 < 0)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
          v16 = v11;
          if (v13 == dispatch thunk of static AttributedStringKey.name.getter() && v15 == v17)
          {
            outlined consume of AttributedString.AnyAttribute(v11, v12);

            v20 = 1;
            goto LABEL_14;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined consume of AttributedString.AnyAttribute(v11, v12);

          if (v19)
          {
LABEL_12:
            v20 = 1;
            goto LABEL_14;
          }
        }

        else if (v11 == a3)
        {
          goto LABEL_12;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }
  }

  v20 = 0;
LABEL_14:

  return v20;
}

unint64_t AttributedString.AttributeDependencies.init()@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t AttributedString.AttributeDependencies.insert<A, B>(from:to:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = *v6;
  v13 = v24[0];
  *v6 = 0x8000000000000000;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a5);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_13:
    specialized _NativeDictionary.copy()();
    v13 = v24[0];
    goto LABEL_6;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v13 = v24[0];
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a5);
  if ((v7 & 1) != (v20 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v19;
LABEL_6:

  *v6 = v13;
  if ((v7 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, a3, a5, MEMORY[0x1E69E7CD0], v13);
  }

  specialized Set._Variant.insert(_:)(v24, a4, a6);
  outlined consume of AttributedString.AnyAttribute(v24[0], v24[1]);
  if (!v13[2] || (result = specialized __RawDictionaryStorage.find<A>(_:)(a4, a6), (v22 & 1) == 0))
  {
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v6;
    *v6 = 0x8000000000000000;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x1E69E7CD0], a4, a6, v23);
    *v6 = v24[0];
  }

  return result;
}

void specialized Set.union<A>(_:)(uint64_t a1, void *a2)
{
  v3 = 0;
  v14[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    outlined copy of AttributedString.AnyAttribute(*v11, v13);
    specialized Set._Variant.insert(_:)(v14, v12, v13);
    outlined consume of AttributedString.AnyAttribute(v14[0], v14[1]);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static AttributedStringKey.nsAttributedStringKey.getter();
  v5 = v4;
  if (*(a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v6, v11);
  }

  else
  {

    memset(v11, 0, sizeof(v11));
  }

  type metadata accessor for Any?();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v9 ^ 1u, 1, AssociatedTypeWitness);
}

{
  v4 = static AttributedStringKey.nsAttributedStringKey.getter();
  v5 = v4;
  if (!*(a1 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) == 0))
  {

    goto LABEL_6;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v6, v12);

  swift_getAssociatedTypeWitness();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  dispatch thunk of static ObjectiveCConvertibleAttributedStringKey.value(for:)();

  v10 = 0;
LABEL_7:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v10, 1, AssociatedTypeWitness);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1)
{
  specialized Dictionary<>.subscript.setter(a1);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, a1, v3, v9);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    v12 = *(v4 + 8);
    v12(v6, v3);
    v13 = static AttributedStringKey.nsAttributedStringKey.getter();
    v19 = 0u;
    v20 = 0u;
    specialized Dictionary.subscript.setter(&v19, v13);
    return (v12)(a1, v3);
  }

  else
  {
    v18 = a1;
    (*(v7 + 32))(v11, v6, AssociatedTypeWitness);
    v15 = static AttributedStringKey.nsAttributedStringKey.getter();
    v16 = dispatch thunk of static ObjectiveCConvertibleAttributedStringKey.objectiveCValue(for:)();
    *(&v20 + 1) = swift_getAssociatedTypeWitness();
    *&v19 = v16;
    specialized Dictionary.subscript.setter(&v19, v15);
    (*(v4 + 8))(v18, v3);
    return (*(v7 + 8))(v11, AssociatedTypeWitness);
  }
}

void (*Dictionary<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
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
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
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
  Dictionary<>.subscript.getter(*v4, v15);
  return Dictionary<>.subscript.modify;
}

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
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
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
  Dictionary<>.subscript.getter(*v4, v15);
  return Dictionary<>.subscript.modify;
}

void Dictionary<>.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    specialized Dictionary<>.subscript.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized Dictionary<>.subscript.setter(*(*a1 + 56));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    Dictionary<>.subscript.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Dictionary<>.subscript.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AttributedString.Keys.contains(_:)(void *a1)
{
  v2 = *v1;
  if (*(*v1 + 16))
  {
    Hasher.init(_seed:)();
    dispatch thunk of static AttributedStringKey.name.getter();
    String.hash(into:)();

    v4 = Hasher._finalize()();
    v5 = -1 << *(v2 + 32);
    v6 = v4 & ~v5;
    if ((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      do
      {
        v8 = *(v2 + 48) + 16 * v6;
        v9 = *v8;
        v10 = *(v8 + 8);
        if (v10 < 0)
        {
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
          v14 = v9;
          if (v11 == dispatch thunk of static AttributedStringKey.name.getter() && v13 == v15)
          {
            outlined consume of AttributedString.AnyAttribute(v9, v10);

            return 1;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined consume of AttributedString.AnyAttribute(v9, v10);

          if (v17)
          {
            return 1;
          }
        }

        else if (v9 == a1)
        {
          return 1;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }
  }

  return 0;
}

uint64_t static AttributeScope.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static AttributeScope.keys.getter(a2, a3, &v20);
  v3 = v20;
  if (*(v20 + 16) && (Hasher.init(_seed:)(), static String._unconditionallyBridgeFromObjectiveC(_:)(), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v10 < 0)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v14;
        v15 = v9;
      }

      else
      {
        v11 = dispatch thunk of static AttributedStringKey.name.getter();
        v13 = v12;
      }

      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v9, v10);

      if (v18)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    outlined consume of AttributedString.AnyAttribute(v9, v10);

LABEL_15:

    return 1;
  }

  else
  {
LABEL_13:

    return 0;
  }
}

Swift::Bool __swiftcall AttributedString.Keys.contains(_:)(NSAttributedStringKey a1)
{
  v2 = *v1;
  if (*(*v1 + 16) && (Hasher.init(_seed:)(), static String._unconditionallyBridgeFromObjectiveC(_:)(), String.hash(into:)(), , v3 = Hasher._finalize()(), v4 = -1 << *(v2 + 32), v5 = v3 & ~v4, ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(v2 + 48) + 16 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
      if (v9 < 0)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v13;
        v14 = v8;
      }

      else
      {
        v10 = dispatch thunk of static AttributedStringKey.name.getter();
        v12 = v11;
      }

      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v8, v9);

      if ((v17 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    outlined consume of AttributedString.AnyAttribute(v8, v9);

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static AttributeScope.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static AttributeScope.keys.getter(a2, a3, &v5);
  v3 = AttributedString.Keys.subscript.getter();

  return v3;
}

uint64_t AttributedString.Keys.subscript.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = ~v3;
  while (1)
  {
    v6 = *(v1 + 48) + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    if (v8 < 0)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v12;
      v13 = v7;
    }

    else
    {
      v9 = dispatch thunk of static AttributedStringKey.name.getter();
      v11 = v10;
    }

    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v14)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v7, v8);

    if (v16)
    {
      goto LABEL_15;
    }

    v4 = (v4 + 1) & v5;
    if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return 0;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v7, v8);

LABEL_15:
  result = specialized Set.subscript.getter(v4, *(v1 + 36), 0, v1);
  if (v18 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCAA14AttributeScopePAAE09attributeF0QrvpZQOyAA0I6ScopesOADE0D12UIAttributesV_Qo__Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator();
  v9 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
  v13 = lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes);
  *&v32 = v12;
  *(&v32 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v14 = dispatch thunk of Sequence.underestimatedCount.getter();
  v31 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  v15 = v31;
  v29 = v5;
  (*(v5 + 16))(v7, a1, v4);
  result = dispatch thunk of Sequence.makeIterator()();
  if (v14 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v27 = a1;
  if (v14)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      result = dispatch thunk of IteratorProtocol.next()();
      v17 = v32;
      if (!v32)
      {
        goto LABEL_17;
      }

      v31 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        v26 = v32;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v17 = v26;
        v15 = v31;
      }

      *(v15 + 16) = v19 + 1;
      *(v15 + 16 * v19 + 32) = v17;
      if (!--v14)
      {
        goto LABEL_10;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_10:
  dispatch thunk of IteratorProtocol.next()();
  v20 = v32;
  if (v32)
  {
    v21 = *(&v32 + 1);
    do
    {
      v31 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      dispatch thunk of IteratorProtocol.next()();
      v21 = *(&v32 + 1);
      v20 = v32;
    }

    while (v32);
  }

  (*(v28 + 8))(v11, v9);
  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(v15);

  result = (*(v29 + 8))(v27, v4);
  *v30 = v25;
  return result;
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCSayAaG_pXpG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  if (v4)
  {
    v6 = *(a1 + 16);
    v7 = (a1 + 32);
    v8 = v4;
    while (v6)
    {
      v9 = *v7;
      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        v19 = *v7;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v9 = v19;
      }

      *(v21 + 16) = v11 + 1;
      *(v21 + 16 * v11 + 32) = v9;
      ++v7;
      --v6;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_7:
  v12 = *(a1 + 16);
  v13 = v12 - v4;
  if (v12 == v4)
  {
LABEL_8:

    v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(v21);

    *a2 = v14;
    return result;
  }

  if (v12 > v4)
  {
    v15 = *(v21 + 16);
    v16 = (a1 + 16 * v4 + 32);
    do
    {
      v17 = *v16;
      v18 = *(v21 + 24);
      if (v15 >= v18 >> 1)
      {
        v20 = *v16;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v17 = v20;
      }

      *(v21 + 16) = v15 + 1;
      *(v21 + 16 * v15 + 32) = v17;
      ++v16;
      ++v15;
      --v13;
    }

    while (v13);
    goto LABEL_8;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t AttributedString.Keys.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Alignment, 0, a2, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a4);
  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(v8);

  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a5 = v9;
  return result;
}

void *one-time initialization function for scopeCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_10Foundation16AttributedStringV7SwiftUIE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AttributedString.Keys.scopeCache = 0;
  off_1ED5247F0 = result;
  return result;
}

void AttributedString.Keys.union(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  specialized Set.union<A>(_:)(v4, v5);
  *a2 = v6;
}

void *AttributedString.Keys.intersection(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  result = specialized _NativeSet.intersection(_:)(v4, v5, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  *a2 = result;
  return result;
}

uint64_t AttributedString.Keys.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  result = specialized Set.formSymmetricDifference(_:)(v4);
  *a2 = v6;
  return result;
}

void *AttributedString.Keys.popFirst()()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = _HashTable.startBucket.getter();
    result = specialized Set._Variant.remove(at:)(v2, *(v1 + 36));
    if ((v4 & 0x8000000000000000) == 0)
    {
      return result;
    }

    outlined consume of AttributedString.AnyAttribute(result, v4);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return 0;
}

uint64_t AttributedString.Keys.insert(_:)(void *a1, uint64_t a2)
{
  v2 = specialized Set._Variant.insert(_:)(v4, a1, a2);
  outlined consume of AttributedString.AnyAttribute(v4[0], v4[1]);
  return v2 & 1;
}

void *AttributedString.Keys.remove(_:)(void *a1, uint64_t a2)
{
  result = specialized Set._Variant.remove(_:)(a1, a2);
  if ((~v3 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if (v3 < 0)
  {
    outlined consume of AttributedString.AnyAttribute?(result, v3);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AttributedString.Keys.update(with:)(void *a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  *v2 = 0x8000000000000000;
  v7 = specialized _NativeSet.update(with:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  v9 = v8;

  *v3 = v11;
  if ((~v9 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    return v7;
  }

  outlined consume of AttributedString.AnyAttribute?(v7, v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *AttributedString.Keys.formIntersection(_:)(uint64_t *a1)
{
  result = specialized _NativeSet.intersection(_:)(*a1, *v1, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  *v1 = result;
  return result;
}

uint64_t specialized Set.formSymmetricDifference(_:)(uint64_t a1)
{
  v2 = 0;
  v5 = *(a1 + 56);
  result = a1 + 56;
  v4 = v5;
  v6 = 1 << *(result - 24);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v36 = v9;
  v37 = result;
LABEL_8:
  if (v8)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v12 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(result + 8 * v12);
    ++v2;
    if (v8)
    {
      v2 = v12;
LABEL_13:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = *(a1 + 48) + ((v2 << 10) | (16 * v13));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *v1;
      v42 = *v14;
      if (*(*v1 + 16))
      {
        Hasher.init(_seed:)();
        if (v16 < 0)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v15;
        }

        else
        {
          dispatch thunk of static AttributedStringKey.name.getter();
        }

        String.hash(into:)();

        v19 = Hasher._finalize()();
        v20 = -1 << *(v17 + 32);
        v21 = v19 & ~v20;
        if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v40 = v16;
          v41 = ~v20;
          while (1)
          {
            v22 = *(v17 + 48) + 16 * v21;
            v23 = *v22;
            v24 = *(v22 + 8);
            if ((v24 & 0x8000000000000000) == 0)
            {
              break;
            }

            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v28;
            v29 = v23;
            if (v16 < 0)
            {
              goto LABEL_26;
            }

            v30 = dispatch thunk of static AttributedStringKey.name.getter();
LABEL_27:
            if (v25 == v30 && v27 == v31)
            {
              outlined consume of AttributedString.AnyAttribute(v23, v24);

              v16 = v40;
LABEL_34:
              v1 = v38;
              v34 = specialized Set._Variant.remove(_:)(v42, v16);
              outlined consume of AttributedString.AnyAttribute?(v34, v35);
              v10 = v42;
              v11 = v16;
LABEL_7:
              outlined consume of AttributedString.AnyAttribute(v10, v11);
              v9 = v36;
              result = v37;
              goto LABEL_8;
            }

            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined consume of AttributedString.AnyAttribute(v23, v24);

            v16 = v40;
            if (v33)
            {
              goto LABEL_34;
            }

LABEL_20:
            v21 = (v21 + 1) & v41;
            if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          if ((v16 & 0x8000000000000000) == 0)
          {
            if (v23 == v42)
            {
              goto LABEL_34;
            }

            goto LABEL_20;
          }

          v25 = dispatch thunk of static AttributedStringKey.name.getter();
          v27 = v26;
LABEL_26:
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          goto LABEL_27;
        }
      }

      else
      {
        outlined copy of AttributedString.AnyAttribute(v15, v16);
      }

LABEL_6:
      v1 = v38;
      specialized Set._Variant.insert(_:)(v43, v42, v16);
      v10 = v43[0];
      v11 = v43[1];
      goto LABEL_7;
    }
  }
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance AttributedString.Keys@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  specialized Set.union<A>(_:)(v4, v5);
  *a2 = v6;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance AttributedString.Keys@<X0>(uint64_t *a1@<X0>, void **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  *a2 = specialized _NativeSet.intersection(_:)(v4, v5, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance AttributedString.Keys@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  specialized Set.formSymmetricDifference(_:)(v4);
  *a2 = v6;
}