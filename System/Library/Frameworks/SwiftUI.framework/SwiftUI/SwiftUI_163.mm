Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI13KeyEquivalentV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<KeyEquivalent>, lazy protocol witness table accessor for type KeyEquivalent and conformance KeyEquivalent);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 == v9 && v14[1] == v8)
        {
          goto LABEL_3;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyPress.Phases and conformance KeyPress.Phases()
{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyPress.Result and conformance KeyPress.Result()
{
  result = lazy protocol witness table cache variable for type KeyPress.Result and conformance KeyPress.Result;
  if (!lazy protocol witness table cache variable for type KeyPress.Result and conformance KeyPress.Result)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Result and conformance KeyPress.Result);
  }

  return result;
}

uint64_t destroy for KeyPress()
{
}

uint64_t initializeWithCopy for KeyPress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for KeyPress(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for KeyPress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyPressModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for KeyPress.Handler(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v10 = type metadata accessor for CharacterSet();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    v11 = *(v6 + 24);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
  }

  return a1;
}

uint64_t destroy for KeyPressModifier(uint64_t a1)
{
  type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v3 = type metadata accessor for CharacterSet();
    (*(*(v3 - 8) + 8))(a1, v3);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  type metadata accessor for KeyPress.Handler(0);
}

void *initializeWithCopy for KeyPressModifier(void *a1, void *a2)
{
  v4 = type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for CharacterSet();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  else
  {
    *a1 = *a2;

    swift_storeEnumTagMultiPayload();
  }

  v7 = type metadata accessor for KeyPress.Handler(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

void *assignWithCopy for KeyPressModifier(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v4 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for CharacterSet();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }
  }

  v7 = type metadata accessor for KeyPress.Handler(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

char *initializeWithTake for KeyPressModifier(char *a1, char *a2)
{
  v4 = type metadata accessor for KeyPress.Handler.Subject(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CharacterSet();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  v6 = type metadata accessor for KeyPress.Handler(0);
  *&a1[*(v6 + 20)] = *&a2[*(v6 + 20)];
  *&a1[*(v6 + 24)] = *&a2[*(v6 + 24)];
  return a1;
}

char *assignWithTake for KeyPressModifier(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v4 = type metadata accessor for KeyPress.Handler.Subject(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for CharacterSet();
      (*(*(v5 - 8) + 32))(a1, a2, v5);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }
  }

  v6 = type metadata accessor for KeyPress.Handler(0);
  *&a1[*(v6 + 20)] = *&a2[*(v6 + 20)];
  *&a1[*(v6 + 24)] = *&a2[*(v6 + 24)];

  return a1;
}

uint64_t type metadata completion function for KeyPressModifier()
{
  result = type metadata accessor for KeyPress.Handler(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyPress.Handler(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v10 = type metadata accessor for CharacterSet();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }

    v11 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
  }

  return a1;
}

uint64_t destroy for KeyPress.Handler(uint64_t a1)
{
  type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v3 = type metadata accessor for CharacterSet();
    (*(*(v3 - 8) + 8))(a1, v3);
  }

  else if (!EnumCaseMultiPayload)
  {
  }
}

void *initializeWithCopy for KeyPress.Handler(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for CharacterSet();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;

    swift_storeEnumTagMultiPayload();
  }

  v9 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  return a1;
}

void *assignWithCopy for KeyPress.Handler(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v6 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for CharacterSet();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v9 = *(a3 + 24);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  return a1;
}

char *initializeWithTake for KeyPress.Handler(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyPress.Handler.Subject(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for CharacterSet();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v8 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *assignWithTake for KeyPress.Handler(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v6 = type metadata accessor for KeyPress.Handler.Subject(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for CharacterSet();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v8] = *&a2[v8];

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyPress.Handler.Subject(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for CharacterSet();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;

LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v6 + 64);

  return memcpy(a1, a2, v11);
}

uint64_t destroy for KeyPress.Handler.Subject(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for CharacterSet();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  else if (!result)
  {
  }

  return result;
}

void *initializeWithCopy for KeyPress.Handler.Subject(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for CharacterSet();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;

LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithCopy for KeyPress.Handler.Subject(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for CharacterSet();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;

LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for KeyPress.Handler.Subject(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CharacterSet();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for KeyPress.Handler.Subject(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CharacterSet();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void type metadata accessor for _SetStorage<NSURLResourceKey>()
{
  if (!lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>)
  {
    type metadata accessor for NSURLResourceKey(255);
    lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static KeyPressModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for KeyPress.Handler(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyPressModifier(0);
  Value = AGGraphGetValue();
  outlined init with copy of KeyPress.Handler(Value, v6, type metadata accessor for KeyPress.Handler);
  v8 = *(a2 + 8);
  type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();
  if (v8)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v9 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  outlined init with take of KeyPress.Handler(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  v14 = v9;
  type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v8)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for _SetStorage<UIGestureRecognizer>()
{
  if (!lazy cache variable for type metadata for _SetStorage<UIGestureRecognizer>)
  {
    type metadata accessor for UIGestureRecognizer();
    lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(&lazy protocol witness table cache variable for type UIGestureRecognizer and conformance NSObject, type metadata accessor for UIGestureRecognizer);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<UIGestureRecognizer>);
    }
  }
}

unint64_t type metadata accessor for UIGestureRecognizer()
{
  result = lazy cache variable for type metadata for UIGestureRecognizer;
  if (!lazy cache variable for type metadata for UIGestureRecognizer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIGestureRecognizer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyEquivalent and conformance KeyEquivalent()
{
  result = lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent;
  if (!lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent;
  if (!lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent;
  if (!lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationDetent and conformance PresentationDetent()
{
  result = lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent;
  if (!lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent;
  if (!lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent);
  }

  return result;
}

uint64_t Gauge.init<A>(value:in:label:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v45 = a7;
  v46 = a4;
  v50 = a5;
  v47 = a3;
  v48 = a9;
  v42 = a8;
  v12 = *(a8 + 16);
  v43 = *(*(*(v12 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v41 = v12;
  v22 = type metadata accessor for ClosedRange();
  v49 = a1;
  v51 = v22;
  v23 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v25 = dispatch thunk of static Comparable.> infix(_:_:)();
  v26 = v44;
  v27 = *(v44 + 8);
  v27(v18, a6);
  if (v25)
  {
    v28 = v49;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v29 = v23;
    v30 = v40;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v27(v18, a6);
    (*(v26 + 16))(v18, v30, a6);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v27(v30, a6);
    v31 = v21;
    v32 = v29;
    v27(v31, a6);
    v33 = v52;
    if (v52 < 0.0)
    {
      v33 = 0.0;
    }

    if (v33 > 1.0)
    {
      v33 = 1.0;
    }
  }

  else
  {
    v27(v21, a6);
    v33 = 1.0;
    v28 = v49;
    v32 = v23;
  }

  v34 = v48;
  *v48 = v33;
  v35 = v50;
  v52 = v50;
  v53 = MEMORY[0x1E6981E70];
  v54 = MEMORY[0x1E6981E70];
  v55 = MEMORY[0x1E6981E70];
  v56 = v45;
  v57 = MEMORY[0x1E6981E60];
  v58 = MEMORY[0x1E6981E60];
  v59 = MEMORY[0x1E6981E60];
  v36 = type metadata accessor for Gauge();
  v37 = v36[21];
  v47();
  (*(*(v51 - 8) + 8))(v32);
  v27(v28, a6);
  result = (*(*(*&v35 - 8) + 56))(v34 + v37, 0, 1, COERCE_DOUBLE(*&v35));
  *(v34 + v36[22]) = 1;
  *(v34 + v36[23]) = 1;
  *(v34 + v36[24]) = 1;
  *(v34 + v36[25]) = 1;
  return result;
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = a5;
  v53 = a8;
  v50 = a7;
  v51 = a6;
  v48 = a4;
  v49 = a3;
  v47 = a9;
  v41[2] = a13;
  v15 = *(a13 + 16);
  v43 = *(*(*(v15 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v41[0] = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v41 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v41 - v23;
  v41[1] = v15;
  v25 = type metadata accessor for ClosedRange();
  v54 = a1;
  v55 = v25;
  v26 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  v44 = a11;
  v45 = a12;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v28 = dispatch thunk of static Comparable.> infix(_:_:)();
  v29 = v46;
  v30 = *(v46 + 8);
  v30(v21, a10);
  v42 = v26;
  if (v28)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v31 = v41[0];
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v30(v21, a10);
    (*(v29 + 16))(v21, v31, a10);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v30(v31, a10);
    v30(v24, a10);
    v32 = v56;
    if (v56 < 0.0)
    {
      v32 = 0.0;
    }

    if (v32 > 1.0)
    {
      v32 = 1.0;
    }
  }

  else
  {
    v30(v24, a10);
    v32 = 1.0;
  }

  v33 = v47;
  *v47 = v32;
  v34 = v50;
  v35 = v53;
  v56 = v50;
  v57 = v53;
  v58 = MEMORY[0x1E6981E70];
  v59 = MEMORY[0x1E6981E70];
  v60 = v44;
  v61 = v45;
  v62 = MEMORY[0x1E6981E60];
  v63 = MEMORY[0x1E6981E60];
  v36 = type metadata accessor for Gauge();
  v37 = v36[21];
  v49();
  v38 = (*(*(*&v34 - 8) + 56))(v33 + v37, 0, 1, COERCE_DOUBLE(*&v34));
  v39 = v36[22];
  v52(v38);
  (*(*(v55 - 8) + 8))(v42);
  v30(v54, a10);
  result = (*(*(v35 - 8) + 56))(v33 + v39, 0, 1, v35);
  *(v33 + v36[23]) = 1;
  *(v33 + v36[24]) = 1;
  *(v33 + v36[25]) = 1;
  return result;
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, void (*a10)(uint64_t), uint64_t a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v67 = a8;
  v68 = a7;
  v64 = a6;
  v65 = a5;
  v61 = a4;
  v62 = a3;
  v66 = a13;
  v63 = a12;
  v69 = a11;
  v70 = a10;
  v71 = a14;
  v53[2] = a19;
  v22 = *(a19 + 16);
  v56 = *(*(*(v22 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v53[0] = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v53 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v53 - v30;
  v53[1] = v22;
  v55 = *(*(v22 + 24) + 8);
  v32 = type metadata accessor for ClosedRange();
  v72 = a1;
  v73 = v32;
  v33 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  v59 = a18;
  v58 = a17;
  v57 = a16;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v35 = dispatch thunk of static Comparable.> infix(_:_:)();
  v36 = v60;
  v37 = *(v60 + 8);
  v37(v28, a15);
  v54 = v33;
  if (v35)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v38 = v53[0];
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v37(v28, a15);
    (*(v36 + 16))(v28, v38, a15);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v37(v38, a15);
    v37(v31, a15);
    v39 = v74;
    if (v74 < 0.0)
    {
      v39 = 0.0;
    }

    if (v39 > 1.0)
    {
      v39 = 1.0;
    }
  }

  else
  {
    v37(v31, a15);
    v39 = 1.0;
  }

  *a9 = v39;
  v40 = v63;
  v41 = v66;
  v74 = v63;
  v75 = v66;
  v42 = v71;
  v76 = v71;
  v77 = MEMORY[0x1E6981E70];
  v78 = v57;
  v79 = v58;
  v80 = v59;
  v81 = MEMORY[0x1E6981E60];
  v43 = type metadata accessor for Gauge();
  v44 = v43[21];
  v62();
  v45 = (*(*(*&v40 - 8) + 56))(a9 + v44, 0, 1, COERCE_DOUBLE(*&v40));
  v46 = v43[22];
  v65(v45);
  v47 = (*(*(v41 - 8) + 56))(a9 + v46, 0, 1, v41);
  v48 = v43[23];
  v68(v47);
  v49 = *(*(v42 - 8) + 56);
  v50 = v49(a9 + v48, 0, 1, v42);
  v51 = v43[24];
  v70(v50);
  (*(*(v73 - 8) + 8))(v54);
  v37(v72, a15);
  result = v49(a9 + v51, 0, 1, v42);
  *(a9 + v43[25]) = 1;
  return result;
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:markedValueLabels:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v61 = a8;
  v62 = a7;
  v58 = a6;
  v59 = a5;
  v55 = a4;
  v56 = a3;
  v63 = a12;
  v60 = a11;
  v57 = a10;
  v48[2] = a17;
  v20 = *(a17 + 16);
  v65 = *(*(*(v20 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v48[0] = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v48 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v48 - v28;
  v48[1] = v20;
  v50 = *(*(v20 + 24) + 8);
  v30 = type metadata accessor for ClosedRange();
  v64 = a1;
  v66 = v30;
  v31 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  v53 = a16;
  v52 = a15;
  v51 = a14;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v33 = dispatch thunk of static Comparable.> infix(_:_:)();
  v34 = v54;
  v65 = *(v54 + 8);
  v65(v26, a13);
  v49 = v31;
  if (v33)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v35 = v48[0];
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v36 = v65;
    v65(v26, a13);
    (*(v34 + 16))(v26, v35, a13);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v36(v35, a13);
    v36(v29, a13);
    v37 = v67;
    if (v67 < 0.0)
    {
      v37 = 0.0;
    }

    if (v37 > 1.0)
    {
      v37 = 1.0;
    }
  }

  else
  {
    v65(v29, a13);
    v37 = 1.0;
  }

  *a9 = v37;
  v38 = v57;
  v39 = v60;
  v67 = v57;
  v68 = v60;
  v40 = v63;
  v69 = MEMORY[0x1E6981E70];
  v70 = v63;
  v71 = v51;
  v72 = v52;
  v73 = MEMORY[0x1E6981E60];
  v74 = v53;
  v41 = type metadata accessor for Gauge();
  v42 = v41[21];
  v56();
  v43 = (*(*(*&v38 - 8) + 56))(a9 + v42, 0, 1, COERCE_DOUBLE(*&v38));
  v44 = v41[22];
  v59(v43);
  v45 = (*(*(v39 - 8) + 56))(a9 + v44, 0, 1, v39);
  *(a9 + v41[23]) = 1;
  *(a9 + v41[24]) = 1;
  v46 = v41[25];
  v62(v45);
  (*(*(v66 - 8) + 8))(v49);
  v65(v64, a13);
  return (*(*(v40 - 8) + 56))(a9 + v46, 0, 1, v40);
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, double a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v80 = a8;
  v81 = a7;
  v77 = a6;
  v78 = a5;
  v74 = a4;
  v75 = a3;
  v87 = a17;
  v84 = a16;
  v79 = a15;
  v76 = a14;
  v85 = a13;
  v86 = a12;
  v82 = a11;
  v83 = a10;
  v64 = a23;
  v26 = *(a23 + 16);
  v67 = *(*(v26 + 16) + 8);
  v73 = *(v67 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = *(a18 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v62 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v61 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v61 - v34;
  v63 = v26;
  v66 = *(*(v26 + 24) + 8);
  v36 = type metadata accessor for ClosedRange();
  v88 = a1;
  v89 = v36;
  v37 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  v71 = a22;
  v70 = a21;
  v69 = a20;
  v68 = a19;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v39 = dispatch thunk of static Comparable.> infix(_:_:)();
  v40 = v72;
  v41 = *(v72 + 8);
  v41(v32, a18);
  v73 = v41;
  v65 = v37;
  if (v39)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v42 = v40;
    v43 = v62;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v41(v32, a18);
    (*(v42 + 16))(v32, v43, a18);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v41(v43, a18);
    v41(v35, a18);
    v44 = v90;
    if (v90 < 0.0)
    {
      v44 = 0.0;
    }

    if (v44 > 1.0)
    {
      v44 = 1.0;
    }
  }

  else
  {
    v41(v35, a18);
    v44 = 1.0;
  }

  *a9 = v44;
  v45 = v76;
  v46 = v79;
  v90 = v76;
  v91 = v79;
  v47 = v84;
  v48 = v87;
  v92 = v84;
  v93 = v87;
  v94 = v68;
  v95 = v69;
  v96 = v70;
  v97 = v71;
  v49 = type metadata accessor for Gauge();
  v50 = v49[21];
  v75();
  v51 = (*(*(*&v45 - 8) + 56))(a9 + v50, 0, 1, COERCE_DOUBLE(*&v45));
  v52 = v49[22];
  v78(v51);
  v53 = (*(*(v46 - 8) + 56))(a9 + v52, 0, 1, v46);
  v54 = v49[23];
  v81(v53);
  v55 = *(*(v47 - 8) + 56);
  v56 = v55(a9 + v54, 0, 1, v47);
  v57 = v49[24];
  v83(v56);
  v58 = v55(a9 + v57, 0, 1, v47);
  v59 = v49[25];
  v86(v58);
  (*(*(v89 - 8) + 8))(v65);
  v73(v88, a18);
  return (*(*(v48 - 8) + 56))(a9 + v59, 0, 1, v48);
}

uint64_t Gauge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = *(a1 + 32);
  v4 = v42;
  v47 = type metadata accessor for Optional();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v34 - v7;
  v41 = *(a1 + 24);
  v8 = v41;
  v43 = type metadata accessor for Optional();
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v34 - v10;
  v40 = *(a1 + 16);
  v12 = v40;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v35 = &v34 - v15;
  v17 = *(a1 + 56);
  v39 = *(a1 + 48);
  v36 = *(a1 + 64);
  v37 = v17;
  v49 = v12;
  v50 = v8;
  v51 = v4;
  v52 = v39;
  v53 = v17;
  v54 = v36;
  v18 = type metadata accessor for BaseGauge();
  v38 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  v25 = *v2;
  (*(v14 + 16))(v16, v2 + *(a1 + 84), v13, v22);
  v26 = v11;
  (*(v9 + 16))(v11, v2 + *(a1 + 88), v43);
  v27 = v45;
  v28 = *(v44 + 16);
  v29 = v47;
  v28(v45, v2 + *(a1 + 92), v47);
  v30 = v2 + *(a1 + 96);
  v31 = v46;
  v28(v46, v30, v29);
  BaseGauge.init(value:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)(v35, v26, v27, v31, v20, v25);
  static ViewBuilder.buildExpression<A>(_:)(v20, v18, &protocol witness table for BaseGauge<A, B, C>);
  v32 = *(v38 + 8);
  v32(v20, v18);
  static ViewBuilder.buildExpression<A>(_:)(v24, v18, &protocol witness table for BaseGauge<A, B, C>);
  return (v32)(v24, v18);
}

uint64_t BaseGauge.init(value:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>)
{
  *a5 = a6;
  v11 = type metadata accessor for BaseGauge();
  v12 = v11[17];
  v13 = type metadata accessor for Optional();
  (*(*(v13 - 8) + 32))(a5 + v12, a1, v13);
  v14 = v11[18];
  v15 = type metadata accessor for Optional();
  (*(*(v15 - 8) + 32))(a5 + v14, a2, v15);
  v16 = v11[19];
  v17 = type metadata accessor for Optional();
  v18 = *(*(v17 - 8) + 32);
  v18(a5 + v16, a3, v17);
  return (v18)(a5 + v11[20], a4, v17);
}

uint64_t type metadata completion function for Gauge()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Optional();
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Gauge(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[2];
  v4 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  v9 = *(v4 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(*(v4 - 8) + 64);
  }

  else
  {
    v11 = *(*(v4 - 8) + 64) + 1;
  }

  v12 = a3[4];
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v14;
  __n = v11;
  if (*(v13 + 84))
  {
    v16 = *(v13 + 64);
  }

  else
  {
    v16 = *(v13 + 64) + 1;
  }

  v17 = a3[5];
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  if (*(v18 + 84))
  {
    v20 = *(*(v17 - 8) + 64);
  }

  else
  {
    v20 = *(*(v17 - 8) + 64) + 1;
  }

  v21 = v10 | v7 | v14 | v19;
  if (v21 > 7 || ((*(v9 + 80) | *(v6 + 80) | v14 | *(v18 + 80)) & 0x100000) != 0 || v20 + ((v16 + v19 + ((v16 + v14 + ((v11 + v14 + ((v8 + v10 + ((v7 + 8) & ~v7)) & ~v10)) & ~v14)) & ~v14)) & ~v19) > 0x18)
  {
    v24 = *a2;
    *a1 = *a2;
    v25 = v24 + ((v21 & 0xF8 ^ 0x1F8) & (v21 + 16));
  }

  else
  {
    v50 = v16 + v14;
    v56 = v16;
    v51 = *(v12 - 8);
    v52 = v12;
    v53 = *(v17 - 8);
    v54 = v17;
    v48 = v20;
    v49 = ~v10;
    *a1 = *a2;
    v26 = a1;
    v27 = ((a1 + v7 + 8) & ~v7);
    v28 = ((a2 + v7 + 8) & ~v7);
    v55 = v26;
    if ((*(v6 + 48))(v28, 1, v5))
    {
      memcpy(v27, v28, v8);
    }

    else
    {
      (*(v6 + 16))(v27, v28, v5);
      (*(v6 + 56))(v27, 0, 1, v5);
    }

    v29 = ~v15;
    v30 = &v28[v8];
    v31 = ((v27 + v8 + v10) & v49);
    v32 = (&v30[v10] & v49);
    if ((*(v9 + 48))(v32, 1, v4))
    {
      v33 = __n;
      memcpy(v31, v32, __n);
      v35 = v51;
      v34 = v52;
    }

    else
    {
      (*(v9 + 16))(v31, v32, v4);
      (*(v9 + 56))(v31, 0, 1, v4);
      v35 = v51;
      v34 = v52;
      v33 = __n;
    }

    v36 = ((v31 + v33 + v15) & v29);
    v37 = ((v32 + v33 + v15) & v29);
    v38 = *(v35 + 48);
    if (v38(v37, 1, v34))
    {
      memcpy(v36, v37, v56);
    }

    else
    {
      (*(v35 + 16))(v36, v37, v34);
      (*(v35 + 56))(v36, 0, 1, v34);
    }

    v39 = ~v19;
    v40 = ((v36 + v50) & v29);
    v41 = ((v37 + v50) & v29);
    if (v38(v41, 1, v34))
    {
      v42 = v56;
      memcpy(v40, v41, v56);
      v43 = v54;
    }

    else
    {
      (*(v35 + 16))(v40, v41, v34);
      (*(v35 + 56))(v40, 0, 1, v34);
      v43 = v54;
      v42 = v56;
    }

    v44 = &v41[v42];
    v45 = &v40[v42 + v19];
    v46 = &v44[v19];
    if ((*(v53 + 48))(v46 & v39, 1, v43))
    {
      memcpy((v45 & v39), (v46 & v39), v48);
    }

    else
    {
      (*(v53 + 16))(v45 & v39, v46 & v39, v43);
      (*(v53 + 56))(v45 & v39, 0, 1, v43);
    }

    return v55;
  }

  return v25;
}

uint64_t destroy for Gauge(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(v3 - 8);
  v5 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, v3))
  {
    (*(v4 + 8))(v5, v3);
  }

  v6 = *(v4 + 84);
  v7 = *(v4 + 64);
  v8 = a2[3];
  v9 = *(v8 - 8);
  v10 = v7 + v5;
  if (!v6)
  {
    ++v10;
  }

  v11 = (v10 + *(v9 + 80)) & ~*(v9 + 80);
  if (!(*(*(a2[3] - 8) + 48))(v11, 1, v8))
  {
    (*(v9 + 8))(v11, v8);
  }

  v12 = *(v9 + 64);
  v13 = a2[4];
  v14 = *(v13 - 8);
  v15 = *(v9 + 84) == 0;
  v16 = *(v14 + 80);
  v17 = v12 + v11;
  if (v15)
  {
    ++v17;
  }

  v18 = (v17 + v16) & ~v16;
  v19 = *(*(a2[4] - 8) + 48);
  if (!v19(v18, 1, v13))
  {
    (*(v14 + 8))(v18, v13);
  }

  if (*(v14 + 84))
  {
    v20 = *(v14 + 64);
  }

  else
  {
    v20 = *(v14 + 64) + 1;
  }

  v21 = (v18 + v16 + v20) & ~v16;
  if (!v19(v21, 1, v13))
  {
    (*(v14 + 8))(v21, v13);
  }

  v22 = a2[5];
  v27 = *(v22 - 8);
  v23 = *(v27 + 80);
  v24 = v21 + v20 + v23;
  result = (*(v27 + 48))(v24 & ~v23, 1, v22);
  if (!result)
  {
    v26 = *(v27 + 8);

    return v26(v24 & ~v23, v22);
  }

  return result;
}

void *initializeWithCopy for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 16))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 16))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v49 = a3;
  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 16))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = ((v32 + v29 + v38) & v31);
  v40 = ((v33 + v29 + v38) & v31);
  if (v34(v40, 1, v27))
  {
    memcpy(v39, v40, v38);
  }

  else
  {
    (*(v28 + 16))(v39, v40, v27);
    (*(v28 + 56))(v39, 0, 1, v27);
  }

  v41 = &v40[v38];
  v42 = v49[5];
  v43 = *(v42 - 8);
  v44 = *(v43 + 80);
  v45 = &v39[v38 + v44];
  v46 = &v41[v44];
  if ((*(v43 + 48))(&v41[v44] & ~v44, 1, v42))
  {
    if (*(v43 + 84))
    {
      v47 = *(v43 + 64);
    }

    else
    {
      v47 = *(v43 + 64) + 1;
    }

    memcpy((v45 & ~v44), (v46 & ~v44), v47);
  }

  else
  {
    (*(v43 + 16))(v45 & ~v44, v46 & ~v44, v42);
    (*(v43 + 56))(v45 & ~v44, 0, 1, v42);
  }

  return a1;
}

void *assignWithCopy for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, v4);
  v11 = v9(v8, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7, v8, v4);
      (*(v5 + 56))(v7, 0, 1, v4);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7, v8, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  v15 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v15;
  }

  v16 = a3[3];
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v15 + v18;
  v20 = ((v7 + v19) & ~v18);
  v21 = ((v8 + v19) & ~v18);
  v22 = *(v17 + 48);
  v23 = v22(v20, 1, v16);
  v24 = v22(v21, 1, v16);
  if (v23)
  {
    if (!v24)
    {
      (*(v17 + 16))(v20, v21, v16);
      (*(v17 + 56))(v20, 0, 1, v16);
      goto LABEL_25;
    }

    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v17 + 24))(v20, v21, v16);
      goto LABEL_25;
    }

    (*(v17 + 8))(v20, v16);
    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v20, v21, v27);
LABEL_25:
  v28 = *(v17 + 64);
  if (!*(v17 + 84))
  {
    ++v28;
  }

  v29 = a3[4];
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + v31;
  v33 = ~v31;
  v34 = ((v20 + v32) & ~v31);
  v35 = ((v21 + v32) & ~v31);
  v36 = *(v30 + 48);
  v37 = v36(v34, 1, v29);
  v38 = v36(v35, 1, v29);
  if (v37)
  {
    if (!v38)
    {
      (*(v30 + 16))(v34, v35, v29);
      (*(v30 + 56))(v34, 0, 1, v29);
      goto LABEL_38;
    }

    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  else
  {
    if (!v38)
    {
      (*(v30 + 24))(v34, v35, v29);
      goto LABEL_38;
    }

    (*(v30 + 8))(v34, v29);
    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = v40 + 1;
  }

  memcpy(v34, v35, v41);
LABEL_38:
  if (*(v30 + 84))
  {
    v42 = *(v30 + 64);
  }

  else
  {
    v42 = *(v30 + 64) + 1;
  }

  v43 = ((v34 + v31 + v42) & v33);
  v44 = ((v35 + v31 + v42) & v33);
  v45 = v36(v43, 1, v29);
  v46 = v36(v44, 1, v29);
  if (v45)
  {
    if (!v46)
    {
      (*(v30 + 16))(v43, v44, v29);
      (*(v30 + 56))(v43, 0, 1, v29);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v46)
  {
    (*(v30 + 8))(v43, v29);
LABEL_46:
    memcpy(v43, v44, v42);
    goto LABEL_47;
  }

  (*(v30 + 24))(v43, v44, v29);
LABEL_47:
  v47 = &v43[v42];
  v48 = &v44[v42];
  v49 = a3[5];
  v50 = *(v49 - 8);
  v51 = *(v50 + 80);
  v52 = &v43[v42 + v51];
  v53 = &v48[v51];
  v54 = *(v50 + 48);
  v55 = v54(&v47[v51] & ~v51, 1, v49);
  v56 = v54(v53 & ~v51, 1, v49);
  if (v55)
  {
    if (!v56)
    {
      (*(v50 + 16))(v52 & ~v51, v53 & ~v51, v49);
      (*(v50 + 56))(v52 & ~v51, 0, 1, v49);
      return a1;
    }

    v57 = *(v50 + 84);
    v58 = *(v50 + 64);
  }

  else
  {
    if (!v56)
    {
      (*(v50 + 24))(v52 & ~v51, v53 & ~v51, v49);
      return a1;
    }

    v60 = *(v50 + 8);
    v59 = v50 + 8;
    v60(v52 & ~v51, v49);
    v57 = *(v59 + 76);
    v58 = *(v59 + 56);
  }

  if (v57)
  {
    v61 = v58;
  }

  else
  {
    v61 = v58 + 1;
  }

  memcpy((v52 & ~v51), (v53 & ~v51), v61);
  return a1;
}

void *initializeWithTake for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 32))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v49 = a3;
  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 32))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = ((v32 + v29 + v38) & v31);
  v40 = ((v33 + v29 + v38) & v31);
  if (v34(v40, 1, v27))
  {
    memcpy(v39, v40, v38);
  }

  else
  {
    (*(v28 + 32))(v39, v40, v27);
    (*(v28 + 56))(v39, 0, 1, v27);
  }

  v41 = &v40[v38];
  v42 = v49[5];
  v43 = *(v42 - 8);
  v44 = *(v43 + 80);
  v45 = &v39[v38 + v44];
  v46 = &v41[v44];
  if ((*(v43 + 48))(&v41[v44] & ~v44, 1, v42))
  {
    if (*(v43 + 84))
    {
      v47 = *(v43 + 64);
    }

    else
    {
      v47 = *(v43 + 64) + 1;
    }

    memcpy((v45 & ~v44), (v46 & ~v44), v47);
  }

  else
  {
    (*(v43 + 32))(v45 & ~v44, v46 & ~v44, v42);
    (*(v43 + 56))(v45 & ~v44, 0, 1, v42);
  }

  return a1;
}

void *assignWithTake for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, v4);
  v11 = v9(v8, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7, v8, v4);
      (*(v5 + 56))(v7, 0, 1, v4);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7, v8, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  v15 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v15;
  }

  v16 = a3[3];
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v15 + v18;
  v20 = ((v7 + v19) & ~v18);
  v21 = ((v8 + v19) & ~v18);
  v22 = *(v17 + 48);
  v23 = v22(v20, 1, v16);
  v24 = v22(v21, 1, v16);
  if (v23)
  {
    if (!v24)
    {
      (*(v17 + 32))(v20, v21, v16);
      (*(v17 + 56))(v20, 0, 1, v16);
      goto LABEL_25;
    }

    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v17 + 40))(v20, v21, v16);
      goto LABEL_25;
    }

    (*(v17 + 8))(v20, v16);
    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v20, v21, v27);
