uint64_t protocol witness for SetAlgebra.insert(_:) in conformance AttributedString.Keys(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = specialized Set._Variant.insert(_:)(v7, *a2, v4);
  outlined consume of AttributedString.AnyAttribute(v7[0], v7[1]);
  *a1 = v3;
  a1[1] = v4;
  return v5 & 1;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance AttributedString.Keys@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized Set._Variant.remove(_:)(*a1, *(a1 + 8));
  if ((~v4 & 0xF000000000000007) == 0)
  {
    result = 0;
    v4 = 0;
LABEL_4:
    *a2 = result;
    a2[1] = v4;
    return result;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  outlined consume of AttributedString.AnyAttribute?(result, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance AttributedString.Keys@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AttributedString.Keys.update(with:)(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *protocol witness for SetAlgebra.formIntersection(_:) in conformance AttributedString.Keys(uint64_t *a1)
{
  result = specialized _NativeSet.intersection(_:)(*a1, *v1, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  *v1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance AttributedString.Keys@<X0>(uint64_t *a1@<X0>, void **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v7 = *v2;

  specialized Set.formSymmetricDifference(_:)(v4);

  *a2 = specialized _NativeSet.intersection(_:)(v7, v5, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
}

uint64_t protocol witness for SetAlgebra.isSubset(of:) in conformance AttributedString.Keys(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = specialized _NativeSet.intersection(_:)(v2, v3, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  LOBYTE(v3) = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v4, v3);

  return v3 & 1;
}

uint64_t protocol witness for SetAlgebra.isDisjoint(with:) in conformance AttributedString.Keys(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = specialized _NativeSet.intersection(_:)(v2, v3, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  LOBYTE(v3) = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v4, MEMORY[0x1E69E7CD0]);

  return v3 & 1;
}

uint64_t protocol witness for SetAlgebra.isSuperset(of:) in conformance AttributedString.Keys(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;

  v4 = specialized _NativeSet.intersection(_:)(v2, v3, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  LOBYTE(v3) = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v4, v3);

  return v3 & 1;
}

uint64_t protocol witness for SetAlgebra.subtract(_:) in conformance AttributedString.Keys()
{
  v1 = *v0;
  v5 = *v0;

  specialized Set.formSymmetricDifference(_:)(v2);
  v3 = specialized _NativeSet.intersection(_:)(v5, v1, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

  *v0 = v3;
  return result;
}

void *AttributedString.Keys.remove(_:)(void *a1)
{
  result = specialized Set._Variant.remove(_:)(a1, 0x8000000000000000);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if (v2 < 0)
  {
    outlined consume of AttributedString.AnyAttribute?(result, v2);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t AttributedString.Keys.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = -1 << *(*v1 + 32);
  v3 = ~v2;
  v4 = *v1 + 56;
  v5 = -v2;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v1 + 56);
  *a1 = *v1;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v7;
}

uint64_t AttributedString.Keys.SetIterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        result = 0;
        v0[3] = v6;
        v0[4] = 0;
        return result;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v3 = v0[3];
LABEL_10:
  v7 = (*(*v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = *v7;
  v9 = v7[1];
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  if (v9 < 0)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance AttributedString.Keys.SetIterator@<X0>(uint64_t *a1@<X8>)
{
  result = AttributedString.Keys.SetIterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedString.Keys@<X0>(void *a1@<X8>)
{
  AttributedString.Keys.makeIterator()(a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.Keys()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);

  return v1;
}

void AttributedString.AttributeDependencies.init<A>(from:to:)(void **a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *a1;
  *a4 = *a1;

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SD4KeysVyAjfGEAKV_GTt0g5(v9);
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v8;
  *a4 = 0x8000000000000000;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = v8[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v13;
  if (v8[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    specialized _NativeDictionary.copy()();
    v8 = v20;
    goto LABEL_6;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
  v8 = v20;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v4 & 1) != (v19 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v18;
LABEL_6:

  *a4 = v8;
  if ((v4 & 1) == 0)
  {
    _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCSayAaG_pXpG_Tt1g5(MEMORY[0x1E69E7CC0], &v20);
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, v20, v8);
  }

  specialized Set.formUnion<A>(_:)(v11);
}

uint64_t AttributedString.AttributeDependencies.contains<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Bool __swiftcall AttributedString.AttributeDependencies.contains(_:)(NSAttributedStringKey a1)
{
  if (*(*v1 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, 0x8000000000000000);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t AttributedString.AttributeDependencies.merge(_:uniquingKeysWith:)(uint64_t *a1, void (*a2)(void *__return_ptr, id *, uint64_t *))
{
  v4 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  *v2 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, a2);

  *v2 = v7;
  return result;
}

Swift::Int AttributedString.Keys.hashValue.getter(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  Hasher.init(_seed:)();
  a1(v5, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString.Keys(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v7, v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.Keys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  Hasher.init(_seed:)();
  a4(v7, *v4);
  return Hasher._finalize()();
}

uint64_t AttributedString.AttributeDependencies.makeIterator()@<X0>(void *a1@<X8>)
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
  a1[5] = closure #1 in AttributedString.AttributeDependencies.makeIterator();
  a1[6] = 0;
}

void *closure #1 in AttributedString.AttributeDependencies.makeIterator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (v2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = *result;
    a2[1] = v2;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedString.AttributeDependencies@<X0>(void *a1@<X8>)
{
  AttributedString.AttributeDependencies.makeIterator()(a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.AttributeDependencies()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);

  return v1;
}

uint64_t AttributedString.AttributeDependencies.subscript.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  *a2 = MEMORY[0x1E69E7CD0];
  a2[1] = v3;
  a2[2] = v4;
}

uint64_t AttributedString.AttributeDependencies.PartialIterator.next()()
{
  v1 = v0;
  v2 = *(v0 + 8);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = _HashTable.startBucket.getter();
  v4 = specialized Set._Variant.remove(at:)(v3, *(v2 + 36));
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    specialized Set._Variant.insert(_:)(v16, v4, v5);
    outlined consume of AttributedString.AnyAttribute(v16[0], v16[1]);
    v8 = *(v1 + 16);
    if (*(v8 + 16))
    {
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        v16[0] = *(*(v8 + 56) + 8 * v9);
        v11 = v16[0];
        swift_bridgeObjectRetain_n();

        specialized Set.formSymmetricDifference(_:)(v12);
        v13 = v16[0];

        v14 = specialized _NativeSet.intersection(_:)(v13, v11, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

        specialized Set.formUnion<A>(_:)(v14);
      }
    }

    return v6;
  }

  outlined consume of AttributedString.AnyAttribute(v4, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance AttributedString.AttributeDependencies.PartialIterator@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.AttributeDependencies.PartialIterator()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance AttributedString.AttributeDependencies.PartialIterator@<X0>(uint64_t *a1@<X8>)
{
  result = AttributedString.AttributeDependencies.PartialIterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString.AnyAttribute()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributedString.AnyAttribute()
{
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.AnyAttribute()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized Set._Variant.remove(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if (a2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v25 = ~v7;
  while (1)
  {
    v9 = *(v5 + 48) + 16 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v11 < 0)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v15;
      v16 = v10;
      if ((a2 & 0x8000000000000000) == 0)
      {
        v17 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_14;
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (v10 == a1)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      v12 = dispatch thunk of static AttributedStringKey.name.getter();
      v14 = v13;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_14:
    if (v12 == v17 && v14 == v18)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v10, v11);

    if (v20)
    {
      goto LABEL_22;
    }

LABEL_7:
    v8 = (v8 + 1) & v25;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v10, v11);

LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v2;
  v26 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v23 = v26;
  }

  v21 = *(*(v23 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v26;
  return v21;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, MEMORY[0x1E6969498], &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, MEMORY[0x1E696A1C0], &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 32);
  v6 = *v2;
  v425 = *(a1 + 16);
  v426 = *a1;
  v436[0] = *a1;
  v436[1] = v425;
  v437 = *(a1 + 32);
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v431);
  result = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  v424 = v6 + 56;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_521:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
    return result;
  }

  v10 = v6;
  v422 = v6;
  v423 = ~v8;
  v420 = a2;
  while (1)
  {
    v11 = *(v10 + 48) + 40 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v16 = *(v11 + 32);
    v431[0] = v12;
    v431[1] = v13;
    v431[2] = v15;
    v431[3] = v14;
    v432 = v16;
    v434 = v425;
    v433 = v426;
    v435 = v5;
    if (!v16)
    {
      if (v3[2].i8[0])
      {
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
        v18 = v12;
        v19 = v13;
        v20 = v15;
        v21 = v14;
        v22 = 0;
        goto LABEL_20;
      }

      v24 = v3->i64[0];
      LODWORD(v25) = v3->u8[8];
      if (v13 >> 6)
      {
        if (v13 >> 6 != 1)
        {
          if (v12 | v13 ^ 0x80)
          {
            v42 = v25 & 0xC0;
            if (v13 == 128 && v12 == 1)
            {
              if (v42 != 128 || v24 != 1 || v25 != 128)
              {
                goto LABEL_64;
              }

              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined consume of _Glass.Variant.ID(v12, v13);
              v26 = 1;
            }

            else
            {
              if (v42 != 128 || v24 != 2 || v25 != 128)
              {
                goto LABEL_64;
              }

              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined consume of _Glass.Variant.ID(v12, v13);
              v26 = 2;
            }
          }

          else
          {
            if ((v25 & 0xC0) != 0x80 || v24 || v25 != 128)
            {
LABEL_64:
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              v40 = v24;
              v41 = v25;
              goto LABEL_65;
            }

            v414 = v3->i8[9];
            v415 = v3[1].i64[0];
            v394 = v3[1].i64[1];
            v421 = 40 * v9;
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined consume of _Glass.Variant.ID(v12, v13);
            v26 = 0;
          }

          v27 = 0x80;
          goto LABEL_61;
        }

        if ((v25 & 0xC0) != 0x40)
        {
          goto LABEL_33;
        }

        v414 = v3->i8[9];
        v415 = v3[1].i64[0];
        v394 = v3[1].i64[1];
        v421 = 40 * v9;
        v429 = v12;
        v430 = v13 & 0x3F;
        v427 = v24;
        v428 = v25 & 0x3F;
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined copy of _Glass.Variant.ID(v24, v25);
        outlined copy of _Glass.Variant.ID(v12, v13);
        if ((specialized static Material.ID.== infix(_:_:)(&v429, &v427) & 1) == 0)
        {
          _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          goto LABEL_66;
        }

        outlined consume of _Glass.Variant.ID(v12, v13);
        v26 = v24;
LABEL_26:
        v27 = v25;
LABEL_61:
        outlined consume of _Glass.Variant.ID(v26, v27);
        v10 = v422;
        if (((v13 & 0x100) == 0) == (v414 & 1))
        {
          _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined destroy of GlassContainer.Entry.ModelID(v3);
          result = outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        }

        else
        {
          v438[0] = v415;
          if (v15 == v415)
          {

            outlined init with copy of AnyHashable2(v438, v436);
            _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined destroy of AnyHashable2(v438);

            outlined destroy of GlassContainer.Entry.ModelID(v3);
            result = outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          }

          else
          {
            v66 = *(*v15 + 112);

            outlined init with copy of AnyHashable2(v438, v436);
            v10 = v422;
            LOBYTE(v66) = v66(v415);
            _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined destroy of AnyHashable2(v438);

            outlined destroy of GlassContainer.Entry.ModelID(v3);
            result = outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            if ((v66 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          if (v14 == v394)
          {
            goto LABEL_522;
          }
        }

        goto LABEL_5;
      }

      if (v25 >= 0x40)
      {
LABEL_33:
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined copy of _Glass.Variant.ID(v24, v25);
        v40 = v12;
        v41 = v13;
LABEL_65:
        outlined copy of _Glass.Variant.ID(v40, v41);
        _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
LABEL_66:
        outlined consume of _Glass.Variant.ID(v12, v13);
        v51 = v24;
        goto LABEL_67;
      }

      v413 = v5;
      v412 = v3->u8[8];
      v28 = v3->i64[0];
      v29 = *(v12 + 16);
      v30 = *(v12 + 24);
      v31 = *(v12 + 48);
      v32 = *(v3->i64[0] + 16);
      v33 = *(v3->i64[0] + 24);
      v34 = *(v3->i64[0] + 32);
      v418 = v3->i64[0];
      v35 = *(v3->i64[0] + 48);
      if (v30 >> 6)
      {
        if (v30 >> 6 == 1)
        {
          if ((v33 & 0xC0) != 0x40)
          {
            goto LABEL_105;
          }

          v372 = *(v28 + 32);
          v373 = *(v12 + 32);
          v371 = *(v28 + 40);
          v374 = *(v12 + 40);
          v414 = v3->i8[9];
          v415 = v3[1].i64[0];
          v390 = *(v28 + 16);
          v394 = v3[1].i64[1];
          v421 = 40 * v9;
          v429 = *(v12 + 16);
          v430 = v30 & 0x3F;
          v427 = v32;
          v428 = v33 & 0x3F;
          v36 = v30;
          v375 = v33;
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          v37 = v29;
          outlined copy of _Glass.Variant.ID(v29, v36);
          outlined copy of _Glass.Variant.ID(v390, v33);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          v38 = v418;
          v39 = v412;
          outlined copy of _Glass.Variant.ID(v418, v412);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v37, v36);
          outlined copy of _Glass.Variant.ID(v390, v375);
          v395 = specialized static Material.ID.== infix(_:_:)(&v429, &v427);
          outlined consume of _Glass.Variant.ID(v37, v36);
          outlined consume of _Glass.Variant.ID(v390, v375);
          outlined consume of _Glass.Variant.ID(v390, v375);
          outlined consume of _Glass.Variant.ID(v37, v36);
          if ((v395 & 1) == 0)
          {
            goto LABEL_357;
          }
        }

        else
        {
          if (v29 | v30 ^ 0x80)
          {
            v62 = v33 & 0xC0;
            if (*(v12 + 24) == 128 && v29 == 1)
            {
              if (v62 != 128 || v32 != 1 || v33 != 128)
              {
                goto LABEL_105;
              }

              v382 = *(v12 + 24);
              v387 = *(v12 + 16);
              v372 = *(v3->i64[0] + 32);
              v373 = *(v12 + 32);
              v371 = *(v3->i64[0] + 40);
              v374 = *(v12 + 40);
              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              v64 = v3->i64[0];
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              v65 = 1;
            }

            else
            {
              if (v62 != 128 || v32 != 2 || v33 != 128)
              {
                goto LABEL_105;
              }

              v382 = *(v12 + 24);
              v387 = *(v12 + 16);
              v372 = *(v3->i64[0] + 32);
              v373 = *(v12 + 32);
              v371 = *(v3->i64[0] + 40);
              v374 = *(v12 + 40);
              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              v64 = v3->i64[0];
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              v65 = 2;
            }
          }

          else
          {
            if ((v33 & 0xC0) != 0x80 || v32 || v33 != 128)
            {
LABEL_105:
              v69 = *(v3->i64[0] + 16);
              v70 = v12;
              v398 = v3;
              v71 = v12;
              v72 = v15;
              v73 = v14;
              v74 = v30;
              v75 = v33;
              outlined copy of GlassContainer.Entry.ModelID(v70, v13, v72, v73, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v398, v436);
              outlined copy of GlassContainer.Entry.ModelID(v71, v13, v72, v73, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v398, v436);
              outlined copy of GlassContainer.Entry.ModelID(v71, v13, v72, v73, 0);
              v39 = v412;
              outlined copy of _Glass.Variant.ID(v418, v412);
              outlined copy of _Glass.Variant.ID(v71, v13);
              outlined copy of _Glass.Variant.ID(v29, v74);
              outlined copy of _Glass.Variant.ID(v69, v75);
              v76 = v74;
              v14 = v73;
              v15 = v72;
              v12 = v71;
              v3 = v398;
              outlined consume of _Glass.Variant.ID(v29, v76);
              outlined consume of _Glass.Variant.ID(v69, v75);
              v38 = v418;
              goto LABEL_357;
            }

            v382 = *(v12 + 24);
            v387 = *(v12 + 16);
            v372 = *(v28 + 32);
            v373 = *(v12 + 32);
            v371 = *(v28 + 40);
            v374 = *(v12 + 40);
            v414 = v3->i8[9];
            v415 = v3[1].i64[0];
            v394 = v3[1].i64[1];
            v421 = 40 * v9;
            v64 = v3->i64[0];
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            v65 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v64, v25);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined consume of _Glass.Variant.ID(v387, v382);
          outlined consume of _Glass.Variant.ID(v65, 0x80u);
        }

LABEL_100:
        if (v374 >> 6)
        {
          v67 = v373;
          v68 = v371;
          if (v374 >> 6 == 1)
          {
            a2 = v420;
            if ((v371 & 0xC0) != 0x40)
            {
              goto LABEL_149;
            }

            *&v436[0] = v373;
            BYTE8(v436[0]) = v374 & 0x3F;
            v429 = v372;
            v430 = v371 & 0x3F;
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            v397 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v373, v374);
            outlined consume of _Glass.Variant.ID(v372, v371);
            outlined consume of _Glass.Variant.ID(v372, v371);
            outlined consume of _Glass.Variant.ID(v373, v374);
            LOBYTE(v25) = v412;
            v5 = v413;
            if ((v397 & 1) == 0)
            {
              goto LABEL_411;
            }
          }

          else
          {
            a2 = v420;
            if (v373 | v374 ^ 0x80)
            {
              v86 = v371 & 0xC0;
              if (v374 == 128 && v373 == 1)
              {
                if (v86 != 128 || v372 != 1 || v371 != 128)
                {
                  goto LABEL_149;
                }

                v88 = 1;
              }

              else
              {
                if (v86 != 128 || v372 != 2 || v371 != 128)
                {
                  goto LABEL_149;
                }

                v88 = 2;
              }
            }

            else
            {
              if ((v371 & 0xC0) != 0x80 || v372 || v371 != 128)
              {
LABEL_149:
                v25 = v67;
                v100 = v68;
                outlined copy of _Glass.Variant.ID(v67, v374);
                outlined copy of _Glass.Variant.ID(v372, v100);
                outlined consume of _Glass.Variant.ID(v25, v374);
                v101 = v100;
                a2 = v420;
                outlined consume of _Glass.Variant.ID(v372, v101);
                LOBYTE(v25) = v412;
                goto LABEL_410;
              }

              v88 = 0;
            }

            outlined consume of _Glass.Variant.ID(v373, v374);
            outlined consume of _Glass.Variant.ID(v88, 0x80u);
            LOBYTE(v25) = v412;
            v5 = v413;
          }

          goto LABEL_147;
        }

        v68 = v371;
        a2 = v420;
        v67 = v373;
        if (v371 >= 0x40)
        {
          goto LABEL_149;
        }

        v77 = *(v373 + 16);
        v78 = *(v373 + 24);
        v79 = *(v373 + 48);
        v80 = *(v372 + 16);
        v81 = *(v372 + 24);
        v82 = *(v372 + 48);
        v383 = *(v373 + 24);
        v388 = *(v372 + 24);
        v392 = v80;
        if (v78 >> 6)
        {
          if (v78 >> 6 == 1)
          {
            if ((v81 & 0xC0) != 0x40)
            {
              goto LABEL_242;
            }

            v356 = *(v372 + 32);
            v358 = *(v373 + 32);
            v362 = *(v372 + 40);
            v366 = *(v373 + 40);
            *&v436[0] = *(v373 + 16);
            BYTE8(v436[0]) = v78 & 0x3F;
            v429 = v80;
            v430 = v81 & 0x3F;
            v83 = v78;
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            outlined copy of _Glass.Variant.ID(v77, v83);
            outlined copy of _Glass.Variant.ID(v392, v388);
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            outlined copy of _Glass.Variant.ID(v77, v83);
            outlined copy of _Glass.Variant.ID(v392, v388);
            v399 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v77, v83);
            outlined consume of _Glass.Variant.ID(v392, v388);
            outlined consume of _Glass.Variant.ID(v392, v388);
            v84 = v372;
            outlined consume of _Glass.Variant.ID(v77, v383);
            v85 = v373;
            if ((v399 & 1) == 0)
            {
              goto LABEL_408;
            }
          }

          else
          {
            if (v77 | v78 ^ 0x80)
            {
              v130 = v81 & 0xC0;
              if (*(v373 + 24) == 128 && v77 == 1)
              {
                if (v130 != 128 || v80 != 1 || v81 != 128)
                {
                  goto LABEL_242;
                }

                v378 = *(v373 + 16);
                v356 = *(v372 + 32);
                v358 = *(v373 + 32);
                v362 = *(v372 + 40);
                v366 = *(v373 + 40);
                v132 = 1;
              }

              else
              {
                if (v130 != 128 || v80 != 2 || v81 != 128)
                {
                  goto LABEL_242;
                }

                v378 = *(v373 + 16);
                v356 = *(v372 + 32);
                v358 = *(v373 + 32);
                v362 = *(v372 + 40);
                v366 = *(v373 + 40);
                v132 = 2;
              }

              v403 = v132;
            }

            else
            {
              if ((v81 & 0xC0) != 0x80 || v80 || v81 != 128)
              {
LABEL_242:
                outlined copy of _Glass.Variant.ID(v373, v374);
                outlined copy of _Glass.Variant.ID(v372, v371);
                outlined copy of _Glass.Variant.ID(v373, v374);
                outlined copy of _Glass.Variant.ID(v372, v371);
                outlined copy of _Glass.Variant.ID(v77, v383);
                outlined copy of _Glass.Variant.ID(v392, v388);
                v84 = v372;
                outlined consume of _Glass.Variant.ID(v77, v383);
                outlined consume of _Glass.Variant.ID(v392, v388);
                v85 = v373;
                goto LABEL_408;
              }

              v378 = *(v373 + 16);
              v356 = *(v372 + 32);
              v358 = *(v373 + 32);
              v362 = *(v372 + 40);
              v366 = *(v373 + 40);
              v403 = 0;
            }

            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            outlined consume of _Glass.Variant.ID(v378, v383);
            outlined consume of _Glass.Variant.ID(v403, 0x80u);
          }

LABEL_236:
          if (v366 >> 6)
          {
            v149 = v358;
            v150 = v362;
            if (v366 >> 6 == 1)
            {
              if ((v362 & 0xC0) != 0x40)
              {
                goto LABEL_369;
              }

              *&v436[0] = v358;
              BYTE8(v436[0]) = v366 & 0x3F;
              v429 = v356;
              v430 = v362 & 0x3F;
              outlined copy of _Glass.Variant.ID(v358, v366);
              outlined copy of _Glass.Variant.ID(v356, v362);
              outlined copy of _Glass.Variant.ID(v358, v366);
              outlined copy of _Glass.Variant.ID(v356, v362);
              v404 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
              outlined consume of _Glass.Variant.ID(v358, v366);
              outlined consume of _Glass.Variant.ID(v356, v362);
              outlined consume of _Glass.Variant.ID(v356, v362);
              outlined consume of _Glass.Variant.ID(v358, v366);
              outlined consume of _Glass.Variant.ID(v373, v374);
              outlined consume of _Glass.Variant.ID(v372, v371);
              outlined consume of _Glass.Variant.ID(v372, v371);
              outlined consume of _Glass.Variant.ID(v373, v374);
              LOBYTE(v25) = v412;
              v5 = v413;
              if ((v404 & 1) == 0 || v79 != v82)
              {
                goto LABEL_411;
              }

              goto LABEL_147;
            }

            if (v358 | v366 ^ 0x80)
            {
              v167 = v362 & 0xC0;
              if (v366 == 128 && v358 == 1)
              {
                if (v167 != 128 || v356 != 1 || v362 != 128)
                {
                  goto LABEL_369;
                }

                v169 = v358;
                v170 = 1;
              }

              else
              {
                if (v167 != 128 || v356 != 2 || v362 != 128)
                {
                  goto LABEL_369;
                }

                v169 = v358;
                v170 = 2;
              }
            }

            else
            {
              if ((v362 & 0xC0) != 0x80 || v356 || v362 != 128)
              {
LABEL_369:
                outlined copy of _Glass.Variant.ID(v149, v366);
                outlined copy of _Glass.Variant.ID(v356, v150);
                outlined consume of _Glass.Variant.ID(v149, v366);
                v198 = v356;
                v199 = v150;
                goto LABEL_407;
              }

              v169 = v358;
              v170 = 0;
            }

            outlined consume of _Glass.Variant.ID(v169, v366);
            outlined consume of _Glass.Variant.ID(v170, 0x80u);
            v85 = v373;
            outlined consume of _Glass.Variant.ID(v373, v374);
            outlined consume of _Glass.Variant.ID(v372, v371);
            outlined consume of _Glass.Variant.ID(v372, v371);
            LOBYTE(v25) = v412;
          }

          else
          {
            v150 = v362;
            v149 = v358;
            if (v362 >= 0x40)
            {
              goto LABEL_369;
            }

            v161 = *(v358 + 16);
            v162 = *(v358 + 24);
            v163 = *(v358 + 48);
            v164 = *(v356 + 16);
            v165 = *(v356 + 24);
            v166 = *(v356 + 48);
            v352 = *(v358 + 32);
            v347 = *(v358 + 40);
            v343 = *(v356 + 32);
            v340 = *(v356 + 40);
            v389 = v165;
            v393 = v164;
            if (v162 >> 6)
            {
              if (v162 >> 6 == 1)
              {
                if ((v165 & 0xC0) != 0x40)
                {
                  goto LABEL_469;
                }

                *&v436[0] = *(v358 + 16);
                BYTE8(v436[0]) = v162 & 0x3F;
                v429 = v164;
                v430 = v165 & 0x3F;
                v379 = v161;
                v384 = v162;
                outlined copy of _Glass.Variant.ID(v358, v366);
                outlined copy of _Glass.Variant.ID(v356, v362);
                outlined copy of _Glass.Variant.ID(v393, v165);
                outlined copy of _Glass.Variant.ID(v379, v384);
                outlined copy of _Glass.Variant.ID(v358, v366);
                outlined copy of _Glass.Variant.ID(v356, v362);
                outlined copy of _Glass.Variant.ID(v393, v165);
                outlined copy of _Glass.Variant.ID(v379, v384);
                v405 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
                outlined consume of _Glass.Variant.ID(v379, v384);
                outlined consume of _Glass.Variant.ID(v393, v165);
                outlined consume of _Glass.Variant.ID(v393, v165);
                outlined consume of _Glass.Variant.ID(v379, v384);
                if ((v405 & 1) == 0)
                {
                  goto LABEL_471;
                }
              }

              else
              {
                v380 = *(v358 + 16);
                v385 = *(v358 + 24);
                if (v161 | v162 ^ 0x80)
                {
                  v244 = v165 & 0xC0;
                  if (*(v358 + 24) == 128 && v161 == 1)
                  {
                    if (v244 != 128 || v164 != 1 || v165 != 128)
                    {
                      goto LABEL_470;
                    }

                    v410 = v3;
                    v246 = 1;
                  }

                  else
                  {
                    if (v244 != 128 || v164 != 2 || v165 != 128)
                    {
                      goto LABEL_470;
                    }

                    v410 = v3;
                    v246 = 2;
                  }
                }

                else
                {
                  if ((v165 & 0xC0) != 0x80 || v164 || v165 != 128)
                  {
                    goto LABEL_470;
                  }

                  v410 = v3;
                  v246 = 0;
                }

                outlined copy of _Glass.Variant.ID(v358, v366);
                outlined copy of _Glass.Variant.ID(v356, v362);
                outlined copy of _Glass.Variant.ID(v358, v366);
                outlined copy of _Glass.Variant.ID(v356, v362);
                outlined copy of _Glass.Variant.ID(v246, 0x80u);
                outlined consume of _Glass.Variant.ID(v380, v385);
                outlined consume of _Glass.Variant.ID(v246, 0x80u);
                a2 = v420;
                v3 = v410;
              }
            }

            else
            {
              if (v165 >= 0x40)
              {
LABEL_469:
                v380 = *(v358 + 16);
                v385 = *(v358 + 24);
                outlined copy of _Glass.Variant.ID(v161, v162);
LABEL_470:
                outlined copy of _Glass.Variant.ID(v358, v366);
                outlined copy of _Glass.Variant.ID(v356, v362);
                outlined copy of _Glass.Variant.ID(v358, v366);
                outlined copy of _Glass.Variant.ID(v356, v362);
                outlined copy of _Glass.Variant.ID(v393, v165);
                outlined consume of _Glass.Variant.ID(v380, v385);
                outlined consume of _Glass.Variant.ID(v393, v165);
                goto LABEL_471;
              }

              v300 = v12;
              v306 = v13;
              v289 = *(v161 + 32);
              v282 = *(v161 + 40);
              v235 = *(v161 + 48);
              v325 = *(v164 + 16);
              v277 = *(v164 + 32);
              v272 = *(v164 + 40);
              v237 = *(v164 + 48);
              v238 = *(v161 + 24);
              v320 = v238;
              v239 = *(v164 + 24);
              v331 = v239;
              *&v436[0] = *(v161 + 16);
              v236 = *&v436[0];
              BYTE8(v436[0]) = v238;
              v429 = v325;
              v430 = v239;
              v240 = v161;
              v241 = v165;
              v242 = v162;
              v243 = v164;
              outlined copy of _Glass.Variant.ID(v358, v366);
              outlined copy of _Glass.Variant.ID(v356, v362);
              outlined copy of _Glass.Variant.ID(v243, v241);
              outlined copy of _Glass.Variant.ID(v240, v242);
              outlined copy of _Glass.Variant.ID(v358, v366);
              outlined copy of _Glass.Variant.ID(v356, v362);
              outlined copy of _Glass.Variant.ID(v243, v241);
              outlined copy of _Glass.Variant.ID(v240, v242);
              outlined copy of _Glass.Variant.ID(v236, v320);
              outlined copy of _Glass.Variant.ID(v325, v331);
              LOBYTE(v243) = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
              outlined consume of _Glass.Variant.ID(v429, v430);
              outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
              if ((v243 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v240, v242);
                outlined consume of _Glass.Variant.ID(v393, v389);
                outlined consume of _Glass.Variant.ID(v393, v389);
                outlined consume of _Glass.Variant.ID(v240, v242);
                a2 = v420;
                v12 = v300;
                LOBYTE(v13) = v306;
LABEL_471:
                outlined consume of _Glass.Variant.ID(v358, v366);
                outlined consume of _Glass.Variant.ID(v356, v362);
                outlined consume of _Glass.Variant.ID(v356, v362);
                v198 = v358;
                v199 = v366;
                goto LABEL_407;
              }

              *&v436[0] = v289;
              BYTE8(v436[0]) = v282;
              v429 = v277;
              v430 = v272;
              outlined copy of _Glass.Variant.ID(v289, v282);
              outlined copy of _Glass.Variant.ID(v277, v272);
              v332 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
              outlined consume of _Glass.Variant.ID(v429, v430);
              outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
              outlined consume of _Glass.Variant.ID(v240, v242);
              outlined consume of _Glass.Variant.ID(v393, v389);
              outlined consume of _Glass.Variant.ID(v393, v389);
              outlined consume of _Glass.Variant.ID(v240, v242);
              a2 = v420;
              v12 = v300;
              LOWORD(v13) = v306;
              if ((v332 & 1) == 0 || v235 != v237)
              {
                goto LABEL_471;
              }
            }

            *&v436[0] = v352;
            BYTE8(v436[0]) = v347;
            v429 = v343;
            v430 = v340;
            outlined copy of _Glass.Variant.ID(v352, v347);
            outlined copy of _Glass.Variant.ID(v343, v340);
            v411 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v429, v430);
            outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
            outlined consume of _Glass.Variant.ID(v358, v366);
            outlined consume of _Glass.Variant.ID(v356, v362);
            outlined consume of _Glass.Variant.ID(v356, v362);
            outlined consume of _Glass.Variant.ID(v358, v366);
            v85 = v373;
            outlined consume of _Glass.Variant.ID(v373, v374);
            outlined consume of _Glass.Variant.ID(v372, v371);
            outlined consume of _Glass.Variant.ID(v372, v371);
            LOBYTE(v25) = v412;
            if ((v411 & 1) == 0 || v163 != v166)
            {
              goto LABEL_409;
            }
          }

          outlined consume of _Glass.Variant.ID(v85, v374);
          v5 = v413;
          if (v79 != v82)
          {
            goto LABEL_411;
          }

LABEL_147:
          if (v31 != v35)
          {
            goto LABEL_411;
          }

          outlined consume of _Glass.Variant.ID(v12, v13);
          v26 = v418;
          goto LABEL_26;
        }

        if (v81 >= 0x40)
        {
          goto LABEL_242;
        }

        v121 = *(v77 + 16);
        v122 = *(v77 + 24);
        v123 = *(v77 + 48);
        v124 = *(v80 + 16);
        v125 = *(v80 + 24);
        v126 = *(v80 + 48);
        v377 = *(v373 + 16);
        v351 = *(v77 + 24);
        v402 = v121;
        v346 = *(v80 + 24);
        v342 = v124;
        if (v122 >> 6)
        {
          if (v122 >> 6 == 1)
          {
            if ((v125 & 0xC0) != 0x40)
            {
              goto LABEL_403;
            }

            v318 = *(v80 + 32);
            v323 = *(v77 + 32);
            v328 = *(v80 + 40);
            v336 = *(v77 + 40);
            v356 = *(v372 + 32);
            v358 = *(v373 + 32);
            v362 = *(v372 + 40);
            v366 = *(v373 + 40);
            *&v436[0] = *(v77 + 16);
            BYTE8(v436[0]) = v122 & 0x3F;
            v429 = v124;
            v430 = v125 & 0x3F;
            v127 = v78;
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            outlined copy of _Glass.Variant.ID(v77, v127);
            outlined copy of _Glass.Variant.ID(v392, v388);
            outlined copy of _Glass.Variant.ID(v402, v351);
            outlined copy of _Glass.Variant.ID(v342, v346);
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v371);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v392, v388);
            outlined copy of _Glass.Variant.ID(v402, v351);
            outlined copy of _Glass.Variant.ID(v342, v346);
            v309 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v402, v351);
            outlined consume of _Glass.Variant.ID(v342, v346);
            outlined consume of _Glass.Variant.ID(v342, v346);
            outlined consume of _Glass.Variant.ID(v402, v351);
            v129 = v77;
            v128 = v383;
            if ((v309 & 1) == 0)
            {
              goto LABEL_405;
            }
          }

          else
          {
            if (v121 | v122 ^ 0x80)
            {
              v187 = v125 & 0xC0;
              if (*(v77 + 24) == 128 && v121 == 1)
              {
                if (v187 != 128 || v124 != 1 || v125 != 128)
                {
                  goto LABEL_403;
                }

                v318 = *(v80 + 32);
                v323 = *(v77 + 32);
                v328 = *(v80 + 40);
                v336 = *(v77 + 40);
                v356 = *(v372 + 32);
                v358 = *(v373 + 32);
                v362 = *(v372 + 40);
                v366 = *(v373 + 40);
                v189 = v371;
                v190 = 1;
              }

              else
              {
                if (v187 != 128 || v124 != 2 || v125 != 128)
                {
                  goto LABEL_403;
                }

                v318 = *(v80 + 32);
                v323 = *(v77 + 32);
                v328 = *(v80 + 40);
                v336 = *(v77 + 40);
                v356 = *(v372 + 32);
                v358 = *(v373 + 32);
                v362 = *(v372 + 40);
                v366 = *(v373 + 40);
                v189 = v371;
                v190 = 2;
              }

              v348 = v190;
            }

            else
            {
              if ((v125 & 0xC0) != 0x80 || v124 || v125 != 128)
              {
LABEL_403:
                v204 = *(v373 + 24);
                outlined copy of _Glass.Variant.ID(v373, v374);
                outlined copy of _Glass.Variant.ID(v372, v371);
                outlined copy of _Glass.Variant.ID(v77, v204);
                outlined copy of _Glass.Variant.ID(v392, v388);
                outlined copy of _Glass.Variant.ID(v373, v374);
                outlined copy of _Glass.Variant.ID(v372, v371);
                outlined copy of _Glass.Variant.ID(v77, v204);
                outlined copy of _Glass.Variant.ID(v392, v388);
                outlined copy of _Glass.Variant.ID(v402, v351);
                outlined copy of _Glass.Variant.ID(v342, v346);
                outlined consume of _Glass.Variant.ID(v402, v351);
                v205 = v342;
                v206 = v346;
                goto LABEL_404;
              }

              v318 = *(v80 + 32);
              v323 = *(v77 + 32);
              v328 = *(v80 + 40);
              v336 = *(v77 + 40);
              v356 = *(v372 + 32);
              v358 = *(v373 + 32);
              v362 = *(v372 + 40);
              v366 = *(v373 + 40);
              v189 = v371;
              v348 = 0;
            }

            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v189);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v392, v388);
            outlined copy of _Glass.Variant.ID(v373, v374);
            outlined copy of _Glass.Variant.ID(v372, v189);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v392, v388);
            outlined consume of _Glass.Variant.ID(v402, v351);
            outlined consume of _Glass.Variant.ID(v348, 0x80u);
          }
        }

        else
        {
          if (v125 >= 0x40)
          {
            goto LABEL_403;
          }

          v318 = *(v80 + 32);
          v323 = *(v77 + 32);
          v328 = *(v80 + 40);
          v336 = *(v77 + 40);
          v356 = *(v372 + 32);
          v358 = *(v373 + 32);
          v362 = *(v372 + 40);
          v366 = *(v373 + 40);
          v281 = *(v121 + 40);
          v180 = *(v121 + 48);
          v287 = *(v121 + 32);
          v303 = *(v124 + 16);
          v276 = *(v124 + 32);
          v271 = *(v124 + 40);
          v181 = *(v124 + 48);
          v182 = *(v121 + 24);
          v297 = v182;
          v183 = *(v124 + 24);
          v312 = v183;
          *&v436[0] = *(v121 + 16);
          v292 = *&v436[0];
          BYTE8(v436[0]) = v182;
          v429 = v303;
          v430 = v183;
          v184 = v80;
          v185 = v78;
          outlined copy of _Glass.Variant.ID(v373, v374);
          outlined copy of _Glass.Variant.ID(v372, v371);
          outlined copy of _Glass.Variant.ID(v377, v185);
          outlined copy of _Glass.Variant.ID(v184, v388);
          outlined copy of _Glass.Variant.ID(v402, v351);
          outlined copy of _Glass.Variant.ID(v342, v346);
          outlined copy of _Glass.Variant.ID(v373, v374);
          outlined copy of _Glass.Variant.ID(v372, v371);
          outlined copy of _Glass.Variant.ID(v377, v185);
          outlined copy of _Glass.Variant.ID(v392, v388);
          outlined copy of _Glass.Variant.ID(v402, v351);
          outlined copy of _Glass.Variant.ID(v342, v346);
          outlined copy of _Glass.Variant.ID(v292, v297);
          outlined copy of _Glass.Variant.ID(v303, v312);
          v186 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          if ((v186 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v402, v351);
            outlined consume of _Glass.Variant.ID(v342, v346);
            outlined consume of _Glass.Variant.ID(v342, v346);
            v205 = v402;
            v206 = v351;
LABEL_404:
            outlined consume of _Glass.Variant.ID(v205, v206);
            v129 = v377;
            v128 = v383;
LABEL_405:
            outlined consume of _Glass.Variant.ID(v129, v128);
            outlined consume of _Glass.Variant.ID(v392, v388);
LABEL_406:
            outlined consume of _Glass.Variant.ID(v392, v388);
            v198 = v129;
            v199 = v128;
LABEL_407:
            outlined consume of _Glass.Variant.ID(v198, v199);
            v84 = v372;
            v85 = v373;
LABEL_408:
            outlined consume of _Glass.Variant.ID(v85, v374);
            outlined consume of _Glass.Variant.ID(v84, v371);
            outlined consume of _Glass.Variant.ID(v84, v371);
            LOBYTE(v25) = v412;
LABEL_409:
            outlined consume of _Glass.Variant.ID(v85, v374);
LABEL_410:
            v5 = v413;
LABEL_411:
            _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined consume of _Glass.Variant.ID(v12, v13);
            v51 = v418;
LABEL_67:
            outlined consume of _Glass.Variant.ID(v51, v25);
            outlined destroy of GlassContainer.Entry.ModelID(v3);
            v45 = v12;
            v46 = v13;
            v47 = v15;
            v48 = v14;
            v49 = 0;
LABEL_68:
            result = outlined consume of GlassContainer.Entry.ModelID(v45, v46, v47, v48, v49);
            v10 = v422;
            goto LABEL_5;
          }

          *&v436[0] = v287;
          BYTE8(v436[0]) = v281;
          v429 = v276;
          v430 = v271;
          outlined copy of _Glass.Variant.ID(v287, v281);
          outlined copy of _Glass.Variant.ID(v276, v271);
          v313 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          outlined consume of _Glass.Variant.ID(v402, v351);
          outlined consume of _Glass.Variant.ID(v342, v346);
          outlined consume of _Glass.Variant.ID(v342, v346);
          outlined consume of _Glass.Variant.ID(v402, v351);
          v129 = v377;
          v128 = v383;
          if ((v313 & 1) == 0 || v180 != v181)
          {
            goto LABEL_405;
          }
        }

        if (v336 >> 6)
        {
          if (v336 >> 6 == 1)
          {
            v202 = v328;
            v203 = v323;
            if ((v328 & 0xC0) != 0x40)
            {
              goto LABEL_451;
            }

            *&v436[0] = v323;
            BYTE8(v436[0]) = v336 & 0x3F;
            v429 = v318;
            v430 = v328 & 0x3F;
            outlined copy of _Glass.Variant.ID(v318, v328);
            outlined copy of _Glass.Variant.ID(v323, v336);
            outlined copy of _Glass.Variant.ID(v318, v328);
            outlined copy of _Glass.Variant.ID(v323, v336);
            v407 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v323, v336);
            outlined consume of _Glass.Variant.ID(v318, v328);
            outlined consume of _Glass.Variant.ID(v318, v328);
            outlined consume of _Glass.Variant.ID(v323, v336);
            v129 = v377;
            v128 = v383;
            outlined consume of _Glass.Variant.ID(v377, v383);
            outlined consume of _Glass.Variant.ID(v392, v388);
            if ((v407 & 1) == 0)
            {
              goto LABEL_406;
            }

            goto LABEL_504;
          }

          v409 = v3;
          LOWORD(v3) = v13;
          v13 = v12;
          v228 = v15;
          if (v323 | v336 ^ 0x80)
          {
            v229 = v323;
            if (v336 == 128 && v323 == 1)
            {
              v231 = v328;
              a2 = v420;
              v232 = v318;
              if ((v328 & 0xC0) != 0x80 || v318 != 1 || v328 != 128)
              {
                goto LABEL_452;
              }

              v234 = 1;
            }

            else
            {
              v231 = v328;
              a2 = v420;
              v232 = v318;
              if ((v328 & 0xC0) != 0x80 || v318 != 2 || v328 != 128)
              {
                goto LABEL_452;
              }

              v234 = 2;
            }
          }

          else
          {
            v229 = v323;
            v231 = v328;
            a2 = v420;
            v232 = v318;
            if ((v328 & 0xC0) != 0x80 || v318 || v328 != 128)
            {
              goto LABEL_452;
            }

            v234 = 0;
          }

          outlined copy of _Glass.Variant.ID(v234, 0x80u);
          outlined consume of _Glass.Variant.ID(v229, v336);
          outlined consume of _Glass.Variant.ID(v234, 0x80u);
          outlined consume of _Glass.Variant.ID(v229, v336);
          a2 = v420;
          v129 = v377;
          v128 = v383;
          v12 = v13;
          LOWORD(v13) = v3;
          v3 = v409;
        }

        else
        {
          v202 = v328;
          v203 = v323;
          if (v328 >= 0x40)
          {
LABEL_451:
            v409 = v3;
            LOBYTE(v3) = v13;
            v13 = v12;
            v228 = v15;
            v229 = v203;
            v230 = v203;
            v231 = v202;
            outlined copy of _Glass.Variant.ID(v230, v336);
            v232 = v318;
LABEL_452:
            outlined copy of _Glass.Variant.ID(v232, v231);
            outlined consume of _Glass.Variant.ID(v229, v336);
            outlined consume of _Glass.Variant.ID(v232, v231);
            v129 = v377;
            v128 = v383;
            v15 = v228;
            v12 = v13;
            LOBYTE(v13) = v3;
            goto LABEL_453;
          }

          v409 = v3;
          v305 = v13;
          v315 = v15;
          v294 = v14;
          v353 = *(v323 + 32);
          v349 = *(v323 + 40);
          v221 = *(v323 + 48);
          v223 = *(v318 + 16);
          v344 = *(v318 + 32);
          v299 = *(v318 + 40);
          v224 = *(v318 + 48);
          v225 = *(v323 + 24);
          v226 = *(v318 + 24);
          *&v436[0] = *(v323 + 16);
          v222 = *&v436[0];
          BYTE8(v436[0]) = v225;
          v429 = v223;
          v430 = v226;
          outlined copy of _Glass.Variant.ID(v318, v328);
          outlined copy of _Glass.Variant.ID(v323, v336);
          outlined copy of _Glass.Variant.ID(v318, v328);
          outlined copy of _Glass.Variant.ID(v323, v336);
          outlined copy of _Glass.Variant.ID(v222, v225);
          outlined copy of _Glass.Variant.ID(v223, v226);
          v227 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          if ((v227 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v323, v336);
            outlined consume of _Glass.Variant.ID(v318, v328);
            outlined consume of _Glass.Variant.ID(v318, v328);
            outlined consume of _Glass.Variant.ID(v323, v336);
            a2 = v420;
            v129 = v377;
            v128 = v383;
            v14 = v294;
            LOBYTE(v13) = v305;
            v15 = v315;
LABEL_453:
            v3 = v409;
            goto LABEL_405;
          }

          *&v436[0] = v353;
          BYTE8(v436[0]) = v349;
          v429 = v344;
          v430 = v299;
          outlined copy of _Glass.Variant.ID(v353, v349);
          outlined copy of _Glass.Variant.ID(v344, v299);
          v354 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          outlined consume of _Glass.Variant.ID(v323, v336);
          outlined consume of _Glass.Variant.ID(v318, v328);
          outlined consume of _Glass.Variant.ID(v318, v328);
          outlined consume of _Glass.Variant.ID(v323, v336);
          a2 = v420;
          v129 = v377;
          v128 = v383;
          v14 = v294;
          LOWORD(v13) = v305;
          v15 = v315;
          v3 = v409;
          if ((v354 & 1) == 0 || v221 != v224)
          {
            goto LABEL_405;
          }
        }

        outlined consume of _Glass.Variant.ID(v129, v128);
        outlined consume of _Glass.Variant.ID(v392, v388);
LABEL_504:
        outlined consume of _Glass.Variant.ID(v392, v388);
        outlined consume of _Glass.Variant.ID(v129, v128);
        v84 = v372;
        v85 = v373;
        if (v123 != v126)
        {
          goto LABEL_408;
        }

        goto LABEL_236;
      }

      if (v33 >= 0x40)
      {
        goto LABEL_105;
      }

      v52 = *(v29 + 16);
      v53 = *(v29 + 24);
      v54 = *(v29 + 48);
      v55 = *(v32 + 16);
      v56 = *(v32 + 24);
      v57 = *(v32 + 48);
      v381 = *(v12 + 24);
      v386 = *(v12 + 16);
      v376 = *(v28 + 24);
      v391 = *(v28 + 16);
      v396 = *(v29 + 24);
      v357 = v55;
      v361 = v52;
      v365 = *(v32 + 24);
      if (v53 >> 6)
      {
        if (v53 >> 6 == 1)
        {
          if ((v56 & 0xC0) != 0x40)
          {
            goto LABEL_165;
          }

          v341 = *(v29 + 40);
          v345 = *(v32 + 32);
          v350 = *(v32 + 40);
          v355 = *(v29 + 32);
          v372 = *(v28 + 32);
          v373 = *(v12 + 32);
          v371 = *(v28 + 40);
          v374 = *(v12 + 40);
          v414 = v3->i8[9];
          v415 = v3[1].i64[0];
          v394 = v3[1].i64[1];
          v421 = 40 * v9;
          v429 = *(v29 + 16);
          v430 = v53 & 0x3F;
          v427 = v55;
          v428 = v56 & 0x3F;
          v58 = v32;
          v59 = v30;
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v29, v59);
          outlined copy of _Glass.Variant.ID(v58, v33);
          outlined copy of _Glass.Variant.ID(v361, v396);
          outlined copy of _Glass.Variant.ID(v357, v365);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v418, v412);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v29, v381);
          outlined copy of _Glass.Variant.ID(v58, v33);
          outlined copy of _Glass.Variant.ID(v361, v396);
          outlined copy of _Glass.Variant.ID(v357, v365);
          v333 = specialized static Material.ID.== infix(_:_:)(&v429, &v427);
          outlined consume of _Glass.Variant.ID(v361, v396);
          outlined consume of _Glass.Variant.ID(v357, v365);
          v60 = v381;
          v61 = v391;
          outlined consume of _Glass.Variant.ID(v357, v365);
          outlined consume of _Glass.Variant.ID(v361, v396);
          if ((v333 & 1) == 0)
          {
            goto LABEL_355;
          }
        }

        else
        {
          if (v52 | v53 ^ 0x80)
          {
            v94 = v56 & 0xC0;
            if (*(v29 + 24) == 128 && v52 == 1)
            {
              if (v94 != 128 || v55 != 1 || v56 != 128)
              {
                goto LABEL_165;
              }

              v341 = *(v29 + 40);
              v345 = *(v32 + 32);
              v350 = *(v32 + 40);
              v355 = *(v29 + 32);
              v372 = *(v3->i64[0] + 32);
              v373 = *(v12 + 32);
              v371 = *(v3->i64[0] + 40);
              v374 = *(v12 + 40);
              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              v96 = *(v12 + 16);
              v97 = *(v3->i64[0] + 16);
              v98 = *(v12 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v96, v98);
              outlined copy of _Glass.Variant.ID(v97, v33);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              v99 = 1;
            }

            else
            {
              if (v94 != 128 || v55 != 2 || v56 != 128)
              {
                goto LABEL_165;
              }

              v341 = *(v29 + 40);
              v345 = *(v32 + 32);
              v350 = *(v32 + 40);
              v355 = *(v29 + 32);
              v372 = *(v3->i64[0] + 32);
              v373 = *(v12 + 32);
              v371 = *(v3->i64[0] + 40);
              v374 = *(v12 + 40);
              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              v103 = *(v12 + 16);
              v97 = *(v3->i64[0] + 16);
              v98 = *(v12 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v103, v98);
              outlined copy of _Glass.Variant.ID(v97, v33);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              v99 = 2;
            }
          }

          else
          {
            if ((v56 & 0xC0) != 0x80 || v55 || v56 != 128)
            {
LABEL_165:
              v107 = *(v12 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v29, v107);
              outlined copy of _Glass.Variant.ID(v391, v33);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v418, v25);
              outlined copy of _Glass.Variant.ID(v12, v13);
              outlined copy of _Glass.Variant.ID(v29, v107);
              outlined copy of _Glass.Variant.ID(v391, v33);
              outlined copy of _Glass.Variant.ID(v361, v396);
              outlined copy of _Glass.Variant.ID(v357, v365);
              v61 = v391;
              outlined consume of _Glass.Variant.ID(v361, v396);
              v60 = v381;
              outlined consume of _Glass.Variant.ID(v357, v365);
              goto LABEL_355;
            }

            v341 = *(v29 + 40);
            v345 = *(v32 + 32);
            v350 = *(v32 + 40);
            v355 = *(v29 + 32);
            v372 = *(v28 + 32);
            v373 = *(v12 + 32);
            v371 = *(v28 + 40);
            v374 = *(v12 + 40);
            v414 = v3->i8[9];
            v415 = v3[1].i64[0];
            v394 = v3[1].i64[1];
            v421 = 40 * v9;
            v102 = *(v12 + 16);
            v97 = *(v28 + 16);
            v98 = *(v12 + 24);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v102, v98);
            outlined copy of _Glass.Variant.ID(v97, v33);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            v99 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v418, v412);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v386, v98);
          outlined copy of _Glass.Variant.ID(v97, v33);
          outlined consume of _Glass.Variant.ID(v361, v396);
          outlined consume of _Glass.Variant.ID(v99, 0x80u);
        }

LABEL_159:
        if (v341 >> 6)
        {
          v104 = v355;
          v105 = v350;
          v106 = v345;
          if (v341 >> 6 == 1)
          {
            if ((v350 & 0xC0) != 0x40)
            {
              goto LABEL_225;
            }

            *&v436[0] = v355;
            BYTE8(v436[0]) = v341 & 0x3F;
            v429 = v345;
            v430 = v350 & 0x3F;
            outlined copy of _Glass.Variant.ID(v355, v341);
            outlined copy of _Glass.Variant.ID(v345, v350);
            outlined copy of _Glass.Variant.ID(v355, v341);
            outlined copy of _Glass.Variant.ID(v345, v350);
            v400 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v355, v341);
            outlined consume of _Glass.Variant.ID(v345, v350);
            outlined consume of _Glass.Variant.ID(v345, v350);
            outlined consume of _Glass.Variant.ID(v355, v341);
            outlined consume of _Glass.Variant.ID(v386, v381);
            outlined consume of _Glass.Variant.ID(v391, v376);
            outlined consume of _Glass.Variant.ID(v391, v376);
            outlined consume of _Glass.Variant.ID(v386, v381);
            v38 = v418;
            v39 = v412;
            if ((v400 & 1) == 0 || v54 != v57)
            {
              goto LABEL_357;
            }

            goto LABEL_100;
          }

          if (v355 | v341 ^ 0x80)
          {
            v118 = v350 & 0xC0;
            if (v341 == 128 && v355 == 1)
            {
              if (v118 != 128 || v345 != 1 || v350 != 128)
              {
                goto LABEL_225;
              }

              v120 = 1;
            }

            else
            {
              if (v118 != 128 || v345 != 2 || v350 != 128)
              {
                goto LABEL_225;
              }

              v120 = 2;
            }
          }

          else
          {
            if ((v350 & 0xC0) != 0x80 || v345 || v350 != 128)
            {
LABEL_225:
              v145 = v104;
              v146 = v106;
              outlined copy of _Glass.Variant.ID(v104, v341);
              outlined copy of _Glass.Variant.ID(v146, v105);
              outlined consume of _Glass.Variant.ID(v145, v341);
              v147 = v146;
              v148 = v105;
              goto LABEL_354;
            }

            v120 = 0;
          }

          outlined consume of _Glass.Variant.ID(v355, v341);
          outlined consume of _Glass.Variant.ID(v120, 0x80u);
          v60 = v381;
          outlined consume of _Glass.Variant.ID(v386, v381);
          outlined consume of _Glass.Variant.ID(v391, v376);
          outlined consume of _Glass.Variant.ID(v391, v376);
LABEL_223:
          outlined consume of _Glass.Variant.ID(v386, v60);
          v38 = v418;
          v39 = v412;
          if (v54 != v57)
          {
            goto LABEL_357;
          }

          goto LABEL_100;
        }

        v105 = v350;
        v104 = v355;
        v106 = v345;
        if (v350 >= 0x40)
        {
          goto LABEL_225;
        }

        v108 = *(v355 + 16);
        v109 = *(v355 + 24);
        v110 = *(v355 + 48);
        v111 = *(v345 + 16);
        v112 = *(v345 + 24);
        v113 = *(v345 + 48);
        v359 = v111;
        v363 = *(v355 + 24);
        v401 = v108;
        v367 = *(v345 + 24);
        if (v109 >> 6)
        {
          if (v109 >> 6 == 1)
          {
            if ((v112 & 0xC0) != 0x40)
            {
              goto LABEL_385;
            }

            v327 = *(v355 + 32);
            v335 = *(v345 + 32);
            v322 = *(v345 + 40);
            v317 = *(v355 + 40);
            *&v436[0] = *(v355 + 16);
            BYTE8(v436[0]) = v109 & 0x3F;
            v429 = v111;
            v430 = v112 & 0x3F;
            v114 = v109;
            v115 = v341;
            outlined copy of _Glass.Variant.ID(v355, v341);
            outlined copy of _Glass.Variant.ID(v345, v350);
            outlined copy of _Glass.Variant.ID(v401, v114);
            outlined copy of _Glass.Variant.ID(v359, v367);
            outlined copy of _Glass.Variant.ID(v355, v341);
            outlined copy of _Glass.Variant.ID(v345, v350);
            outlined copy of _Glass.Variant.ID(v401, v114);
            outlined copy of _Glass.Variant.ID(v359, v367);
            v308 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v401, v363);
            outlined consume of _Glass.Variant.ID(v359, v367);
            v116 = v355;
            v117 = v345;
            outlined consume of _Glass.Variant.ID(v359, v367);
            outlined consume of _Glass.Variant.ID(v401, v363);
            if ((v308 & 1) == 0)
            {
              goto LABEL_386;
            }
          }

          else
          {
            if (v108 | v109 ^ 0x80)
            {
              v176 = v112 & 0xC0;
              if (*(v355 + 24) == 128 && v108 == 1)
              {
                if (v176 != 128 || v111 != 1 || v112 != 128)
                {
                  goto LABEL_385;
                }

                v327 = *(v355 + 32);
                v335 = *(v345 + 32);
                v322 = *(v345 + 40);
                v317 = *(v355 + 40);
                v178 = v345;
                v179 = 1;
              }

              else
              {
                if (v176 != 128 || v111 != 2 || v112 != 128)
                {
                  goto LABEL_385;
                }

                v327 = *(v355 + 32);
                v335 = *(v345 + 32);
                v322 = *(v345 + 40);
                v317 = *(v355 + 40);
                v178 = v345;
                v179 = 2;
              }

              v368 = v179;
            }

            else
            {
              if ((v112 & 0xC0) != 0x80 || v111 || v112 != 128)
              {
LABEL_385:
                outlined copy of _Glass.Variant.ID(v355, v341);
                outlined copy of _Glass.Variant.ID(v345, v350);
                outlined copy of _Glass.Variant.ID(v355, v341);
                outlined copy of _Glass.Variant.ID(v345, v350);
                outlined copy of _Glass.Variant.ID(v108, v363);
                outlined copy of _Glass.Variant.ID(v359, v367);
                v116 = v355;
                outlined consume of _Glass.Variant.ID(v108, v363);
                v115 = v341;
                v117 = v345;
                outlined consume of _Glass.Variant.ID(v359, v367);
LABEL_386:
                outlined consume of _Glass.Variant.ID(v116, v115);
                outlined consume of _Glass.Variant.ID(v117, v105);
LABEL_387:
                outlined consume of _Glass.Variant.ID(v117, v105);
                v147 = v116;
                v148 = v115;
                goto LABEL_354;
              }

              v327 = *(v355 + 32);
              v335 = *(v345 + 32);
              v322 = *(v345 + 40);
              v317 = *(v355 + 40);
              v178 = v345;
              v368 = 0;
            }

            outlined copy of _Glass.Variant.ID(v355, v341);
            outlined copy of _Glass.Variant.ID(v178, v350);
            outlined copy of _Glass.Variant.ID(v355, v341);
            outlined copy of _Glass.Variant.ID(v178, v350);
            outlined consume of _Glass.Variant.ID(v108, v363);
            outlined consume of _Glass.Variant.ID(v368, 0x80u);
          }
        }

        else
        {
          if (v112 >= 0x40)
          {
            goto LABEL_385;
          }

          v327 = *(v355 + 32);
          v335 = *(v345 + 32);
          v322 = *(v345 + 40);
          v317 = *(v355 + 40);
          v286 = *(v108 + 32);
          v280 = *(v108 + 40);
          v171 = *(v108 + 48);
          v310 = *(v111 + 16);
          v275 = *(v111 + 32);
          v270 = *(v111 + 40);
          v172 = *(v111 + 48);
          v173 = *(v108 + 24);
          v291 = v173;
          v174 = *(v111 + 24);
          v302 = v174;
          *&v436[0] = *(v108 + 16);
          v296 = *&v436[0];
          BYTE8(v436[0]) = v173;
          v429 = v310;
          v430 = v174;
          outlined copy of _Glass.Variant.ID(v355, v341);
          outlined copy of _Glass.Variant.ID(v345, v350);
          outlined copy of _Glass.Variant.ID(v108, v363);
          outlined copy of _Glass.Variant.ID(v359, v367);
          outlined copy of _Glass.Variant.ID(v355, v341);
          outlined copy of _Glass.Variant.ID(v345, v350);
          outlined copy of _Glass.Variant.ID(v108, v363);
          outlined copy of _Glass.Variant.ID(v359, v367);
          outlined copy of _Glass.Variant.ID(v296, v291);
          outlined copy of _Glass.Variant.ID(v310, v302);
          v175 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          if ((v175 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v401, v363);
            outlined consume of _Glass.Variant.ID(v359, v367);
            outlined consume of _Glass.Variant.ID(v359, v367);
            outlined consume of _Glass.Variant.ID(v401, v363);
            v115 = v341;
            v117 = v345;
            v116 = v355;
            goto LABEL_386;
          }

          *&v436[0] = v286;
          BYTE8(v436[0]) = v280;
          v429 = v275;
          v430 = v270;
          outlined copy of _Glass.Variant.ID(v286, v280);
          outlined copy of _Glass.Variant.ID(v275, v270);
          v311 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          outlined consume of _Glass.Variant.ID(v401, v363);
          outlined consume of _Glass.Variant.ID(v359, v367);
          outlined consume of _Glass.Variant.ID(v359, v367);
          outlined consume of _Glass.Variant.ID(v401, v363);
          v115 = v341;
          v117 = v345;
          v116 = v355;
          if ((v311 & 1) == 0 || v171 != v172)
          {
            goto LABEL_386;
          }
        }

        if (v317 >> 6)
        {
          if (v317 >> 6 == 1)
          {
            v200 = v322;
            v201 = v327;
            if ((v322 & 0xC0) != 0x40)
            {
              goto LABEL_433;
            }

            *&v436[0] = v327;
            BYTE8(v436[0]) = v317 & 0x3F;
            v429 = v335;
            v430 = v322 & 0x3F;
            outlined copy of _Glass.Variant.ID(v335, v322);
            outlined copy of _Glass.Variant.ID(v327, v317);
            outlined copy of _Glass.Variant.ID(v335, v322);
            outlined copy of _Glass.Variant.ID(v327, v317);
            v406 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
            outlined consume of _Glass.Variant.ID(v327, v317);
            outlined consume of _Glass.Variant.ID(v335, v322);
            outlined consume of _Glass.Variant.ID(v335, v322);
            outlined consume of _Glass.Variant.ID(v327, v317);
            v116 = v355;
            v115 = v341;
            outlined consume of _Glass.Variant.ID(v355, v341);
            v117 = v345;
            outlined consume of _Glass.Variant.ID(v345, v350);
            if ((v406 & 1) == 0)
            {
              goto LABEL_387;
            }

            goto LABEL_492;
          }

          v408 = v3;
          LOWORD(v3) = v13;
          v13 = v12;
          v214 = v15;
          v201 = v327;
          if (v327 | v317 ^ 0x80)
          {
            if (v317 == 128 && v327 == 1)
            {
              v216 = v322;
              if ((v322 & 0xC0) != 0x80 || v335 != 1 || v322 != 128)
              {
                goto LABEL_434;
              }

              v219 = v327;
              v220 = 1;
            }

            else
            {
              v216 = v322;
              if ((v322 & 0xC0) != 0x80 || v335 != 2 || v322 != 128)
              {
                goto LABEL_434;
              }

              v219 = v327;
              v220 = 2;
            }
          }

          else
          {
            v216 = v322;
            if ((v322 & 0xC0) != 0x80 || v335 || v322 != 128)
            {
              goto LABEL_434;
            }

            v219 = v327;
            v220 = 0;
          }

          outlined copy of _Glass.Variant.ID(v220, 0x80u);
          outlined consume of _Glass.Variant.ID(v219, v317);
          outlined consume of _Glass.Variant.ID(v220, 0x80u);
          outlined consume of _Glass.Variant.ID(v219, v317);
          v115 = v341;
          v117 = v345;
          v116 = v355;
          v12 = v13;
          LOWORD(v13) = v3;
          v3 = v408;
        }

        else
        {
          v200 = v322;
          v201 = v327;
          if (v322 >= 0x40)
          {
LABEL_433:
            v408 = v3;
            LOBYTE(v3) = v13;
            v13 = v12;
            v214 = v15;
            v215 = v200;
            outlined copy of _Glass.Variant.ID(v201, v317);
            v216 = v215;
LABEL_434:
            v217 = v216;
            outlined copy of _Glass.Variant.ID(v335, v216);
            outlined consume of _Glass.Variant.ID(v201, v317);
            outlined consume of _Glass.Variant.ID(v335, v217);
            v115 = v341;
            v117 = v345;
            v116 = v355;
            v105 = v350;
            v15 = v214;
            v12 = v13;
            LOBYTE(v13) = v3;
            goto LABEL_435;
          }

          v408 = v3;
          v298 = v12;
          v304 = v13;
          v314 = v15;
          v369 = *(v327 + 32);
          v364 = *(v327 + 40);
          v207 = *(v327 + 48);
          v209 = *(v335 + 16);
          v360 = *(v335 + 32);
          v293 = *(v335 + 40);
          v210 = *(v335 + 48);
          v211 = *(v327 + 24);
          v212 = *(v335 + 24);
          *&v436[0] = *(v327 + 16);
          v208 = *&v436[0];
          BYTE8(v436[0]) = v211;
          v429 = v209;
          v430 = v212;
          outlined copy of _Glass.Variant.ID(v335, v322);
          outlined copy of _Glass.Variant.ID(v327, v317);
          outlined copy of _Glass.Variant.ID(v335, v322);
          outlined copy of _Glass.Variant.ID(v327, v317);
          outlined copy of _Glass.Variant.ID(v208, v211);
          outlined copy of _Glass.Variant.ID(v209, v212);
          v213 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          if ((v213 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v327, v317);
            outlined consume of _Glass.Variant.ID(v335, v322);
            outlined consume of _Glass.Variant.ID(v335, v322);
            outlined consume of _Glass.Variant.ID(v327, v317);
            v115 = v341;
            v117 = v345;
            v116 = v355;
            LOBYTE(v13) = v304;
            v15 = v314;
            v12 = v298;
LABEL_435:
            v3 = v408;
            goto LABEL_386;
          }

          *&v436[0] = v369;
          BYTE8(v436[0]) = v364;
          v429 = v360;
          v430 = v293;
          outlined copy of _Glass.Variant.ID(v369, v364);
          outlined copy of _Glass.Variant.ID(v360, v293);
          v370 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          outlined consume of _Glass.Variant.ID(v327, v317);
          outlined consume of _Glass.Variant.ID(v335, v322);
          outlined consume of _Glass.Variant.ID(v335, v322);
          outlined consume of _Glass.Variant.ID(v327, v317);
          v115 = v341;
          v117 = v345;
          v116 = v355;
          LOWORD(v13) = v304;
          v15 = v314;
          v12 = v298;
          v3 = v408;
          if ((v370 & 1) == 0 || v207 != v210)
          {
            goto LABEL_386;
          }
        }

        outlined consume of _Glass.Variant.ID(v116, v115);
        outlined consume of _Glass.Variant.ID(v117, v350);
LABEL_492:
        outlined consume of _Glass.Variant.ID(v117, v350);
        outlined consume of _Glass.Variant.ID(v116, v115);
        v60 = v381;
        outlined consume of _Glass.Variant.ID(v386, v381);
        outlined consume of _Glass.Variant.ID(v391, v376);
        outlined consume of _Glass.Variant.ID(v391, v376);
        if (v110 != v113)
        {
          goto LABEL_356;
        }

        goto LABEL_223;
      }

      if (v56 >= 0x40)
      {
        goto LABEL_165;
      }

      v334 = *(v52 + 16);
      v307 = *(v52 + 32);
      v89 = *(v52 + 48);
      v316 = *(v55 + 16);
      v321 = *(v52 + 24);
      v326 = *(v55 + 24);
      v301 = *(v55 + 32);
      v295 = *(v55 + 40);
      v90 = *(v55 + 48);
      if (v321 >> 6)
      {
        if (v321 >> 6 == 1)
        {
          if ((v326 & 0xC0) != 0x40)
          {
            goto LABEL_259;
          }

          v290 = *(v52 + 40);
          v341 = *(v29 + 40);
          v345 = *(v32 + 32);
          v350 = *(v32 + 40);
          v355 = *(v29 + 32);
          v372 = *(v28 + 32);
          v373 = *(v12 + 32);
          v371 = *(v28 + 40);
          v374 = *(v12 + 40);
          v414 = v3->i8[9];
          v415 = v3[1].i64[0];
          v394 = v3[1].i64[1];
          v421 = 40 * v9;
          v429 = *(v52 + 16);
          v430 = v321 & 0x3F;
          v427 = v316;
          v428 = v326 & 0x3F;
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v29, v381);
          outlined copy of _Glass.Variant.ID(v391, v33);
          outlined copy of _Glass.Variant.ID(v361, v396);
          outlined copy of _Glass.Variant.ID(v357, v365);
          outlined copy of _Glass.Variant.ID(v334, v321);
          outlined copy of _Glass.Variant.ID(v316, v326);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v418, v25);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v29, v381);
          outlined copy of _Glass.Variant.ID(v391, v33);
          outlined copy of _Glass.Variant.ID(v361, v396);
          outlined copy of _Glass.Variant.ID(v357, v365);
          outlined copy of _Glass.Variant.ID(v334, v321);
          outlined copy of _Glass.Variant.ID(v316, v326);
          v283 = specialized static Material.ID.== infix(_:_:)(&v429, &v427);
          outlined consume of _Glass.Variant.ID(v334, v321);
          outlined consume of _Glass.Variant.ID(v316, v326);
          v91 = v365;
          v92 = v361;
          outlined consume of _Glass.Variant.ID(v316, v326);
          v93 = v396;
          outlined consume of _Glass.Variant.ID(v334, v321);
          if ((v283 & 1) == 0)
          {
            goto LABEL_352;
          }
        }

        else
        {
          if (v334 | v321 ^ 0x80)
          {
            if (*(v52 + 24) == 128 && v334 == 1)
            {
              if ((v326 & 0xC0) != 0x80 || v316 != 1 || v326 != 128)
              {
                goto LABEL_259;
              }

              v290 = *(v52 + 40);
              v341 = *(v29 + 40);
              v345 = *(v32 + 32);
              v350 = *(v32 + 40);
              v355 = *(v29 + 32);
              v372 = *(v28 + 32);
              v373 = *(v12 + 32);
              v371 = *(v28 + 40);
              v374 = *(v12 + 40);
              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              v140 = v381;
              outlined copy of _Glass.Variant.ID(v29, v381);
              v141 = v391;
              v142 = v376;
              outlined copy of _Glass.Variant.ID(v391, v376);
              v143 = v396;
              outlined copy of _Glass.Variant.ID(v361, v396);
              outlined copy of _Glass.Variant.ID(v357, v365);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              v144 = 1;
            }

            else
            {
              if ((v326 & 0xC0) != 0x80 || v316 != 2 || v326 != 128)
              {
                goto LABEL_259;
              }

              v290 = *(v52 + 40);
              v341 = *(v29 + 40);
              v345 = *(v32 + 32);
              v350 = *(v32 + 40);
              v355 = *(v29 + 32);
              v372 = *(v28 + 32);
              v373 = *(v12 + 32);
              v371 = *(v28 + 40);
              v374 = *(v12 + 40);
              v414 = v3->i8[9];
              v415 = v3[1].i64[0];
              v394 = v3[1].i64[1];
              v421 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              v140 = v381;
              outlined copy of _Glass.Variant.ID(v29, v381);
              v141 = v391;
              v142 = v376;
              outlined copy of _Glass.Variant.ID(v391, v376);
              v143 = v396;
              outlined copy of _Glass.Variant.ID(v361, v396);
              outlined copy of _Glass.Variant.ID(v357, v365);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              v144 = 2;
            }

            v329 = v144;
          }

          else
          {
            if ((v326 & 0xC0) != 0x80 || v316 || v326 != 128)
            {
LABEL_259:
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v29, v381);
              outlined copy of _Glass.Variant.ID(v391, v33);
              outlined copy of _Glass.Variant.ID(v361, v396);
              outlined copy of _Glass.Variant.ID(v357, v365);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v418, v25);
              outlined copy of _Glass.Variant.ID(v12, v13);
              outlined copy of _Glass.Variant.ID(v29, v381);
              outlined copy of _Glass.Variant.ID(v391, v33);
              outlined copy of _Glass.Variant.ID(v361, v396);
              outlined copy of _Glass.Variant.ID(v357, v365);
              outlined copy of _Glass.Variant.ID(v334, v321);
              outlined copy of _Glass.Variant.ID(v316, v326);
              v91 = v365;
              outlined consume of _Glass.Variant.ID(v334, v321);
              v93 = v396;
              v92 = v361;
              outlined consume of _Glass.Variant.ID(v316, v326);
              goto LABEL_352;
            }

            v290 = *(v52 + 40);
            v341 = *(v29 + 40);
            v345 = *(v32 + 32);
            v350 = *(v32 + 40);
            v355 = *(v29 + 32);
            v372 = *(v28 + 32);
            v373 = *(v12 + 32);
            v371 = *(v28 + 40);
            v374 = *(v12 + 40);
            v414 = v3->i8[9];
            v415 = v3[1].i64[0];
            v394 = v3[1].i64[1];
            v421 = 40 * v9;
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            v140 = v381;
            outlined copy of _Glass.Variant.ID(v29, v381);
            v141 = v391;
            v142 = v376;
            outlined copy of _Glass.Variant.ID(v391, v376);
            v143 = v396;
            outlined copy of _Glass.Variant.ID(v361, v396);
            outlined copy of _Glass.Variant.ID(v357, v365);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            v329 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v418, v412);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v386, v140);
          outlined copy of _Glass.Variant.ID(v141, v142);
          outlined copy of _Glass.Variant.ID(v361, v143);
          outlined copy of _Glass.Variant.ID(v357, v365);
          outlined consume of _Glass.Variant.ID(v334, v321);
          outlined consume of _Glass.Variant.ID(v329, 0x80u);
        }
      }

      else
      {
        if (v326 >= 0x40)
        {
          goto LABEL_259;
        }

        v290 = *(v52 + 40);
        v341 = *(v29 + 40);
        v345 = *(v32 + 32);
        v350 = *(v32 + 40);
        v355 = *(v29 + 32);
        v371 = *(v28 + 40);
        v373 = *(v12 + 32);
        v374 = *(v12 + 40);
        v414 = v3->i8[9];
        v415 = v3[1].i64[0];
        v394 = v3[1].i64[1];
        v421 = 40 * v9;
        v133 = *(v334 + 24);
        v267 = *(v334 + 32);
        v266 = *(v334 + 40);
        v134 = *(v334 + 48);
        v273 = *(v316 + 16);
        v278 = *(v334 + 16);
        v284 = *(v316 + 24);
        v265 = *(v316 + 32);
        v264 = *(v316 + 40);
        v135 = *(v316 + 48);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        v268 = v133;
        if (v133 >> 6)
        {
          if (v133 >> 6 == 1)
          {
            if ((v284 & 0xC0) != 0x40)
            {
              goto LABEL_326;
            }

            v372 = v34;
            v429 = v278;
            v430 = v133 & 0x3F;
            v427 = v273;
            v428 = v284 & 0x3F;
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v386, v381);
            outlined copy of _Glass.Variant.ID(v391, v33);
            outlined copy of _Glass.Variant.ID(v361, v396);
            outlined copy of _Glass.Variant.ID(v357, v365);
            v136 = v321;
            outlined copy of _Glass.Variant.ID(v334, v321);
            v137 = v326;
            outlined copy of _Glass.Variant.ID(v316, v326);
            outlined copy of _Glass.Variant.ID(v273, v284);
            outlined copy of _Glass.Variant.ID(v278, v133);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v418, v412);
            outlined copy of _Glass.Variant.ID(v12, v13);
            outlined copy of _Glass.Variant.ID(v386, v381);
            outlined copy of _Glass.Variant.ID(v391, v376);
            outlined copy of _Glass.Variant.ID(v361, v396);
            outlined copy of _Glass.Variant.ID(v357, v365);
            outlined copy of _Glass.Variant.ID(v334, v321);
            outlined copy of _Glass.Variant.ID(v316, v326);
            outlined copy of _Glass.Variant.ID(v273, v284);
            outlined copy of _Glass.Variant.ID(v278, v133);
            v261 = specialized static Material.ID.== infix(_:_:)(&v429, &v427);
            outlined consume of _Glass.Variant.ID(v278, v133);
            outlined consume of _Glass.Variant.ID(v273, v284);
            v138 = v334;
            outlined consume of _Glass.Variant.ID(v273, v284);
            outlined consume of _Glass.Variant.ID(v278, v133);
            if ((v261 & 1) == 0)
            {
              goto LABEL_328;
            }
          }

          else
          {
            if (v278 | v133 ^ 0x80)
            {
              if (v133 == 128 && v278 == 1)
              {
                if ((v284 & 0xC0) != 0x80 || v273 != 1 || v284 != 128)
                {
                  goto LABEL_327;
                }

                v372 = v34;
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
                outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
                outlined copy of _Glass.Variant.ID(v386, v381);
                outlined copy of _Glass.Variant.ID(v391, v33);
                outlined copy of _Glass.Variant.ID(v361, v396);
                v195 = v365;
                outlined copy of _Glass.Variant.ID(v357, v365);
                v136 = v321;
                outlined copy of _Glass.Variant.ID(v334, v321);
                v137 = v326;
                outlined copy of _Glass.Variant.ID(v316, v326);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
                v196 = 1;
              }

              else
              {
                if ((v284 & 0xC0) != 0x80 || v273 != 2 || v284 != 128)
                {
                  goto LABEL_327;
                }

                v372 = v34;
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
                outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
                outlined copy of _Glass.Variant.ID(v386, v381);
                outlined copy of _Glass.Variant.ID(v391, v33);
                outlined copy of _Glass.Variant.ID(v361, v396);
                v195 = v365;
                outlined copy of _Glass.Variant.ID(v357, v365);
                v136 = v321;
                outlined copy of _Glass.Variant.ID(v334, v321);
                v137 = v326;
                outlined copy of _Glass.Variant.ID(v316, v326);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
                v196 = 2;
              }
            }

            else
            {
              if ((v284 & 0xC0) != 0x80 || v273 || v284 != 128)
              {
                goto LABEL_327;
              }

              v372 = v34;
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v386, v381);
              outlined copy of _Glass.Variant.ID(v391, v33);
              outlined copy of _Glass.Variant.ID(v361, v396);
              v195 = v365;
              outlined copy of _Glass.Variant.ID(v357, v365);
              v136 = v321;
              outlined copy of _Glass.Variant.ID(v334, v321);
              v137 = v326;
              outlined copy of _Glass.Variant.ID(v316, v326);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
              v196 = 0;
            }

            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v418, v412);
            outlined copy of _Glass.Variant.ID(v12, v13);
            outlined copy of _Glass.Variant.ID(v386, v381);
            outlined copy of _Glass.Variant.ID(v391, v376);
            outlined copy of _Glass.Variant.ID(v361, v396);
            outlined copy of _Glass.Variant.ID(v357, v195);
            outlined copy of _Glass.Variant.ID(v334, v136);
            outlined copy of _Glass.Variant.ID(v316, v137);
            outlined copy of _Glass.Variant.ID(v196, 0x80u);
            outlined consume of _Glass.Variant.ID(v278, v268);
            outlined consume of _Glass.Variant.ID(v196, 0x80u);
          }
        }

        else
        {
          if (v284 >= 0x40)
          {
LABEL_326:
            outlined copy of _Glass.Variant.ID(v278, v133);
LABEL_327:
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v386, v381);
            outlined copy of _Glass.Variant.ID(v391, v33);
            outlined copy of _Glass.Variant.ID(v361, v396);
            outlined copy of _Glass.Variant.ID(v357, v365);
            outlined copy of _Glass.Variant.ID(v334, v321);
            outlined copy of _Glass.Variant.ID(v316, v326);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v418, v25);
            outlined copy of _Glass.Variant.ID(v12, v13);
            outlined copy of _Glass.Variant.ID(v386, v381);
            outlined copy of _Glass.Variant.ID(v391, v33);
            outlined copy of _Glass.Variant.ID(v361, v396);
            outlined copy of _Glass.Variant.ID(v357, v365);
            outlined copy of _Glass.Variant.ID(v334, v321);
            outlined copy of _Glass.Variant.ID(v316, v326);
            outlined copy of _Glass.Variant.ID(v273, v284);
            outlined consume of _Glass.Variant.ID(v278, v133);
            v138 = v334;
            v137 = v326;
            v136 = v321;
            outlined consume of _Glass.Variant.ID(v273, v284);
            goto LABEL_328;
          }

          v372 = v34;
          v257 = *(v278 + 32);
          v256 = *(v278 + 40);
          v262 = *(v273 + 16);
          v255 = *(v273 + 32);
          v254 = *(v273 + 40);
          v252 = *(v273 + 48);
          v253 = *(v278 + 48);
          v258 = *(v278 + 24);
          v260 = *(v273 + 24);
          v429 = *(v278 + 16);
          v259 = v429;
          v430 = v258;
          v427 = v262;
          v428 = v260;
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v386, v381);
          outlined copy of _Glass.Variant.ID(v391, v33);
          outlined copy of _Glass.Variant.ID(v361, v396);
          outlined copy of _Glass.Variant.ID(v357, v365);
          v136 = v321;
          outlined copy of _Glass.Variant.ID(v334, v321);
          v137 = v326;
          outlined copy of _Glass.Variant.ID(v316, v326);
          outlined copy of _Glass.Variant.ID(v273, v284);
          outlined copy of _Glass.Variant.ID(v278, v133);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v418, v412);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v386, v381);
          outlined copy of _Glass.Variant.ID(v391, v376);
          outlined copy of _Glass.Variant.ID(v361, v396);
          outlined copy of _Glass.Variant.ID(v357, v365);
          outlined copy of _Glass.Variant.ID(v334, v321);
          outlined copy of _Glass.Variant.ID(v316, v326);
          outlined copy of _Glass.Variant.ID(v273, v284);
          outlined copy of _Glass.Variant.ID(v278, v133);
          outlined copy of _Glass.Variant.ID(v259, v258);
          outlined copy of _Glass.Variant.ID(v262, v260);
          v191 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v429, &v427);
          outlined consume of _Glass.Variant.ID(v427, v428);
          outlined consume of _Glass.Variant.ID(v429, v430);
          if ((v191 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v278, v268);
            outlined consume of _Glass.Variant.ID(v273, v284);
            outlined consume of _Glass.Variant.ID(v273, v284);
            outlined consume of _Glass.Variant.ID(v278, v268);
            v138 = v334;
LABEL_328:
            outlined consume of _Glass.Variant.ID(v138, v136);
            outlined consume of _Glass.Variant.ID(v316, v137);
            outlined consume of _Glass.Variant.ID(v316, v137);
            v192 = v138;
            v193 = v136;
            goto LABEL_351;
          }

          *&v436[0] = v257;
          BYTE8(v436[0]) = v256;
          v429 = v255;
          v430 = v254;
          outlined copy of _Glass.Variant.ID(v257, v256);
          outlined copy of _Glass.Variant.ID(v255, v254);
          v263 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v429, v430);
          outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
          outlined consume of _Glass.Variant.ID(v278, v268);
          outlined consume of _Glass.Variant.ID(v273, v284);
          outlined consume of _Glass.Variant.ID(v273, v284);
          outlined consume of _Glass.Variant.ID(v278, v268);
          v138 = v334;
          if ((v263 & 1) == 0 || v253 != v252)
          {
            goto LABEL_328;
          }
        }

        *&v436[0] = v267;
        BYTE8(v436[0]) = v266;
        v429 = v265;
        v430 = v264;
        outlined copy of _Glass.Variant.ID(v267, v266);
        outlined copy of _Glass.Variant.ID(v265, v264);
        v288 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
        outlined consume of _Glass.Variant.ID(v429, v430);
        outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
        outlined consume of _Glass.Variant.ID(v334, v136);
        outlined consume of _Glass.Variant.ID(v316, v137);
        outlined consume of _Glass.Variant.ID(v316, v137);
        outlined consume of _Glass.Variant.ID(v334, v136);
        v93 = v396;
        v92 = v361;
        v91 = v365;
        if ((v288 & 1) == 0 || v134 != v135)
        {
          goto LABEL_352;
        }
      }

      if (v290 >> 6)
      {
        v151 = v307;
        v152 = v295;
        if (v290 >> 6 == 1)
        {
          if ((v295 & 0xC0) != 0x40)
          {
            goto LABEL_350;
          }

          *&v436[0] = v307;
          BYTE8(v436[0]) = v290 & 0x3F;
          v429 = v301;
          v430 = v295 & 0x3F;
          outlined copy of _Glass.Variant.ID(v307, v290);
          outlined copy of _Glass.Variant.ID(v301, v295);
          outlined copy of _Glass.Variant.ID(v307, v290);
          outlined copy of _Glass.Variant.ID(v301, v295);
          v337 = specialized static Material.ID.== infix(_:_:)(v436, &v429);
          outlined consume of _Glass.Variant.ID(v307, v290);
          outlined consume of _Glass.Variant.ID(v301, v295);
          outlined consume of _Glass.Variant.ID(v301, v295);
          outlined consume of _Glass.Variant.ID(v307, v290);
          outlined consume of _Glass.Variant.ID(v361, v396);
          outlined consume of _Glass.Variant.ID(v357, v365);
          outlined consume of _Glass.Variant.ID(v357, v365);
          outlined consume of _Glass.Variant.ID(v361, v396);
          v60 = v381;
          LOBYTE(v33) = v376;
          v61 = v391;
          if ((v337 & 1) == 0 || v89 != v90)
          {
            goto LABEL_355;
          }

          goto LABEL_159;
        }

        if (v307 | v290 ^ 0x80)
        {
          v158 = v295 & 0xC0;
          if (v290 == 128 && v307 == 1)
          {
            if (v158 != 128 || v301 != 1 || v295 != 128)
            {
              goto LABEL_350;
            }

            v160 = 1;
          }

          else
          {
            if (v158 != 128 || v301 != 2 || v295 != 128)
            {
              goto LABEL_350;
            }

            v160 = 2;
          }
        }

        else
        {
          if ((v295 & 0xC0) != 0x80 || v301 || v295 != 128)
          {
LABEL_350:
            v197 = v151;
            outlined copy of _Glass.Variant.ID(v151, v290);
            outlined copy of _Glass.Variant.ID(v301, v152);
            outlined consume of _Glass.Variant.ID(v197, v290);
            v192 = v301;
            v193 = v152;
            goto LABEL_351;
          }

          v160 = 0;
        }

        outlined consume of _Glass.Variant.ID(v307, v290);
        outlined consume of _Glass.Variant.ID(v160, 0x80u);
        v92 = v361;
        v93 = v396;
        outlined consume of _Glass.Variant.ID(v361, v396);
        outlined consume of _Glass.Variant.ID(v357, v365);
        outlined consume of _Glass.Variant.ID(v357, v365);
      }

      else
      {
        v152 = v295;
        v151 = v307;
        if (v295 >= 0x40)
        {
          goto LABEL_350;
        }

        v285 = *(v307 + 32);
        v279 = *(v307 + 40);
        v153 = *(v307 + 48);
        v338 = *(v301 + 16);
        v274 = *(v301 + 32);
        v269 = *(v301 + 40);
        v154 = *(v301 + 48);
        v155 = *(v307 + 24);
        v319 = v155;
        v156 = *(v301 + 24);
        v330 = v156;
        *&v436[0] = *(v307 + 16);
        v324 = *&v436[0];
        BYTE8(v436[0]) = v155;
        v429 = v338;
        v430 = v156;
        outlined copy of _Glass.Variant.ID(v307, v290);
        outlined copy of _Glass.Variant.ID(v301, v295);
        outlined copy of _Glass.Variant.ID(v307, v290);
        outlined copy of _Glass.Variant.ID(v301, v295);
        outlined copy of _Glass.Variant.ID(v324, v319);
        outlined copy of _Glass.Variant.ID(v338, v330);
        v157 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
        outlined consume of _Glass.Variant.ID(v429, v430);
        outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
        if ((v157 & 1) == 0)
        {
          outlined consume of _Glass.Variant.ID(v307, v290);
          outlined consume of _Glass.Variant.ID(v301, v295);
          outlined consume of _Glass.Variant.ID(v301, v295);
          v192 = v307;
          v193 = v290;
LABEL_351:
          outlined consume of _Glass.Variant.ID(v192, v193);
          v93 = v396;
          v92 = v361;
          v91 = v365;
LABEL_352:
          outlined consume of _Glass.Variant.ID(v92, v93);
          outlined consume of _Glass.Variant.ID(v357, v91);
          outlined consume of _Glass.Variant.ID(v357, v91);
LABEL_353:
          v147 = v92;
          v148 = v93;
LABEL_354:
          outlined consume of _Glass.Variant.ID(v147, v148);
          v60 = v381;
          LOBYTE(v33) = v376;
          v61 = v391;
LABEL_355:
          outlined consume of _Glass.Variant.ID(v386, v60);
          outlined consume of _Glass.Variant.ID(v61, v33);
          outlined consume of _Glass.Variant.ID(v61, v33);
LABEL_356:
          outlined consume of _Glass.Variant.ID(v386, v60);
          v38 = v418;
          v39 = v412;
LABEL_357:
          _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined consume of _Glass.Variant.ID(v12, v13);
          outlined consume of _Glass.Variant.ID(v38, v39);
          outlined destroy of GlassContainer.Entry.ModelID(v3);
          result = outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          v10 = v422;
          a2 = v420;
          v5 = v413;
          goto LABEL_5;
        }

        *&v436[0] = v285;
        BYTE8(v436[0]) = v279;
        v429 = v274;
        v430 = v269;
        outlined copy of _Glass.Variant.ID(v285, v279);
        outlined copy of _Glass.Variant.ID(v274, v269);
        v339 = specialized static _Glass.Variant.ID.== infix(_:_:)(v436, &v429);
        outlined consume of _Glass.Variant.ID(v429, v430);
        outlined consume of _Glass.Variant.ID(*&v436[0], BYTE8(v436[0]));
        outlined consume of _Glass.Variant.ID(v307, v290);
        outlined consume of _Glass.Variant.ID(v301, v295);
        outlined consume of _Glass.Variant.ID(v301, v295);
        outlined consume of _Glass.Variant.ID(v307, v290);
        v92 = v361;
        outlined consume of _Glass.Variant.ID(v361, v396);
        outlined consume of _Glass.Variant.ID(v357, v365);
        v93 = v396;
        outlined consume of _Glass.Variant.ID(v357, v365);
        if ((v339 & 1) == 0 || v153 != v154)
        {
          goto LABEL_353;
        }
      }

      outlined consume of _Glass.Variant.ID(v92, v93);
      v60 = v381;
      LOBYTE(v33) = v376;
      v61 = v391;
      if (v89 != v90)
      {
        goto LABEL_355;
      }

      goto LABEL_159;
    }

    if (v16 != 1)
    {
      if (v3[2].i8[0] == 2)
      {
        v23 = vorrq_s8(*v3, v3[1]);
        if (!*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
        {
          v421 = 40 * v9;
          _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          goto LABEL_522;
        }
      }

      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      goto LABEL_4;
    }

    if (v3[2].i8[0] != 1 || v3->i32[0] != v12)
    {
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      v18 = v12;
      v19 = v13;
      v20 = v15;
      v21 = v14;
      v22 = 1;
LABEL_20:
      outlined copy of GlassContainer.Entry.ModelID(v18, v19, v20, v21, v22);
LABEL_4:
      result = _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
      goto LABEL_5;
    }

    v17 = v3->i64[1];
    if (!v13)
    {
      break;
    }

    if (!v17)
    {
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      v44 = v13;
      goto LABEL_47;
    }

    v421 = 40 * v9;
    v417 = v3[1].i64[0];
    if (v13 == v17)
    {
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
    }

    else
    {
      v416 = *(*v13 + 112);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      swift_retain_n();
      a2 = v420;
      v50 = v416(v17);

      if ((v50 & 1) == 0)
      {

        goto LABEL_48;
      }
    }

    _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    result = outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
    v10 = v422;
    if (v15 == v417)
    {
      goto LABEL_522;
    }

LABEL_5:
    v9 = (v9 + 1) & v423;
    if (((*(v424 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_521;
    }
  }

  v421 = 40 * v9;
  outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
  if (v17)
  {
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
    outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
    v44 = 0;
LABEL_47:
    outlined copy of GlassContainer.Entry.ModelID(v12, v44, v15, v14, 1);

LABEL_48:
    _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    v45 = v12;
    v46 = v13;
    v47 = v15;
    v48 = v14;
    v49 = 1;
    goto LABEL_68;
  }

  outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
  outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v436);
  outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
  _sypSgWOhTm_12(v431, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
  outlined destroy of GlassContainer.Entry.ModelID(v3);
  outlined consume of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
LABEL_522:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v248 = *v419;
  *&v436[0] = *v419;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v248 = *&v436[0];
  }

  v249 = *(v248 + 48) + v421;
  v250 = *(v249 + 32);
  v251 = *(v249 + 16);
  *a2 = *v249;
  *(a2 + 16) = v251;
  *(a2 + 32) = v250;
  result = specialized _NativeSet._delete(at:)(v9);
  *v419 = *&v436[0];
  return result;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  result = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + 8 * v8);
    result = specialized _NativeSet._delete(at:)(v8);
    v10 = 0;
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v10 = 1;
  }

  *(a2 + 8) = v10;
  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  DefaultDescriptionAttribute.rawValue.getter();
  String.hash(into:)();

  result = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_103:
    *a2 = 31;
    return result;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xE400000000000000;
    v10 = 1952671090;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE600000000000000;
        v10 = 0x6E696769726FLL;
        break;
      case 2:
        v10 = 0x696F507472617473;
        v9 = 0xEA0000000000746ELL;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v13 = 0x696F50646E65;
        goto LABEL_38;
      case 4:
        v10 = 0x726F66736E617274;
        v9 = 0xE90000000000006DLL;
        break;
      case 5:
        v9 = 0xE500000000000000;
        v10 = 0x7370696C63;
        break;
      case 6:
        v12 = 0x72656E726F63;
        goto LABEL_24;
      case 7:
        v10 = 0xD000000000000011;
        v9 = 0x800000018DD74080;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v10 = 0x7974696361706FLL;
        break;
      case 9:
        v10 = 0x6957726564726F62;
        v9 = 0xEB00000000687464;
        break;
      case 0xA:
        v11 = 0x726564726F62;
        goto LABEL_27;
      case 0xB:
        v10 = 0x756F72676B636162;
        v9 = 0xEF726F6C6F43646ELL;
        break;
      case 0xC:
        v10 = 0xD000000000000011;
        v9 = 0x800000018DD740D0;
        break;
      case 0xD:
        v10 = 0x55656C6261736964;
        v9 = 0xEE00736574616470;
        break;
      case 0xE:
        v10 = 0x704F776F64616873;
        v9 = 0xED00007974696361;
        break;
      case 0xF:
        v12 = 0x776F64616873;
