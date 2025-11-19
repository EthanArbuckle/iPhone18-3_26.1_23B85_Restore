uint64_t _NSRange.upperBound.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall _NSRange.formUnion(_:)(__C::_NSRange a1)
{
  location = *v1;
  v3 = v1[1];
  v4 = __OFADD__(*v1, v3);
  v5 = *v1 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(a1.location, a1.length))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= a1.location + a1.length)
  {
    v5 = a1.location + a1.length;
  }

  if (location >= a1.location)
  {
    location = a1.location;
  }

  v4 = __OFSUB__(v5, location);
  v6 = v5 - location;
  if (!v4)
  {
    *v1 = location;
    v1[1] = v6;
    return;
  }

LABEL_11:
  __break(1u);
}

__C::_NSRange __swiftcall _NSRange.union(_:)(__C::_NSRange result)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(result.location, result.length))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v3 <= result.location + result.length)
  {
    v3 = result.location + result.length;
  }

  if (v1 < result.location)
  {
    result.location = v1;
  }

  result.length = v3 - result.location;
  if (__OFSUB__(v3, result.location))
  {
    goto LABEL_11;
  }

  return result;
}

__C::_NSRange_optional __swiftcall _NSRange.intersection(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v1;
  if (v3 >= v4)
  {
    v6 = a1.location + a1.length;
  }

  else
  {
    v6 = v1 + v2;
  }

  if (v1 < a1.location || v4 <= v1)
  {
    location = 0;
    LOBYTE(v1) = 1;
    a1.length = 0;
    if (a1.location >= v5 && v3 > a1.location)
    {
      a1.length = v6 - a1.location;
      if (__OFSUB__(v6, a1.location))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      LOBYTE(v1) = 0;
      location = a1.location;
    }

    a1.location = location;
    goto LABEL_19;
  }

  a1.length = v6 - v1;
  if (__OFSUB__(v6, v1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  LOBYTE(v1) = 0;
  a1.location = v5;
LABEL_19:
  result.value = a1;
  result.is_nil = v1;
  return result;
}

uint64_t _NSRange.toRange()(uint64_t result, uint64_t a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = __OFADD__(result, a2);
  v4 = result + a2;
  if (v3)
  {
    __break(1u);
  }

  else if (v4 >= result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Range<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = type metadata accessor for Range();
    v8 = *(*(v7 - 8) + 56);

    return v8(a3, 1, 1, v7);
  }

  else
  {
    v10 = v6;
    lazy protocol witness table accessor for type Int and conformance Int();
    result = dispatch thunk of BinaryInteger.init<A>(_:)();
    if (__OFADD__(v10, a2))
    {
      __break(1u);
    }

    else
    {
      dispatch thunk of BinaryInteger.init<A>(_:)();
      Range.init(uncheckedBounds:)();
      v11 = type metadata accessor for Range();
      return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    }
  }

  return result;
}

uint64_t Range<>.init<A>(_:_genericIn:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v11 - v6;
  dispatch thunk of StringProtocol.utf16.getter();
  if (a1 == 0x7FFFFFFFFFFFFFFFLL || (v11[1] = a2, swift_getAssociatedConformanceWitness(), dispatch thunk of Collection.startIndex.getter(), v13 = v14, dispatch thunk of Collection.endIndex.getter(), v11[2] = v12, dispatch thunk of BidirectionalCollection.index(_:offsetBy:limitedBy:)(), v16 == 1) || (v8 = v15, v14 = v15, dispatch thunk of Collection.endIndex.getter(), v12 = v13, dispatch thunk of BidirectionalCollection.index(_:offsetBy:limitedBy:)(), v16 == 1) || (v9 = v15, dispatch thunk of Collection.startIndex.getter(), v8 >> 14 < v15 >> 14))
  {
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    return 0;
  }

  dispatch thunk of Collection.endIndex.getter();
  result = (*(v5 + 8))(v7, AssociatedTypeWitness);
  if (v9 >> 14 > v15 >> 14)
  {
    return 0;
  }

  if (v9 >> 14 >= v8 >> 14)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t _NSRange.customMirror.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v15 - v9;
  v15[0] = a1;
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_181215ED0;
  *(v11 + 32) = 0x6E6F697461636F6CLL;
  *(v11 + 40) = 0xE800000000000000;
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 48) = a1;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x6874676E656CLL;
  *(v11 + 120) = v12;
  *(v11 + 88) = 0xE600000000000000;
  *(v11 + 96) = a2;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E75D8], v4);
  type metadata accessor for _NSRange(0);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t _NSRange.customPlaygroundQuickLook.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 32) = 14;
  return result;
}

__n128 protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance _NSRange@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[2].n128_u8[0] = 14;
  return result;
}

uint64_t _NSRange.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t protocol witness for Decodable.init(from:) in conformance _NSRange@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized _NSRange.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance _NSRange(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t specialized _NSRange.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v2 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t lazy protocol witness table accessor for type _NSRange and conformance _NSRange()
{
  result = lazy protocol witness table cache variable for type _NSRange and conformance _NSRange;
  if (!lazy protocol witness table cache variable for type _NSRange and conformance _NSRange)
  {
    type metadata accessor for _NSRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSRange and conformance _NSRange);
  }

  return result;
}

uint64_t static NSNotificationCenter.AsyncMessage.makeNotification(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 16))(a1, a2);
  memset(v6, 0, sizeof(v6));
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = v4;
  result = outlined assign with take of Any?(v6, a3 + 8);
  *(a3 + 40) = 0;
  return result;
}

{
  return static NSNotificationCenter.AsyncMessage.makeNotification(_:)(a1, a2, a3);
}

uint64_t protocol witness for static NSNotificationCenter.AsyncMessage.makeNotification(_:) in conformance NSHTTPCookieStorage.CookiesChangedMessage@<X0>(void **a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *a1;
  memset(v6, 0, sizeof(v6));
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = v3;
  v4 = v3;
  result = outlined assign with take of Any?(v6, a2 + 8);
  *(a2 + 40) = 0;
  return result;
}

uint64_t static NSNotificationCenter.AsyncMessage.name.getter()
{
  return static NSNotificationCenter.AsyncMessage.name.getter();
}

{
  _typeName(_:qualified:)();
  v0 = String._bridgeToObjectiveCImpl()();

  return v0;
}

uint64_t static NSNotificationCenter.AsyncMessage.makeMessage(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  return static NSNotificationCenter.AsyncMessage.makeMessage(_:)(a1, a2);
}

{
  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}

uint64_t NSNotificationCenter.addObserver<A, B>(of:for:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v14 = (*(a5 + 16))(a4, a5);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v7;
  v15[5] = a2;
  v15[6] = a3;
  swift_unknownObjectRetain();
  v21[4] = partial apply for closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:);
  v21[5] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v21[3] = &block_descriptor_24;
  v16 = _Block_copy(v21);
  v17 = v7;

  v18 = [v17 _addObserver_object_usingBlock_];
  _Block_release(v16);

  swift_unknownObjectRelease();
  type metadata accessor for NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  result = swift_unknownObjectWeakAssign();
  *a6 = v19;
  return result;
}

{
  v12 = a1;
  swift_unknownObjectRetain();
  NSNotificationCenter._addMainActorObserver<A>(subject:observer:)(&v12, a2, a3, a4, a5, a6);
  return swift_unknownObjectRelease();
}

uint64_t NSNotificationCenter.addObserver<A, B>(of:for:using:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v36 = a5;
  v32 = a2;
  v33 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v31 - v10;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  (*(v8 + 56))(&v31 - v17, 1, 1, AssociatedTypeWitness, v16);
  v19 = (*(a4 + 16))(a3, a4);
  v20 = *(v12 + 16);
  v34 = v11;
  v20(v14, v18, v11);
  v21 = 0;
  if ((*(v8 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    goto LABEL_6;
  }

  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    (*(v8 + 16))(v31, v14, AssociatedTypeWitness);
    v21 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    goto LABEL_5;
  }

  if (v9 == 8)
  {
    v21 = *v14;
    swift_unknownObjectRetain();
LABEL_5:
    (*(v8 + 8))(v14, AssociatedTypeWitness);
LABEL_6:
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v24 = v35;
    v26 = v32;
    v25 = v33;
    v23[4] = v35;
    v23[5] = v25;
    v23[6] = v26;
    aBlock[4] = closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:)partial apply;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    aBlock[3] = &block_descriptor_7_1;
    v27 = _Block_copy(aBlock);
    v28 = v24;

    v29 = [v28 _addObserver_object_usingBlock_];
    _Block_release(v27);

    swift_unknownObjectRelease();
    (*(v12 + 8))(v18, v34);
    type metadata accessor for NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    result = swift_unknownObjectWeakAssign();
    *v36 = v30;
    return result;
  }

  __break(1u);
  return result;
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v17 - v14, 1, 1, AssociatedTypeWitness, v13);
  NSNotificationCenter._addMainActorObserver<A>(subject:observer:)(v15, a1, a2, a3, a4, a5);
  return (*(v12 + 8))(v15, v11);
}

uint64_t NSNotificationCenter.addObserver<A>(of:for:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v14 = (*(a5 + 16))(a4, a5);
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v7;
  v15[5] = a2;
  v15[6] = a3;
  v21[4] = closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:)partial apply;
  v21[5] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v21[3] = &block_descriptor_14_0;
  v16 = _Block_copy(v21);
  v17 = v7;

  v18 = [v17 _addObserver_object_usingBlock_];
  _Block_release(v16);

  swift_unknownObjectRelease();
  type metadata accessor for NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  result = swift_unknownObjectWeakAssign();
  *a6 = v19;
  return result;
}

{
  v7 = a1;
  return NSNotificationCenter._addMainActorObserver<A>(subject:observer:)(&v7, a2, a3, a4, a5, a6);
}

unint64_t NSNotificationCenter.post<A>(_:subject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1;
  (*(a4 + 32))(&v68, a1, a3, a4);
  v10 = (*(a4 + 16))(a3, a4);

  v68 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66[0] = a2;
  swift_unknownObjectRetain();
  outlined assign with take of Any?(v66, v69);
  if (v70)
  {
    v11 = v70;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  if (one-time initialization token for key != -1)
  {
    swift_once();
  }

  v12 = static NSNotificationCenter.NotificationMessageKey.key;
  *&v60[0] = static NSNotificationCenter.NotificationMessageKey.key;
  type metadata accessor for NSNotificationCenter.NotificationMessageKey();
  lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject();
  v13 = v12;
  AnyHashable.init<A>(_:)();
  v65 = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v9, a3);
  outlined init with take of Any(&v64, v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v11;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
  v18 = *(v11 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v9) = v17;
  if (*(v11 + 24) < v21)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
    v22 = v62;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
    if ((v9 & 1) == (v23 & 1))
    {
      goto LABEL_12;
    }

    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v56 = v5;
    v57 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v25 = static _DictionaryStorage.copy(original:)();
    v22 = v25;
    if (*(v11 + 16))
    {
      result = v25 + 64;
      v27 = v11 + 64;
      v28 = ((1 << *(v22 + 32)) + 63) >> 6;
      if (v22 != v11 || result >= v27 + 8 * v28)
      {
        result = memmove(result, (v11 + 64), 8 * v28);
      }

      v29 = 0;
      *(v22 + 16) = *(v11 + 16);
      v30 = 1 << *(v11 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v11 + 64);
      v33 = (v30 + 63) >> 6;
      if (v32)
      {
        do
        {
          v34 = __clz(__rbit64(v32));
          v58 = (v32 - 1) & v32;
LABEL_28:
          v37 = v34 | (v29 << 6);
          v38 = 40 * v37;
          outlined init with copy of AnyHashable(*(v11 + 48) + 40 * v37, v60);
          v37 *= 32;
          outlined init with copy of Any(*(v11 + 56) + v37, v59);
          v39 = *(v22 + 48) + v38;
          v40 = v60[0];
          v41 = v60[1];
          *(v39 + 32) = v61;
          *v39 = v40;
          *(v39 + 16) = v41;
          result = outlined init with take of Any(v59, (*(v22 + 56) + v37));
          v32 = v58;
        }

        while (v58);
      }

      v35 = v29;
      while (1)
      {
        v29 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_41;
        }

        if (v29 >= v33)
        {
          break;
        }

        v36 = *(v27 + 8 * v29);
        ++v35;
        if (v36)
        {
          v34 = __clz(__rbit64(v36));
          v58 = (v36 - 1) & v36;
          goto LABEL_28;
        }
      }
    }

    v16 = v57;
    v5 = v56;
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_31:
    v42 = v16;
    outlined init with copy of AnyHashable(v66, v60);
    specialized _NativeDictionary._insert(at:key:value:)(v42, v60, v63, v22);
    goto LABEL_32;
  }

  v22 = v11;
LABEL_12:
  if ((v9 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  v24 = (*(v22 + 56) + 32 * v16);
  __swift_destroy_boxed_opaque_existential_1(v24);
  outlined init with take of Any(v63, v24);
LABEL_32:
  outlined destroy of AnyHashable(v66);
  v70 = v22;
  outlined init with copy of Any?(v69, v66);
  v43 = AssociatedTypeWitness;
  if (!AssociatedTypeWitness)
  {
    v50 = 0;
    goto LABEL_38;
  }

  v58 = v10;
  v44 = __swift_project_boxed_opaque_existential_1(v66, AssociatedTypeWitness);
  v45 = *(v43 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = *(v45 + 16);
  v49(&v55 - v48, v47);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v57 = &v55;
    v54 = MEMORY[0x1EEE9AC00](result);
    (v49)(&v55 - v48, &v55 - v48, v43, v54);
    v50 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v45 + 8))(&v55 - v48, v43);
    goto LABEL_36;
  }

  if (v46 == 8)
  {
    v50 = *(&v55 - v48);
    v51 = *(v45 + 8);
    swift_unknownObjectRetain();
    v51(&v55 - v48, v43);
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v66);
    v10 = v58;