LABEL_25:
  v28 = *(v17 + 64);
  if (!*(v17 + 84))
  {
    ++v28;
  }

  v29 = a3[4];
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + v31;
  v33 = ~v31;
  v34 = ((v20 + v32) & ~v31);
  v35 = ((v21 + v32) & ~v31);
  v36 = *(v30 + 48);
  v37 = v36(v34, 1, v29);
  v38 = v36(v35, 1, v29);
  if (v37)
  {
    if (!v38)
    {
      (*(v30 + 32))(v34, v35, v29);
      (*(v30 + 56))(v34, 0, 1, v29);
      goto LABEL_38;
    }

    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  else
  {
    if (!v38)
    {
      (*(v30 + 40))(v34, v35, v29);
      goto LABEL_38;
    }

    (*(v30 + 8))(v34, v29);
    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = v40 + 1;
  }

  memcpy(v34, v35, v41);
LABEL_38:
  if (*(v30 + 84))
  {
    v42 = *(v30 + 64);
  }

  else
  {
    v42 = *(v30 + 64) + 1;
  }

  v43 = ((v34 + v31 + v42) & v33);
  v44 = ((v35 + v31 + v42) & v33);
  v45 = v36(v43, 1, v29);
  v46 = v36(v44, 1, v29);
  if (v45)
  {
    if (!v46)
    {
      (*(v30 + 32))(v43, v44, v29);
      (*(v30 + 56))(v43, 0, 1, v29);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v46)
  {
    (*(v30 + 8))(v43, v29);
LABEL_46:
    memcpy(v43, v44, v42);
    goto LABEL_47;
  }

  (*(v30 + 40))(v43, v44, v29);
LABEL_47:
  v47 = &v43[v42];
  v48 = &v44[v42];
  v49 = a3[5];
  v50 = *(v49 - 8);
  v51 = *(v50 + 80);
  v52 = &v43[v42 + v51];
  v53 = &v48[v51];
  v54 = *(v50 + 48);
  v55 = v54(&v47[v51] & ~v51, 1, v49);
  v56 = v54(v53 & ~v51, 1, v49);
  if (v55)
  {
    if (!v56)
    {
      (*(v50 + 32))(v52 & ~v51, v53 & ~v51, v49);
      (*(v50 + 56))(v52 & ~v51, 0, 1, v49);
      return a1;
    }

    v57 = *(v50 + 84);
    v58 = *(v50 + 64);
  }

  else
  {
    if (!v56)
    {
      (*(v50 + 40))(v52 & ~v51, v53 & ~v51, v49);
      return a1;
    }

    v60 = *(v50 + 8);
    v59 = v50 + 8;
    v60(v52 & ~v51, v49);
    v57 = *(v59 + 76);
    v58 = *(v59 + 56);
  }

  if (v57)
  {
    v61 = v58;
  }

  else
  {
    v61 = v58 + 1;
  }

  memcpy((v52 & ~v51), (v53 & ~v51), v61);
  return a1;
}

uint64_t getEnumTagSinglePayload for Gauge(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3[3];
  v9 = *(v8 - 8);
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

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v15 = a3[4];
  v14 = a3[5];
  v16 = *(v15 - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v18)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v14 - 8);
  if (v19 <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = v19;
  }

  v22 = *(v20 + 84);
  v23 = v22 - 1;
  if (!v22)
  {
    v23 = 0;
  }

  if (v23 > v21)
  {
    v21 = v23;
  }

  v24 = *(v4 + 64);
  if (v6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (v11)
  {
    v26 = *(v9 + 64);
  }

  else
  {
    v26 = *(v9 + 64) + 1;
  }

  if (v18)
  {
    v27 = *(v16 + 64);
  }

  else
  {
    v27 = *(v16 + 64) + 1;
  }

  v28 = *(v5 + 80);
  v29 = *(v9 + 80);
  v30 = *(v17 + 80);
  v31 = *(v20 + 80);
  if (v22)
  {
    v32 = *(v20 + 64);
  }

  else
  {
    v32 = *(v20 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v33 = v26 + v30;
  v34 = v27 + v30;
  v35 = v27 + v31;
  v36 = a2 - v21;
  if (a2 <= v21)
  {
LABEL_56:
    v45 = (a1 + v28 + 8) & ~v28;
    if (v7 == v21)
    {
      v46 = (*(v5 + 48))(v45);
    }

    else
    {
      v48 = (v45 + v25 + v29) & ~v29;
      if (v12 == v21)
      {
        v46 = (*(v10 + 48))(v48, v11, v8);
      }

      else
      {
        v49 = (v33 + v48) & ~v30;
        if (v19 == v21)
        {
          v46 = (*(v17 + 48))(v49, v18, v15);
        }

        else
        {
          v46 = (*(*(v14 - 8) + 48))((v35 + ((v34 + v49) & ~v30)) & ~v31, v22);
        }
      }
    }

    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }

  v37 = (v35 + ((v34 + ((v33 + ((v25 + v29 + ((v28 + 8) & ~v28)) & ~v29)) & ~v30)) & ~v30)) & ~v31;
  v38 = v32 + v37;
  v39 = 8 * (v32 + v37);
  if (v38 <= 3)
  {
    v41 = ((v36 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (!v40)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 > 0xFF)
    {
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 < 2)
    {
LABEL_55:
      if (v21)
      {
        goto LABEL_56;
      }

      return 0;
    }
  }

  v40 = *(a1 + v38);
  if (!*(a1 + v38))
  {
    goto LABEL_55;
  }

LABEL_42:
  v42 = (v40 - 1) << v39;
  if (v38 > 3)
  {
    v42 = 0;
  }

  if (v38)
  {
    if (v38 <= 3)
    {
      v43 = v38;
    }

    else
    {
      v43 = 4;
    }

    if (v43 > 2)
    {
      if (v43 == 3)
      {
        v44 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v44 = *a1;
      }
    }

    else if (v43 == 1)
    {
      v44 = *a1;
    }

    else
    {
      v44 = *a1;
    }
  }

  else
  {
    v44 = 0;
  }

  return v21 + (v44 | v42) + 1;
}

void storeEnumTagSinglePayload for Gauge(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  v9 = a4[4];
  v59 = v9;
  v60 = a4[3];
  v10 = *(v60 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v60 - 8);
  v13 = *(v10 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v58 = a4[5];
  v20 = *(v58 - 8);
  v21 = *(v20 + 84);
  v22 = *(v10 + 64);
  v23 = *(v7 + 80);
  v24 = *(v12 + 80);
  v25 = *(v16 + 80);
  v26 = *(v20 + 80);
  v27 = v21 - 1;
  if (!v21)
  {
    v27 = 0;
  }

  if (v27 <= v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = v27;
  }

  if (v8)
  {
    v29 = *(*(a4[2] - 8) + 64);
  }

  else
  {
    v29 = *(*(a4[2] - 8) + 64) + 1;
  }

  if (v13)
  {
    v30 = v22;
  }

  else
  {
    v30 = v22 + 1;
  }

  if (v17)
  {
    v31 = *(*(v9 - 8) + 64);
  }

  else
  {
    v31 = *(*(v9 - 8) + 64) + 1;
  }

  v32 = v30 + v25;
  v33 = v31 + v25;
  v34 = v31 + v26;
  v35 = (v31 + v26 + ((v31 + v25 + ((v30 + v25 + ((v29 + v24 + ((v23 + 8) & ~v23)) & ~v24)) & ~v25)) & ~v25)) & ~v26;
  if (v21)
  {
    v36 = *(*(v58 - 8) + 64);
  }

  else
  {
    v36 = *(*(v58 - 8) + 64) + 1;
  }

  v37 = v35 + v36;
  v38 = a3 >= v28;
  v39 = a3 - v28;
  if (v39 == 0 || !v38)
  {
LABEL_45:
    if (v28 < a2)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  if (v37 > 3)
  {
    v6 = 1;
    if (v28 < a2)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  v40 = ((v39 + ~(-1 << (8 * v37))) >> (8 * v37)) + 1;
  if (!HIWORD(v40))
  {
    if (v40 < 0x100)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    if (v40 >= 2)
    {
      v6 = v41;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_45;
  }

  v6 = 4;
  if (v28 < a2)
  {
LABEL_46:
    v42 = ~v28 + a2;
    if (v37 < 4)
    {
      v43 = (v42 >> (8 * v37)) + 1;
      if (v37)
      {
        v44 = v42 & ~(-1 << (8 * v37));
        bzero(a1, v37);
        if (v37 != 3)
        {
          if (v37 == 2)
          {
            *a1 = v44;
            if (v6 > 1)
            {
LABEL_81:
              if (v6 == 2)
              {
                *&a1[v37] = v43;
              }

              else
              {
                *&a1[v37] = v43;
              }

              return;
            }
          }

          else
          {
            *a1 = v42;
            if (v6 > 1)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_78;
        }

        *a1 = v44;
        a1[2] = BYTE2(v44);
      }

      if (v6 > 1)
      {
        goto LABEL_81;
      }
    }

    else
    {
      bzero(a1, v37);
      *a1 = v42;
      v43 = 1;
      if (v6 > 1)
      {
        goto LABEL_81;
      }
    }

LABEL_78:
    if (v6)
    {
      a1[v37] = v43;
    }

    return;
  }

LABEL_55:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v37] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_62;
    }

    *&a1[v37] = 0;
  }

  else if (v6)
  {
    a1[v37] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    return;
  }

LABEL_62:
  v45 = &a1[v23 + 8] & ~v23;
  if (v11 == v28)
  {
    v46 = *(v7 + 56);
    v47 = a2 + 1;

    v46(v45, v47);
    return;
  }

  v48 = (v45 + v29 + v24) & ~v24;
  if (v14 == v28)
  {
    v49 = *(v12 + 56);
    v50 = a2 + 1;
    v51 = v13;
    v52 = v60;

LABEL_98:
    v49(v48, v50, v51, v52);
    return;
  }

  v48 = (v32 + v48) & ~v25;
  if (v18 == v28)
  {
    v49 = *(v16 + 56);
    v50 = a2 + 1;
    v51 = v17;
    v52 = v59;

    goto LABEL_98;
  }

  v53 = ~v25;
  v54 = (v34 + ((v33 + v48) & ~v25)) & ~v26;
  if (v27 >= a2)
  {
    v49 = *(v20 + 56);
    v50 = a2 + 1;
    v48 = (v34 + ((v33 + v48) & v53)) & ~v26;
    v51 = v21;
    v52 = v58;

    goto LABEL_98;
  }

  if (v36 <= 3)
  {
    v55 = ~(-1 << (8 * v36));
  }

  else
  {
    v55 = -1;
  }

  if (v36)
  {
    v56 = v55 & (~v27 + a2);
    if (v36 <= 3)
    {
      v57 = v36;
    }

    else
    {
      v57 = 4;
    }

    bzero(((v34 + ((v33 + v48) & v53)) & ~v26), v36);
    if (v57 > 2)
    {
      if (v57 == 3)
      {
        *v54 = v56;
        *(v54 + 2) = BYTE2(v56);
      }

      else
      {
        *v54 = v56;
      }
    }

    else if (v57 == 1)
    {
      *v54 = v56;
    }

    else
    {
      *v54 = v56;
    }
  }
}

uint64_t type metadata completion function for BaseGauge()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BaseGauge(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[2];
  v4 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  v9 = *(v4 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(*(v4 - 8) + 64);
  }

  else
  {
    v11 = *(*(v4 - 8) + 64) + 1;
  }

  v12 = *(a3[4] - 8);
  v13 = *(v12 + 80);
  v14 = v13;
  if (*(v12 + 84))
  {
    v15 = *(v12 + 64);
  }

  else
  {
    v15 = *(v12 + 64) + 1;
  }

  v16 = v10 | v7 | v13;
  if (v16 > 7 || ((*(v9 + 80) | *(v6 + 80) | v13) & 0x100000) != 0 || ((v15 + v13 + ((v11 + v13 + ((v8 + v10 + ((v7 + 8) & ~v7)) & ~v10)) & ~v13)) & ~v13) + v15 > 0x18)
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = (v19 + ((v16 & 0xF8 ^ 0x1F8) & (v16 + 16)));
  }

  else
  {
    v33 = a3[3];
    v34 = v15 + v13;
    __n = v15;
    v35 = a3[4];
    v32 = ~v10;
    *a1 = *a2;
    v21 = ((a1 + v7 + 8) & ~v7);
    v22 = ((a2 + v7 + 8) & ~v7);
    if ((*(v6 + 48))(v22, 1, v5))
    {
      memcpy(v21, v22, v8);
    }

    else
    {
      (*(v6 + 16))(v21, v22, v5);
      (*(v6 + 56))(v21, 0, 1, v5);
    }

    v23 = ~v14;
    v24 = ((v21 + v8 + v10) & v32);
    v25 = ((v22 + v8 + v10) & v32);
    if ((*(v9 + 48))(v25, 1, v33))
    {
      memcpy(v24, v25, v11);
    }

    else
    {
      (*(v9 + 16))(v24, v25, v33);
      (*(v9 + 56))(v24, 0, 1, v33);
    }

    v20 = a1;
    v26 = ((v24 + v11 + v14) & v23);
    v27 = ((v25 + v11 + v14) & v23);
    v28 = *(v12 + 48);
    if (v28(v27, 1, v35))
    {
      memcpy(v26, v27, __n);
    }

    else
    {
      (*(v12 + 16))(v26, v27, v35);
      (*(v12 + 56))(v26, 0, 1, v35);
    }

    v29 = &v26[v34];
    v30 = &v27[v34];
    if (v28((v30 & v23), 1, v35))
    {
      memcpy((v29 & v23), (v30 & v23), __n);
    }

    else
    {
      (*(v12 + 16))(v29 & v23, v30 & v23, v35);
      (*(v12 + 56))(v29 & v23, 0, 1, v35);
    }
  }

  return v20;
}

uint64_t destroy for BaseGauge(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(v3 - 8);
  v5 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, v3))
  {
    (*(v4 + 8))(v5, v3);
  }

  v6 = *(v4 + 84);
  v7 = *(v4 + 64);
  v8 = a2[3];
  v9 = *(v8 - 8);
  v10 = v7 + v5;
  if (!v6)
  {
    ++v10;
  }

  v11 = (v10 + *(v9 + 80)) & ~*(v9 + 80);
  if (!(*(*(a2[3] - 8) + 48))(v11, 1, v8))
  {
    (*(v9 + 8))(v11, v8);
  }

  v12 = *(v9 + 64);
  v13 = a2[4];
  v14 = *(v9 + 84) == 0;
  v24 = *(v13 - 8);
  v15 = *(v24 + 80);
  v16 = v12 + v11;
  if (v14)
  {
    ++v16;
  }

  v17 = ~v15;
  v18 = (v16 + v15) & ~v15;
  v19 = *(*(v13 - 8) + 48);
  if (!v19(v18, 1, v13))
  {
    (*(v24 + 8))(v18, v13);
  }

  v20 = *(v24 + 64);
  if (*(v24 + 84))
  {
    v21 = v18 + v15 + v20;
  }

  else
  {
    v21 = v18 + v15 + v20 + 1;
  }

  result = v19(v21 & v17, 1, v13);
  if (!result)
  {
    v23 = *(v24 + 8);

    return v23(v21 & v17, v13);
  }

  return result;
}

void *initializeWithCopy for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 16))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = *(v16 + 64);
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 16))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 16))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = &v32[v29 + v38];
  v40 = &v33[v29 + v38];
  if (v34((v40 & v31), 1, v27))
  {
    memcpy((v39 & v31), (v40 & v31), v38);
  }

  else
  {
    (*(v28 + 16))(v39 & v31, v40 & v31, v27);
    (*(v28 + 56))(v39 & v31, 0, 1, v27);
  }

  return a1;
}