LABEL_24:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
        v9 = 0xEC00000073756964;
        break;
      case 0x10:
        v11 = 0x776F64616873;
LABEL_27:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
        v9 = 0xEB00000000726F6CLL;
        break;
      case 0x11:
        v10 = 0x664F776F64616873;
        v9 = 0xEC00000074657366;
        break;
      case 0x12:
        v10 = 0x6150776F64616873;
        v9 = 0xEA00000000006874;
        break;
      case 0x13:
        v10 = 0xD000000000000012;
        v9 = 0x800000018DD74130;
        break;
      case 0x14:
        v10 = 0x74756F68636E7570;
        v9 = 0xEE00776F64616853;
        break;
      case 0x15:
        v9 = 0xEE007265746E6543;
        goto LABEL_31;
      case 0x16:
        v9 = 0xEF676E696C616353;
LABEL_31:
        v10 = 0x73746E65746E6F63;
        break;
      case 0x17:
        v10 = 0xD000000000000015;
        v9 = 0x800000018DD74180;
        break;
      case 0x18:
        v10 = 0x686353726F6C6F63;
        v9 = 0xEB00000000656D65;
        break;
      case 0x19:
        v9 = 0xE700000000000000;
        v10 = 0x737265746C6966;
        break;
      case 0x1A:
        v9 = 0xEC00000065707954;
        goto LABEL_37;
      case 0x1B:
        v9 = 0xEE0073726F6C6F43;
