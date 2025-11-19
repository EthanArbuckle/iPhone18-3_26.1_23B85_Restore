uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance NavigationPath.CodableCollectionProxy(__int128 *a1, uint64_t *a2)
{
  v2 = *a2;
  outlined init with take of Decodable & Encodable & Hashable(a1, v4);
  specialized NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(v4);
}

uint64_t specialized RangeReplaceableCollection.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v7 = *(v5 + 8 * a1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_13:
  v8 = MEMORY[0x18D00E9C0](a1, v5);
  v7 = v8;
LABEL_7:
  (*(*v7 + 120))(&v10, v8);

  if (v11)
  {
    result = outlined init with take of Decodable & Encodable & Hashable(&v10, a2);
    v9 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      if (v9 >= a1)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(a1, v9, MEMORY[0x1E69E7CC0], specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  if (!(*v1 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v6 = MEMORY[0x18D00E9C0](a1, v3);
    v5 = v6;
    goto LABEL_7;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v3 + 8 * a1 + 32);

LABEL_7:
  (*(*v5 + 112))(v6);

  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= a1)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(a1, v7, MEMORY[0x1E69E7CC0], specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

LABEL_16:
  __break(1u);
  return result;
}

double protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance NavigationPath.CodableCollectionProxy@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance NavigationPath.CodableCollectionProxy@<X0>(uint64_t a1@<X8>)
{
  if (!(*v1 >> 62))
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = specialized Collection.first.getter(*v1, &v4);
  if (v5)
  {
    outlined init with take of Decodable & Encodable & Hashable(&v4, a1);
    return specialized RangeReplaceableCollection.removeFirst(_:)(1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1)
{
  v3 = *v1;
  if (a1)
  {
    if (v3 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (v6 < 0)
      {
        __break(1u);
      }

      v4 = v6;
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return specialized Array.replaceSubrange<A>(_:with:)(0, v4, MEMORY[0x1E69E7CC0], specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  else
  {

    *v1 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance NavigationPath.CodableCollectionProxy()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t NavigationPath.CodableCollectionProxy.endIndex.getter()
{
  if (*v0 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

Swift::Int __swiftcall NavigationPath.CollectionProxy.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t NavigationPath.CollectionProxy.subscript.getter(unint64_t result)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0]();
    v3 = v4;
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v2 + 8 * result + 32);

LABEL_5:
  (*(*v3 + 112))(v4);
}

uint64_t NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v17 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v17 - v12;
  v23 = MEMORY[0x1E69E7CC0];
  (*(v6 + 16))(v8, a3, a4, v11);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v22)
    {
      break;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v21, v19);
    v14 = v20;
    v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
    specialized append #1 <A><A1>(_:) in NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v15, &v23, a4, v14);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  (*(v10 + 8))(v13, AssociatedTypeWitness);
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(v17, v18, v23, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized append #1 <A><A1>(_:) in NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemBox();
  (*(v7 + 16))(v9, a1, a4);
  ItemBox.__allocating_init(_:)(v9);
  v10 = swift_beginAccess();
  MEMORY[0x18D00CC30](v10);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v17 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v17 - v12;
  v23 = MEMORY[0x1E69E7CC0];
  (*(v6 + 16))(v8, a3, a4, v11);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v22)
    {
      break;
    }

    outlined init with take of Decodable & Encodable & Hashable(&v21, v19);
    v14 = v20;
    v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
    specialized append #1 <A><A1>(_:) in NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(v15, &v23, a4, v14);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  (*(v10 + 8))(v13, AssociatedTypeWitness);
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(v17, v18, v23, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized append #1 <A><A1>(_:) in NavigationPath.CodableCollectionProxy.replaceSubrange<A>(_:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  type metadata accessor for CodableItemBox();
  (*(v7 + 16))(v9, a1, a4);
  CodableItemBox.__allocating_init(_:)(v9);
  v14 = swift_beginAccess();
  MEMORY[0x18D00CC30](v14);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void (*protocol witness for Collection.subscript.read in conformance NavigationPath.CollectionProxy(uint64_t *a1, void (**a2)(uint64_t *a1)))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  result = *a2;
  v7 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x18D00E9C0](result);
    v8 = v9;
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 8 * result + 32);

LABEL_8:
    (*(*v8 + 112))(v9);

    return protocol witness for Collection.subscript.read in conformance NavigationPath.CodableCollectionProxy;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance NavigationPath.CodableCollectionProxy@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = *v2;
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = result;
    result = __CocoaSet.count.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v7 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v7 = result;
      a2 = v2;
      result = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    a2[1] = v4;
    a2[2] = result;
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance NavigationPath.CodableCollectionProxy@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  if (v2 >> 62)
  {
    v5 = a1;
    v6 = __CocoaSet.count.getter();
    a1 = v5;
    v3 = v6;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1[2] = v3;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance NavigationPath.CodableCollectionProxy()
{
  if (*v0 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance NavigationPath.CodableCollectionProxy@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance NavigationPath.CodableCollectionProxy(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance NavigationPath.CodableCollectionProxy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, uint64_t, uint64_t, uint64_t))
{
  a7(*a1, a1[1], a2, a3, a4);
  v9 = *(*(a3 - 8) + 8);

  return v9(a2, a3);
}

__int128 *protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance NavigationPath.CollectionProxy@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    result = __swift_destroy_boxed_opaque_existential_1(result);
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *&v5[0] = a2;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(result, v5 + 8);
    result = specialized RangeReplaceableCollection.append<A>(contentsOf:)(v5);
    v4 = v6;
LABEL_5:
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance NavigationPath.CollectionProxy(__int128 *a1)
{
  if (*v1 >> 62)
  {
    v4 = a1;
    v2 = __CocoaSet.count.getter();
    a1 = v4;
  }

  else
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v5);
  specialized NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v5);
  return outlined destroy of (CodingUserInfoKey, Sendable)(v5, type metadata accessor for CollectionOfOne<Hashable>);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance NavigationPath.CollectionProxy(__int128 *a1, uint64_t *a2)
{
  v2 = *a2;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v4);
  specialized NavigationPath.CollectionProxy.replaceSubrange<A>(_:with:)(v2, v2, v4);
  return outlined destroy of (CodingUserInfoKey, Sendable)(v4, type metadata accessor for CollectionOfOne<Hashable>);
}

uint64_t protocol witness for Collection.count.getter in conformance NavigationPath.CodableCollectionProxy()
{
  if (!(*v0 >> 62))
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = __CocoaSet.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance NavigationPath.CollectionProxy()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t ItemBox.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v4 = *(*v1 + 192);
  a1[3] = v4;
  a1[4] = *(v3 + 200);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t ItemBox.isCodable.getter()
{
  _StringGuts.grow(_:)(112);
  MEMORY[0x18D00C9B0](0x100000000000005BLL, 0x800000018CD45CE0);
  swift_getMetatypeMetadata();
  v0 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0x1000000000000013, 0x800000018CD45D40);
  MEMORY[0x18D009810](0, 0xE000000000000000);

  return 0;
}

uint64_t ItemBox.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 192);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 208)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t ItemBox.equals(_:)(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 208), v2);

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ItemBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));

  return swift_deallocClassInstance();
}

uint64_t CodableItemBox.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v4 = *(*v1 + 192);
  a1[3] = v4;
  a1[4] = *(v3 + 216);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t CodableItemBox.codableValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 192);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v4 + 200);
  *(a1 + 48) = *(v3 + 216);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v6 - 8) + 16);

  return v8(boxed_opaque_existential_1, &v1[v5], v6);
}

char *CodableItemBox.jsonEncoding.getter()
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v3 = v8;
      outlined consume of Data._Representation(v6, v7);

      return v3;
    }

    lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v6, v7);
  }

  return v3;
}

uint64_t CodableItemBox.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 192);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 224)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t CodableItemBox.equals(_:)(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 224), v2);

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for DecodedItemBox();
    if (swift_dynamicCastClass())
    {

      v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t CodableItemBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 224));

  return swift_deallocClassInstance();
}

uint64_t DecodedItemBox.value.getter(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v4 + 216), v2, v3);
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for Hashable);
  return swift_dynamicCast();
}

uint64_t DecodedItemBox.codableValue.getter(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v4 + 216), v2, v3);
  type metadata accessor for Decodable & Encodable & Hashable();
  return swift_dynamicCast();
}

char *DecodedItemBox.jsonEncoding.getter()
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v3 = v8;
      outlined consume of Data._Representation(v6, v7);

      return v3;
    }

    lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v6, v7);
  }

  return v3;
}

uint64_t DecodedItemBox.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 192);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 216)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t DecodedItemBox.equals(_:)(_BYTE *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15[-v6];
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v3 + 216);
    v10 = (*(v5 + 16))(v7, v8 + *(*v8 + 216), v4);
    MEMORY[0x1EEE9AC00](v10);
    *&v15[-32] = v4;
    *&v15[-24] = v7;
    *&v15[-16] = 3;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v1[v9], partial apply for closure #1 in compareValues<A>(_:_:options:), &v15[-48], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v11);

    v12 = v15[15];
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if ((v1[16] & 1) == 0)
    {
      a1[16] = 1;
      v14 = (*(*a1 + 160))(v1);
      a1[16] = 0;
      return v14 & 1;
    }

    return 0;
  }

  return v12;
}

uint64_t DecodedItemBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 216));

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for navigationPathTypesByTag()
{
  type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.navigationPathTypesByTag);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.navigationPathTypesByTag);
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

uint64_t CodableItemBox.description.getter()
{
  _StringGuts.grow(_:)(18);
  MEMORY[0x18D00C9B0](0x49656C6261646F43, 0xEF28786F426D6574);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t ItemBox.description.getter()
{
  MEMORY[0x18D00C9B0](0x28786F426D657449, 0xE800000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t DecodedItemBox.description.getter()
{
  _StringGuts.grow(_:)(18);
  MEMORY[0x18D00C9B0](0x496465646F636544, 0xEF28786F426D6574);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v6;
  v10 = v9 + 32 + 24 * result;
  if (v8)
  {
    v11 = *(v9 + 16);
    v12 = __OFSUB__(v11, a2);
    v13 = v11 - a2;
    if (!v12)
    {
      result = v10 + 24 * a3;
      v14 = (v9 + 32 + 24 * a2);
      if (result != v14 || result >= v14 + 24 * v13)
      {
        v16 = a3;
        v17 = a6;
        v18 = a5;
        v19 = a4;
        result = memmove(result, v14, 24 * v13);
        a4 = v19;
        a5 = v18;
        a3 = v16;
        a6 = v17;
      }

      v20 = *(v9 + 16);
      v12 = __OFADD__(v20, v8);
      v21 = v20 + v8;
      if (!v12)
      {
        *(v9 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v10 = a4;
    *(v10 + 8) = a5;
    *(v10 + 16) = a6 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2 == a3)
  {
    if (result)
    {
      a6(a5);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for NSObject(0, a5);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1, a4);
  v6 = AssociatedObject[2];

  return a2(AssociatedObject + 4, v6);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, MEMORY[0x1E69E7CC0], v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for ForEach<>.PreferenceTransform.Item;
  }

  __break(1u);
  return result;
}

_BYTE *partial apply for implicit closure #1 in NavigationPath.init<A>(_:)(uint64_t a1)
{
  return implicit closure #1 in NavigationPath.init<A>(_:)(a1);
}

{
  return implicit closure #1 in NavigationPath.init<A>(_:)(a1, v1[2], v1[3], v1[4], v1[5], v1[6]);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned ItemBox<A.Sequence.Element>)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.Sequence.Element) -> (@owned CodableItemBox<A.Sequence.Element>)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result;
  return result;
}

uint64_t specialized static NavigationPath.CodableRepresentation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  if (v6 != *(v4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = (v2 + 56);
    v8 = (v4 + 56);
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v8 - 1);
      v12 = *v8;
      v13 = *(v7 - 3) == *(v8 - 3) && *(v7 - 2) == *(v8 - 2);
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v14 = v9 == v11 && v10 == v12;
      if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v7 += 4;
      v8 += 4;
    }

    while (--v6);
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(v3, v5);
}

unint64_t lazy protocol witness table accessor for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError()
{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxyError and conformance NavigationPath.CollectionProxyError);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NavigationPath_ItemBoxBase();
  v13 = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    v17 = v16 - v7;
    if (!__OFSUB__(v16, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v21 = __CocoaSet.count.getter();
  v17 = v21 - v7;
  if (__OFSUB__(v21, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v18 = (v6 + 8 * v8);
  v19 = &v9[v7];
  if (v18 != v19 || v18 >= &v19[8 * v17])
  {
    memmove(v18, v19, 8 * v17);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  v14 = v22;
  v22[2] = v8;
  v22[3] = v6;
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), v14, specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
  v13 = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    v17 = v16 - v7;
    if (!__OFSUB__(v16, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v21 = __CocoaSet.count.getter();
  v17 = v21 - v7;
  if (__OFSUB__(v21, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v18 = (v6 + 8 * v8);
  v19 = &v9[v7];
  if (v18 != v19 || v18 >= &v19[8 * v17])
  {
    memmove(v18, v19, 8 * v17);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  v14 = v22;
  v22[2] = v8;
  v22[3] = v6;
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), v14, specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy()
{
  result = lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<NavigationPath.CodableCollectionProxy> and conformance DefaultIndices<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, a2, lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy, &type metadata for NavigationPath.CodableCollectionProxy, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for Slice<NavigationPath.CodableCollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy, &type metadata for NavigationPath.CodableCollectionProxy, MEMORY[0x1E69E74D0]);
    lazy protocol witness table accessor for type NavigationPath.CodableCollectionProxy and conformance NavigationPath.CodableCollectionProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<NavigationPath.CodableCollectionProxy> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy()
{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy;
  if (!lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for DefaultIndices<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E5EA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<NavigationPath.CollectionProxy> and conformance DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for Slice<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E74D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for Slice<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E74D0]);
    lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<NavigationPath.CollectionProxy> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>)
  {
    type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(255, &lazy cache variable for type metadata for IndexingIterator<NavigationPath.CollectionProxy>, lazy protocol witness table accessor for type NavigationPath.CollectionProxy and conformance NavigationPath.CollectionProxy, &type metadata for NavigationPath.CollectionProxy, MEMORY[0x1E69E6CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexingIterator<NavigationPath.CollectionProxy> and conformance IndexingIterator<A>);
  }

  return result;
}

void type metadata accessor for DefaultIndices<NavigationPath.CodableCollectionProxy>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t assignWithCopy for NavigationPath(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of NavigationPath.Representation(v8, v9, v10, v11);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for NavigationPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of NavigationPath.Representation(v6, v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void *assignWithCopy for NavigationPath.CodableRepresentation(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for NavigationPath.CodableRepresentation(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t type metadata completion function for ItemBox()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for CodableItemBox()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for DecodedItemBox()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationPath.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for NavigationPath.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of NavigationPath.Representation(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of NavigationPath.Representation(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for NavigationPath.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  outlined consume of NavigationPath.Representation(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationPath.Representation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for NavigationPath.Representation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t outlined consume of NavigationPath.Error(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationPath.Error and conformance NavigationPath.Error()
{
  result = lazy protocol witness table cache variable for type NavigationPath.Error and conformance NavigationPath.Error;
  if (!lazy protocol witness table cache variable for type NavigationPath.Error and conformance NavigationPath.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationPath.Error and conformance NavigationPath.Error);
  }

  return result;
}

void type metadata accessor for (CodingUserInfoKey, Sendable)()
{
  if (!lazy cache variable for type metadata for (CodingUserInfoKey, Sendable))
  {
    type metadata accessor for CodingUserInfoKey();
    type metadata accessor for Sendable();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CodingUserInfoKey, Sendable));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (tag: String, item: String)()
{
  if (!lazy cache variable for type metadata for (tag: String, item: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (tag: String, item: String));
    }
  }
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t), uint64_t (*a8)(uint64_t))
{
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = a4;
  v14 = a3;
  v13 = a2;
  v27 = a7;
  v28 = a8;
  v16 = *v9;
  v9 = (*v9 & 0xFFFFFFFFFFFFFF8);
  v8 = v9 + 4;
  v12 = &v9[a1 + 4];
  type metadata accessor for NSObject(0, a5);
  v17 = swift_arrayDestroy();
  v19 = __OFSUB__(v14, v15);
  v15 = v14 - v15;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v10 = v16 >> 62;
  if (!(v16 >> 62))
  {
    v20 = v9[2];
    v21 = v20 - v13;
    if (!__OFSUB__(v20, v13))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v25 = __CocoaSet.count.getter();
  v21 = v25 - v13;
  if (__OFSUB__(v25, v13))
  {
    goto LABEL_27;
  }

LABEL_6:
  v22 = (v12 + 8 * v14);
  v23 = &v8[v13];
  if (v22 != v23 || v22 >= &v23[8 * v21])
  {
    memmove(v22, v23, 8 * v21);
  }

  if (v10)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = v9[2];
  }

  if (__OFADD__(v17, v15))
  {
    goto LABEL_28;
  }

  v9[2] = v17 + v15;
LABEL_17:
  if (v14 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v17);
  v18 = v26;
  v26[2] = v14;
  v26[3] = v12;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI26NavigationPath_ItemBoxBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI26kl1_mnO7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v11, v27, v18, v28);
    return;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == v14)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  if (__CocoaSet.count.getter() < v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  v10 = __CocoaSet.count.getter();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v8)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v11)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v14, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, v10, v3, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

LABEL_19:
  __break(1u);
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  if (__CocoaSet.count.getter() < v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  v10 = __CocoaSet.count.getter();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v8)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v11)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v14, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, v10, v3, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v5 + 24) >> 1)
  {
    v5 = a3();
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 0);
  *v3 = v5;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v10 = a3;
    v8 = a2;
    v9 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    v10(result, 1);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v18 = a5;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v5 >> 62))
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = __OFSUB__(v14, v12);
    v16 = v14 - v12;
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = __CocoaSet.count.getter();
  v14 = result;
  v15 = __OFSUB__(result, v12);
  v16 = result - v12;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v11)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v17, v16);
  result = v17 + v16;
  if (v15)
  {
    goto LABEL_21;
  }

  v8(result, 1);

  return v18(v9, v7, v14, v5);
}

uint64_t partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), &lazy cache variable for type metadata for UIMenuElement);
}

{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), &lazy cache variable for type metadata for UIBarButtonItemGroup);
}

{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), 0, type metadata accessor for NSObject & PlatformAccessibilityElementProtocol);
}

