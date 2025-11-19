void type metadata accessor for (@thick Any.Type, DecodingError.Context)()
{
  if (!lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context))
  {
    type metadata accessor for @thick Any.Type();
    type metadata accessor for DecodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context));
    }
  }
}

unint64_t type metadata accessor for @thick Any.Type()
{
  result = lazy cache variable for type metadata for @thick Any.Type;
  if (!lazy cache variable for type metadata for @thick Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick Any.Type);
  }

  return result;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes()
{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<AccessibilityCustomAttributes> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KeyedDecodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>(255, a2, lazy protocol witness table accessor for type AccessibilityCustomAttributes and conformance AccessibilityCustomAttributes, &type metadata for AccessibilityCustomAttributes, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityCustomAttributes.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v9 = type metadata accessor for Date();
        }

        else
        {
          v9 = type metadata accessor for URL();
        }

        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_15;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v13 = *a2;
        v12 = a2[1];
        outlined copy of Data._Representation(v13, v12);
        *a1 = v13;
        a1[1] = v12;
      }

      else
      {
        v7 = a2[1];
        *a1 = *a2;
        a1[1] = v7;
      }

      goto LABEL_15;
    }

    v10 = *a2;
    *a1 = *a2;
    v11 = v10;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *a2;
  *a1 = *a2;
  a1 = (v8 + ((v5 + 16) & ~v5));

  return a1;
}

uint64_t *assignWithCopy for AccessibilityCustomAttributes.Value(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityCustomAttributes.Value(a1, type metadata accessor for AccessibilityCustomAttributes.Value);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v5 = type metadata accessor for Date();
        }

        else
        {
          v5 = type metadata accessor for URL();
        }

        (*(*(v5 - 8) + 16))(a1, a2, v5);
        goto LABEL_14;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v9 = *a2;
        v8 = a2[1];
        outlined copy of Data._Representation(v9, v8);
        *a1 = v9;
        a1[1] = v8;
      }

      else
      {
        *a1 = *a2;
        a1[1] = a2[1];
      }

      goto LABEL_14;
    }

    v6 = *a2;
    *a1 = *a2;
    v7 = v6;
LABEL_14:
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for AccessibilityCustomAttributes.Value(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithTake for AccessibilityCustomAttributes.Value(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of AccessibilityCustomAttributes.Value(a1, type metadata accessor for AccessibilityCustomAttributes.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

unint64_t specialized AccessibilityCustomAttributes.Value.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AccessibilityCustomAttributes.Value.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void type metadata accessor for (AccessibilityCustomAttributes.Value, AccessibilityCustomAttributes.Value)()
{
  if (!lazy cache variable for type metadata for (AccessibilityCustomAttributes.Value, AccessibilityCustomAttributes.Value))
  {
    type metadata accessor for AccessibilityCustomAttributes.Value();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityCustomAttributes.Value, AccessibilityCustomAttributes.Value));
    }
  }
}

uint64_t Transaction.addAnimationListener(allFinished:)(uint64_t a1, uint64_t a2)
{
  return Transaction.addAnimationListener(allFinished:)(a1, a2, &unk_1F0053110, _sIg_Ieg_TRTA_0, Transaction.addAnimationListener(_:));
}

{
  return Transaction.addAnimationListener(allFinished:)(a1, a2, Transaction.addAnimationListener(_:));
}

uint64_t Transaction.animationListener.getter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
  }

  return result;
}

uint64_t key path setter for Transaction.animationListener : Transaction(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t *))
{
  v7 = *a1;

  a5(a2, v7, &v9);
}

uint64_t Transaction.addAnimationLogicalListener(allFinished:)(uint64_t a1, uint64_t a2)
{
  return Transaction.addAnimationListener(allFinished:)(a1, a2, &unk_1F0053138, partial apply for closure #1 in Transaction.addAnimationLogicalListener(allFinished:), Transaction.addAnimationLogicalListener(_:));
}

{
  return Transaction.addAnimationListener(allFinished:)(a1, a2, Transaction.addAnimationLogicalListener(_:));
}

uint64_t Transaction.addAnimationListener(allFinished:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  type metadata accessor for AllFinishedListener();
  v10 = swift_allocObject();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  *(v10 + 16) = a4;
  *(v10 + 24) = v9;

  a5(v10);
}

uint64_t Transaction.addAnimationListener(allFinished:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for AllFinishedListener();
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(v6);
}

uint64_t ListenerPair.__ivar_destroyer()
{
}

uint64_t AllFinishedListener.finalizeTransaction()()
{
  if (!*(v0 + 32) && (*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    v1 = *(v0 + 16);
    v3 = *(v0 + 40);
    return v1(&v3);
  }

  return result;
}

uint64_t AllFinishedListener.__deallocating_deinit()
{
  if (!*(v0 + 32) && (*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    v1 = *(v0 + 16);
    v3 = *(v0 + 40);
    v1(&v3);
  }

  return swift_deallocClassInstance();
}

void AllFinishedListener.animationWasAdded()()
{
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v3;
    v4 = *(v0 + 40);
    v2 = __OFADD__(v4, 1);
    v5 = v4 + 1;
    if (!v2)
    {
      *(v0 + 40) = v5;
      return;
    }
  }

  __break(1u);
}

uint64_t AllFinishedListener.animationWasRemoved()()
{
  v1 = *(v0 + 32);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v3;
    if (!v3 && (*(v0 + 48) & 1) == 0)
    {
      *(v0 + 48) = 1;
      v4 = *(v0 + 16);
      v6 = *(v0 + 40);
      return v4(&v6);
    }
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (result)
  {
  }

  *a3 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for Transaction.PendingListeners(char *a1, char *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = type metadata accessor for DispatchTime();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);

    if (v10(&a2[v7], 1, v8))
    {
      type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
      memcpy(&v6[v7], &a2[v7], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v6[v7], &a2[v7], v8);
      (*(v9 + 56))(&v6[v7], 0, 1, v8);
    }
  }

  return v6;
}

char *assignWithCopy for Transaction.PendingListeners(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

char *initializeWithTake for Transaction.PendingListeners(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for Transaction.PendingListeners(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for Transaction.PendingListeners.WeakListener(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_weakCopyInit();
    v7 = *(a3 + 20);
    v8 = type metadata accessor for DispatchTime();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  return a1;
}

uint64_t assignWithCopy for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakCopyAssign();
  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithTake for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakTakeAssign();
  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t key path getter for EnvironmentValues.defaultForegroundColor : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.defaultForegroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.foregroundColor.setter(uint64_t a1)
{
  specialized EnvironmentValues.foregroundColor.setter(a1);
}

void (*EnvironmentValues.defaultForegroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v3[4] = *v1;
  v3[5] = v1[1];
  *v3 = EnvironmentValues.defaultForegroundColor.getter();
  return EnvironmentValues.defaultForegroundColor.modify;
}

void EnvironmentValues.defaultForegroundColor.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  swift_retain_n();
  swift_retain_n();
  v6 = v3[3];
  if (a2)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(v6, v5);

    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(v6, v5);

    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

uint64_t (*EnvironmentValues.foregroundColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.foregroundColor.getter();
  return EnvironmentValues.foregroundColor.modify;
}

uint64_t EnvironmentValues.foregroundColor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    specialized EnvironmentValues.foregroundColor.setter(v3);
  }

  else
  {
    specialized EnvironmentValues.foregroundColor.setter(v2);
  }
}

uint64_t _ForegroundColorModifier.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static _ForegroundColorModifier._makeViewInputs(modifier:inputs:)()
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ForegroundColorModifier.ChildEnvironment and conformance _ForegroundColorModifier.ChildEnvironment();
  v0 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v0);
}

uint64_t protocol witness for Rule.value.getter in conformance _ForegroundColorModifier.ChildEnvironment@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  AGGraphGetValue();

  specialized EnvironmentValues.foregroundColor.setter(v5);
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance _ForegroundColorModifier()
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ForegroundColorModifier.ChildEnvironment and conformance _ForegroundColorModifier.ChildEnvironment();
  v0 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v0);
}

uint64_t EnvironmentValues._effectiveForegroundColor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = EnvironmentValues.currentForegroundStyle.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }

    v4 = static HierarchicalShapeStyle.sharedPrimary;
  }

  v5 = specialized ShapeStyle.fallbackColor(in:level:)(v1, v2, 0, v4);

  return v5;
}

uint64_t EnvironmentValues.effectiveLinkColor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v6[4] = *v0;
  v6[5] = v2;
  result = EnvironmentValues.tintColor.getter();
  if (!result)
  {
    v6[2] = v1;
    v6[3] = v2;
    v4 = EnvironmentValues.resolvedTextProvider.getter();
    if (v4)
    {
      v6[0] = v1;
      v6[1] = v2;
      return (*(v5 + 8))(v6, v4, v5);
    }

    else
    {
      type metadata accessor for ColorBox<Color.AccentColorProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>, lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider);

      return swift_allocObject();
    }
  }

  return result;
}

float specialized Color.ForegroundColorProvider.resolve(in:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  v3 = EnvironmentValues.currentForegroundStyle.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }

    v4 = static HierarchicalShapeStyle.sharedPrimary;
  }

  v5 = specialized ShapeStyle.fallbackColor(in:level:)(v1, v2, 0, v4);

  if (!v5)
  {
    if (one-time initialization token for primary != -1)
    {
      swift_once();
    }

    v5 = static Color.primary;
  }

  v8 = v1;
  v9 = v2;
  v6 = (*(*v5 + 112))(&v8);

  return v6;
}

unint64_t lazy protocol witness table accessor for type _ForegroundColorModifier.ChildEnvironment and conformance _ForegroundColorModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type _ForegroundColorModifier.ChildEnvironment and conformance _ForegroundColorModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type _ForegroundColorModifier.ChildEnvironment and conformance _ForegroundColorModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundColorModifier.ChildEnvironment and conformance _ForegroundColorModifier.ChildEnvironment);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Color?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>)
  {
    type metadata accessor for Color?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>);
    }
  }
}

void type metadata accessor for Color?()
{
  if (!lazy cache variable for type metadata for Color?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color?);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for _ForegroundColorModifier.ChildEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ForegroundColorModifier.ChildEnvironment and conformance _ForegroundColorModifier.ChildEnvironment();
  *(a1 + 8) = result;
  return result;
}

uint64_t Text.init(variants:)(uint64_t a1)
{
  type metadata accessor for TextVariantsStorage();
  swift_allocObject();
  return TextVariantsStorage.init(variants:)(a1);
}

uint64_t TextVariantsStorage.init(variants:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v15 = v1;
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v16;
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 8);
      v10 = *v6;
      outlined copy of Text.Storage(v7, v8, v9);
      v11 = *(v16 + 16);
      v12 = *(v16 + 24);

      if (v11 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      v13 = v16 + 48 * v11;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      *(v13 + 64) = 1;
      *(v13 + 72) = 0;
      v6 += 4;
      --v4;
    }

    while (v4);

    v2 = v15;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + 16) = v5;
  return v2;
}