LABEL_37:
        v13 = 0x656964617267;
LABEL_38:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
        break;
      case 0x1C:
        v10 = 0xD000000000000011;
        v9 = 0x800000018DD741D0;
        break;
      case 0x1D:
        v10 = 0xD000000000000016;
        v9 = 0x800000018DD741F0;
        break;
      case 0x1E:
        v10 = 0x7461506570616873;
        v9 = 0xE900000000000068;
        break;
      default:
        break;
    }

    v14 = 0xE400000000000000;
    v15 = 1952671090;
    switch(a1)
    {
      case 1:
        v14 = 0xE600000000000000;
        if (v10 == 0x6E696769726FLL)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      case 2:
        v14 = 0xEA0000000000746ELL;
        if (v10 != 0x696F507472617473)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 3:
        v14 = 0xE800000000000000;
        v20 = 0x696F50646E65;
        goto LABEL_101;
      case 4:
        v14 = 0xE90000000000006DLL;
        if (v10 != 0x726F66736E617274)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 5:
        v14 = 0xE500000000000000;
        if (v10 != 0x7370696C63)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 6:
        v19 = 0x72656E726F63;
        goto LABEL_71;
      case 7:
        v14 = 0x800000018DD74080;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 8:
        v14 = 0xE700000000000000;
        if (v10 != 0x7974696361706FLL)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 9:
        v17 = 0x6957726564726F62;
        v18 = 6845540;
        goto LABEL_78;
      case 10:
        v16 = 0x726564726F62;
        goto LABEL_77;
      case 11:
        v14 = 0xEF726F6C6F43646ELL;
        if (v10 != 0x756F72676B636162)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 12:
        v14 = 0x800000018DD740D0;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 13:
        v23 = 0x55656C6261736964;
        v24 = 0x736574616470;
        goto LABEL_68;
      case 14:
        v14 = 0xED00007974696361;
        if (v10 != 0x704F776F64616873)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 15:
        v19 = 0x776F64616873;
LABEL_71:
        v21 = v19 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
        v22 = 1937074532;
        goto LABEL_72;
      case 16:
        v16 = 0x776F64616873;
LABEL_77:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
        v18 = 7499628;
        goto LABEL_78;
      case 17:
        v21 = 0x664F776F64616873;
        v22 = 1952805734;
LABEL_72:
        v14 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v21)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 18:
        v14 = 0xEA00000000006874;
        if (v10 != 0x6150776F64616873)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 19:
        v14 = 0x800000018DD74130;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 20:
        v23 = 0x74756F68636E7570;
        v24 = 0x776F64616853;