void *assignWithCopy for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  v10 = *(v6 + 48);
  v11 = v10(v8, 1, v5);
  v12 = v10(v9, 1, v5);
  if (v11)
  {
    if (!v12)
    {
      (*(v6 + 16))(v8, v9, v5);
      (*(v6 + 56))(v8, 0, 1, v5);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v6 + 24))(v8, v9, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v8, v5);
    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(v8, v9, v15);
LABEL_12:
  v16 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v16;
  }

  v17 = a3[3];
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v16 + v19;
  v21 = ((v8 + v20) & ~v19);
  v22 = ((v9 + v20) & ~v19);
  v23 = *(v18 + 48);
  v24 = v23(v21, 1, v17);
  v25 = v23(v22, 1, v17);
  if (v24)
  {
    if (!v25)
    {
      (*(v18 + 16))(v21, v22, v17);
      (*(v18 + 56))(v21, 0, 1, v17);
      goto LABEL_25;
    }

    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  else
  {
    if (!v25)
    {
      (*(v18 + 24))(v21, v22, v17);
      goto LABEL_25;
    }

    (*(v18 + 8))(v21, v17);
    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  memcpy(v21, v22, v28);
LABEL_25:
  v29 = *(v18 + 64);
  if (!*(v18 + 84))
  {
    ++v29;
  }

  v30 = a3[4];
  v31 = *(v30 - 8);
  v32 = *(v31 + 80);
  v33 = v29 + v32;
  v34 = ~v32;
  v35 = ((v21 + v33) & ~v32);
  v36 = ((v22 + v33) & ~v32);
  v37 = *(v31 + 48);
  v38 = v37(v35, 1, v30);
  v39 = v37(v36, 1, v30);
  if (v38)
  {
    if (!v39)
    {
      (*(v31 + 16))(v35, v36, v30);
      (*(v31 + 56))(v35, 0, 1, v30);
      goto LABEL_38;
    }

    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  else
  {
    if (!v39)
    {
      (*(v31 + 24))(v35, v36, v30);
      goto LABEL_38;
    }

    (*(v31 + 8))(v35, v30);
    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = v41 + 1;
  }

  memcpy(v35, v36, v42);
LABEL_38:
  if (*(v31 + 84))
  {
    v43 = *(v31 + 64);
  }

  else
  {
    v43 = *(v31 + 64) + 1;
  }

  v44 = &v35[v32 + v43];
  v45 = &v36[v32 + v43];
  v46 = v37((v44 & v34), 1, v30);
  v47 = v37((v45 & v34), 1, v30);
  if (!v46)
  {
    if (!v47)
    {
      (*(v31 + 24))(v44 & v34, v45 & v34, v30);
      return a1;
    }

    (*(v31 + 8))(v44 & v34, v30);
    goto LABEL_46;
  }

  if (v47)
  {
LABEL_46:
    memcpy((v44 & v34), (v45 & v34), v43);
    return a1;
  }

  (*(v31 + 16))(v44 & v34, v45 & v34, v30);
  (*(v31 + 56))(v44 & v34, 0, 1, v30);
  return a1;
}

void *initializeWithTake for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = *(v16 + 64);
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 32))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 32))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = &v32[v29 + v38];
  v40 = &v33[v29 + v38];
  if (v34((v40 & v31), 1, v27))
  {
    memcpy((v39 & v31), (v40 & v31), v38);
  }

  else
  {
    (*(v28 + 32))(v39 & v31, v40 & v31, v27);
    (*(v28 + 56))(v39 & v31, 0, 1, v27);
  }

  return a1;
}

void *assignWithTake for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  v10 = *(v6 + 48);
  v11 = v10(v8, 1, v5);
  v12 = v10(v9, 1, v5);
  if (v11)
  {
    if (!v12)
    {
      (*(v6 + 32))(v8, v9, v5);
      (*(v6 + 56))(v8, 0, 1, v5);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v6 + 40))(v8, v9, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v8, v5);
    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(v8, v9, v15);