uint64_t TextVariantsStorage.variant(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = (v6 + 72);
      while (*v10 == 1)
      {
        v11 = *(v10 - 1);
        v12 = __OFSUB__(v4, v11);
        v13 = v4 - v11;
        if (v13 < 0 != v12)
        {
          break;
        }

        if (v12)
        {
          __break(1u);
          return result;
        }

        v4 = v13;
        ++v9;
        v10 += 48;
        if (v8 == v9)
        {
          v9 = v8;
          break;
        }
      }
    }

    *a2 = v9;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t TextVariantsStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v10 = *a2;
  v11 = *(a2 + 8);
  v46 = *a3;
  v45 = *(a5 + 32);
  v45(v67, a4, a5);
  outlined destroy of Text.ResolvedProperties(v67);
  v41 = v68;
  v47 = a1;
  v40 = *(v7 + 48);
  v13 = v40(&v57, a4, v7);
  if ((*(v12 + 32) & 0x100) != 0)
  {
    *(v12 + 32) &= ~0x100u;
  }

  v13(&v57, 0);
  if (v11)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v10, v55);

    v14 = *&v55[0];
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v10);
    if (v15)
    {
      v14 = v15[9];
    }

    else
    {
      v14 = 0;
    }
  }

  v66[0] = v14;
  v16 = v6;
  result = TextVariantsStorage.variant(for:)(v66, &v57);
  if ((v58 & 1) == 0)
  {
    v20 = *(&v57 + 1);
    v21 = v57;
    swift_beginAccess();
    v44 = v21;
    v22 = 48 * v21 + 72;
    v42 = v10;
    v43 = v7;
    v53 = v6;
    while (1)
    {
      swift_retain_n();

      v23 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v10);
      if (!v23 || (value = v10, v20 != v23[9]))
      {
        type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>();
        v16 = swift_allocObject();
        *(v16 + 72) = v20;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>();
        value = PropertyList.Element.init(keyType:before:after:)(v24, 0, v10).value;
      }

      if (v11)
      {
        v16 = v11;
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE015TextSizeVariantK033_22A2F77020526CCA53FF38DE37184183LLVG_Ttg5(v10, value);
      }

      if ((v44 & 0x8000000000000000) != 0)
      {
        break;
      }

      v25 = *(v6 + 16);
      if (v21 >= *(v25 + 16))
      {
        goto LABEL_48;
      }

      v52 = v21;
      v48 = v22;
      v26 = v25 + v22;
      v27 = v7;
      v10 = *(v26 - 40);
      v28 = *(v26 - 32);
      v29 = v20;
      v30 = *(v26 - 24);
      v31 = *(v26 - 16);
      v51 = swift_allocBox();
      v33 = v32;
      (*(*(a4 - 8) + 16))(v32, v47, a4);
      *&v57 = value;
      *(&v57 + 1) = v11;
      *&v55[0] = v46;
      outlined copy of Text.Storage(v10, v28, v30);

      v49 = v28;
      v50 = v30;
      Text.resolve<A>(into:in:with:)(v33, &v57, v55, v10, v28, v30, v31, a4, v27);

      if (!v29)
      {
        commit #1 <A>() in TextVariantsStorage.resolve<A>(into:in:with:)(v47, v51, a4);
        outlined consume of Text.Storage(v10, v28, v30);

        if (v52)
        {
          v36 = v40(&v57, a4, v27);
          v37 = *(v35 + 32);
          if ((~v37 & 0x300) != 0)
          {
            *(v35 + 32) = v37 | 0x300;
          }

          result = v36(&v57, 0);
          if ((v41 & 0x100) == 0)
          {
            return result;
          }

LABEL_42:
          v18 = a4;
          v19 = v27;
          goto LABEL_43;
        }

LABEL_39:
        if ((v41 & 0x100) == 0)
        {
          return result;
        }

        goto LABEL_42;
      }

      v7 = a4;
      v45(v55, a4, v27);
      v63 = v55[6];
      v64 = v55[7];
      v65[0] = v56[0];
      *(v65 + 9) = *(v56 + 9);
      v59 = v55[2];
      v60 = v55[3];
      v61 = v55[4];
      v62 = v55[5];
      v57 = v55[0];
      v58 = v55[1];
      outlined destroy of Text.ResolvedProperties(&v57);
      if ((v59 & 0x100) != 0)
      {
        v16 = *(v53 + 16);
        if (v52 < *(v16 + 16))
        {
          if (!__OFADD__(v29, 1))
          {
            if (v29 + 1 <= *(v16 + v48 - 8))
            {
              v7 = *(v16 + v48 - 8);
            }

            else
            {
              v7 = v29 + 1;
            }

            swift_beginAccess();
            result = swift_isUniquelyReferenced_nonNull_native();
            *(v53 + 16) = v16;
            if (result)
            {
              goto LABEL_37;
            }

            goto LABEL_52;
          }

LABEL_51:
          __break(1u);
LABEL_52:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
          v16 = result;
LABEL_37:
          if (v52 >= *(v16 + 16))
          {
            __break(1u);
            return result;
          }

          *(v16 + v48 - 8) = v7;
          *(v53 + 16) = v16;
          swift_endAccess();
          v27 = v43;
          commit #1 <A>() in TextVariantsStorage.resolve<A>(into:in:with:)(v47, v51, a4);
          outlined consume of Text.Storage(v10, v49, v50);

          goto LABEL_39;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      swift_beginAccess();
      v16 = *(v53 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v53 + 16) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      }

      v7 = *(v16 + 16);
      v6 = v53;
      if (v52 >= v7)
      {
        goto LABEL_49;
      }

      *(v16 + v48) = 1;
      *(v53 + 16) = v16;
      swift_endAccess();
      if (v52 == v7 - 1)
      {
        v27 = v43;
        commit #1 <A>() in TextVariantsStorage.resolve<A>(into:in:with:)(v47, v51, a4);
        outlined consume of Text.Storage(v10, v49, v30);

        if ((v41 & 0x100) == 0)
        {
          return result;
        }

        goto LABEL_42;
      }

      outlined consume of Text.Storage(v10, v49, v30);

      v20 = 0;
      v21 = v52 + 1;
      v22 = v48 + 48;
      v10 = v42;
      v7 = v43;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if ((v41 & 0x100) != 0)
  {
    v18 = a4;
    v19 = v7;
LABEL_43:
    v39 = v40(&v57, v18, v19);
    if ((*(v38 + 32) & 0x100) == 0)
    {
      *(v38 + 32) |= 0x100u;
    }

    return v39(&v57, 0);
  }

  return result;
}

uint64_t commit #1 <A>() in TextVariantsStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, a3);
  return (*(v5 + 40))(a1, v7, a3);
}

uint64_t TextVariantsStorage.resolvesToEmpty(in:with:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *a2;
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v5, v23);

    v7 = v23[0];
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(*a1);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0;
    }
  }

  v26 = v7;
  TextVariantsStorage.variant(for:)(&v26, v24);
  if (v25)
  {
    v9 = 1;
    return v9 & 1;
  }

  v10 = v24[0];
  v11 = v24[1];
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v3 + 16);
    if (v10 < *(v13 + 16))
    {
      v14 = v13 + 48 * v10;
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      v17 = *(v14 + 48);
      swift_retain_n();
      outlined copy of Text.Storage(v16, v15, v17);

      v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v18);
      if (!v19 || (value = v5, v11 != v19[9]))
      {
        type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>();
        *(swift_allocObject() + 72) = v11;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>();
        value = PropertyList.Element.init(keyType:before:after:)(v21, 0, v5).value;
      }

      if (v4)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE015TextSizeVariantK033_22A2F77020526CCA53FF38DE37184183LLVG_Ttg5(v5, value);
      }

      if (v17)
      {
        v23[0] = value;
        v23[1] = v4;
        v26 = v6;
        v9 = (*(*v16 + 88))(v23, &v26);
        outlined consume of Text.Storage(v16, v15, 1);
      }

      else
      {
        outlined consume of Text.Storage(v16, v15, 0);

        v22 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v22 = v16 & 0xFFFFFFFFFFFFLL;
        }

        v9 = v22 == 0;
      }

      return v9 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t TextVariantsStorage.isEqual(to:)()
{
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 16);
    v3 = *(v2 + 16);
    if (v3)
    {
      v26 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v4 = (v2 + 56);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 8);
        v8 = *v4;
        outlined copy of Text.Storage(v5, v6, v7);
        v10 = *(v26 + 16);
        v9 = *(v26 + 24);

        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        *(v26 + 16) = v10 + 1;
        v11 = v26 + 32 * v10;
        *(v11 + 32) = v5;
        *(v11 + 40) = v6;
        *(v11 + 48) = v7;
        *(v11 + 56) = v8;
        v4 += 6;
        --v3;
      }

      while (v3);
      v24 = v26;
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v12 = *(v1 + 16);
    v13 = *(v12 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v25 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v25;
      v15 = (v12 + 56);
      do
      {
        v16 = *(v15 - 3);
        v17 = *(v15 - 2);
        v18 = *(v15 - 8);
        v19 = *v15;
        outlined copy of Text.Storage(v16, v17, v18);
        v21 = *(v25 + 16);
        v20 = *(v25 + 24);

        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        }

        *(v25 + 16) = v21 + 1;
        v22 = v25 + 32 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v17;
        *(v22 + 48) = v18;
        *(v22 + 56) = v19;
        v15 += 6;
        --v13;
      }

      while (v13);
    }

    LOBYTE(v1) = specialized Sequence<>.elementsEqual<A>(_:)(v14, v24);
  }

  return v1 & 1;
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v40 = a2 + 32;
  v41 = v5;
  v42 = v4;
  v43 = result + 32;
  while (1)
  {
    if (v3 == v4)
    {
      if (v2 == v5)
      {
        return 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = v4;
      goto LABEL_9;
    }

    if (v3 >= v4)
    {
      goto LABEL_89;
    }

    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v11 = v40 + 32 * v3;
    v6 = *(v11 + 24);
    v7 = *(v11 + 16);
    v9 = *v11;
    v8 = *(v11 + 8);
    outlined copy of Text.Storage(*v11, v8, v7);

    if (v2 == v5)
    {
      if (v6)
      {
LABEL_77:
        v30 = v9;
        v31 = v8;
        v32 = v7;
        v33 = v6;
        goto LABEL_78;
      }

      return 1;
    }

LABEL_9:
    if (v2 == v5)
    {
      goto LABEL_88;
    }

    v45 = v10;
    v12 = v43 + 32 * v2;
    v13 = *(v12 + 24);
    v52 = *v12;
    v50 = *(v12 + 16);
    v51 = *(v12 + 8);
    outlined copy of Text.Storage(*v12, v51, v50);

    if (!v6)
    {
      if (v13)
      {
        v30 = v52;
        v32 = v50;
        v31 = v51;
        v33 = v13;
LABEL_78:
        outlined consume of Text?(v30, v31, v32, v33);
        return 0;
      }

      return 1;
    }

    if (!v13)
    {
      goto LABEL_77;
    }

    if ((v7 & 1) == 0)
    {
      if (v50)
      {
        v36 = 1;
      }

      else
      {
        if (v9 == v52 && v8 == v51)
        {
          goto LABEL_20;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          goto LABEL_20;
        }

LABEL_75:
        v36 = v7;
      }

LABEL_82:
      v34 = v52;
      v35 = v51;
LABEL_83:
      outlined consume of Text.Storage(v34, v35, v36);

      v27 = v9;
      v28 = v8;
      v29 = v7;
LABEL_84:
      outlined consume of Text.Storage(v27, v28, v29);

      return 0;
    }

    if ((v50 & 1) == 0)
    {
      v36 = 0;
      goto LABEL_82;
    }

    v48 = *(*v9 + 96);
    outlined copy of Text.Storage(v9, v8, 1);
    outlined copy of Text.Storage(v52, v51, 1);
    v14 = v48(v52);
    outlined consume of Text.Storage(v52, v51, 1);
    result = outlined consume of Text.Storage(v9, v8, 1);
    if ((v14 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_20:
    v44 = v2;
    v15 = *(v6 + 16);
    if (v15 != *(v13 + 16))
    {
      v34 = v52;
      v36 = v50;
      v35 = v51;
      goto LABEL_83;
    }

    v46 = v9;
    v47 = v8;
    v49 = v7;
    if (v15 && v6 != v13)
    {
      v16 = 0;
      for (i = 0; v15 != i; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        if (i >= *(v13 + 16))
        {
          goto LABEL_87;
        }

        v20 = *(v6 + v16 + 32);
        v21 = *(v6 + v16 + 40);
        v22 = *(v13 + v16 + 32);
        v23 = *(v13 + v16 + 40);
        v24 = v21 >> 5;
        if (v21 >> 5 > 3)
        {
          if (v21 >> 5 <= 5)
          {
            if (v24 == 4)
            {
              v18 = (v23 & 0xE0) == 128;
            }

            else
            {
              v18 = (v23 & 0xE0) == 160;
            }

LABEL_25:
            if (!v18 || *&v20 != *&v22)
            {
LABEL_71:
              outlined consume of Text.Storage(v52, v51, v50);

              v27 = v46;
              v28 = v47;
              v29 = v49;
              goto LABEL_84;
            }

            goto LABEL_30;
          }

          if (v24 == 6)
          {
            if ((v23 & 0xE0) != 0xC0)
            {
              goto LABEL_71;
            }

            v38 = *(*v20 + 96);
            outlined copy of Text.Modifier(v20, v21);
            outlined copy of Text.Modifier(v22, v23);
            v25 = v38(v22);
            goto LABEL_56;
          }

          if (v20 | v21 ^ 0xE0)
          {
            if (v23 < 0xE0 || v22 != 1)
            {
              goto LABEL_71;
            }
          }

          else if (v23 < 0xE0 || *&v22 != 0.0)
          {
            goto LABEL_71;
          }

          if (v23 != 224)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v21 >> 5 > 1)
          {
            if (v24 == 2)
            {
              if ((v23 & 0xE0) != 0x40)
              {
                goto LABEL_71;
              }

              if (v21)
              {
                if ((v23 & 1) == 0)
                {
                  goto LABEL_71;
                }
              }

              else if ((v23 & 1) != 0 || *&v20 != *&v22)
              {
                goto LABEL_71;
              }

              goto LABEL_30;
            }

            v18 = (v23 & 0xE0) == 96;
            goto LABEL_25;
          }

          if (v24)
          {
            if ((v23 & 0xE0) != 0x20)
            {
              goto LABEL_71;
            }

            if (*&v20 != 0.0)
            {
              if (*&v22 == 0.0)
              {
                goto LABEL_71;
              }

              v39 = *(*v20 + 112);
              outlined copy of Text.Modifier(v20, v21);
              outlined copy of Text.Modifier(v22, v23);
              v25 = v39(v22);
LABEL_56:
              v26 = v25;
              outlined consume of Text.Modifier(v22, v23);
              result = outlined consume of Text.Modifier(v20, v21);
              if ((v26 & 1) == 0)
              {
                goto LABEL_71;
              }

              goto LABEL_30;
            }
          }

          else
          {
            if (v23 >= 0x20)
            {
              goto LABEL_71;
            }

            if (*&v20 != 0.0)
            {
              if (*&v22 == 0.0)
              {
                goto LABEL_71;
              }

              if (v20 == v22)
              {
                goto LABEL_30;
              }

              v37 = *(*v20 + 88);
              outlined copy of Text.Modifier(v20, v21);
              outlined copy of Text.Modifier(v22, v23);
              v25 = v37(v22);
              goto LABEL_56;
            }
          }

          if (*&v22 != 0.0)
          {
            goto LABEL_71;
          }
        }

LABEL_30:
        v16 += 16;
      }
    }

    v2 = v44 + 1;
    outlined consume of Text.Storage(v52, v51, v50);

    outlined consume of Text.Storage(v46, v47, v49);

    v5 = v41;
    v4 = v42;
    v3 = v45;
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t TextVariantsStorage.isStyled(options:)(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  if (!v4)
  {
LABEL_14:

    return 0;
  }

  v6 = 0;
  v7 = v3 + 32;
  v21 = v4;
  while (2)
  {
    if (v6 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 48 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 24);
    v22 = *(v8 + 16);
    if (v22 != 1)
    {

      v13 = v9;
      outlined copy of Text.Storage(v10, v9, 0);
LABEL_8:
      ++v6;
      v14 = (v11 + 40);
      v15 = *(v11 + 16) + 1;
      while (--v15)
      {
        v16 = *(v14 - 1);
        v17 = *v14;
        if ((*v14 & 0xE0) != 0xC0)
        {
          outlined copy of Text.Modifier(*(v14 - 1), *v14);

          outlined consume of Text.Storage(v10, v13, v22);

          outlined consume of Text.Modifier(v16, v17);
          return 1;
        }

        v14 += 16;
        v23 = v2;
        if ((*(*v16 + 80))(&v23))
        {

          v18 = v10;
          v19 = v13;
          v20 = v22;
          goto LABEL_16;
        }
      }

      outlined consume of Text.Storage(v10, v13, v22);

      v7 = v3 + 32;
      if (v6 != v21)
      {
        continue;
      }

      goto LABEL_14;
    }

    break;
  }

  v23 = v2;
  v12 = *(*v10 + 104);

  v13 = v9;
  outlined copy of Text.Storage(v10, v9, 1);
  if ((v12(&v23) & 1) == 0)
  {
    goto LABEL_8;
  }

  v18 = v10;
  v19 = v9;
  v20 = 1;
LABEL_16:
  outlined consume of Text.Storage(v18, v19, v20);

  return 1;
}

uint64_t initializeWithCopy for TextVariantsStorage.Variant(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for TextVariantsStorage.Variant(uint64_t a1, uint64_t a2)
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

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for TextVariantsStorage.Variant(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextVariantsStorage.Variant(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for TextVariantsStorage.Variant(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>);
    }
  }
}

unint64_t BitVector64.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = 1 << result;
    if (result >= 0x40)
    {
      v2 = 0;
    }

    return (*v1 & v2) != 0;
  }

  return result;
}

uint64_t BitVector64.subscript.setter(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2 < 0x40)
    {
      v3 = 1 << a2;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (result)
      {
LABEL_4:
        *v2 |= v3;
        return result;
      }
    }

    *v2 &= ~v3;
  }

  return result;
}