LABEL_68:
        v14 = v24 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v23)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 21:
        v14 = 0xEE007265746E6543;
        goto LABEL_85;
      case 22:
        v14 = 0xEF676E696C616353;
LABEL_85:
        if (v10 != 0x73746E65746E6F63)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 23:
        v14 = 0x800000018DD74180;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 24:
        v17 = 0x686353726F6C6F63;
        v18 = 6647141;
LABEL_78:
        v14 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v10 != v17)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 25:
        v14 = 0xE700000000000000;
        if (v10 != 0x737265746C6966)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 26:
        v14 = 0xEC00000065707954;
        goto LABEL_100;
      case 27:
        v14 = 0xEE0073726F6C6F43;
LABEL_100:
        v20 = 0x656964617267;
LABEL_101:
        if (v10 != (v20 & 0xFFFFFFFFFFFFLL | 0x746E000000000000))
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 28:
        v14 = 0x800000018DD741D0;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 29:
        v15 = 0xD000000000000016;
        v14 = 0x800000018DD741F0;
        goto LABEL_94;
      case 30:
        v14 = 0xE900000000000068;
        if (v10 != 0x7461506570616873)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      default:
LABEL_94:
        if (v10 != v15)
        {
          goto LABEL_96;
        }

LABEL_95:
        if (v9 != v14)
        {
LABEL_96:
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_105;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_103;
          }

          continue;
        }