LABEL_12:
  v16 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v16;
  }

  v17 = a3[3];
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v16 + v19;
  v21 = ((v8 + v20) & ~v19);
  v22 = ((v9 + v20) & ~v19);
  v23 = *(v18 + 48);
  v24 = v23(v21, 1, v17);
  v25 = v23(v22, 1, v17);
  if (v24)
  {
    if (!v25)
    {
      (*(v18 + 32))(v21, v22, v17);
      (*(v18 + 56))(v21, 0, 1, v17);
      goto LABEL_25;
    }

    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  else
  {
    if (!v25)
    {
      (*(v18 + 40))(v21, v22, v17);
      goto LABEL_25;
    }

    (*(v18 + 8))(v21, v17);
    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  memcpy(v21, v22, v28);
LABEL_25:
  v29 = *(v18 + 64);
  if (!*(v18 + 84))
  {
    ++v29;
  }

  v30 = a3[4];
  v31 = *(v30 - 8);
  v32 = *(v31 + 80);
  v33 = v29 + v32;
  v34 = ~v32;
  v35 = ((v21 + v33) & ~v32);
  v36 = ((v22 + v33) & ~v32);
  v37 = *(v31 + 48);
  v38 = v37(v35, 1, v30);
  v39 = v37(v36, 1, v30);
  if (v38)
  {
    if (!v39)
    {
      (*(v31 + 32))(v35, v36, v30);
      (*(v31 + 56))(v35, 0, 1, v30);
      goto LABEL_38;
    }

    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  else
  {
    if (!v39)
    {
      (*(v31 + 40))(v35, v36, v30);
      goto LABEL_38;
    }

    (*(v31 + 8))(v35, v30);
    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = v41 + 1;
  }

  memcpy(v35, v36, v42);
LABEL_38:
  if (*(v31 + 84))
  {
    v43 = *(v31 + 64);
  }

  else
  {
    v43 = *(v31 + 64) + 1;
  }

  v44 = &v35[v32 + v43];
  v45 = &v36[v32 + v43];
  v46 = v37((v44 & v34), 1, v30);
  v47 = v37((v45 & v34), 1, v30);
  if (!v46)
  {
    if (!v47)
    {
      (*(v31 + 40))(v44 & v34, v45 & v34, v30);
      return a1;
    }

    (*(v31 + 8))(v44 & v34, v30);
    goto LABEL_46;
  }

  if (v47)
  {
LABEL_46:
    memcpy((v44 & v34), (v45 & v34), v43);
    return a1;
  }

  (*(v31 + 32))(v44 & v34, v45 & v34, v30);
  (*(v31 + 56))(v44 & v34, 0, 1, v30);
  return a1;
}

uint64_t getEnumTagSinglePayload for BaseGauge(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3[3];
  v8 = a3[4];
  v9 = *(v7 - 8);
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

  if (v12 <= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 > v13)
  {
    v13 = v16;
  }

  if (v5)
  {
    v17 = *(*(a3[2] - 8) + 64);
  }

  else
  {
    v17 = *(*(a3[2] - 8) + 64) + 1;
  }

  if (v11)
  {
    v18 = *(v9 + 64);
  }

  else
  {
    v18 = *(v9 + 64) + 1;
  }

  v19 = *(v4 + 80);
  v20 = *(v9 + 80);
  v21 = *(v14 + 80);
  if (v15)
  {
    v22 = *(*(v8 - 8) + 64);
  }

  else
  {
    v22 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 + v21;
  v24 = a2 - v13;
  if (a2 <= v13)
  {
LABEL_47:
    v32 = (a1 + v19 + 8) & ~v19;
    if (v6 == v13)
    {
      v33 = (*(v4 + 48))(v32);
    }

    else
    {
      v35 = (v32 + v17 + v20) & ~v20;
      if (v12 == v13)
      {
        v33 = (*(v10 + 48))(v35, v11, v7);
      }

      else
      {
        v33 = (*(v14 + 48))((v23 + v35) & ~v21, v15, v8);
      }
    }

    if (v33 >= 2)
    {
      return v33 - 1;
    }

    else
    {
      return 0;
    }
  }

  v25 = ((v22 + v21 + ((v23 + ((v17 + v20 + ((v19 + 8) & ~v19)) & ~v20)) & ~v21)) & ~v21) + v22;
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v28 = ((v24 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_46;
      }

      goto LABEL_33;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_46;
      }

      goto LABEL_33;
    }

    if (v28 < 2)
    {
LABEL_46:
      if (v13)
      {
        goto LABEL_47;
      }

      return 0;
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_46;
  }

LABEL_33:
  v29 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v29 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v30 = v25;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v13 + (v31 | v29) + 1;
}

void storeEnumTagSinglePayload for BaseGauge(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4[3];
  v11 = a4[4];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v7 + 80);
  v19 = *(v12 + 80);
  v20 = *(v16 + 80);
  v21 = v17 - 1;
  if (!v17)
  {
    v21 = 0;
  }

  if (v21 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  if (v8)
  {
    v23 = *(*(a4[2] - 8) + 64);
  }

  else
  {
    v23 = *(*(a4[2] - 8) + 64) + 1;
  }

  if (v13)
  {
    v24 = *(*(v10 - 8) + 64);
  }

  else
  {
    v24 = *(*(v10 - 8) + 64) + 1;
  }

  v25 = v24 + v20;
  v26 = (v24 + v20 + ((v23 + v19 + ((v18 + 8) & ~v18)) & ~v19)) & ~v20;
  if (v17)
  {
    v27 = *(*(v11 - 8) + 64);
  }

  else
  {
    v27 = *(*(v11 - 8) + 64) + 1;
  }

  v28 = ((v27 + v20 + v26) & ~v20) + v27;
  v29 = a3 >= v22;
  v30 = a3 - v22;
  if (v30 == 0 || !v29)
  {
LABEL_35:
    if (v22 < a2)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (v28 > 3)
  {
    v6 = 1;
    if (v22 < a2)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  v31 = ((v30 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
  if (!HIWORD(v31))
  {
    if (v31 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v31 < 2)
    {
      v6 = 0;
    }

    goto LABEL_35;
  }

  v6 = 4;
  if (v22 < a2)
  {
LABEL_36:
    v32 = ~v22 + a2;
    if (v28 < 4)
    {
      v33 = (v32 >> (8 * v28)) + 1;
      if (v28)
      {
        v34 = v32 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v34;
            if (v6 > 1)
            {
LABEL_78:
              if (v6 == 2)
              {
                *&a1[v28] = v33;
              }

              else
              {
                *&a1[v28] = v33;
              }

              return;
            }
          }

          else
          {
            *a1 = v32;
            if (v6 > 1)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_75;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v6 > 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v32;
      v33 = 1;
      if (v6 > 1)
      {
        goto LABEL_78;
      }
    }

LABEL_75:
    if (v6)
    {
      a1[v28] = v33;
    }

    return;
  }

LABEL_45:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    *&a1[v28] = 0;
  }

  else if (v6)
  {
    a1[v28] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_52;
  }

  if (!a2)
  {
    return;
  }

LABEL_52:
  v35 = &a1[v18 + 8] & ~v18;
  if (v9 == v22)
  {
    v36 = *(v7 + 56);
    v37 = a2 + 1;

    v36(v35, v37);
    return;
  }

  v38 = (v35 + v23 + v19) & ~v19;
  if (v14 == v22)
  {
    v39 = *(v12 + 56);
    v40 = a2 + 1;
    v41 = v13;
    v42 = v10;

LABEL_59:
    v39(v38, v40, v41, v42);
    return;
  }

  v43 = (v25 + v38) & ~v20;
  if (v21 >= a2)
  {
    v39 = *(v16 + 56);
    v40 = a2 + 1;
    v38 = (v25 + v38) & ~v20;
    v41 = v17;
    v42 = v11;

    goto LABEL_59;
  }

  if (v27 <= 3)
  {
    v44 = ~(-1 << (8 * v27));
  }

  else
  {
    v44 = -1;
  }

  if (v27)
  {
    v45 = v44 & (~v21 + a2);
    if (v27 <= 3)
    {
      v46 = v27;
    }

    else
    {
      v46 = 4;
    }

    bzero(((v25 + v38) & ~v20), v27);
    if (v46 > 2)
    {
      if (v46 == 3)
      {
        *v43 = v45;
        *(v43 + 2) = BYTE2(v45);
      }

      else
      {
        *v43 = v45;
      }
    }

    else if (v46 == 1)
    {
      *v43 = v45;
    }

    else
    {
      *v43 = v45;
    }
  }
}

double static BaseGauge._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v15 = *a1;
  v16 = a2[3];
  v61 = a2[2];
  v62 = v16;
  v63 = a2[4];
  v64 = *(a2 + 20);
  v17 = a2[1];
  v59 = *a2;
  v60 = v17;
  LODWORD(v56) = v15;
  HIDWORD(v49) = HIDWORD(a3);
  v50 = a4;
  *&v51 = a5;
  *(&v51 + 1) = a6;
  *&v52 = a7;
  *(&v52 + 1) = a8;
  type metadata accessor for BaseGauge();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static BaseGauge._makeView(view:inputs:)(1, a3, a4, a5, a6, a7, a8);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v27 = v15;
  LODWORD(v49) = v15;
  _GraphValue.value.getter();
  v32 = a7;
  v33 = a3;
  v31 = a6;
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #2 in static BaseGauge._makeView(view:inputs:)(1, a3, a4, a5, a6, a7, a8);
  }

  v18 = AGGraphCreateOffsetAttribute2();
  LODWORD(v49) = v15;
  _GraphValue.value.getter();
  v19 = a4;
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    v20 = a4;
    v21 = a8;
    closure #3 in static BaseGauge._makeView(view:inputs:)(1, v33, v20, a5, v31, a7, a8);
  }

  else
  {
    v21 = a8;
  }

  v22 = AGGraphCreateOffsetAttribute2();
  LODWORD(v49) = v15;
  _GraphValue.value.getter();
  v23 = *(*(type metadata accessor for Optional() - 8) + 64);
  if (v23)
  {
    closure #4 in static BaseGauge._makeView(view:inputs:)(1, v33, v19, a5, v31, v32, v21);
  }

  v29 = AGGraphCreateOffsetAttribute2();
  LODWORD(v49) = v27;
  _GraphValue.value.getter();
  if (v23)
  {
    closure #5 in static BaseGauge._makeView(view:inputs:)(1, v33, v19, a5, v31, v32, v21);
  }

  v24 = AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v56 = __PAIR64__(v18, OffsetAttribute2);
  v57 = COERCE_DOUBLE(__PAIR64__(v29, v22));
  v58 = v24;
  type metadata accessor for BaseGauge.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v51 = v60;
  v47 = lazy protocol witness table accessor for type ResolvedGauge and conformance ResolvedGauge();
  v48 = &protocol witness table for OptionalSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  v46 = &protocol witness table for OptionalSourceWriter<A, B>;
  v43 = swift_getWitnessTable();
  v44 = &protocol witness table for OptionalSourceWriter<A, B>;
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for OptionalSourceWriter<A, B>;
  v39 = swift_getWitnessTable();
  v40 = &protocol witness table for IgnoreViewRespondersModifier;
  v37 = swift_getWitnessTable();
  v38 = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v49 = v62;
  v50 = __PAIR64__(HIDWORD(v59), DWORD2(v62));
  v35 = v62;
  v36 = DWORD2(v62);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v25 = PreferencesOutputs.subscript.setter();
    v35 = v49;
    v36 = v50;
    MEMORY[0x1EEE9AC00](v25);
    outlined init with copy of PreferencesInputs(&v49, &v34);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *a9 = v56;
  result = v57;
  a9[1] = v57;
  return result;
}

uint64_t closure #1 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v12[2] = type metadata accessor for BaseGauge();
  v8 = MEMORY[0x1E69E63B0];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #2 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for BaseGauge();
  v9 = *(v8 + 68);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t closure #3 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for BaseGauge();
  v9 = *(v8 + 72);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t closure #4 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for BaseGauge();
  v9 = *(v8 + 76);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t closure #5 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for BaseGauge();
  v9 = *(v8 + 80);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t implicit closure #1 in static BaseGauge._makeView(view:inputs:)(int a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v89 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 48);
  v77 = *(a3 + 32);
  v78 = v14;
  v79 = *(a3 + 64);
  LODWORD(v80) = *(a3 + 80);
  v15 = *(a3 + 16);
  v75 = *a3;
  v76 = v15;
  type metadata accessor for Optional();
  swift_getWitnessTable();
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a2, &v75, &v82);
  v16 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage();
  v62 = v16;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(a3, &v75);
  type metadata accessor for Attribute<WidgetAuxiliaryTextImagePreference?>();
  v18 = v17;
  v19 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v82, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11, v61, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v20);
  v71[4] = v86;
  v71[5] = v87;
  v72 = v88;
  v71[0] = v82;
  v71[1] = v83;
  v71[2] = v84;
  v71[3] = v85;
  (*(*(v16 - 8) + 8))(v71, v16);
  v44 = v75;
  v21 = *(a3 + 48);
  v77 = *(a3 + 32);
  v78 = v21;
  v79 = *(a3 + 64);
  LODWORD(v80) = *(a3 + 80);
  v22 = *(a3 + 16);
  v75 = *a3;
  v76 = v22;
  type metadata accessor for Optional();
  swift_getWitnessTable();
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a4, &v75, &v82);
  v23 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage();
  v59 = v23;
  v60 = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(a3, &v75);
  v24 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v82, closure #1 in Attribute.init<A>(_:)partial apply, v58, v23, v19, v18, MEMORY[0x1E69E7410], v25);
  v73[4] = v86;
  v73[5] = v87;
  v74 = v88;
  v73[0] = v82;
  v73[1] = v83;
  v73[2] = v84;
  v73[3] = v85;
  (*(*(v23 - 8) + 8))(v73, v23);
  v41 = v75;
  v26 = *(a3 + 48);
  v77 = *(a3 + 32);
  v78 = v26;
  v79 = *(a3 + 64);
  LODWORD(v80) = *(a3 + 80);
  v27 = *(a3 + 16);
  v75 = *a3;
  v76 = v27;
  type metadata accessor for Optional();
  swift_getWitnessTable();
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a5, &v75, &v82);
  v28 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage();
  v56 = v28;
  v29 = swift_getWitnessTable();
  v57 = v29;
  outlined init with copy of _ViewInputs(a3, &v75);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v82, closure #1 in Attribute.init<A>(_:)partial apply, v55, v28, v19, v18, v24, v30);
  v79 = v86;
  v80 = v87;
  v81 = v88;
  v75 = v82;
  v76 = v83;
  v77 = v84;
  v78 = v85;
  v31 = *(*(v28 - 8) + 8);
  v31(&v75, v28);
  LODWORD(v19) = v65;
  v32 = *(a3 + 48);
  v84 = *(a3 + 32);
  v85 = v32;
  v86 = *(a3 + 64);
  LODWORD(v87) = *(a3 + 80);
  v33 = *(a3 + 16);
  v82 = *a3;
  v83 = v33;
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a6, &v82, &v65);
  v53 = v28;
  v54 = v29;
  outlined init with copy of _ViewInputs(a3, &v82);
  v34 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v65, closure #1 in Attribute.init<A>(_:)partial apply, v52, v28, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v35);
  v86 = v68;
  v87 = v69;
  v88 = v70;
  v82 = v65;
  v83 = *v66;
  v84 = *&v66[16];
  v85 = v67;
  v31(&v82, v28);
  LODWORD(v29) = v64;
  v36 = *(a3 + 16);
  swift_beginAccess();
  v37 = *(v36 + 16);
  v48[0] = a1;
  v48[1] = v44;
  v48[2] = v41;
  v48[3] = v19;
  v48[4] = v29;
  v48[5] = v37;
  *&v65 = a7;
  *(&v65 + 1) = a8;
  *&v66[8] = a10;
  *v66 = a9;
  *&v66[24] = a11;
  v50 = type metadata accessor for BaseGauge.WidgetMetadataWriter();
  v51 = swift_getWitnessTable();
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for Attribute<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v48, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_10, v49, v50, v34, v38, MEMORY[0x1E69E7410], v39);
  return v65;
}

uint64_t BaseGauge.Child.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v79 = a3;
  v81 = a2;
  v71 = a9;
  v15 = HIDWORD(a1);
  v78 = HIDWORD(a2);
  v62 = lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  v118 = &type metadata for GaugeStyleConfiguration.Label;
  v119 = a4;
  v120 = v62;
  v121 = a7;
  type metadata accessor for OptionalSourceWriter();
  v58 = type metadata accessor for ModifiedContent();
  v66 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v80 = &v54 - v17;
  v63 = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  v118 = &type metadata for GaugeStyleConfiguration.CurrentValueLabel;
  v119 = a5;
  v73 = a8;
  v74 = a5;
  v120 = v63;
  v121 = a8;
  type metadata accessor for OptionalSourceWriter();
  v59 = type metadata accessor for ModifiedContent();
  v68 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v76 = &v54 - v18;
  v64 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  v118 = &type metadata for GaugeStyleConfiguration.MinimumValueLabel;
  v119 = a6;
  v120 = v64;
  v121 = a10;
  type metadata accessor for OptionalSourceWriter();
  v61 = type metadata accessor for ModifiedContent();
  v69 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v77 = &v54 - v19;
  v65 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  v118 = &type metadata for GaugeStyleConfiguration.MaximumValueLabel;
  v119 = a6;
  v120 = v65;
  v121 = a10;
  v75 = a10;
  type metadata accessor for OptionalSourceWriter();
  v67 = type metadata accessor for ModifiedContent();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = &v54 - v20;
  v72 = a1;
  v118 = *AGGraphGetValue();
  LOWORD(v119) = 0;
  BYTE2(v119) = 0;
  v100[2] = a4;
  v100[3] = a5;
  v100[4] = a6;
  v21 = a6;
  v55 = a6;
  v22 = a7;
  v100[5] = a7;
  v100[6] = a8;
  v100[7] = a10;
  v101 = a1;
  v102 = v15;
  LODWORD(a8) = v81;
  v103 = v81;
  v23 = v78;
  v104 = v78;
  LODWORD(a7) = v79;
  v105 = v79;
  v24 = lazy protocol witness table accessor for type ResolvedGauge and conformance ResolvedGauge();
  v57 = v22;
  v56 = a4;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.Label, partial apply for closure #1 in BaseGauge.Child.value.getter, v100, &unk_1F0000060, &type metadata for GaugeStyleConfiguration.Label, a4, v24, v62, v22);
  v25 = v74;
  v94[2] = a4;
  v94[3] = v74;
  v94[4] = v21;
  v94[5] = v22;
  LODWORD(a4) = v72;
  v26 = v73;
  v94[6] = v73;
  v94[7] = v75;
  v95 = v72;
  v96 = v15;
  LODWORD(v22) = v15;
  v54 = v15;
  v97 = a8;
  v98 = v23;
  v99 = a7;
  v116 = v24;
  v117 = &protocol witness table for OptionalSourceWriter<A, B>;
  v62 = MEMORY[0x1E697E858];
  v27 = v58;
  WitnessTable = swift_getWitnessTable();
  v29 = v25;
  v30 = v25;
  v31 = v80;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.CurrentValueLabel, partial apply for closure #2 in BaseGauge.Child.value.getter, v94, v27, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, v30, WitnessTable, v63, v26);
  (*(v66 + 8))(v31, v27);
  v32 = v55;
  v33 = v56;
  v88[2] = v56;
  v88[3] = v29;
  v34 = v57;
  v88[4] = v55;
  v88[5] = v57;
  v35 = v75;
  v88[6] = v26;
  v88[7] = v75;
  v89 = a4;
  v90 = v22;
  v91 = v81;
  LODWORD(v26) = v78;
  v92 = v78;
  LODWORD(v22) = v79;
  v93 = v79;
  v114 = WitnessTable;
  v115 = &protocol witness table for OptionalSourceWriter<A, B>;
  v36 = v59;
  v37 = swift_getWitnessTable();
  v53 = v35;
  v38 = v35;
  v39 = v32;
  v40 = v32;
  v41 = v76;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.MinimumValueLabel, partial apply for closure #3 in BaseGauge.Child.value.getter, v88, v36, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, v39, v37, v64, v53);
  (*(v68 + 8))(v41, v36);
  v82[2] = v33;
  v82[3] = v74;
  v82[4] = v40;
  v82[5] = v34;
  v82[6] = v73;
  v82[7] = v38;
  v83 = v72;
  v84 = v54;
  v85 = v81;
  v86 = v26;
  v87 = v22;
  v112 = v37;
  v113 = &protocol witness table for OptionalSourceWriter<A, B>;
  v42 = v61;
  v43 = swift_getWitnessTable();
  v44 = v60;
  v45 = v77;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.MaximumValueLabel, partial apply for closure #4 in BaseGauge.Child.value.getter, v82, v42, &type metadata for GaugeStyleConfiguration.MaximumValueLabel, v40, v43, v65, v38);
  (*(v69 + 8))(v45, v42);
  AGGraphGetValue();
  v110 = v43;
  v111 = &protocol witness table for OptionalSourceWriter<A, B>;
  v46 = v67;
  v47 = swift_getWitnessTable();
  v118 = COERCE_VALUEMETADATA_(destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v46, v47, v48, v49));
  v50 = type metadata accessor for AccessibilityGaugeModifier();
  v51 = swift_getWitnessTable();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v108 = v47;
  v109 = &protocol witness table for IgnoreViewRespondersModifier;
  v106 = swift_getWitnessTable();
  v107 = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable();
  View.accessibilityConfiguration<A>(_:)(&v118, v46, v50, v47, v51);
  return (*(v70 + 8))(v44, v46);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance BaseGauge<A, B, C>.Child@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v2 = type metadata accessor for ModifiedContent();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t BaseGauge.WidgetMetadataWriter.value.getter@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v113 = a3;
  v109 = a2;
  v104 = a4;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = v102 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v102 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v102 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v122 = v102 - v16;
  v17 = MEMORY[0x1E69E6720];
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v102 - v19;
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v17);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v107 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = v102 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v105 = v102 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v102 - v28;
  v30 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v31 = *(v30 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v112 = (v102 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v111 = (v102 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v110 = (v102 - v39);
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?);
  v108 = v40;
  v41 = *AGGraphGetValue();
  v102[0] = v33;
  v102[1] = a1;
  if (v41 == 1)
  {
    goto LABEL_4;
  }

  if (!v41)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
LABEL_4:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v41);
    v42 = type metadata accessor for PlatformItemList.Item();
    (*(*(v42 - 8) + 56))(v29, 1, 1, v42);
    goto LABEL_6;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(v41);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v43);
  PlatformItemList.mergedContentItem.getter(v41, v29);

  v44 = type metadata accessor for PlatformItemList.Item();
  (*(*(v44 - 8) + 56))(v29, 0, 1, v44);
LABEL_6:
  v45 = type metadata accessor for URL();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v118 = v45;
  v120 = v46 + 56;
  v121 = v47;
  (v47)(v20, 1, 1);
  v48 = *(v31 + 56);
  v119 = xmmword_18CD633F0;
  v133 = xmmword_18CD633F0;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v49 = v122;
  v117 = v31 + 56;
  v50 = v48;
  v48(v122, 1, 1, v30);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v29, v20, &v133, v49, v110);
  v51 = *AGGraphGetValue();
  v114 = v11;
  v115 = v14;
  if (v51 == 1)
  {
LABEL_9:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v51);
    v52 = 1;
    goto LABEL_11;
  }

  if (!v51)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
    goto LABEL_9;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(v51);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v53);
  PlatformItemList.mergedContentItem.getter(v51, v105);

  v52 = 0;
LABEL_11:
  v54 = type metadata accessor for PlatformItemList.Item();
  v55 = *(*(v54 - 8) + 56);
  v56 = v105;
  v55(v105, v52, 1, v54);
  v121(v20, 1, 1, v118);
  v133 = v119;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v57 = v122;
  v50(v122, 1, 1, v30);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v56, v20, &v133, v57, v111);
  Value = AGGraphGetValue();
  v59 = *Value;
  if (*Value == 1)
  {
LABEL_14:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v59);
    v60 = 1;
    goto LABEL_16;
  }

  if (!v59)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
    goto LABEL_14;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(*Value);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v61);
  PlatformItemList.mergedContentItem.getter(v59, v106);

  v60 = 0;