uint64_t (*BitVector64.subscript.modify(uint64_t (*result)(uint64_t a1), unint64_t a2))(uint64_t a1)
{
  *result = a2;
  *(result + 1) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 1 << a2;
    if (a2 >= 0x40)
    {
      v3 = 0;
    }

    *(result + 16) = (*v2 & v3) != 0;
    return BitVector64.subscript.modify;
  }

  return result;
}

uint64_t Collection.mapBool(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = a1;
  v36 = a2;
  v33 = a5;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v32 - v9;
  v34 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = type metadata accessor for Optional();
  v13 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v32 - v16);
  v18 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x1EEE9AC00](v18);
  v41 = type metadata accessor for EnumeratedSequence.Iterator();
  v32 = *(v41 - 8);
  v19 = MEMORY[0x1EEE9AC00](v41);
  v21 = &v32 - v20;
  MEMORY[0x193ABEF60](a3, v6, v19);
  v40 = v21;
  EnumeratedSequence.makeIterator()();
  v22 = 0;
  v23 = (v13 + 32);
  v37 = TupleTypeMetadata2 - 8;
  v24 = (v8 + 32);
  v25 = (v8 + 8);
  v26 = v34;
  while (1)
  {
    v27 = v38;
    EnumeratedSequence.Iterator.next()();
    (*v23)(v17, v27, v39);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
    {
      result = (*(v32 + 8))(v40, v41);
      *v33 = v22;
      return result;
    }

    v28 = *v17;
    (*v24)(v10, v17 + *(TupleTypeMetadata2 + 48), v26);
    v29 = v35(v10);
    result = (*v25)(v10, v26);
    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v28 < 0x40)
    {
      v31 = 1 << v28;
      if (v29)
      {
        goto LABEL_9;
      }

LABEL_2:
      v22 &= ~v31;
    }

    else
    {
      v31 = 0;
      if ((v29 & 1) == 0)
      {
        goto LABEL_2;
      }

LABEL_9:
      v22 |= v31;
    }
  }

  __break(1u);
  return result;
}

void BitVector.init(count:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 65)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if (!__OFADD__(a1, 63))
  {
    v4 = (a1 + 63) >> 6;
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 8 * v4);
LABEL_5:
    *a2 = a1 > 64;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = a1;
    return;
  }

  __break(1u);
}

uint64_t _sSa9repeating5countSayxGx_SitcfC7SwiftUI11BitVector64V_Tt1B5(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t BitVector.subscript.getter(uint64_t result)
{
  if ((*v1 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v4 = *(v1 + 8);
      v5 = 1 << result;
      if (result >= 0x40)
      {
        v5 = 0;
      }

      return (v4 & v5) != 0;
    }

    goto LABEL_10;
  }

  v2 = result >> 6;
  if (result >> 6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(v1 + 16);
  if (v2 < *(v3 + 16))
  {
    v4 = *(v3 + 8 * v2 + 32);
    v5 = 1 << result;
    return (v4 & v5) != 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t BitVector.subscript.setter(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = result;
  if ((*v3 & 1) == 0)
  {
    if (a2 < 0)
    {
      goto LABEL_15;
    }

    if (a2 < 0x40)
    {
      v8 = 1 << a2;
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
      if (result)
      {
LABEL_9:
        v9 = *(v3 + 8) | v8;
LABEL_12:
        *(v3 + 8) = v9;
        return result;
      }
    }

    v9 = *(v3 + 8) & ~v8;
    goto LABEL_12;
  }

  v6 = *(v3 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v7 = a2 >> 6;
    if (((a2 >> 6) & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    v7 = a2 >> 6;
    if (((a2 >> 6) & 0x8000000000000000) == 0)
    {
LABEL_4:
      if (v7 < *(v6 + 16))
      {
        result = BitVector64.subscript.setter(v5 & 1, a2 & 0x3F);
        *(v3 + 16) = v6;
        return result;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t (*BitVector.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = BitVector.subscript.getter(a2) & 1;
  return BitVector.subscript.modify;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance BitVector(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = BitVector.subscript.getter(v4) & 1;
  return protocol witness for MutableCollection.subscript.modify in conformance BitVector;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance BitVector(uint64_t a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], a1);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance BitVector(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance BitVector@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t *protocol witness for MutableCollection.swapAt(_:_:) in conformance BitVector(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result != *a2)
  {
    v4 = BitVector.subscript.getter(v2);
    v5 = BitVector.subscript.getter(v3);
    BitVector.subscript.setter(v5 & 1, v2);

    return BitVector.subscript.setter(v4 & 1, v3);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance BitVector(uint64_t *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x21uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 24);
  *v6 = *v2;
  *(v6 + 8) = v8;
  *(v6 + 24) = v9;
  *(v6 + 32) = BitVector.subscript.getter(v7) & 1;
  return protocol witness for Collection.subscript.read in conformance BitVector;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance BitVector@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[1];
  if (v3 >= v5)
  {
    v7 = *(v2 + 8);
    v6 = *(v2 + 16);
    *(a2 + 16) = *v2;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    *(a2 + 40) = v3;
    *a2 = v4;
    *(a2 + 8) = v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance BitVector(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

uint64_t *protocol witness for Collection.index(after:) in conformance BitVector@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(v2 + 24))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance BitVector(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(v1 + 24))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance BitVector@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(v2 + 24))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance BitVector(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance BitVector@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 24) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance BitVector(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 24);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance BitVector@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance BitVector()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

unint64_t lazy protocol witness table accessor for type BitVector64 and conformance BitVector64()
{
  result = lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64;
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64;
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64;
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64;
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BitVector and conformance BitVector()
{
  result = lazy protocol witness table cache variable for type BitVector and conformance BitVector;
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitVector and conformance BitVector;
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitVector and conformance BitVector;
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitVector and conformance BitVector;
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitVector and conformance BitVector;
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<BitVector> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<BitVector>(255, &lazy cache variable for type metadata for Slice<BitVector>, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<BitVector> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<BitVector>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<BitVector>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type BitVector and conformance BitVector();
    v7 = a3(a1, &type metadata for BitVector, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t initializeWithCopy for BitVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for BitVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for BitVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for BitVector(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for BitVector(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type BitVector.Kind and conformance BitVector.Kind()
{
  result = lazy protocol witness table cache variable for type BitVector.Kind and conformance BitVector.Kind;
  if (!lazy protocol witness table cache variable for type BitVector.Kind and conformance BitVector.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitVector.Kind and conformance BitVector.Kind);
  }

  return result;
}

uint64_t EnvironmentValues._defaultAccentColor.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (v1)
  {

    v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultAccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v2);

    if (v3)
    {
      return v3;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultAccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*v0);
    if (v4)
    {
      v3 = v4[9];

      if (v3)
      {
        return v3;
      }
    }
  }

  v7[2] = v2;
  v7[3] = v1;
  v3 = EnvironmentValues.defaultAccentColorProvider.getter();
  if (v3)
  {
    v7[0] = v2;
    v7[1] = v1;
    return (*(v5 + 8))(v7, v3, v5);
  }

  return v3;
}

uint64_t (*EnvironmentValues.accentColor.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.accentColor.modify;
}

uint64_t (*EnvironmentValues._accentColor.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues._accentColor.modify;
}

uint64_t EnvironmentValues.accentColor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    specialized EnvironmentValues.accentColor.setter(v3);
  }

  else
  {
    specialized EnvironmentValues.accentColor.setter(v2);
  }
}

uint64_t key path setter for EnvironmentValues._defaultAccentColor : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultAccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.defaultProvidedAccentColor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v5[2] = *v0;
  v5[3] = v2;
  result = EnvironmentValues.defaultAccentColorProvider.getter();
  if (result)
  {
    v5[0] = v1;
    v5[1] = v2;
    return (*(v4 + 8))(v5, result, v4);
  }

  return result;
}

void (*EnvironmentValues._defaultAccentColor.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v3[4] = *v1;
  v3[5] = v1[1];
  *v3 = EnvironmentValues._defaultAccentColor.getter();
  return EnvironmentValues._defaultAccentColor.modify;
}

void EnvironmentValues._defaultAccentColor.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = **a1;
  v5 = (*a1)[3];
  if (a2)
  {
    swift_retain_n();
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(v5, v4);

    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultAccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v2[4], *v2[3]);
    }
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(v5, v4);

    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultAccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v2[4], *v2[3]);
    }
  }

  free(v2);
}

uint64_t EnvironmentValues.defaultAccentColorProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(&v3);
  return v3;
}

uint64_t EnvironmentValues._systemAccentColor.getter()
{
  if (one-time initialization token for blue != -1)
  {
    swift_once();
  }
}

uint64_t EnvironmentValues._systemAccentValue.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012SystemAccenthI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v3, v7);

    LOBYTE(v5) = v7[0];
    if (LOBYTE(v7[0]) != 10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SystemAccentValueKey>();
    BloomFilter.init(hashValue:)(v6);
    result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(v3, v7[0]);
    if (result)
    {
      v5 = *(result + 72);
      if (v5 != 10)
      {
        goto LABEL_9;
      }
    }
  }

  result = swift_beginAccess();
  if (static PlatformSystemAccentValueDefinition.uiKit)
  {
    return (*(static PlatformSystemAccentValueDefinition.uiKit + 11))(result);
  }

  LOBYTE(v5) = 8;
LABEL_9:
  *a1 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues._systemAccentValue : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues._systemAccentValue.setter(char *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v3, *v2);
  }
}

uint64_t static PlatformSystemAccentValueDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = &static PlatformSystemAccentValueDefinition.appKit;
  }

  else
  {
    v1 = &static PlatformSystemAccentValueDefinition.uiKit;
  }

  swift_beginAccess();
  return *v1;
}

void (*EnvironmentValues._systemAccentValue.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v1[1];
  EnvironmentValues._systemAccentValue.getter((v3 + 40));
  return EnvironmentValues._systemAccentValue.modify;
}

void EnvironmentValues._systemAccentValue.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _SystemAccentValue.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](qword_18DDB2A90[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _SystemAccentValue.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](qword_18DDB2A90[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _SystemAccentValue.Role@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized _SystemAccentValue.Role.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

SwiftUI::_SystemAccentValue __swiftcall _SystemAccentValue.init(rawValue:)(Swift::Int rawValue)
{
  v2 = v1;
  result.role = specialized _SystemAccentValue.Role.init(rawValue:)(rawValue);
  if (result.role == SwiftUI__SystemAccentValue_Role_unknownDefault)
  {
    __break(1u);
  }

  else
  {
    v2->role = result.role;
  }

  return result;
}

uint64_t static PlatformSystemAccentValueDefinition.uiKit.setter(void *a1)
{
  result = swift_beginAccess();
  static PlatformSystemAccentValueDefinition.uiKit = a1;
  return result;
}

uint64_t static PlatformSystemAccentValueDefinition.appKit.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static PlatformSystemAccentValueDefinition.appKit = a1;
  return result;
}

uint64_t static PlatformSystemAccentValueDefinition.setDefinition(_:system:)(uint64_t result, _BYTE *a2)
{
  v2 = result;
  if (*a2 == 1)
  {
    v3 = &static PlatformSystemAccentValueDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return result;
    }

    v3 = &static PlatformSystemAccentValueDefinition.uiKit;
  }

  result = swift_beginAccess();
  if (!*v3)
  {
    *v3 = v2;
  }

  return result;
}

uint64_t specialized Color.AccentColorProvider.baseColor(in:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v1);

    if (v2)
    {
      return v2;
    }
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*a1);
    if (v3)
    {
      v2 = v3[9];

      if (v2)
      {
        return v2;
      }
    }
  }

  v4 = EnvironmentValues._defaultAccentColor.getter();
  if (v4)
  {
    return v4;
  }

  if (one-time initialization token for blue != -1)
  {
    swift_once();
  }

  v2 = static Color.blue;

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<SystemAccentValueKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>);
    }
  }
}

uint64_t specialized _SystemAccentValue.Role.init(rawValue:)(uint64_t a1)
{
  if ((a1 + 3) > 9)
  {
    return 10;
  }

  else
  {
    return byte_18DDB2AE0[a1 + 3];
  }
}