LABEL_105:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v2;
        v28 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v27 = v28;
        }

        *a2 = *(*(v27 + 48) + v7);
        result = specialized _NativeSet._delete(at:)(v7);
        *v2 = v28;
        return result;
    }
  }
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a2;
  v7 = a1;
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  v11 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = result & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(v11 + 48) + 20 * v14;
      v17 = *v16 == v7 && *(v16 + 4) == v9;
      v18 = v17 && *(v16 + 8) == v6;
      v19 = v18 && *(v16 + 12) == v10;
      if (v19 && *(v16 + 16) == a3 && ((((a3 & 0x100) != 0) ^ *(v16 + 17)) & 1) == 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    v25 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v21 = v25;
    }

    v22 = *(v21 + 48) + 20 * v14;
    v23 = *(v22 + 16);
    v24 = *(v22 + 17);
    *a4 = *v22;
    *(a4 + 16) = v23;
    *(a4 + 17) = v24;
    result = specialized _NativeSet._delete(at:)(v14);
    *v4 = v25;
  }

  else
  {
LABEL_20:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 512;
  }

  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  _ProposedSize.hash(into:)();
  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = result & ~v13;
  if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_16:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 256;
    return result;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(v11 + 48) + 32 * v14;
    if (*(v16 + 8))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((a2 & 1) != 0 || *v16 != a1)
    {
      goto LABEL_4;
    }

    if ((*(v16 + 24) & 1) == 0)
    {
      break;
    }

    if (a4)
    {
      goto LABEL_13;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((a4 & 1) != 0 || *(v16 + 16) != a3)
  {
    goto LABEL_4;
  }

LABEL_13:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v5;
  v23 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v18 = v23;
  }

  v19 = *(v18 + 48) + 32 * v14;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  LOBYTE(v19) = *(v19 + 24);
  *a5 = v20;
  *(a5 + 8) = v21;
  *(a5 + 16) = v22;
  *(a5 + 24) = v19;
  result = specialized _NativeSet._delete(at:)(v14);
  *v5 = v23;
  *(a5 + 25) = 0;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48) + 16 * v6;
        v12 = *v10;
        v11 = *(v10 + 8);
        Hasher.init(_seed:)();
        if (v11 < 0)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
        }

        else
        {
          dispatch thunk of static AttributedStringKey.name.getter();
        }

        String.hash(into:)();

        v14 = Hasher._finalize()();
        outlined consume of AttributedString.AnyAttribute(v12, v11);
        v15 = v14 & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v15)
        {
LABEL_14:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v27 = v3;
      v29 = (v8 + 1) & v7;
      v30 = v7;
      while (1)
      {
        v31 = v2;
        v11 = 40 * v6;
        v12 = *(v3 + 48) + 40 * v6;
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        Hasher.init(_seed:)();
        if (!v17)
        {
          break;
        }

        if (v17 != 1)
        {
          v18 = 0;
          goto LABEL_12;
        }

        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v14);
        if (v13)
        {
          Hasher._combine(_:)(1u);
          v28 = *(*v13 + 120);

          v28(v32);
          v3 = v27;
          v18 = v15;
LABEL_12:
          MEMORY[0x193AC11A0](v18);
          goto LABEL_13;
        }

        Hasher._combine(_:)(0);
LABEL_13:
        v19 = Hasher._finalize()();
        outlined consume of GlassContainer.Entry.ModelID(v14, v13, v15, v16, v17);
        v2 = v31;
        v20 = v19 & v30;
        if (v31 >= v29)
        {
          if (v20 < v29)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v29)
        {
          goto LABEL_18;
        }

        if (v31 >= v20)
        {
LABEL_18:
          v21 = *(v3 + 48);
          v22 = v21 + 40 * v31;
          v23 = (v21 + v11);
          if (40 * v31 < v11 || v22 >= v23 + 40 || v31 != v6)
          {
            v9 = *v23;
            v10 = v23[1];
            *(v22 + 32) = *(v23 + 4);
            *v22 = v9;
            *(v22 + 16) = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v30;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      MEMORY[0x193AC11A0](1);
      outlined copy of _Glass.Variant.ID(v14, v13);

      _Glass.Variant.ID.hash(into:)(v32);
      Hasher._combine(_:)(BYTE1(v13) & 1);
      (*(*v15 + 120))(v32);
      v18 = v16;
      goto LABEL_12;
    }

LABEL_23:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v29 = v3;
      v30 = v4;
      v28 = (v8 + 1) & v7;
      do
      {
        v31 = 20 * v6;
        v9 = *(v3 + 48) + 20 * v6;
        v10 = v2;
        v11 = v7;
        v12 = *v9;
        v13 = *(v9 + 4);
        v14 = *(v9 + 8);
        v15 = *(v9 + 12);
        v16 = *(v9 + 17);
        v17 = *(v9 + 16);
        Hasher.init(_seed:)();
        v18 = v12;
        v2 = v10;
        Hasher._combine(_:)(v18);
        v19 = v13;
        v7 = v11;
        Hasher._combine(_:)(v19);
        Hasher._combine(_:)(v14);
        Hasher._combine(_:)(v15);
        Hasher._combine(_:)(v17);
        Hasher._combine(_:)(v16);
        v20 = Hasher._finalize()() & v11;
        if (v10 >= v28)
        {
          if (v20 < v28)
          {
            v3 = v29;
            v4 = v30;
            goto LABEL_5;
          }

          v3 = v29;
          if (v10 >= v20)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v3 = v29;
          if (v20 >= v28 || v10 >= v20)
          {
LABEL_12:
            v21 = *(v3 + 48);
            v22 = v21 + 20 * v10;
            v4 = v30;
            v23 = (v21 + v31);
            if ((20 * v2) < v31 || v22 >= v23 + 20 || v2 != v6)
            {
              v24 = *v23;
              *(v22 + 16) = *(v23 + 4);
              *v22 = v24;
              v2 = v6;
            }

            goto LABEL_5;
          }
        }

        v4 = v30;
LABEL_5:
        v6 = (v6 + 1) & v11;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v27 = v4;
      do
      {
        v11 = v9;
        v12 = 32 * v6;
        v13 = *(v3 + 48) + 32 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        Hasher.init(_seed:)();
        if (v15 == 1)
        {
          Hasher._combine(_:)(0);
          if (v17)
          {
            goto LABEL_16;
          }
        }

        else
        {
          Hasher._combine(_:)(1u);
          if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v19 = v14;
          }

          else
          {
            v19 = 0;
          }

          MEMORY[0x193AC11E0](v19);
          if (v17)
          {
LABEL_16:
            Hasher._combine(_:)(0);
            goto LABEL_17;
          }
        }

        Hasher._combine(_:)(1u);
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x193AC11E0](v18);
LABEL_17:
        v20 = Hasher._finalize()() & v7;
        v9 = v11;
        if (v2 >= v11)
        {
          if (v20 < v11)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v11)
        {
          goto LABEL_22;
        }

        if (v2 >= v20)
        {
LABEL_22:
          v21 = *(v3 + 48);
          v22 = (v21 + 32 * v2);
          v23 = (v21 + v12);
          if (32 * v2 != v12 || (v2 = v6, v22 >= v23 + 2))
          {
            v10 = v23[1];
            *v22 = *v23;
            v22[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
        v4 = v27;
      }

      while (((*(v27 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

void specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(v40, v41);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{

  return specialized _NativeSet.intersection(_:)(a1, a2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
}

{

  return specialized _NativeSet.intersection(_:)(a1, a2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v15, v10, a2, a1, a4);

    MEMORY[0x193AC4820](v15, -1, -1);
  }

  return v13;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_37;
  }

  v71 = 0;
  v5 = 0;
  v64 = a4 + 56;
  v6 = 1 << *(a4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  v9 = (v6 + 63) >> 6;
  v78 = a3 + 56;
  v66 = v9;
  while (1)
  {
LABEL_7:
    if (v8)
    {
      v10 = __clz(__rbit64(v8));
      v69 = (v8 - 1) & v8;
    }

    else
    {
      v11 = v5;
      do
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v5 >= v9)
        {
LABEL_72:

          specialized _NativeSet.extractSubset(using:count:)(a1, a2, v71, v4);
          return;
        }

        v12 = *(v64 + 8 * v5);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v69 = (v12 - 1) & v12;
    }

    v13 = *(a4 + 48) + 16 * (v10 | (v5 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    Hasher.init(_seed:)();
    v73 = v14;
    v80 = v15;
    if (v14 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    String.hash(into:)();

    v17 = Hasher._finalize()();
    v18 = -1 << *(v4 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    v22 = v14;
    if (((1 << v19) & *(v78 + 8 * (v19 >> 6))) != 0)
    {
      break;
    }

LABEL_6:
    outlined consume of AttributedString.AnyAttribute(v80, v22);
    v9 = v66;
    v8 = v69;
  }

  v76 = ~v18;
  while (1)
  {
    v23 = *(v4 + 48) + 16 * v19;
    v24 = *v23;
    v25 = *(v23 + 8);
    if (v25 < 0)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v29;
      v30 = v24;
      if ((v22 & 0x8000000000000000) == 0)
      {
        v31 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_27;
      }
    }

    else
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        if (v24 == v80)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }

      v26 = dispatch thunk of static AttributedStringKey.name.getter();
      v28 = v27;
    }

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_27:
    if (v26 == v31 && v28 == v32)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v24, v25);

    v4 = a3;
    v22 = v73;
    if (v34)
    {
      goto LABEL_34;
    }

LABEL_20:
    v19 = (v19 + 1) & v76;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if ((*(v78 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_6;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v24, v25);

  v4 = a3;
  v22 = v73;
LABEL_34:
  outlined consume of AttributedString.AnyAttribute(v80, v22);
  v9 = v66;
  a1[v20] |= v21;
  v8 = v69;
  v35 = __OFADD__(v71++, 1);
  if (!v35)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_37:
  v71 = 0;
  v36 = 0;
  v67 = v4 + 56;
  v37 = 1 << *(v4 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(v4 + 56);
  v40 = (v37 + 63) >> 6;
  v81 = a4 + 56;
  v70 = v40;
  while (2)
  {
    if (v39)
    {
      v41 = __clz(__rbit64(v39));
      v77 = (v39 - 1) & v39;
LABEL_49:
      v74 = v41 | (v36 << 6);
      v44 = *(v4 + 48) + 16 * v74;
      v46 = *v44;
      v45 = *(v44 + 8);
      v47 = a4;
      Hasher.init(_seed:)();
      if (v45 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v46;
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      v49 = Hasher._finalize()();
      v50 = -1 << *(a4 + 32);
      v51 = v49 & ~v50;
      if (((*(v81 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
LABEL_41:
        outlined consume of AttributedString.AnyAttribute(v46, v45);
        v4 = a3;
        v40 = v70;
        v39 = v77;
        continue;
      }

      v79 = ~v50;
LABEL_56:
      v52 = *(v47 + 48) + 16 * v51;
      v53 = *v52;
      v54 = *(v52 + 8);
      if (v54 < 0)
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v58;
        v59 = v53;
        if (v45 < 0)
        {
LABEL_61:
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v60 = dispatch thunk of static AttributedStringKey.name.getter();
        }

        if (v55 == v60 && v57 == v61)
        {
          outlined consume of AttributedString.AnyAttribute(v53, v54);

LABEL_69:
          outlined consume of AttributedString.AnyAttribute(v46, v45);
          v4 = a3;
          *(a1 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
          v40 = v70;
          v35 = __OFADD__(v71++, 1);
          v39 = v77;
          if (v35)
          {
            __break(1u);
            goto LABEL_72;
          }

          continue;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined consume of AttributedString.AnyAttribute(v53, v54);

        v47 = a4;
        if (v63)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v45 < 0)
        {
          v55 = dispatch thunk of static AttributedStringKey.name.getter();
          v57 = v56;
          goto LABEL_61;
        }

        if (v53 == v46)
        {
          goto LABEL_69;
        }
      }

      v51 = (v51 + 1) & v79;
      if (((*(v81 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_56;
    }

    break;
  }

  v42 = v36;
  while (1)
  {
    v36 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v36 >= v40)
    {
      goto LABEL_72;
    }

    v43 = *(v67 + 8 * v36);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v77 = (v43 - 1) & v43;
      goto LABEL_49;
    }
  }

LABEL_74:
  __break(1u);
}

{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (v61 - v13);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        specialized _NativeSet.extractSubset(using:count:)(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t specialized Set._Variant.remove(at:)(uint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    specialized _NativeSet.copy()();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  specialized _NativeSet._delete(at:)(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t specialized _NativeSet.update(with:isUnique:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  if (a2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    v27 = 0;
    v14 = 1;
    goto LABEL_25;
  }

  v53 = a3;
  v55 = a1;
  v12 = a2;
  v13 = ~v10;
  v14 = 1;
  while (1)
  {
    v15 = *(v8 + 48) + 16 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v17 < 0)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v21;
      v22 = v16;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v23 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_14;
      }
    }

    else
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v16 == v55)
        {
          goto LABEL_23;
        }

        goto LABEL_7;
      }

      v18 = dispatch thunk of static AttributedStringKey.name.getter();
      v20 = v19;
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_14:
    if (v18 == v23 && v20 == v24)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v16, v17);

    v14 = 1;
    if (v26)
    {
      goto LABEL_23;
    }

LABEL_7:
    v11 = (v11 + 1) & v13;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      v27 = 0;
      goto LABEL_24;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v16, v17);

LABEL_23:
  v14 = 0;
  v27 = 1;
LABEL_24:
  a2 = v12;
  v4 = v3;
  a1 = v55;
  a3 = v53;
LABEL_25:
  v28 = *(v8 + 16);
  v29 = v28 + v14;
  if (__OFADD__(v28, v14))
  {
    __break(1u);
    goto LABEL_63;
  }

  v30 = *(v8 + 24);
  if (v30 >= v29 && (a3 & 1) != 0)
  {
    if (v27)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v30 >= v29)
    {
      specialized _NativeSet.copy()();
      if (v27)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v31 = *v4;
  Hasher.init(_seed:)();
  v54 = v27;
  if (a2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  v32 = Hasher._finalize()();
  v33 = -1 << *(v31 + 32);
  v11 = v32 & ~v33;
  if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_55:
    v4 = v3;
    if (v54)
    {
LABEL_64:
      result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_56:
    v46 = *v4;
    *(*v4 + 8 * (v11 >> 6) + 56) |= 1 << v11;
    v47 = (*(v46 + 48) + 16 * v11);
    *v47 = a1;
    v47[1] = a2;
    v48 = *(v46 + 16);
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (!v49)
    {
      result = 0;
      *(v46 + 16) = v50;
      return result;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v56 = ~v33;
  while (1)
  {
    v34 = *(v31 + 48) + 16 * v11;
    v35 = *v34;
    v36 = *(v34 + 8);
    if (v36 < 0)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v40;
      v41 = v35;
      if ((a2 & 0x8000000000000000) == 0)
      {
        v42 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_49;
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (v35 == a1)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      }

      v37 = dispatch thunk of static AttributedStringKey.name.getter();
      v39 = v38;
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_49:
    if (v37 == v42 && v39 == v43)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v35, v36);

    if (v45)
    {
      goto LABEL_59;
    }

LABEL_42:
    v11 = (v11 + 1) & v56;
    if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v35, v36);

LABEL_59:
  v4 = v3;
  if ((v54 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_60:
  v52 = (*(*v4 + 48) + 16 * v11);
  result = *v52;
  *v52 = a1;
  v52[1] = a2;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2[1] = v2;
  a2[2] = v4;
  *a2 = v3;
  outlined copy of AttributedString.AnyAttribute(v3, v2);
}

BOOL specialized static AttributedString.AnyAttribute.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return a1 == a3;
    }

    v6 = dispatch thunk of static AttributedStringKey.name.getter();
    v8 = v11;
    goto LABEL_7;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a4 < 0)
  {
LABEL_7:
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  v9 = dispatch thunk of static AttributedStringKey.name.getter();
LABEL_8:
  if (v6 == v9 && v8 == v10)
  {

    return 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v12 & 1;
  }
}

void specialized Dictionary<>.subscript.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = static AttributedStringKey.nsAttributedStringKey.getter();
  (*(v4 + 16))(v6, a1, v3);
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, AssociatedTypeWitness);
  }

  specialized Dictionary.subscript.setter(&v10, v7);
}

void outlined consume of AttributedString.AnyAttribute?(id a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    outlined consume of AttributedString.AnyAttribute(a1, a2);
  }
}

unint64_t lazy protocol witness table accessor for type AttributedString.Keys and conformance AttributedString.Keys()
{
  result = lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys;
  if (!lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys;
  if (!lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeDependencies and conformance AttributedString.AttributeDependencies()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeDependencies and conformance AttributedString.AttributeDependencies;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeDependencies and conformance AttributedString.AttributeDependencies)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeDependencies and conformance AttributedString.AttributeDependencies);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.Keys.SetIterator and conformance AttributedString.Keys.SetIterator()
{
  result = lazy protocol witness table cache variable for type AttributedString.Keys.SetIterator and conformance AttributedString.Keys.SetIterator;
  if (!lazy protocol witness table cache variable for type AttributedString.Keys.SetIterator and conformance AttributedString.Keys.SetIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Keys.SetIterator and conformance AttributedString.Keys.SetIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator);
  }

  return result;
}

void *initializeWithCopy for AttributedString.Keys.SetIterator(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of Set<A>.Iterator._Variant<A>();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

void *assignWithCopy for AttributedString.Keys.SetIterator(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of Set<A>.Iterator._Variant<A>();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  outlined consume of Set<EventID>.Iterator._Variant();
  return a1;
}

uint64_t assignWithTake for AttributedString.Keys.SetIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  outlined consume of Set<EventID>.Iterator._Variant();
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedString.Keys.SetIterator(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttributedString.Keys.SetIterator(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t assignWithCopy for AttributedString.AnyAttribute(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of AttributedString.AnyAttribute(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of AttributedString.AnyAttribute(v5, v6);
  return a1;
}

uint64_t assignWithTake for AttributedString.AnyAttribute(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of AttributedString.AnyAttribute(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedString.AnyAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AttributedString.AnyAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator()
{
  if (!lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
    lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeMetadata2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (!v1)
    {
      atomic_store(AssociatedTypeWitness, &lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator);
    }
  }
}

uint64_t WatchColorGradientProvider.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WatchColorGradientProvider.init(color:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for WatchColorGradientProvider();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t WatchColorGradientProvider.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (static Semantics.forced < v8)
  {
    goto LABEL_14;
  }

  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v7, &v60);

    if (v60 != 6)
    {
      goto LABEL_16;
    }

LABEL_14:
    v60 = v7;
    v61 = v6;
    return (*(*(a2 + 24) + 32))(&v60, *(a2 + 16));
  }

  v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(v7);
  if (!v9 || *(v9 + 72) == 6)
  {
    goto LABEL_14;
  }

LABEL_16:
  v11 = *v3;
  v60 = v7;
  v61 = v6;
  v12 = (*(*v11 + 112))(&v60);
  v14 = v13;
  v16 = v15;
  v60 = v7;
  v61 = v6;
  EnvironmentValues.colorScheme.getter(&v59);
  if (v59 == 1)
  {
    v17 = Color.Resolved.darkened(to:)(0.5, v12, v14, v16);
    v57 = v18;
    v58 = v17;
    v55 = v20;
    v56 = v19;
    v21 = Color.Resolved.darkened(to:)(0.177, v12, v14, v16);
    v53 = v22;
    v54 = v21;
    v51 = v24;
    v52 = v23;
    v25 = Color.Resolved.darkened(to:)(0.15, v12, v14, v16);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = Color.Resolved.darkened(to:)(0.148, v12, v14, v16);
  }

  else
  {
    v36 = Color.Resolved.lightened(to:)(0.5, v12, v14, v16);
    v57 = v37;
    v58 = v36;
    v55 = v39;
    v56 = v38;
    v40 = Color.Resolved.lightened(to:)(0.177, v12, v14, v16);
    v53 = v41;
    v54 = v40;
    v51 = v43;
    v52 = v42;
    v25 = Color.Resolved.lightened(to:)(0.15, v12, v14, v16);
    v27 = v44;
    v29 = v45;
    v31 = v46;
    v32 = Color.Resolved.lightened(to:)(0.148, v12, v14, v16);
  }

  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  type metadata accessor for _ContiguousArrayStorage<ResolvedGradient.Stop>();
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDACA80;
  *(result + 32) = v58;
  *(result + 36) = v57;
  *(result + 40) = v56;
  *(result + 44) = v55;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 1;
  *(result + 80) = v54;
  *(result + 84) = v53;
  *(result + 88) = v52;
  *(result + 92) = v51;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0x3FE3333333333333;
  *(result + 120) = 1;
  *(result + 128) = v25;
  *(result + 132) = v27;
  *(result + 136) = v29;
  *(result + 140) = v31;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 144) = 0x3FE51EB851EB851FLL;
  *(result + 168) = 1;
  *(result + 176) = v47;
  *(result + 180) = v48;
  *(result + 184) = v49;
  *(result + 188) = v50;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 192) = 0x3FE6E147AE147AE1;
  *(result + 216) = 1;
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 1;
  return result;
}

float Color.Resolved.darkened(to:)(float a1, float a2, float a3, float a4)
{
  v7 = -a4;
  if (a4 > 0.0)
  {
    v7 = a4;
  }

  if (v7 <= 0.0031308)
  {
    v8 = v7 * 12.92;
  }

  else
  {
    v8 = 1.0;
    if (v7 != 1.0)
    {
      v9 = a4;
      v10 = powf(v7, 0.41667);
      a4 = v9;
      v8 = (v10 * 1.055) + -0.055;
    }
  }

  v11 = -v8;
  if (a4 > 0.0)
  {
    v11 = v8;
  }

  v12 = v11 * a1;
  v13 = -(v11 * a1);
  if (v12 > 0.0)
  {
    v13 = v12;
  }

  if (v13 > 0.04045 && v13 != 1.0)
  {
    powf((v13 * 0.94787) + 0.052133, 2.4);
  }

  v14 = -a2;
  if (a2 > 0.0)
  {
    v14 = a2;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
  }

  else
  {
    v15 = 1.0;
    if (v14 != 1.0)
    {
      v15 = (powf(v14, 0.41667) * 1.055) + -0.055;
    }
  }

  v16 = -v15;
  if (a2 > 0.0)
  {
    v16 = v15;
  }

  v17 = v16 * a1;
  v18 = -(v16 * a1);
  if (v17 > 0.0)
  {
    v18 = v17;
  }

  if (v18 <= 0.04045)
  {
    v19 = v18 * 0.077399;
  }

  else
  {
    v19 = 1.0;
    if (v18 != 1.0)
    {
      v19 = powf((v18 * 0.94787) + 0.052133, 2.4);
    }
  }

  v20 = -a3;
  if (a3 > 0.0)
  {
    v20 = a3;
  }

  if (v20 <= 0.0031308)
  {
    v21 = v20 * 12.92;
  }

  else
  {
    v21 = 1.0;
    if (v20 != 1.0)
    {
      v21 = (powf(v20, 0.41667) * 1.055) + -0.055;
    }
  }

  v22 = -v21;
  if (a3 > 0.0)
  {
    v22 = v21;
  }

  v23 = v22 * a1;
  v24 = -(v22 * a1);
  if (v23 <= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v25 > 0.04045 && v25 != 1.0)
  {
    powf((v25 * 0.94787) + 0.052133, 2.4);
  }

  if (v17 <= 0.0)
  {
    return -v19;
  }

  else
  {
    return v19;
  }
}

float Color.Resolved.lightened(to:)(float a1, float a2, float a3, float a4)
{
  v8 = -a4;
  if (a4 <= 0.0)
  {
    v9 = -a4;
  }

  else
  {
    v9 = a4;
  }

  if (v9 <= 0.0031308)
  {
    v10 = v9 * 12.92;
    if (a4 > 0.0)
    {
LABEL_8:
      if (a4 > 0.0031308)
      {
        v11 = 1.0;
        v8 = a4;
        if (a4 == 1.0)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      v8 = a4;
LABEL_16:
      v8 = v8 * 12.92;
LABEL_17:
      v11 = v8;
      if (a4 > 0.0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v10 = 1.0;
    if (v9 != 1.0)
    {
      v10 = (powf(v9, 0.41667) * 1.055) + -0.055;
    }

    if (a4 > 0.0)
    {
      goto LABEL_8;
    }
  }

  v10 = -v10;
  if (a4 >= -0.0031308)
  {
    goto LABEL_16;
  }

  if (a4 != -1.0)
  {
LABEL_14:
    v8 = (powf(v8, 0.41667) * 1.055) + -0.055;
    goto LABEL_17;
  }

LABEL_18:
  v11 = -v8;
LABEL_19:
  v12 = v10 + ((1.0 - v11) * a1);
  v13 = -v12;
  if (v12 > 0.0)
  {
    v13 = v12;
  }

  if (v13 > 0.04045 && v13 != 1.0)
  {
    powf((v13 * 0.94787) + 0.052133, 2.4);
  }

  v14 = -a2;
  if (a2 > 0.0)
  {
    v14 = a2;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
    v17 = -(v14 * 12.92);
  }

  else
  {
    v15 = 1.0;
    if (v14 == 1.0)
    {
      v16 = a2 <= 0.0;
      v17 = -1.0;
      goto LABEL_32;
    }

    v15 = (powf(v14, 0.41667) * 1.055) + -0.055;
    v17 = -v15;
  }

  v16 = a2 <= 0.0;
LABEL_32:
  if (!v16)
  {
    v17 = v15;
  }

  if (a2 <= 0.0)
  {
    v15 = -v15;
  }

  v18 = 1.0;
  v19 = v17 + ((1.0 - v15) * a1);
  v20 = -v19;
  if (v19 > 0.0)
  {
    v20 = v19;
  }

  if (v20 <= 0.04045)
  {
    v18 = v20 * 0.077399;
  }

  else if (v20 != 1.0)
  {
    v18 = powf((v20 * 0.94787) + 0.052133, 2.4);
  }

  v21 = -a3;
  if (a3 > 0.0)
  {
    v21 = a3;
  }

  if (v21 <= 0.0031308)
  {
    v22 = v21 * 12.92;
    v24 = -(v21 * 12.92);
  }

  else
  {
    v22 = 1.0;
    if (v21 == 1.0)
    {
      v23 = a3 <= 0.0;
      v24 = -1.0;
      goto LABEL_50;
    }

    v22 = (powf(v21, 0.41667) * 1.055) + -0.055;
    v24 = -v22;
  }

  v23 = a3 <= 0.0;
LABEL_50:
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = v22;
  }

  if (a3 <= 0.0)
  {
    v22 = -v22;
  }

  v26 = v25 + ((1.0 - v22) * a1);
  v27 = -v26;
  if (v26 > 0.0)
  {
    v27 = v26;
  }

  if (v27 > 0.04045 && v27 != 1.0)
  {
    powf((v27 * 0.94787) + 0.052133, 2.4);
  }

  if (v19 <= 0.0)
  {
    return -v18;
  }

  else
  {
    return v18;
  }
}

uint64_t WatchColorGradientProvider.containerBackgroundMaterial(in:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (one-time initialization token for thick != -1)
  {
    swift_once();
  }

  v5 = static Material.thick;
  v6 = byte_1ED52B278;
  v7 = dword_1ED52B27C;
  v26 = v3;
  v27 = v4;
  *&v24[0] = static Material.thick;
  BYTE8(v24[0]) = byte_1ED52B278;
  HIDWORD(v24[0]) = dword_1ED52B27C;
  v8 = EnvironmentValues.materialProvider(for:)(v24);
  if (v8)
  {
    v18 = 1;
    v17 = 1;
    *&v19 = v3;
    *(&v19 + 1) = v4;
    LOWORD(v20) = 768;
    v21 = 0;
    *&v22 = 0;
    BYTE8(v22) = 1;
    memset(v23, 0, 24);
    v23[24] = 1;
    v14 = v22;
    v15[0] = 0uLL;
    *(v15 + 9) = *&v23[9];
    v12 = v19;
    v13 = v20;
    v9 = *(*v8 + 80);
    outlined copy of Material.ID(v5, v6);

    outlined init with copy of Material.Context(&v19, &v26);
    v9(&v16, &v12);

    v24[2] = v14;
    v25[0] = v15[0];
    *(v25 + 9) = *(v15 + 9);
    v24[0] = v12;
    v24[1] = v13;
    outlined destroy of Material.Context(v24);
    v26 = v3;
    v27 = v4;
    v28 = 768;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v35 = 1;
    outlined destroy of Material.Context(&v26);
    v10 = v16;
    outlined consume of Material.ID(v5, v6);
    v6 = 2;
    outlined copy of Material.ID(v10, 2u);
    result = outlined consume of Material.ID(v10, 2u);
    v5 = v10;
  }

  else
  {
    v26 = v3;
    v27 = v4;

    v7 = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v26) | v7;
    result = outlined copy of Material.ID(v5, v6);
  }

  *a2 = v5;
  a2[1] = v6 | (v7 << 32);
  return result;
}

uint64_t static WatchColorGradientProvider.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WatchColorGradientProvider();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int WatchColorGradientProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(**v0 + 152))(v2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WatchColorGradientProvider<A>()
{
  Hasher.init(_seed:)();
  WatchColorGradientProvider.hash(into:)();
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for WatchColorGradientProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _BackdropGroupEffect.effectValue(size:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  return result;
}

uint64_t _BackdropGroupEffect2.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _BackdropGroupEffect2.effectValue(size:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 12) = 0;
}

uint64_t View.backdropGroup(_:name:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v6 = a2;
  v7 = a3;
  return View.modifier<A>(_:)(v5, a4, &type metadata for _BackdropGroupEffect2);
}

uint64_t _BackdropGroupEffect_temp.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance _BackdropGroupEffect2@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
}

uint64_t View.backdropGroup_temp(_:name:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v6 = a2;
  v7 = a3;
  return View.modifier<A>(_:)(v5, a4, &type metadata for _BackdropGroupEffect_temp);
}

uint64_t _BackdropGroupEffect_temp2.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return result;
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance _BackdropGroupEffect@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _BackdropGroupEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _BackdropGroupEffect and conformance _BackdropGroupEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _BackdropGroupEffect and conformance _BackdropGroupEffect()
{
  result = lazy protocol witness table cache variable for type _BackdropGroupEffect and conformance _BackdropGroupEffect;
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect and conformance _BackdropGroupEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackdropGroupEffect and conformance _BackdropGroupEffect);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _BackdropGroupEffect2(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2()
{
  result = lazy protocol witness table cache variable for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2;
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _BackdropGroupEffect_temp(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp()
{
  result = lazy protocol witness table cache variable for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp;
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _BackdropGroupEffect_temp2(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2()
{
  result = lazy protocol witness table cache variable for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2;
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2);
  }

  return result;
}

uint64_t _ShapeIntersection.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 1, a2, a3, a4, a5, a6);
}

uint64_t (*_ShapeIntersection.animatableData.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeIntersection<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeIntersection.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeUnion.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 2, a2, a3, a4, a5, a6);
}

uint64_t key path getter for _ShapeIntersection.animatableData : <A, B>_ShapeIntersection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, _OWORD *), uint64_t (*a5)(uint64_t))
{
  v6 = *(a2 + a3 - 16);
  v9[0] = *(a2 + a3 - 32);
  v9[1] = v6;
  v7 = a4(0, v9);
  return a5(v7);
}

uint64_t key path setter for _ShapeIntersection.animatableData : <A, B>_ShapeIntersection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, _OWORD *))
{
  v6 = *(a3 + a4 - 16);
  v9[0] = *(a3 + a4 - 32);
  v9[1] = v6;
  v7 = a5(0, v9);
  return specialized _ShapeSymmetricDifference.animatableData.setter(a1, v7);
}

uint64_t _ShapeIntersection.animatableData.setter(uint64_t a1, void *a2)
{
  specialized _ShapeSymmetricDifference.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t (*_ShapeUnion.animatableData.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeUnion.animatableData.modify;
}

void _ShapeIntersection.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _ShapeSymmetricDifference.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _ShapeSymmetricDifference.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double protocol witness for Shape.path(in:) in conformance _ShapeUnion<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeUnion.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeUnion<A, B>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeUnion<A, B>;
}

void protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _ShapeSymmetricDifference.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _ShapeSymmetricDifference.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _ShapeSubtraction.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 3, a2, a3, a4, a5, a6);
}

uint64_t (*_ShapeSubtraction.animatableData.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeSubtraction<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeSubtraction.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeSubtraction<A, B>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeSymmetricDifference.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 4, a2, a3, a4, a5, a6);
}

void _ShapeUnion.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v8 = a2 & 1;
  v9 = a4 & 1;
  (*(a5[4] + 48))(a1, v8, a3, a4 & 1, a5[2]);
  (*(a5[5] + 48))(a1, v8, a3, v9, a5[3]);
}

uint64_t (*_ShapeSymmetricDifference.animatableData.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeSymmetricDifference<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeSymmetricDifference.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeSymmetricDifference<A, B>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeLineIntersection.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 5, a2, a3, a4, a5, a6);
}

void _ShapeIntersection.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v8 = a2 & 1;
  v9 = a4 & 1;
  (*(a5[4] + 48))(a1, v8, a3, a4 & 1, a5[2]);
  (*(a5[5] + 48))(a1, v8, a3, v9, a5[3]);
}

uint64_t (*_ShapeLineIntersection.animatableData.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeLineIntersection<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeLineIntersection.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeLineIntersection<A, B>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeLineSubtraction.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 6, a2, a3, a4, a5, a6);
}

uint64_t _ShapeIntersection.path(in:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v25 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 32) + 24))(v20, *(a1 + 16));
  (*(*(a1 + 40) + 24))(v21, *(a1 + 24), a4, a5, a6, a7);
  v15 = *(v7 + *(a1 + 56));
  type metadata accessor for Path.PathBox();
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 16) = 2;
  RBPathStorageInit();
  v18[0] = a2;
  v18[1] = v15;
  MEMORY[0x193AC35E0](v16 + 24, 20, 0, v18);
  Path.append(to:)(v16 + 24);
  v23[0] = v21[0];
  v23[1] = v21[1];
  v24 = v22;
  outlined init with copy of Path.Storage(v23, v19);
  MEMORY[0x193AC35E0](v16 + 24, 21, 0, 0);
  Path.append(to:)(v16 + 24);
  outlined destroy of Path(v21);
  MEMORY[0x193AC35E0](v16 + 24, 16, 0, 0);
  outlined destroy of Path(v21);
  result = outlined destroy of Path(v20);
  *a3 = v16;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 5;
  return result;
}

uint64_t _ShapeIntersection.animatableData.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = *(a1[5] + 8);
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v15 - v6;
  v8 = *(a1[4] + 8);
  v9 = a1[2];
  v10 = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v8 + 24))(v9, v8, v11);
  (*(v3 + 24))(v4, v3);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return AnimatablePair.init(_:_:)(v13, v7, v10, AssociatedTypeWitness, v16);
}