LABEL_38:
    v52 = objc_allocWithZone(NSNotification);

    v53 = [v52 initWithName:v10 object:v50 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v5 postNotification_];

    return outlined destroy of Notification(&v68);
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  v5 = v4;
  type metadata accessor for MainActor();
  static GlobalActor.assertIsolated(_:file:line:)();
  (*(a4 + 32))(&v68, a1, a3, a4);
  v10 = (*(a4 + 16))(a3, a4);

  v68 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66[0] = a2;
  swift_unknownObjectRetain();
  outlined assign with take of Any?(v66, v69);
  if (v70)
  {
    v11 = v70;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  if (one-time initialization token for key != -1)
  {
    swift_once();
  }

  v12 = static NSNotificationCenter.NotificationMessageKey.key;
  *&v60[0] = static NSNotificationCenter.NotificationMessageKey.key;
  type metadata accessor for NSNotificationCenter.NotificationMessageKey();
  lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject();
  v13 = v12;
  AnyHashable.init<A>(_:)();
  v65 = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  outlined init with take of Any(&v64, v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v11;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
  v18 = *(v11 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(a3) = v17;
  if (*(v11 + 24) < v21)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
    v22 = v62;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
    if ((a3 & 1) == (v23 & 1))
    {
      goto LABEL_12;
    }

    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v56 = v5;
    v57 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v25 = static _DictionaryStorage.copy(original:)();
    v22 = v25;
    if (*(v11 + 16))
    {
      result = v25 + 64;
      v27 = v11 + 64;
      v28 = ((1 << *(v22 + 32)) + 63) >> 6;
      if (v22 != v11 || result >= v27 + 8 * v28)
      {
        result = memmove(result, (v11 + 64), 8 * v28);
      }

      v29 = 0;
      *(v22 + 16) = *(v11 + 16);
      v30 = 1 << *(v11 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v11 + 64);
      v33 = (v30 + 63) >> 6;
      if (v32)
      {
        do
        {
          v34 = __clz(__rbit64(v32));
          v58 = (v32 - 1) & v32;
LABEL_28:
          v37 = v34 | (v29 << 6);
          v38 = 40 * v37;
          outlined init with copy of AnyHashable(*(v11 + 48) + 40 * v37, v60);
          v37 *= 32;
          outlined init with copy of Any(*(v11 + 56) + v37, v59);
          v39 = *(v22 + 48) + v38;
          v40 = v60[0];
          v41 = v60[1];
          *(v39 + 32) = v61;
          *v39 = v40;
          *(v39 + 16) = v41;
          result = outlined init with take of Any(v59, (*(v22 + 56) + v37));
          v32 = v58;
        }

        while (v58);
      }

      v35 = v29;
      while (1)
      {
        v29 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_41;
        }

        if (v29 >= v33)
        {
          break;
        }

        v36 = *(v27 + 8 * v29);
        ++v35;
        if (v36)
        {
          v34 = __clz(__rbit64(v36));
          v58 = (v36 - 1) & v36;
          goto LABEL_28;
        }
      }
    }

    v16 = v57;
    v5 = v56;
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_31:
    v42 = v16;
    outlined init with copy of AnyHashable(v66, v60);
    specialized _NativeDictionary._insert(at:key:value:)(v42, v60, v63, v22);
    goto LABEL_32;
  }

  v22 = v11;
LABEL_12:
  if ((a3 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  v24 = (*(v22 + 56) + 32 * v16);
  __swift_destroy_boxed_opaque_existential_1(v24);
  outlined init with take of Any(v63, v24);
LABEL_32:
  outlined destroy of AnyHashable(v66);
  v70 = v22;
  outlined init with copy of Any?(v69, v66);
  v43 = AssociatedTypeWitness;
  if (!AssociatedTypeWitness)
  {
    v50 = 0;
    goto LABEL_38;
  }

  v58 = v10;
  v44 = __swift_project_boxed_opaque_existential_1(v66, AssociatedTypeWitness);
  v45 = *(v43 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = *(v45 + 16);
  v49(&v55 - v48, v47);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v57 = &v55;
    v54 = MEMORY[0x1EEE9AC00](result);
    (v49)(&v55 - v48, &v55 - v48, v43, v54);
    v50 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v45 + 8))(&v55 - v48, v43);
    goto LABEL_36;
  }

  if (v46 == 8)
  {
    v50 = *(&v55 - v48);
    v51 = *(v45 + 8);
    swift_unknownObjectRetain();
    v51(&v55 - v48, v43);
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v66);
    v10 = v58;
LABEL_38:
    v52 = objc_allocWithZone(NSNotification);

    v53 = [v52 initWithName:v10 object:v50 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v5 postNotification_];

    return outlined destroy of Notification(&v68);
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t NSNotificationCenter.post<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(a3 + 32))(&v66);
  v8 = (*(a3 + 16))(a2, a3);

  v66 = v8;
  if (v68)
  {
    v9 = v68;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  if (one-time initialization token for key != -1)
  {
    swift_once();
  }

  v10 = static NSNotificationCenter.NotificationMessageKey.key;
  *&v58[0] = static NSNotificationCenter.NotificationMessageKey.key;
  type metadata accessor for NSNotificationCenter.NotificationMessageKey();
  lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject();
  v11 = v10;
  AnyHashable.init<A>(_:)();
  v63 = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  outlined init with take of Any(&v62, v61);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v9;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
  v16 = *(v9 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(a1) = v15;
  if (*(v9 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v20 = v60;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    if ((a1 & 1) == (v21 & 1))
    {
      goto LABEL_12;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v55 = v4;
    v56 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v20 = v23;
    if (*(v9 + 16))
    {
      result = v23 + 64;
      v25 = v9 + 64;
      v26 = ((1 << *(v20 + 32)) + 63) >> 6;
      if (v20 != v9 || result >= v25 + 8 * v26)
      {
        result = memmove(result, (v9 + 64), 8 * v26);
      }

      v27 = 0;
      *(v20 + 16) = *(v9 + 16);
      v28 = 1 << *(v9 + 32);
      v29 = *(v9 + 64);
      v30 = -1;
      if (v28 < 64)
      {
        v30 = ~(-1 << v28);
      }

      v31 = v30 & v29;
      v32 = (v28 + 63) >> 6;
      if ((v30 & v29) != 0)
      {
        do
        {
          v33 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
LABEL_28:
          v36 = v33 | (v27 << 6);
          v37 = 40 * v36;
          outlined init with copy of AnyHashable(*(v9 + 48) + 40 * v36, v58);
          v36 *= 32;
          outlined init with copy of Any(*(v9 + 56) + v36, v57);
          v38 = *(v20 + 48) + v37;
          v39 = v58[0];
          v40 = v58[1];
          *(v38 + 32) = v59;
          *v38 = v39;
          *(v38 + 16) = v40;
          result = outlined init with take of Any(v57, (*(v20 + 56) + v36));
        }

        while (v31);
      }

      v34 = v27;
      while (1)
      {
        v27 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_41;
        }

        if (v27 >= v32)
        {
          break;
        }

        v35 = *(v25 + 8 * v27);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v31 = (v35 - 1) & v35;
          goto LABEL_28;
        }
      }
    }

    v14 = v56;
    v4 = v55;
    if (a1)
    {
      goto LABEL_13;
    }

LABEL_31:
    v41 = v14;
    outlined init with copy of AnyHashable(v64, v58);
    specialized _NativeDictionary._insert(at:key:value:)(v41, v58, v61, v20);
    goto LABEL_32;
  }

  v20 = v9;
LABEL_12:
  if ((a1 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  v22 = (*(v20 + 56) + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v22);
  outlined init with take of Any(v61, v22);
LABEL_32:
  outlined destroy of AnyHashable(v64);
  v68 = v20;
  outlined init with copy of Any?(&v67, v64);
  v42 = v65;
  if (!v65)
  {
    v50 = 0;
    goto LABEL_38;
  }

  v56 = v8;
  v43 = v4;
  v44 = __swift_project_boxed_opaque_existential_1(v64, v65);
  v45 = *(v42 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = *(v45 + 16);
  v49(&v55 - v48, v47);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v55 = &v55;
    v54 = MEMORY[0x1EEE9AC00](result);
    (v49)(&v55 - v48, &v55 - v48, v42, v54);
    v50 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v45 + 8))(&v55 - v48, v42);
    goto LABEL_36;
  }

  if (v46 == 8)
  {
    v50 = *(&v55 - v48);
    v51 = *(v45 + 8);
    swift_unknownObjectRetain();
    v51(&v55 - v48, v42);
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v64);
    v4 = v43;
    v8 = v56;
LABEL_38:
    v52 = objc_allocWithZone(NSNotification);

    v53 = [v52 initWithName:v8 object:v50 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v4 postNotification_];

    return outlined destroy of Notification(&v66);
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for MainActor();
  static GlobalActor.assertIsolated(_:file:line:)();
  (*(a3 + 32))(&v66, a1, a2, a3);
  v8 = (*(a3 + 16))(a2, a3);

  v66 = v8;
  if (v68)
  {
    v9 = v68;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  if (one-time initialization token for key != -1)
  {
    swift_once();
  }

  v10 = static NSNotificationCenter.NotificationMessageKey.key;
  *&v58[0] = static NSNotificationCenter.NotificationMessageKey.key;
  type metadata accessor for NSNotificationCenter.NotificationMessageKey();
  lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject();
  v11 = v10;
  AnyHashable.init<A>(_:)();
  v63 = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  outlined init with take of Any(&v62, v61);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v9;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
  v16 = *(v9 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(a2) = v15;
  if (*(v9 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v20 = v60;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    if ((a2 & 1) == (v21 & 1))
    {
      goto LABEL_12;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v55 = v4;
    v56 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v20 = v23;
    if (*(v9 + 16))
    {
      result = v23 + 64;
      v25 = v9 + 64;
      v26 = ((1 << *(v20 + 32)) + 63) >> 6;
      if (v20 != v9 || result >= v25 + 8 * v26)
      {
        result = memmove(result, (v9 + 64), 8 * v26);
      }

      v27 = 0;
      *(v20 + 16) = *(v9 + 16);
      v28 = 1 << *(v9 + 32);
      v29 = *(v9 + 64);
      v30 = -1;
      if (v28 < 64)
      {
        v30 = ~(-1 << v28);
      }

      v31 = v30 & v29;
      v32 = (v28 + 63) >> 6;
      if ((v30 & v29) != 0)
      {
        do
        {
          v33 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
LABEL_28:
          v36 = v33 | (v27 << 6);
          v37 = 40 * v36;
          outlined init with copy of AnyHashable(*(v9 + 48) + 40 * v36, v58);
          v36 *= 32;
          outlined init with copy of Any(*(v9 + 56) + v36, v57);
          v38 = *(v20 + 48) + v37;
          v39 = v58[0];
          v40 = v58[1];
          *(v38 + 32) = v59;
          *v38 = v39;
          *(v38 + 16) = v40;
          result = outlined init with take of Any(v57, (*(v20 + 56) + v36));
        }

        while (v31);
      }

      v34 = v27;
      while (1)
      {
        v27 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_41;
        }

        if (v27 >= v32)
        {
          break;
        }

        v35 = *(v25 + 8 * v27);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v31 = (v35 - 1) & v35;
          goto LABEL_28;
        }
      }
    }

    v14 = v56;
    v4 = v55;
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_31:
    v41 = v14;
    outlined init with copy of AnyHashable(v64, v58);
    specialized _NativeDictionary._insert(at:key:value:)(v41, v58, v61, v20);
    goto LABEL_32;
  }

  v20 = v9;
LABEL_12:
  if ((a2 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  v22 = (*(v20 + 56) + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v22);
  outlined init with take of Any(v61, v22);
LABEL_32:
  outlined destroy of AnyHashable(v64);
  v68 = v20;
  outlined init with copy of Any?(&v67, v64);
  v42 = v65;
  if (!v65)
  {
    v50 = 0;
    goto LABEL_38;
  }

  v56 = v8;
  v43 = v4;
  v44 = __swift_project_boxed_opaque_existential_1(v64, v65);
  v45 = *(v42 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = *(v45 + 16);
  v49(&v55 - v48, v47);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v55 = &v55;
    v54 = MEMORY[0x1EEE9AC00](result);
    (v49)(&v55 - v48, &v55 - v48, v42, v54);
    v50 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v45 + 8))(&v55 - v48, v42);
    goto LABEL_36;
  }

  if (v46 == 8)
  {
    v50 = *(&v55 - v48);
    v51 = *(v45 + 8);
    swift_unknownObjectRetain();
    v51(&v55 - v48, v42);
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v64);
    v4 = v43;
    v8 = v56;
LABEL_38:
    v52 = objc_allocWithZone(NSNotification);

    v53 = [v52 initWithName:v8 object:v50 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v4 postNotification_];

    return outlined destroy of Notification(&v66);
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

NSObject *closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a6;
  v64 = a3;
  v65 = a4;
  v62 = a2;
  v71 = type metadata accessor for Optional();
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v60 - v14;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v66 = a1;
  v67 = &v60 - v24;
  v25 = *(a1 + 40);
  if (v25)
  {
    if (one-time initialization token for key != -1)
    {
      swift_once();
    }

    v26 = static NSNotificationCenter.NotificationMessageKey.key;
    v73 = static NSNotificationCenter.NotificationMessageKey.key;
    type metadata accessor for NSNotificationCenter.NotificationMessageKey();
    lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject();
    v27 = v26;
    AnyHashable.init<A>(_:)();
    if (*(v25 + 16))
    {
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v74);
      if (v29)
      {
        outlined init with copy of Any(*(v25 + 56) + 32 * v28, v75);
        outlined destroy of AnyHashable(v74);
        goto LABEL_9;
      }
    }

    outlined destroy of AnyHashable(v74);
  }

  memset(v75, 0, 32);
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v30 = swift_dynamicCast();
  v72 = *(v15 + 56);
  if (v30)
  {
    v31 = v72;
    v72(v12, 0, 1, a5);
    v32 = *(v15 + 32);
    v32(v22, v12, a5);
    v33 = v70;
    v32(v70, v22, a5);
    v31(v33, 0, 1, a5);
    v34 = (*(v15 + 48))(v33, 1, a5);
LABEL_17:
    if (v34 == 1)
    {
      v35 = *(v68 + 8);
      v41 = v71;
      return v35(v33, v41);
    }

    v50 = v67;
    v32(v67, v33, a5);
    v51 = [v62 _getActorQueueManager];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for _NotificationCenterActorQueueManager();
    swift_dynamicCast();
    v52 = *&v75[0];
    v53 = v63;
    (*(v15 + 16))(v63, v50, a5);
    v54 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v55 = swift_allocObject();
    v56 = v69;
    v55[2] = a5;
    v55[3] = v56;
    v57 = v65;
    v55[4] = v64;
    v55[5] = v57;
    v58 = (v32)(v55 + v54, v53, a5);
    v59 = *&v52[OBJC_IVAR____NotificationCenterActorQueueManager_state];
    MEMORY[0x1EEE9AC00](v58);
    *(&v60 - 2) = &async function pointer to partial apply for closure #1 in closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:);
    *(&v60 - 1) = v55;

    os_unfair_lock_lock(v59 + 9);
    partial apply for closure #1 in _NotificationCenterActorQueueManager.enqueue(_:)(&v59[4]);
    os_unfair_lock_unlock(v59 + 9);

    return (*(v15 + 8))(v67, a5);
  }

  v72(v12, 1, 1, a5);
  v35 = *(v68 + 8);
  v36 = v71;
  v35(v12, v71);
  (*(v69 + 24))(v66, a5);
  v37 = *(v15 + 48);
  if (v37(v9, 1, a5) != 1)
  {
    v32 = *(v15 + 32);
    v49 = v61;
    v32(v61, v9, a5);
    v33 = v70;
    v32(v70, v49, a5);
    v72(v33, 0, 1, a5);
    v34 = v37(v33, 1, a5);
    goto LABEL_17;
  }

  v35(v9, v36);
  v38 = static os_log_type_t.fault.getter();
  result = _NSRuntimeIssuesLog();
  if (result)
  {
    v40 = result;
    v41 = v36;
    if (os_log_type_enabled(result, v38))
    {
      v42 = v35;
      v43 = swift_slowAlloc();
      v44 = v38;
      v45 = swift_slowAlloc();
      v74[0] = v45;
      *v43 = 136315138;
      *&v75[0] = a5;
      swift_getMetatypeMetadata();
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v74);
      v41 = v71;

      *(v43 + 4) = v48;
      _os_log_impl(&dword_18075C000, v40, v44, "Unable to deliver Notification to Message observer because %s.makeMessage() returned nil. If this is unexpected, check or provide an implementation of makeMessage() which returns a non-nil value for this notification's payload.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1865D2690](v45, -1, -1);
      v35 = v42;
      MEMORY[0x1865D2690](v43, -1, -1);
    }

    v33 = v70;
    v72(v70, 1, 1, a5);
    return v35(v33, v41);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:)(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return v7(a3);
}

uint64_t partial apply for closure #1 in closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:)()
{
  v2 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in closure #1 in NSNotificationCenter._addAsyncObserver<A>(_:subject:observer:)(v3, v4, v0 + v2);
}

uint64_t static NSNotificationCenter.MainActorMessage.makeNotification(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 16))(a1, a2);
  memset(v6, 0, sizeof(v6));
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = v4;
  result = outlined assign with take of Any?(v6, a3 + 8);
  *(a3 + 40) = 0;
  return result;
}

{
  return static NSNotificationCenter.MainActorMessage.makeNotification(_:)(a1, a2, a3);
}

uint64_t protocol witness for static NSNotificationCenter.MainActorMessage.makeNotification(_:) in conformance TimeZone.SystemTimeZoneDidChangeMessage@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695DA68];
  memset(v5, 0, sizeof(v5));
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = v2;
  v3 = v2;
  result = outlined assign with take of Any?(v5, a1 + 8);
  *(a1 + 40) = 0;
  return result;
}

uint64_t static NSNotificationCenter.MainActorMessage.name.getter()
{
  return static NSNotificationCenter.MainActorMessage.name.getter();
}

{
  _typeName(_:qualified:)();
  v0 = String._bridgeToObjectiveCImpl()();

  return v0;
}

uint64_t static NSNotificationCenter.MainActorMessage.makeMessage(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  return static NSNotificationCenter.MainActorMessage.makeMessage(_:)(a1, a2);
}

{
  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}

uint64_t NSNotificationCenter._addMainActorObserver<A>(subject:observer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v30 = a2;
  v32 = a1;
  v33 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v28 - v12;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v28 - v16);
  v18 = (*(a5 + 16))(a4, a5, v15);
  (*(v14 + 16))(v17, v32, v13);
  v19 = v33;
  v20 = v10;
  v21 = (*(v10 + 48))(v17, 1, AssociatedTypeWitness);
  v22 = 0;
  if (v21 == 1)
  {
    goto LABEL_6;
  }

  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    (*(v20 + 16))(v29, v17, AssociatedTypeWitness);
    v22 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    goto LABEL_5;
  }

  if (v11 == 8)
  {
    v22 = *v17;
    swift_unknownObjectRetain();
LABEL_5:
    (*(v20 + 8))(v17, AssociatedTypeWitness);
LABEL_6:
    v24 = swift_allocObject();
    v24[2] = a4;
    v24[3] = a5;
    v24[4] = v30;
    v24[5] = a3;
    aBlock[4] = partial apply for closure #1 in NSNotificationCenter._addMainActorObserver<A>(subject:observer:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    aBlock[3] = &block_descriptor_25;
    v25 = _Block_copy(aBlock);

    v26 = [v31 _addObserver_object_usingBlock_];
    _Block_release(v25);

    swift_unknownObjectRelease();
    type metadata accessor for NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    result = swift_unknownObjectWeakAssign();
    *v19 = v27;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in NSNotificationCenter._addMainActorObserver<A>(subject:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of Notification(a1, v11);
  type metadata accessor for MainActor();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = v11;
  v10[5] = a2;
  v10[6] = a3;
  specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #1 in NSNotificationCenter._addMainActorObserver<A>(subject:observer:), v10);
  return outlined destroy of Notification(v11);
}

NSObject *closure #1 in closure #1 in NSNotificationCenter._addMainActorObserver<A>(subject:observer:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void))
{
  v54 = a3;
  v55 = a2;
  v58 = type metadata accessor for Optional();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v53 = &v50 - v23;
  v56 = a1;
  v24 = *(a1 + 40);
  v59 = v15;
  if (v24)
  {
    v52 = a5;
    if (one-time initialization token for key != -1)
    {
      swift_once();
    }

    v25 = static NSNotificationCenter.NotificationMessageKey.key;
    v63 = static NSNotificationCenter.NotificationMessageKey.key;
    type metadata accessor for NSNotificationCenter.NotificationMessageKey();
    lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject();
    v26 = v25;
    AnyHashable.init<A>(_:)();
    if (*(v24 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v60), (v28 & 1) != 0))
    {
      outlined init with copy of Any(*(v24 + 56) + 32 * v27, &v61);
      outlined destroy of AnyHashable(v60);
    }

    else
    {
      outlined destroy of AnyHashable(v60);
      v61 = 0u;
      v62 = 0u;
    }

    v15 = v59;
    a5 = v52;
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v29 = swift_dynamicCast();
  v30 = v16;
  v31 = v16 + 56;
  v32 = *(v16 + 56);
  if (v29)
  {
    v32(v12, 0, 1, a4);
    v33 = *(v30 + 32);
    v33(v21, v12, a4);
    v33(v15, v21, a4);
    v32(v15, 0, 1, a4);
    v34 = (*(v30 + 48))(v15, 1, a4);
LABEL_18:
    if (v34 == 1)
    {
      v39 = *(v57 + 8);
      v42 = v58;
      return v39(v15, v42);
    }

    v49 = v53;
    v33(v53, v15, a4);
    v55(v49);
    return (*(v30 + 8))(v49, a4);
  }

  v52 = v32;
  v50 = v31;
  v32(v12, 1, 1, a4);
  v35 = *(v57 + 8);
  v36 = v58;
  v35(v12, v58);
  (*(a5 + 3))(v56, a4, a5);
  v37 = *(v30 + 48);
  if (v37(v9, 1, a4) != 1)
  {
    v33 = *(v30 + 32);
    v48 = v51;
    v33(v51, v9, a4);
    v15 = v59;
    v33(v59, v48, a4);
    v52(v15, 0, 1, a4);
    v34 = v37(v15, 1, a4);
    goto LABEL_18;
  }

  v38 = v52;
  v39 = v35;
  v35(v9, v36);
  LODWORD(v57) = static os_log_type_t.fault.getter();
  result = _NSRuntimeIssuesLog();
  if (result)
  {
    v41 = result;
    v42 = v36;
    if (os_log_type_enabled(result, v57))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60[0] = v44;
      *v43 = 136315138;
      *&v61 = a4;
      swift_getMetatypeMetadata();
      v45 = String.init<A>(describing:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v60);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_18075C000, v41, v57, "Unable to deliver Notification to Message observer because %s.makeMessage() returned nil. If this is unexpected, check or provide an implementation of makeMessage() which returns a non-nil value for this notification's payload.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1865D2690](v44, -1, -1);
      v42 = v58;
      MEMORY[0x1865D2690](v43, -1, -1);
    }

    v15 = v59;
    v38(v59, 1, 1, a4);
    return v39(v15, v42);
  }

  __break(1u);
  return result;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x1865CB0E0](0xD00000000000003FLL, 0x80000001814893E0);
    v8 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v8);

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper.__deallocating_deinit()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = *(v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _removeObserver_];

    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
  }

  MEMORY[0x1865D27A0](v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  result = *(*a2 + 24);
  if ((v3 & 1) == 0)
  {
    return (*(v2 + 16) == *(*a2 + 16)) & ~result;
  }

  return result;
}