uint64_t getEnumTagSinglePayload for _SystemAccentValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _SystemAccentValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SystemAccentValue.Role and conformance _SystemAccentValue.Role()
{
  result = lazy protocol witness table cache variable for type _SystemAccentValue.Role and conformance _SystemAccentValue.Role;
  if (!lazy protocol witness table cache variable for type _SystemAccentValue.Role and conformance _SystemAccentValue.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SystemAccentValue.Role and conformance _SystemAccentValue.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor()
{
  result = lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor;
  if (!lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor;
  if (!lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor;
  if (!lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor);
  }

  return result;
}

uint64_t ConditionalMetadata<>.MakeView.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 32);
  if (*(v4 + 85))
  {
    v8 = specialized _GraphInputs.pushScope<A>(id:)(v11);
  }

  v12 = *v4;
  LODWORD(v57) = *(v5 + 24);
  *(&v57 + 1) = v12;
  v33 = *(v5 + 8);
  v58 = v33;
  *&v59 = v11;
  MEMORY[0x1EEE9AC00](v8);
  *(&v31 - 4) = a3;
  *&v51 = &type metadata for ViewDescriptor;
  *(&v51 + 1) = v13;
  *&v52 = a3;
  *(&v52 + 1) = &protocol witness table for ViewDescriptor;
  v14 = type metadata accessor for UnwrapConditional();
  *(&v31 - 3) = v14;
  *(&v31 - 2) = swift_getWitnessTable();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v12);
  v15 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, closure #1 in Attribute.init<A>(_:)partial apply, (&v31 - 6), v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v57 + 1));
  v17 = *(v5 + 40);
  if (!v17)
  {
    __break(1u);
  }

  v18 = v51;
  v19 = (*(v7 + 16))(v10, v17, a3);
  MEMORY[0x1EEE9AC00](v19);
  *(&v31 - 2) = a3;
  *(&v31 - 2) = v18;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, closure #1 in Attribute.setValue(_:)partial apply, (&v31 - 4), a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v20);
  (*(v7 + 8))(v10, a3);
  _GraphValue.init(_:)(v18, &v35);
  v21 = v35;
  v22 = *(v5 + 96);
  v59 = *(v5 + 80);
  v60 = v22;
  v61 = *(v5 + 112);
  v62 = *(v5 + 128);
  v23 = *(v5 + 64);
  v57 = *(v5 + 48);
  v58 = v23;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v45 = v59;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v43 = v57;
  v44 = v58;
  v25 = v59;
  LODWORD(v45) = 0;
  v34 = v21;
  v49[0] = v57;
  v49[1] = v58;
  v50 = v62;
  v49[3] = v60;
  v49[4] = v61;
  v49[2] = v45;
  v39 = v45;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v37 = v57;
  v38 = v58;
  v26 = v32;
  v27 = *(v32 + 24);
  outlined init with copy of _ViewInputs(&v57, &v51);
  outlined init with copy of _ViewInputs(v49, &v51);
  v27(v36, &v34, &v37, a3, v26);
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v51 = v37;
  v52 = v38;
  outlined destroy of _ViewInputs(&v51);
  LODWORD(v45) = v25;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v36, &v43);
    AGSubgraphEndTreeElement();
  }

  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  outlined destroy of _ViewInputs(&v37);
  v28 = v36[0];
  v29 = v36[1];

  *(v5 + 136) = v28;
  *(v5 + 144) = v29;
  return result;
}

uint64_t ConditionalMetadata<>.makeView<A>(ptr:view:inputs:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v9 = *(a3 + 16);
  v35 = *(a3 + 32);
  v36 = v8;
  v10 = *(a3 + 48);
  v37 = *(a3 + 64);
  v11 = *(a3 + 16);
  v34[0] = *a3;
  v34[1] = v11;
  v29 = v35;
  v30 = v10;
  v31 = *(a3 + 64);
  v38 = *(a3 + 80);
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  LODWORD(v32) = *(a3 + 80);
  v27 = v34[0];
  v28 = v9;
  *&v24 = v12;
  *(&v24 + 1) = v13;
  *&v25 = v14;
  DWORD2(v25) = a2;
  v26 = 0uLL;
  *(&v32 + 1) = 0;
  v33 = 0;
  v21[2] = a4;
  v21[3] = &v24;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v12);
  outlined init with copy of _ViewInputs(v34, v22);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v12);
  specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, 0, partial apply for closure #1 in ConditionalMetadata<>.makeView<A>(ptr:view:inputs:), v21, v12, v13);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v12);
  if (*(&v32 + 1))
  {
    v15 = v33;
    v16 = HIDWORD(v33);
    v17 = *(&v32 + 1);
  }

  else
  {
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v17;
  *(a5 + 8) = v15;
  *(a5 + 12) = v16;
  v22[6] = v30;
  v22[7] = v31;
  v22[8] = v32;
  v23 = v33;
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v22[5] = v29;
  v22[0] = v24;
  v22[1] = v25;
  View = type metadata accessor for ConditionalMetadata<>.MakeView();
  v19 = *(*(View - 8) + 8);

  return v19(v22, View);
}

uint64_t closure #1 in ConditionalMetadata<>.makeView<A>(ptr:view:inputs:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *(a4 + 32) = result;
    *(a4 + 40) = a3;
    View = type metadata accessor for ConditionalMetadata<>.MakeView();
    return TypeConformance<>.visitType<A>(visitor:)(a4, View, &protocol witness table for ConditionalMetadata<A><>.MakeView<A1>);
  }

  return result;
}

unint64_t *assignWithCopy for ConditionalMetadata(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  a1[1] = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

unint64_t *assignWithTake for ConditionalMetadata(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;

  return a1;
}

unint64_t *initializeBufferWithCopyOfBuffer for ConditionalTypeDescriptor(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = a2[2];
  return a1;
}

unint64_t *assignWithCopy for ConditionalTypeDescriptor(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  a1[1] = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  a1[2] = a2[2];
  return a1;
}

unint64_t *assignWithTake for ConditionalTypeDescriptor(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  a1[2] = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConditionalTypeDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t *assignWithCopy for ConditionalTypeDescriptor.Storage(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v5 = *a1;
  *a1 = v3;
  a1[1] = v4;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
  return a1;
}

unint64_t *assignWithTake for ConditionalTypeDescriptor.Storage(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalTypeDescriptor.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConditionalTypeDescriptor.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t outlined destroy of _ViewListOutputs?(uint64_t a1)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _ViewListOutputs?);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm()
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t destroy for ConditionalMetadata<>.MakeView(unint64_t *a1)
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*a1);
}

uint64_t initializeWithCopy for ConditionalMetadata<>.MakeView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithCopy for ConditionalMetadata<>.MakeView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  return a1;
}

uint64_t assignWithTake for ConditionalMetadata<>.MakeView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalMetadata<>.MakeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConditionalMetadata<>.MakeView(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t initializeWithCopy for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  swift_weakCopyInit();
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  v6 = *(a2 + 224);
  if (v6 == 255)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 184) = *(a2 + 184);
  }

  else
  {
    if (v6)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
    }

    else
    {
      v7 = *(a2 + 208);
      *(a1 + 208) = v7;
      (**(v7 - 8))(a1 + 184, a2 + 184);
    }

    *(a1 + 224) = v6 & 1;
    v8 = *(a2 + 240);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v8;
    *(a1 + 248) = *(a2 + 248);
  }

  return a1;
}

uint64_t assignWithCopy for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  swift_weakCopyAssign();
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v7;
  v8 = *(a2 + 224);
  if (*(a1 + 224) != 0xFF)
  {
    if (v8 == 255)
    {
      outlined destroy of _ViewListOutputs(a1 + 184);
      *(a1 + 184) = *(a2 + 184);
      v12 = *(a2 + 216);
      v13 = *(a2 + 232);
      v14 = *(a2 + 248);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 248) = v14;
      *(a1 + 232) = v13;
      *(a1 + 216) = v12;
      return a1;
    }

    if (a1 != a2)
    {
      outlined destroy of _ViewListOutputs.Views(a1 + 184);
      if (*(a2 + 224))
      {
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 224) = 1;
      }

      else
      {
        v16 = *(a2 + 208);
        *(a1 + 208) = v16;
        *(a1 + 216) = *(a2 + 216);
        (**(v16 - 8))(a1 + 184, a2 + 184);
        *(a1 + 224) = 0;
      }
    }

LABEL_14:
    *(a1 + 232) = *(a2 + 232);
    v17 = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 240) = v17;
    return a1;
  }

  if (v8 != 255)
  {
    if (v8)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
    }

    else
    {
      v15 = *(a2 + 208);
      *(a1 + 208) = v15;
      *(a1 + 216) = *(a2 + 216);
      (**(v15 - 8))(a1 + 184, a2 + 184);
    }

    *(a1 + 224) = v8 & 1;
    goto LABEL_14;
  }

  *(a1 + 184) = *(a2 + 184);
  v9 = *(a2 + 200);
  v10 = *(a2 + 216);
  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a1 + 216) = v10;
  *(a1 + 200) = v9;
  return a1;
}

uint64_t initializeWithTake for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  swift_weakTakeInit();
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t assignWithTake for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  swift_weakTakeAssign();
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  if (*(a1 + 224) == 0xFF)
  {
    goto LABEL_4;
  }

  if (*(a2 + 224) == 0xFF)
  {
    outlined destroy of _ViewListOutputs(a1 + 184);
LABEL_4:
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 184) = *(a2 + 184);
    return a1;
  }

  if (a1 != a2)
  {
    outlined destroy of _ViewListOutputs.Views(a1 + 184);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 209) = *(a2 + 209);
  }

  v5 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v5;
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalMetadata<>.MakeList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConditionalMetadata<>.MakeList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for UnwrapConditional(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for UnwrapConditional(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for UnwrapConditional(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 40))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnwrapConditional(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

Swift::Int Namespace.ID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t closure #1 in static ViewInputFlagModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ViewInputFlagModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t View.falseInput<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FalseViewInputBoolFlagModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(*(a5 + 16) + 56))(a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  View.modifier<A>(_:)(v15, a2, v11);
  return (*(v12 + 8))(v15, v11);
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA0C9InputFlagRd__r__lAA15ModifiedContentVyxAA0cdE8ModifierVyqd__GGAaBHPxAaBHD1__AhA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t CAHostingLayer.eventBindingManager.getter()
{
  specialized CAHostingLayer.eventBindingManager.getter();
}

double CAHostingLayer.lastRenderTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  *a1 = result;
  return result;
}

double CAHostingLayer.lastRenderTime.setter(double *a1)
{
  result = *a1;
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = *a1;
  return result;
}

uint64_t CAHostingLayer.focusedResponder.getter()
{
  specialized CAHostingLayer.focusedResponder.getter();
}

uint64_t key path getter for CAHostingLayer.displayLinkProvider : <A>CAHostingLayer<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CAHostingLayer.displayLinkProvider.getter();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned Selector) -> (@owned CADisplayLink?);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2);
}

uint64_t key path setter for CAHostingLayer.displayLinkProvider : <A>CAHostingLayer<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Selector) -> (@out CADisplayLink?);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  return CAHostingLayer.displayLinkProvider.setter(v4, v3);
}

uint64_t CAHostingLayer.displayLinkProvider.getter()
{
  v0 = specialized CAHostingLayer.displayLinkProvider.getter();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v0);
  return v0;
}

uint64_t CAHostingLayer.displayLinkProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6);
}

id CAHostingLayer.__allocating_init(rootView:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = specialized CAHostingLayer.init(rootView:environment:)(a1, a2);
  (*(*(*(v3 + 10) - 8) + 8))(a1);
  return v7;
}

id CAHostingLayer.init(rootView:environment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = specialized CAHostingLayer.init(rootView:environment:)(a1, a2);
  (*(*(*((v5 & v4) + 0x50) - 8) + 8))(a1);
  return v6;
}

uint64_t CAHostingLayer.init(layer:)(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ContinuousClock.Instant();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v5 & v3) + 0x50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *((v5 & v3) + 0x68);
  type metadata accessor for EventBindingManager();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = MEMORY[0x1E69E7CC8];
  *(v15 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v2 + v14) = v15;
  *(v2 + *((*v4 & *v2) + 0x70)) = 0;
  *(v2 + *((*v4 & *v2) + 0x78)) = 0;
  *(v2 + *((*v4 & *v2) + 0x80)) = 0;
  *(v2 + *((*v4 & *v2) + 0x88)) = 0;
  v16 = (v2 + *((*v4 & *v2) + 0x90));
  *v16 = 0;
  v16[1] = 0;
  v17 = *((*v4 & *v2) + 0xB0);
  v18 = type metadata accessor for CAHostingLayerEvent.Context();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  outlined init with copy of Any(v27, v30);
  v19 = *((v5 & v3) + 0x58);
  v20 = type metadata accessor for CAHostingLayer();
  if (swift_dynamicCast())
  {
    v21 = v29;
    CAHostingLayer.rootView.getter(v13);
    (*(v10 + 32))(v2 + *((*v4 & *v2) + 0x98), v13, v9);
    CAHostingLayer.environment.getter(v30);
    *(v2 + *((*v4 & *v2) + 0xA0)) = v30[0];
    static ContinuousClock.Instant.now.getter();
    (*(v25 + 32))(v2 + *((*v4 & *v2) + 0xA8), v8, v26);
    specialized static Update.begin()();
    type metadata accessor for ViewGraphHost();
    v22 = type metadata accessor for CALayerPlatformViewDefinition();
    *(v2 + *((*v4 & *v2) + 0x60)) = ViewGraphHost.__allocating_init<A>(rootViewType:viewDefinition:)(v9, v22, v9, v19);
    v28.receiver = v2;
    v28.super_class = v20;
    v23 = objc_msgSendSuper2(&v28, sel_initWithLayer_, v21);
    CAHostingLayer.postInit()();
    static Update.end()();

    __swift_destroy_boxed_opaque_existential_1(v27);
    return v23;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t @objc CAHostingLayer.init(layer:)()
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return CAHostingLayer.init(layer:)(&v1);
}