LABEL_16:
  v62 = v106;
  v55(v106, v60, 1, v54);
  v121(v20, 1, 1, v118);
  v133 = v119;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v63 = v122;
  v50(v122, 1, 1, v30);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v62, v20, &v133, v63, v112);
  v64 = AGGraphGetValue();
  v65 = *v64;
  if (*v64 != 1)
  {
    if (v65)
    {
      outlined copy of WidgetAuxiliaryTextImagePreference?(*v64);

      outlined consume of WidgetAuxiliaryTextImagePreference?(v67);
      PlatformItemList.mergedContentItem.getter(v65, v107);

      v66 = 0;
      goto LABEL_21;
    }

    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
  }

  outlined consume of WidgetAuxiliaryTextImagePreference?(v65);
  v66 = 1;
LABEL_21:
  v68 = v107;
  v55(v107, v66, 1, v54);
  v121(v20, 1, 1, v118);
  v133 = v119;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v69 = v122;
  v50(v122, 1, 1, v30);
  v70 = v102[0];
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v68, v20, &v133, v69, v102[0]);
  v71 = *AGGraphGetValue();
  v72 = v110;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v110, v69);
  v50(v69, 0, 1, v30);
  v73 = v111;
  v74 = v115;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v111, v115);
  v50(v74, 0, 1, v30);
  v75 = v112;
  v76 = v114;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v112, v114);
  v50(v76, 0, 1, v30);
  v77 = v116;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v70, v116);
  v50(v77, 0, 1, v30);
  v78 = AGGraphGetValue();
  v79 = *v78;
  v80 = v78[1];

  *&v133 = v79;
  *(&v133 + 1) = v80;
  static WidgetAuxiliaryViewMetadata.tint(from:)(&v133, v123);

  outlined destroy of WidgetAuxiliaryViewMetadata(v70);
  outlined destroy of WidgetAuxiliaryViewMetadata(v75);
  outlined destroy of WidgetAuxiliaryViewMetadata(v73);
  outlined destroy of WidgetAuxiliaryViewMetadata(v72);
  v112 = v123[1];
  v113 = v123[0];
  LODWORD(v111) = v124;
  v81 = v103;
  v50(v103, 1, 1, v30);
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E697DAC0]);
  v82 = swift_allocObject();
  v83 = MEMORY[0x1E697DAC8];
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v82 + *(*v82 + *MEMORY[0x1E697DAC8] + 8));
  v50(v81, 1, 1, v30);
  v84 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v84 + *(*v84 + *v83 + 8));
  v50(v81, 1, 1, v30);
  v85 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v85 + *(*v85 + *v83 + 8));
  v50(v81, 1, 1, v30);
  v86 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v86 + *(*v86 + *v83 + 8));
  v125[0] = v71;
  v125[1] = v82;
  v125[2] = v84;
  v125[3] = v85;
  v125[4] = v86;
  v125[5] = 0;
  v125[6] = 0;
  v126 = 0;
  v87 = v83;
  v88 = *(*v82 + *v83 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v125, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v122, v82 + v88);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v125);
  v127[0] = v71;
  v127[1] = v82;
  v127[2] = v84;
  v127[3] = v85;
  v127[4] = v86;
  v127[5] = 0;
  v127[6] = 0;
  v128 = 0;
  v89 = *(*v84 + *v87 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v127, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v115, v84 + v89);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v127);
  v129[0] = v71;
  v129[1] = v82;
  v129[2] = v84;
  v129[3] = v85;
  v129[4] = v86;
  v129[5] = 0;
  v129[6] = 0;
  v130 = 0;
  v90 = *(*v85 + *v87 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v129, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v114, v85 + v90);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v129);
  v131[0] = v71;
  v131[1] = v82;
  v131[2] = v84;
  v131[3] = v85;
  v131[4] = v86;
  v131[5] = 0;
  v131[6] = 0;
  v132 = 0;
  v91 = *(*v86 + *v87 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v131, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v116, v86 + v91);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v131);

  v92 = v104;
  *v104 = 0;
  *(v92 + 1) = 0;
  v93 = v30[6];
  v94 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v94 - 8) + 56))(&v92[v93], 1, 1, v94);
  *&v92[v30[7]] = 0;
  v95 = v30[8];
  v96 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  (*(*(v96 - 8) + 56))(&v92[v95], 1, 1, v96);
  v97 = &v92[v30[9]];
  *(v97 + 41) = 0u;
  *(v97 + 1) = 0u;
  *(v97 + 2) = 0u;
  *v97 = 0u;
  v121(&v92[v30[10]], 1, 1, v118);
  v98 = &v92[v30[11]];
  *v98 = v119;
  v98[1] = 0u;
  v98[2] = 0u;
  v98[3] = 0u;
  v99 = *(v97 + 1);
  v133 = *v97;
  v134 = v99;
  v135[0] = *(v97 + 2);
  *(v135 + 9) = *(v97 + 41);
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge?(&v133);
  *v97 = v71;
  *(v97 + 1) = v82;
  *(v97 + 2) = v84;
  *(v97 + 3) = v85;
  *(v97 + 4) = v86;
  v100 = v112;
  *(v97 + 5) = v113;
  *(v97 + 6) = v100;
  v97[56] = v111;
  return (v50)(v92, 0, 1, v30);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BaseGauge<A, B, C>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t ResolvedGauge.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = (result & 1) == 0;
  *(a2 + 9) = (result & 0x100) == 0;
  *(a2 + 10) = (result & 0x10000) == 0;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ResolvedGauge@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return ResolvedGauge.body.getter(v3 | v4, a1, *v1);
}

unint64_t lazy protocol witness table accessor for type ResolvedGauge and conformance ResolvedGauge()
{
  result = lazy protocol witness table cache variable for type ResolvedGauge and conformance ResolvedGauge;
  if (!lazy protocol witness table cache variable for type ResolvedGauge and conformance ResolvedGauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGauge and conformance ResolvedGauge);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in static BaseGauge._makeView(view:inputs:)()
{
  *&v2[16] = *(v0 + 48);
  *v2 = *(v0 + 32);
  return implicit closure #1 in static BaseGauge._makeView(view:inputs:)(*(v0 + 64), *(v0 + 68), *(v0 + 72), *(v0 + 80), *(v0 + 84), *(v0 + 88), *(v0 + 16), *(v0 + 24), *(v0 + 32), *&v2[8], *(v0 + 56));
}

uint64_t getEnumTagSinglePayload for ResolvedGauge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedGauge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t partial apply for closure #2 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t partial apply for closure #3 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t partial apply for closure #4 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

void _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of WidgetAuxiliaryViewMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata(uint64_t a1)
{
  v2 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of WidgetAuxiliaryViewMetadata?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata.Gauge?(uint64_t a1)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle);
  }

  return result;
}

uint64_t assignWithCopy for NavigationLinkDisabledModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 33);
  v11 = *(a2 + 32);
  outlined copy of Environment<Binding<EditMode>?>.Content(v8, v9, v11, v10);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 33);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v15 = *(a1 + 32);
  *(a1 + 32) = v11;
  *(a1 + 33) = v10;
  outlined consume of Environment<Binding<Visibility>?>.Content(v12, v13, v15, v14);
  v16 = *(a1 + 64);
  v17 = *(a2 + 64);
  if (v16 == 1)
  {
    if (v17 <= 1)
    {
LABEL_3:
      v18 = *(a2 + 40);
      v19 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v19;
      *(a1 + 40) = v18;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v17 == 1)
  {
    outlined destroy of NavigationLinkPresentedValue(a1 + 40);
    goto LABEL_6;
  }

  if (v16)
  {
    v22 = (a1 + 40);
    if (v17)
    {
      __swift_assign_boxed_opaque_existential_1(v22, (a2 + 40));
      goto LABEL_12;
    }

    outlined destroy of AnyNavigationLinkPresentedValue(v22);
LABEL_6:
    v20 = *(a2 + 72);
    v21 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v21;
    *(a1 + 72) = v20;
    goto LABEL_12;
  }

  if (!v17)
  {
    goto LABEL_3;
  }

LABEL_11:
  *(a1 + 64) = v17;
  *(a1 + 72) = *(a2 + 72);
  (**(v17 - 8))(a1 + 40, a2 + 40);
LABEL_12:
  v23 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v23;
  v24 = *(a2 + 104);
  v25 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v25;
  *(a1 + 104) = v24;
  v26 = *(a2 + 160);
  if (*(a1 + 160) == 1)
  {
    if (v26 == 1)
    {
      v27 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v27;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (v26 == 1)
  {
    outlined destroy of NavigationAuthority(a1 + 152);
    v28 = *(a2 + 168);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = v28;
  }

  else
  {
    swift_weakCopyAssign();
    *(a1 + 160) = *(a2 + 160);

    *(a1 + 168) = *(a2 + 168);
  }

  return a1;
}

uint64_t assignWithTake for NavigationLinkDisabledModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 33);
  *(a1 + 16) = *(a2 + 1);
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  *(a1 + 33) = v9;
  outlined consume of Environment<Binding<Visibility>?>.Content(v10, v11, v13, v12);
  v14 = *(a1 + 64);
  if (v14 != 1)
  {
    v15 = a2[8];
    if (v15 == 1)
    {
      outlined destroy of NavigationLinkPresentedValue(a1 + 40);
    }

    else if (v14)
    {
      v16 = a1 + 40;
      if (v15)
      {
        __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        outlined destroy of AnyNavigationLinkPresentedValue(v16);
      }
    }
  }

  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];
  v17 = a2[20];
  v18 = *(a1 + 160);
  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  v19 = (a1 + 152);
  v20 = a2 + 19;
  *(a1 + 136) = *(a2 + 17);
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      *v19 = *v20;
      *(a1 + 168) = a2[21];
    }

    else
    {
      swift_weakTakeInit();
      *(a1 + 160) = *(a2 + 10);
    }
  }

  else if (v17 == 1)
  {
    outlined destroy of NavigationAuthority(v19);
    *(a1 + 152) = *v20;
    *(a1 + 168) = a2[21];
  }

  else
  {
    swift_weakTakeAssign();
    *(a1 + 160) = a2[20];

    *(a1 + 168) = a2[21];
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationLinkDisabledModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 176))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationLinkDisabledModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 168) = 0;
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t static SystemTabViewStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for SystemTabView();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for SystemTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static SystemTabViewStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for SystemTabView();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for SystemTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t SystemTabViewStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _TabViewValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t SystemTabViewStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v29 = &type metadata for SystemTabViewStyle;
  v30 = a2;
  v31 = &protocol witness table for SystemTabViewStyle;
  v32 = a3;
  v10 = type metadata accessor for _TabViewValue();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SystemTabView();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  type metadata accessor for TabViewStyleConfiguration.Content();
  v16 = type metadata accessor for _VariadicView.Tree();
  v20 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v20 - v17;
  SystemTabViewStyle.Body.base.getter(v12);
  (*(v21 + 32))(v9, v12, v22);
  UniversalList.init(selection:)(v9, v15);
  v24 = a2;
  v25 = a3;
  v26 = a1;
  _VariadicView.Tree.init(_:content:)();
  WitnessTable = swift_getWitnessTable();
  v28 = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  View.input<A>(_:)();
  return (*(v20 + 8))(v18, v16);
}