uint64_t (*_ShapeLineSubtraction.animatableData.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeLineSubtraction<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeLineSubtraction.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeLineSubtraction<A, B>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t specialized _ShapeSymmetricDifference.animatableData.setter(uint64_t a1, void *a2)
{
  v19 = a1;
  v3 = *(a2[5] + 8);
  v4 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v17 - v6;
  v7 = *(a2[4] + 8);
  v8 = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v20 = v9;
  v21 = AssociatedTypeWitness;
  v22 = AssociatedConformanceWitness;
  v23 = v13;
  v14 = type metadata accessor for AnimatablePair();
  v15 = v18;
  AnimatablePair.subscript.getter(v11, v18, v14);
  (*(v7 + 32))(v11, v8, v7);
  return (*(v3 + 32))(v15, v4, v3);
}

uint64_t type metadata completion function for _ShapeIntersection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ShapeIntersection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + ((v5 + v8) & ~v8) + 1;
  v12 = (*(v4 + 80) | *(v7 + 80));
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *(((v3 + v9) & v16) + v10) = *(v18 + v10);
  }

  return v3;
}

uint64_t initializeWithCopy for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *(*(v9 + 48) + v12) = *(*(v9 + 48) + v13);
  return a1;
}

uint64_t assignWithCopy for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *(*(v9 + 40) + v12) = *(*(v9 + 40) + v13);
  return a1;
}