uint64_t outlined destroy of (CodingUserInfoKey, Sendable)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for CollectionOfOne<Hashable>()
{
  if (!lazy cache variable for type metadata for CollectionOfOne<Hashable>)
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for Hashable);
    v0 = type metadata accessor for CollectionOfOne();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionOfOne<Hashable>);
    }
  }
}

uint64_t outlined destroy of CollectionOfOne<Decodable & Encodable & Hashable>(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<(CodingUserInfoKey, Sendable)>(0, &lazy cache variable for type metadata for CollectionOfOne<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t destroy for NavigationPath.Error(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for NavigationPath.Error(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

void *assignWithCopy for NavigationPath.Error(void *a1, void *a2)
{
  v3 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v3 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

    v5 = *a2;
LABEL_8:
    *a1 = v5;
    return a1;
  }

  if (v3 < 0xFFFFFFFF)
  {

    v5 = *a2;
    goto LABEL_8;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for NavigationPath.Error(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    v2 = *(a2 + 8);
    if (v2 < 0xFFFFFFFF)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationPath.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationPath.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NavigationPath.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t ArchivedTemplateHost.viewGraph.getter()
{
  specialized _ArchivedViewHost.viewGraph.getter();
}

double ArchivedTemplateHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t ArchivedTemplateHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t ArchivedTemplateHost.valuesNeedingUpdate.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t ArchivedTemplateHost.renderingPhase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 34);
  return result;
}

uint64_t ArchivedTemplateHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 34) = v2;
  return result;
}

uint64_t ArchivedTemplateHost.externalUpdateCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t ArchivedTemplateHost.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t key path getter for ArchivedTemplateHost.environment : <A>ArchivedTemplateHost<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 144));
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for ArchivedTemplateHost.environment : <A>ArchivedTemplateHost<A>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return ArchivedTemplateHost.environment.setter(v4);
}

uint64_t ArchivedTemplateHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return ArchivedTemplateHost.environment.didset();
}

uint64_t (*ArchivedTemplateHost.environment.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArchivedTemplateHost.environment.modify;
}

uint64_t ArchivedTemplateHost.environment.modify(uint64_t a1, char a2)
{
  return ArchivedTemplateHost.environment.modify(a1, a2);
}

{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ArchivedTemplateHost.environment.didset();
  }

  return result;
}

double ArchivedTemplateHost.size.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t ArchivedTemplateHost.size.setter(double a1, double a2)
{
  v5 = (v2 + *(*v2 + 152));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return ArchivedTemplateHost.environment.didset();
}

uint64_t (*ArchivedTemplateHost.size.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArchivedTemplateHost.size.modify;
}

double ArchivedTemplateHost.safeAreaInsets.getter()
{
  v1 = v0 + *(*v0 + 160);
  swift_beginAccess();
  return *v1;
}

uint64_t ArchivedTemplateHost.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + *(*v4 + 160));
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return ArchivedTemplateHost.environment.didset();
}

uint64_t ArchivedTemplateHost.environment.didset()
{
  GraphHost.emptyTransaction(_:)();
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t (*ArchivedTemplateHost.safeAreaInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArchivedTemplateHost.safeAreaInsets.modify;
}

uint64_t *ArchivedTemplateHost.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized ArchivedTemplateHost.init(_:)();
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *ArchivedTemplateHost.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized ArchivedTemplateHost.init(_:)();
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t ArchivedTemplateHost.metadata()@<X0>(id *a1@<X8>)
{
  v2 = v1;
  v46 = *v1;
  v47 = a1;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Graphic?, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v44 - v4;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for OSSignpostID();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  static OSSignposter.metadataExtraction.getter();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v21 = *(v9 + 8);
  v45 = v8;
  v21(v14, v8);
  static OSSignposter.metadataExtraction.getter();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  v24 = OS_os_log.signpostsEnabled.getter();
  v48 = v7;
  if (v24)
  {
    v25 = v2;
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v22, v23, v27, "Metadata Extraction", "", v26, 2u);
    v28 = v26;
    v2 = v25;
    v7 = v48;
    MEMORY[0x18D0110E0](v28, -1, -1);
  }

  (*(v50 + 16))(v17, v20, v51);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v21(v11, v45);
  swift_getWitnessTable();
  ViewRendererHost.preferenceValue<A>(_:)();
  v29 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v30 = *(*(v29 - 1) + 48);
  if (v30(v7, 1, v29) == 1)
  {
    v31 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
    v46 = v2;
    v32 = v31;
    v33 = *(*(v31 - 8) + 56);
    v33(v49, 1, 1, v31);
    v34 = v47;
    *v47 = 0;
    v34[1] = 0;
    v35 = v29[6];
    v33(v34 + v35, 1, 1, v32);
    *(v34 + v29[7]) = 0;
    v36 = v29[8];
    v37 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
    (*(*(v37 - 8) + 56))(v34 + v36, 1, 1, v37);
    v38 = (v34 + v29[9]);
    *(v38 + 41) = 0u;
    v38[1] = 0u;
    v38[2] = 0u;
    *v38 = 0u;
    v39 = v29[10];
    v40 = type metadata accessor for URL();
    (*(*(v40 - 8) + 56))(v34 + v39, 1, 1, v40);
    v41 = (v34 + v29[11]);
    *v41 = xmmword_18CD633F0;
    v41[1] = 0u;
    v41[2] = 0u;
    v41[3] = 0u;
    v42 = v48;
    outlined assign with take of WidgetAuxiliaryViewMetadata.Graphic?(v49, v34 + v35);

    *v34 = 0;
    if (v30(v42, 1, v29) != 1)
    {
      outlined destroy of WidgetAuxiliaryViewMetadata?(v42);
    }
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata(v7, v47);
  }

  $defer #1 <A>() in ArchivedTemplateHost.metadata()();

  return (*(v50 + 8))(v20, v51);
}

uint64_t $defer #1 <A>() in ArchivedTemplateHost.metadata()()
{
  v0 = type metadata accessor for OSSignpostError();
  v18 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for OSSignpostID();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static OSSignposter.metadataExtraction.getter();
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v17 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v11 = v18;
    if ((*(v18 + 88))(v2, v0) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v2, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v10, v17, v14, "Metadata Extraction", v12, v13, 2u);
    MEMORY[0x18D0110E0](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v19);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ArchivedTemplateHost.preferenceValue<A>(for:)()
{
  mainThreadPrecondition()();
  swift_getWitnessTable();

  return ViewRendererHost.preferenceValue<A>(_:)();
}

uint64_t ArchivedTemplateHost.containsPrivacySensitive.getter()
{
  mainThreadPrecondition()();
  swift_getWitnessTable();
  ViewRendererHost.updateViewGraph<A>(body:)();

  return (v1 >> 2) & 1;
}

uint64_t closure #1 in ArchivedTemplateHost.containsPrivacySensitive.getter@<X0>(uint64_t a1@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  result = ViewGraph.displayList()();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return result;
}

uint64_t ArchivedTemplateHost.deinit()
{

  v1 = *(*v0 + 136);
  v2 = type metadata accessor for ModifiedContent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArchivedTemplateHost.__deallocating_deinit()
{
  ArchivedTemplateHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t ArchivedTemplateHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
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

Swift::Void __swiftcall ArchivedTemplateHost.updateRootView()()
{
  v1 = *v0;
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - v5;
  (*(v3 + 16))(v9 - v5, &v0[*(v1 + 136)], v2, v4);
  v7 = *(v1 + 88);
  v8 = lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers();
  v9[0] = v7;
  v9[1] = v8;
  swift_getWitnessTable();
  ViewGraph.setRootView<A>(_:)();
  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall ArchivedTemplateHost.updateEnvironment()()
{
  v1 = (v0 + *(*v0 + 144));
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

Swift::Void __swiftcall ArchivedTemplateHost.updateSize()()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  ViewGraph.setProposedSize(_:)(*v1);
}

Swift::Void __swiftcall ArchivedTemplateHost.updateSafeArea()()
{
  v1 = (v0 + *(*v0 + 160));
  swift_beginAccess();
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>();
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

Swift::Void __swiftcall ArchivedTemplateHost.updateContainerSize()()
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  static ViewSize.fixed(_:)();
  ViewGraph.setContainerSize(_:)();
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance ArchivedTemplateHost<A>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.responderNode.getter();
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ArchivedTemplateHost.currentTimestamp.modify();
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ArchivedTemplateHost.valuesNeedingUpdate.modify();
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ArchivedTemplateHost.renderingPhase.modify();
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance ArchivedTemplateHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ArchivedTemplateHost.externalUpdateCount.modify();
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ArchivedTemplateHost<A>;
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance ArchivedTemplateHost<A>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance ArchivedTemplateHost<A>()
{
  swift_getWitnessTable();

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t *specialized ArchivedTemplateHost.init(_:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v0[3] = 0;
  *(v0 + 16) = 0;
  *(v0 + 34) = 0;
  v0[5] = 0;
  v8 = EnvironmentValues.init()();
  v9 = (v1 + *(*v1 + 152));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + *(*v1 + 160));
  *v10 = 0u;
  v10[1] = 0u;
  v11 = *(v2 + 88);
  MEMORY[0x18D00A570](v8, v3, &unk_1EFFB4D48, v11);
  v12 = (*(v5 + 32))(v1 + *(*v1 + 136), v7, v4);
  MEMORY[0x18D00ABE0](v12);
  type metadata accessor for ViewGraph();
  LOBYTE(v21[0]) = 17;
  v13 = lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers();
  v19 = v11;
  v20 = v13;
  swift_getWitnessTable();
  swift_allocObject();
  v0[2] = ViewGraph.init<A>(rootViewType:requestedOutputs:)();

  AccessibilityViewGraph.init(graph:)(v14, v17);
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v21[0] = v17[0];
  v21[1] = v17[1];
  v21[2] = v17[2];
  v22 = v18;
  outlined destroy of AccessibilityViewGraph(v21);
  (*(v5 + 16))(v7, v1 + *(*v1 + 136), v4);
  ViewGraph.setRootView<A>(_:)();
  (*(v5 + 8))(v7, v4);
  swift_getWitnessTable();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  ViewGraphRootValueUpdater.initializeViewGraph()();
  static Update.end()();
  return v0;
}

void type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined assign with take of WidgetAuxiliaryViewMetadata.Graphic?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Graphic?, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata?(uint64_t a1)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of WidgetAuxiliaryViewMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers()
{
  result = lazy protocol witness table cache variable for type CommonModifiers and conformance CommonModifiers;
  if (!lazy protocol witness table cache variable for type CommonModifiers and conformance CommonModifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonModifiers and conformance CommonModifiers);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>);
    }
  }
}

uint64_t type metadata completion function for ArchivedTemplateHost()
{
  result = type metadata accessor for ModifiedContent();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>)
  {
    type metadata accessor for _ViewModifier_Content<CommonModifiers>();
    type metadata accessor for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CommonModifiers>, WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<CommonModifiers>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<CommonModifiers>)
  {
    lazy protocol witness table accessor for type CommonModifiers and conformance CommonModifiers();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<CommonModifiers>);
    }
  }
}

void type metadata accessor for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>()
{
  if (!lazy cache variable for type metadata for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>)
  {
    type metadata accessor for _ViewModifier_Content<CommonModifiers>();
    lazy protocol witness table accessor for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>();
    v0 = type metadata accessor for WidgetAuxiliaryViewMetadataModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadataModifier<_ViewModifier_Content<CommonModifiers>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<CommonModifiers>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<CommonModifiers> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t View.accessibilityDataSeries(_:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(__srca, v6, v7, v8);
  memcpy(v10, __srca, sizeof(v10));
  outlined init with copy of AccessibilityDataSeriesConfiguration(__dst, v13);
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800F0], v10, 1, a2, MEMORY[0x1E69800F0], a3);
  memcpy(v13, v10, sizeof(v13));
  return outlined destroy of AccessibilityDataSeriesConfiguration?(v13);
}

uint64_t outlined destroy of AccessibilityDataSeriesConfiguration?(uint64_t a1)
{
  type metadata accessor for AccessibilityDataSeriesConfiguration?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AccessibilityDataSeriesConfiguration?()
{
  if (!lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?);
    }
  }
}

uint64_t ModifiedContent<>.accessibilityDataSeries(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(__srca, v6, v7, v8);
  memcpy(v10, __srca, sizeof(v10));
  outlined init with copy of AccessibilityDataSeriesConfiguration(__dst, v13);
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E69800F0], v10, 1, a2, a3);
  memcpy(v13, v10, 0x138uLL);
  return outlined destroy of AccessibilityDataSeriesConfiguration?(v13);
}