uint64_t CAHostingLayer.postInit()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  swift_beginAccess();
  *(v3 + 24) = &protocol witness table for CAHostingLayer<A>;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v3 + 40) = &protocol witness table for CAHostingLayer<A>;
  swift_unknownObjectWeakAssign();
  ViewGraphHost.setUp()();
  v4 = *(v1 + *((*v2 & *v1) + 0x68));
  swift_beginAccess();
  *(v4 + 24) = &protocol witness table for CAHostingLayer<A>;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v4 + 40) = &protocol witness table for CAHostingLayer<A>;
  return swift_unknownObjectWeakAssign();
}

id CAHostingLayer.__deallocating_deinit()
{
  v1 = type metadata accessor for CAHostingLayer();

  v2 = v0;
  specialized ViewGraphHost.tearDown(delegate:)();

  ViewGraphHost.clearDisplayLink()();

  ViewGraphHost.clearUpdateTimer()();

  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t @objc CAHostingLayer.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*&a1[*((*v2 & *a1) + 0x90)]);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x98)]);

  v5 = *((*v2 & *a1) + 0xA8);
  v6 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = &a1[*((*v2 & *a1) + 0xB0)];

  return outlined destroy of CAHostingLayerEvent.Context?(v7);
}

double @objc CAHostingLayer.bounds.getter(void *a1)
{
  v1 = a1;
  CAHostingLayer.bounds.getter();
  v3 = v2;

  return v3;
}

id CAHostingLayer.bounds.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAHostingLayer();
  return objc_msgSendSuper2(&v2, sel_bounds);
}

void @objc CAHostingLayer.bounds.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  CAHostingLayer.bounds.setter(a2, a3, a4, a5);
}

void *CAHostingLayer.bounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for CAHostingLayer();
  v17.receiver = v4;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, sel_bounds);
  v11 = v10;
  v13 = v12;
  v16.receiver = v4;
  v16.super_class = v9;
  result = objc_msgSendSuper2(&v16, sel_setBounds_, a1, a2, a3, a4);
  if (v11 != a3 || v13 != a4)
  {
    return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(8u, 0, v9, &protocol witness table for CAHostingLayer<A>);
  }

  return result;
}

double @objc CAHostingLayer.contentsScale.getter(void *a1)
{
  v1 = a1;
  CAHostingLayer.contentsScale.getter();
  v3 = v2;

  return v3;
}

id CAHostingLayer.contentsScale.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAHostingLayer();
  return objc_msgSendSuper2(&v2, sel_contentsScale);
}

void @objc CAHostingLayer.contentsScale.setter(void *a1, double a2)
{
  v3 = a1;
  CAHostingLayer.contentsScale.setter(a2);
}

void *CAHostingLayer.contentsScale.setter(double a1)
{
  v3 = type metadata accessor for CAHostingLayer();
  v8.receiver = v1;
  v8.super_class = v3;
  objc_msgSendSuper2(&v8, sel_contentsScale);
  v5 = v4;
  v7.receiver = v1;
  v7.super_class = v3;
  objc_msgSendSuper2(&v7, sel_setContentsScale_, a1);
  return CAHostingLayer.contentsScale.didset(v5);
}

void *CAHostingLayer.contentsScale.didset(double a1)
{
  result = [v1 contentsScale];
  if (v4 != a1)
  {
    v5 = type metadata accessor for CAHostingLayer();

    return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(2u, 1, v5, &protocol witness table for CAHostingLayer<A>);
  }

  return result;
}

Swift::Void __swiftcall CAHostingLayer.layoutSublayers()()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchTime();
  v35 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *((v4 & v2) + 0x50);
  v14 = *((v4 & v2) + 0x58);
  v15 = type metadata accessor for CAHostingLayer();
  v50.receiver = v1;
  v50.super_class = v15;
  objc_msgSendSuper2(&v50, sel_layoutSublayers);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v16 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v17 = *(v1 + *((*v3 & *v1) + 0x60));
  _MovableLockLock(v16);
  v18 = *(v17 + 136);
  if (v18)
  {
    *(v18 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
  }

  _MovableLockUnlock(v16);
  v19 = CACurrentMediaTime();
  v20 = *(v17 + 136);
  if (!v20 || (v21 = *(v20 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate), v22 = 0.0, v21 >= INFINITY) && v21 <= INFINITY)
  {
    aBlock = v19;
    v22 = CAHostingLayer.renderInterval(timestamp:)(&aBlock);
  }

  *(v1 + *((*v3 & *v1) + 0x78)) = 1;
  aBlock = 0.0;
  LOBYTE(v44) = 1;
  p_aBlock = &aBlock;
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(v22, 1, *&v21);
  *(v1 + *((*v3 & *v1) + 0x78)) = 0;
  if (*(v1 + *((*v3 & *v1) + 0x80)) == 1)
  {
    v49 = v1;
    UncheckedSendable.init(_:)(&v49, v15, &aBlock);
    v32 = aBlock;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v34 = v1;
    v33 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v35 = *(v35 + 8);
    (v35)(v9, v42);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 2) = v13;
    *(v25 + 3) = v14;
    *(v25 + 4) = v24;
    v25[5] = v19;
    v47 = partial apply for closure #2 in CAHostingLayer.layoutSublayers();
    v48 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed () -> ();
    v46 = &block_descriptor_4;
    v26 = _Block_copy(&aBlock);

    v27 = v36;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v28 = v38;
    v29 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v33;
    MEMORY[0x193ABFB50](v12, v27, v28, v26);
    _Block_release(v26);

    (*(v40 + 8))(v28, v29);
    (*(v37 + 8))(v27, v39);
    (v35)(v12, v42);
    *(v34 + *((*MEMORY[0x1E69E7D40] & *v34) + 0x80)) = 0;
  }

  _MovableLockUnlock(v16);
}

double CAHostingLayer.renderInterval(timestamp:)(double *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x70);
  v6 = *(v1 + v5);
  if (v6 == 0.0 || v2 < v6)
  {
    *(v1 + v5) = v2 + -0.000001;
    v4 = *v3 & *v1;
  }

  v8 = *(v4 + 112);
  result = v2 - *(v1 + v8);
  *(v1 + v8) = v2;
  return result;
}

void closure #2 in CAHostingLayer.layoutSublayers()(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = CACurrentMediaTime() - a1;
    v5 = MEMORY[0x1E69E7D40];
    v6 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x60));
    swift_beginAccess();
    v7 = v4 + *(v6 + 104);
    v8 = *(v3 + *((*v5 & *v3) + 0x60));
    swift_beginAccess();
    *(v8 + 104) = v7;
    CAHostingLayer.setNeedsUpdate()();
  }
}

double CAHostingLayer.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  result = *(v3 + 104);
  *a1 = result;
  return result;
}

uint64_t CAHostingLayer.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

Swift::Void __swiftcall CAHostingLayer.setNeedsUpdate()()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v3 = *(v1 + 136);
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
  }

  _MovableLockUnlock(v2);

  [v0 setNeedsLayout];
}

void @objc CAHostingLayer.layoutSublayers()(void *a1)
{
  v1 = a1;
  CAHostingLayer.layoutSublayers()();
}

uint64_t CAHostingLayer.rootView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t CAHostingLayer.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  specialized CAHostingLayer.rootView.setter(a1);
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

void *(*CAHostingLayer.rootView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAHostingLayer.rootView.modify;
}

void *key path setter for CAHostingLayer.environment : <A>CAHostingLayer<A>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return CAHostingLayer.environment.setter(v4);
}

void *CAHostingLayer.rootView.didset(unsigned int a1)
{
  v2 = type metadata accessor for CAHostingLayer();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(a1, 1, v2, &protocol witness table for CAHostingLayer<A>);
}

uint64_t CAHostingLayer.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0));
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void *CAHostingLayer.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0));
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return CAHostingLayer.rootView.didset(2u);
}

void *(*CAHostingLayer.environment.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAHostingLayer.environment.modify;
}

void *CAHostingLayer.rootView.modify(uint64_t a1, char a2, unsigned int a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CAHostingLayer.rootView.didset(a3);
  }

  return result;
}

double CAHostingLayer.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for CAHostingLayer();

  return ViewGraphRootValueUpdater._sizeThatFits(_:)(a1, a2 & 1, a3, a4 & 1, v8, &protocol witness table for CAHostingLayer<A>);
}

uint64_t CAHostingLayer.observeSizeThatFitsChanges(proposal:handler:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x60)) + 88);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 2;
  *(v15 + 56) = partial apply for closure #1 in ViewGraphHost.observeSizeThatFitsChanges(proposal:handler:);
  *(v15 + 64) = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v13 + 352);
  *(v13 + 352) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a1, a2 & 1, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  *(v13 + 352) = v18;
  swift_endAccess();
}

uint64_t CAHostingLayer.viewGraph.getter()
{
  specialized CAHostingLayer.viewGraph.getter();
}

uint64_t CAHostingLayer.stopObservingSizeThatFitsChanges(proposal:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();

  specialized ViewGraphGeometryObservers.stopObserving(proposal:)(a1, a2 & 1, a3, a4 & 1);
  swift_endAccess();
}

uint64_t CAHostingLayer.referenceInstant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

uint64_t CAHostingLayer.eventContext.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  outlined init with copy of CAHostingLayerEvent.Context?(&v1[v10], v8);
  v11 = type metadata accessor for CAHostingLayerEvent.Context();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    return outlined init with take of CAHostingLayerEvent.Context(v8, a1);
  }

  outlined destroy of CAHostingLayerEvent.Context?(v8);
  v13 = *((*v9 & *v1) + 0xA8);
  v14 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v14 - 8) + 16))(a1, &v1[v13], v14);
  v15 = (a1 + *(v11 + 20));
  *v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19CAHostingLayerEventV11MouseButtonV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v15[1] = 1000;
  v15[2] = MEMORY[0x1E69E7CD0];
  outlined init with copy of CAHostingLayerEvent.Context(a1, v5);
  (*(v12 + 56))(v5, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of CAHostingLayerEvent.Context?(v5, &v1[v10]);
  return swift_endAccess();
}

uint64_t CAHostingLayer.eventContext.setter(uint64_t a1)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  outlined init with take of CAHostingLayerEvent.Context(a1, &v9 - v4);
  v6 = type metadata accessor for CAHostingLayerEvent.Context();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  outlined assign with take of CAHostingLayerEvent.Context?(v5, v1 + v7);
  return swift_endAccess();
}

uint64_t CAHostingLayer.send(event:)(uint64_t (**a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for CAHostingLayerEvent.Context();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  CAHostingLayer.eventContext.getter(v6);
  v8 = v7(v6);
  result = CAHostingLayer.eventContext.setter(v6);
  v10 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v11 = *(v8 + 16);
  v12 = *MEMORY[0x1E69E7D40] & *v2;
  v23 = v2;
  v24 = *(v12 + 104);
  if (v11)
  {
    v13 = 0;
    v14 = v8 + 32;
    v22 = xmmword_18DDA6EB0;
    while (v13 < *(v8 + 16))
    {
      outlined init with copy of CAHostingLayerEvent.Resolved(v14, &v26);
      outlined init with copy of AnyTrackedValue(v27, v25);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v17 = v26;
      type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v22;
      *(inited + 32) = DynamicType;
      *(inited + 40) = v17;
      outlined init with copy of AnyTrackedValue(v27, inited + 48);
      outlined destroy of CAHostingLayerEvent.Resolved(&v26);
      v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (EventID, EventType)(inited + 32);
      swift_weakInit();
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      v20 = static Update._lock;
      _MovableLockLock(static Update._lock);
      specialized static Update.begin()();
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v15 = EventBindingManager.sendDownstream(_:)(v19);
      }

      else
      {
        v15 = MEMORY[0x1E69E7CD0];
      }

      ++v13;
      static Update.end()();
      _MovableLockUnlock(v20);

      swift_weakDestroy();
      result = specialized Array.append<A>(contentsOf:)(v15);
      v14 += 48;
      if (v11 == v13)
      {
        v10 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v21 = *(v10 + 16);

    return v21 != 0;
  }

  return result;
}

void CAHostingLayer.didUpdate(phase:in:)(_BYTE *a1)
{
  v1 = a1[1];
  if (v1 == 2 || v1 == 3 && !*a1)
  {
    EventBindingManager.reset(resetForwardedEventDispatchers:)(0);
  }
}

id CAHostingLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for EventGraphHost.eventBindingManager.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.eventBindingManager.getter();
}

uint64_t protocol witness for EventGraphHost.focusedResponder.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.focusedResponder.getter();
}

void protocol witness for EventBindingManagerDelegate.didUpdate(phase:in:) in conformance CAHostingLayer<A>(_BYTE *a1)
{
  v1 = a1[1];
  if (v1 == 2 || v1 == 3 && !*a1)
  {
    EventBindingManager.reset(resetForwardedEventDispatchers:)(0);
  }
}

uint64_t CAHostingLayer.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v19 = a1;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  ViewGraphHost.as<A>(_:)(a2, v10);
  if ((*(v11 + 48))(v10, 1, a2) != 1)
  {
    v17 = *(v11 + 32);
    v17(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10, a2);
    v17(a3, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
LABEL_19:
    v16 = 0;
    return (*(v11 + 56))(a3, v16, 1, a2);
  }

  (*(v8 + 8))(v10, v7);
  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderDelegate);
  if (result == a2)
  {
    v20 = v3;
    v21 = &protocol witness table for CAHostingLayer<A>;
    if (v12 == 16)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_11;
  }

  result = type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer);
  v15 = v19;
  if (result == v19)
  {
LABEL_11:
    v20 = v4;
    if (v12 == 8)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewRendererHost);
  if (result == v15)
  {
LABEL_13:
    v20 = v4;
    v21 = &protocol witness table for CAHostingLayer<A>;
    if (v12 == 16)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_15;
  }

  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for EventGraphHost);
  if (result == v15)
  {
LABEL_15:
    v20 = v4;
    v21 = &protocol witness table for CAHostingLayer<A>;
    if (v12 != 16)
    {
      __break(1u);
      goto LABEL_17;
    }

LABEL_18:
    (*(v11 + 16))(a3, &v20, a2);
    goto LABEL_19;
  }

  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphDelegate);
  if (result != a2)
  {
    v16 = 1;
    return (*(v11 + 56))(a3, v16, 1, a2);
  }