uint64_t initializeWithTake for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *(*(v9 + 32) + v12) = *(*(v9 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *(*(v9 + 24) + v12) = *(*(v9 + 24) + v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeIntersection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
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
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *storeEnumTagSinglePayload for _ShapeIntersection(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v12 <= 0xFE)
  {
    v12 = 254;
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
      result[v11] = a2 + 1;
    }
  }

  return result;
}

void specialized ScaledMetric.wrappedValue.getter()
{
  v2 = *(v0 + 40);
  specialized Environment.wrappedValue.getter(*v0, *(v0 + 8), &v1);
  specialized static Font.scaleFactor(textStyle:in:)(&v2, &v1);
  specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24));
}

uint64_t property wrapper backing initializer of _ScaledValue.value@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 32) = a2;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 40) = 6;
  return result;
}

uint64_t _ScaledValue.init(wrappedValue:textStyle:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = a3;
  *(a2 + 40) = v5;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScaledMetric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 - ((-26 - v6) | v6) > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = a2;
    outlined copy of Environment<ButtonSizing>.Content(*a2, v12);
    *a1 = v11;
    *(a1 + 8) = v12;
    v14 = a1 & 0xFFFFFFFFFFFFFFF8;
    v13 &= 0xFFFFFFFFFFFFFFF8;
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    outlined copy of Environment<ButtonSizing>.Content(v15, v16);
    *(v14 + 16) = v15;
    *(v14 + 24) = v16;
    (*(v5 + 16))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 25) & ~v6, (v13 + v6 + 25) & ~v6, v4);
    *(((v14 + v6 + 25) & ~v6) + v7) = *(((v13 + v6 + 25) & ~v6) + v7);
  }

  return a1;
}