uint64_t Color.Resolved.accessibilityName.getter()
{
  v0 = Color.Resolved.cgColor.getter();
  v1 = AXNameFromColor(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t View.scrollTransition<A>(_:axis:transition:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v10[2] = *(a1 + 32);
  v11 = v7;
  return View.scrollTransition<A>(_:axis:transition:)(v10, a2 & 1, a3, a4, a5, a6, a7);
}

uint64_t View.scrollTransition<A>(topLeading:bottomTrailing:axis:transition:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v10;
  v15[2] = *(a1 + 32);
  v16 = v8;
  v11 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v11;
  v13[2] = *(a2 + 32);
  v14 = v9;
  return View.scrollTransition<A>(topLeading:bottomTrailing:axis:transition:)(v15, v13, a3 & 1, a4, a5, a6, a7, a8);
}

uint64_t View.scrollTransition<A>(topLeading:bottomTrailing:axis:transition:)(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = *a2;
  v23 = a2[1];
  v16 = a2[3];
  v17 = a2[4];
  v21 = a2[5];
  v22 = a2[2];
  v20 = a2[6];
  *&v26 = a4;
  *(&v26 + 1) = a5;
  *&v27 = v8;
  *(&v27 + 1) = v9;
  *&v28 = v10;
  *(&v28 + 1) = v11;
  *&v29 = v12;
  *(&v29 + 1) = v13;
  *&v30 = v14;
  *(&v30 + 1) = v15;
  *&v31 = v23;
  *(&v31 + 1) = v22;
  *&v32 = v16;
  *(&v32 + 1) = v17;
  *&v33 = v21;
  *(&v33 + 1) = v20;
  v34 = a3;

  outlined copy of ScrollTransitionConfiguration.Mode(v9, v10, v11, v12, v13);

  outlined copy of ScrollTransitionConfiguration.Mode(v23, v22, v16, v17, v21);
  v18 = type metadata accessor for ScrollTransitionModifier();
  MEMORY[0x18D00A570](&v26, a6, v18, a8);
  v35[6] = v32;
  v35[7] = v33;
  v36 = v34;
  v35[2] = v28;
  v35[3] = v29;
  v35[4] = v30;
  v35[5] = v31;
  v35[0] = v26;
  v35[1] = v27;
  return (*(*(v18 - 8) + 8))(v35, v18);
}

uint64_t static ScrollTransitionConfiguration.animated(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0x3FE0000000000000;
  *a2 = v4;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
}

uint64_t static ScrollTransitionConfiguration.Threshold.visible(_:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result;
  return result;
}

double one-time initialization function for animated()
{
  v0 = static Animation.default.getter();
  v1 = swift_allocObject();
  *(v1 + 16) = 0x3FE0000000000000;
  static ScrollTransitionConfiguration.animated = v1;
  *algn_1EAA220E8 = v0;
  result = 0.0;
  xmmword_1EAA220F0 = 0u;
  *&qword_1EAA22100 = 0u;
  qword_1EAA22110 = 0;
  return result;
}

uint64_t static ScrollTransitionConfiguration.animated.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for animated != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EAA220E8;
  v2 = xmmword_1EAA220F0;
  v3 = qword_1EAA22100;
  v4 = unk_1EAA22108;
  v5 = qword_1EAA22110;
  *a1 = static ScrollTransitionConfiguration.animated;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return outlined copy of ScrollTransitionConfiguration.Mode(v1, v2, *(&v2 + 1), v3, v4);
}

__n128 static ScrollTransitionConfiguration.interactive(timingCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = 0x3FF0000000000000;
  *a2 = v5;
  result = *a1;
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 8) = result;
  *(a2 + 40) = v4 | 0x4000000000000000;
  *(a2 + 48) = 0;
  return result;
}

uint64_t one-time initialization function for identity()
{
  if (one-time initialization token for visible != -1)
  {
    swift_once();
  }

  static ScrollTransitionConfiguration.identity = static ScrollTransitionConfiguration.Threshold.visible;
  unk_1EAA22120 = 0u;
  unk_1EAA22130 = 0u;
  unk_1EAA22140 = xmmword_18CD68310;
}

{
  result = static ContentTransition.identity.getter();
  static Text.Transition.identity = v1;
  word_1EAA31D94 = v3;
  dword_1EAA31D90 = v2;
  byte_1EAA31D96 = v4;
  return result;
}

uint64_t static ScrollTransitionConfiguration.identity.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EAA22120;
  v2 = qword_1EAA22128;
  v3 = unk_1EAA22130;
  v4 = qword_1EAA22138;
  v5 = unk_1EAA22140;
  v6 = qword_1EAA22148;
  *a1 = static ScrollTransitionConfiguration.identity;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;

  return outlined copy of ScrollTransitionConfiguration.Mode(v1, v2, v3, v4, v5);
}

uint64_t ScrollTransitionConfiguration.animation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[5];
  if (!(v4 >> 62))
  {
    *a2 = v3;
    *(a2 + 8) = a1;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    goto LABEL_5;
  }

  v6 = v2[1];
  v5 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  if (v4 >> 62 == 1)
  {
    *a2 = v3;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v4 & 1 | 0x4000000000000000;
    *(a2 + 48) = a1;
LABEL_5:
  }

  v10 = v2[6];
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v4;
  *(a2 + 48) = v10;

  return outlined copy of ScrollTransitionConfiguration.Mode(v6, v5, v7, v8, v4);
}

uint64_t ScrollTransitionConfiguration.threshold(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  outlined copy of ScrollTransitionConfiguration.Mode(v4, v5, v6, v7, v8);
}

uint64_t one-time initialization function for visible()
{
  result = swift_allocObject();
  *(result + 16) = 0x3FF0000000000000;
  static ScrollTransitionConfiguration.Threshold.visible = result;
  return result;
}

uint64_t one-time initialization function for hidden()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  static ScrollTransitionConfiguration.Threshold.hidden = result;
  return result;
}

uint64_t static ScrollTransitionConfiguration.Threshold.visible.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t ScrollTransitionConfiguration.Threshold.interpolated(towards:amount:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = *a1;
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = a3;
  *a2 = v8 | 0x8000000000000000;
}

uint64_t ScrollTransitionConfiguration.Threshold.inset(by:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *a1 = v6 | 0x4000000000000000;
}

void ScrollTransitionModifier.StageProgress.animatedProgress(threshold:axis:geometryProxy:)(unint64_t *a1, char a2, __int128 *a3)
{
  v4 = *a1;
  v5 = a3[1];
  v19 = *a3;
  v20 = v5;
  v21 = a3[2];
  v22 = *(a3 + 12);
  static CoordinateSpaceProtocol<>.scrollView(axis:)();
  GeometryProxy.bounds(of:)();
  outlined destroy of NamedCoordinateSpace(&v18);
  if ((v27 & 1) == 0)
  {
    v6 = v25;
    v7 = v26;
    v8 = v23;
    v9 = v24;
    if (a2)
    {
      Height = CGRectGetHeight(*&v8);
      Value = AGGraphGetValue();
      v12 = Value[1];
      v19 = *Value;
      v20 = v12;
      ViewSize.height.getter();
    }

    else
    {
      Height = CGRectGetWidth(*&v8);
      v16 = AGGraphGetValue();
      v17 = v16[1];
      v19 = *v16;
      v20 = v17;
      ViewSize.width.getter();
    }

    v14.n128_f64[0] = Height;
    ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(v4, v13, v14, v15);
  }
}

double protocol witness for Animatable.animatableData.setter in conformance ScrollTransitionProgress(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress;
}

double protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

Swift::Int ScrollTransitionPhase.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ScrollTransitionPhase and conformance ScrollTransitionPhase()
{
  result = lazy protocol witness table cache variable for type ScrollTransitionPhase and conformance ScrollTransitionPhase;
  if (!lazy protocol witness table cache variable for type ScrollTransitionPhase and conformance ScrollTransitionPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollTransitionPhase and conformance ScrollTransitionPhase);
  }

  return result;
}

void *initializeWithCopy for ScrollTransitionConfiguration(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];

  outlined copy of ScrollTransitionConfiguration.Mode(v3, v4, v5, v6, v7);
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return a1;
}