uint64_t static NSNotificationCenter.ObservationToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  if (*(*a1 + 24))
  {
    if ((*(*a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(*a1 + 16) != *(*a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

void NSNotificationCenter.ObservationToken.hash(into:)()
{
  if (*(*v0 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(*v0 + 16);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD090](v1);
  }
}

Swift::Int NSNotificationCenter.ObservationToken.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (*(v1 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 16);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD090](v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (*(v1 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 16);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD090](v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper()
{
  if (*(*v0 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(*v0 + 16);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD090](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (*(v1 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 16);
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD090](v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSNotificationCenter.ObservationToken(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  if (*(*a1 + 24))
  {
    if (*(*a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(*a1 + 16) != *(*a2 + 16))
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void NSNotificationCenter.removeObserver(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5 || (v6 = v5, type metadata accessor for NSNotificationCenter(), v7 = v1, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
    {
      static os_log_type_t.fault.getter();
      v11 = _NSRuntimeIssuesLog();
      if (v11)
      {
        v12 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_18121D6C0;
        v14 = swift_unknownObjectWeakLoadStrong();
        Class = object_getClass(v14);

        if (Class)
        {
          v16 = NSStringFromClass(Class);
          v17 = v16;
          if (!v16)
          {
LABEL_25:
            v22 = 0;
            v24 = 0xE000000000000000;
            goto LABEL_28;
          }

          isTaggedPointer = _objc_isTaggedPointer(v16);
          v19 = v17;
          v20 = v19;
          if (!isTaggedPointer)
          {
            goto LABEL_14;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v19);
          if (TaggedPointerTag)
          {
            if (TaggedPointerTag != 22)
            {
              if (TaggedPointerTag == 2)
              {
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v24 = v23;

                goto LABEL_28;
              }

LABEL_14:
              LOBYTE(v56) = 0;
              if (__CFStringIsCF())
              {
                v22 = 0;

                v24 = 0xE000000000000000;
                goto LABEL_28;
              }

              v25 = v20;
              v26 = String.init(_nativeStorage:)();
              if (v27)
              {
                v22 = v26;
                v24 = v27;

                goto LABEL_28;
              }

              if (![(NSString *)v25 length])
              {

                goto LABEL_25;
              }

              v22 = String.init(_cocoaString:)();
              v24 = v31;
LABEL_28:
              *(v13 + 56) = MEMORY[0x1E69E6158];
              v32 = lazy protocol witness table accessor for type String and conformance String();
              *(v13 + 64) = v32;
              *(v13 + 32) = v22;
              *(v13 + 40) = v24;
              v33 = swift_unknownObjectWeakLoadStrong();
              if (v33)
              {
                v34 = v33;
                v35 = type metadata accessor for NSNotificationCenter();
                *(v13 + 96) = v35;
                v36 = lazy protocol witness table accessor for type NSNotificationCenter and conformance NSObject(&lazy protocol witness table cache variable for type NSNotificationCenter and conformance NSObject, type metadata accessor for NSNotificationCenter);
                *(v13 + 104) = v36;
                *(v13 + 72) = v34;
                v37 = object_getClass(v2);
                if (v37)
                {
                  v38 = v37;

                  v39 = NSStringFromClass(v38);
                  if (!v39)
                  {
LABEL_40:
                    v45 = 0;
                    v47 = 0xE000000000000000;
                    goto LABEL_51;
                  }

                  v40 = v39;
                  v41 = _objc_isTaggedPointer(v39);
                  v42 = v40;
                  v43 = v42;
                  if (!v41)
                  {
                    goto LABEL_36;
                  }

                  v44 = _objc_getTaggedPointerTag(v42);
                  if (!v44)
                  {
                    goto LABEL_44;
                  }

                  if (v44 != 22)
                  {
                    if (v44 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v44);
                      v45 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v47 = v46;

LABEL_51:
                      *(v13 + 136) = MEMORY[0x1E69E6158];
                      *(v13 + 144) = v32;
                      *(v13 + 112) = v45;
                      *(v13 + 120) = v47;
                      *(v13 + 176) = v35;
                      *(v13 + 184) = v36;
                      *(v13 + 152) = v2;
                      v55 = v2;
                      os_log(_:dso:log:_:_:)();

                      return;
                    }

LABEL_36:
                    if (__CFStringIsCF())
                    {

                      goto LABEL_40;
                    }

                    v48 = v43;
                    v49 = String.init(_nativeStorage:)();
                    if (v50)
                    {
                      v45 = v49;
                      v47 = v50;

                      goto LABEL_51;
                    }

                    if (![(NSString *)v48 length])
                    {

                      goto LABEL_40;
                    }

                    v45 = String.init(_cocoaString:)();
                    v47 = v54;
LABEL_50:

                    goto LABEL_51;
                  }

                  v51 = [(NSString *)v43 UTF8String];
                  if (v51)
                  {
                    v52 = String.init(utf8String:)(v51);
                    if (v53)
                    {
LABEL_45:
                      v45 = v52;
                      v47 = v53;

                      goto LABEL_50;
                    }

                    __break(1u);
LABEL_44:
                    _CFIndirectTaggedPointerStringGetContents();
                    v52 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v53)
                    {
                      [(NSString *)v43 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v45 = v56;
                      v47 = v57;
                      goto LABEL_50;
                    }

                    goto LABEL_45;
                  }

LABEL_58:
                  __break(1u);
                  return;
                }

                goto LABEL_56;
              }

LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v28 = [(NSString *)v20 UTF8String];
            if (!v28)
            {
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v29 = String.init(utf8String:)(v28);
            if (v30)
            {
LABEL_22:
              v22 = v29;
              v24 = v30;

              goto LABEL_28;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          v29 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v30)
          {
            [(NSString *)v20 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v22 = v56;
            v24 = v57;
            goto LABEL_28;
          }

          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  if ((*(v3 + 24) & 1) == 0)
  {
    v9 = *(v3 + 16);
    v10 = swift_unknownObjectWeakLoadStrong();
    [v10 _removeObserver_];

    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }
}

unint64_t type metadata accessor for NSNotificationCenter()
{
  result = lazy cache variable for type metadata for NSNotificationCenter;
  if (!lazy cache variable for type metadata for NSNotificationCenter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNotificationCenter);
  }

  return result;
}

id one-time initialization function for key()
{
  result = [objc_allocWithZone(type metadata accessor for NSNotificationCenter.NotificationMessageKey()) init];
  static NSNotificationCenter.NotificationMessageKey.key = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.ObservationToken and conformance NSNotificationCenter.ObservationToken()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.ObservationToken and conformance NSNotificationCenter.ObservationToken;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.ObservationToken and conformance NSNotificationCenter.ObservationToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.ObservationToken and conformance NSNotificationCenter.ObservationToken);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSNotificationCenter and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:), 0, 0);
}

uint64_t closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:)()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[13];
  v1[2] = v2;
  v1[7] = v1 + 10;
  v1[3] = closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:);
  v5 = swift_continuation_init();
  os_unfair_lock_lock((v4 + 36));
  if (*(v4 + 32) == 1)
  {
    os_unfair_lock_unlock((v4 + 36));
    goto LABEL_3;
  }

  v8 = *(v4 + 16);
  if (v8[2])
  {
    v10 = v8[4];
    v9 = v8[5];

    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    os_unfair_lock_unlock((v4 + 36));
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      v7 = swift_allocObject();
      *(v7 + 16) = &thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())partial apply;
      *(v7 + 24) = v11;
      v6 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
      goto LABEL_7;
    }

LABEL_3:
    v6 = 0;
    v7 = 0;
LABEL_7:
    v12 = *(*(v5 + 64) + 40);
    *v12 = v6;
    v12[1] = v7;
    swift_continuation_resume();
    goto LABEL_8;
  }

  *(v1[13] + 24) = v5;
  os_unfair_lock_unlock((v4 + 36));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(0);
LABEL_8:

  return MEMORY[0x1EEE6DEC8](v3);
}

{
  *(*v0 + 112) = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:), 0, 0);
}

{
  **(v0 + 96) = *(v0 + 112);
  return (*(v0 + 8))();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return v5();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return v4();
}

void closure #2 in static _NotificationCenterActorQueueManager.State.waitForWork(_:)(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 36));
  *(a1 + 32) = 1;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  os_unfair_lock_unlock((a1 + 36));
  if (v2)
  {
    v3 = *(*(v2 + 64) + 40);
    *v3 = 0;
    v3[1] = 0;

    swift_continuation_resume();
  }
}

id _NotificationCenterActorQueueManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA36_NotificationCenterActorQueueManagerC0C0V_GMd);
  v5 = swift_allocObject();
  *(v5 + 36) = 0;
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v6 = OBJC_IVAR____NotificationCenterActorQueueManager_state;
  *&v0[OBJC_IVAR____NotificationCenterActorQueueManager_state] = v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = *&v0[v6];
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;

  v10 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in _NotificationCenterActorQueueManager.init(), v9);
  outlined destroy of TaskPriority?(v4);
  *&v0[OBJC_IVAR____NotificationCenterActorQueueManager_workerTask] = v10;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t closure #1 in _NotificationCenterActorQueueManager.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in _NotificationCenterActorQueueManager.init(), 0, 0);
}

uint64_t closure #1 in _NotificationCenterActorQueueManager.init()()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #1 in _NotificationCenterActorQueueManager.init();
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE8](v2, v4, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in _NotificationCenterActorQueueManager.init(), v3, v5);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in _NotificationCenterActorQueueManager.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in _NotificationCenterActorQueueManager.init(), 0, 0);
}

uint64_t closure #1 in closure #1 in _NotificationCenterActorQueueManager.init()()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syyYaYbcSgMd);
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in _NotificationCenterActorQueueManager.init();

  return MEMORY[0x1EEE6DE18](v0 + 72, &async function pointer to partial apply for closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:));
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  if (v1)
  {
    v4 = *(v0 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v4;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3, 1, 1, v6);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());
    v8[5] = v5;
    outlined init with copy of TaskPriority?(v3, v2);
    v9 = (*(v7 + 48))(v2, 1, v6);

    v10 = *(v0 + 104);
    if (v9 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 104));
      v11 = 0;
      v12 = 0;
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v7 + 8))(v10, v6);
      if (v8[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v11 = dispatch thunk of Actor.unownedExecutor.getter();
        v12 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    v16 = **(v0 + 88);
    v17 = swift_allocObject();
    *(v17 + 16) = &_sIeghH_IeAgH_TRTATu;
    *(v17 + 24) = v8;

    if (v12 | v11)
    {
      v18 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v11;
      *(v0 + 40) = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v18;
    *(v0 + 64) = v16;
    swift_task_create();

    outlined destroy of TaskPriority?(v19);
    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syyYaYbcSgMd);
    *v20 = v0;
    v20[1] = closure #1 in closure #1 in _NotificationCenterActorQueueManager.init();

    return MEMORY[0x1EEE6DE18](v0 + 72, &async function pointer to partial apply for closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:));
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

void closure #1 in closure #1 in _NotificationCenterActorQueueManager.init()()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in _NotificationCenterActorQueueManager.init(), 0, 0);
  }
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return v6();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id _NotificationCenterActorQueueManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();

  MEMORY[0x1865CB630](v2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t partial apply for closure #1 in _NotificationCenterActorQueueManager.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in _NotificationCenterActorQueueManager.init()(a1, v4, v5, v6);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in _NotificationCenterActorQueueManager.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v11[5] = v6;
  *a1 = v7;
  v12 = *(a1 + 8);
  if (v12)
  {
    *(a1 + 8) = 0;
    if (v7[2])
    {
      v14 = v7[4];
      v13 = v7[5];

      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      v15 = *(*(v12 + 64) + 40);
      *v15 = v14;
      v15[1] = v13;
      return swift_continuation_resume();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in _NotificationCenterActorQueueManager.init()(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in closure #1 in _NotificationCenterActorQueueManager.init()(a1, a2, v2);
}

uint64_t partial apply for closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in static _NotificationCenterActorQueueManager.State.waitForWork(_:)(a1, v1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())(v2);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_s5Error_pIegHzo_TR(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.AsyncMessageSequenceIterator<A>;

  return v4();
}

uint64_t _sIeAgH_s5Error_pIegHzo_TRTA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return _sIeAgH_s5Error_pIegHzo_TR(v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v4);
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t URLResource.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t URLResource.subdirectory.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

__n128 URLResource.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

__n128 URLResource.init(name:subdirectory:locale:bundle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  result = *a5;
  *(a7 + 40) = *a5;
  *a7 = a6;
  *(a7 + 8) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance URLResource.CodingKeys()
{
  v1 = 1701667182;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6150656C646E7562;
  }

  if (*v0)
  {
    v1 = 0x6365726964627573;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URLResource.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized URLResource.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URLResource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLResource.CodingKeys and conformance URLResource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URLResource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLResource.CodingKeys and conformance URLResource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id URLResource.encode(to:)(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation11URLResourceV10CodingKeys33_6273FB07A96EB35BCC520B3A80F5C3CDLLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = *v1;
  v38 = *(v1 + 24);
  v9 = *(v1 + 32);
  v36 = v8;
  v37 = v9;
  v35 = *(v1 + 40);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  lazy protocol witness table accessor for type URLResource.CodingKeys and conformance URLResource.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v42[0]) = 0;
  v14 = v7;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v13);
  }

  v15 = v36;
  LOBYTE(v42[0]) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v42[0] = v35;
  LOBYTE(v39) = 2;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  v17 = v5;
  v18 = [v15 bundlePath];
  if (!v18)
  {
    goto LABEL_40;
  }

  v19 = v18;
  isTaggedPointer = _objc_isTaggedPointer(v18);
  v21 = v19;
  v22 = v21;
  if (!isTaggedPointer)
  {
LABEL_10:
    LOBYTE(v39) = 0;
    *&v42[0] = 0;
    LOBYTE(v40) = 0;
    v41 = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v26 = v22;
      String.init(_nativeStorage:)();
      if (v27 || (*&v42[0] = [v26 length]) == 0)
      {

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v25 = *&v42[0];
    if (*&v42[0])
    {
      if (v41 == 1)
      {
        if (v39)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_39;
      }

      if (v40)
      {
        if (v39 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v35 - 4) = v22;
          *(&v35 - 3) = v42;
          *(&v35 - 4) = 1536;
          *(&v35 - 1) = v25;
        }

        else
        {
          v30 = [v22 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v30);
          *(&v35 - 4) = v22;
          *(&v35 - 3) = v42;
          *(&v35 - 4) = 134217984;
          *(&v35 - 1) = v31;
        }

        v32 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          goto LABEL_36;
        }
      }

LABEL_38:
      String.init(_cocoaString:)();
      goto LABEL_39;
    }

LABEL_21:

    goto LABEL_40;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  if (!TaggedPointerTag)
  {
    v40 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v29)
    {
      [v22 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_39:

      goto LABEL_40;
    }

LABEL_36:

    goto LABEL_39;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v35 - 2) = v22;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_40:
      LOBYTE(v42[0]) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v17 + 8))(v14, v13);
    }

    goto LABEL_10;
  }

  result = [v22 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v28)
    {
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type URLResource.CodingKeys and conformance URLResource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLResource.CodingKeys and conformance URLResource.CodingKeys);
  }

  return result;
}

void URLResource.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation11URLResourceV10CodingKeys33_6273FB07A96EB35BCC520B3A80F5C3CDLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URLResource.CodingKeys and conformance URLResource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v10;
    LOBYTE(v31) = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v12;
    v28 = v11;
    v32 = 2;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v31;
    LOBYTE(v31) = 3;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v24 = objc_allocWithZone(NSBundle);
    v25 = v14;
    v15 = String._bridgeToObjectiveCImpl()();
    v16 = [v24 initWithPath_];
    swift_unknownObjectRelease();
    v24 = v16;
    if (v16)
    {
      (*(v6 + 8))(v8, v5);

      v17 = v24;
      *a2 = v24;
      *(a2 + 8) = v9;
      v18 = v29;
      v19 = v28;
      *(a2 + 16) = v30;
      *(a2 + 24) = v19;
      *(a2 + 32) = v18;
      *(a2 + 40) = v27;

      swift_unknownObjectRetain();
      v20 = v17;

      __swift_destroy_boxed_opaque_existential_1(a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v21;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      *&v31 = 0;
      *(&v31 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      *&v31 = 0xD00000000000001FLL;
      *(&v31 + 1) = 0x8000000181489580;
      MEMORY[0x1865CB0E0](v26, v25);

      MEMORY[0x1865CB0E0](39, 0xE100000000000000);
      v22 = v24;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v22, *MEMORY[0x1E69E6B00]);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1(a1);

      swift_unknownObjectRelease();
    }
  }
}

void URLResource.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  NSObject.hash(into:)();
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  ObjectType = swift_getObjectType();
  if ((*(v4 + 48))(ObjectType, v4))
  {
    v6 = 1;
LABEL_8:
    Hasher._combine(_:)(v6);
    return;
  }

  Hasher._combine(_:)(0);
  (*(v4 + 64))(ObjectType, v4);
  String.hash(into:)();

  (*(v4 + 464))(&v46, ObjectType, v4);
  v54[6] = v52;
  v55[0] = *v53;
  *(v55 + 12) = *&v53[12];
  v54[2] = v48;
  v54[3] = v49;
  v54[4] = v50;
  v54[5] = v51;
  v54[0] = v46;
  v54[1] = v47;
  if (_s10Foundation17LocalePreferencesVSgWOg(v54) == 1)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v7 = v46;
  v8 = *(&v46 + 1);
  v9 = *(&v47 + 1);
  v10 = *(&v48 + 1);
  v39 = v49;
  v11 = v51;
  v40 = v50;
  v41 = *(&v51 + 1);
  v42 = v52;
  v12 = *v53;
  v13 = v53[24];
  v43 = *&v53[16];
  v44 = v53[25];
  v45 = v53[26];
  v14 = v53[27];
  Hasher._combine(_:)(1u);
  if (v7 == 2)
  {
    v15 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v15 = v7 & 1;
  }

  Hasher._combine(_:)(v15);
  if (v8)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v8 + 16));
    v16 = *(v8 + 16);
    if (v16)
    {
      v17 = v8 + 40;
      do
      {

        String.hash(into:)();

        v17 += 16;
        --v16;
      }

      while (v16);
    }

    if (v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v9)
    {
LABEL_17:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_20;
    }
  }

  Hasher._combine(_:)(0);
LABEL_20:
  v18 = v13;
  if (v10)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = v11;
  if (v39)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v39, v20, v21, v22, v23, v24, v25);
    v26 = v44;
    if (*(&v39 + 1))
    {
LABEL_25:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v39 + 1), v27, v28, v29, v30, v31, v32);
      goto LABEL_28;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v26 = v44;
    if (*(&v39 + 1))
    {
      goto LABEL_25;
    }
  }

  Hasher._combine(_:)(0);
LABEL_28:
  if (v40)
  {
    v33 = v18;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (*(&v40 + 1))
    {
      goto LABEL_30;
    }

LABEL_33:
    Hasher._combine(_:)(0);
    v34 = v33;
    if (v19)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v33 = v18;
  Hasher._combine(_:)(0);
  if (!*(&v40 + 1))
  {
    goto LABEL_33;
  }

LABEL_30:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  v34 = v33;
  if (v19)
  {
LABEL_31:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    goto LABEL_35;
  }

LABEL_34:
  Hasher._combine(_:)(0);
LABEL_35:
  if (v41)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    v35 = *(&v42 + 1);
    if (v42)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v35 = *(&v42 + 1);
    if (v42)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (v35)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }
  }

  Hasher._combine(_:)(0);
  if (v35)
  {
LABEL_38:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v35);
    if (v12)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  Hasher._combine(_:)(0);
  if (v12)
  {
LABEL_39:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v12);
    v36 = v14;
    if (v43)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_47:
  Hasher._combine(_:)(0);
  v36 = v14;
  if (v43)
  {
LABEL_40:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v34 == 2)
    {
      goto LABEL_41;
    }

    goto LABEL_49;
  }

LABEL_48:
  Hasher._combine(_:)(0);
  if (v34 == 2)
  {
LABEL_41:
    Hasher._combine(_:)(0);
    if (v26 != 2)
    {
      goto LABEL_42;
    }

LABEL_50:
    Hasher._combine(_:)(0);
    if (v45 != 2)
    {
      goto LABEL_43;
    }

LABEL_51:
    v37 = 0;
    goto LABEL_52;
  }

LABEL_49:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v34 & 1);
  if (v26 == 2)
  {
    goto LABEL_50;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v26 & 1);
  if (v45 == 2)
  {
    goto LABEL_51;
  }

LABEL_43:
  Hasher._combine(_:)(1u);
  v37 = v45 & 1;
LABEL_52:
  Hasher._combine(_:)(v37);
  if (v36 == 2)
  {
    v38 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v38 = v36 & 1;
  }

  Hasher._combine(_:)(v38);
  outlined destroy of LocalePreferences?(&v46);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URLResource()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  ObjectType = swift_getObjectType();
  if ((*(v2 + 48))(ObjectType, v2))
  {
    v4 = 1;
LABEL_8:
    Hasher._combine(_:)(v4);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  (*(v2 + 64))(ObjectType, v2);
  String.hash(into:)();

  (*(v2 + 464))(&v37, ObjectType, v2);
  v45[6] = v43;
  v46[0] = *v44;
  *(v46 + 12) = *&v44[12];
  v45[2] = v39;
  v45[3] = v40;
  v45[4] = v41;
  v45[5] = v42;
  v45[0] = v37;
  v45[1] = v38;
  if (_s10Foundation17LocalePreferencesVSgWOg(v45) == 1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v5 = v37;
  v6 = *(&v37 + 1);
  v7 = *(&v38 + 1);
  v8 = *(&v39 + 1);
  v9 = v40;
  v31 = v41;
  v32 = v42;
  v10 = v43;
  v11 = *v44;
  v33 = v44[24];
  v34 = *&v44[16];
  v12 = v44[25];
  v35 = v44[26];
  v36 = v44[27];
  Hasher._combine(_:)(1u);
  if (v5 == 2)
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5 & 1);
    if (v6)
    {
LABEL_11:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v6 + 16));
      v13 = *(v6 + 16);
      if (v13)
      {
        v14 = v6 + 40;
        do
        {

          String.hash(into:)();

          v14 += 16;
          --v13;
        }

        while (v13);
      }

      if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  Hasher._combine(_:)(0);
  if (v7)
  {
LABEL_15:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_19;
  }

LABEL_18:
  Hasher._combine(_:)(0);
LABEL_19:
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
    specialized Dictionary<>.hash(into:)(v47, v9, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v9 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, *(&v9 + 1), v21, v22, v23, v24, v25, v26);
    if (v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v31)
    {
LABEL_27:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      if (*(&v31 + 1))
      {
        goto LABEL_28;
      }

LABEL_32:
      v27 = v33;
      Hasher._combine(_:)(0);
      if (v32)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }
  }

  Hasher._combine(_:)(0);
  if (!*(&v31 + 1))
  {
    goto LABEL_32;
  }

LABEL_28:
  v27 = v33;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  if (v32)
  {
LABEL_29:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    goto LABEL_34;
  }

LABEL_33:
  Hasher._combine(_:)(0);
LABEL_34:
  if (*(&v32 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v10)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v10 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, *(&v10 + 1));
    if (v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v11)
    {
LABEL_42:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v47, v11);
      if (v34)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }
  }

  Hasher._combine(_:)(0);
  if (v34)
  {
LABEL_43:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v27 == 2)
    {
      goto LABEL_44;
    }

    goto LABEL_50;
  }

LABEL_49:
  Hasher._combine(_:)(0);
  if (v27 == 2)
  {
LABEL_44:
    Hasher._combine(_:)(0);
    if (v12 != 2)
    {
      goto LABEL_45;
    }

LABEL_51:
    Hasher._combine(_:)(0);
    if (v35 != 2)
    {
      goto LABEL_46;
    }

LABEL_52:
    v28 = 0;
    goto LABEL_53;
  }

LABEL_50:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27 & 1);
  if (v12 == 2)
  {
    goto LABEL_51;
  }

LABEL_45:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v12 & 1);
  if (v35 == 2)
  {
    goto LABEL_52;
  }

LABEL_46:
  Hasher._combine(_:)(1u);
  v28 = v35 & 1;
LABEL_53:
  Hasher._combine(_:)(v28);
  if (v36 == 2)
  {
    v29 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v29 = v36 & 1;
  }

  Hasher._combine(_:)(v29);
  outlined destroy of LocalePreferences?(&v37);
  return Hasher._finalize()();
}