LABEL_17:
  v20 = v4;
  v21 = &protocol witness table for CAHostingLayer<A>;
  if (v12 == 16)
  {
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void (*CAHostingLayer.currentTimestamp.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 104);
  return CAHostingLayer.currentTimestamp.modify;
}

void CAHostingLayer.currentTimestamp.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*(*a1 + 80) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 80)) + 0x60));
  swift_beginAccess();
  *(v3 + 104) = v2;

  free(v1);
}

uint64_t CAHostingLayer.valuesNeedingUpdate.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  swift_beginAccess();
  return *(v1 + 112);
}

uint64_t CAHostingLayer.valuesNeedingUpdate.setter(__int16 a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  result = swift_beginAccess();
  *(v3 + 112) = a1;
  return result;
}

void (*CAHostingLayer.valuesNeedingUpdate.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 112);
  return CAHostingLayer.valuesNeedingUpdate.modify;
}

void CAHostingLayer.valuesNeedingUpdate.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*(*a1 + 72) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 72)) + 0x60));
  swift_beginAccess();
  *(v3 + 112) = v2;

  free(v1);
}

uint64_t CAHostingLayer.renderingPhase.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  result = swift_beginAccess();
  *a1 = *(v3 + 114);
  return result;
}

uint64_t CAHostingLayer.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  result = swift_beginAccess();
  *(v3 + 114) = v2;
  return result;
}

void (*CAHostingLayer.renderingPhase.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 114);
  return CAHostingLayer.renderingPhase.modify;
}

void CAHostingLayer.renderingPhase.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*(*a1 + 72) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 72)) + 0x60));
  swift_beginAccess();
  *(v3 + 114) = v2;

  free(v1);
}

uint64_t CAHostingLayer.externalUpdateCount.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  swift_beginAccess();
  return *(v1 + 120);
}

uint64_t CAHostingLayer.externalUpdateCount.setter(uint64_t a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  result = swift_beginAccess();
  *(v3 + 120) = a1;
  return result;
}

void (*CAHostingLayer.externalUpdateCount.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 120);
  return CAHostingLayer.externalUpdateCount.modify;
}

void CAHostingLayer.externalUpdateCount.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*(*a1 + 80) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 80)) + 0x60));
  swift_beginAccess();
  *(v3 + 120) = v2;

  free(v1);
}

Swift::Void __swiftcall CAHostingLayer.updateRootView()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v12 - v5;
  CAHostingLayer.rootView.getter(&v12 - v5);
  ViewGraphHost.setRootView<A>(_:)(v6, v3, *((v2 & v1) + 0x58), v7, v8, v9, v10, v11);
  (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall CAHostingLayer.updateEnvironment()()
{
  CAHostingLayer.environment.getter(&v12);
  [v0 contentsScale];
  v2 = v1;
  v3 = v12;

  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v4);
  if (v5)
  {
    value = v3;
    if (v2 == v5[9])
    {
      v7 = v13;
      if (!v13)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }
  }

  type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>();
  *(swift_allocObject() + 72) = v2;
  type metadata accessor for EnvironmentPropertyKey<DisplayScaleKey>();
  value = PropertyList.Element.init(keyType:before:after:)(v8, 0, v3).value;
  v7 = v13;
  if (v13)
  {
LABEL_4:
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v3, value);
  }

LABEL_6:

  v11[1] = v7;
  v9 = objc_allocWithZone(type metadata accessor for ViewGraphHostEnvironmentWrapper());

  v10 = [v9 init];
  ViewGraphHost.setEnvironment(_:wrapper:)(v11, v10);
}

Swift::Void __swiftcall CAHostingLayer.requestUpdate(after:)(Swift::Double after)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v11 = static Update._lock;
  _MovableLockLock(static Update._lock);
  if (after == 0.0)
  {
    v12 = *(v1 + *((*v3 & *v1) + 0x60));
    v13 = *(v12 + 88);
    swift_beginAccess();
    if (*(v13 + 168) != 1 || (v14 = *(v12 + 136)) == 0 || *(v14 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate) == INFINITY)
    {
      if (![objc_opt_self() isMainThread])
      {
        v32 = v1;
        v16 = *(v4 + 80);
        v17 = *(v4 + 88);
        v18 = type metadata accessor for CAHostingLayer();
        UncheckedSendable.init(_:)(&v32, v18, aBlock);
        v19 = aBlock[0];
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v20 = v1;
        v21 = static OS_dispatch_queue.main.getter();
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        v23[2] = v16;
        v23[3] = v17;
        v23[4] = v22;
        v30 = partial apply for closure #1 in CAHostingLayer.requestUpdate(after:);
        v31 = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v28 = thunk for @escaping @callee_guaranteed () -> ();
        v29 = &block_descriptor_13;
        v24 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x193ABFB70](0, v10, v7, v24);
        _Block_release(v24);

        (*(v26 + 8))(v7, v5);
        (*(v25 + 8))(v10, v8);
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if (after >= 0.25)
  {
    ViewGraphHost.startUpdateTimer(delay:)(after);
    goto LABEL_14;
  }

  v15 = *((*v3 & *v1) + 0x90);
  swift_beginAccess();
  if (!*(v1 + v15))
  {
    if (*(v1 + *((*v3 & *v1) + 0x78)))
    {
      *(v1 + *((*v3 & *v1) + 0x80)) = 1;
      goto LABEL_14;
    }

LABEL_11:
    CAHostingLayer.setNeedsUpdate()();
    goto LABEL_14;
  }

  v28 = v1;
  ViewGraphHost.startDisplayLink(delay:makeCADisplayLink:)(partial apply for closure #1 in CAHostingLayer.startDisplayLink(delay:), after);
LABEL_14:
  _MovableLockUnlock(v11);
}

void closure #1 in CAHostingLayer.requestUpdate(after:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CAHostingLayer.setNeedsUpdate()();
  }
}

uint64_t closure #1 in CAHostingLayer.startDisplayLink(delay:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x90));
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6);
  v7 = v6(a1, a2);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6);
  result = v7;
  if (!v7)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for ViewGraphOwner.viewGraph.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.viewGraph.getter();
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance CAHostingLayer<A>(uint64_t **a1))()
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
  v2[4] = CAHostingLayer.currentTimestamp.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance CAHostingLayer<A>(uint64_t **a1))()
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
  v2[4] = CAHostingLayer.valuesNeedingUpdate.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance CAHostingLayer<A>(uint64_t **a1))()
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
  v2[4] = CAHostingLayer.renderingPhase.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance CAHostingLayer<A>(uint64_t **a1))()
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
  v2[4] = CAHostingLayer.externalUpdateCount.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t CAHostingLayer.preferenceValue<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CAHostingLayer();

  return ViewGraphRootValueUpdater._preferenceValue<A>(_:)(a1, v8, a2, &protocol witness table for CAHostingLayer<A>, a3, a4);
}

uint64_t closure #1 in CAHostingLayer.convertAnchor<A>(_:)(uint64_t a1)
{

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);

  v6 = *(Value + 32);
  v7 = *(Value + 16);

  *&v8[0] = v3;
  *(&v8[0] + 1) = v4;
  v8[1] = v7;
  v8[2] = v6;
  Anchor.convert(to:)(v8, a1);
}

uint64_t CAHostingLayer.renderingRootView.getter()
{
  specialized CAHostingLayer.renderingRootView.getter();

  return swift_unknownObjectRetain();
}

id CAHostingLayer.updateRenderContext(_:)(void *a1)
{
  result = [v1 contentsScale];
  *a1 = v4;
  return result;
}

uint64_t protocol witness for ViewGraphRenderDelegate.renderingRootView.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.renderingRootView.getter();

  return swift_unknownObjectRetain();
}

uint64_t specialized CAHostingLayer.displayLinkProvider.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  swift_beginAccess();
  return *v1;
}

id specialized CAHostingLayer.init(rootView:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v26 = a1;
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ContinuousClock.Instant();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v25 = a2[1];
  v13 = *((v7 & v5) + 0x68);
  type metadata accessor for EventBindingManager();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = MEMORY[0x1E69E7CC8];
  *(v14 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v3 + v13) = v14;
  *(v3 + *((*v6 & *v3) + 0x70)) = 0;
  *(v3 + *((*v6 & *v3) + 0x78)) = 0;
  *(v3 + *((*v6 & *v3) + 0x80)) = 0;
  *(v3 + *((*v6 & *v3) + 0x88)) = 0;
  v15 = (v3 + *((*v6 & *v3) + 0x90));
  *v15 = 0;
  v15[1] = 0;
  v16 = *((*v6 & *v3) + 0xB0);
  v17 = type metadata accessor for CAHostingLayerEvent.Context();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = *((v7 & v5) + 0x50);
  (*(*(v18 - 8) + 16))(v3 + *((*v6 & *v3) + 0x98), v26, v18);
  v19 = (v3 + *((*v6 & *v3) + 0xA0));
  v20 = v25;
  *v19 = v12;
  v19[1] = v20;
  static ContinuousClock.Instant.now.getter();
  (*(v9 + 32))(v3 + *((*v6 & *v3) + 0xA8), v11, v8);
  specialized static Update.begin()();
  type metadata accessor for ViewGraphHost();
  v21 = type metadata accessor for CALayerPlatformViewDefinition();
  *(v3 + *((*v6 & *v3) + 0x60)) = ViewGraphHost.__allocating_init<A>(rootViewType:viewDefinition:)(v18, v21, v18, *((v7 & v5) + 0x58));
  v22 = type metadata accessor for CAHostingLayer();
  v27.receiver = v3;
  v27.super_class = v22;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  CAHostingLayer.postInit()();
  static Update.end()();

  return v23;
}

void specialized CAHostingLayer.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  type metadata accessor for EventBindingManager();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  *(v3 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v0 + v2) = v3;
  *(v0 + *((*v1 & *v0) + 0x70)) = 0;
  *(v0 + *((*v1 & *v0) + 0x78)) = 0;
  *(v0 + *((*v1 & *v0) + 0x80)) = 0;
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  v4 = (v0 + *((*v1 & *v0) + 0x90));
  *v4 = 0;
  v4[1] = 0;
  v5 = *((*v1 & *v0) + 0xB0);
  v6 = type metadata accessor for CAHostingLayerEvent.Context();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *specialized CAHostingLayer.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  return CAHostingLayer.rootView.didset(1u);
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1)
{
  type metadata accessor for (EventID, EventType)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<DisplayScaleKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>);
    }
  }
}

void type metadata completion function for CAHostingLayer()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContinuousClock.Instant();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [DispatchWorkItemFlags](319, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata accessor for [DispatchWorkItemFlags](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of CAHostingLayerEvent.Context?(uint64_t a1)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Selector) -> (@out CADisplayLink?)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v3(&v5, a1, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned Selector) -> (@owned CADisplayLink?)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t outlined init with take of CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAHostingLayerEvent.Context();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of CAHostingLayerEvent.Context?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CAHostingLayerEvent.Context?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAHostingLayerEvent.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static CodableByProxy<>.unwrap(codingProxy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v5(AssociatedTypeWitness, a4);
}

uint64_t CodableByProxy.serialize(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12[-v8 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  (*(a3 + 40))(a2, a3);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t static CodableByProxy.deserialize(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v14 = v9;
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(a3 + 48))(v11, a2, a3);
    (*(v14 + 8))(v11, AssociatedTypeWitness);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

BOOL protocol witness for static Serializable.deserialize(from:) in conformance HorizontalDirection@<W0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance HorizontalDirection(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

{
  return sub_18D3A2D8C(a1);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Edge(void *a1)
{
  return protocol witness for Serializable.serialize(to:) in conformance Edge(a1);
}

{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Edge@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Gradient@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AnyCodableBox.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(a3 + 32);
  v14(a2, a3);
  LOBYTE(v35[0]) = 0;
  v29 = a3;
  v30 = a2;
  v15 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = v32;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v17)
  {
    (*(v33 + 1))(v9, v15);
    return (*(v34 + 8))(v13, v11);
  }

  else
  {
    v32 = v11;
    v26 = *(v33 + 1);
    v26(v9, v15);
    v19 = v28;
    v20 = v35[5];
    v27 = 0;
    v33 = v13;
    v21 = v30;
    v14(v30, v29);
    (*(AssociatedConformanceWitness + 40))(v15, AssociatedConformanceWitness);
    v26(v19, v15);
    v35[3] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    v23 = v20;
    v24 = v33;
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
    static CodableBox.encode(_:to:)(v35, v24);
    (*(v34 + 8))(v24, v32);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }
}

uint64_t static AnyCodableBox.decode(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v21 = a2;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v19 - v7;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  result = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v19[0] = v11;
    v15 = v20;
    LOBYTE(v23[0]) = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    static CodableBox.decode(from:)(v17, v18, v23);
    (*(v15 + 8))(v8, AssociatedTypeWitness);
    (*(v19[0] + 8))(v13, v10);
    v23[6] = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    swift_checkMetadataState();
    return swift_dynamicCast();
  }

  return result;
}

uint64_t one-time initialization function for environment()
{
  type metadata accessor for CodingUserInfoKey?();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.environment);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.environment);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.environment.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.environment);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProxyCodable.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v3)
  {
    return (*(v7 + 32))(a3, v10, a2);
  }

  return result;
}