void *assignWithCopy for ScrollTransitionConfiguration(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  outlined copy of ScrollTransitionConfiguration.Mode(v4, v5, v6, v7, v9);
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v9;
  a1[6] = v8;
  outlined consume of ScrollTransitionConfiguration.Mode(v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for ScrollTransitionConfiguration(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 48);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  outlined consume of ScrollTransitionConfiguration.Mode(v5, v6, v7, v8, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
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

double storeEnumTagSinglePayload for ScrollTransitionConfiguration(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for ScrollTransitionConfiguration.Threshold(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionConfiguration.Threshold(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScrollTransitionConfiguration.Threshold(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for ScrollTransitionConfiguration.Mode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  outlined copy of ScrollTransitionConfiguration.Mode(*a2, v4, v5, v6, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  return a1;
}

uint64_t *assignWithCopy for ScrollTransitionConfiguration.Mode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  outlined copy of ScrollTransitionConfiguration.Mode(*a2, v4, v5, v6, v7);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  outlined consume of ScrollTransitionConfiguration.Mode(v9, v10, v11, v12, v13);
  return a1;
}

uint64_t *assignWithTake for ScrollTransitionConfiguration.Mode(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v8;
  *(a1 + 2) = a2[2];
  outlined consume of ScrollTransitionConfiguration.Mode(v3, v5, v4, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionConfiguration.Mode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
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

double storeEnumTagSinglePayload for ScrollTransitionConfiguration.Mode(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for ScrollTransitionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v9;
  *(a1 + 48) = *(a2 + 48);
  outlined consume of ScrollTransitionConfiguration.Mode(v4, v5, v6, v7, v8);
  *(a1 + 64) = *(a2 + 64);

  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  v15 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v15;
  *(a1 + 112) = *(a2 + 112);
  outlined consume of ScrollTransitionConfiguration.Mode(v10, v11, v12, v13, v14);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t storeEnumTagSinglePayload for ScrollTransitionModifier(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *assignWithTake for ScrollTransitionModifier.EffectApplicationModifier(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTransitionModifier.StageProgress(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t TabItemGroup.allChildEntries.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v10;
    v5 = v2 + 32;
    do
    {
      outlined init with copy of TabItem(v5, __src);
      LOBYTE(__src[35]) = 0;
      v10 = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v4 = v10;
      }

      *(v4 + 16) = v7 + 1;
      memcpy((v4 + 288 * v7 + 32), __src, 0x119uLL);
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  __src[0] = v1;

  specialized Array.append<A>(contentsOf:)(v4);
  return __src[0];
}

BOOL TabItemGroup.sidebarReorderable.getter()
{
  v1 = v0;
  outlined init with copy of TabItem?(v0 + 48, &v61);
  if (!*&v62[8])
  {
    outlined destroy of TabItem?(&v61, type metadata accessor for TabItem?);
    return 0;
  }

  v2 = &v61;
  v69[4] = v64;
  v69[5] = v65;
  v70 = v66;
  v69[0] = v61;
  v69[1] = *v62;
  v69[2] = *&v62[16];
  v69[3] = v63;
  if ((TabItem.needsCustomizationIDForEnablement.getter() & 1) == 0)
  {
LABEL_7:
    *&v56 = v70;
    if (one-time initialization token for defaultValue != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_8;
  }

  *&v54 = v70;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  __dst[0] = static TabOptions.TraitKey.defaultValue;
  __dst[1] = unk_1EAB09380;
  *(&__dst[1] + 9) = *(&word_1EAB09388 + 1);
  v56 = static TabOptions.TraitKey.defaultValue;
  v57[0] = unk_1EAB09380;
  *(v57 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(__dst, &v67);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *__src = v56;
  *&__src[16] = v57[0];
  *&__src[25] = *(v57 + 9);
  outlined destroy of TabOptions(__src);
  v61 = v67;
  *v62 = *v68;
  *&v62[9] = *&v68[9];
  v3 = *(&v67 + 1);
  v4 = *v68;
  v5 = v68[8];
  outlined copy of TabCustomizationID?(*(&v67 + 1), *v68, v68[8]);
  outlined destroy of TabOptions(&v61);
  if (v5 != 255)
  {
    outlined consume of TabCustomizationID?(v3, v4, v5);
    goto LABEL_7;
  }

  v21 = 0;
LABEL_9:
  v23 = *(v1 + 8);
  v22 = *(v23 + 16);
  if (v22)
  {
    v10 = 0;
    v2 = &v38;
    v1 = v23 + 32;
    do
    {
      if (v10 >= *(v23 + 16))
      {
        __break(1u);
LABEL_38:
        swift_once();
LABEL_8:
        v6 = unk_1EAB09380;
        __dst[0] = static TabOptions.TraitKey.defaultValue;
        __dst[1] = unk_1EAB09380;
        *(&__dst[1] + 9) = *(&word_1EAB09388 + 1);
        v7 = *(&word_1EAB09388 + 1);
        *v2 = static TabOptions.TraitKey.defaultValue;
        v2[1] = v6;
        *(v2 + 25) = v7;
        outlined init with copy of TabOptions(__dst, __src);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v8 = v2[1];
        *__src = *v2;
        *&__src[16] = v8;
        *&__src[25] = *(v2 + 25);
        outlined destroy of TabOptions(__src);
        v9 = *v68;
        *v2 = v67;
        v2[1] = v9;
        *(v2 + 25) = *&v68[9];
        outlined destroy of TabOptions(&v61);
        v21 = v62[9] != 2;
        goto LABEL_9;
      }

      outlined init with copy of TabEntry(v1, &v61);
      outlined init with copy of TabEntry(&v61, __src);
      if (v60)
      {
        v11 = memcpy(__dst, __src, 0x118uLL);
        v12 = TabItemGroup.sidebarReorderable.getter(v11);
        outlined destroy of TabItemGroup(__dst);
        outlined destroy of TabEntry(&v61);
        if (v12)
        {
          goto LABEL_35;
        }
      }

      else
      {
        __dst[5] = *&__src[80];
        __dst[6] = *&__src[96];
        __dst[0] = *__src;
        __dst[1] = *&__src[16];
        __dst[3] = *&__src[48];
        __dst[4] = *&__src[64];
        __dst[2] = *&__src[32];
        *&v48 = *&__src[96];
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v54 = static TabOptions.TraitKey.defaultValue;
        v55[0] = unk_1EAB09380;
        *(v55 + 9) = *(&word_1EAB09388 + 1);
        v50 = static TabOptions.TraitKey.defaultValue;
        v51[0] = unk_1EAB09380;
        *(v51 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v54, &v52);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v56 = v50;
        v57[0] = v51[0];
        *(v57 + 9) = *(v51 + 9);
        outlined destroy of TabOptions(&v56);
        v67 = v52;
        *v68 = *v53;
        *&v68[9] = *&v53[9];
        outlined destroy of TabOptions(&v67);
        if (!v68[10] || (*&v42 = *&__dst[6], v48 = static TabOptions.TraitKey.defaultValue, v49[0] = unk_1EAB09380, *(v49 + 9) = *(&word_1EAB09388 + 1), v44 = static TabOptions.TraitKey.defaultValue, v45[0] = unk_1EAB09380, *(v45 + 9) = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v48, &v46), ViewTraitCollection.value<A>(for:defaultValue:)(), v50 = v44, v51[0] = v45[0], *(v51 + 9) = *(v45 + 9), outlined destroy of TabOptions(&v50), v52 = v46, *v53 = *v47, *&v53[9] = *&v47[9], outlined destroy of TabOptions(&v52), !v53[9]) || ((*&v34 = *&__dst[6], v42 = static TabOptions.TraitKey.defaultValue, v43[0] = unk_1EAB09380, *(v43 + 9) = *(&word_1EAB09388 + 1), v38 = static TabOptions.TraitKey.defaultValue, *v39 = unk_1EAB09380, *&v39[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v42, &v36), ViewTraitCollection.value<A>(for:defaultValue:)(), v44 = v38, v45[0] = *v39, *(v45 + 9) = *&v39[9], outlined destroy of TabOptions(&v44), v46 = v40, *v47 = *v41, *&v47[9] = *&v41[9], outlined destroy of TabOptions(&v46), v46 != 2) && ((*&v26 = *&__dst[6], v34 = static TabOptions.TraitKey.defaultValue, v35[0] = unk_1EAB09380, *(v35 + 9) = *(&word_1EAB09388 + 1), v30 = static TabOptions.TraitKey.defaultValue, *v31 = unk_1EAB09380, *&v31[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v34, &v28), ViewTraitCollection.value<A>(for:defaultValue:)(), v36 = v30, v37[0] = *v31, *(v37 + 9) = *&v31[9], outlined destroy of TabOptions(&v36), *&v39[9] = *(v33 + 9), v38 = v32, *v39 = v33[0], v13 = v32, v14 = BYTE8(v33[1]), outlined destroy of TabOptions(&v38), (v14 & 1) != 0) || v13) && v13 != 1 ? (v26 = static TabOptions.TraitKey.defaultValue, v27[0] = unk_1EAB09380, *(v27 + 9) = *(&word_1EAB09388 + 1), v30 = static TabOptions.TraitKey.defaultValue, *v31 = unk_1EAB09380, *&v31[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v26, &v28), ViewTraitCollection.value<A>(for:defaultValue:)(), v28 = v30, v29[0] = *v31, *(v29 + 9) = *&v31[9], outlined destroy of TabOptions(&v28), v30 = v24, *v31 = *v25, *&v31[9] = *&v25[9], outlined destroy of TabOptions(&v30), v15 = v31[10] == 1) : (v15 = 0), (*&v30 = *&__dst[6], v36 = static TabOptions.TraitKey.defaultValue, v37[0] = unk_1EAB09380, *(v37 + 9) = *(&word_1EAB09388 + 1), v32 = static TabOptions.TraitKey.defaultValue, v33[0] = unk_1EAB09380, *(v33 + 9) = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v36, &v34), ViewTraitCollection.value<A>(for:defaultValue:)(), v38 = v32, *v39 = v33[0], *&v39[9] = *(v33 + 9), outlined destroy of TabOptions(&v38), v40 = v34, *v41 = v35[0], *&v41[9] = *(v35 + 9), outlined destroy of TabOptions(&v40), v15) || v41[9] == 1))
        {
          *&v42 = *&__dst[6];
          v48 = static TabOptions.TraitKey.defaultValue;
          v49[0] = unk_1EAB09380;
          *(v49 + 9) = *(&word_1EAB09388 + 1);
          v44 = static TabOptions.TraitKey.defaultValue;
          v45[0] = unk_1EAB09380;
          *(v45 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v48, &v46);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          v50 = v44;
          v51[0] = v45[0];
          *(v51 + 9) = *(v45 + 9);
          outlined destroy of TabOptions(&v50);
          v52 = v46;
          *v53 = *v47;
          *&v53[9] = *&v47[9];
          v16 = *(&v46 + 1);
          v17 = *v47;
          v18 = v47[8];
          outlined copy of TabCustomizationID?(*(&v46 + 1), *v47, v47[8]);
          outlined destroy of TabOptions(&v52);
          if (v18 == 255)
          {
            outlined destroy of TabEntry(&v61);
            outlined destroy of TabItem(__dst);
            goto LABEL_12;
          }

          outlined consume of TabCustomizationID?(v16, v17, v18);
        }

        *&v44 = *&__dst[6];
        v48 = static TabOptions.TraitKey.defaultValue;
        v49[0] = unk_1EAB09380;
        *(v49 + 9) = *(&word_1EAB09388 + 1);
        v52 = static TabOptions.TraitKey.defaultValue;
        *v53 = unk_1EAB09380;
        *&v53[9] = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v48, &v50);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v50 = v52;
        v51[0] = *v53;
        *(v51 + 9) = *&v53[9];
        outlined destroy of TabOptions(&v50);
        outlined destroy of TabEntry(&v61);
        v52 = v46;
        *v53 = *v47;
        *&v53[9] = *&v47[9];
        outlined destroy of TabOptions(&v52);
        v19 = v53[9];
        outlined destroy of TabItem(__dst);
        if (v19 < 2)
        {
LABEL_35:
          outlined destroy of TabItem(v69);
          return v21;
        }
      }

LABEL_12:
      ++v10;
      v1 += 288;
    }

    while (v22 != v10);
  }

  outlined destroy of TabItem(v69);
  return 0;
}

uint64_t TabItemGroup.hidden.getter()
{
  outlined init with copy of TabItem?(v0 + 48, v11);
  if (v12)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v5 = static TabOptions.TraitKey.defaultValue;
    v6[0] = unk_1EAB09380;
    *(v6 + 9) = *(&word_1EAB09388 + 1);
    v9 = static TabOptions.TraitKey.defaultValue;
    v10[0] = unk_1EAB09380;
    *(v10 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v5, &v7);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v7 = v9;
    v8[0] = v10[0];
    *(v8 + 9) = *(v10 + 9);
    outlined destroy of TabOptions(&v7);
    v9 = v3;
    v10[0] = *v4;
    *(v10 + 9) = *&v4[9];
    outlined destroy of TabOptions(&v9);
    v1 = BYTE1(v9);
    outlined destroy of TabItem(v11);
  }

  else
  {
    outlined destroy of TabItem?(v11, type metadata accessor for TabItem?);
    return 0;
  }

  return v1;
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance TabItemGroup.HostView()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
  specialized TabItemGroup.Coordinator.addChildRemovingExistingIfNeeded(_:to:)(v1, v2);
  return v2;
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance TabItemGroup.HostView@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TabItemGroup.Coordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void TabItemGroup.HostCache.removeOldestKey()()
{
  v1 = v0;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[2];
  if (!v5[2])
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v7 = v5[4];
  v6 = v5[5];

  static Log.tabView.getter();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {

    outlined destroy of TabItem?(v4, type metadata accessor for Logger?);
  }

  else
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = v10;
      v13 = v12;
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v21);

      *(v13 + 4) = v15;
      v16 = v20;
      _os_log_impl(&dword_18BD4A000, v20, v11, "Removing child VC '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x18D0110E0](v14, -1, -1);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v4, v8);
  }

  if (!*(v1[3] + 16))
  {
    goto LABEL_14;
  }

  v17 = v1[1];
  if (v17)
  {

    v18 = specialized closure #1 in OrderedSet._bucket(for:)(v17 + 16, v17 + 32, v5, 0);
  }

  else
  {
    v18 = 0;
  }

  specialized OrderedSet._removeExistingMember(at:in:)(0, v18);
}

uint64_t destroy for TabItemGroup(uint64_t a1)
{

  result = outlined consume of TabCustomizationID.Base();
  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 48);
  }

  if (*(a1 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 160);
  }

  return result;
}

uint64_t initializeWithCopy for TabItemGroup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);

  outlined copy of TabCustomizationID.Base();
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(a2 + 72);
  if (!v8)
  {
    v20 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v20;
    *(a1 + 144) = *(a2 + 144);
    v21 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v21;
    v22 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v22;
    v14 = *(a2 + 184);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v23;
    *(a1 + 256) = *(a2 + 256);
    v24 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v24;
    v25 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v25;
    goto LABEL_6;
  }

  v9 = *(a2 + 80);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  (**(v8 - 8))(a1 + 48, a2 + 48);
  v10 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v12 = *(a2 + 136);
  v11 = *(a2 + 144);
  *(a1 + 136) = v12;
  *(a1 + 144) = v11;
  *(a1 + 152) = *(a2 + 152);

  v13 = v12;

  v14 = *(a2 + 184);
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = *(a2 + 192);
  *(a1 + 184) = v14;
  *(a1 + 192) = v15;
  (**(v14 - 8))(a1 + 160, a2 + 160);
  v16 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v16;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  v18 = *(a2 + 248);
  v17 = *(a2 + 256);
  *(a1 + 248) = v18;
  *(a1 + 256) = v17;
  *(a1 + 264) = *(a2 + 264);

  v19 = v18;

LABEL_6:
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithCopy for TabItemGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  outlined copy of TabCustomizationID.Base();
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  outlined consume of TabCustomizationID.Base();
  v7 = *(a2 + 72);
  if (*(a1 + 72))
  {
    v8 = (a1 + 48);
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_1(v8, (a2 + 48));
      *(a1 + 88) = *(a2 + 88);

      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      v9 = *(a1 + 136);
      v10 = *(a2 + 136);
      *(a1 + 136) = v10;
      v11 = v10;

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      outlined destroy of TabItem(v8);
      v15 = *(a2 + 64);
      v14 = *(a2 + 80);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v15;
      *(a1 + 80) = v14;
      v16 = *(a2 + 144);
      v18 = *(a2 + 96);
      v17 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v16;
      *(a1 + 96) = v18;
      *(a1 + 112) = v17;
    }
  }

  else if (v7)
  {
    *(a1 + 72) = v7;
    *(a1 + 80) = *(a2 + 80);
    (**(v7 - 8))(a1 + 48, a2 + 48);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    v12 = *(a2 + 136);
    *(a1 + 136) = v12;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);

    v13 = v12;
  }

  else
  {
    v19 = *(a2 + 48);
    v20 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v20;
    *(a1 + 48) = v19;
    v21 = *(a2 + 96);
    v22 = *(a2 + 112);
    v23 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v23;
    *(a1 + 96) = v21;
    *(a1 + 112) = v22;
  }

  v24 = *(a2 + 184);
  if (*(a1 + 184))
  {
    v25 = (a1 + 160);
    if (v24)
    {
      __swift_assign_boxed_opaque_existential_1(v25, (a2 + 160));
      *(a1 + 200) = *(a2 + 200);

      *(a1 + 208) = *(a2 + 208);

      *(a1 + 216) = *(a2 + 216);
      *(a1 + 220) = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);

      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v26 = *(a1 + 248);
      v27 = *(a2 + 248);
      *(a1 + 248) = v27;
      v28 = v27;

      *(a1 + 256) = *(a2 + 256);

      *(a1 + 264) = *(a2 + 264);
    }

    else
    {
      outlined destroy of TabItem(v25);
      v32 = *(a2 + 176);
      v31 = *(a2 + 192);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v32;
      *(a1 + 192) = v31;
      v33 = *(a2 + 256);
      v35 = *(a2 + 208);
      v34 = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 256) = v33;
      *(a1 + 208) = v35;
      *(a1 + 224) = v34;
    }
  }

  else if (v24)
  {
    *(a1 + 184) = v24;
    *(a1 + 192) = *(a2 + 192);
    (**(v24 - 8))(a1 + 160, a2 + 160);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 220) = *(a2 + 220);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    v29 = *(a2 + 248);
    *(a1 + 248) = v29;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v30 = v29;
  }

  else
  {
    v36 = *(a2 + 160);
    v37 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v37;
    *(a1 + 160) = v36;
    v38 = *(a2 + 208);
    v39 = *(a2 + 224);
    v40 = *(a2 + 256);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = v40;
    *(a1 + 208) = v38;
    *(a1 + 224) = v39;
  }

  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithTake for TabItemGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;
  outlined consume of TabCustomizationID.Base();
  if (*(a1 + 72))
  {
    if (*(a2 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 48);
      v5 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v5;
      v6 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v6;

      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);
      v7 = *(a1 + 136);
      *(a1 + 136) = *(a2 + 136);

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);
      if (!*(a1 + 184))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of TabItem(a1 + 48);
  }

  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 144) = *(a2 + 144);
  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  v10 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v10;
  if (!*(a1 + 184))
  {
LABEL_10:
    v14 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v14;
    *(a1 + 256) = *(a2 + 256);
    v15 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v15;
    v16 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v16;
    goto LABEL_11;
  }

LABEL_7:
  if (!*(a2 + 184))
  {
    outlined destroy of TabItem(a1 + 160);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 160);
  v11 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v11;
  v12 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v12;

  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  v13 = *(a1 + 248);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
LABEL_11:
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t getEnumTagSinglePayload for TabItemGroup(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t storeEnumTagSinglePayload for TabItemGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TabItemGroup.HostCache()
{
}

void *initializeWithCopy for TabItemGroup.HostCache(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TabItemGroup.HostCache(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for TabItemGroup.HostCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t TabItemGroup.description.getter()
{
  v1 = v0;
  v66[0] = 0;
  v66[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(122);
  v68 = 0;
  v69 = 0xE000000000000000;
  MEMORY[0x18D00C9B0](2122857, 0xE300000000000000);
  v2 = v0[3];
  v3 = v0[4];
  outlined copy of TabCustomizationID.Base();
  MEMORY[0x18D00C9B0](v2, v3);
  outlined consume of TabCustomizationID.Base();
  MEMORY[0x18D00C9B0](0x72746E456261740ALL, 0xEF20746E756F4379);
  v66[0] = *(v0[1] + 16);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v4);

  MEMORY[0x18D00C9B0](0x657449626174202CLL, 0xEF20746E756F436DLL);
  v66[0] = *(*v0 + 16);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  MEMORY[0x18D00C9B0](0x6E6F69746361202CLL, 0xEF20746E756F4373);
  v66[0] = *(v0[2] + 16);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0x696863206C6C610ALL, 0xEE00206E6572646CLL);
  v7 = TabItemGroup.allChildEntries.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v44 = v0;
    v67 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v67;
    v10 = v7 + 32;
    do
    {
      outlined init with copy of TabEntry(v10, v66);
      outlined init with copy of TabEntry(v66, __src);
      if (v65)
      {
        v11 = memcpy(__dst, __src, sizeof(__dst));
        strcpy(&v59, "TabItemGroup ");
        HIWORD(v59) = -4864;
        v12 = TabItemGroup.description.getter(v11);
        MEMORY[0x18D00C9B0](v12);

        v14 = *(&v59 + 1);
        v13 = v59;
        outlined destroy of TabItemGroup(__dst);
      }

      else
      {
        *&__dst[64] = *&__src[64];
        *&__dst[80] = *&__src[80];
        *&__dst[96] = *&__src[96];
        *__dst = *__src;
        *&__dst[16] = *&__src[16];
        *&__dst[32] = *&__src[32];
        *&__dst[48] = *&__src[48];
        *&v59 = 0;
        *(&v59 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v61 = 0x206D657449626154;
        v62 = 0xE800000000000000;
        *&v59 = *&__dst[104];
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        *&v59 = *&__dst[96];
        if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
        {
          *&v47 = *&__dst[96];
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v55 = static TabOptions.TraitKey.defaultValue;
          v56[0] = unk_1EAB09380;
          *(v56 + 9) = *(&word_1EAB09388 + 1);
          v51 = static TabOptions.TraitKey.defaultValue;
          v52[0] = unk_1EAB09380;
          *(v52 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v55, &v49);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          v57 = v51;
          v58[0] = v52[0];
          *(v58 + 9) = *(v52 + 9);
          outlined destroy of TabOptions(&v57);
          v59 = v53;
          *v60 = v54[0];
          *&v60[9] = *(v54 + 9);
          outlined destroy of TabOptions(&v59);
          if (v60[24])
          {
            if (TabItem.needsCustomizationIDForEnablement.getter())
            {
              v49 = static TabOptions.TraitKey.defaultValue;
              v50[0] = unk_1EAB09380;
              *(v50 + 9) = *(&word_1EAB09388 + 1);
              v45 = static TabOptions.TraitKey.defaultValue;
              *v46 = unk_1EAB09380;
              *&v46[9] = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v49, &v47);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v51 = v45;
              v52[0] = *v46;
              *(v52 + 9) = *&v46[9];
              outlined destroy of TabOptions(&v51);
              v53 = v47;
              v54[0] = v48[0];
              *(v54 + 9) = *(v48 + 9);
              v18 = *(&v47 + 1);
              v19 = *&v48[0];
              v20 = BYTE8(v48[0]);
              outlined copy of TabCustomizationID?(*(&v47 + 1), *&v48[0], SBYTE8(v48[0]));
              outlined destroy of TabOptions(&v53);
              if (v20 != 255)
              {

                v15 = v18;
                v17 = v19;
              }
            }
          }

          else
          {

            v15 = 0xD000000000000016;
            v17 = 0x800000018CD45E10;
          }
        }

        MEMORY[0x18D00C9B0](v15, v17);

        MEMORY[0x18D00C9B0](0x3D6E656464696820, 0xE800000000000000);
        v21 = TabEntry.hidden.getter();
        v22 = (v21 & 1) == 0;
        if (v21)
        {
          v23 = 1702195828;
        }

        else
        {
          v23 = 0x65736C6166;
        }

        if (v22)
        {
          v24 = 0xE500000000000000;
        }

        else
        {
          v24 = 0xE400000000000000;
        }

        MEMORY[0x18D00C9B0](v23, v24);

        v13 = v61;
        v14 = v62;
        outlined destroy of TabItem(__dst);
      }

      outlined destroy of TabEntry(v66);
      v67 = v9;
      v26 = *(v9 + 16);
      v25 = *(v9 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v9 = v67;
      }

      *(v9 + 16) = v26 + 1;
      v27 = v9 + 16 * v26;
      *(v27 + 32) = v13;
      *(v27 + 40) = v14;
      v10 += 288;
      --v8;
    }

    while (v8);

    v1 = v44;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v28 = MEMORY[0x18D00CC60](v9, MEMORY[0x1E69E6158]);
  v30 = v29;

  MEMORY[0x18D00C9B0](v28, v30);

  MEMORY[0x18D00C9B0](0x646165487361680ALL, 0xEB000000003D7265);
  outlined init with copy of TabItem?((v1 + 6), v66);
  v31 = v66[3];
  outlined destroy of TabItem?(v66, type metadata accessor for TabItem?);
  v32 = v31 == 0;
  if (v31)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  v34 = 0xE400000000000000;
  if (v32)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x18D00C9B0](v33, v35);

  MEMORY[0x18D00C9B0](0xD000000000000019, 0x800000018CD45DF0);
  v36 = TabItemGroup.sidebarReorderable.getter();
  v37 = !v36;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x18D00C9B0](v38, v39);

  MEMORY[0x18D00C9B0](0x3D6E656464696820, 0xE800000000000000);
  v40 = TabItemGroup.hidden.getter();
  v41 = (v40 & 1) == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v42, v34);

  return v68;
}