void URL.init(resource:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  *&v40 = 46;
  *(&v40 + 1) = 0xE100000000000000;
  v39 = &v40;
  specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v38, v3, v4);
  if (v7)
  {

    v33 = 0;
    v34 = 0;
  }

  else
  {
    v8 = String.subscript.getter();
    MEMORY[0x1865CAE80](v8);

    v9 = String.index(after:)();
    v10 = specialized Collection.suffix(from:)(v9, v3, v4);
    v33 = MEMORY[0x1865CAE80](v10);
    v34 = v11;
  }

  v35 = v2;
  v36 = v5;
  v12 = [v2 localizations];
  if (!v12)
  {
    v12 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_181218E20;
  ObjectType = swift_getObjectType();
  LOBYTE(v40) = 1;
  v16 = *(v6 + 416);
  swift_unknownObjectRetain();
  v17 = v16(&v40, ObjectType, v6);
  v19 = v18;
  swift_unknownObjectRelease();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v20 = [v13 preferredLocalizationsFromArray:v12 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

  swift_unknownObjectRelease();
  if (v20)
  {
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v23 = v20;
    }

    v22 = v36;
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v21 = v24;

      if (*(v21 + 2))
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      [v20 copy];
      v26 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v21 = specialized _arrayForceCast<A, B>(_:)(v26);

      if (*(v21 + 2))
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v36;
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_14:
      v25 = *(v21 + 5);

      goto LABEL_17;
    }
  }

  v25 = 0;
LABEL_17:
  v27 = String._bridgeToObjectiveCImpl()();

  if (v34)
  {
    v28 = String._bridgeToObjectiveCImpl()();

    if (v22)
    {
      goto LABEL_19;
    }

LABEL_22:
    v29 = 0;
    if (v25)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v28 = 0;
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_19:
  v29 = String._bridgeToObjectiveCImpl()();
  if (v25)
  {
LABEL_20:
    v30 = String._bridgeToObjectiveCImpl()();

    goto LABEL_24;
  }

LABEL_23:
  v30 = 0;
LABEL_24:
  v31 = [v35 URLForResource:v27 withExtension:v28 subdirectory:v29 localization:v30];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  if (v31)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v31, &v40);

    v32 = v40;
  }

  else
  {
    v32 = 0uLL;
  }

  *a2 = v32;
}

id NSBundle.init(__dsoHandle:)()
{
  if (!dyld_image_path_containing_address())
  {
    return 0;
  }

  String.init(cString:)();
  v0 = String._bridgeToObjectiveCImpl()();
  v1 = _NSFrameworkPathFromLibraryPath(v0);
  swift_unknownObjectRelease();
  if (!v1)
  {
    v7 = String._bridgeToObjectiveCImpl()();

    v8 = _NSBundlePathFromExecutablePath(v7);
    swift_unknownObjectRelease();
    if (!v8)
    {
      goto LABEL_44;
    }

    isTaggedPointer = _objc_isTaggedPointer(v8);
    v10 = v8;
    v4 = v10;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v10);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_44;
          }

          goto LABEL_19;
        }

        result = [v4 UTF8String];
        if (!result)
        {
          goto LABEL_48;
        }

        String.init(utf8String:)(result);
        if (v19)
        {
          goto LABEL_34;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v4 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_43;
      }

      goto LABEL_34;
    }

LABEL_19:
    if (__CFStringIsCF())
    {
      goto LABEL_20;
    }

    v17 = v4;
    String.init(_nativeStorage:)();
    if (v18)
    {

      goto LABEL_44;
    }

    if ([v17 length])
    {
      String.init(_cocoaString:)();
      goto LABEL_43;
    }

LABEL_44:
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = String._bridgeToObjectiveCImpl()();

    v6 = [v21 initWithPath_];
    swift_unknownObjectRelease();
    if (v6)
    {
    }

    return v6;
  }

  v2 = _objc_isTaggedPointer(v1);
  v3 = v1;
  v4 = v3;
  if (!v2)
  {
LABEL_9:
    if (__CFStringIsCF())
    {

LABEL_20:

      goto LABEL_44;
    }

    v12 = v4;
    String.init(_nativeStorage:)();
    if (v13 || ![v12 length])
    {

      goto LABEL_44;
    }

    String.init(_cocoaString:)();
    goto LABEL_40;
  }

  v5 = _objc_getTaggedPointerTag(v3);
  if (!v5)
  {
    goto LABEL_24;
  }

  if (v5 != 22)
  {
    if (v5 == 2)
    {
      MEMORY[0x1EEE9AC00](v5);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_44;
    }

    goto LABEL_9;
  }

  result = [v4 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v15)
    {
LABEL_25:

LABEL_34:

LABEL_43:
      goto LABEL_44;
    }

    __break(1u);
LABEL_24:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
LABEL_40:

      goto LABEL_43;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t specialized static URLResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v12 = *(a1 + 40);
  v13 = *(a2 + 40);
  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (v2 != v6 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    if (v9 && (v3 == v7 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_10;
    }

LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  if (v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  v14 = v13;
  v15 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = specialized static Locale.== infix(_:_:)(&v15, &v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10 & 1;
}

unint64_t lazy protocol witness table accessor for type URLResource and conformance URLResource()
{
  result = lazy protocol witness table cache variable for type URLResource and conformance URLResource;
  if (!lazy protocol witness table cache variable for type URLResource and conformance URLResource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLResource and conformance URLResource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLResource and conformance URLResource;
  if (!lazy protocol witness table cache variable for type URLResource and conformance URLResource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLResource and conformance URLResource);
  }

  return result;
}

uint64_t specialized URLResource.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6365726964627573 && a2 == 0xEC00000079726F74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

Swift::Int NSScanner.NumberRepresentation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

id key path setter for NSScanner.currentIndex : NSScanner(uint64_t a1, id *a2)
{
  v2 = *a2;
  v3 = [*a2 string];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(v3);
  v6 = v5;

  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol._toUTF16Offset(_:)();

  return [v2 _deprecated_setScanLocation_];
}

id NSScanner.currentIndex.setter()
{
  v1 = v0;
  v2 = [v0 string];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  isTaggedPointer = _objc_isTaggedPointer(v2);
  v5 = v3;
  v6 = v5;
  if (!isTaggedPointer)
  {
LABEL_7:
    if (__CFStringIsCF())
    {

      goto LABEL_22;
    }

    v8 = v6;
    String.init(_nativeStorage:)();
    if (v9 || ![v8 length])
    {

      goto LABEL_22;
    }

    String.init(_cocoaString:)();
LABEL_21:

    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_22:
      lazy protocol witness table accessor for type String and conformance String();
      v13 = StringProtocol._toUTF16Offset(_:)();

      return [v1 _deprecated_setScanLocation_];
    }

    goto LABEL_7;
  }

  result = [v6 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v11)
    {
LABEL_16:

      goto LABEL_21;
    }

    __break(1u);
LABEL_15:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void (*NSScanner.currentIndex.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 56) = v2;
  v6 = [v2 string];
  if (!v6)
  {
    goto LABEL_33;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_10:
    *(v5 + 32) = 0;
    *v5 = 0;
    *(v5 + 80) = 0;
    *(v5 + 82) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (*v5)
      {
        if (*(v5 + 82) == 1)
        {
          if (*(v5 + 32))
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v12 = String.init<A>(_immortalCocoaString:count:encoding:)();
          v14 = v24;
          goto LABEL_31;
        }

        if (*(v5 + 80))
        {
          if (*(v5 + 32) != 1)
          {
            IsCF = [v10 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v14 = v32;
          v33 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v33 = v31 & 0xFFFFFFFFFFFFLL;
          }

          if (v33)
          {
            v12 = v31;

            goto LABEL_34;
          }
        }

LABEL_27:
        v12 = String.init(_cocoaString:)();
        v14 = v23;

        goto LABEL_34;
      }
    }

    else
    {
      v16 = v10;
      v17 = String.init(_nativeStorage:)();
      if (v18)
      {
        v12 = v17;
        v14 = v18;

        goto LABEL_34;
      }

      v22 = [v16 length];
      *v5 = v22;
      if (v22)
      {
        goto LABEL_27;
      }
    }

LABEL_33:
    v12 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_34;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_21;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v10 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = String.init(utf8String:)(result);
    if (v21)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    *(v5 + 80) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      v12 = *(v5 + 32);
      v14 = *(v5 + 40);
      goto LABEL_31;
    }

LABEL_22:
    v12 = v20;
    v14 = v21;

LABEL_31:
    goto LABEL_34;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v14 = v13;

LABEL_34:
  *(v5 + 64) = 0;
  *v5 = v12;
  *(v5 + 8) = v14;
  [v2 _deprecated_scanLocation];
  *(v5 + 72) = lazy protocol witness table accessor for type String and conformance String();
  v25 = StringProtocol._toUTF16Index(_:)();
  v26 = v25;
  v27 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v27 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v28 = 4 * v27;
  if (4 * v27 != v25 >> 14)
  {
    v29 = 0;
    do
    {
      String.Index.samePosition(in:)();
      if ((v30 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
      }

      *v5 = v12;
      *(v5 + 8) = v14;
      if (__OFADD__([v2 _deprecated_scanLocation], v29 + 1))
      {
        goto LABEL_50;
      }

      v26 = StringProtocol._toUTF16Index(_:)();
      ++v29;
    }

    while (v28 != v26 >> 14);
  }

  *(v5 + 48) = v26;
  return NSScanner.currentIndex.modify;
}

void NSScanner.currentIndex.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = [*(*a1 + 56) string];
  if ((a2 & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_32;
    }

    v10 = v4;
    isTaggedPointer = _objc_isTaggedPointer(v4);
    v12 = v10;
    v8 = v12;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v12);
      switch(TaggedPointerTag)
      {
        case 0:
LABEL_28:
          *(v3 + 40) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v23)
          {
            [v8 mutableCopy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();

            swift_dynamicCast();
            v13 = *(v3 + 4);
            v15 = *(v3 + 5);
LABEL_54:

            goto LABEL_55;
          }

          goto LABEL_38;
        case 0x16:
          goto LABEL_36;
        case 2:
LABEL_13:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v15 = v14;

LABEL_55:
          v31 = *(v3 + 7);
          *v3 = v13;
          *(v3 + 1) = v15;
          v32 = StringProtocol._toUTF16Offset(_:)();

          [v31 _deprecated_setScanLocation_];
          free(v3);
          return;
      }
    }

    v3[32] = 0;
    *v3 = 0;
    v3[80] = 0;
    v3[82] = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v13 = *v3;
      if (*v3)
      {
        if (v3[82] == 1)
        {
          if ((v3[32] & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }

        if ((v3[80] & 1) == 0)
        {
          goto LABEL_52;
        }

        if (v3[32] == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      }

LABEL_27:

      v15 = 0xE000000000000000;
      goto LABEL_55;
    }

    goto LABEL_25;
  }

  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = v4;
  v6 = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_14;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_28;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      goto LABEL_13;
    }

LABEL_14:
    v3[82] = 0;
    *v3 = 0;
    v3[80] = 0;
    v3[32] = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v13 = *v3;
      if (*v3)
      {
        if (v3[32] == 1)
        {
          if ((v3[82] & 1) == 0)
          {
LABEL_18:
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
LABEL_24:
            v17 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_53:
            v13 = v17;
            v15 = v18;
            goto LABEL_54;
          }

LABEL_23:
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          goto LABEL_24;
        }

        if ((v3[80] & 1) == 0)
        {
          goto LABEL_52;
        }

        if (v3[82] == 1)
        {
LABEL_45:
          MEMORY[0x1EEE9AC00](IsCF);
LABEL_47:
          v28 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v15 = v29;
          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            v13 = v28;
            goto LABEL_39;
          }

LABEL_52:
          v17 = String.init(_cocoaString:)();
          goto LABEL_53;
        }

LABEL_46:
        v27 = [v8 lengthOfBytesUsingEncoding_];
        MEMORY[0x1EEE9AC00](v27);
        goto LABEL_47;
      }

      goto LABEL_27;
    }

LABEL_25:
    v19 = v8;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      v13 = v20;
      v15 = v21;

      goto LABEL_55;
    }

    v24 = [v19 length];
    *v3 = v24;
    if (v24)
    {
      goto LABEL_52;
    }

LABEL_32:
    v13 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_55;
  }

  v25 = [v8 UTF8String];
  if (!v25)
  {
    __break(1u);
    goto LABEL_57;
  }

  v22 = String.init(utf8String:)(v25);
  if (v23)
  {
LABEL_38:
    v13 = v22;
    v15 = v23;
LABEL_39:

    goto LABEL_54;
  }

  __break(1u);
LABEL_36:
  v26 = [v8 UTF8String];
  if (!v26)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v22 = String.init(utf8String:)(v26);
  if (v23)
  {
    goto LABEL_38;
  }

LABEL_58:
  __break(1u);
}

unint64_t NSScanner.scanInt32(representation:)(char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v9 = 0x7FFFFFFF;
  if (v2)
  {
    v8 = -1;
    v3 = v1;
    if ([v3 _deprecated_scanHexInt32_])
    {
      v4 = v8;
      if (v8 < 0)
      {
        v4 = 0x7FFFFFFF;
      }

      else
      {
        v9 = v8;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = v1;
    if ([v3 _deprecated_scanInt32_])
    {
      v4 = v9;
LABEL_9:

      v6 = 0;
      v5 = v4;
      return v5 | (v6 << 32);
    }
  }

  v5 = 0;
  v6 = 1;
  return v5 | (v6 << 32);
}

uint64_t NSScanner.scanUInt64(representation:)(char *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v7[0] = -1;
  v3 = v1;
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    if (([v3 scanUnsignedLongLong_] & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = v7[0];
    goto LABEL_6;
  }

  if ([v3 scanHexLongLong_])
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:

  return v5;
}

unint64_t NSScanner.scanFloat(representation:)(char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v9 = 2139095039;
  v3 = v1;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 scanHexFloat_];
  }

  else
  {
    v5 = [v3 _deprecated_scanFloat_];
  }

  if (v5)
  {
    v6 = v9;

    v7 = 0;
  }

  else
  {

    v6 = 0;
    v7 = 1;
  }

  return v6 | (v7 << 32);
}

uint64_t NSScanner.scanDouble(representation:)(char *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v7[0] = 0x7FEFFFFFFFFFFFFFLL;
  v3 = v1;
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    if (([v3 _deprecated_scanDouble_] & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = v7[0];
    goto LABEL_6;
  }

  if ([v3 scanHexDouble_])
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:

  return v5;
}

void __swiftcall NSScanner.scanDecimal()(NSDecimal_optional *__return_ptr retstr)
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  [v1 _deprecated_scanDecimal_];
}

Swift::String_optional __swiftcall NSScanner.scanString(_:)(Swift::String a1)
{
  v2 = v1;
  v188 = a1;
  v3 = 0;
  v196 = *MEMORY[0x1E69E9840];
  v4 = [v1 charactersToBeSkipped];
  v189 = v1;
  if (!v4)
  {
    v17 = [v1 string];
    if (!v17)
    {
LABEL_28:
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
      goto LABEL_108;
    }

    v18 = v17;
    isTaggedPointer = _objc_isTaggedPointer(v17);
    v20 = v18;
    v21 = v20;
    if (!isTaggedPointer)
    {
      goto LABEL_16;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v20);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          countAndFlagsBits = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          object = v24;

          v2 = v189;
LABEL_108:
          v194._countAndFlagsBits = countAndFlagsBits;
          v194._object = object;
          v46 = &off_1E69FC000;
          [v2 _deprecated_scanLocation];
          lazy protocol witness table accessor for type String and conformance String();
          v90 = StringProtocol._toUTF16Index(_:)();
          v68 = v90;
          v91 = HIBYTE(object) & 0xF;
          if ((object & 0x2000000000000000) == 0)
          {
            v91 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          v92 = 4 * v91;
          if (4 * v91 != v90 >> 14)
          {
            v93 = 0;
            v58 = MEMORY[0x1E69E6158];
            do
            {
              isClassOrObjCExistentialType = String.Index.samePosition(in:)();
              if ((v94 & 1) == 0)
              {
                break;
              }

              v61 = (v93 + 1);
              if (__OFADD__(v93, 1))
              {
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
                goto LABEL_206;
              }

              v194._countAndFlagsBits = countAndFlagsBits;
              v194._object = object;
              v95 = [v189 _deprecated_scanLocation];
              v63 = __OFADD__(v95, v61);
              isClassOrObjCExistentialType = &v61[v95];
              if (v63)
              {
                goto LABEL_205;
              }

              v68 = StringProtocol._toUTF16Index(_:)();
              ++v93;
            }

            while (v92 != v68 >> 14);
          }

          v67 = v189;
          goto LABEL_117;
        }

LABEL_16:
        LOBYTE(v192._countAndFlagsBits) = 0;
        v194._countAndFlagsBits = 0;
        *v190 = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_28;
        }

        v28 = v21;
        v29 = String.init(_nativeStorage:)();
        if (v30)
        {
          countAndFlagsBits = v29;
          object = v30;

          goto LABEL_108;
        }

        if (![v28 length])
        {

          goto LABEL_28;
        }

        countAndFlagsBits = String.init(_cocoaString:)();
        object = v89;
LABEL_107:

        goto LABEL_108;
      }

      v31 = [v21 UTF8String];
      if (!v31)
      {
LABEL_216:
        __break(1u);
        goto LABEL_217;
      }

      v35 = String.init(utf8String:)(v31);
      if (v36)
      {
LABEL_35:
        countAndFlagsBits = v35;
        object = v36;

        goto LABEL_107;
      }

      __break(1u);
    }

    *&v190[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      object = v192._object;
      countAndFlagsBits = v192._countAndFlagsBits;
      goto LABEL_107;
    }

    goto LABEL_35;
  }

  v5 = v4;
  [v5 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  type metadata accessor for CFCharacterSetRef(0);
  swift_dynamicCast();
  type metadata accessor for __CharacterSetStorage();
  object = swift_allocObject();
  *(object + 16) = v192._countAndFlagsBits;
  v7 = v189;
  *(object + 24) = 0;

  v8 = [v7 string];
  if (!v8)
  {
LABEL_20:
    v14 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_42;
  }

  v9 = v8;
  v10 = _objc_isTaggedPointer(v8);
  v11 = v9;
  v12 = v11;
  if (!v10)
  {
    goto LABEL_14;
  }

  v13 = _objc_getTaggedPointerTag(v11);
  switch(v13)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      v31 = [v12 UTF8String];
      if (!v31)
      {
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }

      v33 = String.init(utf8String:)(v31);
      if (v34)
      {
LABEL_27:
        v14 = v33;
        v16 = v34;

        goto LABEL_41;
      }

      __break(1u);
LABEL_26:
      *&v190[1] = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v34)
      {
        [v12 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v16 = v192._object;
        v14 = v192._countAndFlagsBits;
        goto LABEL_41;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](v13);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v16 = v15;

      v7 = v189;
      goto LABEL_42;
  }

LABEL_14:
  LOBYTE(v192._countAndFlagsBits) = 0;
  v194._countAndFlagsBits = 0;
  *v190 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_20;
  }

  v25 = v12;
  v26 = String.init(_nativeStorage:)();
  if (v27)
  {
    v14 = v26;
    v16 = v27;

    goto LABEL_42;
  }

  if (![v25 length])
  {

    goto LABEL_20;
  }

  v14 = String.init(_cocoaString:)();
  v16 = v37;
LABEL_41:

LABEL_42:
  v38 = [v7 string];
  v186 = v14;
  v187 = v16;
  if (!v38)
  {
LABEL_52:
    v44 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_63;
  }

  v39 = v38;
  v40 = _objc_isTaggedPointer(v38);
  v41 = v39;
  v42 = v41;
  if ((v40 & 1) == 0)
  {
    goto LABEL_48;
  }

  v43 = _objc_getTaggedPointerTag(v41);
  if (!v43)
  {
    goto LABEL_56;
  }

  if (v43 == 22)
  {
    v31 = [v42 UTF8String];
    if (!v31)
    {
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

    v50 = String.init(utf8String:)(v31);
    if (v51)
    {
LABEL_57:
      v44 = v50;
      v46 = v51;

      goto LABEL_62;
    }

    __break(1u);
LABEL_56:
    *&v190[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v50 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v51)
    {
      [v42 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v46 = v192._object;
      v44 = v192._countAndFlagsBits;
      goto LABEL_62;
    }

    goto LABEL_57;
  }

  if (v43 != 2)
  {
LABEL_48:
    LOBYTE(v192._countAndFlagsBits) = 0;
    v194._countAndFlagsBits = 0;
    *v190 = 0;
    if (__CFStringIsCF())
    {

      goto LABEL_52;
    }

    v47 = v42;
    v48 = String.init(_nativeStorage:)();
    if (v49)
    {
      v44 = v48;
      v46 = v49;

      goto LABEL_63;
    }

    if (![v47 length])
    {

      goto LABEL_52;
    }

    v44 = String.init(_cocoaString:)();
    v46 = v52;
LABEL_62:

    goto LABEL_63;
  }

  MEMORY[0x1EEE9AC00](v43);
  v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v46 = v45;

  v7 = v189;
LABEL_63:
  v194._countAndFlagsBits = v44;
  v194._object = v46;
  countAndFlagsBits = &off_1E69FC000;
  [v7 _deprecated_scanLocation];
  lazy protocol witness table accessor for type String and conformance String();
  v53 = StringProtocol._toUTF16Index(_:)();
  v54 = v53;
  v55 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v55 = v44 & 0xFFFFFFFFFFFFLL;
  }

  v56 = 4 * v55;
  if (4 * v55 != v53 >> 14)
  {
    v57 = 0;
    v58 = MEMORY[0x1E69E6158];
    do
    {
      isClassOrObjCExistentialType = String.Index.samePosition(in:)();
      if ((v60 & 1) == 0)
      {
        break;
      }

      v61 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      v194._countAndFlagsBits = v44;
      v194._object = v46;
      v62 = [v189 _deprecated_scanLocation];
      v63 = __OFADD__(v62, v61);
      isClassOrObjCExistentialType = &v61[v62];
      if (v63)
      {
        goto LABEL_203;
      }

      v54 = StringProtocol._toUTF16Index(_:)();
      ++v57;
    }

    while (v56 != v54 >> 14);
  }

  v64 = specialized Collection.suffix(from:)(v54, v186, v187);
  v66 = v65;

  if ((v64 ^ v66) < 0x4000)
  {
    v67 = v189;
LABEL_76:

    v72 = &selRef_setPossessiveAdjectiveForm_;
    v73 = [v67 string];
    if (!v73)
    {

      goto LABEL_85;
    }

    v74 = v73;
    v75 = _objc_isTaggedPointer(v73);
    v76 = v74;
    v77 = v76;
    if ((v75 & 1) == 0)
    {
      goto LABEL_82;
    }

    v78 = _objc_getTaggedPointerTag(v76);
    if (v78)
    {
      if (v78 != 22)
      {
        if (v78 == 2)
        {
          MEMORY[0x1EEE9AC00](v78);
          v79 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v81 = v80;

          v67 = v189;
          goto LABEL_99;
        }

LABEL_82:
        LOBYTE(v192._countAndFlagsBits) = 0;
        v194._countAndFlagsBits = 0;
        *v190 = 0;
        if (__CFStringIsCF())
        {

LABEL_85:
          v79 = 0;
          v81 = 0xE000000000000000;
          goto LABEL_99;
        }

        v82 = v77;
        v83 = String.init(_nativeStorage:)();
        if (v84)
        {
          v79 = v83;
          v81 = v84;

          goto LABEL_99;
        }

        v194._countAndFlagsBits = [v82 length];
        if (!v194._countAndFlagsBits)
        {

          goto LABEL_85;
        }

        v79 = String.init(_cocoaString:)();
        v81 = v87;
        goto LABEL_98;
      }

      v31 = [v77 UTF8String];
      if (!v31)
      {
LABEL_215:
        __break(1u);
        goto LABEL_216;
      }

      v85 = String.init(utf8String:)(v31);
      if (v86)
      {
LABEL_93:
        v79 = v85;
        v81 = v86;

        goto LABEL_99;
      }

      __break(1u);
    }

    *&v190[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v85 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v86)
    {
      [v77 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v81 = v192._object;
      v79 = v192._countAndFlagsBits;
LABEL_98:

LABEL_99:

      if ((v81 & 0x2000000000000000) != 0)
      {
        v88 = (HIBYTE(v81) & 0xF) << 16;
        if ((v81 & 0x1000000000000000) == 0)
        {
LABEL_105:
          v68 = v88 | 7;
          goto LABEL_118;
        }
      }

      else
      {
        v88 = v79 << 16;
        if ((v81 & 0x1000000000000000) == 0)
        {
          goto LABEL_105;
        }
      }

      if ((v79 & 0x800000000000000) == 0)
      {
        v68 = v88 | 0xB;
        goto LABEL_118;
      }

      goto LABEL_105;
    }

    goto LABEL_93;
  }

  v68 = v64;
  v67 = v189;
  while (1)
  {
    v69 = Substring.subscript.getter();
    v71 = v70;
    swift_retain_n();
    LOBYTE(v69) = specialized Sequence.allSatisfy(_:)(v69, v71, object);

    if ((v69 & 1) == 0)
    {
      break;
    }

    v68 = Substring.index(after:)();
    if ((v68 ^ v66) < 0x4000)
    {
      goto LABEL_76;
    }
  }

LABEL_117:
  v72 = &selRef_setPossessiveAdjectiveForm_;
LABEL_118:
  v96 = [v67 string];
  if (!v96)
  {
LABEL_128:
    v61 = 0xE000000000000000;
    goto LABEL_139;
  }

  v97 = v96;
  v98 = _objc_isTaggedPointer(v96);
  v99 = v97;
  v100 = v99;
  if (!v98)
  {
    goto LABEL_124;
  }

  v101 = _objc_getTaggedPointerTag(v99);
  switch(v101)
  {
    case 0:
      goto LABEL_132;
    case 0x16:
      v31 = [v100 UTF8String];
      if (!v31)
      {
        __break(1u);
LABEL_211:
        __break(1u);
        goto LABEL_212;
      }

      String.init(utf8String:)(v31);
      if (v105)
      {
LABEL_133:
        v61 = v105;

        goto LABEL_138;
      }

      __break(1u);
LABEL_132:
      *&v190[1] = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v105)
      {
        [v100 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v61 = v192._object;
        goto LABEL_138;
      }

      goto LABEL_133;
    case 2:
      MEMORY[0x1EEE9AC00](v101);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v61 = v102;

      v67 = v189;
      goto LABEL_139;
  }

LABEL_124:
  LOBYTE(v192._countAndFlagsBits) = 0;
  v194._countAndFlagsBits = 0;
  *v190 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_128;
  }

  v103 = v100;
  String.init(_nativeStorage:)();
  if (v104)
  {
    v61 = v104;

    goto LABEL_139;
  }

  v194._countAndFlagsBits = [v103 length];
  if (!v194._countAndFlagsBits)
  {

    goto LABEL_128;
  }

  String.init(_cocoaString:)();
  v61 = v106;
LABEL_138:

LABEL_139:
  String.count.getter();
  v107 = [v67 string];
  if (v107)
  {
    v108 = v107;
    v109 = _objc_isTaggedPointer(v107);
    v110 = v108;
    v111 = v110;
    if ((v109 & 1) == 0)
    {
LABEL_145:
      LOBYTE(v192._countAndFlagsBits) = 0;
      v194._countAndFlagsBits = 0;
      *v190 = 0;
      if (__CFStringIsCF())
      {

LABEL_150:
        v58 = 0xE000000000000000;
        goto LABEL_161;
      }

      v114 = v111;
      String.init(_nativeStorage:)();
      if (v115)
      {
        v58 = v115;

        goto LABEL_161;
      }

      v194._countAndFlagsBits = [v114 length];
      if (!v194._countAndFlagsBits)
      {

        goto LABEL_150;
      }

      String.init(_cocoaString:)();
      v58 = v117;
LABEL_160:

      goto LABEL_161;
    }

    v112 = _objc_getTaggedPointerTag(v110);
    if (!v112)
    {
      goto LABEL_154;
    }

    if (v112 != 22)
    {
      if (v112 == 2)
      {
        MEMORY[0x1EEE9AC00](v112);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v58 = v113;

        v67 = v189;
LABEL_161:
        v72 = &selRef_setPossessiveAdjectiveForm_;
        goto LABEL_162;
      }

      goto LABEL_145;
    }

    v31 = [v111 UTF8String];
    if (v31)
    {
      String.init(utf8String:)(v31);
      if (v116)
      {
LABEL_155:
        v58 = v116;

        goto LABEL_160;
      }

      __break(1u);
LABEL_154:
      *&v190[1] = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v116)
      {
        [v111 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v58 = v192._object;

        v72 = &selRef_setPossessiveAdjectiveForm_;
        goto LABEL_163;
      }

      goto LABEL_155;
    }

    goto LABEL_211;
  }

  v58 = 0xE000000000000000;
LABEL_162:

LABEL_163:
  object = String.index(_:offsetBy:limitedBy:)();
  v119 = v118;

  if (v119)
  {
    goto LABEL_201;
  }

  v120 = [v67 v72[203]];
  if (!v120)
  {
    goto LABEL_174;
  }

  v121 = v120;
  v122 = _objc_isTaggedPointer(v120);
  v123 = v121;
  v61 = v123;
  if (!v122)
  {
    goto LABEL_170;
  }

  v124 = _objc_getTaggedPointerTag(v123);
  switch(v124)
  {
    case 0:
      goto LABEL_178;
    case 0x16:
      v31 = [v61 UTF8String];
      if (v31)
      {
        v128 = String.init(utf8String:)(v31);
        if (v129)
        {
LABEL_179:
          v46 = v128;
          countAndFlagsBits = v129;

          goto LABEL_184;
        }

        __break(1u);
LABEL_178:
        *&v190[1] = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v128 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v129)
        {
          v3 = [v61 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          countAndFlagsBits = v192._object;
          v46 = v192._countAndFlagsBits;
          goto LABEL_184;
        }

        goto LABEL_179;
      }

      goto LABEL_214;
    case 2:
      MEMORY[0x1EEE9AC00](v124);
      v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      countAndFlagsBits = v125;

      v67 = v189;
      goto LABEL_185;
  }

LABEL_170:
  LOBYTE(v192._countAndFlagsBits) = 0;
  v194._countAndFlagsBits = 0;
  *v190 = 0;
  if (__CFStringIsCF())
  {

LABEL_174:
    v46 = 0;
    countAndFlagsBits = 0xE000000000000000;
    goto LABEL_185;
  }

  v3 = v61;
  v126 = String.init(_nativeStorage:)();
  if (v127)
  {
    v46 = v126;
    countAndFlagsBits = v127;

    goto LABEL_185;
  }

  v194._countAndFlagsBits = [v3 length];
  if (!v194._countAndFlagsBits)
  {

    goto LABEL_174;
  }

  v46 = String.init(_cocoaString:)();
  countAndFlagsBits = v130;
LABEL_184:

LABEL_185:
  isClassOrObjCExistentialType = [v67 caseSensitive];
  if (object >> 14 < v68 >> 14)
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  v131 = isClassOrObjCExistentialType ^ 1;
  if ([v67 locale])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v192 = 0;
    v193 = 0u;
  }

  v194 = v192;
  v195 = v193;
  v186 = object;
  v187 = v131;
  if (!*(&v193 + 1))
  {
    outlined destroy of Any?(&v194);
    goto LABEL_199;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_199:
    v134 = v188._object;
    v135 = v188._countAndFlagsBits;
    v192 = v188;
    *&v190[1] = v46;
    v191 = countAndFlagsBits;
LABEL_200:
    v194._countAndFlagsBits = v46;
    v194._object = countAndFlagsBits;
    v167 = v134;
    v168 = v67;
    v169 = v135;
    Substring.init<A>(_:)();
    v170 = Substring.subscript.getter();
    v172 = v171;
    v174 = v173;
    v176 = v175;

    v194._countAndFlagsBits = v169;
    v194._object = v167;
    v149 = v168;

    v177 = Substring.init<A>(_:)();
    v181 = Substring._unlocalizedCompare(other:options:)(v177, v178, v179, v180, v187, v170, v172, v174, v176);

    v150 = &selRef_setPossessiveAdjectiveForm_;
    if (!v181)
    {
      goto LABEL_197;
    }

LABEL_201:
    v31 = 0;
    v32 = 0;
    goto LABEL_217;
  }

  v133 = *&v190[1];
  v132 = v191;
  v134 = v188._object;
  v135 = v188._countAndFlagsBits;
  v192 = v188;
  *&v190[1] = v46;
  v191 = countAndFlagsBits;
  if (!v133)
  {
    goto LABEL_200;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v58 = MEMORY[0x1E69E6158];
  object = StringProtocol._ephemeralString.getter();
  v3 = v136;
  StringProtocol._ephemeralString.getter();
  v188._object = String._bridgeToObjectiveCImpl()();

  v188._countAndFlagsBits = String._bridgeToObjectiveCImpl()();

  v46 = StringProtocol._toUTF16Offsets(_:)();
  v61 = v137;

  v185 = &v61[-v46];
  if (__OFSUB__(v61, v46))
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  ObjectType = swift_getObjectType();
  v139 = *(v132 + 488);
  swift_unknownObjectRetain();
  v140 = v139(ObjectType, v132);
  swift_unknownObjectRelease();
  v61 = type metadata accessor for NSLocale();
  *(&v195 + 1) = v61;
  v194._countAndFlagsBits = v140;
  v141 = __swift_project_boxed_opaque_existential_1(&v194, v61);
  v184[1] = v184;
  object = *(v61 - 1);
  v142 = *(object + 64);
  v143 = MEMORY[0x1EEE9AC00](v141);
  v3 = ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = v184 - v3;
  v58 = *(object + 16);
  v58(v184 - v3, v143);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
LABEL_208:
    v184[0] = v184;
    v182 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    (v58)(v184 - v3, countAndFlagsBits, v61, v182);
    v144 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(object + 8))(countAndFlagsBits, v61);
    goto LABEL_196;
  }

  if (v142 != 8)
  {
    __break(1u);
  }

  v144 = *countAndFlagsBits;
  v145 = *(object + 8);
  swift_unknownObjectRetain();
  v145(v184 - v3, v61);
LABEL_196:
  v146 = v187;
  v147 = v188;
  __swift_destroy_boxed_opaque_existential_1(&v194);
  v148 = [v147._object compare:v147._countAndFlagsBits options:v146 range:v46 locale:{v185, v144}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v149 = v189;
  v150 = &selRef_setPossessiveAdjectiveForm_;
  if (v148)
  {
    goto LABEL_201;
  }

LABEL_197:
  v151 = [v149 v150[203]];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v151);

  v152 = String.subscript.getter();
  v154 = v153;
  v156 = v155;
  v158 = v157;

  v159 = [v149 v150[203]];
  v160 = static String._unconditionallyBridgeFromObjectiveC(_:)(v159);
  v162 = v161;

  v194._countAndFlagsBits = v160;
  v194._object = v162;
  lazy protocol witness table accessor for type String and conformance String();
  v163 = StringProtocol._toUTF16Offset(_:)();

  [v149 _deprecated_setScanLocation_];
  v164 = MEMORY[0x1865CAE80](v152, v154, v156, v158);
  v166 = v165;

  v32 = v166;
  v31 = v164;
LABEL_217:
  result.value._object = v32;
  result.value._countAndFlagsBits = v31;
  return result;
}