uint64_t Optional<A>.codingProxy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return CodableOptional.init(_:)(v6, *(a1 + 16), a2);
}

uint64_t CodableOptional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance <A> A?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CodableOptional();
  WitnessTable = swift_getWitnessTable();
  return static CodableByProxy<>.unwrap(codingProxy:)(a1, a2, a3, WitnessTable);
}

uint64_t RawRepresentable<>.codingProxy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

id protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance NSAttributedStringKey@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Array<A>.codingProxy.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[7] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[2] = a3;
  v9[3] = swift_getKeyPath();
  v3 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in Array<A>.codingProxy.getter, v9, v3, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  return v7;
}

uint64_t static Array<A>.unwrap(codingProxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static Array<A>.unwrap(codingProxy:), v8, v4, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array<A>.codingProxy.getter(*v3, *(a1 + 16), *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance <A> [A]@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.unwrap(codingProxy:)(*a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t JSONCodable.encode(to:)(void *a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = objc_opt_self();
  v12[0] = 0;
  v4 = [v3 dataWithJSONObject:_bridgeAnythingToObjectiveC<A>(_:)() options:0 error:v12];
  swift_unknownObjectRelease();
  v5 = v12[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    static String.Encoding.utf8.getter();
    result = String.init(data:encoding:)();
    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      outlined consume of Data._Representation(v6, v8);

      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = v5;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

uint64_t JSONCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v54[5] = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for Optional();
  v43 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v39 - v5;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JSONCodable();
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v51;
  dispatch thunk of Decoder.singleValueContainer()();
  if (v14)
  {
    goto LABEL_3;
  }

  v41 = v13;
  v42 = v11;
  v15 = v50;
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v18 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v20 = v19;
  static String.Encoding.utf8.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;
  result = (*(v49 + 8))(v10, v8);
  if (v23 >> 60 != 15)
  {
    v24 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v52[0] = 0;
    v26 = [v24 JSONObjectWithData:isa options:0 error:v52];

    v27 = v52[0];
    if (v26)
    {
      v49 = v21;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with copy of Any(v53, v52);
      v28 = v46;
      v29 = a2;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v53);
        outlined consume of Data?(v49, v23);

        v30 = v48;
        (*(v48 + 56))(v28, 0, 1, a2);
        v31 = v47;
        (*(v30 + 32))(v47, v28, a2);
        v32 = v45;
        v33 = v51;
      }

      else
      {
        v40 = v23;
        v30 = v48;
        (*(v48 + 56))(v28, 1, 1, a2);
        v31 = v47;
        closure #1 in implicit closure #1 in JSONCodable.init(from:)(v53, v18, v20);
        v33 = v51;
        __swift_destroy_boxed_opaque_existential_1(v53);
        outlined consume of Data?(v49, v40);

        v38 = (*(v30 + 48))(v28, 1, v29);
        v32 = v45;
        if (v38 != 1)
        {
          (*(v43 + 8))(v28, v15);
        }
      }

      v34 = v42;
      v35 = v44;
      v36 = v41;
      (*(v30 + 32))(v41, v31, v29);
      __swift_destroy_boxed_opaque_existential_1(v54);
      (*(v35 + 32))(v32, v36, v34);
      v16 = v33;
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    v37 = v27;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v21, v23);
    __swift_destroy_boxed_opaque_existential_1(v54);
    a1 = v51;
LABEL_3:
    v16 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in implicit closure #1 in JSONCodable.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  type metadata accessor for Any.Type();
  v5 = String.init<A>(describing:)();
  v7 = v6;
  type metadata accessor for JSONCodable.Error();
  swift_getWitnessTable();
  swift_allocError();
  *v8 = v5;
  v8[1] = v7;
  v8[2] = a2;
  v8[3] = a3;
  swift_willThrow();
}

uint64_t RawRepresentableProxy.encode(to:)(void *a1)
{
  return RawRepresentableProxy.encode(to:)(a1);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v8[-v4 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  dispatch thunk of RawRepresentable.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::Int ProxyCodable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> ProxyCodable<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  Hasher.init(_seed:)();
  a4(v8, a2, v6);
  return Hasher._finalize()();
}

uint64_t CodableOptional.base.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CodableOptional.base.setter(uint64_t a1)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CodableOptional.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableOptional<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CodableOptional.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CodableOptional<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance _DisplayList_Identity.CodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableOptional<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableOptional<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableOptional.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v24 - v6;
  v7 = type metadata accessor for Optional();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  type metadata accessor for CodableOptional.CodingKeys();
  swift_getWitnessTable();
  v33 = type metadata accessor for KeyedEncodingContainer();
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v29;
  v15 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v31;
  (*(v15 + 16))(v9, v32, v31);
  if ((*(v16 + 48))(v9, 1, v4) == 1)
  {
    (*(v12 + 8))(v14, v33);
    return (*(v15 + 8))(v9, v17);
  }

  else
  {
    v19 = v12;
    v20 = v24;
    (*(v16 + 32))(v24, v9, v4);
    v21 = v25;
    (*(v26 + 40))(v4, v26);
    v22 = v28;
    swift_getAssociatedConformanceWitness();
    v23 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v27 + 8))(v21, v22);
    (*(v16 + 8))(v20, v4);
    return (*(v19 + 8))(v14, v23);
  }
}

uint64_t CodableOptional.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for Optional();
  v27 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v26 - v7;
  v8 = type metadata accessor for Optional();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v26 - v9;
  type metadata accessor for CodableOptional.CodingKeys();
  swift_getWitnessTable();
  v37 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v26 - v10;
  v35 = a3;
  v39 = type metadata accessor for CodableOptional();
  v12 = *(v39 - 8);
  v13 = MEMORY[0x1EEE9AC00](v39);
  v15 = &v26 - v14;
  (*(*(a2 - 8) + 56))(&v26 - v14, 1, 1, a2, v13);
  v16 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    return (*(v12 + 8))(v15, v39);
  }

  else
  {
    v18 = v31;
    v19 = v32;
    v20 = v35;
    swift_getAssociatedConformanceWitness();
    v21 = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = &v26;
    MEMORY[0x1EEE9AC00](v21);
    *(&v26 - 2) = a2;
    *(&v26 - 1) = v20;
    v22 = v36;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in CodableOptional.init(from:), (&v26 - 4), MEMORY[0x1E69E73E0], a2, v23, v18);
    (*(v27 + 8))(v22, v19);
    (*(v33 + 8))(v11, v37);
    (*(v28 + 40))(v15, v18, v29);
    v24 = v39;
    (*(v12 + 16))(v30, v15, v39);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return (*(v12 + 8))(v15, v24);
  }
}

uint64_t CodableNSAttributes.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void CodableNSAttributes.encode(to:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v3 = MEMORY[0x193ABEC20](32, 0xE100000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = [v2 initWithString:v3 attributes:isa];

  CodableAttributedString.encode(to:)(a1);
}

void CodableNSAttributes.init(from:)(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  CodableAttributedString.init(from:)(a1, &v10);
  if (!v2)
  {
    v4 = v10;
    if ([v10 length] <= 0)
    {
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
      swift_willThrow();
    }

    else
    {
      v5 = [v4 attributesAtIndex:0 effectiveRange:0];
      type metadata accessor for NSAttributedStringKey(0);
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *a2 = v6;
    }
  }
}

uint64_t areEqual #1 <A>(lhs:rhs:) in static CodableNSAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v17);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t CodableNSAttributes.hash(into:)()
{
  v1 = *v0 + 64;
  v2 = 1 << *(*v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;
  v16 = *v0;

  v7 = 0;
  if (!v4)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v8 = v7;
LABEL_14:
      v11 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v12 = v11 | (v8 << 6);
      v13 = *(*(v16 + 48) + 8 * v12);
      outlined init with copy of Any(*(v16 + 56) + 32 * v12, v17);
      *&v21 = v13;
      outlined init with take of Any(v17, (&v21 + 8));
      v14 = v13;
      v10 = v8;
LABEL_15:
      v24[0] = v21;
      v24[1] = v22;
      v25 = v23;
      v15 = v21;
      if (!v21)
      {
      }

      outlined init with take of Any((v24 + 8), v20);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.hash(into:)();

      outlined init with copy of Any(v20, v19);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);

      v18 = 0;
      memset(v17, 0, sizeof(v17));
      result = outlined destroy of _DisplayList_AnyEffectAnimator?(v17, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable);
      v7 = v10;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    outlined init with take of AnyTrackedValue(v17, &v21);
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    dispatch thunk of Hashable.hash(into:)();

    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(&v21);
    v7 = v10;
  }

  while (v4);
LABEL_7:
  if (v5 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9 - 1;
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v4 = 0;
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      goto LABEL_15;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int CodableNSAttributes.hashValue.getter()
{
  Hasher.init(_seed:)();
  CodableNSAttributes.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodableNSAttributes()
{
  Hasher.init(_seed:)();
  CodableNSAttributes.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableNSAttributes()
{
  Hasher.init(_seed:)();
  CodableNSAttributes.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NSSecureCoding.serialize(to:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [v1 encodeWithCoder_];
  [v3 finishEncoding];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4 = [v3 encodedData];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  outlined consume of Data._Representation(v5, v7);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void *static NSSecureCoding.deserialize(from:)(void *a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v6 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    outlined copy of Data._Representation(v12, v13);
    v7 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
    outlined consume of Data._Representation(v12, v13);
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
    [v7 finishDecoding];
    if (v5)
    {
      outlined consume of Data._Representation(v12, v13);

      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      v9 = type metadata accessor for DecodingError();
      v14[6] = swift_allocError();
      v11 = v10;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v11 = a2;
      v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B08], v9);
      swift_willThrow();

      outlined consume of Data._Representation(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  return v5;
}

uint64_t static CodableBox.decode(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for ProxyCodable();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v12[15] = 1;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F48]);
  swift_getWitnessTable();
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v3)
  {
    a3[3] = a1;
    a3[4] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(a1 - 8) + 32))(boxed_opaque_existential_1, v9, a1);
  }

  return result;
}

uint64_t static CodableBox.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CodableBox);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v12);
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    CodableBox.serialize(into:)(a2, v4);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    outlined destroy of _DisplayList_AnyEffectAnimator?(v9, &lazy cache variable for type metadata for CodableBox?, &lazy cache variable for type metadata for CodableBox);
    v6 = type metadata accessor for EncodingError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for (Any, EncodingError.Context)();
    outlined init with copy of Any(a1, v8);
    type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F58]);
    KeyedEncodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
    return swift_willThrow();
  }
}

void type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
    v7 = a3(a1, &type metadata for CodableBoxCodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t CodableBox.serialize(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProxyCodable();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, v2, a2, v9);
  (*(v4 + 32))(v11, v6, a2);
  v14 = 1;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F58]);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v11, v7);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CodableBoxCodingKeys@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableBoxCodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 6775156;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableBoxCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableBoxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableBoxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.WeightModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5[6];
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.WidthModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.WidthModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5[6];
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.GradeModifier(void *a1)
{
  return protocol witness for Serializable.serialize(to:) in conformance Font.GradeModifier(a1);
}