uint64_t outlined init with copy of TabItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TabItem?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for TabItem?()
{
  if (!lazy cache variable for type metadata for TabItem?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TabItem?);
    }
  }
}

uint64_t outlined copy of TabCustomizationID?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of TabCustomizationID.Base();
  }

  return result;
}

Swift::Int specialized closure #1 in OrderedSet._bucket(for:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v6 = 1 << *v5;
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = v8 & result;
  v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    _HashTable.BucketIterator.advance()();
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    v9 = _HashTable.BucketIterator.currentValue.getter();
  }

  while ((v10 & 1) != 0 || v9 != a4);
  return v11;
}

void specialized TabItemGroup.Coordinator.addChildRemovingExistingIfNeeded(_:to:)(void *a1, id a2)
{
  v4 = [a2 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    v22 = 0;
LABEL_11:
    v11 = [a2 childViewControllers];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      goto LABEL_19;
    }

    [a2 addChildViewController_];
    v14 = [a2 view];
    if (v14)
    {
      v15 = v14;
      v16 = [a1 view];
      if (v16)
      {
        v17 = v16;
        [v15 addSubview_];

        v18 = [a1 view];
        if (v18)
        {
          v19 = v18;
          v20 = [a2 view];
          if (v20)
          {
            v21 = v20;
            UIView.constrainToView(_:exceptEdges:identifier:)(v20, 0, 0x476D657449626174, 0xEC00000070756F72);

            [a1 didMoveToParentViewController_];
            goto LABEL_19;
          }

LABEL_29:
          __break(1u);
          return;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x18D00E9C0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v22 = v7;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v22 = v22;
    [v22 willMoveToParentViewController_];
    v9 = [v22 view];
    if (v9)
    {
      v10 = v9;
      [v9 removeFromSuperview];

      [v22 removeFromParentViewController];
      goto LABEL_11;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_19:
}

uint64_t outlined destroy of TabItem?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.representablePreferredFocusableView<A>(_:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a2;
  v11[1] = a3;
  outlined copy of AppIntentExecutor?(a2);
  v9 = type metadata accessor for RepresentablePreferredFocusableViewModifier();
  MEMORY[0x18D00A570](v11, a4, v9, a6);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2);
}

uint64_t static RepresentablePreferredFocusableViewModifier._makeViewInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  type metadata accessor for RepresentablePreferredFocusableViewModifier();
  type metadata accessor for _GraphValue();
  v15 = a3;
  v8 = _GraphValue.value.getter();
  v9 = partial apply for closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  type metadata accessor for UIView?();
  swift_getFunctionTypeMetadata1();
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v11, v13, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);

  v8 = v7;
  type metadata accessor for RepresentablePreferredFocusableViewInput();
  swift_getWitnessTable();
  return specialized _GraphInputs.subscript.setter(&v8);
}

uint64_t key path getter for RepresentablePreferredFocusableViewModifier.resolver : <A>RepresentablePreferredFocusableViewModifier<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a2 + a3 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned UIView?);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of AppIntentExecutor?(v5);
}

uint64_t key path setter for RepresentablePreferredFocusableViewModifier.resolver : <A>RepresentablePreferredFocusableViewModifier<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out UIView?);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  outlined copy of AppIntentExecutor?(v5);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10);
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RepresentablePreferredFocusableViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0CC0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RepresentablePreferredFocusableViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RepresentablePreferredFocusableViewInput<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UIView?();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  type metadata accessor for OptionalAttribute();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDD5E8](a1, a2, a3, a4, WitnessTable);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out UIView?)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned UIView?)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1);
  *a2 = result;
  return result;
}

double one-time initialization function for principal()
{
  static ToolbarItemPlacement.principal = 1;
  result = 0.0;
  unk_1EA9FBCA8 = 0u;
  unk_1EA9FBCB8 = 0u;
  byte_1EA9FBCC8 = 2;
  return result;
}

double one-time initialization function for navigation()
{
  static ToolbarItemPlacement.navigation = 2;
  result = 0.0;
  unk_1EA9FBD10 = 0u;
  unk_1EA9FBD20 = 0u;
  byte_1EA9FBD30 = 2;
  return result;
}

double one-time initialization function for secondaryAction()
{
  static ToolbarItemPlacement.secondaryAction = 3;
  result = 0.0;
  unk_1EAA22218 = 0u;
  unk_1EAA22228 = 0u;
  byte_1EAA22238 = 2;
  return result;
}

double one-time initialization function for status()
{
  static ToolbarItemPlacement.status = 4;
  result = 0.0;
  unk_1EAA015D8 = 0u;
  unk_1EAA015E8 = 0u;
  byte_1EAA015F8 = 2;
  return result;
}

double one-time initialization function for cancellationAction()
{
  static ToolbarItemPlacement.cancellationAction = 6;
  result = 0.0;
  unk_1EAA06018 = 0u;
  unk_1EAA06028 = 0u;
  byte_1EAA06038 = 2;
  return result;
}

double one-time initialization function for destructiveAction()
{
  static ToolbarItemPlacement.destructiveAction = 7;
  result = 0.0;
  unk_1EAA22248 = 0u;
  unk_1EAA22258 = 0u;
  byte_1EAA22268 = 2;
  return result;
}

double one-time initialization function for keyboard()
{
  static ToolbarItemPlacement.keyboard = 8;
  result = 0.0;
  unk_1EAA22278 = 0u;
  unk_1EAA22288 = 0u;
  byte_1EAA22298 = 2;
  return result;
}

double one-time initialization function for _title()
{
  static ToolbarItemPlacement._title = 11;
  result = 0.0;
  unk_1EAA222A8 = 0u;
  unk_1EAA222B8 = 0u;
  byte_1EAA222C8 = 2;
  return result;
}

double one-time initialization function for largeTitle()
{
  static ToolbarItemPlacement.largeTitle = 12;
  result = 0.0;
  unk_1EAA222D8 = 0u;
  unk_1EAA222E8 = 0u;
  byte_1EAA222F8 = 2;
  return result;
}

double one-time initialization function for largeNavigationTitleAccessory()
{
  static ToolbarItemPlacement.largeNavigationTitleAccessory = 14;
  result = 0.0;
  *algn_1EA9FBCE0 = 0u;
  *&algn_1EA9FBCE0[16] = 0u;
  byte_1EA9FBD00 = 2;
  return result;
}

double one-time initialization function for subtitle()
{
  static ToolbarItemPlacement.subtitle = 15;
  result = 0.0;
  unk_1EAA22308 = 0u;
  unk_1EAA22318 = 0u;
  byte_1EAA22328 = 2;
  return result;
}

double one-time initialization function for largeSubtitle()
{
  static ToolbarItemPlacement.largeSubtitle = 16;
  result = 0.0;
  unk_1EAA22338 = 0u;
  unk_1EAA22348 = 0u;
  byte_1EAA22358 = 2;
  return result;
}

double one-time initialization function for tabSidebar()
{
  qword_1EAA22380 = 0;
  result = 0.0;
  static ToolbarItemPlacement.tabSidebar = 0u;
  *algn_1EAA22370 = 0u;
  byte_1EAA22388 = 2;
  return result;
}

uint64_t assignWithCopy for ToolbarItemPlacement(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1);
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *a2;
      v6 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v5;
      *(a1 + 16) = v6;
    }
  }

  return a1;
}

uint64_t assignWithTake for ToolbarItemPlacement(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of ToolbarItemPlacement.Role(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemPlacement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarItemPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 assignWithCopy for ToolbarItemPlacement.Role(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (v2 == 1)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      v8 = a1;
      (**(v7 - 8))();
      *(v8 + 40) = 1;
    }

    else if (v6)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *(a1 + 25) = *(a2 + 25);
      *a1 = result;
      *(a1 + 16) = v9;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

__n128 assignWithTake for ToolbarItemPlacement.Role(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (v2 == 1)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getEnumTag for ToolbarItemPlacement.Role(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ToolbarItemPlacement.Role(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

double one-time initialization function for _navigationBarTrailing()
{
  static ToolbarItemPlacement._navigationBarTrailing = 25;
  result = 0.0;
  unk_1EAB09C88 = 0u;
  unk_1EAB09C98 = 0u;
  byte_1EAB09CA8 = 2;
  return result;
}

double one-time initialization function for _navigationBarLeading()
{
  static ToolbarItemPlacement._navigationBarLeading = 26;
  result = 0.0;
  unk_1EAB09CB8 = 0u;
  unk_1EAB09CC8 = 0u;
  byte_1EAB09CD8 = 2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolbarItemPlacement.Role()
{
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarItemPlacement.Role()
{
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ToolbarItemPlacement.Role.barLocation.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of ToolbarItemPlacement.Role(v1, v8);
  if (v9 == 1)
  {
    v7 = *&v8[16];
    *a1 = *v8;
    *(a1 + 16) = v7;
    *(a1 + 32) = *&v8[32];
    return result;
  }

  if (v9 != 2)
  {
    goto LABEL_51;
  }

  v4 = vorrq_s8(*&v8[8], *&v8[24]);
  v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  if (*v8 == 1 && *&v5 == 0)
  {
    goto LABEL_22;
  }

  if (*v8 == 2 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD79D60;
    return result;
  }

  if (*v8 == 8 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90780;
    return result;
  }

  if (*v8 == 9 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90770;
    return result;
  }

  if (*v8 == 10 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD7DD20;
    return result;
  }

  if (*v8 == 11 && !*&v5)
  {
    goto LABEL_22;
  }

  if (*v8 == 12 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD6A6D0;
    return result;
  }

  if (*v8 == 13 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90760;
    return result;
  }

  if (*v8 == 14 && !*&v5)
  {
    goto LABEL_22;
  }

  if (*v8 == 15 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90750;
    return result;
  }

  if (*v8 == 16 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD79540;
    return result;
  }

  if (*v8 == 17 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90740;
    return result;
  }

  if (*v8 == 18 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90730;
    return result;
  }

  if (*v8 == 19 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90720;
    return result;
  }

  if (*v8 == 20 && !*&v5)
  {
LABEL_22:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (*v8 == 29 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90710;
  }

  else
  {
LABEL_51:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return outlined destroy of ToolbarItemPlacement.Role(v8);
  }

  return result;
}

uint64_t EnvironmentValues.toolbarItemPlacement.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.toolbarItemPlacement.setter(uint64_t a1)
{
  outlined init with copy of ToolbarItemPlacement.Role(a1, v5);
  outlined init with copy of ToolbarItemPlacement.Role(v5, &v4);
  type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ToolbarItemPlacement.Role(a1);
  return outlined destroy of ToolbarItemPlacement.Role(v5);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ToolbarItemPlacementKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of ToolbarItemPlacement.Role(&static ToolbarItemPlacementKey.defaultValue, v2);
}

void type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>);
    }
  }
}

uint64_t View.navigationBarItems<A, B>(leading:trailing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for ToolbarItem();
  type metadata accessor for ToolbarItem();
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleToolbarContent();
  type metadata accessor for ToolbarModifier();
  v16 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v16);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a1;
  v27 = a2;
  View.toolbar<A>(content:)(partial apply for closure #1 in View.navigationBarItems<A, B>(leading:trailing:), v19, a3, v15, a6);
  v28 = a6;
  v29 = &protocol witness table for ToolbarModifier<A, B>;
  swift_getWitnessTable();
  return _UnaryViewAdaptor.init(_:)();
}

uint64_t closure #1 in View.navigationBarItems<A, B>(leading:trailing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v34 = a1;
  v42 = a6;
  v37 = *(a4 - 8);
  v38 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v41 = v10;
  v11 = type metadata accessor for ToolbarItem();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a5;
  v21 = type metadata accessor for ToolbarItem();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v33 - v26;
  if (one-time initialization token for _navigationBarLeading != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement._navigationBarLeading, v43);
  (*(v17 + 16))(v20, v34, a3);
  ToolbarItem<>.init(placement:content:)(v43, v20, a3, v24);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v24, v21, &protocol witness table for ToolbarItem<A, B>);
  v28 = *(v22 + 8);
  v28(v24, v21);
  if (one-time initialization token for _navigationBarTrailing != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement._navigationBarTrailing, v43);
  v29 = v36;
  v30 = v40;
  (*(v37 + 16))(v36, v38, v40);
  ToolbarItem<>.init(placement:content:)(v43, v29, v30, v13);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v13, v11, &protocol witness table for ToolbarItem<A, B>);
  v31 = *(v39 + 8);
  v31(v13, v11);
  static ToolbarContentBuilder.buildBlock<A, B>(_:_:)(v27, v16, v21, v11, v42);
  v31(v16, v11);
  return v28(v27, v21);
}

uint64_t View.navigationBarItems<A>(leading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(double))
{
  type metadata accessor for ToolbarItem();
  v12 = type metadata accessor for TupleToolbarContent();
  type metadata accessor for ToolbarModifier();
  v13 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v13);
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a1;
  View.toolbar<A>(content:)(a6, v15, a2, v12, a4);
  v21 = a4;
  v22 = &protocol witness table for ToolbarModifier<A, B>;
  swift_getWitnessTable();
  return _UnaryViewAdaptor.init(_:)();
}