id NSScanner.scanCharacters(from:)(uint64_t *a1)
{
  v2 = v1;
  v158 = *a1;
  v3 = [v1 charactersToBeSkipped];
  v157 = v1;
  if (v3)
  {
    v4 = v3;
    [v4 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for CFCharacterSetRef(0);
    swift_dynamicCast();
    type metadata accessor for __CharacterSetStorage();
    v5 = swift_allocObject();
    *(v5 + 16) = v159;
    *(v5 + 24) = 0;

    v6 = [v2 string];
    if (!v6)
    {
LABEL_20:
      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_42;
    }

    v7 = v6;
    isTaggedPointer = _objc_isTaggedPointer(v6);
    v9 = v7;
    v10 = v9;
    if (!isTaggedPointer)
    {
      goto LABEL_14;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v9);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v14 = v13;

          goto LABEL_42;
        }

LABEL_14:
        LOBYTE(v159) = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_20;
        }

        v24 = v10;
        v25 = String.init(_nativeStorage:)();
        if (v26)
        {
          v12 = v25;
          v14 = v26;

          goto LABEL_42;
        }

        if (![v24 length])
        {

          goto LABEL_20;
        }

        v12 = String.init(_cocoaString:)();
        v14 = v35;
LABEL_41:

LABEL_42:
        v36 = [v2 string];
        v155 = v12;
        v156 = v14;
        if (!v36)
        {
LABEL_52:
          v42 = 0;
          v44 = 0xE000000000000000;
          goto LABEL_63;
        }

        v37 = v36;
        v38 = _objc_isTaggedPointer(v36);
        v39 = v37;
        v40 = v39;
        if ((v38 & 1) == 0)
        {
          goto LABEL_48;
        }

        v41 = _objc_getTaggedPointerTag(v39);
        if (v41)
        {
          if (v41 != 22)
          {
            if (v41 == 2)
            {
              MEMORY[0x1EEE9AC00](v41);
              v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v44 = v43;

LABEL_63:
              [v2 _deprecated_scanLocation];
              lazy protocol witness table accessor for type String and conformance String();
              v51 = StringProtocol._toUTF16Index(_:)();
              v52 = v51;
              v53 = HIBYTE(v44) & 0xF;
              if ((v44 & 0x2000000000000000) == 0)
              {
                v53 = v42 & 0xFFFFFFFFFFFFLL;
              }

              v54 = 4 * v53;
              if (4 * v53 != v51 >> 14)
              {
                v55 = 0;
                while (1)
                {
                  String.Index.samePosition(in:)();
                  if ((v56 & 1) == 0)
                  {
                    goto LABEL_71;
                  }

                  if (__OFADD__(v55, 1))
                  {
                    break;
                  }

                  if (__OFADD__([v157 _deprecated_scanLocation], v55 + 1))
                  {
                    goto LABEL_221;
                  }

                  v52 = StringProtocol._toUTF16Index(_:)();
                  ++v55;
                  if (v54 == v52 >> 14)
                  {
                    goto LABEL_71;
                  }
                }

                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
              }

LABEL_71:

              v57 = specialized Collection.suffix(from:)(v52, v155, v156);
              v59 = v58;

              if ((v57 ^ v59) < 0x4000)
              {
                v2 = v157;
LABEL_76:

                v64 = [v2 string];
                if (!v64)
                {

LABEL_85:
                  v70 = 0;
                  goto LABEL_86;
                }

                v65 = v64;
                v66 = _objc_isTaggedPointer(v64);
                v67 = v65;
                v68 = v67;
                if ((v66 & 1) == 0)
                {
                  goto LABEL_82;
                }

                v69 = _objc_getTaggedPointerTag(v67);
                if (v69)
                {
                  if (v69 != 22)
                  {
                    if (v69 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v69);
                      v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v72 = v71;

                      goto LABEL_100;
                    }

LABEL_82:
                    LOBYTE(v159) = 0;
                    if (__CFStringIsCF())
                    {
                      v70 = 0;

LABEL_86:
                      v72 = 0xE000000000000000;
                      goto LABEL_100;
                    }

                    v73 = v68;
                    v74 = String.init(_nativeStorage:)();
                    if (v75)
                    {
                      v70 = v74;
                      v72 = v75;

                      goto LABEL_100;
                    }

                    if (![v73 length])
                    {

                      goto LABEL_85;
                    }

                    v70 = String.init(_cocoaString:)();
                    v72 = v78;
                    goto LABEL_99;
                  }

                  result = [v68 UTF8String];
                  if (!result)
                  {
LABEL_231:
                    __break(1u);
                    goto LABEL_232;
                  }

                  v76 = String.init(utf8String:)(result);
                  if (v77)
                  {
LABEL_94:
                    v70 = v76;
                    v72 = v77;

                    goto LABEL_100;
                  }

                  __break(1u);
                }

                _CFIndirectTaggedPointerStringGetContents();
                v76 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v77)
                {
                  [v68 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v70 = v159;
                  v72 = v160;
LABEL_99:

LABEL_100:

                  if ((v72 & 0x2000000000000000) != 0)
                  {
                    v79 = (HIBYTE(v72) & 0xF) << 16;
                    if ((v72 & 0x1000000000000000) == 0)
                    {
LABEL_106:
                      v60 = v79 | 7;
                      goto LABEL_118;
                    }
                  }

                  else
                  {
                    v79 = v70 << 16;
                    if ((v72 & 0x1000000000000000) == 0)
                    {
                      goto LABEL_106;
                    }
                  }

                  if ((v70 & 0x800000000000000) == 0)
                  {
                    v60 = v79 | 0xB;
                    goto LABEL_118;
                  }

                  goto LABEL_106;
                }

                goto LABEL_94;
              }

              v60 = v57;
              v2 = v157;
              while (1)
              {
                v61 = Substring.subscript.getter();
                v63 = v62;
                swift_retain_n();
                LOBYTE(v61) = specialized Sequence.allSatisfy(_:)(v61, v63, v5);

                if ((v61 & 1) == 0)
                {
                  break;
                }

                v60 = Substring.index(after:)();
                if ((v60 ^ v59) < 0x4000)
                {
                  goto LABEL_76;
                }
              }

LABEL_117:

LABEL_118:
              v86 = [v2 string];
              if (!v86)
              {
LABEL_128:
                v92 = 0;
                v94 = 0xE000000000000000;
                goto LABEL_139;
              }

              v87 = v86;
              v88 = _objc_isTaggedPointer(v86);
              v89 = v87;
              v90 = v89;
              if (!v88)
              {
                goto LABEL_124;
              }

              v91 = _objc_getTaggedPointerTag(v89);
              if (v91)
              {
                if (v91 != 22)
                {
                  if (v91 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v91);
                    v92 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v94 = v93;

LABEL_139:
                    v101 = specialized Collection.suffix(from:)(v60, v92, v94);
                    v103 = v102;

                    if ((v101 ^ v103) >= 0x4000)
                    {
                      v104 = v101;
                      while (1)
                      {
                        v105 = Substring.subscript.getter();
                        v107 = v106;

                        LOBYTE(v105) = specialized Sequence.allSatisfy(_:)(v105, v107, v158);

                        if ((v105 & 1) == 0)
                        {
                          break;
                        }

                        v104 = Substring.index(after:)();
                        if (!((v104 ^ v103) >> 14))
                        {
                          goto LABEL_143;
                        }
                      }

                      v108 = &selRef_setPossessiveAdjectiveForm_;
                      v109 = v157;
                      goto LABEL_173;
                    }

LABEL_143:

                    v108 = &selRef_setPossessiveAdjectiveForm_;
                    v109 = v157;
                    v110 = [v157 string];
                    if (!v110)
                    {
                      v116 = 0;
                      v118 = 0xE000000000000000;
                      goto LABEL_168;
                    }

                    v111 = v110;
                    v112 = _objc_isTaggedPointer(v110);
                    v113 = v111;
                    v114 = v113;
                    if (!v112)
                    {
LABEL_149:
                      if (__CFStringIsCF())
                      {
                        v116 = 0;

                        v118 = 0xE000000000000000;
                        goto LABEL_167;
                      }

                      v119 = v114;
                      v120 = String.init(_nativeStorage:)();
                      if (v121)
                      {
                        v116 = v120;
                        v118 = v121;

                        goto LABEL_167;
                      }

                      if (![v119 length])
                      {

                        v116 = 0;
                        v118 = 0xE000000000000000;
                        goto LABEL_167;
                      }

                      v116 = String.init(_cocoaString:)();
                      v118 = v125;
LABEL_166:

                      goto LABEL_167;
                    }

                    v115 = _objc_getTaggedPointerTag(v113);
                    if (!v115)
                    {
                      goto LABEL_158;
                    }

                    if (v115 != 22)
                    {
                      if (v115 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v115);
                        v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v118 = v117;

LABEL_167:
                        v109 = v157;
LABEL_168:

                        if ((v118 & 0x2000000000000000) == 0)
                        {
LABEL_169:
                          v124 = v116 << 16;
                          if ((v118 & 0x1000000000000000) == 0)
                          {
                            goto LABEL_172;
                          }

                          goto LABEL_170;
                        }

LABEL_163:
                        v124 = (HIBYTE(v118) & 0xF) << 16;
                        if ((v118 & 0x1000000000000000) == 0)
                        {
                          goto LABEL_172;
                        }

LABEL_170:
                        if ((v116 & 0x800000000000000) == 0)
                        {
                          v104 = v124 | 0xB;
LABEL_173:
                          if (v60 >> 14 == v104 >> 14)
                          {
                            return 0;
                          }

                          v126 = [v109 v108[203]];
                          if (!v126)
                          {
                            goto LABEL_197;
                          }

                          v127 = v126;
                          v128 = _objc_isTaggedPointer(v126);
                          v129 = v127;
                          v130 = v129;
                          if (!v128)
                          {
LABEL_181:
                            if (__CFStringIsCF())
                            {

                              goto LABEL_196;
                            }

                            v132 = v130;
                            String.init(_nativeStorage:)();
                            if (v133 || ![v132 length])
                            {

                              goto LABEL_196;
                            }

                            String.init(_cocoaString:)();
LABEL_195:

                            goto LABEL_196;
                          }

                          v131 = _objc_getTaggedPointerTag(v129);
                          if (!v131)
                          {
                            goto LABEL_189;
                          }

                          if (v131 != 22)
                          {
                            if (v131 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v131);
                              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_196:
                              v109 = v157;
LABEL_197:
                              if (v104 >> 14 < v60 >> 14)
                              {
                                goto LABEL_224;
                              }

                              v136 = String.subscript.getter();
                              v138 = v137;
                              v140 = v139;
                              v142 = v141;

                              v143 = [v109 string];
                              if (!v143)
                              {
                                goto LABEL_219;
                              }

                              v144 = v143;
                              v145 = _objc_isTaggedPointer(v143);
                              v146 = v144;
                              v147 = v146;
                              if ((v145 & 1) == 0)
                              {
LABEL_204:
                                if (__CFStringIsCF())
                                {

                                  goto LABEL_219;
                                }

                                v149 = v147;
                                String.init(_nativeStorage:)();
                                if (v150)
                                {

                                  goto LABEL_219;
                                }

                                if (![v149 length])
                                {

                                  goto LABEL_219;
                                }

                                String.init(_cocoaString:)();
LABEL_218:

                                goto LABEL_219;
                              }

                              v148 = _objc_getTaggedPointerTag(v146);
                              if (!v148)
                              {
                                goto LABEL_211;
                              }

                              if (v148 != 22)
                              {
                                if (v148 == 2)
                                {
                                  MEMORY[0x1EEE9AC00](v148);
                                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_219:
                                  lazy protocol witness table accessor for type String and conformance String();
                                  v153 = StringProtocol._toUTF16Offset(_:)();

                                  [v157 _deprecated_setScanLocation_];
                                  v154 = MEMORY[0x1865CAE80](v136, v138, v140, v142);

                                  return v154;
                                }

                                goto LABEL_204;
                              }

                              result = [v147 UTF8String];
                              if (result)
                              {
                                String.init(utf8String:)(result);
                                if (v151)
                                {
LABEL_212:

                                  goto LABEL_218;
                                }

                                __break(1u);
LABEL_211:
                                _CFIndirectTaggedPointerStringGetContents();
                                _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                if (!v152)
                                {
                                  [v147 mutableCopy];
                                  _bridgeAnyObjectToAny(_:)();

                                  swift_unknownObjectRelease();
                                  swift_dynamicCast();
                                  goto LABEL_218;
                                }

                                goto LABEL_212;
                              }

                              goto LABEL_230;
                            }

                            goto LABEL_181;
                          }

                          result = [v130 UTF8String];
                          if (result)
                          {
                            String.init(utf8String:)(result);
                            if (v134)
                            {
LABEL_190:

                              goto LABEL_195;
                            }

                            __break(1u);
LABEL_189:
                            _CFIndirectTaggedPointerStringGetContents();
                            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v135)
                            {
                              [v130 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              goto LABEL_195;
                            }

                            goto LABEL_190;
                          }

LABEL_229:
                          __break(1u);
LABEL_230:
                          __break(1u);
                          goto LABEL_231;
                        }

LABEL_172:
                        v104 = v124 | 7;
                        goto LABEL_173;
                      }

                      goto LABEL_149;
                    }

                    result = [v114 UTF8String];
                    if (result)
                    {
                      v122 = String.init(utf8String:)(result);
                      if (v123)
                      {
LABEL_159:
                        v116 = v122;
                        v118 = v123;

                        goto LABEL_166;
                      }

                      __break(1u);
LABEL_158:
                      _CFIndirectTaggedPointerStringGetContents();
                      v122 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v123)
                      {
                        [v114 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v116 = v159;
                        v118 = v160;

                        v109 = v157;
                        if ((v160 & 0x2000000000000000) == 0)
                        {
                          goto LABEL_169;
                        }

                        goto LABEL_163;
                      }

                      goto LABEL_159;
                    }

                    goto LABEL_226;
                  }

LABEL_124:
                  LOBYTE(v159) = 0;
                  if (__CFStringIsCF())
                  {

                    goto LABEL_128;
                  }

                  v95 = v90;
                  v96 = String.init(_nativeStorage:)();
                  if (v97)
                  {
                    v92 = v96;
                    v94 = v97;

                    goto LABEL_139;
                  }

                  if (![v95 length])
                  {

                    goto LABEL_128;
                  }

                  v92 = String.init(_cocoaString:)();
                  v94 = v100;
LABEL_138:

                  goto LABEL_139;
                }

                result = [v90 UTF8String];
                if (!result)
                {
                  __break(1u);
LABEL_226:
                  __break(1u);
                  goto LABEL_227;
                }

                v98 = String.init(utf8String:)(result);
                if (v99)
                {
LABEL_133:
                  v92 = v98;
                  v94 = v99;

                  goto LABEL_138;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              v98 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v99)
              {
                [v90 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v92 = v159;
                v94 = v160;
                goto LABEL_138;
              }

              goto LABEL_133;
            }

LABEL_48:
            LOBYTE(v159) = 0;
            if (__CFStringIsCF())
            {

              goto LABEL_52;
            }

            v45 = v40;
            v46 = String.init(_nativeStorage:)();
            if (v47)
            {
              v42 = v46;
              v44 = v47;

              goto LABEL_63;
            }

            if (![v45 length])
            {

              goto LABEL_52;
            }

            v42 = String.init(_cocoaString:)();
            v44 = v50;
LABEL_62:

            goto LABEL_63;
          }

          result = [v40 UTF8String];
          if (!result)
          {
LABEL_228:
            __break(1u);
            goto LABEL_229;
          }

          v48 = String.init(utf8String:)(result);
          if (v49)
          {
LABEL_57:
            v42 = v48;
            v44 = v49;

            goto LABEL_62;
          }

          __break(1u);
        }

        _CFIndirectTaggedPointerStringGetContents();
        v48 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v49)
        {
          [v40 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v42 = v159;
          v44 = v160;
          goto LABEL_62;
        }

        goto LABEL_57;
      }

      result = [v10 UTF8String];
      if (!result)
      {
LABEL_227:
        __break(1u);
        goto LABEL_228;
      }

      v31 = String.init(utf8String:)(result);
      if (v32)
      {
LABEL_27:
        v12 = v31;
        v14 = v32;

        goto LABEL_41;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v32)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v12 = v159;
      v14 = v160;
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  v15 = [v1 string];
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = v15;
  v17 = _objc_isTaggedPointer(v15);
  v18 = v16;
  v19 = v18;
  if (!v17)
  {
    goto LABEL_16;
  }

  v20 = _objc_getTaggedPointerTag(v18);
  if (!v20)
  {
    goto LABEL_34;
  }

  if (v20 != 22)
  {
    if (v20 == 2)
    {
      MEMORY[0x1EEE9AC00](v20);
      v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v23 = v22;

      goto LABEL_109;
    }

LABEL_16:
    LOBYTE(v159) = 0;
    if (__CFStringIsCF())
    {

LABEL_28:
      v21 = 0;
      v23 = 0xE000000000000000;
      goto LABEL_109;
    }

    v27 = v19;
    v28 = String.init(_nativeStorage:)();
    if (v29)
    {
      v21 = v28;
      v23 = v29;

      goto LABEL_109;
    }

    if (![v27 length])
    {

      goto LABEL_28;
    }

    v21 = String.init(_cocoaString:)();
    v23 = v80;
LABEL_108:

LABEL_109:
    [v2 _deprecated_scanLocation];
    lazy protocol witness table accessor for type String and conformance String();
    v81 = StringProtocol._toUTF16Index(_:)();
    v60 = v81;
    v82 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v82 = v21 & 0xFFFFFFFFFFFFLL;
    }

    v83 = 4 * v82;
    if (4 * v82 != v81 >> 14)
    {
      v84 = 0;
      while (1)
      {
        String.Index.samePosition(in:)();
        if ((v85 & 1) == 0)
        {
          break;
        }

        if (__OFADD__(v84, 1))
        {
          goto LABEL_222;
        }

        if (__OFADD__([v2 _deprecated_scanLocation], v84 + 1))
        {
          goto LABEL_223;
        }

        v60 = StringProtocol._toUTF16Index(_:)();
        ++v84;
        if (v83 == v60 >> 14)
        {
          goto LABEL_117;
        }
      }
    }

    goto LABEL_117;
  }

  result = [v19 UTF8String];
  if (result)
  {
    v33 = String.init(utf8String:)(result);
    if (v34)
    {
LABEL_35:
      v21 = v33;
      v23 = v34;

      goto LABEL_108;
    }

    __break(1u);
LABEL_34:
    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v34)
    {
      [v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v21 = v159;
      v23 = v160;
      goto LABEL_108;
    }

    goto LABEL_35;
  }

LABEL_232:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall NSScanner.scanUpToString(_:)(Swift::String a1)
{
  v175 = *MEMORY[0x1E69E9840];
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = v1;
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v6 = [v1 string];
    v164 = object;
    if (!v6)
    {
LABEL_14:
      v12 = 0;
      v166 = 0xE000000000000000;
      goto LABEL_25;
    }

    v7 = v6;
    isTaggedPointer = _objc_isTaggedPointer(v6);
    v9 = v7;
    v10 = v9;
    if (!isTaggedPointer)
    {
      goto LABEL_10;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v9);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v166 = v13;

          goto LABEL_25;
        }

LABEL_10:
        LOBYTE(v172) = 0;
        *&v174[0] = 0;
        LOBYTE(v170) = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_14;
        }

        v14 = v10;
        v15 = String.init(_nativeStorage:)();
        v166 = v16;
        if (v16)
        {
          v12 = v15;

          goto LABEL_25;
        }

        if (![v14 length])
        {

          goto LABEL_14;
        }

        v12 = String.init(_cocoaString:)();
        v166 = v22;
LABEL_24:

LABEL_25:
        v168 = v12;
        v23 = [v3 charactersToBeSkipped];
        v169 = v3;
        v165 = countAndFlagsBits;
        if (v23)
        {
          v24 = v23;
          [v24 copy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();

          type metadata accessor for CFCharacterSetRef(0);
          swift_dynamicCast();
          type metadata accessor for __CharacterSetStorage();
          v25 = swift_allocObject();
          *(v25 + 16) = v172;
          *(v25 + 24) = 0;

          v26 = [v3 string];
          if (!v26)
          {
LABEL_44:
            v32 = 0;
            v34 = 0xE000000000000000;
            goto LABEL_66;
          }

          v27 = v26;
          v28 = _objc_isTaggedPointer(v26);
          v29 = v27;
          v30 = v29;
          if (!v28)
          {
            goto LABEL_38;
          }

          v31 = _objc_getTaggedPointerTag(v29);
          if (!v31)
          {
            goto LABEL_50;
          }

          if (v31 != 22)
          {
            if (v31 == 2)
            {
              MEMORY[0x1EEE9AC00](v31);
              v32 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v34 = v33;

LABEL_66:
              v55 = [v3 string];
              if (!v55)
              {
LABEL_76:
                v61 = 0;
                v63 = 0xE000000000000000;
                goto LABEL_87;
              }

              v56 = v55;
              v57 = _objc_isTaggedPointer(v55);
              v58 = v56;
              v59 = v58;
              if ((v57 & 1) == 0)
              {
                goto LABEL_72;
              }

              v60 = _objc_getTaggedPointerTag(v58);
              if (!v60)
              {
                goto LABEL_80;
              }

              if (v60 != 22)
              {
                if (v60 == 2)
                {
                  MEMORY[0x1EEE9AC00](v60);
                  v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v63 = v62;

LABEL_87:
                  v162 = v32;
                  *&v174[0] = v61;
                  *(&v174[0] + 1) = v63;
                  [v169 _deprecated_scanLocation];
                  lazy protocol witness table accessor for type String and conformance String();
                  v70 = StringProtocol._toUTF16Index(_:)();
                  v71 = v70;
                  v72 = HIBYTE(v63) & 0xF;
                  if ((v63 & 0x2000000000000000) == 0)
                  {
                    v72 = v61 & 0xFFFFFFFFFFFFLL;
                  }

                  v73 = 4 * v72;
                  if (4 * v72 != v70 >> 14)
                  {
                    v74 = 0;
                    while (1)
                    {
                      String.Index.samePosition(in:)();
                      if ((v75 & 1) == 0)
                      {
                        goto LABEL_95;
                      }

                      if (__OFADD__(v74, 1))
                      {
                        goto LABEL_187;
                      }

                      *&v174[0] = v61;
                      *(&v174[0] + 1) = v63;
                      if (__OFADD__([v169 _deprecated_scanLocation], v74 + 1))
                      {
                        break;
                      }

                      v71 = StringProtocol._toUTF16Index(_:)();
                      ++v74;
                      if (v73 == v71 >> 14)
                      {
                        goto LABEL_95;
                      }
                    }

LABEL_188:
                    __break(1u);
LABEL_189:
                    __break(1u);
LABEL_190:
                    __break(1u);
LABEL_191:
                    __break(1u);
LABEL_192:
                    __break(1u);
                    goto LABEL_193;
                  }

LABEL_95:

                  v76 = specialized Collection.suffix(from:)(v71, v162, v34);
                  v78 = v77;

                  if ((v76 ^ v78) < 0x4000)
                  {
                    v79 = v168;
LABEL_100:

                    v84 = [v169 string];
                    if (!v84)
                    {

                      v91 = 0;
                      v93 = 0xE000000000000000;
                      v89 = v166;
                      goto LABEL_123;
                    }

                    v85 = v84;
                    v86 = _objc_isTaggedPointer(v84);
                    v87 = v85;
                    v88 = v87;
                    v89 = v166;
                    if ((v86 & 1) == 0)
                    {
                      goto LABEL_106;
                    }

                    v90 = _objc_getTaggedPointerTag(v87);
                    if (!v90)
                    {
                      goto LABEL_116;
                    }

                    if (v90 != 22)
                    {
                      if (v90 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v90);
                        v91 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v93 = v92;

                        goto LABEL_123;
                      }

LABEL_106:
                      LOBYTE(v172) = 0;
                      *&v174[0] = 0;
                      LOBYTE(v170) = 0;
                      if (__CFStringIsCF())
                      {

LABEL_112:
                        v91 = 0;
                        v93 = 0xE000000000000000;
                        goto LABEL_123;
                      }

                      v95 = v88;
                      v96 = String.init(_nativeStorage:)();
                      if (v97)
                      {
                        v91 = v96;
                        v93 = v97;

                        goto LABEL_123;
                      }

                      *&v174[0] = [v95 length];
                      if (!*&v174[0])
                      {

                        goto LABEL_112;
                      }

                      v91 = String.init(_cocoaString:)();
                      v93 = v100;
                      goto LABEL_122;
                    }

                    v17 = [v88 UTF8String];
                    if (v17)
                    {
                      v98 = String.init(utf8String:)(v17);
                      if (v99)
                      {
                        goto LABEL_117;
                      }

                      __break(1u);
LABEL_116:
                      LOWORD(v170) = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v98 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v99)
                      {
                        [v88 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v93 = *(&v172 + 1);
                        v91 = v172;
LABEL_122:

LABEL_123:

                        v94 = v169;
                        if ((v93 & 0x2000000000000000) != 0)
                        {
                          v101 = (HIBYTE(v93) & 0xF) << 16;
                          if ((v93 & 0x1000000000000000) == 0)
                          {
                            goto LABEL_129;
                          }
                        }

                        else
                        {
                          v101 = v91 << 16;
                          if ((v93 & 0x1000000000000000) == 0)
                          {
                            goto LABEL_129;
                          }
                        }

                        if ((v91 & 0x800000000000000) == 0)
                        {
                          v80 = v101 | 0xB;
LABEL_142:
                          v108 = HIBYTE(v89) & 0xF;
                          if ((v89 & 0x2000000000000000) == 0)
                          {
                            v108 = v79 & 0xFFFFFFFFFFFFLL;
                          }

                          v109 = 7;
                          if (((v89 >> 60) & ((v79 & 0x800000000000000) == 0)) != 0)
                          {
                            v109 = 11;
                          }

                          v167 = v109 | (v108 << 16);
                          v110 = 4 * v108;
                          v163 = 4 * v108;
                          v111 = v80;
                          for (i = [v94 caseSensitive]; ; i = objc_msgSend(v94, sel_caseSensitive, v161))
                          {
                            if (v110 < v111 >> 14)
                            {
                              __break(1u);
LABEL_186:
                              __break(1u);
LABEL_187:
                              __break(1u);
                              goto LABEL_188;
                            }

                            v113 = i;
                            if ([v94 locale])
                            {
                              _bridgeAnyObjectToAny(_:)();
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              v172 = 0u;
                              v173 = 0u;
                            }

                            v174[0] = v172;
                            v174[1] = v173;
                            if (*(&v173 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v115 = v170;
                                v114 = v171;
                                goto LABEL_158;
                              }
                            }

                            else
                            {
                              outlined destroy of Any?(v174);
                            }

                            v115 = 0;
                            v114 = 0;
LABEL_158:
                            v116 = v113 ^ 1;
                            *&v174[0] = v165;
                            *(&v174[0] + 1) = v164;
                            *&v172 = v168;
                            *(&v172 + 1) = v89;
                            if (v115 | v89 & 0x1000000000000000)
                            {
                              lazy protocol witness table accessor for type String and conformance String();
                              StringProtocol._ephemeralString.getter();
                              StringProtocol._ephemeralString.getter();
                              v117 = String._bridgeToObjectiveCImpl()();

                              v118 = String._bridgeToObjectiveCImpl()();

                              v119 = StringProtocol._toUTF16Offsets(_:)();
                              v121 = v120 - v119;
                              v122 = __OFSUB__(v120, v119);
                              if (v115)
                              {
                                if (v122)
                                {
                                  goto LABEL_189;
                                }

                                ObjectType = swift_getObjectType();
                                v124 = v114[61](ObjectType, v114);
                                v125 = [v117 rangeOfString:v118 options:v116 range:v119 locale:{v121, v124}];
                                v127 = v126;
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                              }

                              else
                              {
                                if (v122)
                                {
                                  goto LABEL_192;
                                }

                                v125 = [v117 rangeOfString:v118 options:v116 range:{v119, v121}];
                                v127 = v138;
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                              }

                              v94 = v169;
                              v89 = v166;
                              if (v125 == 0x7FFFFFFFFFFFFFFFLL)
                              {
                                swift_unknownObjectRelease();
                                goto LABEL_180;
                              }

                              if (__OFADD__(v125, v127))
                              {
                                goto LABEL_186;
                              }

                              StringProtocol._toUTF16Indices(_:)();
                              v111 = v139;
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              v128 = String.subscript.getter();
                              v130 = v129;
                              v170 = v165;
                              v171 = v164;

                              v131 = Substring.init<A>(_:)();
                              if ((v128 ^ v130) < 0x4000 || !((v131 ^ v132) >> 14))
                              {

LABEL_179:
                                v94 = v169;
LABEL_180:
                                if (v161 >> 14 == v167 >> 14)
                                {

                                  goto LABEL_182;
                                }

                                if (v167 >> 14 >= v161 >> 14)
                                {
                                  v144 = String.subscript.getter();
                                  v146 = v145;
                                  v148 = v147;
                                  v150 = v149;

                                  v151 = [v94 string];
                                  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)(v151);
                                  v153 = v94;
                                  v155 = v154;

                                  *&v174[0] = v152;
                                  *(&v174[0] + 1) = v155;
                                  lazy protocol witness table accessor for type String and conformance String();
                                  v156 = StringProtocol._toUTF16Offset(_:)();

                                  [v153 _deprecated_setScanLocation_];
                                  v157 = MEMORY[0x1865CAE80](v144, v146, v148, v150);
                                  v159 = v158;

                                  v18 = v159;
                                  v17 = v157;
                                  goto LABEL_199;
                                }

LABEL_193:
                                __break(1u);
                              }

                              specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v131, v132, v133, v134, 0, 0, v113 ^ 1, 0, 0, v128, v130);
                              v111 = v135;
                              v137 = v136;

                              if (v137)
                              {
                                goto LABEL_179;
                              }

                              v89 = v166;
                              v94 = v169;
                            }

                            v140 = String.Index.samePosition(in:)();
                            if ((v141 & 1) == 0)
                            {
                              v142 = v140;
                              String.Index.samePosition(in:)();
                              if ((v143 & 1) == 0)
                              {
                                v167 = v142;
                                goto LABEL_180;
                              }
                            }

                            v110 = v163;
                            if (v163 <= v111 >> 14)
                            {
                              goto LABEL_180;
                            }
                          }
                        }

LABEL_129:
                        v80 = v101 | 7;
                        goto LABEL_142;
                      }

LABEL_117:
                      v91 = v98;
                      v93 = v99;

                      goto LABEL_123;
                    }

                    goto LABEL_197;
                  }

                  v80 = v76;
                  v79 = v168;
                  while (1)
                  {
                    v81 = Substring.subscript.getter();
                    v83 = v82;
                    swift_retain_n();
                    LOBYTE(v81) = specialized Sequence.allSatisfy(_:)(v81, v83, v25);

                    if ((v81 & 1) == 0)
                    {
                      break;
                    }

                    v80 = Substring.index(after:)();
                    if ((v80 ^ v78) < 0x4000)
                    {
                      goto LABEL_100;
                    }
                  }

                  v94 = v169;
LABEL_141:
                  v89 = v166;
                  goto LABEL_142;
                }

LABEL_72:
                LOBYTE(v172) = 0;
                *&v174[0] = 0;
                LOBYTE(v170) = 0;
                if (__CFStringIsCF())
                {

                  goto LABEL_76;
                }

                v64 = v59;
                v65 = String.init(_nativeStorage:)();
                if (v66)
                {
                  v61 = v65;
                  v63 = v66;

                  goto LABEL_87;
                }

                if (![v64 length])
                {

                  goto LABEL_76;
                }

                v61 = String.init(_cocoaString:)();
                v63 = v69;
LABEL_86:

                goto LABEL_87;
              }

              v17 = [v59 UTF8String];
              if (v17)
              {
                v67 = String.init(utf8String:)(v17);
                if (v68)
                {
LABEL_81:
                  v61 = v67;
                  v63 = v68;

                  goto LABEL_86;
                }

                __break(1u);
LABEL_80:
                LOWORD(v170) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v67 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v68)
                {
                  [v59 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v63 = *(&v172 + 1);
                  v61 = v172;
                  goto LABEL_86;
                }

                goto LABEL_81;
              }

LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
              goto LABEL_198;
            }