uint64_t closure #1 in SystemTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for SystemTabViewStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for SystemTabViewStyle;
  v10[3] = a3;
  v3 = type metadata accessor for _TabViewValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  SystemTabViewStyle.Body.base.getter(v10 - v5);
  (*(v4 + 8))(v6, v3);
  v7 = type metadata accessor for TabViewStyleConfiguration.Content();
  v8 = static ViewBuilder.buildExpression<A>(_:)(v7, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
  return static ViewBuilder.buildExpression<A>(_:)(v8, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SystemTabViewStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemTabView();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>)
  {
    lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for SystemTabView<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SystemTabView.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for Binding();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  outlined init with copy of _VariadicView_Children(a1, v15);
  (*(v7 + 16))(v9, v3, v6);
  v10 = default argument 0 of SystemTabView.BodyContent.init(clientSidebarVisibility:children:selection:)();
  return SystemTabView.BodyContent.init(clientSidebarVisibility:children:selection:)(v10, v12, v11 & 0x1FF, v15, v9, a2);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance SystemTabView<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>();
    lazy protocol witness table accessor for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<BadgeTraitKey>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<BadgeTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<BadgeTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<BadgeTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<BadgeTraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

SwiftUI::UnifiedWindowToolbarStyle __swiftcall UnifiedWindowToolbarStyle.init()()
{
  result.showsTitle = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::UnifiedWindowToolbarStyle __swiftcall UnifiedWindowToolbarStyle.init(showsTitle:)(Swift::Bool showsTitle)
{
  result.showsTitle = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

void SnapshotResponse.init(restoredDefaultState:estimatedSnapshotExpiration:identifier:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason()
{
  result = lazy protocol witness table cache variable for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason;
  if (!lazy protocol witness table cache variable for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SnapshotResponse(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = *(a3 + 20);
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      type metadata accessor for Date?();
      memcpy(&v4[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], &a2[v7], v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = *(a3 + 24);
    v13 = &v4[v12];
    v14 = &a2[v12];
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  return v4;
}

uint64_t destroy for SnapshotResponse(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v3, 1, v4))
  {
    (*(v5 + 8))(a1 + v3, v4);
  }
}

_BYTE *initializeWithCopy for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for Date?();
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = *(a3 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

_BYTE *assignWithCopy for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for Date?();
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v14[1] = v15[1];

  return a1;
}

_BYTE *initializeWithTake for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for Date?();
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

_BYTE *assignWithTake for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for Date?();
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = &a1[v13];
  v15 = &a2[v13];
  v17 = *v15;
  v16 = v15[1];
  *v14 = v17;
  v14[1] = v16;

  return a1;
}

uint64_t type metadata accessor for SnapshotResponse()
{
  result = type metadata singleton initialization cache for SnapshotResponse;
  if (!type metadata singleton initialization cache for SnapshotResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SnapshotResponse()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SnapshotData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for SnapshotData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SnapshotData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t ListRowSeparatorVisitor.visit(view:traits:)()
{
  if (*(v0 + 96))
  {
    if (*(v0 + 96) == 1)
    {
      v1 = *(v0 + 104);
      if (v1)
      {
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined consume of ListRowSeparatorVisitor.Neighbor?(*v0, *(v0 + 8), *(v0 + 16));
        *v0 = v3;
        *(v0 + 8) = v4;
        *(v0 + 16) = v5;
        *(v0 + 24) = v6;
      }

      ViewTraitCollection.value<A>(for:defaultValue:)();

      *(v0 + 32) = v3;
      *(v0 + 40) = v4;
      *(v0 + 48) = v5;
      *(v0 + 56) = v6;
      *(v0 + 96) = 2;
      if ((v1 & 2) != 0)
      {
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined consume of ListRowSeparatorVisitor.Neighbor?(*(v0 + 64), *(v0 + 72), *(v0 + 80));
        result = 0;
        *(v0 + 64) = v3;
        *(v0 + 72) = v4;
        *(v0 + 80) = v5;
        *(v0 + 88) = v6;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined consume of ListRowSeparatorVisitor.Neighbor?(*(v0 + 64), *(v0 + 72), *(v0 + 80));
      result = 0;
      *(v0 + 64) = v3;
      *(v0 + 72) = v4;
      *(v0 + 80) = v5 | 0x8000000000000000;
      *(v0 + 88) = v6;
    }
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of ListRowSeparatorVisitor.Neighbor?(*v0, *(v0 + 8), *(v0 + 16));
    *v0 = v3;
    *(v0 + 8) = v4;
    *(v0 + 16) = v5 | 0x8000000000000000;
    *(v0 + 24) = v6;
    result = 1;
    *(v0 + 96) = 1;
  }

  return result;
}

uint64_t outlined copy of ListRowSeparatorVisitor.Neighbor()
{
}

uint64_t initializeWithCopy for ListRowSeparatorVisitor(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[2];
  if (*a2 >> 2 != 0xFFFFFFFF || v5 >= 4)
  {
    v7 = a2[1];
    v8 = a2[3];
    outlined copy of ListRowSeparatorVisitor.Neighbor();
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = v5;
    *(a1 + 24) = v8;
  }

  else
  {
    v9 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v9;
  }

  v10 = a2[8];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = a2[7];
  v11 = a2[10];

  if (v10 >> 2 == 0xFFFFFFFF && v11 < 4)
  {
    v12 = *(a2 + 5);
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = v12;
  }

  else
  {
    v13 = a2[9];
    v14 = a2[11];
    outlined copy of ListRowSeparatorVisitor.Neighbor();
    *(a1 + 64) = v10;
    *(a1 + 72) = v13;
    *(a1 + 80) = v11;
    *(a1 + 88) = v14;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = a2[13];
  return a1;
}

uint64_t assignWithCopy for ListRowSeparatorVisitor(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[2];
  v7 = *a2 >> 2 == 0xFFFFFFFF && v5 < 4;
  if (*a1 >> 2 != 0xFFFFFFFFLL || *(a1 + 16) >= 4uLL)
  {
    if (v7)
    {
      outlined destroy of ListRowSeparatorVisitor.Neighbor(a1);
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v9;
    }

    else
    {
      v11 = a2[1];
      v12 = a2[3];
      outlined copy of ListRowSeparatorVisitor.Neighbor();
      *a1 = v4;
      *(a1 + 8) = v11;
      *(a1 + 16) = v5;
      *(a1 + 24) = v12;
      outlined consume of ListRowSeparatorVisitor.Neighbor();
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else
  {
    v13 = a2[1];
    v14 = a2[3];
    outlined copy of ListRowSeparatorVisitor.Neighbor();
    *a1 = v4;
    *(a1 + 8) = v13;
    *(a1 + 16) = v5;
    *(a1 + 24) = v14;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = a2[5];

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = a2[7];

  v15 = (a1 + 64);
  v17 = a2 + 8;
  v16 = a2[8];
  v18 = a2[10];
  v20 = v16 >> 2 == 0xFFFFFFFF && v18 < 4;
  if (*(a1 + 64) >> 2 == 0xFFFFFFFFLL && *(a1 + 80) < 4uLL)
  {
    if (v20)
    {
      v21 = *(a2 + 5);
      *v15 = *v17;
      *(a1 + 80) = v21;
    }

    else
    {
      v25 = a2[9];
      v26 = a2[11];
      outlined copy of ListRowSeparatorVisitor.Neighbor();
      *(a1 + 64) = v16;
      *(a1 + 72) = v25;
      *(a1 + 80) = v18;
      *(a1 + 88) = v26;
    }
  }

  else if (v20)
  {
    outlined destroy of ListRowSeparatorVisitor.Neighbor(a1 + 64);
    v22 = *(a2 + 5);
    *v15 = *v17;
    *(a1 + 80) = v22;
  }

  else
  {
    v23 = a2[9];
    v24 = a2[11];
    outlined copy of ListRowSeparatorVisitor.Neighbor();
    *(a1 + 64) = v16;
    *(a1 + 72) = v23;
    *(a1 + 80) = v18;
    *(a1 + 88) = v24;
    outlined consume of ListRowSeparatorVisitor.Neighbor();
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = a2[13];
  return a1;
}

uint64_t assignWithTake for ListRowSeparatorVisitor(uint64_t a1, uint64_t a2)
{
  if (*a1 >> 2 == 0xFFFFFFFFLL && *(a1 + 16) < 4uLL)
  {
    goto LABEL_12;
  }

  v5 = *(a2 + 16);
  if (*a2 >> 2 == 0xFFFFFFFFLL && v5 < 4)
  {
    outlined destroy of ListRowSeparatorVisitor.Neighbor(a1);
LABEL_12:
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    goto LABEL_13;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  *a1 = *a2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  outlined consume of ListRowSeparatorVisitor.Neighbor();
LABEL_13:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  if (*(a1 + 64) >> 2 != 0xFFFFFFFFLL || *(a1 + 80) >= 4uLL)
  {
    if (v10 >> 2 != 0xFFFFFFFF || v11 >= 4)
    {
      v13 = *(a2 + 72);
      v14 = *(a2 + 88);
      *(a1 + 64) = v10;
      *(a1 + 72) = v13;
      *(a1 + 80) = v11;
      *(a1 + 88) = v14;
      outlined consume of ListRowSeparatorVisitor.Neighbor();
      goto LABEL_20;
    }

    outlined destroy of ListRowSeparatorVisitor.Neighbor(a1 + 64);
  }

  v12 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v12;
LABEL_20:
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowSeparatorVisitor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1 >> 2;
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

uint64_t storeEnumTagSinglePayload for ListRowSeparatorVisitor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = 4 * ~a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *initializeWithCopy for ListRowSeparatorVisitor.Neighbor(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of ListRowSeparatorVisitor.Neighbor();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

void *assignWithCopy for ListRowSeparatorVisitor.Neighbor(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of ListRowSeparatorVisitor.Neighbor();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of ListRowSeparatorVisitor.Neighbor();
  return a1;
}

_OWORD *assignWithTake for ListRowSeparatorVisitor.Neighbor(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  outlined consume of ListRowSeparatorVisitor.Neighbor();
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowSeparatorVisitor.Neighbor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
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

uint64_t storeEnumTagSinglePayload for ListRowSeparatorVisitor.Neighbor(uint64_t result, int a2, int a3)
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
      *result = 4 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
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

void *destructiveInjectEnumTag for ListRowSeparatorVisitor.Neighbor(void *result, uint64_t a2)
{
  v2 = result[2] & 3 | (a2 << 63);
  *result &= 3uLL;
  result[2] = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps()
{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options()
{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

uint64_t static Animation.timingCurve(_:duration:)()
{
  UnitCurve.CubicSolver.init(startControlPoint:endControlPoint:)();
  lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation();
  return Animation.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation()
{
  result = lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation;
  if (!lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation);
  }

  return result;
}

void BezierTimingCurve.init(startControlPoint:endControlPoint:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

int8x16_t BezierTimingCurve.inverse.getter@<Q0>(int8x16_t *a1@<X8>)
{
  result = vextq_s8(*v1, *v1, 8uLL);
  v3 = vextq_s8(v1[1], v1[1], 8uLL);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static BezierTimingCurve.== infix(_:_:)()
{
  if ((static UnitPoint.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UnitPoint.== infix(_:_:)();
}

uint64_t BezierTimingCurve.hash(into:)()
{
  UnitPoint.hash(into:)();

  return UnitPoint.hash(into:)();
}

Swift::Int BezierTimingCurve.hashValue.getter()
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BezierTimingCurve()
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BezierTimingCurve()
{
  UnitPoint.hash(into:)();

  return UnitPoint.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BezierTimingCurve()
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BezierTimingCurve()
{
  if ((static UnitPoint.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UnitPoint.== infix(_:_:)();
}

double one-time initialization function for easeInEaseOut()
{
  result = 0.42;
  static BezierTimingCurve.easeInEaseOut = xmmword_18CDE8D50;
  unk_1EAA37600 = xmmword_18CDE8D60;
  return result;
}

double one-time initialization function for easeIn()
{
  result = 0.42;
  __asm { FMOV            V1.2D, #1.0 }

  static BezierTimingCurve.easeIn = xmmword_18CDE8D50;
  unk_1EAA37620 = _Q1;
  return result;
}

double one-time initialization function for easeOut()
{
  static BezierTimingCurve.easeOut = 0;
  *algn_1EAA37638 = 0;
  result = 0.58;
  xmmword_1EAA37640 = xmmword_18CDE8D60;
  return result;
}

__n128 one-time initialization function for linear()
{
  static BezierTimingCurve.linear = 0;
  *algn_1EAA37658 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EAA37660 = result;
  return result;
}

__n128 static BezierTimingCurve.easeInEaseOut.getter@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    swift_once();
    a2 = v6;
    a4 = v8;
    a3 = v7;
  }

  result = *a2;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type BezierTimingCurve and conformance BezierTimingCurve()
{
  result = lazy protocol witness table cache variable for type BezierTimingCurve and conformance BezierTimingCurve;
  if (!lazy protocol witness table cache variable for type BezierTimingCurve and conformance BezierTimingCurve)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierTimingCurve and conformance BezierTimingCurve);
  }

  return result;
}

uint64_t EnvironmentValues.textInputValidation.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance TextInputValidationKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of TextInputValidation?(&static TextInputValidationKey.defaultValue, v2);
}

uint64_t EnvironmentValues.textInputValidation.setter(uint64_t a1)
{
  outlined init with copy of TextInputValidation?(a1, v5);
  outlined init with copy of TextInputValidation?(v5, &v4);
  type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of TextInputValidation?(a1);
  return outlined destroy of TextInputValidation?(v5);
}

uint64_t View.textInputValidation(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  if (a1)
  {
    v4 = &protocol witness table for CustomTextInputValidation;
    v5 = a1;
    v6 = a2;
    v7 = &unk_1F0000618;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = 0;
    v9[2] = 0;
  }

  v9[0] = v5;
  v9[1] = v6;
  v9[3] = v7;
  v9[4] = v4;
  outlined copy of AppIntentExecutor?(a1);
  View.environment<A>(_:_:)();

  return outlined destroy of TextInputValidation?(v9);
}

uint64_t key path getter for EnvironmentValues.textInputValidation : EnvironmentValues(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t outlined destroy of TextInputValidation?(uint64_t a1)
{
  type metadata accessor for TextInputValidation?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for TextInputValidation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of TextInputValidation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextInputValidation?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.hidden(_:allowingDisplayList:)(char a1, char a2, uint64_t a3)
{
  v3 = 16;
  if ((a2 & 1) == 0)
  {
    v3 = 0;
  }

  v5[0] = a1;
  v6 = v3;
  return MEMORY[0x18D00A570](v5, a3, &type metadata for DynamicHiddenModifier);
}

uint64_t _ViewInputs.requestedDynamicHiddenRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();

  PropertyList.subscript.getter();

  return v1;
}

uint64_t (*DynamicHiddenModifier.DynamicTransform.value.getter(int a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  return partial apply for closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter;
}

uint64_t closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = DynamicHiddenModifier.DynamicTransform.includeKey.getter(a2, a3);
    if ((result & 1) == 0)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
      return (*(a4 + 16))(a3, a4);
    }
  }

  return result;
}

uint64_t DynamicHiddenModifier.DynamicTransform.includeKey.getter(uint64_t a1, ValueMetadata *a2)
{
  v3 = *(AGGraphGetValue() + 8);
  v4 = (v3 >> 3) & 1;
  if (a2 != MEMORY[0x1E697F3E8])
  {
    LODWORD(v4) = 0;
  }

  if (a2 == &type metadata for AccessibilityNodesKey)
  {
    v5 = v3 & 1;
  }

  else
  {
    v5 = v4;
  }

  if (a2 == MEMORY[0x1E697F318])
  {
    v6 = (v3 >> 2) & 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = (v3 >> 4) & 1;
  if (a2 == MEMORY[0x1E697DC60])
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t (*protocol witness for Rule.value.getter in conformance DynamicHiddenModifier.DynamicTransform<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>))(uint64_t a1)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  DynamicHiddenModifier.DynamicTransform.value.getter(v4, v5, v6);
  v8 = v7;
  result = swift_allocObject();
  *(result + 2) = v5;
  *(result + 3) = v6;
  *(result + 4) = partial apply for closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter;
  *(result + 5) = v8;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout A.PreferenceKey.Value) -> ();
  a2[1] = result;
  return result;
}

uint64_t View.hiddenAllowingHostPreferences(_:allowingDisplayList:)(char a1, char a2, uint64_t a3)
{
  v3 = 8;
  if (a2)
  {
    v3 = 24;
  }

  v5[0] = a1;
  v6 = v3;
  return MEMORY[0x18D00A570](v5, a3, &type metadata for DynamicHiddenModifier);
}

uint64_t _GraphInputs.requestedDynamicHiddenRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t (*_ViewInputs.requestedDynamicHiddenRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _ViewInputs.requestedDynamicHiddenRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedDynamicHiddenRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _GraphInputs.requestedDynamicHiddenRepresentation.modify;
}

void _ViewInputs.requestedDynamicHiddenRepresentation.modify(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  PropertyList.subscript.setter();

  free(v1);
}

unint64_t type metadata accessor for PlatformDynamicHiddenRepresentable.Type()
{
  result = lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable.Type;
  if (!lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable.Type)
  {
    type metadata accessor for PlatformDynamicHiddenRepresentable();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable.Type);
  }

  return result;
}

unint64_t type metadata accessor for PlatformDynamicHiddenRepresentable()
{
  result = lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable;
  if (!lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable);
  }

  return result;
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA013_SymbolEffectD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD581D0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA014_SymbolEffectsD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD581B0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA021_SymbolEffectsRemovedD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD58190);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17_FlipForRTLEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD58170);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized ViewModifier.bodyError()()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD58150);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000020, 0x800000018CD58120);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0x646F4D6B7361545FLL, 0xED00007265696669);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA30_LayoutDirectionBehaviorEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD58100);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA012_HoverRegionD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD580E0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17_ProjectionEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD580C0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA012_LayoutScaleD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD580A0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA023_ReclaimForEachElementscD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000023, 0x800000018CD58070);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA033_AccessibilityIgnoresInvertColorscD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000002DLL, 0x800000018CD58040);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA014_GridCellRangeD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD58020);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA013_GridCellSizeD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD58000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA011_GridAnchorD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000013, 0x800000018CD57FE0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA014_GridAlignmentD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD57FC0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA016_GridUnsizedAxesD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD57FA0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA07_HiddenD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0x4D6E65646469485FLL, 0xEF7265696669646FLL);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for PlatformDynamicHiddenRepresentable.Type?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *(a5 + 104) = a2;
  *(a5 + 112) = a3;
  *(a5 + 120) = a4 & 1;
  *(a5 + 128) = a6;
  outlined init with copy of _VariadicView_Children(a1, v10);
  Sections.init(from:useFooters:)(v10, a2 != 0, a5);
  return outlined destroy of _VariadicView_Children(a1);
}

uint64_t TableViewListDataSource.sectionIDs.getter()
{
  v1 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
  }

  else
  {
  }

  return v1;
}

Swift::Bool __swiftcall TableViewListDataSource.hasHeader(forSectionAt:)(Swift::Int forSectionAt)
{
  if (*(v1 + 72) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
    goto LABEL_5;
  }

  if (forSectionAt < 0)
  {
    __break(1u);
    return forSectionAt;
  }

  v3 = v2 + 16 * forSectionAt;
  if ((*(v3 + 40) & 1) == 0)
  {
    LOBYTE(forSectionAt) = *(v3 + 41);
  }

  else
  {
LABEL_5:
    LOBYTE(forSectionAt) = 0;
  }

  return forSectionAt;
}

uint64_t TableViewListDataSource.spacing(forSectionAt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 88);
  if (*(v4 + 16) && (v5 = result, result = MEMORY[0x18D00F6C0](*(v4 + 40), result), v6 = -1 << *(v4 + 32), v7 = result & ~v6, ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = v9 == v5;
      v11 = v9 != v5;
      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        v12 = 0;
        v13 = 0;
        goto LABEL_9;
      }
    }

    v12 = 1;
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v11 = 1;
  }

LABEL_9:
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 9) = v11;
  return result;
}

uint64_t TableViewListDataSource.configureHeader(_:transaction:forSectionAt:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3[8] + 16) > a3)
  {
    v6 = result;
    v7 = v3[16];
    v8 = v3[13];
    TableViewListDataSource.sectionIDs.getter();

    v12 = v6;
    v13 = a2;
    v14 = v7;
    v15 = v8;
    v16 = 1;
    v17 = a3 == 0;
    outlined init with copy of _VariadicView_Children(v3, v11);
    v10[0] = v11[0];
    v10[1] = v11[1];
    v10[2] = v11[2];
    v10[3] = v11[3];
    v9 = v6;
    outlined copy of Transaction?(a2);
    lazy protocol witness table accessor for type HeaderFooterVisitor and conformance HeaderFooterVisitor();
    _ViewList_Backing.visitViews<A>(applying:from:)();
    outlined destroy of _ViewList_Backing(v10);

    return outlined consume of ListItemTint?(v13);
  }

  __break(1u);
  return result;
}

uint64_t TableViewListDataSource.configureFooter(_:transaction:forSectionAt:)(void *a1, uint64_t a2, Swift::Int a3)
{
  v7 = *(v3 + 128);
  v8 = *(v3 + 104);
  v13 = a1;
  v14 = a2;
  v15 = v7;
  v16 = v8;
  v17 = 0;
  outlined init with copy of _VariadicView_Children(v3, v12);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v11[3] = v12[3];
  v9 = a1;
  outlined copy of Transaction?(a2);
  Sections.footerOffset(forSectionAt:)(a3);
  lazy protocol witness table accessor for type HeaderFooterVisitor and conformance HeaderFooterVisitor();
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v11);

  return outlined consume of ListItemTint?(v14);
}

double TableViewListDataSource.rowIDs(forSectionAt:)@<D0>(Swift::Int a1@<X0>, uint64_t a2@<X8>)
{
  Sections.rowIDs(forSectionAt:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t TableViewListDataSource.configureCell(_:transaction:context:)(char *a1, unint64_t a2, Swift::Int *a3)
{
  v4 = v3;
  outlined init with copy of _ViewList_View((a3 + 2), v59);
  v7 = v60;
  v8 = v61;
  v9 = v62;
  v10 = *(v62 + 16);
  swift_bridgeObjectRetain_n();
  if (v10)
  {
    v10 = *(v9 + 32);
    v11 = *(v9 + 52);

    if (v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {

    v12 = v8;
  }

  v35 = v7;
  v56[0] = v7;
  v56[1] = v12;
  v57 = v10;
  v58 = 1;
  *&v44[0] = a3[14];
  *&v53 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v13 = TableViewListDataSource.separatorConfiguration(forRowAt:)(*a3, a3[1]);
  v36 = v14;
  v16 = v15;
  v38 = v17;
  v40 = a3[14];
  ViewTraitCollection.listRowInsets.getter();
  v39[0] = a3[14];
  *&v44[0] = 1;
  BYTE8(v44[0]) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(1);
  v18 = *(v4 + 120);
  if (v18)
  {
    [a1 swiftui_defaultRowHeight];
    v20 = v19;
  }

  else
  {
    v20 = *(v4 + 112);
  }

  outlined init with copy of AccessibilityScrollableContext(v56, v51);
  v44[0] = v53;
  v44[1] = v54;
  v45[0] = v55[0];
  *(v45 + 9) = *(v55 + 9);
  v46 = v41;
  v47 = v41;
  v48 = v42;
  v49 = v20;
  v50 = v18;
  v51[9] = swift_getKeyPath();
  v52 = 0;
  v21 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_disclosureIndent];
  *v21 = v41;
  v21[8] = 0;
  v22 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_separatorConfiguration];
  v23 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_separatorConfiguration];
  v24 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_separatorConfiguration + 8];
  *v22 = v13;
  *(v22 + 1) = v36;
  *(v22 + 2) = v16;
  *(v22 + 3) = v38;

  outlined consume of ListSeparatorConfiguration?(v23, v24);
  v41 = a3[14];
  LOBYTE(v39[0]) = 2;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  LODWORD(v23) = v40;
  v25 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_cellConfiguration];
  swift_beginAccess();
  v26 = *(type metadata accessor for CellConfiguration() + 28);
  v27 = v25[v26];
  v25[v26] = v40;
  specialized CellConfiguration.updateValues<A>(pre:post:)(v27, v23);
  swift_endAccess();
  v28 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
  if (v28)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>();
    lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
    v29 = v28;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v30 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_viewListID];
  *v30 = v35 | (v8 << 32);
  *(v30 + 1) = v9;

  outlined init with copy of _ViewList_View(v59, &v41);
  outlined init with copy of ListTableCellModifier(v44, &v43);
  specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(&v41, a2);
  v40 = a3[14];
  LOBYTE(v39[0]) = 0;

  ViewTraitCollection.listItemBackground(kind:)(v39);

  _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0d5TableE4CellC_Tt0g5(v31, a2);

  v32 = a3[14];
  v39[1] = 0;
  v39[2] = v32;
  v39[0] = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();

  outlined destroy of ModifiedContent<_ViewList_View, ListTableCellModifier>(&v41);
  outlined destroy of ListTableCellModifier(v44);
  outlined destroy of AccessibilityScrollableContext(v56);
  result = outlined destroy of _ViewList_View(v59);
  v34 = v40;
  if (v40)
  {
    result = outlined consume of TriggerSubmitAction?(v40);
  }

  a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_hasItemProviderTrait] = v34 != 0;
  return result;
}

Swift::Int TableViewListDataSource.separatorConfiguration(forRowAt:)(Swift::Int a1, uint64_t a2)
{
  result = Sections.startOffset(forSectionAt:)(a1);
  if (result == a2)
  {
    v6 = 1;
  }

  else
  {
    if (__OFSUB__(a2, 1))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v6 = 0;
  }

  result = Sections.hasFooter(at:)(a1);
  v7 = 1;
  if (result)
  {
    v7 = 2;
  }

  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v2 + 64);
  if (v10 >= *(v11 + 16))
  {
    v12 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
    goto LABEL_13;
  }

  if (v10 < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = *(v11 + 16 * v10 + 32);
LABEL_13:
  v13 = v6 | 2;
  v23 = 0x3FFFFFFFCuLL;
  if (v12 != v9)
  {
    v13 = v6;
  }

  v24 = 0uLL;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = 0;
  v26[0] = 0;
  *&v26[8] = xmmword_18CD6BBA0;
  v27 = 0uLL;
  *&v26[24] = 0;
  LOBYTE(v28) = v13 & 1;
  *(&v28 + 1) = v13;
  outlined init with copy of _VariadicView_Children(v2, &v16);
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  lazy protocol witness table accessor for type ListRowSeparatorVisitor and conformance ListRowSeparatorVisitor();
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v15);
  v14 = specialized static ListRowSeparatorVisitor.effectiveConfigurationForRow(above:this:below:)(v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26[0], *&v26[8], *&v26[16], *&v26[24], v27, *(&v27 + 1));
  v20 = *&v26[16];
  v21 = v27;
  v22 = v28;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v19 = *v26;
  outlined destroy of ListRowSeparatorVisitor(&v16);
  return v14;
}