uint64_t closure #1 in View.navigationBarItems<A>(leading:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v21[1] = a5;
  v22 = a1;
  v23 = a6;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolbarItem();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v21 - v17;
  if (*a3 != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(a4, v24);
  (*(v9 + 16))(v11, v22, a2);
  ToolbarItem<>.init(placement:content:)(v24, v11, a2, v15);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v15, v12, &protocol witness table for ToolbarItem<A, B>);
  v19 = *(v13 + 8);
  v19(v15, v12);
  static ToolbarContentBuilder.buildBlock<A>(_:)(v18, v12, &protocol witness table for ToolbarItem<A, B>);
  return v19(v18, v12);
}

uint64_t View.menuSourcePresentationDisabled(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.disableMenuSourcePresentation.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.disableMenuSourcePresentation : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.disableMenuSourcePresentation : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);
    }
  }
}

uint64_t TooltipResponder.__allocating_init(inputs:)()
{
  v0 = swift_allocObject();
  v0[28] = 0;
  v0[29] = 0;
  v0[27] = 0;
  static CGSize.invalidValue.getter();
  v0[30] = v1;
  v0[31] = v2;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t protocol witness for Rule.value.getter in conformance TooltipModifier.ResolveText@<X0>(uint64_t *a1@<X8>)
{
  result = TooltipModifier.ResolveText.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance TooltipModifier.TransformPlatformItems@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in TooltipModifier.TransformPlatformItems.value.getter;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t closure #1 in TooltipResponder.text.getter@<X0>(void *a1@<X8>)
{
  AGGraphClearUpdate();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_6;
  }

  v4 = *WeakValue;
  v3 = WeakValue[1];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = *WeakValue & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
LABEL_6:
    v4 = 0;
    v3 = 0;
  }

  result = AGGraphSetUpdate();
  *a1 = v4;
  a1[1] = v3;
  return result;
}

double TooltipResponder.globalFrame.getter()
{
  v1 = *(v0 + 264);
  v12 = *(v0 + 256);
  v13 = v1;
  v2 = *(v0 + 288);
  v14 = *(v0 + 272);
  v15 = v2;
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);

  ViewTransform.appendPosition(_:)(__PAIR128__(v4, v3));
  v9 = 0.0;
  v10 = 0;
  v11 = *(v0 + 240);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 2;

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v6);

  return v9;
}

Swift::Void __swiftcall TooltipResponder.extendPrintTree(string:)(Swift::String *string)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  if (v4)
  {
    v1 = v3;
  }

  else
  {
    v1 = 7104878;
  }

  if (v4)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x18D00C9B0](v1, v2);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  MEMORY[0x18D00C9B0](0x207069746C6F6F74, 0xE900000000000028);
}

uint64_t TooltipResponder.__allocating_init(inputs:viewSubgraph:)()
{
  v0 = swift_allocObject();
  v0[28] = 0;
  v0[29] = 0;
  v0[27] = 0;
  static CGSize.invalidValue.getter();
  v0[30] = v1;
  v0[31] = v2;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t TooltipResponder.__ivar_destroyer()
{
}

uint64_t TooltipResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t assignWithTake for TooltipModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void type metadata accessor for _SemanticFeature<Semantics_v5>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>);
    }
  }
}

uint64_t assignWithCopy for TooltipModifier.TooltipResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TooltipModifier.TooltipResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TooltipModifier.TooltipResponderUpdater(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for TooltipModifier.TooltipResponderUpdater(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static EntityGestureResponderFactory.makeGestureContainer(parentView:entities:)(void *a1, uint64_t a2)
{
  v48 = *(a2 + 16);
  if (!v48)
  {
    return 0;
  }

  v4 = a1;
  v5 = [v4 _parentGestureRecognizerContainer];
  swift_unknownObjectRetain();
  v47 = v4;
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    swift_unknownObjectRelease();
    if (v6)
    {
      break;
    }

    v7 = [v5 _parentGestureRecognizerContainer];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v5 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  ObjectType = swift_getObjectType();
  v10 = (*(v6 + 16))(ObjectType, v6);
  if (!v10)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v11 = v10;

  while (1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    type metadata accessor for RootEntityGestureResponder(0);
    v13 = swift_dynamicCastClass();

    if (v13)
    {
      break;
    }

    type metadata accessor for DefaultLayoutViewResponder();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v13 = v14;
      break;
    }
  }

  v45[1] = v11;
  v45[2] = v5;
  v46 = a1;
  v45[0] = Strong;
  swift_retain_n();
  swift_beginAccess();
  v15 = v48 - 1;
  v16 = (a2 + 16 * v48 + 24);
  v17 = v13;
  while (v15 < v48)
  {
    v55 = v15;
    v56 = v17;
    v38 = *(v16 - 1);
    v37 = *v16;
    v39 = swift_getObjectType();
    v40 = *(v37 + 24);
    swift_unknownObjectRetain();
    v57 = v39;
    v54 = v37;
    v41 = v40(v39, v37);

    if (v41)
    {
      type metadata accessor for EntityGestureResponder(0);
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v33 = v42;
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    v18 = v54;
    (*(v54 + 16))(v61, v57, v54);
    v19 = v62;
    v20 = v63;
    v21 = __swift_project_boxed_opaque_existential_1(v61, v62);
    v53 = type metadata accessor for EntityGestureResponder(0);
    v22 = *(v13 + 136);
    v64[2] = *(v13 + 120);
    v64[3] = v22;
    v64[4] = *(v13 + 152);
    v65 = *(v13 + 168);
    v23 = *(v13 + 104);
    v64[0] = *(v13 + 88);
    v64[1] = v23;
    v24 = *(v13 + 120);
    v25 = *(v13 + 152);
    v59[3] = *(v13 + 136);
    v59[4] = v25;
    v60 = *(v13 + 168);
    v26 = *(v13 + 104);
    v59[0] = *(v13 + 88);
    v59[1] = v26;
    v59[2] = v24;
    v49 = *(v13 + 176);
    v51 = swift_unknownObjectWeakLoadStrong();
    v52 = v45;
    v50 = *(v13 + 24);
    v27 = MEMORY[0x1EEE9AC00](v51);
    v29 = v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29, v21, v19, v27);
    v31 = v47;
    swift_unknownObjectRetain();
    v32 = v56;

    outlined init with copy of _ViewInputs(v64, &v58);
    v33 = swift_allocObject();
    v34 = v49;
    EntityGestureResponder.init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(v32, v59, v34, v51, v50, v46, v38, v29, v44, v19, v18, v20);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v35 = *(v18 + 32);

    v35(v36, v57, v18);
LABEL_16:

    swift_unknownObjectRelease();

    v15 = v55 - 1;
    v16 -= 2;
    v17 = v33;
    if (!v55)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:

  v43 = EntityGestureResponder.gestureContainer.getter();

  swift_unknownObjectRelease();
  return v43;
}

uint64_t EntityGestureResponder.__allocating_init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  EntityGestureResponder.init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, a10, a11, a12);
  return v20;
}

uint64_t EntityGestureResponder.gestureContainer.getter()
{
  if (*(v0 + 240))
  {
    return swift_unknownObjectRetain();
  }

  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v1 = *(v0 + 88);
  v11[2] = *(v0 + 72);
  v11[3] = v1;
  v11[4] = *(v0 + 104);
  v12 = *(v0 + 120);
  v2 = *(v0 + 56);
  v11[0] = *(v0 + 40);
  v11[1] = v2;
  v7 = *(v0 + 72);
  v8 = *(v0 + 88);
  v9 = *(v0 + 104);
  v10 = *(v0 + 120);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(&lazy protocol witness table cache variable for type EntityGestureResponder and conformance EntityGestureResponder);
  outlined init with copy of _ViewInputs(v11, v13);
  v3 = _ViewInputs.makeGestureContainer(responder:)();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v14 = v10;
  v13[0] = v5;
  v13[1] = v6;
  outlined destroy of _ViewInputs(v13);
  *(v0 + 240) = v3;
  swift_unknownObjectRelease();
  result = *(v0 + 240);
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t RootEntityGestureResponder.children.getter()
{
  type metadata accessor for DefaultLayoutViewResponder();
  v1 = method lookup function for ViewResponder();
  v16 = v1();
  swift_beginAccess();
  v2 = *(v0 + 216);
  v3 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = MEMORY[0x1E6981A78];
      outlined init with copy of WeakBox<EntityGestureResponder>(*(v2 + 56) + ((v8 << 9) | (8 * v9)), v17, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
      Strong = swift_weakLoadStrong();
      v12 = outlined destroy of WeakBox<EntityGestureResponder>(v17, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, v10, type metadata accessor for WeakBox<EntityGestureResponder>);
      if (Strong)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x18D00CC30](v12);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = v18;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v13);
    ++v8;
    if (v6)
    {
      v8 = v13;
      goto LABEL_4;
    }
  }

  if (!(v3 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for ViewResponder();
    v14 = v3;
    goto LABEL_16;
  }

LABEL_18:
  type metadata accessor for ViewResponder();

  v14 = _bridgeCocoaArray<A>(_:)();

LABEL_16:

  v18 = v16;
  specialized Array.append<A>(contentsOf:)(v14);
  return v18;
}

uint64_t RootEntityGestureResponder.children.setter(uint64_t a1)
{
  type metadata accessor for DefaultLayoutViewResponder();
  v2 = method lookup function for MultiViewResponder();

  return v2(a1);
}

uint64_t (*RootEntityGestureResponder.children.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = RootEntityGestureResponder.children.getter();
  return RootEntityGestureResponder.children.modify;
}

uint64_t RootEntityGestureResponder.children.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  type metadata accessor for DefaultLayoutViewResponder();
  v4 = method lookup function for MultiViewResponder();
  if ((a2 & 1) == 0)
  {
    return v4(v3);
  }

  v4(v5);
}

uint64_t RootEntityGestureResponder.addChild(responder:)()
{
  swift_beginAccess();

  v2 = specialized Dictionary.compactMapValues<A>(_:)(v1);

  *(v0 + 216) = v2;

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_getObjectType();
  v7 = Strong;
  v8[3] = swift_getAssociatedTypeWitness();
  v8[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v8);
  dispatch thunk of Identifiable.id.getter();
  swift_unknownObjectRelease();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Hashable);
  swift_dynamicCast();
  swift_weakInit();
  swift_weakAssign();
  v5[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v6);
  swift_endAccess();
  swift_beginAccess();
  swift_weakLoadStrong();

  return swift_weakAssign();
}

uint64_t RootEntityGestureResponder.__allocating_init(inputs:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_7SwiftUI7WeakBoxVyAE22EntityGestureResponderCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t RootEntityGestureResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t RootEntityGestureResponderFilter.responder.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 96);
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v4 = *(v0 + 56);
    v18 = *(v0 + 40);
    v19 = v4;
    v20 = *(v0 + 72);
    v21 = *(v0 + 88);
    v5 = *(v0 + 24);
    v16 = *(v0 + 8);
    v17 = v5;
    type metadata accessor for RootEntityGestureResponder(0);
    v6 = swift_allocObject();
    *(v6 + 216) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_7SwiftUI7WeakBoxVyAE22EntityGestureResponderCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v10 = v16;
    v11 = v17;
    v12 = v18;
    outlined init with copy of _ViewInputs(&v16, v9);
    v7 = v0;
    v1 = DefaultLayoutViewResponder.init(inputs:)();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v7 + 104) = v1;
  }

  return v1;
}

Swift::Void __swiftcall RootEntityGestureResponderFilter.updateValue()()
{
  RootEntityGestureResponderFilter.responder.getter();
  type metadata accessor for WeakBox<EntityGestureResponder>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v0)
  {
    type metadata accessor for DefaultLayoutViewResponder();
    v1 = method lookup function for MultiViewResponder();

    v1(v2);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18CD69590;
    *(v3 + 32) = RootEntityGestureResponderFilter.responder.getter();
    AGGraphSetOutputValue();
  }
}

uint64_t static RootEntityGestureResponderModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, void *a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v28 = a2[2];
  v6 = a2[2];
  v29 = a2[3];
  v7 = a2[3];
  v30 = a2[4];
  v8 = a2[1];
  v26 = *a2;
  v9 = *a2;
  v27 = v8;
  *&v22[32] = v6;
  *&v22[48] = v7;
  *&v22[64] = a2[4];
  v31 = *(a2 + 20);
  *&v22[80] = *(a2 + 20);
  *v22 = v9;
  *&v22[16] = v5;
  a3(&v12, a1, v22);
  *v22 = v29;
  *&v22[8] = DWORD2(v29);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((result & 1) == 0)
  {
    goto LABEL_4;
  }

  *v22 = v12;
  *&v22[8] = v13;

  v11 = _ViewOutputs.viewResponders()();

  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v25[4] = v26;
    *&v25[20] = v27;
    *&v25[36] = v28;
    *&v25[52] = v29;
    *&v25[68] = v30;
    *&v25[84] = v31;
    *v22 = v11;
    *&v22[4] = *v25;
    *&v22[20] = *&v25[16];
    *&v22[84] = *&v25[80];
    *&v22[68] = *&v25[64];
    *&v22[52] = *&v25[48];
    *&v22[36] = *&v25[32];
    v23 = result;
    v24 = 0;
    v20 = *&v22[80];
    v21 = result;
    v15 = *v22;
    v16 = *&v22[16];
    v18 = *&v22[48];
    v19 = *&v22[64];
    v17 = *&v22[32];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    outlined init with copy of _ViewInputs(&v26, v14);
    type metadata accessor for WeakBox<EntityGestureResponder>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of RootEntityGestureResponderFilter(v22);
    LOBYTE(v15) = 0;
    result = PreferencesOutputs.subscript.setter();
LABEL_4:
    *a4 = v12;
    a4[1] = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t EntityGestureResponder.gestureGraph.getter()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(&lazy protocol witness table cache variable for type EntityGestureResponder and conformance EntityGestureResponder);
    type metadata accessor for GestureGraph();
    swift_allocObject();

    v1 = GestureGraph.init(rootResponder:)();
    *(v0 + 216) = v1;
  }

  return v1;
}

uint64_t EntityGestureResponder.bindingBridge.getter()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v2 = *(v0 + 88);
    v15[2] = *(v0 + 72);
    v15[3] = v2;
    v15[4] = *(v0 + 104);
    v16 = *(v0 + 120);
    v3 = *(v0 + 56);
    v15[0] = *(v0 + 40);
    v15[1] = v3;
    v11 = *(v0 + 72);
    v12 = *(v0 + 88);
    v13 = *(v0 + 104);
    v14 = *(v0 + 120);
    v9 = *(v0 + 40);
    v10 = *(v0 + 56);
    outlined init with copy of _ViewInputs(v15, v17);
    v4 = v0;
    EntityGestureResponder.gestureGraph.getter();

    lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(&lazy protocol witness table cache variable for type EntityGestureResponder and conformance EntityGestureResponder);
    v1 = _ViewInputs.makeEventBindingBridge(bindingManager:responder:)();
    v6 = v5;

    v17[2] = v11;
    v17[3] = v12;
    v17[4] = v13;
    v18 = v14;
    v17[0] = v9;
    v17[1] = v10;
    outlined destroy of _ViewInputs(v17);
    v7 = v4[27];
    swift_beginAccess();
    *(v7 + 200) = v6;
    swift_unknownObjectWeakAssign();
    v4[28] = v1;
    v4[29] = v6;
  }

  return v1;
}