LABEL_38:
            LOBYTE(v172) = 0;
            *&v174[0] = 0;
            LOBYTE(v170) = 0;
            if (__CFStringIsCF())
            {

              goto LABEL_44;
            }

            v44 = v30;
            v45 = String.init(_nativeStorage:)();
            if (v46)
            {
              v32 = v45;
              v34 = v46;

              goto LABEL_66;
            }

            if (![v44 length])
            {

              goto LABEL_44;
            }

            v32 = String.init(_cocoaString:)();
            v34 = v54;
LABEL_65:

            goto LABEL_66;
          }

          v17 = [v30 UTF8String];
          if (v17)
          {
            v50 = String.init(utf8String:)(v17);
            if (v51)
            {
LABEL_51:
              v32 = v50;
              v34 = v51;

              goto LABEL_65;
            }

            __break(1u);
LABEL_50:
            LOWORD(v170) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v50 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v51)
            {
              [v30 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v34 = *(&v172 + 1);
              v32 = v172;
              goto LABEL_65;
            }

            goto LABEL_51;
          }

LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        v35 = [v3 string];
        if (!v35)
        {
          goto LABEL_52;
        }

        v36 = v35;
        v37 = _objc_isTaggedPointer(v35);
        v38 = v36;
        v39 = v38;
        if (!v37)
        {
          goto LABEL_40;
        }

        v40 = _objc_getTaggedPointerTag(v38);
        if (v40)
        {
          if (v40 != 22)
          {
            if (v40 == 2)
            {
              MEMORY[0x1EEE9AC00](v40);
              v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v43 = v42;

LABEL_132:
              *&v174[0] = v41;
              *(&v174[0] + 1) = v43;
              [v169 _deprecated_scanLocation];
              lazy protocol witness table accessor for type String and conformance String();
              v103 = StringProtocol._toUTF16Index(_:)();
              v80 = v103;
              v104 = HIBYTE(v43) & 0xF;
              if ((v43 & 0x2000000000000000) == 0)
              {
                v104 = v41 & 0xFFFFFFFFFFFFLL;
              }

              v105 = 4 * v104;
              if (4 * v104 != v103 >> 14)
              {
                v106 = 0;
                do
                {
                  String.Index.samePosition(in:)();
                  if ((v107 & 1) == 0)
                  {
                    break;
                  }

                  if (__OFADD__(v106, 1))
                  {
                    goto LABEL_190;
                  }

                  *&v174[0] = v41;
                  *(&v174[0] + 1) = v43;
                  if (__OFADD__([v169 _deprecated_scanLocation], v106 + 1))
                  {
                    goto LABEL_191;
                  }

                  v80 = StringProtocol._toUTF16Index(_:)();
                  ++v106;
                }

                while (v105 != v80 >> 14);
              }

              v79 = v12;
              v94 = v169;
              goto LABEL_141;
            }

LABEL_40:
            LOBYTE(v172) = 0;
            *&v174[0] = 0;
            LOBYTE(v170) = 0;
            if (__CFStringIsCF())
            {

LABEL_52:
              v41 = 0;
              v43 = 0xE000000000000000;
              goto LABEL_132;
            }

            v47 = v39;
            v48 = String.init(_nativeStorage:)();
            if (v49)
            {
              v41 = v48;
              v43 = v49;

              goto LABEL_132;
            }

            if (![v47 length])
            {

              goto LABEL_52;
            }

            v41 = String.init(_cocoaString:)();
            v43 = v102;
LABEL_131:

            goto LABEL_132;
          }

          v17 = [v39 UTF8String];
          if (!v17)
          {
LABEL_198:
            __break(1u);
            goto LABEL_199;
          }

          v52 = String.init(utf8String:)(v17);
          if (v53)
          {
LABEL_59:
            v41 = v52;
            v43 = v53;

            goto LABEL_131;
          }

          __break(1u);
        }

        LOWORD(v170) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v52 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v53)
        {
          [v39 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v43 = *(&v172 + 1);
          v41 = v172;
          goto LABEL_131;
        }

        goto LABEL_59;
      }

      v17 = [v10 UTF8String];
      if (!v17)
      {
        __break(1u);
        goto LABEL_195;
      }

      v19 = String.init(utf8String:)(v17);
      v166 = v20;
      if (v20)
      {
LABEL_19:
        v12 = v19;

        goto LABEL_24;
      }

      __break(1u);
    }

    LOWORD(v170) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    v166 = v21;
    if (!v21)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v166 = *(&v172 + 1);
      v12 = v172;
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_182:
  v17 = 0;
  v18 = 0;