uint64_t initializeWithTake for ScaledMetric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v4 + 16) = v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v8;
  v10 = (v8 + 25 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v8;
  (*(v6 + 32))(v9, v10);
  *(*(v7 + 32) + v9) = *(*(v7 + 32) + v10);
  return a1;
}

uint64_t assignWithTake for ScaledMetric(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<ButtonSizing>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = (v4 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v4 + 24);
  v12 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 16) = v4[2];
  *(v10 + 24) = v11;
  outlined consume of Environment<ButtonSizing>.Content(v12, v13);
  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = (v16 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v16;
  v18 = (v4 + v16 + 25) & ~v16;
  (*(v14 + 40))(v17, v18);
  *(*(v15 + 24) + v17) = *(*(v15 + 24) + v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScaledMetric(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 25) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 25) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ScaledMetric(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 25) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 25) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 25) & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
  }

  else
  {
    *(a1 + 8) = -a2;
  }
}

uint64_t destroy for _ScaledValue(uint64_t a1)
{
  outlined consume of Environment<ButtonSizing>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<ButtonSizing>.Content(v2, v3);
}

uint64_t initializeWithCopy for _ScaledValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<ButtonSizing>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for _ScaledValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<ButtonSizing>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<ButtonSizing>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<ButtonSizing>.Content(v10, v11);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for _ScaledValue(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<ButtonSizing>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<ButtonSizing>.Content(v9, v10);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ScaledValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for _ScaledValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Int ContentSizeCategory.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t (*EnvironmentValues.sizeCategory.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, &v7);

    v4 = v7;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v3);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 3;
    }
  }

  *(a1 + 8) = v4;
  return EnvironmentValues.sizeCategory.modify;
}

uint64_t EnvironmentValues.sizeCategory.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return EnvironmentValues.sizeCategory.setter(v2);
}

unint64_t lazy protocol witness table accessor for type ContentSizeCategory and conformance ContentSizeCategory()
{
  result = lazy protocol witness table cache variable for type ContentSizeCategory and conformance ContentSizeCategory;
  if (!lazy protocol witness table cache variable for type ContentSizeCategory and conformance ContentSizeCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSizeCategory and conformance ContentSizeCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ContentSizeCategory] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ContentSizeCategory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ContentSizeCategory] and conformance [A])
  {
    type metadata accessor for [ContentSizeCategory]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContentSizeCategory] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [ContentSizeCategory]()
{
  if (!lazy cache variable for type metadata for [ContentSizeCategory])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ContentSizeCategory]);
    }
  }
}

id Font.TextStyle.ctTextStyle.getter()
{
  v0 = specialized Font.TextStyle.ctTextStyle.getter();

  return v0;
}

id DynamicTypeSize.ctTextSize.getter()
{
  v0 = specialized DynamicTypeSize.ctTextSize.getter();

  return v0;
}

id one-time initialization function for footnote2()
{
  if (one-time initialization token for footnote2 != -1)
  {
    swift_once();
  }

  v2 = static Font.PrivateTextStyle.footnote2;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PrivateTextStyleProvider>, lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, type metadata accessor for FontBox);
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v2;
  *(v0 + 40) = 1;
  static Font.footnote2 = v0;

  return v2;
}

{
  static Font.PrivateTextStyle.footnote2 = *MEMORY[0x1E6965AD8];
  return static Font.PrivateTextStyle.footnote2;
}

uint64_t static Font.system(_:design:)(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>, lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, type metadata accessor for FontBox);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 17) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

uint64_t static Font.system(_:design:weight:)(char *a1, char *a2, double a3)
{
  v4 = *a1;
  v5 = *a2;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>, lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, type metadata accessor for FontBox);
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 17) = v5;
  *(result + 24) = a3;
  *(result + 32) = 0;
  return result;
}

void **static Font.system(_:design:weight:)(void **result, _BYTE *a2, uint64_t a3, char a4)
{
  v6 = *result;
  v7 = *a2;
  if (v7 <= 1)
  {
    if (*a2)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E69658B8];
    v8 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
LABEL_11:
      v9 = v8;
      type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PrivateTextStyleProvider>, lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, type metadata accessor for FontBox);
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      *(v10 + 24) = v8;
      *(v10 + 32) = a3;
      *(v10 + 40) = a4 & 1;
      v11 = v6;
      return v10;
    }

    __break(1u);
  }

  if (v7 != 2)
  {
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E69658C8];
  if (*MEMORY[0x1E69658C8])
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_8:
  v8 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  v8 = *MEMORY[0x1E69658C0];
  if (*MEMORY[0x1E69658C0])
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t Font.TextStyle.CodingKeys.stringValue.getter(char a1)
{
  result = 0x746954656772616CLL;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x32656C746974;
      break;
    case 3:
      result = 0x33656C746974;
      break;
    case 4:
      result = 0x656E696C64616568;
      break;
    case 5:
      result = 0x6C64616568627573;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x74756F6C6C6163;
      break;
    case 8:
      result = 0x65746F6E746F6F66;
      break;
    case 9:
      result = 0x6E6F6974706163;
      break;
    case 10:
      result = 0x326E6F6974706163;
      break;
    case 11:
      result = 0x72614C6172747865;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x336E6F6974706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.BodyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.BodyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.CalloutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.CalloutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.Caption2CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.Caption2CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.CaptionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.CaptionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.TextStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Font.TextStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.FootnoteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.FootnoteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.HeadlineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.HeadlineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.LargeTitleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.LargeTitleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.SubheadlineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.SubheadlineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.Title2CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.Title2CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.Title3CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.Title3CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.TextStyle.TitleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.TextStyle.TitleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.TextStyle.hash(into:)()
{
  v1 = *v0;
  switch(*v0)
  {
    case 1:
      v1 = 1;
      return MEMORY[0x193AC11A0](v1);
    case 2:
      v1 = 2;
      return MEMORY[0x193AC11A0](v1);
    case 3:
      v1 = 3;
      return MEMORY[0x193AC11A0](v1);
    case 4:
      v1 = 4;
      return MEMORY[0x193AC11A0](v1);
    case 5:
      v1 = 5;
      return MEMORY[0x193AC11A0](v1);
    case 6:
      v1 = 6;
      return MEMORY[0x193AC11A0](v1);
    case 7:
      v1 = 7;
      return MEMORY[0x193AC11A0](v1);
    case 8:
      v1 = 8;
      return MEMORY[0x193AC11A0](v1);
    case 9:
      v1 = 9;
      return MEMORY[0x193AC11A0](v1);
    case 0xA:
      v1 = 10;
      return MEMORY[0x193AC11A0](v1);
    case 0xB:
    case 0xC:
    case 0xD:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
      return MEMORY[0x193AC11A0](v1);
  }
}

Swift::Int Font.TextStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 1:
      v1 = 1;
      goto LABEL_12;
    case 2:
      v1 = 2;
      goto LABEL_12;
    case 3:
      v1 = 3;
      goto LABEL_12;
    case 4:
      v1 = 4;
      goto LABEL_12;
    case 5:
      v1 = 5;
      goto LABEL_12;
    case 6:
      v1 = 6;
      goto LABEL_12;
    case 7:
      v1 = 7;
      goto LABEL_12;
    case 8:
      v1 = 8;
      goto LABEL_12;
    case 9:
      v1 = 9;
      goto LABEL_12;
    case 10:
      v1 = 10;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v1);
      return Hasher._finalize()();
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Font.TextStyle()
{
  v1 = *v0;
  switch(*v0)
  {
    case 1:
      v1 = 1;
      return MEMORY[0x193AC11A0](v1);
    case 2:
      v1 = 2;
      return MEMORY[0x193AC11A0](v1);
    case 3:
      v1 = 3;
      return MEMORY[0x193AC11A0](v1);
    case 4:
      v1 = 4;
      return MEMORY[0x193AC11A0](v1);
    case 5:
      v1 = 5;
      return MEMORY[0x193AC11A0](v1);
    case 6:
      v1 = 6;
      return MEMORY[0x193AC11A0](v1);
    case 7:
      v1 = 7;
      return MEMORY[0x193AC11A0](v1);
    case 8:
      v1 = 8;
      return MEMORY[0x193AC11A0](v1);
    case 9:
      v1 = 9;
      return MEMORY[0x193AC11A0](v1);
    case 0xA:
      v1 = 10;
      return MEMORY[0x193AC11A0](v1);
    case 0xB:
    case 0xC:
    case 0xD:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
      return MEMORY[0x193AC11A0](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.TextStyle()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  switch(*v0)
  {
    case 1:
      v1 = 1;
      goto LABEL_12;
    case 2:
      v1 = 2;
      goto LABEL_12;
    case 3:
      v1 = 3;
      goto LABEL_12;
    case 4:
      v1 = 4;
      goto LABEL_12;
    case 5:
      v1 = 5;
      goto LABEL_12;
    case 6:
      v1 = 6;
      goto LABEL_12;
    case 7:
      v1 = 7;
      goto LABEL_12;
    case 8:
      v1 = 8;
      goto LABEL_12;
    case 9:
      v1 = 9;
      goto LABEL_12;
    case 0xA:
      v1 = 10;
      goto LABEL_12;
    case 0xB:
    case 0xC:
    case 0xD:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v1);
      return Hasher._finalize()();
  }
}