uint64_t closure #1 in EntityGestureResponder.makeGesture(inputs:)(__int128 *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v17 = a1[4];
  v18 = v2;
  v19[0] = a1[6];
  *(v19 + 12) = *(a1 + 108);
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = a1[3];
  v15 = a1[2];
  v16 = v4;
  outlined init with copy of _Benchmark(a2 + 160, v20);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA20]);
  lazy protocol witness table accessor for type EntityGestureRule and conformance EntityGestureRule();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of _PresentationTransitionOutputs(v20);
  v10 = v17;
  v11 = v18;
  *v12 = v19[0];
  *&v12[12] = *(v19 + 12);
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  outlined init with copy of _GestureInputs(&v13, v20);
  static AnyGesture._makeGesture(gesture:inputs:)();
  v20[4] = v10;
  v20[5] = v11;
  v21[0] = *v12;
  *(v21 + 12) = *&v12[12];
  v20[0] = v6;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  return outlined destroy of _GestureInputs(v20);
}

Swift::Void __swiftcall EntityGestureResponder.resetGesture()()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  *(v0 + 200) = 0;

  swift_beginAccess();
  v2 = *(v0 + 208);
  *(v0 + 208) = 0;
}

uint64_t EntityGestureResponder.children.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 248);
  v2 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = MEMORY[0x1E6981A78];
      outlined init with copy of WeakBox<EntityGestureResponder>(*(v1 + 56) + ((v8 << 9) | (8 * v9)), v13, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
      Strong = swift_weakLoadStrong();
      result = outlined destroy of WeakBox<EntityGestureResponder>(v13, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, v10, type metadata accessor for WeakBox<EntityGestureResponder>);
      if (Strong)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x18D00CC30](result);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v14;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(v1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t EntityGestureResponder.addChild(responder:)()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_getObjectType();
  v4 = Strong;
  v5[3] = swift_getAssociatedTypeWitness();
  v5[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v5);
  dispatch thunk of Identifiable.id.getter();
  swift_unknownObjectRelease();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Hashable);
  swift_dynamicCast();
  swift_weakInit();
  swift_weakAssign();
  v2[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v2, v3);
  swift_endAccess();
  swift_beginAccess();
  swift_weakLoadStrong();

  return swift_weakAssign();
}

uint64_t EntityGestureResponder.init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  swift_unknownObjectWeakInit();
  *(v13 + 232) = 0u;
  *(v13 + 216) = 0u;
  *(v13 + 200) = 0u;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_7SwiftUI7WeakBoxVyAE22EntityGestureResponderCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v20 = *(a2 + 48);
  *(v13 + 72) = *(a2 + 32);
  *(v13 + 88) = v20;
  *(v13 + 104) = *(a2 + 64);
  v21 = *(a2 + 16);
  *(v13 + 40) = *a2;
  *(v13 + 248) = v19;
  *(v13 + 120) = *(a2 + 80);
  *(v13 + 56) = v21;
  *(v13 + 128) = a3;
  swift_unknownObjectWeakAssign();
  *(v13 + 152) = a11;
  swift_unknownObjectUnownedInit();
  *(v13 + 184) = a10;
  *(v13 + 192) = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 160));
  v23 = *(a10 - 8);
  (*(v23 + 16))(boxed_opaque_existential_1, a8, a10);
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v13 + 24) = a5;
  swift_unknownObjectWeakAssign();
  v32 = a1;
  type metadata accessor for ViewResponder();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EntityGestureParentResponder);
  v24 = a3;

  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v30, v33);
    v25 = v34;
    v26 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v26 + 8))(v13, v25, v26);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v23 + 8))(a8, a10);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    outlined destroy of WeakBox<EntityGestureResponder>(v30, &lazy cache variable for type metadata for EntityGestureParentResponder?, &lazy cache variable for type metadata for EntityGestureParentResponder, &protocol descriptor for EntityGestureParentResponder, type metadata accessor for IntelligenceSubelementProviding?);
    static os_log_type_t.fault.getter();
    v27 = static Log.eventDebuggingLog.getter();
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    swift_weakLoadStrong();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v23 + 8))(a8, a10);
    swift_weakAssign();
  }

  return v13;
}

uint64_t EntityGestureResponder.__ivar_destroyer()
{
  v1 = *(v0 + 88);
  v4[2] = *(v0 + 72);
  v4[3] = v1;
  v4[4] = *(v0 + 104);
  v5 = *(v0 + 120);
  v2 = *(v0 + 56);
  v4[0] = *(v0 + 40);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  MEMORY[0x18D011290](v0 + 136);
  outlined destroy of unowned EntityWithGesture(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  swift_unknownObjectRelease();
}

uint64_t EntityGestureResponder.deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  swift_weakDestroy();
  v1 = *(v0 + 88);
  v4[2] = *(v0 + 72);
  v4[3] = v1;
  v4[4] = *(v0 + 104);
  v5 = *(v0 + 120);
  v2 = *(v0 + 56);
  v4[0] = *(v0 + 40);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  MEMORY[0x18D011290](v0 + 136);
  outlined destroy of unowned EntityWithGesture(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t EntityGestureResponder.__deallocating_deinit()
{
  EntityGestureResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnyGestureResponder.inputs.getter in conformance EntityGestureResponder@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v4 = *(v1 + 104);
  v10 = *(v1 + 88);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 120);
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

void *protocol witness for AnyGestureResponder.childSubgraph.getter in conformance EntityGestureResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childSubgraph.setter in conformance EntityGestureResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  *(v1 + 200) = a1;
}

void *protocol witness for AnyGestureResponder.childViewSubgraph.getter in conformance EntityGestureResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childViewSubgraph.setter in conformance EntityGestureResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 208);
  *(v1 + 208) = a1;
}

uint64_t protocol witness for AnyGestureContainingResponder.eventSources.getter in conformance EntityGestureResponder()
{
  EntityGestureResponder.bindingBridge.getter();
  v0 = dispatch thunk of EventBindingBridge.eventSources.getter();

  return v0;
}

uint64_t protocol witness for AnyGestureContainingResponder.isValid.getter in conformance EntityGestureResponder()
{
  if (*(v0 + 240))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

uint64_t EntityGestureRule.updateValue()()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E7CA8];
  type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA20]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for EmptyGesture<()>, v1 + 8, MEMORY[0x1E697DE40]);
    lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>();
    v8[0] = AnyGesture.init<A>(_:)();
    AGGraphSetOutputValue();
  }

  outlined init with copy of WeakBox<EntityGestureResponder>(v0, &v6, &lazy cache variable for type metadata for Gesture?, &lazy cache variable for type metadata for Gesture, MEMORY[0x1E69819D8], type metadata accessor for IntelligenceSubelementProviding?);
  if (!v7)
  {
    return outlined destroy of WeakBox<EntityGestureResponder>(&v6, &lazy cache variable for type metadata for Gesture?, &lazy cache variable for type metadata for Gesture, MEMORY[0x1E69819D8], type metadata accessor for IntelligenceSubelementProviding?);
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v6, v8);
  v2 = v9;
  v3 = v10;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *&v6 = anyGesture #1 <A>(_:) in EntityGestureRule.updateValue()(v4, v2, v3);
  AGGraphSetOutputValue();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t anyGesture #1 <A>(_:) in EntityGestureRule.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _MapGesture();
  MEMORY[0x1EEE9AC00](v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  Gesture.map<A>(_:)();

  swift_getWitnessTable();
  return AnyGesture.init<A>(_:)();
}

uint64_t outlined init with take of (key: UInt64, value: WeakBox<EntityGestureResponder>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: UInt64, value: WeakBox<EntityGestureResponder>)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (key: UInt64, value: WeakBox<EntityGestureResponder>)()
{
  if (!lazy cache variable for type metadata for (key: UInt64, value: WeakBox<EntityGestureResponder>))
  {
    type metadata accessor for WeakBox<EntityGestureResponder>(255, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: UInt64, value: WeakBox<EntityGestureResponder>));
    }
  }
}

uint64_t outlined destroy of (key: UInt64, value: WeakBox<EntityGestureResponder>)(uint64_t a1)
{
  type metadata accessor for (key: UInt64, value: WeakBox<EntityGestureResponder>)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EntityGestureResponder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for WeakBox<EntityGestureResponder>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter()
{
  result = lazy protocol witness table cache variable for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter;
  if (!lazy protocol witness table cache variable for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityGestureRule and conformance EntityGestureRule()
{
  result = lazy protocol witness table cache variable for type EntityGestureRule and conformance EntityGestureRule;
  if (!lazy protocol witness table cache variable for type EntityGestureRule and conformance EntityGestureRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityGestureRule and conformance EntityGestureRule);
  }

  return result;
}

void type metadata accessor for AnyGesture<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>()
{
  result = lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>;
  if (!lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>)
  {
    type metadata accessor for AnyGesture<()>(255, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DE40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>);
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<EntityGestureResponder>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [ViewResponder] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ViewResponder] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ViewResponder] and conformance [A])
  {
    type metadata accessor for WeakBox<EntityGestureResponder>(255, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ViewResponder] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of WeakBox<EntityGestureResponder>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

__n128 assignWithCopy for EntityGestureRule(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v2)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = *a2;
      v6 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v6;
    }
  }

  else if (v2)
  {
    *(a1 + 24) = v2;
    *(a1 + 32) = *(a2 + 32);
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v7 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v7;
  }

  return result;
}

__n128 assignWithTake for EntityGestureRule(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t destroy for RootEntityGestureResponderFilter(uint64_t a1)
{
}

uint64_t initializeWithCopy for RootEntityGestureResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for RootEntityGestureResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
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
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for RootEntityGestureResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t storeEnumTagSinglePayload for RootEntityGestureResponderFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.transactionalAnchorPreferenceTransform<A, B>(key:value:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v10 = type metadata accessor for TransactionalAnchorPreferenceTransformModifier();

  MEMORY[0x18D00A570](v12, a5, v10, a8);
}

uint64_t static TransactionalAnchorPreferenceTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v29 = *MEMORY[0x1E69E9840];
  v28[0] = *a2;
  *(v28 + 12) = *(a2 + 12);
  v3 = *(a2 + 28);
  v14 = *(a2 + 32);
  v4 = *(a2 + 48);
  v6 = *(a2 + 56);
  v5 = *(a2 + 60);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  *&v20[20] = *(&v28[1] + 4);
  v21 = v3;
  v22 = v14;
  v23 = v4;
  v24 = v6;
  v25 = v5;
  v26 = v12;
  v27 = v13;
  *v20 = _GraphValue.value.getter();
  *&v20[4] = _ViewInputs.animatedPosition()();
  *&v20[8] = _ViewInputs.animatedCGSize()();
  *&v20[12] = v5;
  *&v20[16] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v17 = type metadata accessor for TransactionalAnchorTransform();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v15, v17, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v9 = AGGraphSetFlags();
  *v20 = v28[0];
  *&v20[12] = *(v28 + 12);
  v21 = v3;
  v22 = v14;
  v23 = v4;
  v24 = v6;
  v25 = v5;
  v26 = v12;
  v27 = v13;
  a3(v9, v20);
  *v20 = v4;
  *&v20[8] = v6;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t TransactionalAnchorTransform.modifier.getter()
{
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier();
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TransactionalAnchorPreferenceTransformModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t (*TransactionalAnchorTransform.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  AGGraphClearUpdate();
  v9 = *AGGraphGetValue();

  AGGraphSetUpdate();
  AnchorGeometry.init(position:size:transform:)();
  v10 = TransactionalAnchorTransform.modifier.getter();
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  *(v15 + 56) = v14;
  *(v15 + 64) = v17;
  *(v15 + 72) = v18;
  *(v15 + 80) = v9;
  return partial apply for closure #2 in TransactionalAnchorTransform.value.getter;
}

uint64_t (*protocol witness for Rule.value.getter in conformance TransactionalAnchorTransform<A, B>@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = TransactionalAnchorTransform.value.getter(v5, v4, v6, v7, v8, v9);
  v12 = v11;
  result = swift_allocObject();
  *(result + 2) = v7;
  *(result + 3) = v8;
  *(result + 4) = v9;
  *(result + 5) = v10;
  *(result + 6) = v12;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout B.PreferenceKey.Value) -> ();
  a2[1] = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TransactionalAnchorTransform<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t partial apply for closure #2 in TransactionalAnchorTransform.value.getter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 80);
  v5 = Anchor.Source.prepare(geometry:)();
  v3(a1, v5, v4);
}

unint64_t specialized TransactionalAnchorTransform.description.getter()
{
  _StringGuts.grow(_:)(32);

  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x18D00C9B0](v0);

  return 0xD00000000000001ELL;
}

Swift::Void __swiftcall UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)(Swift::Bool isAnimated, Swift::Bool shouldDefer)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 40);
    v6 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v8 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    swift_unknownObjectWeakInit();

    if (shouldDefer)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = isAnimated;
      *(v9 + 24) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
      *(v9 + 32) = v6;

      onNextMainRunLoop(do:)();
    }

    else if (isAnimated)
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
      *(v11 + 24) = v6;
      v15[4] = closure #1 in update #1 () in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)partial apply;
      v15[5] = v11;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = thunk for @escaping @callee_guaranteed () -> ();
      v15[3] = &block_descriptor_25;
      v12 = _Block_copy(v15);

      [v10 animateWithDuration:v12 animations:0.3];

      _Block_release(v12);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;

        [v14 setNeedsStatusBarAppearanceUpdate];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LayoutSubview.containerValues.getter@<X0>(void *a1@<X8>)
{
  result = LayoutProxy.traits.getter();
  if (v3)
  {
    *a1 = v3;
  }

  else
  {

    return MEMORY[0x1EEDDF020](result);
  }

  return result;
}

__n128 DefaultToolbarItem.init(kind:placement:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 25);
  *(a3 + 33) = result;
  return result;
}

uint64_t DefaultToolbarItem.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + 8);
  v4 = *v1;
  result = outlined init with copy of ToolbarItemPlacement(v3, (a1 + 8));
  *a1 = v4;
  return result;
}

uint64_t static DefaultToolbarItem.InternalContent._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v16 = a2[2];
  v17[0] = v5;
  *(v17 + 12) = *(a2 + 60);
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v11 = v16;
  *v12 = a2[3];
  *&v12[12] = *(a2 + 60);
  v7 = *a1;
  v9 = v15[0];
  v10 = v4;
  outlined init with copy of _ToolbarInputs(v15, v18);
  PreferenceKeys.remove(_:)();
  LODWORD(v18[0]) = v7;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>(0, &lazy cache variable for type metadata for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>, type metadata accessor for ToolbarItem);
  lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem();
  Attribute.init<A>(body:value:flags:update:)();
  v13[2] = v11;
  v14[0] = *v12;
  *(v14 + 12) = *&v12[12];
  v13[0] = v9;
  v13[1] = v10;
  _s7SwiftUI11ToolbarItemV05_makeC07content6inputsAA01_C7OutputsVAA11_GraphValueVyACyxq_GG_AA01_C6InputsVtFZyt_AA17_UnaryViewAdaptorVyAA05EmptyM0VGTt2B5(v13, a3);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v18[2] = v11;
  v19[0] = *v12;
  *(v19 + 12) = *&v12[12];
  v18[0] = v9;
  v18[1] = v10;
  return outlined destroy of _ToolbarInputs(v18);
}

uint64_t implicit closure #1 in static DefaultToolbarItem.InternalContent._makeToolbar(content:inputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn();
  return Attribute.init<A>(body:value:flags:update:)();
}

__n128 DefaultToolbarItem.InternalContent.MakeToolbarItem.value.getter@<Q0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of DefaultToolbarItem.InternalContent(Value, v7);
  v5 = v8;
  *v6 = v9[0];
  *&v6[9] = *(v9 + 9);
  if (*AGGraphGetValue() == 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 5;
  }

  *a1 = v5;
  *(a1 + 16) = *v6;
  result = *&v6[9];
  *(a1 + 25) = *&v6[9];
  *(a1 + 41) = 1;
  *(a1 + 43) = v3;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance DefaultToolbarItem.InternalContent.MakeToolbarItem@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 512;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DefaultToolbarItem.InternalContent.WriteSearchColumn@<X0>(BOOL *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of DefaultToolbarItem.InternalContent(Value, v5);
  v3 = v5[0];
  result = outlined destroy of DefaultToolbarItem.InternalContent(v5);
  *a1 = v3 == 3;
  return result;
}