uint64_t TableViewListDataSource.firstIndexPath(viewListID:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v10 = 0;
  memset(&v9[1], 0, 32);
  *&v9[0] = *a1;
  *(&v9[0] + 1) = v5;
  outlined init with copy of _VariadicView_Children(v3, v8);
  v7[0] = v8[0];
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  lazy protocol witness table accessor for type ExplicitIDFromViewListIDVisitor and conformance ExplicitIDFromViewListIDVisitor();

  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v7);
  v8[0] = v9[0];

  Sections.firstIndexPath(of:)(v8, a2);

  return outlined destroy of ExplicitIDFromViewListIDVisitor(v9);
}

uint64_t TableViewListDataSource.firstCollectionViewIndex(of:)(unsigned int *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 1);
  outlined init with copy of _VariadicView_Children(v1, v24);
  outlined init with copy of _Benchmark(v24, &v14);
  outlined destroy of _VariadicView_Children(v24);
  v5 = *(&v15 + 1);
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  if ((*(v6 + 40))(v5, v6))
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
    *&v24[0] = __PAIR64__(v2, v3);
    *(&v24[0] + 1) = v4;

    v7 = 0;
    if (dispatch thunk of _ViewList_ID_Views.endIndex.getter())
    {
      while (1)
      {
        dispatch thunk of _ViewList_ID_Views.subscript.getter();
        v8 = v14;
        v9 = DWORD1(v14);
        if (*(*(&v14 + 1) + 16))
        {
          v10 = *(*(&v14 + 1) + 32);
          v11 = *(*(&v14 + 1) + 52);

          if (v11)
          {
            v9 = -1;
          }
        }

        else
        {

          v10 = 0;
        }

        *&v14 = __PAIR64__(v9, v8);
        *(&v14 + 1) = v10;
        v12 = MEMORY[0x18D003E10](&v14, v24);

        if (v12)
        {
          break;
        }

        result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
        if (v7 >= result)
        {
          __break(1u);
          return result;
        }

        if (++v7 == dispatch thunk of _ViewList_ID_Views.endIndex.getter())
        {
          v7 = 0;
          break;
        }
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v18 = 0;
    v23 = 1;
    v19 = v3;
    v20 = v2;
    v21 = v4;
    v22 = 0;
    outlined init with copy of _VariadicView_Children(v1, v24);
    v14 = v24[0];
    v15 = v24[1];
    v16 = v24[2];
    v17 = v24[3];
    lazy protocol witness table accessor for type ExplicitIDOffsetVisitor and conformance ExplicitIDOffsetVisitor();

    _ViewList_Backing.visitViews<A>(applying:from:)();
    outlined destroy of _ViewList_Backing(&v14);
    v7 = v22;
  }

  return v7;
}

uint64_t TableViewListDataSource.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = closure #1 in TableViewListDataSource.applyCollectionViewIDs(from:to:)(_s7SwiftUI12_ViewList_IDV9CanonicalVSbIgnl_AESbIegnl_TRTA_0, v6, v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in TableViewListDataSource.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = a2;
  v9 = 0;
  outlined init with copy of _VariadicView_Children(a3, v6);
  v5[0] = v6[0];
  v5[1] = v6[1];
  v5[2] = v6[2];
  v5[3] = v6[3];
  lazy protocol witness table accessor for type ApplyCollectionViewIDsVisitor and conformance ApplyCollectionViewIDsVisitor();

  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v5);
  v3 = v9;

  return (v3 & 1) == 0;
}

uint64_t TableViewListDataSource.contextForItem(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_getWitnessTable();
  v8 = type metadata accessor for ListContentVisitor();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  *&v14[0] = a1;
  ListContentVisitor.init(index:)(v14, a2, v13 - v9);
  outlined init with copy of _VariadicView_Children(v4, v14);
  v13[0] = v14[0];
  v13[1] = v14[1];
  v13[2] = v14[2];
  v13[3] = v14[3];
  swift_getWitnessTable();
  v15 = a2;
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v13);
  type metadata accessor for _RowVisitationContext();
  v11 = type metadata accessor for Optional();
  return (*(*(v11 - 8) + 32))(a3, v10, v11);
}

uint64_t protocol witness for ListDiffable.sectionIDs.getter in conformance TableViewListDataSource<A>@<X0>(uint64_t *a1@<X8>)
{
  result = TableViewListDataSource.sectionIDs.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double protocol witness for ListDiffable.rowIDs(forSectionAt:) in conformance TableViewListDataSource<A>@<D0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  TableViewListDataSource.rowIDs(forSectionAt:)(*a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

BOOL HeaderFooterVisitor.HeaderContent.isHeader.getter()
{
  v1 = v0[4];
  v11[4] = v0[3];
  v12[0] = v1;
  *(v12 + 9) = *(v0 + 73);
  v2 = v0[2];
  v11[2] = v0[1];
  v11[3] = v2;
  specialized Environment.wrappedValue.getter(v13);
  outlined destroy of HeaderFooterConfiguration(v13);
  if (v13[0])
  {
    return 0;
  }

  v4 = v0[4];
  v10 = v0[3];
  v11[0] = v4;
  *(v11 + 9) = *(v0 + 73);
  v5 = v0[2];
  v8 = v0[1];
  v9 = v5;
  specialized Environment.wrappedValue.getter(v6);
  outlined destroy of HeaderFooterConfiguration(v6);
  return v7 != 0;
}

double HeaderFooterVisitor.HeaderContent.legacyInsets.getter()
{
  v1 = OptionalEdgeInsets.top.getter();
  if (v2)
  {
    v3 = *(v0 + 112);
  }

  else
  {
    v3 = *&v1;
  }

  OptionalEdgeInsets.leading.getter();
  if (v4)
  {
    specialized Environment.wrappedValue.getter(*v0, *(v0 + 8));
  }

  OptionalEdgeInsets.bottom.getter();
  OptionalEdgeInsets.trailing.getter();
  if (v5)
  {
    specialized Environment.wrappedValue.getter(*v0, *(v0 + 8));
  }

  return v3;
}

uint64_t HeaderFooterVisitor.HeaderContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Case?>, &lazy cache variable for type metadata for Text.Case?, MEMORY[0x1E6980FE8], MEMORY[0x1E6980B20]);
  v55 = type metadata accessor for ModifiedContent();
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v71 = &v52 - v9;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>();
  v56 = v10;
  v58 = type metadata accessor for ModifiedContent();
  v63 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v52 - v11;
  type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration, MEMORY[0x1E6980A08]);
  v61 = type metadata accessor for ModifiedContent();
  v65 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v52 - v12;
  v64 = type metadata accessor for ModifiedContent();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v52 - v13;
  v67 = type metadata accessor for ModifiedContent();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v52 - v16;
  v52 = *(a1 + 64);
  swift_getKeyPath();
  (*(v4 + 16))(v6, v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = *(a1 + 24);
  *(v18 + 16) = v8;
  *(v18 + 24) = v19;
  v20 = *(v4 + 32);
  v53 = a1;
  v20(v18 + v17, v6, a1);
  v21 = v2;
  View.transformEnvironment<A>(_:transform:)();

  v22 = *(v2 + 136);
  v88 = *(v2 + 120);
  v89 = v22;
  v90[0] = *(v2 + 152);
  *(v90 + 9) = *(v2 + 161);
  LOBYTE(v4) = *(v2 + 192);
  KeyPath = swift_getKeyPath();
  v91 = 0;
  v24 = swift_getKeyPath();
  LOBYTE(v78) = 0;
  v25 = swift_getKeyPath();
  LOBYTE(v92[0]) = 0;
  *(v87 + 7) = v88;
  *(&v87[1] + 7) = v89;
  *(&v87[2] + 7) = v90[0];
  v87[3] = *(v90 + 9);
  LOBYTE(v8) = v78;
  v26 = HeaderFooterVisitor.HeaderContent.legacyInsets.getter();
  *&v82[41] = v87[0];
  *&v82[57] = v87[1];
  *&v82[73] = v87[2];
  *&v78 = KeyPath;
  v82[8] = 0;
  *&v82[16] = v24;
  v82[24] = v8;
  *&v82[32] = v25;
  v82[40] = 0;
  *&v82[89] = v87[3];
  v82[105] = v4;
  *&v82[112] = xmmword_18CDE9320;
  *&v82[128] = v26;
  *&v82[136] = v27;
  *&v82[144] = v28;
  *&v82[152] = v29;
  v30 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>();
  v85 = v19;
  v86 = v30;
  v31 = v55;
  WitnessTable = swift_getWitnessTable();
  v33 = v54;
  v34 = v71;
  MEMORY[0x18D00A570](&v78, v31, v56, WitnessTable);
  v92[10] = *&v82[96];
  v92[11] = *&v82[112];
  v92[12] = *&v82[128];
  v92[13] = *&v82[144];
  v92[6] = *&v82[32];
  v92[7] = *&v82[48];
  v92[8] = *&v82[64];
  v92[9] = *&v82[80];
  v92[2] = v80;
  v92[3] = v81;
  v92[4] = *v82;
  v92[5] = *&v82[16];
  v92[0] = v78;
  v92[1] = v79;
  outlined destroy of StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>(v92);
  (*(v59 + 8))(v34, v31);
  swift_getKeyPath();
  v35 = v53;
  HeaderFooterVisitor.HeaderContent.resolvedConfiguration.getter(&v78);
  v36 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>();
  v83 = WitnessTable;
  v84 = v36;
  v37 = v58;
  v38 = swift_getWitnessTable();
  v39 = v57;
  View.environment<A>(_:_:)();

  v93[2] = v80;
  v93[3] = v81;
  v94 = *v82;
  v93[0] = v78;
  v93[1] = v79;
  outlined destroy of HeaderFooterConfiguration(v93);
  (*(v63 + 8))(v33, v37);
  outlined init with copy of AccessibilityScrollableContext(v21 + *(v35 + 68), &v78);
  v40 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>();
  memset(&v82[8], 0, 296);
  v76 = v38;
  v77 = v40;
  v41 = v61;
  v42 = swift_getWitnessTable();
  v43 = v60;
  MEMORY[0x18D00A570](&v78, v41, &type metadata for AccessibilityScrollableContextModifier, v42);
  outlined destroy of AccessibilityScrollableContextModifier(&v78);
  (*(v65 + 8))(v39, v41);
  static Alignment.top.getter();
  v74 = v42;
  v75 = &protocol witness table for AccessibilityScrollableContextModifier;
  v50 = v64;
  v51 = swift_getWitnessTable();
  v44 = v62;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v68 + 8))(v43, v50);
  v72 = v51;
  v73 = MEMORY[0x1E697EBF8];
  v45 = v67;
  v46 = swift_getWitnessTable();
  v47 = v66;
  static ViewBuilder.buildExpression<A>(_:)(v44, v45, v46);
  v48 = *(v69 + 8);
  v48(v44, v45);
  static ViewBuilder.buildExpression<A>(_:)(v47, v45, v46);
  return (v48)(v47, v45);
}

uint64_t closure #1 in HeaderFooterVisitor.HeaderContent.body.getter(_BYTE *a1, uint64_t a2)
{
  type metadata accessor for HeaderFooterVisitor.HeaderContent();
  result = HeaderFooterVisitor.HeaderContent.isHeader.getter();
  if (result)
  {
    v5 = *(a2 + 105);
    if (v5 == 2)
    {
      result = specialized Environment.wrappedValue.getter(*(a2 + 96), *(a2 + 104), &v6);
      LOBYTE(v5) = v6;
    }

    if ((v5 & 1) == 0)
    {
      type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGACyxGAA0cD0AAWlTm_0(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>);
      result = static SemanticFeature.isEnabled.getter();
      if (result)
      {
        *a1 = 0;
      }
    }
  }

  return result;
}

__n128 key path getter for EnvironmentValues.headerFooterConfiguration : EnvironmentValues@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  result = v5;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.headerFooterConfiguration : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = *(a1 + 48);
  v11 = v15;
  v12 = v6;
  v17 = *(a1 + 64);
  v13 = *(a1 + 64);
  v9 = v14[0];
  v10 = v3;
  type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);

  outlined init with copy of HeaderFooterConfiguration(v14, v8);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t HeaderFooterVisitor.HeaderContent.resolvedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11[0] = v3;
  *(v11 + 9) = *(v1 + 73);
  v4 = *(v1 + 32);
  v8 = *(v1 + 16);
  v9 = v4;
  result = specialized Environment.wrappedValue.getter(a1);
  v6 = *(v1 + 105);
  if (v6 == 2)
  {
    result = specialized Environment.wrappedValue.getter(*(v1 + 96), *(v1 + 104), &v7);
    LOBYTE(v6) = v7;
  }

  *(a1 + 16) = v6 & 1;
  return result;
}

uint64_t HeaderFooterVisitor.DefaultForegroundColorModifier.body(content:)@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() _defaultTextColorForTableViewStyle_isSectionHeader_];
  Color.Resolved.init(platformColor:)();
  if ((v4 & 1) == 0)
  {
    Color.init(_:)();
  }

  type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, lazy protocol witness table accessor for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier> and conformance _ViewModifier_Content<A>();
  View.defaultForegroundColor(_:)();

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance HeaderFooterVisitor.LegacyModifier@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  KeyPath = swift_getKeyPath();
  result = static Edge.Set.all.getter();
  *a1 = KeyPath;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = result;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
  return result;
}

double HeaderFooterVisitor.IOSMultiColumnModifier.insets.getter()
{
  v1 = v0[3];
  v19 = v0[2];
  v20[0] = v1;
  *(v20 + 9) = *(v0 + 57);
  v2 = v0[1];
  v17 = *v0;
  v18 = v2;
  v3 = *(v0 + 10);
  v4 = *(v0 + 88);
  specialized Environment.wrappedValue.getter(&v13);
  specialized Environment.wrappedValue.getter(v3, v4);
  HeaderFooterConfiguration.defaultEdgeInsets(for:)();
  v6 = v5;
  v21[2] = *v15;
  v21[3] = *&v15[16];
  v22 = v16;
  v21[0] = v13;
  v21[1] = v14;
  outlined destroy of HeaderFooterConfiguration(v21);
  v7 = v0[8];
  v13 = v0[7];
  v14 = v7;
  *v15 = v0[9];
  *&v15[9] = *(v0 + 153);
  v8 = COERCE_DOUBLE(OptionalEdgeInsets.top.getter());
  if ((v9 & 1) == 0)
  {
    v6 = v8;
  }

  v10 = v0[8];
  v13 = v0[7];
  v14 = v10;
  *v15 = v0[9];
  *&v15[9] = *(v0 + 153);
  OptionalEdgeInsets.leading.getter();
  v11 = v0[8];
  v13 = v0[7];
  v14 = v11;
  *v15 = v0[9];
  *&v15[9] = *(v0 + 153);
  OptionalEdgeInsets.bottom.getter();
  OptionalEdgeInsets.trailing.getter();
  return v6;
}

uint64_t HeaderFooterVisitor.IOSMultiColumnModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v96 = v1[8];
  v97 = v3;
  v4 = v1[11];
  v98 = v1[10];
  v99 = v4;
  v5 = v1[5];
  *&v92[16] = v1[4];
  v93 = v5;
  v6 = v1[7];
  v94 = v1[6];
  v95 = v6;
  v7 = v1[1];
  v89 = *v1;
  v90 = v7;
  v8 = v1[3];
  v91 = v1[2];
  *v92 = v8;
  v88 = 0;
  v87 = 0;
  v104 = static VerticalAlignment.firstTextBaseline.getter();
  LOBYTE(v105) = 0;
  *(&v105 + 1) = 0;
  v106 = 0;
  v9 = static HorizontalAlignment.center.getter();
  v72 = 1;
  closure #1 in closure #2 in HeaderFooterVisitor.IOSMultiColumnModifier.body(content:)(&v89, &v104, v69);
  v69[8] = v104;
  v69[9] = v105;
  *&v71[119] = v69[7];
  *&v71[135] = v104;
  *&v71[151] = v105;
  v71[167] = v106;
  *&v71[55] = v69[3];
  *&v71[71] = v69[4];
  *&v71[87] = v69[5];
  *&v71[103] = v69[6];
  *&v71[7] = v69[0];
  *&v71[23] = v69[1];
  *&v71[39] = v69[2];
  v65 = *&v71[112];
  v66 = *&v71[128];
  v67 = *&v71[144];
  v61 = *&v71[48];
  v62 = *&v71[64];
  v70 = v106;
  v55 = v9;
  v56 = 0;
  v57 = v72;
  v68 = *&v71[160];
  v63 = *&v71[80];
  v64 = *&v71[96];
  v58 = *v71;
  v59 = *&v71[16];
  v60 = *&v71[32];
  v102 = v91;
  v103[0] = *v92;
  *(v103 + 9) = *&v92[9];
  v101 = v90;
  v100 = v89;
  specialized Environment.wrappedValue.getter(v107);
  if ((v107[0] & 1) == 0 && v109 && (v108 == 2 || v110 == 1))
  {
    static Color.primary.getter();
  }

  else
  {
  }

  outlined destroy of HeaderFooterConfiguration(v107);
  type metadata accessor for VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>();
  lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(&lazy protocol witness table cache variable for type VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>> and conformance VStack<A>, type metadata accessor for VStack<StaticIf<ListUsesBaselineAlignedHeadersPredicate, _ConditionalContent<_ConditionalContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, TupleView<(VStack<TupleView<(_TextBaselineRelativeSpacer, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>)>>, _TextBaselineRelativeSpacer)>>, TupleView<(ModifiedContent<_TextBaselineRelativeSpacer, _FrameLayout>, ModifiedContent<HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _TextBaselineRelativeSpacer)>>, HStack<TupleView<(_ViewModifier_Content<HeaderFooterVisitor.IOSMultiColumnModifier>, Spacer)>>>>);
  View.defaultForegroundColor(_:)();

  v52 = v83;
  v53 = v84;
  v54 = v85;
  v48 = v79;
  v49 = v80;
  v50 = v81;
  v51 = v82;
  v44 = v75;
  v45 = v76;
  v46 = v77;
  v47 = v78;
  v42 = v73;
  v43 = v74;
  KeyPath = swift_getKeyPath();
  v11 = HeaderFooterVisitor.IOSMultiColumnModifier.insets.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v41[8] = v96;
  v41[9] = v97;
  v41[10] = v98;
  v41[11] = v99;
  v41[4] = *&v92[16];
  v41[5] = v93;
  v41[6] = v94;
  v41[7] = v95;
  v41[0] = v89;
  v41[1] = v90;
  v41[2] = v91;
  v41[3] = *v92;
  v18 = HeaderFooterVisitor.IOSMultiColumnModifier.insets.getter();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = static Edge.Set.all.getter();
  v86 = 0;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v28 = v97;
  v27[9] = v96;
  v27[10] = v28;
  v29 = v99;
  v27[11] = v98;
  v27[12] = v29;
  v30 = v93;
  v27[5] = *&v92[16];
  v27[6] = v30;
  v31 = v95;
  v27[7] = v94;
  v27[8] = v31;
  v32 = v90;
  v27[1] = v89;
  v27[2] = v32;
  v33 = *v92;
  v27[3] = v91;
  v27[4] = v33;
  v34 = v53;
  *(a1 + 160) = v52;
  *(a1 + 176) = v34;
  *(a1 + 192) = v54;
  v35 = v49;
  *(a1 + 96) = v48;
  *(a1 + 112) = v35;
  v36 = v51;
  *(a1 + 128) = v50;
  *(a1 + 144) = v36;
  v37 = v45;
  *(a1 + 32) = v44;
  *(a1 + 48) = v37;
  v38 = v47;
  *(a1 + 64) = v46;
  *(a1 + 80) = v38;
  v39 = v43;
  *a1 = v42;
  *(a1 + 16) = v39;
  *(a1 + 208) = KeyPath;
  *(a1 + 216) = v11;
  *(a1 + 224) = v13;
  *(a1 + 232) = v15;
  *(a1 + 240) = v17;
  *(a1 + 248) = v25;
  *(a1 + 256) = v18;
  *(a1 + 264) = v20;
  *(a1 + 272) = v22;
  *(a1 + 280) = v24;
  *(a1 + 288) = 0;
  *(a1 + 296) = v26;
  *(a1 + 304) = partial apply for closure #3 in HeaderFooterVisitor.IOSMultiColumnModifier.body(content:);
  *(a1 + 312) = v27;
  return outlined init with copy of HeaderFooterVisitor.IOSMultiColumnModifier(&v89, v41);
}