{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.GradeModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5[6];
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.StylisticAlternativeModifier@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
    lazy protocol witness table accessor for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.VariationModifier(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  lazy protocol witness table accessor for type Font.VariationDefinition and conformance Font.VariationDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.FeatureSettingModifier(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.OpenTypeFeatureSettingModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  type metadata accessor for [String]();
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.OpenTypeFeatureSettingModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for [String]();
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance LanguageFontModifier(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance LanguageFontModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance LanguageAwareLineHeightRatioFontModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance LanguageAwareLineHeightRatioFontModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.WeightModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.Weight@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance ResolvedColorProvider(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  type metadata accessor for Color.RGBADefinition<Float, Float>();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float> and conformance Color.RGBADefinition<A, B>, type metadata accessor for Color.RGBADefinition<Float, Float>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

double protocol witness for static Serializable.deserialize(from:) in conformance ResolvedColorProvider@<D0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  *&result = specialized static CodableByProxy.deserialize(from:)(a1, &v5).n128_u64[0];
  if (!v2)
  {
    result = v5.n128_f64[0];
    *a2 = v5;
    a2[1].n128_u32[0] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.DisplayP3(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  type metadata accessor for Color.RGBADefinition<CGFloat, Float>();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Color.RGBADefinition<CGFloat, Float> and conformance Color.RGBADefinition<A, B>, type metadata accessor for Color.RGBADefinition<CGFloat, Float>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.DisplayP3(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance AccessibilityTextContentType(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance AccessibilityTextContentType@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance TextJustification(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type TextJustification.Storage and conformance TextJustification.Storage();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance TextJustification@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type TextJustification.Storage and conformance TextJustification.Storage();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance AXCustomContentImportance@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance AccessibilityHeadingLevel(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance AccessibilityHeadingLevel@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = specialized static AccessibilityHeadingLevel.unwrap(codingProxy:)(v6[6]);
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Text.LineStyle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2 | 1;
  a2[1] = v3;
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.Resolved(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance ContentStyle.ID(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  type metadata accessor for RawRepresentableProxy<ContentStyle.ID>();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type RawRepresentableProxy<ContentStyle.ID> and conformance RawRepresentableProxy<A>, type metadata accessor for RawRepresentableProxy<ContentStyle.ID>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance ContentStyle.ID@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for RawRepresentableProxy<ContentStyle.ID>();
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type RawRepresentableProxy<ContentStyle.ID> and conformance RawRepresentableProxy<A>, type metadata accessor for RawRepresentableProxy<ContentStyle.ID>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Text.Encapsulation.Scale(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  v8 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v12 = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  a4(0);
  a5();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Text.Encapsulation.Scale@<X0>(void *a1@<X0>, void (*a2)(void)@<X3>, void (*a3)(void)@<X4>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    a2(0);
    a3();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a4 = v9[6];
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Alignment(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Alignment@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.TextStyleProvider(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  lazy protocol witness table accessor for type Font.StyleDefinition and conformance Font.StyleDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.PrivateTextStyleProvider@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.VariationAxisIdentifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
  lazy protocol witness table accessor for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.VariationAxisIdentifier@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
    lazy protocol witness table accessor for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.StylisticAlternativeModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
  lazy protocol witness table accessor for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

{
  return sub_18D3A2E84(a1);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Text.Scale(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type Text.Scale.Storage and conformance Text.Scale.Storage();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Text.Scale@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Text.Scale.Storage and conformance Text.Scale.Storage();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.NamedColor@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Visibility(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Visibility@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.OpacityColor(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.HierarchicalOpacityColor@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.SettingOpacityProvider(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance TextAlignment@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance LayoutDirection(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10 = v6;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  a4();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance LayoutDirection@<X0>(void *a1@<X0>, void (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    a2();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a3 = v8;
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.PlatformFontProvider(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.PlatformFontProvider@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance EitherGradient@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  return outlined copy of EitherGradient(v2, v3);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance ColorGradientProvider@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for ProxyCodable<Color>();
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Error and conformance Error()
{
  result = lazy protocol witness table cache variable for type Error and conformance Error;
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error and conformance Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error and conformance Error;
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error and conformance Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error and conformance Error;
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error and conformance Error);
  }

  return result;
}

uint64_t specialized static CodableNSAttributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = *(*(v2 + 48) + 8 * v14);
      outlined init with copy of Any(*(v2 + 56) + 32 * v14, v23);
      *&v28 = v15;
      outlined init with take of Any(v23, (&v28 + 8));
      v16 = v15;
      v12 = v10;
LABEL_16:
      v31[0] = v28;
      v31[1] = v29;
      v32 = v30;
      v17 = v28;
      if (!v28)
      {

        return 1;
      }

      outlined init with take of Any((v31 + 8), v27);
      if (!*(v3 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v19 & 1) == 0))
      {

        v22 = v27;
LABEL_26:
        __swift_destroy_boxed_opaque_existential_1(v22);
        return 0;
      }

      outlined init with copy of Any(*(v3 + 56) + 32 * v18, &v28);
      outlined init with take of Any(&v28, v26);
      outlined init with copy of Any(v27, v25);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Equatable);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v26);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      result = outlined destroy of _DisplayList_AnyEffectAnimator?(v23, &lazy cache variable for type metadata for Equatable?, &lazy cache variable for type metadata for Equatable);
      v9 = v12;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    outlined init with take of AnyTrackedValue(v23, &v28);
    v20 = *(&v29 + 1);
    v21 = __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    LOBYTE(v20) = areEqual #1 <A>(lhs:rhs:) in static CodableNSAttributes.== infix(_:_:)(v21, v26, v20);

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v27);
    if ((v20 & 1) == 0)
    {

      v22 = &v28;
      goto LABEL_26;
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v28);
    v9 = v12;
  }

  while (v6);
LABEL_8:
  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      goto LABEL_16;
    }

    v6 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1)
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

void type metadata accessor for RawRepresentableProxy<NSAttributedStringKey>()
{
  if (!lazy cache variable for type metadata for RawRepresentableProxy<NSAttributedStringKey>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for RawRepresentableProxy();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RawRepresentableProxy<NSAttributedStringKey>);
    }
  }
}

uint64_t associated type witness table accessor for CodableByProxy.CodingProxy : Decodable in <A> [A]()
{
  return associated type witness table accessor for CodableByProxy.CodingProxy : Decodable in <A> [A]();
}

{
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t instantiation function for generic protocol witness table for <A> [A](uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CodableNSAttributes(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes();
  result = lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes()
{
  result = lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes;
  if (!lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes;
  if (!lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes;
  if (!lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CodableOptional(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

void *initializeWithTake for CodableOptional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for CodableOptional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for CodableOptional(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for CodableOptional(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void *type metadata accessor for Error()
{
  return &unk_1F0054478;
}

{
  return &unk_1F009E308;
}

void type metadata accessor for ProxyCodable<Color>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Color>)
  {
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.StyleDefinition and conformance Font.StyleDefinition()
{
  result = lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition;
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition;
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition);
  }

  return result;
}

void type metadata accessor for Color.RGBADefinition<CGFloat, Float>()
{
  if (!lazy cache variable for type metadata for Color.RGBADefinition<CGFloat, Float>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for Color.RGBADefinition();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color.RGBADefinition<CGFloat, Float>);
    }
  }
}

void type metadata accessor for Color.RGBADefinition<Float, Float>()
{
  if (!lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>)
  {
    v0 = type metadata accessor for Color.RGBADefinition();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableDisplayGamut and conformance CodableDisplayGamut()
{
  result = lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut;
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut;
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility()
{
  result = lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility;
  if (!lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility;
  if (!lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Scale.Storage and conformance Text.Scale.Storage()
{
  result = lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage;
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage;
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage;
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative()
{
  result = lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative;
  if (!lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative;
  if (!lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RawRepresentableProxy<Font.VariationAxisIdentifier>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for RawRepresentableProxy();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier()
{
  result = lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier;
  if (!lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier;
  if (!lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RawRepresentableProxy<Font.VariationAxisIdentifier>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment()
{
  result = lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment;
  if (!lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment;
  if (!lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment);
  }

  return result;
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationPlatterSize>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationPlatterSize>)
  {
    type metadata accessor for NSTextEncapsulationPlatterSize(255);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationPlatterSize and conformance NSTextEncapsulationPlatterSize, type metadata accessor for NSTextEncapsulationPlatterSize);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationPlatterSize>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationPlatterSize> and conformance CodableRawRepresentable<A>()
{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationPlatterSize> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationPlatterSize>);
}

{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationPlatterSize> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationPlatterSize>);
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationStyle>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationStyle>)
  {
    type metadata accessor for NSTextEncapsulationStyle(255);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationStyle and conformance NSTextEncapsulationStyle, type metadata accessor for NSTextEncapsulationStyle);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationStyle>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationStyle> and conformance CodableRawRepresentable<A>()
{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationStyle> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationStyle>);
}

{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationStyle> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationStyle>);
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationShape>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationShape>)
  {
    type metadata accessor for NSTextEncapsulationShape(255);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationShape and conformance NSTextEncapsulationShape, type metadata accessor for NSTextEncapsulationShape);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationShape>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationShape> and conformance CodableRawRepresentable<A>()
{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationShape> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationShape>);
}

{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationShape> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationShape>);
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationScale>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationScale>)
  {
    type metadata accessor for NSTextEncapsulationScale(255);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationScale and conformance NSTextEncapsulationScale, type metadata accessor for NSTextEncapsulationScale);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationScale>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationScale> and conformance CodableRawRepresentable<A>()
{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationScale> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationScale>);
}

{
  return _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationScale> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationScale>);
}

void type metadata accessor for RawRepresentableProxy<ContentStyle.ID>()
{
  if (!lazy cache variable for type metadata for RawRepresentableProxy<ContentStyle.ID>)
  {
    lazy protocol witness table accessor for type ContentStyle.ID and conformance ContentStyle.ID();
    v0 = type metadata accessor for RawRepresentableProxy();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RawRepresentableProxy<ContentStyle.ID>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContentStyle.ID and conformance ContentStyle.ID()
{
  result = lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID;
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID;
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID;
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID;
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextJustification.Storage and conformance TextJustification.Storage()
{
  result = lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue;
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue;
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue;
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue;
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight()
{
  result = lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight;
  if (!lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight;
  if (!lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight);
  }

  return result;
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

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [String]();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition()
{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition;
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.VariationDefinition and conformance Font.VariationDefinition()
{
  result = lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition;
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition;
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition);
  }

  return result;
}

void type metadata accessor for (Any, EncodingError.Context)()
{
  if (!lazy cache variable for type metadata for (Any, EncodingError.Context))
  {
    type metadata accessor for EncodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Any, EncodingError.Context));
    }
  }
}

uint64_t destroy for JSONCodable.Error()
{
}

void *initializeWithCopy for JSONCodable.Error(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for JSONCodable.Error(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for JSONCodable.Error(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for JSONCodable.Error(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for JSONCodable.Error(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t ImagePaint.init(image:sourceRect:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

uint64_t ImagePaint.image.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void ImagePaint.sourceRect.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t ImagePaint._Paint.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 12) = *(v1 + 92);
  v4 = *(v14 + 12);
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 92) = v4;
  return outlined init with copy of GraphicsImage(v10, &v9);
}

__n128 ImagePaint._Paint.image.setter(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v10[0] = v3;
  *(v10 + 12) = *(v1 + 92);
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  outlined destroy of GraphicsImage(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  *(v1 + 92) = *(a1 + 92);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

void ImagePaint._Paint.sourceRect.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

_OWORD *ImagePaint._Paint.init(image:sourceRect:scale:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = result[5];
  *(a2 + 64) = result[4];
  *(a2 + 80) = v7;
  *(a2 + 92) = *(result + 92);
  v8 = result[1];
  *a2 = *result;
  *(a2 + 16) = v8;
  v9 = result[3];
  *(a2 + 32) = result[2];
  *(a2 + 48) = v9;
  *(a2 + 112) = a3;
  *(a2 + 120) = a4;
  *(a2 + 128) = a5;
  *(a2 + 136) = a6;
  *(a2 + 144) = a7;
  return result;
}

uint64_t ImagePaint._Paint.draw(path:style:in:bounds:)(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = *a4;
  v37 = a2[1];
  v38 = *a2;
  v8 = *(a2 + 4);
  v9 = *(a2 + 40);
  v10 = *(v4 + 80);
  v71 = *(v4 + 64);
  v72[0] = v10;
  *(v72 + 12) = *(v4 + 92);
  v11 = *(v4 + 16);
  v67 = *v4;
  v68 = v11;
  v12 = *(v4 + 48);
  v69 = *(v4 + 32);
  v70 = v12;
  v13 = *(v4 + 112);
  v14 = *(v4 + 120);
  v16 = *(v4 + 128);
  v15 = *(v4 + 136);
  v17 = *(v4 + 144);
  if ((a4[2] & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  v18 = *(a1 + 32);
  if (v18 > 2)
  {
    if (v18 == 5)
    {
      v19 = *a1;
      if (*(v7 + 16))
      {
        if (*(v7 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v20 = MEMORY[0x193AC3640](v19 + 24);
        }

        x = v20;
        y = v21;
        goto LABEL_15;
      }

      v22 = *(v7 + 24);
      if (v22)
      {
        v23 = v22;

        PathBoundingBox = CGPathGetPathBoundingBox(v23);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;

LABEL_15:
        outlined destroy of Path(a1);
        *&v7 = x;
        *(&v7 + 1) = y;
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (v18 == 6)
    {
      v7 = *MEMORY[0x1E695F050];
      goto LABEL_16;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v18 >= 2)
  {
    v7 = *(v7 + 16);
  }

LABEL_16:
  v40 = v7;
  v24 = 1.0;
  v25 = 1.0;
  if (*&v68 != 0.0)
  {
    v32 = *&v69;
    if (BYTE8(v69) > 3u)
    {
      v33 = *(&v68 + 1);
    }

    else
    {
      v33 = *&v69;
      v32 = *(&v68 + 1);
    }

    v34 = 1.0 / *&v68 * v32;
    v35 = 1.0 / *&v68 * v33;
    if (v34 == 0.0)
    {
      if (v35 == 0.0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = 1.0 / v34;
      if (v35 == 0.0)
      {
        goto LABEL_17;
      }
    }

    v24 = 1.0 / v35;
  }

LABEL_17:
  v74.origin.x = v13;
  v74.origin.y = v14;
  v74.size.width = v16;
  v74.size.height = v15;
  if (!CGRectIsNull(v74))
  {
    v75.origin.x = v13;
    v75.origin.y = v14;
    v75.size.width = v16;
    v75.size.height = v15;
    if (!CGRectIsInfinite(v75))
    {
      v26 = v13 * v25;
      v76.origin.x = v13;
      v76.origin.y = v14;
      v76.size.width = v16;
      v76.size.height = v15;
      v27 = v25 * CGRectGetWidth(v76);
      v77.origin.x = v13;
      v77.origin.y = v14;
      v77.size.width = v16;
      v77.size.height = v15;
      v15 = v24 * CGRectGetHeight(v77);
      v13 = v26;
      v14 = v14 * v24;
      v16 = v27;
    }
  }

  v28 = *(v4 + 80);
  v59 = *(v4 + 64);
  *v60 = v28;
  *&v60[12] = *(v4 + 92);
  v29 = *(v4 + 16);
  v55 = *v4;
  v56 = v29;
  v30 = *(v4 + 48);
  v57 = *(v4 + 32);
  v58 = v30;
  v61 = v40;
  *&v62 = v13;
  *(&v62 + 1) = v14;
  *&v63 = v16;
  *(&v63 + 1) = v15;
  v64 = v17;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi6_(&v55);
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v48 = v59;
  v49 = *v60;
  v50 = *&v60[16];
  v51 = v61;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v41[0] = v38;
  v41[1] = v37;
  v42 = v8;
  v43 = v9;
  outlined init with copy of GraphicsImage(&v67, v65);
  GraphicsContext.draw(_:with:style:)(a1, &v44, v41, a3);
  v65[8] = v52;
  v65[9] = v53;
  v66 = v54;
  v65[4] = v48;
  v65[5] = v49;
  v65[6] = v50;
  v65[7] = v51;
  v65[0] = v44;
  v65[1] = v45;
  v65[2] = v46;
  v65[3] = v47;
  return outlined destroy of GraphicsContext.ResolvedShading(v65);
}