LABEL_199:
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSScanner.NumberRepresentation and conformance NSScanner.NumberRepresentation()
{
  result = lazy protocol witness table cache variable for type NSScanner.NumberRepresentation and conformance NSScanner.NumberRepresentation;
  if (!lazy protocol witness table cache variable for type NSScanner.NumberRepresentation and conformance NSScanner.NumberRepresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSScanner.NumberRepresentation and conformance NSScanner.NumberRepresentation);
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OAM017AgreementArgumentI0OAM0m7ConceptI0OAM08ReferentoI0OGGMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AE15AttributeScopesO0dH0V014InflectionRuleJ0OAO017AgreementArgumentJ0OAO0n7ConceptJ0OAO08ReferentpJ0OG_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  outlined init with copy of FloatingPointRoundingRule?(a1, v7, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OAM017AgreementArgumentI0OAM0m7ConceptI0OAM08ReferentoI0OGGMd);
  outlined init with take of IntegerFormatStyle<Int>.Percent(v7, v4, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
  result = outlined init with copy of FloatingPointRoundingRule?(v4, v10, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
  v12 = *(v4 + 26);
  if (v12 == 2)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 25);
    v14 = &v10[*(v8 + 36)];
    v15 = *(*v4 + 16);
    v62 = *(v4 + 184);
    *v14 = v62;
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v15;
    result = outlined destroy of TermOfAddress?(v4, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
    if (*(v10 + 12) != 2)
    {
      v58 = *(v10 + 9);
      if ((v62 ^ v58) < 0x400)
      {
        v16 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }

      v56 = v66 + 7;
      v16 = MEMORY[0x1E69E7CC0];
      v52 = xmmword_1812E0130;
      v51 = xmmword_1812E0140;
      v57 = v10;
      while (1)
      {
        v50 = v16;
        while (1)
        {
          v18 = *(v14 + 1);
          v106[0] = *v14;
          v106[1] = v18;
          v107 = v14[4];
          specialized AttributedString.Runs.AttributesSlice4.index(before:)(v106, v14);
          v19 = *(v14 + 1);
          v104[0] = *v14;
          v104[1] = v19;
          v105 = v14[4];
          *&v62 = *&v104[0];
          v20 = specialized AttributedString.Runs.AttributesSlice4.subscript.getter(&v73, &v75 + 1, &v76 + 1, v77 + 1, v104);
          v21 = *(&v77[1] + 8);
          v22 = *(&v77[3] + 8);
          v23 = v56;
          *(v56 + 2) = *(&v77[2] + 8);
          v23[3] = v22;
          v23[4] = *(&v77[4] + 8);
          *v23 = *(v77 + 8);
          v23[1] = v21;
          *&v87[79] = *&v69[15];
          *&v87[64] = *v69;
          *&v87[48] = v68;
          *&v87[32] = v67;
          *v87 = v66[0];
          *&v87[16] = v66[1];
          v99 = v67;
          v100 = v68;
          *v101 = *v69;
          v97 = v66[0];
          *(&v74 + 1) = v20;
          LOBYTE(v75) = v24 & 1;
          v79 = v74;
          v89 = v74;
          v72 = v24 & 1;
          v71 = v76;
          v70 = v77[0];
          v78 = v73;
          v80 = BYTE4(v74);
          v81 = v20;
          v82 = v24 & 1;
          v83 = *(&v75 + 1);
          v84 = v76;
          v85 = *(&v76 + 1);
          v86 = v77[0];
          v88 = v73;
          v90 = BYTE4(v74);
          v91 = v20;
          v92 = v24 & 1;
          v93 = *(&v75 + 1);
          v94 = v76;
          v95 = *(&v76 + 1);
          v96 = v77[0];
          *&v101[15] = *&v69[15];
          v98 = v66[1];
          outlined copy of AttributedString.AttributeRunBoundaries?(v73, *(&v73 + 1));
          outlined init with copy of FloatingPointRoundingRule?(&v78, &v63, &_s10Foundation14InflectionRuleOSg_SiSgA2ESnyAA16AttributedStringV5IndexVGtMd);
          outlined destroy of TermOfAddress?(&v88, &_s10Foundation14InflectionRuleOSg_SiSgA2ESnyAA16AttributedStringV5IndexVGtMd);
          v102[6] = v77[2];
          v102[7] = v77[3];
          v102[8] = v77[4];
          v103 = *&v77[5];
          v102[2] = v75;
          v102[3] = v76;
          v102[4] = v77[0];
          v102[5] = v77[1];
          v102[0] = v73;
          v102[1] = v74;
          outlined destroy of TermOfAddress?(v102, &_s10Foundation14InflectionRuleOSg_SiSgA2ESnyAA16AttributedStringV5IndexVGtMd);
          v108 = v81;
          v25 = v82;
          v59 = v84;
          v60 = v85;
          v61 = v83;
          v26 = v86;
          v27 = v78;
          v28 = v79 | (v80 << 32);
          if (*(&v78 + 1) == 1)
          {
            outlined copy of AttributedString.AttributeRunBoundaries?(v78, 1);
            outlined consume of AttributedString.AttributeRunBoundaries?(v27, 1);
            outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
LABEL_10:
            v29 = 0;
            goto LABEL_14;
          }

          v63 = v78;
          v64 = v79;
          v65 = BYTE4(v28);
          memset(v66, 0, 21);
          outlined init with copy of FloatingPointRoundingRule?(&v78, &v73, &_s10Foundation14InflectionRuleOSg_SiSgA2ESnyAA16AttributedStringV5IndexVGtMd);
          outlined copy of AttributedString.AttributeRunBoundaries?(v27, *(&v27 + 1));
          v30 = specialized static InflectionRule.== infix(_:_:)(&v63, v66);

          outlined consume of AttributedString.AttributeRunBoundaries?(v27, *(&v27 + 1));
          if (v30)
          {
            break;
          }

          if (!*(&v27 + 1))
          {
            goto LABEL_10;
          }

          v54 = v27 >> 16;
          v31.i64[0] = 0xFFFFFFFFFFLL;
          v31.i64[1] = 0xFFFFFFFFFFLL;
          v32 = vandq_s8(vdupq_n_s64(v28), v31);
          v55 = vshlq_u64(v32, v52);
          v53 = vshlq_u64(v32, v51);
          type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphology);
          LOWORD(v73) = v27;
          BYTE2(v73) = v54;
          *(&v73 + 1) = *(&v27 + 1);
          LOBYTE(v74) = v28;
          v33 = vmovn_s64(v53);
          v34.i64[1] = v55.i64[1];
          *v34.i8 = vmovn_s64(v55);
          v34.i16[1] = v34.i16[2];
          v34.i16[2] = v33.i16[0];
          v34.i16[3] = v33.i16[2];
          *(&v74 + 1) = vmovn_s16(v34).u32[0];

          v35 = &v73;
          NSMorphology.init(_:)(v36, *&v35);
          v29 = v37;
LABEL_14:
          if (v25)
          {
            v38 = 0;
          }

          else
          {
            v38 = v108;
          }

          if (v59)
          {
            v39 = 0;
          }

          else
          {
            v39 = v61;
          }

          if (v26)
          {
            v40 = 0;
          }

          else
          {
            v40 = v60;
          }

          v41 = [objc_allocWithZone(_NSInflectionRuleExplicit) initWithMorphology:v29 agreeWithArgument:v38 agreeWithConcept:v39 referentConcept:v40];

          if (v41)
          {
            goto LABEL_26;
          }

LABEL_7:
          outlined destroy of TermOfAddress?(&v78, &_s10Foundation14InflectionRuleOSg_SiSgA2ESnyAA16AttributedStringV5IndexVGtMd);
          v10 = v57;
          if ((v62 ^ v58) < 0x400)
          {
            v16 = v50;
            goto LABEL_33;
          }
        }

        v17 = [objc_opt_self() automaticRule];
        if (!v17)
        {
          goto LABEL_7;
        }

        v41 = v17;
LABEL_26:
        v10 = v57;
        outlined destroy of TermOfAddress?(&v78, &_s10Foundation14InflectionRuleOSg_SiSgA2ESnyAA16AttributedStringV5IndexVGtMd);
        v16 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
        }

        v43 = v16[2];
        v42 = v16[3];
        if (v43 >= v42 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v16);
        }

        v76 = *&v87[55];
        v77[0] = *&v87[71];
        v44 = *&v87[7];
        v74 = *&v87[23];
        v75 = *&v87[39];
        v73 = *&v87[7];
        v16[2] = v43 + 1;
        v45 = &v16[11 * v43];
        *(v45 + 2) = v44;
        v46 = v77[0];
        v48 = v74;
        v47 = v75;
        *(v45 + 5) = v76;
        *(v45 + 6) = v46;
        *(v45 + 3) = v48;
        *(v45 + 4) = v47;
        v45[14] = v41;
        if ((v62 ^ v58) < 0x400)
        {
LABEL_33:
          outlined destroy of TermOfAddress?(v10, &_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AE15AttributeScopesO0dH0V014InflectionRuleJ0OAO017AgreementArgumentJ0OAO0n7ConceptJ0OAO08ReferentpJ0OG_GMd);
          return v16;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV09ByteCountD0O_Tt0g5@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147CCB0), (v4 & 1) == 0))
  {
    v5 = 12;
    goto LABEL_6;
  }

  outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * result, v8);
  outlined init with copy of Hashable & Sendable(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  result = swift_dynamicCast();
  if (result)
  {
    result = outlined destroy of AttributedString._AttributeValue(v8);
    v5 = v6;
LABEL_6:
    *a2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV014InflectionRuleD0O_Tt0g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (one-time initialization token for name == -1)
  {
    if (!*(result + 16))
    {
LABEL_7:
      *a2 = xmmword_1812187D0;
      *(a2 + 20) = 0;
      *(a2 + 16) = 0;
      return result;
    }
  }

  else
  {
    result = swift_once();
    if (!*(v2 + 16))
    {
      goto LABEL_7;
    }
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name, qword_1EA7B2660);
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  outlined init with copy of AttributedString._AttributeValue(*(v2 + 56) + 72 * result, v9);
  outlined init with copy of Hashable & Sendable(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  if (swift_dynamicCast())
  {
    result = outlined destroy of AttributedString._AttributeValue(v9);
    *a2 = v5;
    *(a2 + 20) = v7;
    *(a2 + 16) = v6;
  }

  else
  {
    result = outlined consume of AttributedString.AttributeRunBoundaries?(0, 1);
    __break(1u);
  }

  return result;
}

double _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV022MarkdownSourcePositionD0O_Tt0g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for name == -1)
  {
    if (!*(a1 + 16))
    {
LABEL_7:
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 89) = 0u;
      *(a2 + 105) = 1;
      return result;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_7;
    }
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute.name, qword_1EA7B25B0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v4, v14);
  outlined init with copy of Hashable & Sendable(v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  if (swift_dynamicCast())
  {
    outlined destroy of AttributedString._AttributeValue(v14);
    *(a2 + 64) = v11;
    *(a2 + 80) = *v12;
    *(a2 + 89) = *&v12[9];
    *a2 = v7;
    *(a2 + 16) = v8;
    result = *&v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 105) = 0;
  }

  else
  {
    result = 0.0;
    __break(1u);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV025AssumedFallbackInflectionD0O_Tt0g5Tm@<X0>(uint64_t result@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = result;
  if (*a2 == -1)
  {
    if (!*(result + 16))
    {
LABEL_7:
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 13) = 0;
      return result;
    }
  }

  else
  {
    v8 = a4;
    v9 = a3;
    result = swift_once();
    a3 = v9;
    a4 = v8;
    if (!*(v5 + 16))
    {
      goto LABEL_7;
    }
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(*a4, *a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * result, v14);
  outlined init with copy of Hashable & Sendable(v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  if (swift_dynamicCast())
  {
    result = outlined destroy of AttributedString._AttributeValue(v14);
    *a5 = v10;
    *(a5 + 20) = v12;
    *(a5 + 16) = v11;
  }

  else
  {

    __break(1u);
  }

  return result;
}

unint64_t _s10Foundation16AttributedStringV4GutsC15getUniformValue2in3keyAC010_AttributeG0VSgSny19CollectionsInternal03BigC0V5IndexVG_xmtAA0bC3KeyRzlFAA0J6ScopesO0A10AttributesV09Localizedc8ArgumentQ0V0r7NumericsJ0O_Tt1g5@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v156 = 0;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v123 = *result;
  v4 = v2[9];
  v5 = v3[11];
  if (v4)
  {
    v6 = v3[11];
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= (v123 >> 11))
  {
    v129 = v123 >> 11;
    v122 = a2;
    v7 = *(result + 32);
    v8 = v3[10];
    v9 = v3[12];
    v124 = v3;
    if (!v4 || ((v11 = (v4 + 16), LODWORD(v10) = *(v4 + 16), v129 < v5) ? (v12 = v10 == 0) : (v12 = 1), v12))
    {
      swift_unknownObjectRetain();

      result = specialized Rope._endPath.getter(v4);
      v135 = result;
      v13 = 0;
      v14 = 0;
      v15 = v129;
      v134 = 0;
      if (!v4)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v136 = v7;
      v106 = *(v4 + 18);
      swift_unknownObjectRetain_n();

      v132 = v8;
      if (!v106)
      {
        v18 = 0;
        v15 = v129;
        v32 = v129;
        result = v4;
        goto LABEL_164;
      }

      v133 = v9;
      v32 = v129;
      v18 = v106;
      v107 = v4;
      do
      {
        v108 = *v11;
        if (*v11)
        {
          v109 = 0;
          v110 = (v107 + 40);
          while (1)
          {
            v111 = *v110;
            v110 += 3;
            v112 = v32 - v111;
            if (__OFSUB__(v32, v111))
            {
              goto LABEL_186;
            }

            if (__OFADD__(v112, 1))
            {
              break;
            }

            if (v112 + 1 < 1)
            {
              v108 = v109;
              goto LABEL_149;
            }

            ++v109;
            v32 = v112;
            if (v108 == v109)
            {
              goto LABEL_158;
            }
          }

LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
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
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

        v112 = v32;
LABEL_158:
        if (v112)
        {
          goto LABEL_203;
        }

        v32 = 0;
LABEL_149:
        v18 = (v108 << ((4 * v106 + 8) & 0x3C)) | ((-15 << ((4 * v106 + 8) & 0x3C)) - 1) & v18;
        v106 = *(v107 + 24 + 24 * v108);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        result = v106;
        v11 = (v106 + 16);
        LODWORD(v106) = *(v106 + 18);
        v107 = result;
      }

      while (v106);
      LODWORD(v10) = *v11;
      if (*v11)
      {
        v15 = v129;
        v9 = v133;
LABEL_164:
        v116 = 0;
        v117 = 24;
        v14 = v32;
        v10 = v10;
        while (1)
        {
          v118 = *(result + v117);
          v119 = v14 - v118;
          if (__OFSUB__(v14, v118))
          {
            goto LABEL_201;
          }

          if (__OFADD__(v119, 1))
          {
            goto LABEL_202;
          }

          if (v119 + 1 < 1)
          {
            break;
          }

          ++v116;
          v117 += 24;
          v14 -= v118;
          if (v10 == v116)
          {
            if (!v119)
            {
              goto LABEL_170;
            }

LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }
        }

        v10 = v116;
      }

      else
      {
LABEL_182:
        v10 = 0;
        v15 = v129;
        v9 = v133;
        if (v32)
        {
          goto LABEL_183;
        }

LABEL_170:
        v14 = 0;
      }

      v120 = result;
      result = swift_unknownObjectRelease();
      v13 = v120;
      v135 = v18 & 0xFFFFFFFFFFFFF0FFLL | (v10 << 8);
      v3 = v124;
      v7 = v136;
      v8 = v132;
      v134 = v13;
      if (!v4)
      {
LABEL_173:
        v132 = 0;
        v16 = v15 - v14;
        if (!__OFSUB__(v15, v14))
        {
LABEL_13:
          v17 = v7 >> 11;
          v125 = "izedDateArgumentAttribute";
          v131 = v7 >> 11;
          while (1)
          {
            v18 = v3[9];
            v19 = v134;
            v20 = v135;
            v136 = v16;
            if (v15 == v17)
            {
              v133 = v9;
              if (v18)
              {
                v21 = v3[11];
                if (v21 < v15)
                {
                  goto LABEL_208;
                }

                v4 = v3[10];
                v22 = v3[12];
                v23 = v15;
                v25 = (v18 + 16);
                v24 = *(v18 + 16);
                v26 = *(v18 + 18);
                if (*(v18 + 16))
                {
                  v27 = v23 < v21;
                }

                else
                {
                  v27 = 0;
                }

                v130 = v3[10];
                v128 = v22;
                if (v27)
                {
                  result = swift_unknownObjectRetain_n();
                  if (!v26)
                  {
                    v32 = 0;
                    v15 = v129;
                    v31 = v129;
                    v4 = v18;
LABEL_46:
                    v39 = 0;
                    v40 = 24;
                    v29 = v31;
                    v41 = v24;
                    v17 = v131;
                    while (1)
                    {
                      v42 = *(v4 + v40);
                      v43 = v29 - v42;
                      if (__OFSUB__(v29, v42))
                      {
                        goto LABEL_188;
                      }

                      if (__OFADD__(v43, 1))
                      {
                        goto LABEL_189;
                      }

                      if (v43 + 1 < 1)
                      {
                        goto LABEL_55;
                      }

                      ++v39;
                      v40 += 24;
                      v29 -= v42;
                      if (v41 == v39)
                      {
                        v39 = v41;
                        if (!v43)
                        {
                          goto LABEL_54;
                        }

                        goto LABEL_214;
                      }
                    }
                  }

                  v31 = v129;
                  v32 = v26;
                  v33 = v18;
                  do
                  {
                    v34 = *v25;
                    if (*v25)
                    {
                      v35 = 0;
                      v36 = (v33 + 40);
                      while (1)
                      {
                        v37 = *v36;
                        v36 += 3;
                        v38 = v31 - v37;
                        if (__OFSUB__(v31, v37))
                        {
                          break;
                        }

                        if (__OFADD__(v38, 1))
                        {
                          goto LABEL_181;
                        }

                        if (v38 + 1 < 1)
                        {
                          v34 = v35;
                          goto LABEL_32;
                        }

                        ++v35;
                        v31 = v38;
                        if (v34 == v35)
                        {
                          goto LABEL_41;
                        }
                      }

                      __break(1u);
LABEL_181:
                      __break(1u);
                      goto LABEL_182;
                    }

                    v38 = v31;
LABEL_41:
                    if (v38)
                    {
                      goto LABEL_190;
                    }

                    v31 = 0;
LABEL_32:
                    v32 = (v34 << ((4 * v26 + 8) & 0x3C)) | ((-15 << ((4 * v26 + 8) & 0x3C)) - 1) & v32;
                    v4 = *(v33 + 24 + 24 * v34);
                    swift_unknownObjectRetain();
                    result = swift_unknownObjectRelease();
                    v25 = (v4 + 16);
                    LOBYTE(v26) = *(v4 + 18);
                    v33 = v4;
                  }

                  while (v26);
                  LODWORD(v24) = *v25;
                  if (*v25)
                  {
                    v15 = v129;
                    goto LABEL_46;
                  }

                  v39 = 0;
                  v15 = v129;
                  v17 = v131;
                  if (!v31)
                  {
LABEL_54:
                    v29 = 0;
LABEL_55:
                    swift_unknownObjectRelease();
                    v28 = v32 & 0xFFFFFFFFFFFFF0FFLL | (v39 << 8);
                    v3 = v124;
                    v20 = v135;
                    goto LABEL_56;
                  }

                  goto LABEL_214;
                }

                v28 = ((-15 << ((4 * v26 + 8) & 0x3C)) - 1) & v26 | (v24 << ((4 * v26 + 8) & 0x3C));
                swift_unknownObjectRetain();
                v29 = 0;
                v4 = 0;
                v15 = v129;
                v17 = v131;
LABEL_56:
                specialized Rope._Node.distanceFromStart<A>(to:in:)(v128, v28, v4, v18, v130);
                result = swift_unknownObjectRelease();
                v19 = v134;
                v16 = v136;
              }

              else
              {
                if (v123 >= 0x800)
                {
                  goto LABEL_210;
                }

                v29 = 0;
              }

              v30 = v15 - v29;
              if (__OFSUB__(v15, v29))
              {
                goto LABEL_204;
              }

              v9 = v133;
            }

            else if (v18)
            {
              v30 = v3[11];
            }

            else
            {
              v30 = 0;
            }

            if (v16 == v30)
            {

              v113 = v155;
              v114 = v122;
              *(v122 + 32) = v154;
              *(v114 + 48) = v113;
              *(v114 + 64) = v156;
              v115 = v153;
              *v114 = v152;
              *(v114 + 16) = v115;
              return result;
            }

            if (v9 != v3[12])
            {
              goto LABEL_191;
            }

            if (v19)
            {
              v44 = (v19 + 24 * ((v20 >> ((4 * *(v19 + 18) + 8) & 0x3C)) & 0xF));
              v45 = v44[4];
              v46 = v44[5];
              v47 = v44[3];
              v48 = v16 + v47;
              v49 = __OFADD__(v16, v47);

              v130 = v46;

              if (v49)
              {
                goto LABEL_199;
              }

              v50 = v15;
              if (v16 >= v15)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v57 = v3[9];
              swift_unknownObjectRetain();
              specialized Rope._Node.subscript.getter(v20, v57);
              v45 = v58;
              v60 = v59;
              result = swift_unknownObjectRelease();
              if (v9 != v3[12])
              {
                goto LABEL_205;
              }

              v130 = v60;
              v61 = v3[9];
              swift_unknownObjectRetain();
              v62 = specialized Rope._Node.subscript.getter(v20, v61);
              swift_unknownObjectRelease();

              v48 = v136 + v62;
              if (__OFADD__(v136, v62))
              {
                goto LABEL_206;
              }

              v16 = v136;
              v50 = v15;
              v17 = v131;
              if (v136 >= v15)
              {
LABEL_67:
                if (v17 >= v16)
                {
                  v50 = v16;
                }

                else
                {
                  v50 = v17;
                }
              }
            }

            if (v48 <= v15)
            {
              v51 = v15;
            }

            else
            {
              v51 = v48;
            }

            if (v17 < v48)
            {
              v51 = v17;
            }

            v52 = v135;
            if (v50 == v51)
            {
              goto LABEL_192;
            }

            v53 = v3[9];
            v54 = v3[12];
            *&v147 = v9;
            *(&v147 + 1) = v135;
            *&v148 = v134;
            if (__OFADD__(v132, 1))
            {
              goto LABEL_194;
            }

            if (v9 != v54)
            {
              goto LABEL_195;
            }

            ++v132;
            if (v134)
            {
              v55 = *(v134 + 24 * ((v135 >> ((4 * *(v134 + 18) + 8) & 0x3C)) & 0xF) + 24);
              v56 = __OFADD__(v136, v55);
              v136 += v55;
              if (v56)
              {
                goto LABEL_200;
              }

              if (!v53)
              {
                goto LABEL_193;
              }

              result = swift_unknownObjectRetain();
            }

            else
            {
              v63 = v9;
              swift_unknownObjectRetain();
              v64 = specialized Rope._Node.subscript.getter(v52, v53);

              v56 = __OFADD__(v136, v64);
              v136 += v64;
              if (v56)
              {
                goto LABEL_207;
              }

              v9 = v63;
              v52 = v135;
              if (!v53)
              {
                goto LABEL_193;
              }
            }

            if (v52 >= (((-15 << ((4 * *(v53 + 18) + 8) & 0x3C)) - 1) & *(v53 + 18) | (*(v53 + 16) << ((4 * *(v53 + 18) + 8) & 0x3C))))
            {
              goto LABEL_193;
            }

            if (v134 && (v65 = (4 * *(v134 + 18) + 8) & 0x3C, v66 = ((v135 >> v65) & 0xF) + 1, v66 < *(v134 + 16)))
            {
              result = swift_unknownObjectRelease();
              v67 = (v66 << v65) | ((-15 << v65) - 1) & v135;
            }

            else if (specialized Rope._Node.formSuccessor(of:)(&v147, v53))
            {
              result = swift_unknownObjectRelease();
              v67 = *(&v147 + 1);
            }

            else
            {
              v68 = *(v53 + 18);
              v69 = *(v53 + 16);
              result = swift_unknownObjectRelease();
              v67 = ((-15 << ((4 * v68 + 8) & 0x3C)) - 1) & v68 | (v69 << ((4 * v68 + 8) & 0x3C));
              *&v147 = v9;
              *(&v147 + 1) = v67;
              *&v148 = 0;
            }

            v17 = v131;
            v16 = v136;
            if (v136 < v131)
            {
              v135 = v67;
              v9 = v147;
              v134 = v148;
              goto LABEL_121;
            }

            v70 = v3[9];
            if (v15 != v131)
            {
              v9 = v3[12];
              if (v70)
              {
                v16 = v3[11];
                v132 = v3[10];
                v85 = ((-15 << ((4 * *(v70 + 18) + 8) & 0x3C)) - 1) & *(v70 + 18) | (*(v70 + 16) << ((4 * *(v70 + 18) + 8) & 0x3C));
                v134 = 0;
                v135 = v85;
              }

              else
              {
                v134 = 0;
                v135 = 0;
                v132 = 0;
                v16 = 0;
              }

LABEL_121:
              if (!*(v45 + 16))
              {
                goto LABEL_145;
              }

              goto LABEL_140;
            }

            v133 = v3[12];
            if (v70)
            {
              v71 = v3[11];
              if (v71 < v15)
              {
                goto LABEL_212;
              }

              v72 = v3[10];
              v74 = (v70 + 16);
              v73 = *(v70 + 16);
              v75 = *(v70 + 18);
              if (*(v70 + 16) && v129 < v71)
              {
                v136 = v72;
                result = swift_unknownObjectRetain_n();
                if (!v75)
                {
                  v77 = 0;
                  v15 = v129;
                  v76 = v129;
                  result = v70;
LABEL_127:
                  v89 = 0;
                  v90 = 24;
                  v86 = v76;
                  v91 = v73;
                  v17 = v131;
                  while (1)
                  {
                    v92 = *(result + v90);
                    v93 = v86 - v92;
                    if (__OFSUB__(v86, v92))
                    {
                      goto LABEL_196;
                    }

                    if (__OFADD__(v93, 1))
                    {
                      goto LABEL_197;
                    }

                    if (v93 + 1 < 1)
                    {
                      goto LABEL_136;
                    }

                    ++v89;
                    v90 += 24;
                    v86 -= v92;
                    if (v91 == v89)
                    {
                      v89 = v91;
                      if (!v93)
                      {
                        goto LABEL_135;
                      }

                      goto LABEL_215;
                    }
                  }
                }

                v76 = v129;
                v77 = v75;
                v78 = v70;
                do
                {
                  v79 = *v74;
                  if (*v74)
                  {
                    v81 = 0;
                    v82 = (v78 + 40);
                    while (1)
                    {
                      v83 = *v82;
                      v82 += 3;
                      v84 = v76 - v83;
                      if (__OFSUB__(v76, v83))
                      {
                        goto LABEL_184;
                      }

                      if (__OFADD__(v84, 1))
                      {
                        goto LABEL_185;
                      }

                      if (v84 + 1 < 1)
                      {
                        v79 = v81;
                        goto LABEL_105;
                      }

                      ++v81;
                      v76 = v84;
                      if (v79 == v81)
                      {
                        goto LABEL_114;
                      }
                    }
                  }

                  v84 = v76;
LABEL_114:
                  if (v84)
                  {
                    goto LABEL_198;
                  }

                  v76 = 0;
LABEL_105:
                  v77 = (v79 << ((4 * v75 + 8) & 0x3C)) | ((-15 << ((4 * v75 + 8) & 0x3C)) - 1) & v77;
                  v80 = *(v78 + 24 + 24 * v79);
                  swift_unknownObjectRetain();
                  swift_unknownObjectRelease();
                  result = v80;
                  v74 = (v80 + 16);
                  LOBYTE(v75) = *(result + 18);
                  v78 = result;
                }

                while (v75);
                LODWORD(v73) = *v74;
                if (*v74)
                {
                  v15 = v129;
                  goto LABEL_127;
                }

                v89 = 0;
                v15 = v129;
                v17 = v131;
                if (!v76)
                {
LABEL_135:
                  v86 = 0;
LABEL_136:
                  v94 = result;
                  swift_unknownObjectRelease();
                  v88 = v94;
                  v87 = v77 & 0xFFFFFFFFFFFFF0FFLL | (v89 << 8);
                  v72 = v136;
                  goto LABEL_137;
                }

                goto LABEL_215;
              }

              v87 = ((-15 << ((4 * v75 + 8) & 0x3C)) - 1) & v75 | (v73 << ((4 * v75 + 8) & 0x3C));
              swift_unknownObjectRetain();
              v86 = 0;
              v88 = 0;
              v15 = v129;
              v17 = v131;
LABEL_137:
              v134 = v88;
              v135 = v87;
              v132 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v133, v87, v88, v70, v72);
              result = swift_unknownObjectRelease();
              v3 = v124;
            }

            else
            {
              if (v123 >= 0x800)
              {
                goto LABEL_213;
              }

              v86 = 0;
              v134 = 0;
              v135 = 0;
              v132 = 0;
            }

            v56 = __OFSUB__(v15, v86);
            v16 = v15 - v86;
            if (v56)
            {
              goto LABEL_209;
            }

            v9 = v133;
            if (!*(v45 + 16))
            {
LABEL_145:

              outlined destroy of TermOfAddress?(&v152, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              goto LABEL_178;
            }

LABEL_140:
            v95 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, v125 | 0x8000000000000000);
            if ((v96 & 1) == 0)
            {
              goto LABEL_145;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v45 + 56) + 72 * v95, &v142);

            v149 = v144;
            v150 = v145;
            v151 = v146;
            v147 = v142;
            v148 = v143;
            outlined init with copy of FloatingPointRoundingRule?(&v152, &v137, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            if (*(&v138 + 1))
            {
              v136 = v16;
              v133 = v9;
              v144 = v139;
              v145 = v140;
              v146 = v141;
              v142 = v137;
              v143 = v138;
              v4 = *(&v148 + 1);
              v127 = v149;
              v126 = __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
              v97 = __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
              v130 = &v122;
              v14 = *(v4 - 8);
              MEMORY[0x1EEE9AC00](v97);
              v99 = &v122 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
              v128 = &v122;
              v101 = MEMORY[0x1EEE9AC00](v100);
              (*(v103 + 16))(&v122 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0), v101);
              v8 = type metadata accessor for Optional();
              v15 = *(v8 - 8);
              MEMORY[0x1EEE9AC00](v8);
              v9 = &v122 - v104;
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_176;
              }

              (*(v14 + 56))(v9, 0, 1, v4);
              (*(v14 + 32))(v99, v9, v4);
              v105 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v14 + 8))(v99, v4);
              outlined destroy of TermOfAddress?(&v152, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              result = outlined destroy of AttributedString._AttributeValue(&v142);
              v3 = v124;
              v15 = v129;
              v9 = v133;
              v17 = v131;
              v16 = v136;
              if ((v105 & 1) == 0)
              {
                goto LABEL_177;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(&v152, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              result = outlined destroy of TermOfAddress?(&v137, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v154 = v149;
            v155 = v150;
            v156 = v151;
            v152 = v147;
            v153 = v148;
          }
        }

LABEL_175:
        __break(1u);
LABEL_176:
        outlined destroy of TermOfAddress?(&v152, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        (*(v14 + 56))(v9, 1, 1, v4);
        (*(v15 + 8))(v9, v8);
        outlined destroy of AttributedString._AttributeValue(&v142);
LABEL_177:
        outlined destroy of AttributedString._AttributeValue(&v147);
LABEL_178:

        v121 = v122;
        *(v122 + 64) = 0;
        v121[2] = 0u;
        v121[3] = 0u;
        *v121 = 0u;
        v121[1] = 0u;
        return result;
      }
    }

    v132 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v135, v13, v4, v8);
    result = swift_unknownObjectRelease();
    v16 = v15 - v14;
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_13;
    }

    goto LABEL_175;
  }

LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
  return result;
}