double closure #1 in closure #2 in HeaderFooterVisitor.IOSMultiColumnModifier.body(content:)@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  v8 = a2[3];
  v9 = *(a2 + 32);
  v10 = a1[8];
  v49 = a1[7];
  v50 = v10;
  v51[0] = a1[9];
  *(v51 + 9) = *(a1 + 153);
  MEMORY[0x18D007000](&v32);
  if ((MEMORY[0x18D006FC0](&v49, &v32) & 1) == 0)
  {
    LOBYTE(v45) = v7 & 1;
    v31[0] = v9 & 1;
    LOBYTE(v39) = 0;
    *&v32 = v6;
    *(&v32 + 1) = v5;
    LOBYTE(v33) = v7 & 1;
    *(&v33 + 1) = v8;
    LOBYTE(v34) = v9 & 1;
    BYTE9(v37) = 0;
LABEL_10:
    _s7SwiftUI19_ConditionalContentV7StorageOyACyAA6HStackVyAA9TupleViewVyAA01_h9Modifier_D0VyAA19HeaderFooterVisitor33_09EFF545269A5D039E3623E2F99BCD02LLV014IOSMultiColumnI0VG_AA6SpacerVtGGAIyAA6VStackVyAIyAA021_TextBaselineRelativeV0V_AUtGG_AYtGGAIyAA08ModifiedD0VyAyA12_FrameLayoutVG_A3_yAuA013_TraitWritingI0VyAA22LayoutPriorityTraitKeyVGGAYtG_GWOi_(&v32);
    goto LABEL_11;
  }

  v11 = a1[3];
  v47 = a1[2];
  v48[0] = v11;
  *(v48 + 9) = *(a1 + 57);
  v12 = a1[1];
  v45 = *a1;
  v46 = v12;
  specialized Environment.wrappedValue.getter(v31);
  outlined destroy of HeaderFooterConfiguration(v31);
  if ((v31[0] & 1) == 0)
  {
    v15 = static HorizontalAlignment.center.getter();
    v16 = v15;
    LOBYTE(v39) = 1;
    if (*(a1 + 169))
    {
      v17 = specialized Environment.wrappedValue.getter(*(a1 + 12), *(a1 + 104)) + 45.0;
    }

    else
    {
      v28 = v8;
      v18 = v15;
      specialized Environment.wrappedValue.getter(&v49);
      v16 = v18;
      v8 = v28;
      outlined destroy of HeaderFooterConfiguration(&v49);
      v17 = 28.0;
      if (v49)
      {
        v17 = 20.0;
      }
    }

    v19 = *(a1 + 22);
    v32 = v16;
    LOBYTE(v33) = v39;
    *(&v33 + 1) = v17;
    LOBYTE(v34) = 0;
    *(&v34 + 1) = v6;
    *&v35 = v5;
    BYTE8(v35) = v7 & 1;
    *&v36 = v8;
    BYTE8(v36) = v9 & 1;
    *&v37 = v19;
    WORD4(v37) = 256;
    goto LABEL_10;
  }

  v13 = *(a1 + 23);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = v41;
  v27 = v39;
  v24 = v44;
  v25 = v43;
  v30 = v40;
  v29 = v42;
  v14 = specialized Environment.wrappedValue.getter(*(a1 + 12), *(a1 + 104));
  *&v32 = v13;
  BYTE8(v32) = 0;
  *&v33 = v27;
  BYTE8(v33) = v30;
  *&v34 = v26;
  BYTE8(v34) = v29;
  *&v35 = v25;
  *(&v35 + 1) = v24;
  *&v36 = v6;
  *(&v36 + 1) = v5;
  LOBYTE(v37) = v7 & 1;
  *(&v37 + 1) = v8;
  v38[0] = v9 & 1;
  *&v38[8] = 0x3FF0000000000000;
  *&v38[16] = 18.0 - v14;
  v38[24] = 0;
  _s7SwiftUI19_ConditionalContentV7StorageOyACyAA6HStackVyAA9TupleViewVyAA01_h9Modifier_D0VyAA19HeaderFooterVisitor33_09EFF545269A5D039E3623E2F99BCD02LLV014IOSMultiColumnI0VG_AA6SpacerVtGGAIyAA6VStackVyAIyAA021_TextBaselineRelativeV0V_AUtGG_AYtGGAIyAA08ModifiedD0VyAyA12_FrameLayoutVG_A3_yAuA013_TraitWritingI0VyAA22LayoutPriorityTraitKeyVGGAYtG_GWOi0_(&v32);
LABEL_11:
  v52[0] = *v38;
  *(v52 + 10) = *&v38[10];
  v49 = v32;
  v50 = v33;
  v51[0] = v34;
  v51[1] = v35;
  v20 = v37;
  a3[4] = v36;
  a3[5] = v20;
  a3[6] = v52[0];
  *(a3 + 106) = *(v52 + 10);
  v21 = v50;
  *a3 = v49;
  a3[1] = v21;
  result = *v51;
  v23 = v51[1];
  a3[2] = v51[0];
  a3[3] = v23;
  return result;
}

uint64_t closure #3 in HeaderFooterVisitor.IOSMultiColumnModifier.body(content:)(uint64_t *a1)
{
  specialized Environment.wrappedValue.getter(v5);
  v2 = HeaderFooterConfiguration.font.getter();
  if (!v2)
  {
    return outlined destroy of HeaderFooterConfiguration(v5);
  }

  v3 = v2;

  result = outlined destroy of HeaderFooterConfiguration(v5);
  *a1 = v3;
  return result;
}

uint64_t HeaderFooterVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v14 = *v2;
  v8 = *(v7 + 16);
  swift_bridgeObjectRetain_n();
  if (v8)
  {
    v9 = *(v7 + 32);
    v10 = *(v7 + 52);

    if (v10)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {

    v9 = 0;
    v11 = v6;
  }

  specialized HeaderFooterVisitor.configure<A>(view:traits:id:)(a1, v4, v5 | (v11 << 32), v9);

  v12 = (v14 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID);
  *v12 = v5 | (v6 << 32);
  v12[1] = v7;

  return 0;
}

uint64_t specialized HeaderFooterVisitor.configure<A>(view:traits:id:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52[0] = static VerticalAlignment.center.getter();
  v52[1] = 0;
  v53 = 1;
  specialized closure #1 in HeaderFooterVisitor.configure<A>(view:traits:id:)(a2, v5, a1, a3, a4, &v54);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(v52, v51);
  type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>> and conformance HStack<A>();
  v10 = AnyView.init<A>(_:)();
  v11 = *v5;
  v12 = OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host;
  v13 = *(*v5 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host);
  if (v13)
  {
    v14 = v13;
    v15 = [v11 contentView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v14 setFrame_];
    v24 = *(v5 + 8);
    if (v24 == 1)
    {
      v25 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x60);
      swift_beginAccess();
      *(v14 + v25) = v10;

      type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {

      specialized _UIHostingView.setRootView(_:transaction:)(v10);

      outlined consume of ListItemTint?(v24);
      if (!a2)
      {
LABEL_13:
        ViewTraitCollection.init()();
        goto LABEL_14;
      }
    }
  }

  else
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0, &lazy cache variable for type metadata for CellHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, type metadata accessor for CellHostingView);
    v27 = objc_allocWithZone(v26);

    v29 = specialized _UIHostingView.init(rootView:)(v28);
    v30 = MEMORY[0x1E69E7D40];
    v31 = v29;
    UIHostingViewBase.isHiddenForReuse.setter();
    v32 = *&v11[v12];
    *&v11[v12] = v29;
    v33 = v31;

    v34 = *&v11[v12];
    if (v34)
    {
      *(v34 + *((*v30 & *v34) + 0x1C0) + 8) = &protocol witness table for ListTableViewHeaderFooter;
      swift_unknownObjectWeakAssign();
    }

    v35 = [v11 contentView];
    [v35 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    [v33 setFrame_];
    [v33 setAutoresizingMask_];
    v44 = [v11 contentView];
    [v44 addSubview_];

    if (!a2)
    {
      goto LABEL_13;
    }
  }

  if (*(v5 + 32))
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  v50 = a2;
  v49 = v45;

  ViewTraitCollection.listItemBackground(kind:)(&v49);
LABEL_14:

  v46 = *(v5 + 8);

  _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0d5TableE12HeaderFooterC_Tt0g5(v47, v46);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(v52);
}

uint64_t specialized closure #1 in HeaderFooterVisitor.configure<A>(view:traits:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v11 = HIDWORD(a4);
  if (a1)
  {
    v32[0] = a1;
    __dst[0] = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v13 = v26[0];
    v25 = *(a2 + 24);
    if (v25)
    {
      v14 = 6.0;
    }

    else
    {
      v14 = 0.0;
    }

    v32[0] = a1;
    v15 = v25 == 0;
    ViewTraitCollection.listRowInsets.getter();
  }

  else
  {
    v25 = *(a2 + 24);
    v15 = v25 == 0;
    if (v25)
    {
      v14 = 6.0;
    }

    else
    {
      v14 = 0.0;
    }

    MEMORY[0x18D007000](v27);
    v13 = 2;
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 33);
  outlined init with copy of _ViewList_View(a3, &__src[25]);
  __src[37] = __PAIR64__(v11, v7);
  __src[38] = a5;
  BYTE6(__src[45]) = 1;
  __src[0] = swift_getKeyPath();
  LOBYTE(__src[1]) = 0;
  v26[416] = 0;
  __src[2] = swift_getKeyPath();
  LOBYTE(__src[11]) = 0;
  KeyPath = swift_getKeyPath();
  *&__src[15] = v27[0];
  *&__src[17] = v27[1];
  *&__src[19] = v28[0];
  *(&__src[20] + 1) = *(v28 + 9);
  __src[12] = KeyPath;
  LOBYTE(__src[13]) = 0;
  BYTE1(__src[13]) = v13;
  *&__src[14] = v14;
  __src[23] = v16;
  LOBYTE(__src[24]) = v17;

  if (v15)
  {
    v19 = static Font.headline.getter();
  }

  else
  {
    v19 = static Font.footnote.getter();
  }

  v20 = v19;
  v21 = swift_getKeyPath();
  memcpy(__dst, __src, 0x16FuLL);
  v22 = *(a2 + 32);
  v23 = swift_getKeyPath();
  v30 = 0;
  memcpy(v32, __dst, 0x170uLL);
  v32[46] = v21;
  v32[47] = v20;
  v32[48] = v25;
  v33 = v22 & 1;
  v34 = v23;
  v35 = 0;
  outlined init with copy of ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(v32, v26);
  outlined init with copy of ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(v26, a6);
  *(a6 + 416) = 0;
  *(a6 + 424) = 0;
  outlined destroy of ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(v32);
  return outlined destroy of ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(v26);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance ListUsesBaselineAlignedHeadersPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static ListUsesBaselineAlignedHeadersPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance PreferBaselineAlignedHeaders()
{
  lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t initializeWithCopy for TableViewListDataSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v10 = v5;

  return a1;
}

uint64_t assignWithCopy for TableViewListDataSource(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v7 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t assignWithTake for TableViewListDataSource(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

void type metadata accessor for LazyMapSequence<Slice<_ViewList_ID_Views>, _ViewList_ID.Canonical>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<Slice<_ViewList_ID_Views>, _ViewList_ID.Canonical>)
  {
    type metadata accessor for Slice<_ViewList_ID_Views>();
    lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(&lazy protocol witness table cache variable for type Slice<_ViewList_ID_Views> and conformance Slice<A>, type metadata accessor for Slice<_ViewList_ID_Views>);
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<Slice<_ViewList_ID_Views>, _ViewList_ID.Canonical>);
    }
  }
}

void type metadata accessor for Slice<_ViewList_ID_Views>()
{
  if (!lazy cache variable for type metadata for Slice<_ViewList_ID_Views>)
  {
    type metadata accessor for _ViewList_ID_Views();
    lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(&lazy protocol witness table cache variable for type _ViewList_ID_Views and conformance _ViewList_ID_Views, MEMORY[0x1E697F5C0]);
    v0 = type metadata accessor for Slice();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Slice<_ViewList_ID_Views>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type LazyMapSequence<Slice<_ViewList_ID_Views>, _ViewList_ID.Canonical> and conformance <> LazyMapSequence<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for LazyMapSequence<[Sections.Item], _ViewList_ID.Canonical>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[Sections.Item], _ViewList_ID.Canonical>)
  {
    type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for [Sections.Item], &type metadata for Sections.Item, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Sections.Item] and conformance [A]();
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<[Sections.Item], _ViewList_ID.Canonical>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [Sections.Item] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Sections.Item] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Sections.Item] and conformance [A])
  {
    type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for [Sections.Item], &type metadata for Sections.Item, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Sections.Item] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Sections.Item] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Sections.Item] and conformance [A])
  {
    type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for [Sections.Item], &type metadata for Sections.Item, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Sections.Item] and conformance [A]);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for TableViewListDataSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowSeparatorVisitor and conformance ListRowSeparatorVisitor()
{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor and conformance ListRowSeparatorVisitor;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor and conformance ListRowSeparatorVisitor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor and conformance ListRowSeparatorVisitor);
  }

  return result;
}

uint64_t specialized static ListUsesBaselineAlignedHeadersPredicate.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  static Semantics.v3.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    return 0;
  }

  v3 = v1;
  _GraphInputs.interfaceIdiom.getter();
  if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) == 0)
  {
    v3 = v1;
    _GraphInputs.interfaceIdiom.getter();
    if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) == 0)
    {
      return 0;
    }
  }

  lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t lazy protocol witness table accessor for type ApplyCollectionViewIDsVisitor and conformance ApplyCollectionViewIDsVisitor()
{
  result = lazy protocol witness table cache variable for type ApplyCollectionViewIDsVisitor and conformance ApplyCollectionViewIDsVisitor;
  if (!lazy protocol witness table cache variable for type ApplyCollectionViewIDsVisitor and conformance ApplyCollectionViewIDsVisitor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyCollectionViewIDsVisitor and conformance ApplyCollectionViewIDsVisitor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExplicitIDOffsetVisitor and conformance ExplicitIDOffsetVisitor()
{
  result = lazy protocol witness table cache variable for type ExplicitIDOffsetVisitor and conformance ExplicitIDOffsetVisitor;
  if (!lazy protocol witness table cache variable for type ExplicitIDOffsetVisitor and conformance ExplicitIDOffsetVisitor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplicitIDOffsetVisitor and conformance ExplicitIDOffsetVisitor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExplicitIDFromViewListIDVisitor and conformance ExplicitIDFromViewListIDVisitor()
{
  result = lazy protocol witness table cache variable for type ExplicitIDFromViewListIDVisitor and conformance ExplicitIDFromViewListIDVisitor;
  if (!lazy protocol witness table cache variable for type ExplicitIDFromViewListIDVisitor and conformance ExplicitIDFromViewListIDVisitor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplicitIDFromViewListIDVisitor and conformance ExplicitIDFromViewListIDVisitor);
  }

  return result;
}

uint64_t outlined consume of ListSeparatorConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeaderFooterVisitor and conformance HeaderFooterVisitor()
{
  result = lazy protocol witness table cache variable for type HeaderFooterVisitor and conformance HeaderFooterVisitor;
  if (!lazy protocol witness table cache variable for type HeaderFooterVisitor and conformance HeaderFooterVisitor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderFooterVisitor and conformance HeaderFooterVisitor);
  }

  return result;
}

uint64_t destroy for HeaderFooterVisitor(uint64_t a1)
{
  result = *(a1 + 8);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for HeaderFooterVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  v6 = v4;
  if (v5 != 1)
  {
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for HeaderFooterVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = (a1 + 8);
  v8 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v8 != 1)
    {
      *v7 = v8;

      goto LABEL_9;
    }

    v9 = 1;
  }

  else
  {
    if (v8 != 1)
    {
      *v7 = v8;

      goto LABEL_9;
    }

    outlined destroy of Transaction(a1 + 8);
    v9 = *(a2 + 8);
  }

  *v7 = v9;
LABEL_9:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithTake for HeaderFooterVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = (a1 + 8);
  v6 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if (v6 != 1)
    {
      *v5 = v6;

      goto LABEL_6;
    }

    outlined destroy of Transaction(a1 + 8);
    v6 = 1;
  }

  *v5 = v6;
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t getEnumTagSinglePayload for HeaderFooterVisitor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t storeEnumTagSinglePayload for HeaderFooterVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, type metadata accessor for ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer));
    }
  }
}

void type metadata accessor for ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(255, &lazy cache variable for type metadata for HeaderFooterVisitor.HeaderContent<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for HeaderFooterVisitor.HeaderContent);
    type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for [Sections.Item](255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer));
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>> and conformance HStack<A>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>(255, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer), lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)> and conformance TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<HeaderFooterVisitor.HeaderContent<_ViewList_View>, _EnvironmentKeyWritingModifier<Font?>>, HeaderFooterVisitor.DefaultForegroundColorModifier>, Spacer)>> and conformance HStack<A>);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}