uint64_t protocol witness for ToolbarContent.body.getter in conformance DefaultToolbarItem@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + 8);
  v4 = *v1;
  result = outlined init with copy of ToolbarItemPlacement(v3, (a1 + 8));
  *a1 = v4;
  return result;
}

__n128 initializeWithCopy for DefaultToolbarItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 48) == 1)
  {
    v2 = *(a2 + 32);
    *(a1 + 32) = v2;
    (**(v2 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v5;
    result = *(a2 + 33);
    *(a1 + 33) = result;
  }

  return result;
}

uint64_t assignWithCopy for DefaultToolbarItem(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v6 = *(a2 + 32);
      *(a1 + 32) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(v4, v3);
      *(a1 + 48) = 1;
    }

    else
    {
      v7 = *v3;
      v8 = v3[1];
      *(v4 + 25) = *(v3 + 25);
      *v4 = v7;
      v4[1] = v8;
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for DefaultToolbarItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultToolbarItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI11ToolbarItemV05_makeC07content6inputsAA01_C7OutputsVAA11_GraphValueVyACyxq_GG_AA01_C6InputsVtFZyt_AA17_UnaryViewAdaptorVyAA05EmptyM0VGTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v28[0] = AGGraphCreateOffsetAttribute2();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>();
  type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>.MakeView(0);
  lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>.MakeView and conformance ToolbarItem<A, B>.MakeView, type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>.MakeView);
  v15 = Attribute.init<A>(body:value:flags:update:)();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v4 = *(a1 + 16);
  v30 = *a1;
  v31 = v4;
  v6 = *a1;
  v5 = *(a1 + 16);
  v32 = *(a1 + 32);
  v22 = v6;
  v23 = v5;
  v24 = *(a1 + 32);
  outlined init with copy of _GraphInputs(&v30, v28);
  _ViewListInputs.init(_:)();
  if ((~v29 & 0xC) != 0)
  {
    v29 |= 0xCuLL;
  }

  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for SubscriptionLifetime<ObservableObjectPublisher>, MEMORY[0x1E697FA78]);
  swift_allocObject();
  outlined init with copy of _GraphInputs(&v30, &v22);
  v7 = SubscriptionLifetime.init()();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v22 = v30;
  v23 = v31;
  v24 = v32;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  AGCreateWeakAttribute();
  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for AttributeInvalidatingSubscriber<ObservableObjectPublisher>, MEMORY[0x1E6980A48]);
  swift_allocObject();
  v9 = AttributeInvalidatingSubscriber.init(host:attribute:)();
  *&v20[0] = __PAIR64__(v8, OffsetAttribute2);
  *(&v20[2] + 8) = v24;
  *(&v20[1] + 8) = v23;
  *(v20 + 8) = v22;
  *(&v20[3] + 1) = v9;
  v21 = v7;
  v24 = v20[2];
  v25 = v20[3];
  *&v26 = v7;
  v22 = v20[0];
  v23 = v20[1];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarPlacementEnvironment(v20, v19);
  lazy protocol witness table accessor for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarPlacementEnvironment(v20);
  _GraphInputs.environment.setter();
  LODWORD(v19[0]) = v15;
  lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
  static View.makeDebuggableViewList(view:inputs:)();
  v10 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of ToolbarPlacementEnvironment(v20);
  outlined destroy of _ViewListOutputs(&v22);
  outlined destroy of _ViewListInputs(v28);
  outlined init with copy of _ToolbarInputs(a1, &v22);
  _s7SwiftUI18ToolbarMakeEntriesV9placement11toolbarItem8viewList6inputsAC14AttributeGraph0L0VyAA0cH9PlacementVG_AJyAA0cH0Vyxq_GGAJyAA04ViewJ0_pGAA01_C6InputsVtcAA0O0R_r0_lufCyt_AA06_UnaryO7AdaptorVyAA05EmptyO0VGTt4B5(OffsetAttribute2, v10, a1, &v22);
  v19[2] = v24;
  v19[3] = v25;
  v19[4] = v26;
  v19[5] = v27;
  v19[0] = v22;
  v19[1] = v23;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarMakeEntries(&v22, &v17);
  type metadata accessor for [ToolbarStorage.Entry]();
  lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarMakeEntries(&v22);
  *&v19[0] = *(a1 + 48);
  DWORD2(v19[0]) = *(a1 + 56);
  v11 = *(a1 + 64) + 1;
  outlined init with copy of PreferencesInputs(v19, &v17);
  v12 = PreferencesOutputs.init()();
  v13 = v18;
  *a2 = v17;
  *(a2 + 8) = v13;
  *(a2 + 16) = v11;
  v17 = *&v19[0];
  v18 = DWORD2(v19[0]);
  MEMORY[0x1EEE9AC00](v12);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  outlined destroy of ToolbarMakeEntries(&v22);
}

uint64_t _s7SwiftUI18ToolbarMakeEntriesV9placement11toolbarItem8viewList6inputsAC14AttributeGraph0L0VyAA0cH9PlacementVG_AJyAA0cH0Vyxq_GGAJyAA04ViewJ0_pGAA01_C6InputsVtcAA0O0R_r0_lufCyt_AA06_UnaryO7AdaptorVyAA05EmptyO0VGTt4B5@<X0>(int a1@<W0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v23 = *(a3 + 72);
  v21 = *(a3 + 24);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for ToString<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for ToString);
  lazy protocol witness table accessor for type ToString<()> and conformance ToString<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for toolbarTransitionIdentifier != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarMatchedTransitionIdentifier != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier, MEMORY[0x1E69E6720]);
  v18 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v17 = AGGraphCreateOffsetAttribute2();
  v6 = AGGraphCreateOffsetAttribute2();
  if (one-time initialization token for toolbarCustomizationBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemContainerTint != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
  v8 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemIsHidden != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemPlatterVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for Visibility?, MEMORY[0x1E697DB50], MEMORY[0x1E69E6720]);
  v11 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationOptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  result = outlined destroy of _ToolbarInputs(a3);
  v16 = *(a3 + 64);
  *a4 = a1;
  *(a4 + 4) = OffsetAttribute2;
  *(a4 + 8) = a2;
  *(a4 + 12) = v23;
  *(a4 + 16) = v21;
  *(a4 + 20) = 0;
  *(a4 + 24) = v20;
  *(a4 + 28) = v19;
  *(a4 + 32) = v18;
  *(a4 + 36) = v17;
  *(a4 + 40) = v7;
  *(a4 + 44) = v8;
  *(a4 + 48) = v9;
  *(a4 + 52) = v10;
  *(a4 + 56) = v11;
  *(a4 + 60) = v12;
  *(a4 + 64) = v6;
  *(a4 + 72) = v14;
  *(a4 + 80) = v16;
  *(a4 + 88) = 0;
  return result;
}

void type metadata accessor for _UnaryViewAdaptor<EmptyView>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>)
  {
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem()
{
  result = lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem;
  if (!lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn()
{
  result = lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn;
  if (!lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn);
  }

  return result;
}

uint64_t outlined destroy of DefaultToolbarItem.InternalContent(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result + 8);
    return v1;
  }

  return result;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>)
  {
    type metadata accessor for _UnaryViewAdaptor<EmptyView>();
    type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _UnaryViewAdaptor<EmptyView>();
    v7 = v6;
    v8 = lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<EmptyView>);
    v9 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<EmptyView>);
    lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToString<()> and conformance ToString<A>()
{
  result = lazy protocol witness table cache variable for type ToString<()> and conformance ToString<A>;
  if (!lazy protocol witness table cache variable for type ToString<()> and conformance ToString<A>)
  {
    _sSSSgMaTm_1(255, &lazy cache variable for type metadata for ToString<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for ToString);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToString<()> and conformance ToString<A>);
  }

  return result;
}

uint64_t static TableRow._makeRows(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 136);
  v3 = *(a2 + 144);
  v4 = *(a2 + 148);
  PreferencesOutputs.init()();
  type metadata accessor for TableRow();
  type metadata accessor for _GraphValue();
  LODWORD(v8) = _GraphValue.value.getter();
  HIDWORD(v8) = v4;
  List = type metadata accessor for TableRow.MakeList();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<TableRowList>(0, &lazy cache variable for type metadata for Attribute<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, v12, List, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  v8 = v2;
  v9 = v3;
  v11 = v10;
  return PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t TableRow.MakeList.tableRow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TableRow();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t TableRow.MakeList.traits.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  *a2 = result;
  return result;
}

uint64_t TableRow.MakeList.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TableRow();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  TableRow.MakeList.tableRow.getter(&v17 - v10);
  v12 = *(v6 + 32);
  v12(v8, v11, a2);
  TableRow.MakeList.traits.getter(a1, &v18);
  v13 = v18;
  v14 = type metadata accessor for TableRow.Generator();
  a3[3] = v14;
  a3[4] = &protocol witness table for TableRow<A>.Generator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  result = (v12)(boxed_opaque_existential_1, v8, a2);
  *(boxed_opaque_existential_1 + *(v14 + 36)) = v13;
  return result;
}

uint64_t TableRow.Generator.visitRows<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23[0] = a4;
  v23[1] = a1;
  v10 = *(a3 + 16);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  v16 = *(v10 - 8);
  (*(v16 + 16))(v23 - v14, v6, v10, v13);
  (*(v16 + 56))(v15, 0, 1, v10);
  v28 = 1;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v17 = *(v6 + *(a3 + 36));
  if (v17)
  {
    v25 = *(v6 + *(a3 + 36));
    v18 = v17;
  }

  else
  {
    ViewTraitCollection.init()();
    v18 = v25;
  }

  v24 = v18;
  v19 = *(a5 + 8);
  v20 = *(a3 + 24);

  v21 = v19(v15, &v28, v26, &v24, v10, MEMORY[0x1E6981E70], v20, MEMORY[0x1E6981E60], v23[0], a5);

  outlined destroy of TableRowList?(v26);
  result = (*(v12 + 8))(v15, v11);
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;
    return v21 & 1;
  }

  return result;
}

uint64_t TableRow.Generator.rowIDs.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v9[-v2 - 16];
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  v9[24] = 1;
  type metadata accessor for Attribute<TableRowList>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableRowID>, &type metadata for TableRowID, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = v8;
  v6 = *v9;
  v4[1] = xmmword_18CD63400;
  v4[2] = v5;
  v4[3] = v6;
  *(v4 + 57) = *&v9[9];
  type metadata accessor for WrappedTableRowIDs<[TableRowID]>();
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TableRow<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TableRow.Generator()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for WrappedTableRowIDs<[TableRowID]>()
{
  if (!lazy cache variable for type metadata for WrappedTableRowIDs<[TableRowID]>)
  {
    type metadata accessor for Attribute<TableRowList>(255, &lazy cache variable for type metadata for [TableRowID], &type metadata for TableRowID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [TableRowID] and conformance [A]();
    v0 = type metadata accessor for WrappedTableRowIDs();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WrappedTableRowIDs<[TableRowID]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [TableRowID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TableRowID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TableRowID] and conformance [A])
  {
    type metadata accessor for Attribute<TableRowList>(255, &lazy cache variable for type metadata for [TableRowID], &type metadata for TableRowID, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TableRowID] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of TableRowList?(uint64_t a1)
{
  type metadata accessor for Attribute<TableRowList>(0, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Attribute<TableRowList>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _TypeSelectEquivalentTableRowModifier.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of Text?(v2, v3, v4, v5);
}

uint64_t protocol witness for _TableRowContentModifier.body.getter in conformance _TypeSelectEquivalentTableRowModifier@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of Text?(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier()
{
  result = lazy protocol witness table cache variable for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier;
  if (!lazy protocol witness table cache variable for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier);
  }

  return result;
}

uint64_t TableRowContent.typeSelectEquivalent(_:)()
{

  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3 & 1;
  TableRowContent.typeSelectEquivalent(_:)(v0, v1);
  outlined consume of Text.Storage(v0, v2, v4);
}

uint64_t TableRowContent.typeSelectEquivalent<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7 & 1;
  TableRowContent.typeSelectEquivalent(_:)(v4, v5);
  outlined consume of Text.Storage(v4, v6, v8);
}

uint64_t TypeSelectHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
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

Swift::Void __swiftcall TypeSelectHost.updateRootView()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v7 - v5;
  (*(v3 + 16))(&v7 - v5, v0 + *(v1 + 136), v2, v4);
  ViewGraph.setRootView<A>(_:)();
  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall TypeSelectHost.updateEnvironment()()
{

  GraphHost.setEnvironment(_:)();
}

uint64_t *TypeSelectHost.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));

  return v0;
}

uint64_t TypeSelectHost.__deallocating_deinit()
{
  TypeSelectHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance TypeSelectHost<A>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.responderNode.getter();
}

double protocol witness for ViewGraphOwner.currentTimestamp.getter in conformance TypeSelectHost<A>@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.currentTimestamp.setter in conformance TypeSelectHost<A>(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.valuesNeedingUpdate.setter in conformance TypeSelectHost<A>(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.renderingPhase.getter in conformance TypeSelectHost<A>@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 26);
  return result;
}

uint64_t protocol witness for ViewGraphOwner.renderingPhase.setter in conformance TypeSelectHost<A>(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.externalUpdateCount.setter in conformance TypeSelectHost<A>(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance TypeSelectHost<A>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance TypeSelectHost<A>()
{
  swift_getWitnessTable();

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t View.typeSelectEquivalent(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v3 = Text.init(_:tableName:bundle:comment:)();
    v5 = v4;
    v7 = v6 & 1;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v7 = 0;
    v2 = 0;
  }

  v8 = v2;
  View._trait<A>(_:_:)();
  return outlined consume of Text?(v3, v5, v7, v8);
}

uint64_t View.typeSelectEquivalent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.typeSelectEquivalent<A>(_:), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v5, &v12);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  View._trait<A>(_:_:)();
  return outlined consume of Text?(v6, v7, v8, v9);
}

uint64_t TableRowContent.typeSelectEquivalent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  outlined copy of Text?(a1, a2, a3, a4);
  lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier();
  TableRowContent.modifier<A>(_:)(&v7, a5, &type metadata for _TypeSelectEquivalentTableRowModifier);
  return outlined consume of Text?(v7, v8, v9, v10);
}

uint64_t TableRowContent.typeSelectEquivalent(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v2 = Text.init(_:tableName:bundle:comment:)();
    v4 = v3;
    v6 = v5;
    v8 = v7 & 1;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v8 = 0;
    v6 = 0;
  }

  TableRowContent.typeSelectEquivalent(_:)(v2, v4);

  return outlined consume of Text?(v2, v4, v8, v6);
}

uint64_t TableRowContent.typeSelectEquivalent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TableRowContent.typeSelectEquivalent<A>(_:), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v5, &v12);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  TableRowContent.typeSelectEquivalent(_:)(v12, v13);
  return outlined consume of Text?(v6, v7, v8, v9);
}

uint64_t closure #1 in View.typeSelectEquivalent<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t destroy for _TypeSelectEquivalentTableRowModifier(uint64_t result)
{
  if (*(result + 24))
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

__n128 initializeWithCopy for _TypeSelectEquivalentTableRowModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v4, v5);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v2;
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t assignWithCopy for _TypeSelectEquivalentTableRowModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  return a1;
}