uint64_t sub_100ED8FF8(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E86334();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_100F66238(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_100ED90E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100ED5648(&unk_101A23C60, &type metadata accessor for IndexPath);
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
      sub_100ED5648(&unk_101A226D0, &type metadata accessor for IndexPath);
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
      sub_100E86474();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100F663BC(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100ED9390(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100ED9DE0(v4, v5, sub_100E73968, type metadata accessor for CRLSceneInfo, sub_100F79594);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for CRLSceneInfo();
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E866D4();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100F79594(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100ED9554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v32 = v2;

  v11 = __CocoaSet.count.getter();
  v12 = swift_unknownObjectRetain();
  v13 = sub_100E72BE0(v12, v11);
  v43 = v13;
  Hasher.init(_seed:)();
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v17 = *(v14 + 32);

  v38 = v15;
  v39 = v14;
  v36 = ObjectType;
  v37 = v14 + 32;
  v35 = v17;
  v17(ObjectType, v14);
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v18 = *(v5 + 8);
  v40 = v5 + 8;
  v41 = v4;
  v18(v10, v4);
  v19 = Hasher._finalize()();
  v42 = v13;
  v20 = -1 << *(v13 + 32);
  v21 = v19 & ~v20;
  v34 = v13 + 56;
  if ((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v33 = ~v20;
    while (1)
    {
      v22 = *(*(*(v42 + 48) + 8 * v21) + 24);
      v23 = swift_getObjectType();
      v24 = *(v22 + 32);

      v24(v23, v22);
      v35(v36, v39);
      v25 = static UUID.== infix(_:_:)();

      v26 = v41;
      v18(v8, v41);
      v18(v10, v26);
      if (v25)
      {
        break;
      }

      v21 = (v21 + 1) & v33;
      if (((*(v34 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v27 = *(*(v43 + 48) + 8 * v21);
  sub_100F64320(v21);
  v35(v36, v39);
  v28 = *(v27 + 24);
  v29 = swift_getObjectType();
  (*(v28 + 32))(v29, v28);
  LOBYTE(v28) = static UUID.== infix(_:_:)();
  v30 = v41;
  v18(v8, v41);
  result = (v18)(v10, v30);
  if (v28)
  {
    *v32 = v43;
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100ED98E8()
{

  v1 = __CocoaSet.count.getter();
  v2 = swift_unknownObjectRetain();
  v3 = sub_100E73348(v2, v1);
  v10 = v3;
  type metadata accessor for CalculateExpression();
  sub_100ED5648(&qword_1019F37A0, &type metadata accessor for CalculateExpression);

  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100ED5648(&qword_1019F37A8, &type metadata accessor for CalculateExpression);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v8 = *(*(v3 + 48) + 8 * v6);
  sub_100F64F94(v6);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v10;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100ED9AC4(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_100E7357C(v6, v5);
  v22 = v7;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  v11 = *(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8));

  if (((v11 >> v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = ~v9;
  while (1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_4;
    }

    v14 = Strong;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_4:
    v10 = (v10 + 1) & v12;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v14 != v16)
  {
    goto LABEL_4;
  }

  v17 = *(*(v7 + 48) + 8 * v10);
  sub_100F65180(v10);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v19 == v21)
      {
        *v3 = v22;
        return v17;
      }

      __break(1u);
LABEL_13:

      __break(1u);
    }

    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_100ED9C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t a5, void (*a6)(unint64_t))
{
  v10 = v6;

  v11 = __CocoaSet.count.getter();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = NSObject._rawHashValue(seed:)(v14);
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_100006370(0, a4);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  a6(v17);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v10 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100ED9DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void), void (*a5)(unint64_t))
{
  v9 = v5;

  v10 = __CocoaSet.count.getter();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v22 = v12;
  v13 = *(v12 + 40);

  v14 = NSObject._rawHashValue(seed:)(v13);
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    a4(0);
    while (1)
    {
      v18 = *(*(v12 + 48) + 8 * v16);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v12 + 48) + 8 * v16);
  a5(v16);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *sub_100ED9F50(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100EDDA8C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_100ED9FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1005B981C(&qword_1019FEF98) + 48);
  v5 = *(sub_1005B981C(&qword_1019FEFC0) + 48);
  v6 = *(a1 + v4);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_100EDA0A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *__return_ptr, void *, uint64_t *), uint64_t a6)
{
  v49 = a6;
  v48 = a5;
  v51 = type metadata accessor for UUID();
  v10 = *(v51 - 8);
  __chkstk_darwin(v51);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A228E0);
  __chkstk_darwin(v13 - 8);
  v15 = v45 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v54[1] = a1;
  v54[2] = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v54[3] = v17;
  v54[4] = 0;
  v54[5] = v20 & v18;
  v54[6] = a2;
  v54[7] = a3;
  v21 = (v10 + 32);
  v46 = (v10 + 8);
  v47 = v10;
  v45[1] = a1;

  v45[2] = a3;

  while (1)
  {
    while (1)
    {
      sub_100E9082C(v15);
      v22 = sub_1005B981C(&qword_1019FEFC0);
      if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
      {
        sub_100035F90();
      }

      v23 = *(v22 + 48);
      v24 = *v21;
      (*v21)(v12, v15, v51);
      v25 = *&v15[v23];
      v55 = v25;
      v26 = *v52;
      v28 = sub_10003E994(v12);
      v29 = v26[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_25;
      }

      v32 = v27;
      if (v26[3] >= v31)
      {
        break;
      }

      sub_100A89AFC(v31, a4 & 1);
      v33 = sub_10003E994(v12);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_24;
      }

      v28 = v33;
      if (v32)
      {
        goto LABEL_13;
      }

LABEL_16:
      v37 = v51;
      v38 = *v52;
      *(*v52 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v24((v38[6] + *(v47 + 72) * v28), v12, v37);
      *(v38[7] + 8 * v28) = v25;
      v39 = v38[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_23;
      }

      v38[2] = v41;
      a4 = 1;
    }

    if (a4)
    {
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100AA4714();
      if ((v32 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v35 = *v52;
    v54[0] = *(*(*v52 + 56) + 8 * v28);

    v36 = v50;
    v48(v53, v54, &v55);
    if (v36)
    {
      break;
    }

    v50 = 0;

    (*v46)(v12, v51);
    *(v35[7] + 8 * v28) = v53[0];

    a4 = 1;
  }

  v54[0] = v36;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*v46)(v12, v51);
    sub_100035F90();
  }

LABEL_25:
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v43._object = 0x800000010159A770;
  v43._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v43);
  _print_unlocked<A, B>(_:_:)();
  v44._countAndFlagsBits = 39;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100EDA5E4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100ED5648(&unk_101A22900, type metadata accessor for CRLSerializableObjectReader.PartialTreeOwner);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = _swiftEmptyDictionarySingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = _swiftEmptyDictionarySingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v5, v2);
  v8 = (v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v8 = a1;
  v8[1] = v6;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 0;
  *(v7 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = 0;

  return v7;
}

uint64_t sub_100EDA85C(void *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100ED5648(a2, a3);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = &_swiftEmptyDictionarySingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = &_swiftEmptyDictionarySingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v7 + 32))(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v9, v6);
  v12 = (v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v12 = a1;
  v12[1] = v10;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 0;
  *(v11 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = 0;
  v13 = a1;
  return v11;
}

void sub_100EDAAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v15 + v16, v6, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v6, type metadata accessor for CRLBoardCRDTData);
  sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  if ((v15 & 1) == 0)
  {
    swift_beginAccess();
    sub_1006F6994(v13);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  v17(v13, v7);
  type metadata accessor for CRLBoardItem(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CRLTransactableHashableWrapper();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = &off_10188FE10;
    swift_beginAccess();
    swift_unknownObjectRetain_n();

    sub_100E6B218(&v24, v20);

    sub_100ED6A00(v20);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100006370(0, &qword_1019F6EE0);
    v21 = static OS_os_log.default.getter();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v22, "Trying to remove non-boardItem transactable.", 44, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100EDAE6C(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  result = swift_allocObject();
  *(result + 16) = xmmword_10146C6B0;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = a1 + 1;
    v7 = static String.localizedStringWithFormat(_:_:)();

    return v7;
  }

  return result;
}

uint64_t sub_100EDAFBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v139 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v139);
  v137 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 2)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  v141 = *(a2 + 16);
  if (v141)
  {
    v11 = 0;
    v138 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v12 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
    v140 = a2 + 32;
    v132 = xmmword_10146C6B0;
    v131 = xmmword_10146CA70;
    while (1)
    {
      v13 = (v140 + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      v16 = *v13 == 0x656C746974 && v14 == 0xE500000000000000;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v36 = v15 == 0x7453747265736E69 && v14 == 0xEF61746144656C79;
      if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v146 = &type metadata for Bool;
        LOBYTE(v145[0]) = 1;
        swift_beginAccess();
        sub_10000BE14(v145, &v143, &unk_1019F4D00);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = *(a1 + v12);
        v38 = v142;
        *(a1 + v12) = 0x8000000000000000;
        v23 = sub_1007CF108();
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v27 = __OFADD__(v40, v41);
        v42 = v40 + v41;
        if (v27)
        {
          goto LABEL_78;
        }

        v43 = v39;
        if (v38[3] >= v42)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v98 = a1;
            v99 = v23;
            sub_100AA3EA4();
            v23 = v99;
            a1 = v98;
          }
        }

        else
        {
          sub_100A890C0(v42, isUniquelyReferenced_nonNull_native);
          v23 = sub_1007CF108();
          if ((v43 & 1) != (v44 & 1))
          {
            goto LABEL_83;
          }
        }

        v31 = v142;
        if ((v43 & 1) == 0)
        {
          v142[(v23 >> 6) + 8] |= 1 << v23;
          *(v31[6] + 8 * v23) = 3;
          v45 = (v31[7] + 32 * v23);
          v46 = v144;
          *v45 = v143;
          v45[1] = v46;
          v47 = v31[2];
          v27 = __OFADD__(v47, 1);
          v35 = v47 + 1;
          if (v27)
          {
            goto LABEL_81;
          }

LABEL_19:
          v31[2] = v35;
LABEL_20:
          *(a1 + v12) = v31;
          swift_endAccess();
          goto LABEL_21;
        }

LABEL_17:
        sub_10002C638(&v143, v31[7] + 32 * v23, &unk_1019F4D00);
        goto LABEL_20;
      }

      v48 = v15 == 0x73656E656373 && v14 == 0xE600000000000000;
      if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v127 = a1;
        v128 = v4;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v132;
        *(inited + 56) = &type metadata for String;
        v53 = sub_1000053B0();
        *(inited + 32) = v15;
        v135 = inited + 32;
        v136 = v53;
        *(inited + 64) = v53;
        *(inited + 40) = v14;
        v54 = objc_opt_self();

        v126 = v54;
        v55 = [v54 _atomicIncrementAssertCount];
        v145[0] = [objc_allocWithZone(NSString) init];
        v130 = inited;
        sub_100604538(inited, v145);
        StaticString.description.getter();
        v134 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v56 = String._bridgeToObjectiveC()();

        v57 = [v56 lastPathComponent];

        v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v60 = static OS_os_log.crlAssert;
        v61 = swift_initStackObject();
        *(v61 + 16) = v131;
        *(v61 + 56) = &type metadata for Int32;
        *(v61 + 64) = &protocol witness table for Int32;
        *(v61 + 32) = v55;
        v62 = sub_100006370(0, &qword_1019F4D30);
        *(v61 + 96) = v62;
        v63 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        v64 = v134;
        *(v61 + 72) = v134;
        v65 = v136;
        *(v61 + 136) = &type metadata for String;
        *(v61 + 144) = v65;
        v66 = v129;
        *(v61 + 104) = v63;
        *(v61 + 112) = v66;
        *(v61 + 120) = v59;
        *(v61 + 176) = &type metadata for UInt;
        *(v61 + 152) = 617;
        v67 = v145[0];
        *(v61 + 216) = v62;
        *(v61 + 224) = v63;
        *(v61 + 184) = &protocol witness table for UInt;
        *(v61 + 192) = v67;
        v68 = v64;
        v69 = v67;
        v70 = static os_log_type_t.error.getter();
        sub_100005404(v60, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v61);
        swift_setDeallocating();
        v129 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v71 = static os_log_type_t.error.getter();
        v72 = v130;

        type metadata accessor for __VaListBuilder();
        v73 = swift_allocObject();
        v73[2] = 8;
        v73[3] = 0;
        v74 = v73 + 3;
        v73[4] = 0;
        v73[5] = 0;
        v136 = v73;
        v134 = *(v72 + 16);
        if (!v134)
        {
LABEL_71:
          v92 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v93 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v94 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v95 = String._bridgeToObjectiveC()();

          [v126 handleFailureInFunction:v93 file:v94 lineNumber:617 isFatal:0 format:v95 args:v92];

          swift_setDeallocating();
          result = swift_arrayDestroy();
          a1 = v127;
          v4 = v128;
          goto LABEL_22;
        }

        v75 = 0;
        v133 = v11;
        while (2)
        {
          v76 = v12;
          v77 = v72;
          sub_100020E58((v135 + 40 * v75), *(v135 + 40 * v75 + 24));
          v78 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v79 = *v74;
          v80 = *(v78 + 16);
          v27 = __OFADD__(*v74, v80);
          v81 = *v74 + v80;
          if (v27)
          {
            goto LABEL_77;
          }

          v82 = v78;
          v83 = v136;
          v84 = v136[4];
          if (v84 >= v81)
          {
LABEL_64:
            v86 = v83[5];
          }

          else
          {
            if (v84 + 0x4000000000000000 < 0)
            {
              goto LABEL_79;
            }

            v85 = v136[5];
            if (2 * v84 > v81)
            {
              v81 = 2 * v84;
            }

            v136[4] = v81;
            if ((v81 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_80;
            }

            v86 = swift_slowAlloc();
            v136[5] = v86;
            if (v85)
            {
              if (v86 != v85 || v86 >= &v85[8 * v79])
              {
                memmove(v86, v85, 8 * v79);
              }

              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v83 = v136;
              goto LABEL_64;
            }
          }

          v11 = v133;
          if (!v86)
          {
            goto LABEL_82;
          }

          v72 = v77;
          v88 = *(v82 + 16);
          v12 = v76;
          if (v88)
          {
            v89 = (v82 + 32);
            v90 = *v74;
            while (1)
            {
              v91 = *v89++;
              *&v86[8 * v90] = v91;
              v90 = *v74 + 1;
              if (__OFADD__(*v74, 1))
              {
                break;
              }

              *v74 = v90;
              if (!--v88)
              {
                goto LABEL_49;
              }
            }

            __break(1u);
            goto LABEL_75;
          }

LABEL_49:

          if (++v75 == v134)
          {
            goto LABEL_71;
          }

          continue;
        }
      }

      v49 = *(v4 + v138) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v50 = *(v139 + 36);
      v146 = type metadata accessor for CRLBoardScenesCRDTData(0);
      v51 = sub_10002C58C(v145);
      sub_10004FECC(v49 + v50, v51, type metadata accessor for CRLBoardScenesCRDTData);
      sub_10000BE14(v145, &v143, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(&v143, 57);
      swift_endAccess();
LABEL_21:
      result = sub_10000CAAC(v145, &unk_1019F4D00);
LABEL_22:
      if (++v11 == v141)
      {
        return result;
      }
    }

    v17 = *(v4 + v138);
    v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v19 = v17 + v18;
    v20 = v137;
    sub_10004FECC(v19, v137, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v20, type metadata accessor for CRLBoardCRDTData);
    v146 = &type metadata for String;
    swift_beginAccess();
    sub_10000BE14(v145, &v143, &unk_1019F4D00);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v142 = *(a1 + v12);
    v22 = v142;
    v23 = sub_1007CF108();
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
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
LABEL_83:
      type metadata accessor for CRLChangeProperty(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_84:
      v100 = objc_opt_self();
      v101 = [v100 _atomicIncrementAssertCount];
      v145[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v145);
      StaticString.description.getter();
      v102 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v103 = String._bridgeToObjectiveC()();

      v104 = [v103 lastPathComponent];

      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v108 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v109 = swift_initStackObject();
      *(v109 + 16) = xmmword_10146CA70;
      *(v109 + 56) = &type metadata for Int32;
      *(v109 + 64) = &protocol witness table for Int32;
      *(v109 + 32) = v101;
      v110 = sub_100006370(0, &qword_1019F4D30);
      *(v109 + 96) = v110;
      v111 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      *(v109 + 104) = v111;
      *(v109 + 72) = v102;
      *(v109 + 136) = &type metadata for String;
      v112 = sub_1000053B0();
      *(v109 + 112) = v105;
      *(v109 + 120) = v107;
      *(v109 + 176) = &type metadata for UInt;
      *(v109 + 184) = &protocol witness table for UInt;
      *(v109 + 144) = v112;
      *(v109 + 152) = 621;
      v113 = v145[0];
      *(v109 + 216) = v110;
      *(v109 + 224) = v111;
      *(v109 + 192) = v113;
      v114 = v102;
      v115 = v113;
      v116 = static os_log_type_t.error.getter();
      sub_100005404(v108, &_mh_execute_header, v116, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v109);

      v117 = static os_log_type_t.error.getter();
      sub_100005404(v108, &_mh_execute_header, v117, "Invalid CRLTransactablePropertyMapKeys key for CRLBoard", 55, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Invalid CRLTransactablePropertyMapKeys key for CRLBoard");
      type metadata accessor for __VaListBuilder();
      v118 = swift_allocObject();
      v118[2] = 8;
      v118[3] = 0;
      v118[4] = 0;
      v118[5] = 0;
      v119 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v120 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v121 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v122 = String._bridgeToObjectiveC()();

      [v100 handleFailureInFunction:v120 file:v121 lineNumber:621 isFatal:1 format:v122 args:v119];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v123, v124);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((v21 & 1) == 0)
      {
        v96 = a1;
        v97 = v23;
        sub_100AA3EA4();
        v23 = v97;
        a1 = v96;
      }
    }

    else
    {
      sub_100A890C0(v28, v21);
      v23 = sub_1007CF108();
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_83;
      }
    }

    v31 = v142;
    if ((v29 & 1) == 0)
    {
      v142[(v23 >> 6) + 8] |= 1 << v23;
      *(v31[6] + 8 * v23) = 2;
      v32 = (v31[7] + 32 * v23);
      v33 = v144;
      *v32 = v143;
      v32[1] = v33;
      v34 = v31[2];
      v27 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v27)
      {
        goto LABEL_76;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t sub_100EDC05C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = &qword_1019F6990;
  v11 = sub_1005B981C(&qword_1019F6990);
  v46 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v45 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = v44 - v14;
  v15 = sub_1005B981C(&qword_101A21DE0);
  __chkstk_darwin(v15 - 8);
  v17 = (v44 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v47 = a1;
  v48 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v49 = v19;
  v50 = 0;
  v51 = v22 & v20;
  v52 = a2;
  v53 = a3;

  v44[1] = a3;

  while (1)
  {
    sub_100E90C10(v17);
    v25 = sub_1005B981C(&qword_101A22780);
    if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
    {
      sub_100035F90();
    }

    v27 = *v17;
    v26 = v17[1];
    v28 = v10;
    sub_10003DFF8(v17 + *(v25 + 48), v54, v10);
    v29 = *a5;
    v31 = sub_10000BE7C(v27, v26);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100AA4A54();
        v38 = *a5;
        if ((v35 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v23 = v45;
      v24 = *(v46 + 72) * v31;
      v10 = v28;
      sub_10000BE14(v38[7] + v24, v45, v28);
      sub_10000CAAC(v54, v28);

      sub_10002C638(v23, v38[7] + v24, v28);
      a4 = 1;
    }

    else
    {
      sub_100A8A448(v34, a4 & 1);
      v36 = sub_10000BE7C(v27, v26);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v31 = v36;
      v38 = *a5;
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_14:
      v38[(v31 >> 6) + 8] |= 1 << v31;
      v39 = (v38[6] + 16 * v31);
      *v39 = v27;
      v39[1] = v26;
      v10 = v28;
      sub_10003DFF8(v54, v38[7] + *(v46 + 72) * v31, v28);
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v38[2] = v42;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_100EDC418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a4;
  v93 = a3;
  v95 = a2;
  v96 = a1;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v97 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v90 - v8;
  v9 = type metadata accessor for UUID();
  v108 = *(v9 - 8);
  v10 = v108;
  __chkstk_darwin(v9);
  v92 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v90 - v13;
  __chkstk_darwin(v14);
  v101 = &v90 - v15;
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  __chkstk_darwin(v19);
  v102 = &v90 - v20;
  __chkstk_darwin(v21);
  v107 = &v90 - v22;
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v100 = type metadata accessor for CRLBoardCRDTData(0) - 8;
  __chkstk_darwin(v100);
  v103 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  v30 = sub_100ED4888();
  v31 = sub_100ED4888();
  v32 = v10[2];
  v104 = v25;
  v32(v25, a2, v9);
  v33 = *(*v30 + 744);
  swift_beginAccess();
  v105 = v30;
  v32(v107, v30 + v33, v9);
  v34 = *(*v31 + 744);
  swift_beginAccess();
  v98 = v31;
  v35 = v102;
  v32(v102, v31 + v34, v9);
  v36 = v100;
  *&v29[*(v100 + 48)] = _swiftEmptyDictionarySingleton;
  v32(v18, v25, v9);
  v37 = v101;
  v38 = v18;
  v32(v101, v18, v9);
  v106 = v29;
  CRRegister.init(wrappedValue:)();
  v39 = v108[1];
  ++v108;
  v39(v38, v9);
  v90 = v38;
  v32(v38, v107, v9);
  v32(v37, v35, v9);
  v40 = &v29[*(v36 + 28)];
  *&v40[*(type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0) + 24)] = _swiftEmptyDictionarySingleton;
  v41 = v91;
  v32(v91, v38, v9);
  v42 = v92;
  v32(v92, v41, v9);
  CRRegister.init(wrappedValue:)();
  v39(v41, v9);
  v32(v41, v37, v9);
  v32(v42, v41, v9);
  CRRegister.init(wrappedValue:)();
  v39(v41, v9);
  v39(v101, v9);
  v39(v90, v9);
  v43 = v100;
  v111 = v93;
  v112 = v94;

  v44 = v106;
  CRRegister.init(wrappedValue:)();
  sub_100084B00(v44 + v43[9]);
  v45 = v44 + v43[10];
  static Date.timeIntervalSinceReferenceDate.getter();
  v47 = v46;
  *(v45 + *(type metadata accessor for CRLSharedBoardMetadataCRDTData(0) + 32)) = _swiftEmptyDictionarySingleton;
  v111 = v47;
  CRMaxRegister.init(wrappedValue:)();
  v111 = v47;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v111) = 1;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v111) = 0;
  CRMaxRegister.init(wrappedValue:)();
  v48 = v44 + v43[11];
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  v49 = type metadata accessor for CRLBoardScenesCRDTData(0);
  CRDictionary.init()();
  sub_10007F4A4();
  sub_10007F5AC();
  CRDictionary.init()();
  v39(v102, v9);
  v39(v107, v9);
  v39(v104, v9);
  *(v48 + *(v49 + 28)) = _swiftEmptyDictionarySingleton;
  v50 = v103;
  sub_10004FECC(v44, v103, type metadata accessor for CRLBoardCRDTData);
  v51 = (v95 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v53 = *v51;
  v52 = v51[1];
  type metadata accessor for CRLBoardData(0);
  v54 = swift_allocObject();
  *(v54 + 16) = 7;
  *(v54 + 24) = 0x1000000000000;
  *(v54 + 32) = 0x2000400000000;
  *(v54 + 40) = 0x1000000000000;
  *(v54 + 48) = 0;
  *(v54 + 56) = 1;
  sub_100EDD3F4(v50, v54 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
  v55 = (v54 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v55 = v53;
  v55[1] = v52;
  v56 = qword_1019F2800;

  if (v56 != -1)
  {
    swift_once();
  }

  if (!sub_100FE50D8(qword_101A271C8))
  {
    sub_100FE5374();
  }

  v108 = type metadata accessor for CRLBoard(0);
  v57 = objc_allocWithZone(v108);
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
  v58 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  v59 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v59 - 8) + 56))(&v57[v58], 1, 1, v59);
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  v60 = &v57[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  *v60 = _swiftEmptySetSingleton;
  v60[1] = _swiftEmptySetSingleton;
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
  v61 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
  *&v57[v61] = sub_100BD4D84(_swiftEmptyArrayStorage);
  v62 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22670);
  swift_allocObject();
  *&v57[v62] = PassthroughSubject.init()();
  v63 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
  swift_allocObject();
  *&v57[v63] = PassthroughSubject.init()();
  v64 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
  sub_1005B981C(&qword_101A12970);
  swift_allocObject();
  *&v57[v64] = PassthroughSubject.init()();
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
  swift_unknownObjectWeakInit();
  v65 = v96;
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = v96;
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = v54;
  v57[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = 0;
  v66 = type metadata accessor for CRLRootContainerItem(0);
  v67 = objc_allocWithZone(v66);
  swift_unknownObjectWeakInit();
  *&v67[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v67[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v67[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v67[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v67[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v67[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v65;
  *&v67[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v105;
  v68 = type metadata accessor for CRLBoardItemBase(0);
  v114.receiver = v67;
  v114.super_class = v68;
  v69 = v65;

  v70 = objc_msgSendSuper2(&v114, "init");
  v71 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v70;
  v72 = objc_allocWithZone(v66);
  swift_unknownObjectWeakInit();
  *&v72[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v72[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v72[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v72[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v72[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v72[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v69;
  *&v72[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v98;
  v113.receiver = v72;
  v113.super_class = v68;
  v73 = v69;

  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2(&v113, "init");
  v74 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v75 = v54 + v74;
  v76 = v103;
  sub_10004FECC(v75, v103, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  v77 = v104;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v76, type metadata accessor for CRLBoardCRDTData);
  v78 = *(v54 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v79 = *(v54 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v80 = v99;
  sub_10084BD4C(v77, v78, v79, v99);
  v81 = v97;
  v82 = sub_10004FECC(v80, v97, type metadata accessor for CRLBoardIdentifier);
  (*(**(*&v57[v71] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v82);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v81, v77, 0);
  type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
  v83 = swift_allocObject();
  sub_1005B981C(&qword_101A12978);
  v84 = swift_allocObject();
  *(v84 + 16) = _swiftEmptyDictionarySingleton;
  *(v84 + 24) = _swiftEmptyDictionarySingleton;
  *(v83 + 16) = v84;
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v83;
  type metadata accessor for CRLActiveBoardShareState();
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  swift_unknownObjectWeakInit();
  v86 = *(v85 + 16);
  *(v85 + 16) = 0;

  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v85;
  *&v57[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
  v110.receiver = v57;
  v110.super_class = v108;
  v87 = objc_msgSendSuper2(&v110, "init");
  swift_unknownObjectWeakAssign();
  v109 = *(*&v87[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = v87;

  sub_1005B981C(&unk_101A22680);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10003D69C(v80, type metadata accessor for CRLBoardIdentifier);
  sub_10003D69C(v106, type metadata accessor for CRLBoardCRDTData);
  return v88;
}

uint64_t sub_100EDD3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_100EDD484(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardDataStoreChangeSet(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_100ED285C(a1, v4, v5, v6, v7);
}

char *sub_100EDD510(void *a1)
{
  v3 = type metadata accessor for CRLBoardScenesCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(type metadata accessor for CRLImmutableBoard(0));
  v7 = a1;
  v8 = sub_100ED3038(v7);
  v9 = type metadata accessor for CRLUUIDRemapHelper();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  *&v10[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
  v10[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = 0;
  v30.receiver = v10;
  v30.super_class = v9;
  v11 = objc_msgSendSuper2(&v30, "init");
  v12 = v8;
  v13 = sub_100EDA85C(v12, &unk_101A226E0, type metadata accessor for CRLImmutableBoard);

  v14 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
  v15 = *&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
  v16 = v14;
  sub_1012E0400(v15, &off_10188FE10);
  if (v1)
  {
  }

  else
  {
    v29 = v5;
    v31 = v11;
    v17 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v18 = *&v16[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    if (!v18)
    {
      sub_10096C7D4();
      v18 = *&v16[v17];
    }

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    sub_100972DB0(v19, v13, v31);

    sub_1012CF6CC(v15, &off_10188FE10, 2);

    v20 = *&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v21 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_data] + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v22 = type metadata accessor for CRLBoardCRDTData(0);
    v23 = v29;
    sub_10004FECC(v21 + *(v22 + 36), v29, type metadata accessor for CRLBoardScenesCRDTData);
    v24 = v20 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v25 = *(v22 + 36);

    sub_100B75254(v23, v24 + v25);
    swift_endAccess();

    (*(*v13 + 720))(v26);
  }

  return v12;
}

uint64_t sub_100EDD898()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_100ED24A0(v2, v3);
}

uint64_t sub_100EDD94C(uint64_t a1, char a2)
{
  sub_1005B981C(&unk_101A226F0);

  return sub_100ED22AC(a1, a2 & 1);
}

uint64_t sub_100EDD9D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_100ED1B08(v2, v3);
}

void sub_100EDDA8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  v35 = 0;
  v11 = 0;
  v12 = *(a3 + 56);
  v30 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v32 = (v7 + 8);
  v33 = v16;
  if (v15)
  {
LABEL_7:
    while (2)
    {
      v18 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
LABEL_13:
      v21 = v18 | (v11 << 6);
      v22 = *(v34 + 48);
      v36 = v21;
      v23 = *(v22 + 8 * v21);
      (*((swift_isaMask & *v23) + 0x88))(v8);
      v24 = *(a4 + 16);
      v37 = v23;
      v25 = 0;
      do
      {
        if (v24 == v25)
        {
          (*v32)(v10, v6);

          *(v31 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
          v17 = __OFADD__(v35++, 1);
          v16 = v33;
          v15 = v38;
          if (v17)
          {
            goto LABEL_20;
          }

          if (!v38)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v26 = v25 + 1;
        sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = v26;
      }

      while ((v27 & 1) == 0);
      (*v32)(v10, v6);

      v16 = v33;
      v15 = v38;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_8:
  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      v28 = v34;

      sub_1010F47D4(v31, v29, v35, v28);
      return;
    }

    v20 = *(v30 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v38 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_100EDDD8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v34 = v11;
    v35 = v3;
    v33[1] = v33;
    __chkstk_darwin(v13);
    v37 = v33 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v12);
    v40 = a1;
    v41 = 0;
    v12 = 0;
    v14 = *(a1 + 56);
    v36 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v38 = (v7 + 8);
    v39 = v18;
    v11 = &qword_1019F37C0;
    if (v17)
    {
LABEL_8:
      while (2)
      {
        v20 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = *(a1 + 48);
        v42 = v23;
        v25 = *(v24 + 8 * v23);
        (*((swift_isaMask & *v25) + 0x88))();
        v3 = *(a2 + 16);
        v43 = v25;
        v26 = 0;
        do
        {
          if (v3 == v26)
          {
            (*v38)(v9, v6);

            *&v37[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
            a1 = v40;
            v19 = __OFADD__(v41++, 1);
            v18 = v39;
            v17 = v44;
            if (v19)
            {
              goto LABEL_22;
            }

            if (!v44)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
          }

          v27 = v26 + 1;
          sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
          v28 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = v27;
        }

        while ((v28 & 1) == 0);
        (*v38)(v9, v6);

        v18 = v39;
        a1 = v40;
        v17 = v44;
        if (v44)
        {
          continue;
        }

        break;
      }
    }

LABEL_9:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v18)
      {
        v29 = sub_1010F47D4(v37, v34, v41, a1);

        return v29;
      }

      v22 = *(v36 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = a1;
  v32 = swift_slowAlloc();

  v29 = sub_100ED9F50(v32, v11, v31, a2);

  return v29;
}

Swift::Int sub_100EDE1B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = _swiftEmptySetSingleton;
    v37 = _swiftEmptySetSingleton;

    v34 = __CocoaSet.makeIterator()();
    v9 = __CocoaSet.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      v33 = type metadata accessor for CRLBoardItem(0);
      v11 = v10;
      v32 = (v6 + 8);
      do
      {
        v35 = v11;
        v18 = swift_dynamicCast();
        (*((swift_isaMask & *v36) + 0x88))(v18);
        v19 = 0;
        v20 = *(a2 + 16);
        while (v20 != v19)
        {
          v21 = v19 + 1;
          sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          v19 = v21;
          if (v22)
          {
            (*v32)(v8, v5);

            goto LABEL_7;
          }
        }

        (*v32)(v8, v5);
        v23 = v36;
        v24 = v2[2];
        if (v2[3] <= v24)
        {
          sub_100E75360(v24 + 1);
        }

        v2 = v37;
        result = NSObject._rawHashValue(seed:)(v37[5]);
        v13 = v2 + 7;
        v14 = -1 << *(v2 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~v2[(v15 >> 6) + 7]) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~v2[(v15 >> 6) + 7])) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v26 && (v25 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v27 = v16 == v26;
            if (v16 == v26)
            {
              v16 = 0;
            }

            v25 |= v27;
            v28 = v13[v16];
          }

          while (v28 == -1);
          v17 = __clz(__rbit64(~v28)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(v2[6] + 8 * v17) = v23;
        ++v2[2];
LABEL_7:
        v11 = __CocoaSet.Iterator.next()();
      }

      while (v11);
    }
  }

  else
  {
    v29 = v31;
    v30 = sub_100EDDD8C(a1, a2);
    if (!v29)
    {
      return v30;
    }
  }

  return v2;
}

unint64_t sub_100EDE564()
{
  result = qword_101A22890;
  if (!qword_101A22890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22890);
  }

  return result;
}

uint64_t sub_100EDE5B8()
{
  type metadata accessor for Ref();

  return swift_getWitnessTable();
}

uint64_t sub_100EDE648()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  return sub_100EBF1E0(&v5, *(v0 + 56), *(v0 + 64), *(v0 + 72));
}

uint64_t sub_100EDE6C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_100EDE7A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandMergeDatabaseChanges();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100EDE814()
{
  result = qword_101A22958;
  if (!qword_101A22958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22958);
  }

  return result;
}

unint64_t sub_100EDE86C()
{
  result = qword_101A22960;
  if (!qword_101A22960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22960);
  }

  return result;
}

uint64_t sub_100EDE8F8@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v55 = type metadata accessor for InputConnectionBehavior();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v37[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v2 - 8);
  v52 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v51 = &v37[-v5];
  v6 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v6 - 8);
  v53 = &v37[-v7];
  v8 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v8 - 8);
  v49 = &v37[-v9];
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v50 = type metadata accessor for LocalizedStringResource();
  v57 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v48 = &v37[-v18];
  v46 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v11 + 104);
  v20(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38 = v19;
  v40 = v10;
  v20(v13, v19, v10);
  v39 = v11 + 104;
  v41 = v20;
  v21 = v49;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v22 = *(v57 + 56);
  v57 += 56;
  v47 = v22;
  v22(v21, 0, 1, v50);
  v23 = type metadata accessor for CRLBoardEntity();
  (*(*(v23 - 8) + 56))(v53, 1, 1, v23);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20(v13, v19, v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = v51;
  IntentDialog.init(_:)();
  v25 = type metadata accessor for IntentDialog();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v42 = v27;
  v43 = v26 + 56;
  v27(v24, 0, 1, v25);
  v27(v52, 1, 1, v25);
  v44 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v58 + 104);
  v58 += 104;
  v45 = v28;
  v28(v54);
  sub_100EE007C(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v29 = v49;
  *v56 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v53 = sub_1005B981C(&qword_101A22978);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v38;
  v31 = v40;
  v32 = v41;
  v41(v13, v38, v40);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v13, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v47(v29, 0, 1, v50);
  v61 = 0;
  v33 = v42;
  v42(v51, 1, 1, v25);
  v33(v52, 1, 1, v25);
  (v45)(v54, v44, v55);
  sub_100AC186C();
  v34 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v35 = v56;
  v56[1] = v34;
  sub_1005B981C(&qword_1019F6280);
  v59 = 0xD00000000000001FLL;
  v60 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v35[2] = result;
  v35[6] = &type metadata for CRLFavoriteBoardIntentPerformer;
  v35[7] = &off_1018A8AC0;
  return result;
}

uint64_t sub_100EDF260(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for CRLBoardEntity();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100EDF388, 0, 0);
}

uint64_t sub_100EDF388()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = static OS_os_log.appIntents;
  Logger.init(_:)();
  IntentParameter.wrappedValue.getter();
  *(v0 + 192) = *v1;
  v3 = *(v0 + 216);
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  *(v0 + 104) = &type metadata for CRLBoardLibraryProvidingDependency;
  *(v0 + 112) = &off_1018AD9C0;
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_100EDF4D4;
  v5 = *(v0 + 160);

  return (sub_100F18050)(v3, v5, v0 + 80);
}

uint64_t sub_100EDF4D4(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    sub_1006164FC(*(v4 + 160), type metadata accessor for CRLBoardEntity);
    v5 = sub_100EDF74C;
  }

  else
  {
    v6 = *(v4 + 160);
    *(v4 + 218) = a1 & 1;
    sub_1006164FC(v6, type metadata accessor for CRLBoardEntity);
    sub_100005070(v4 + 80);
    v5 = sub_100EDF63C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100EDF63C()
{
  v1 = *(v0 + 218);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  IntentParameter.wrappedValue.getter();
  *(v0 + 217) = v1;
  EntityProperty.wrappedValue.setter();
  sub_1006164FC(v5, type metadata accessor for CRLBoardEntity);
  static IntentResult.result<>()();
  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100EDF74C()
{
  v20 = v0;
  v1 = v0[16];
  sub_100005070((v0 + 10));
  sub_100EE0014(v1, (v0 + 2));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[19];
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 138412546;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    IntentParameter.wrappedValue.getter();
    sub_1005F1308(v4, v5);
    sub_1006164FC(v4, type metadata accessor for CRLBoardEntity);
    v10 = sub_10084B8C8();
    v12 = v11;
    sub_1006164FC(v5, type metadata accessor for CRLBoardIdentifier);
    sub_100EE004C((v0 + 2));
    v13 = sub_101007640(v10, v12, &v19);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error changing favorite status: %@ - %s", v6, 0x16u);
    sub_10077CA6C(v7);

    sub_100005070(v8);
  }

  else
  {

    sub_100EE004C((v0 + 2));
  }

  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[21];
  type metadata accessor for _PrebuiltAppIntentError();
  sub_100EE007C(&qword_101A00A28, &type metadata accessor for _PrebuiltAppIntentError);
  swift_allocError();
  static _UnrecoverableError.unknownError.getter();
  swift_willThrow();

  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100EDFA40()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD8728);
  sub_1005EB3DC(v6, qword_101AD8728);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100EDFC38()
{
  v0 = sub_1005B981C(&qword_101A22988);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A22990);
  __chkstk_darwin(v1);
  sub_100EDFFC0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A22998);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A229A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100EDFE2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2590 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD8728);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100EDFED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100EDF260(a1);
}

uint64_t sub_100EDFF74(uint64_t a1)
{
  v2 = sub_100EDFFC0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100EDFFC0()
{
  result = qword_101A22980;
  if (!qword_101A22980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22980);
  }

  return result;
}

uint64_t sub_100EE007C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100EE00C4()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v100 = *(v2 - 8);
  *&v3 = __chkstk_darwin(v2).n128_u64[0];
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = v6;
  v8 = [v6 layer];

  v9 = *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dropShadowView];
  v10 = [*&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dropShadowView] layer];
  v105 = *&v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView];
  v11 = [v105 layer];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v103 = v8;
  [v8 setMasksToBounds:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v102 = v10;
  [v10 setMasksToBounds:0];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  v99 = v5;
  v98 = v2;
  [v14 addSubview:v9];

  v16 = v105;
  [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
  v101 = v11;
  [v11 setMasksToBounds:1];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  [v17 addSubview:v16];

  sub_1005B981C(&unk_1019F4D60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10147F420;
  v20 = [v9 topAnchor];
  v21 = [v16 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [v9 leadingAnchor];
  v24 = [v16 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v19 + 40) = v25;
  v26 = [v9 trailingAnchor];
  v27 = [v16 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v19 + 48) = v28;
  v29 = [v9 bottomAnchor];
  v30 = [v16 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v19 + 56) = v31;
  v32 = [v16 topAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  *(v19 + 64) = v36;
  v37 = [v16 leadingAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor:v40];
  *(v19 + 72) = v41;
  v42 = [v16 trailingAnchor];
  v43 = [v1 view];
  if (!v43)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v44 = v43;
  v45 = [v43 trailingAnchor];

  v46 = [v42 constraintEqualToAnchor:v45];
  *(v19 + 80) = v46;
  v47 = [v16 bottomAnchor];
  v104 = v1;
  v48 = [v1 view];
  if (!v48)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v49 = v48;
  v50 = [v48 bottomAnchor];

  v51 = [v47 constraintEqualToAnchor:v50];
  *(v19 + 88) = v51;
  v52 = v19 & 0xFFFFFFFFFFFFFF8;
  v53 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v53)
  {
LABEL_17:
    v60 = objc_opt_self();
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v60 activateConstraints:isa];

    v62 = v104;
    v63 = *(v104 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailContainerView);
    [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
    v64 = v105;
    [v105 addSubview:v63];
    v65 = *(v62 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailBackdropView);
    [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v63 addSubview:v65];
    v66 = *(v62 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView);
    [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v63 addSubview:v66];
    v67 = *(v62 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel);
    [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v67 setLineBreakMode:4];
    [v64 addSubview:v67];
    v68 = *(v62 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
    [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v68 setLineBreakMode:4];
    [v64 addSubview:v68];
    v69 = *(v62 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
    [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v69 setLineBreakMode:4];
    [v64 addSubview:v69];
    v70 = *(v62 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton);
    [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v64 addSubview:v70];
    if (swift_unknownObjectWeakLoadStrong())
    {
      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = [v71 _bridgedConfigurationState];
        v73 = v99;
        static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = UICellConfigurationState.isEditing.getter();
        v75 = v104;
        (*((swift_isaMask & *v104) + 0x168))(v74 & 1);
        v76 = *&v75[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge];
        [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v64 addSubview:v76];
        v77 = *&v75[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView];
        [v77 setTranslatesAutoresizingMaskIntoConstraints:0];
        v78 = [v75 view];
        if (v78)
        {
          v79 = v78;

          [v79 addSubview:v77];

          swift_unknownObjectRelease();
          (*(v100 + 8))(v73, v98);
          return;
        }

        goto LABEL_34;
      }

      swift_unknownObjectRelease();
    }

    v55 = objc_opt_self();
    LODWORD(v51) = [v55 _atomicIncrementAssertCount];
    v106 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v106);
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    v81 = [v80 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v82;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v54 = 0;
  v55 = (v19 & 0xC000000000000001);
  v56 = 1148846080;
  while (1)
  {
    if (v55)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if (v54 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v57 = *(v19 + 8 * v54 + 32);
LABEL_14:
    v47 = v57;
    ++v54;
    type metadata accessor for UILayoutPriority(0);
    LODWORD(v51) = v58;
    v107 = 1065353216;
    v108 = 1148846080;
    sub_1005ED390();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v59) = v106;
    [v47 setPriority:v59];

    if (v53 == v54)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_23:
  v83 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v51;
  v85 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v85;
  v86 = sub_1005CF04C();
  *(inited + 104) = v86;
  *(inited + 72) = v56;
  *(inited + 136) = &type metadata for String;
  v87 = sub_1000053B0();
  *(inited + 112) = v47;
  *(inited + 120) = v52;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v87;
  *(inited + 152) = 767;
  v88 = v106;
  *(inited + 216) = v85;
  *(inited + 224) = v86;
  *(inited + 192) = v88;
  v89 = v56;
  v90 = v88;
  v91 = static os_log_type_t.error.getter();
  sub_100005404(v83, &_mh_execute_header, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v92 = static os_log_type_t.error.getter();
  sub_100005404(v83, &_mh_execute_header, v92, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v93 = swift_allocObject();
  v93[2] = 8;
  v93[3] = 0;
  v93[4] = 0;
  v93[5] = 0;
  v94 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v95 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v96 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v97 = String._bridgeToObjectiveC()();

  [v55 handleFailureInFunction:v95 file:v96 lineNumber:767 isFatal:0 format:v97 args:v94];
}

void sub_100EE0E70()
{
  (*((swift_isaMask & *v0) + 0x1C8))();
  sub_100EE52BC();
  sub_100EE402C();

  sub_100EE1210();
}

uint64_t sub_100EE0EFC()
{
  v1 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 144))(ObjectType, v2);
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6)
    {
      return v4;
    }
  }

  return 0;
}

uint64_t sub_100EE0F8C()
{
  v1 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 168))(ObjectType, v2);
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6)
    {
      return v4;
    }
  }

  return 0;
}

uint64_t sub_100EE101C()
{
  v1 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 216))(ObjectType, v2);
    v6 = v5;
    swift_unknownObjectRelease();
    if (v6)
    {
      return v4;
    }
  }

  return 0;
}

void sub_100EE10AC(void *a1)
{
  v2 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView;
  v3 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView);
  *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setBackgroundStyle:1];
    [v6 setHorizontalAlignment:1];
    v7 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView);
    [v7 addSubview:v6];
    sub_100B480BC(v7, v6);
    LODWORD(v8) = 1148846080;
    [v6 setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [v6 setContentCompressionResistancePriority:1 forAxis:v9];
  }

LABEL_4:
}

void sub_100EE1210()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 336))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [*(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel) font];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 fontDescriptor];

        [v8 pointSize];
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      if (qword_1019F25A0 != -1)
      {
        swift_once();
      }

      v11 = qword_101AD8748;
      v12 = objc_opt_self();
      v13 = [v12 configurationWithPointSize:v11 weight:v10];
      sub_1005B981C(&unk_1019F4D60);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_101465920;
      if (qword_1019F2598 != -1)
      {
        swift_once();
      }

      v15 = qword_101AD8740;
      *(v14 + 32) = qword_101AD8740;
      sub_100006370(0, &qword_101A11110);
      v16 = v15;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v18 = [v12 configurationWithPaletteColors:isa];

      v19 = [v13 configurationByApplyingConfiguration:v18];
      v35 = [objc_allocWithZone(NSTextAttachment) init];
      v20 = objc_opt_self();
      v21 = String._bridgeToObjectiveC()();

      v22 = [v20 systemImageNamed:v21];

      v23 = [v22 imageByApplyingSymbolConfiguration:v19];
      [v35 setImage:v23];

      v24 = v35;
    }

    else
    {
      v35 = v5;
    }
  }

  else
  {
    v35 = 0;
  }

  (*((swift_isaMask & *v1) + 0x178))();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = String._bridgeToObjectiveC()();

  v27 = [v25 initWithString:v26];

  if (v35)
  {
    v28 = sub_1004A48FC();
    v29 = objc_allocWithZone(NSAttributedString);
    v30 = String._bridgeToObjectiveC()();
    v31 = [v29 initWithString:v30];

    if (v28)
    {
      [v27 insertAttributedString:v31 atIndex:0];

      v32 = [objc_opt_self() attributedStringWithAttachment:v35];
      [v27 insertAttributedString:v32 atIndex:0];
    }

    else
    {
      [v27 appendAttributedString:v31];

      v32 = [objc_opt_self() attributedStringWithAttachment:v35];
      [v27 appendAttributedString:v32];
    }
  }

  v33 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel);
  v34 = v27;
  [v33 setAttributedText:v34];
}

void sub_100EE1730()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel);
  (*((swift_isaMask & *v0) + 0x188))();
  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];
}

void sub_100EE17D8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppEntityVisualState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
  v9 = *&v2[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController];
  if (v9)
  {
    v10 = *((swift_isaMask & *v9) + 0x168);
    v11 = v9;
    v10(a1 & 1);

    [v2 isSelected];
    [v2 isHighlighted];
    v12 = *&v2[v8];
    if (v12)
    {
      (*((swift_isaMask & *v12) + 0x160))();
      AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
      UIView.updateAppEntityAnnotation(with:)();
      (*(v5 + 8))(v7, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100EE19A8(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
  v4 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  if (v4)
  {
    v5 = [*(v4 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) superview];
    if (!v5)
    {
      v39 = objc_opt_self();
      v13 = [v39 _atomicIncrementAssertCount];
      v40 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v40);
      StaticString.description.getter();
      v14 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v15 = String._bridgeToObjectiveC()();

      v16 = [v15 lastPathComponent];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v13;
      v22 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v22;
      v23 = sub_1005CF04C();
      *(inited + 104) = v23;
      *(inited + 72) = v14;
      *(inited + 136) = &type metadata for String;
      v24 = sub_1000053B0();
      *(inited + 112) = v17;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v24;
      *(inited + 152) = 178;
      v25 = v40;
      *(inited + 216) = v22;
      *(inited + 224) = v23;
      *(inited + 192) = v25;
      v26 = v14;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v29, "Thumbnail image view has no superview, so we can't determine a rect for the zoom animation.", 91, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v30 = swift_allocObject();
      *(v30 + 16) = 8;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0u;
      v31 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      [v39 handleFailureInFunction:v32 file:v33 lineNumber:178 isFatal:0 format:v34 args:v31];

      v11 = 0uLL;
      v12 = 0uLL;
      goto LABEL_8;
    }

    v6 = *(v1 + v3);
    if (v6)
    {
      [*(v6 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) frame];
      [v5 convertRect:v1 toCoordinateSpace:?];
      v36 = v7;
      v37 = v8;
      v35 = v9;
      v38 = v10;

      *&v12 = v35;
      *&v11 = v36;
      *(&v11 + 1) = v37;
      *(&v12 + 1) = v38;
LABEL_8:
      *a1 = v11;
      *(a1 + 16) = v12;
      *(a1 + 32) = v5 == 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100EE1DF0(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardTitle);
  v4 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardTitle);
  v5 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardTitle + 8);
  *v3 = result;
  v3[1] = a2;
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v5 || (v4 == result ? (v6 = v5 == a2) : (v6 = 0), !v6 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
LABEL_10:
    v7 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
    if (!v7)
    {
      __break(1u);
      return result;
    }

    v8 = v7;
    sub_100EE1210();
  }
}

uint64_t sub_100EE1E90(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_lastEditedTimestampText);
  v4 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_lastEditedTimestampText);
  v5 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_lastEditedTimestampText + 8);
  *v3 = result;
  v3[1] = a2;
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v5 || (v4 == result ? (v6 = v5 == a2) : (v6 = 0), !v6 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
LABEL_10:
    v7 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
    if (!v7)
    {
      __break(1u);
      return result;
    }

    v8 = *((swift_isaMask & *v7) + 0x190);
    v9 = v7;
    v8();
  }
}

void sub_100EE1F74()
{
  v1 = [v0 contentView];
  v2 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
  v3 = *&v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v1;
  *(v3 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem + 8) = &off_1018A7C78;
  swift_unknownObjectWeakAssign();
  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v5 loadViewIfNeeded];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    [v4 addSubview:v7];
    v33 = [v4 layer];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v0 contentView];
    sub_100B480BC(v0, v9);

    sub_100B480BC(v4, v8);
    [v33 setMasksToBounds:0];
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 382;
    v23 = v34;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:382 isFatal:0 format:v32 args:v29];
  }
}

_BYTE *sub_100EE2464(char a1)
{
  *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isSelected) = a1;
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge);
  v5 = result[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked];
  result[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked] = a1;
  if (v5 != v3)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

uint64_t sub_100EE24AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_dimsThumbnail] = 0;
  v11 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardTitle];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_lastEditedTimestampText];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxLastEditedTimestampText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_folderName];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_isFavorite] = 0;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_canShowFavoriteButton] = 1;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardAccessState] = 0;
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController] = 0;
  v22.receiver = v4;
  v22.super_class = _s4ItemCMa();
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  _s8GridItemCMa();
  if (swift_dynamicCastClass())
  {
    v17 = v16;
    v18 = sub_10068DCDC();
LABEL_5:
    v20 = v18;
    sub_100EE7614(v18);

    sub_100EE1F74();
    return v16;
  }

  _s8ListItemCMa();
  if (swift_dynamicCastClass())
  {
    v19 = v16;
    v18 = sub_100A4F410();
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100EE2780(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppEntityVisualState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s4ItemCMa();
  v15.receiver = v2;
  v15.super_class = v8;
  result = objc_msgSendSuper2(&v15, "setSelected:", a1 & 1);
  v10 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
  v11 = *&v2[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController];
  if (v11)
  {
    v12 = v11;
    v13 = [v2 isSelected];
    (*((swift_isaMask & *v12) + 0x120))(v13);

    [v2 isSelected];
    result = [v2 isHighlighted];
    v14 = *&v2[v10];
    if (v14)
    {
      (*((swift_isaMask & *v14) + 0x160))();
      AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
      UIView.updateAppEntityAnnotation(with:)();
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100EE2990(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = _s4ItemCMa();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_100EE2A3C()
{
  v1 = v0;
  v2 = type metadata accessor for AppEntityVisualState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
  v7 = *&v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 isHighlighted];
    *(v8 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isHighlighted) = v9;
    (*((swift_isaMask & *v8) + 0x1C8))();

    [v1 isSelected];
    [v1 isHighlighted];
    v10 = *&v1[v6];
    if (v10)
    {
      (*((swift_isaMask & *v10) + 0x160))();
      AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
      UIView.updateAppEntityAnnotation(with:)();
      (*(v3 + 8))(v5, v2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100EE2C24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName + 8);
  if (!v5)
  {
    if (!a2)
    {
      return;
    }

LABEL_10:
    v7 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
    v8 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel);
      v10 = *((swift_isaMask & *v8) + 0x198);
      v11 = v8;
      v10();
      v12 = String._bridgeToObjectiveC()();

      [v9 setText:v12];

      v13 = *(v3 + v7);
      if (v13)
      {
        v14 = [v13 view];
        if (v14)
        {
          v15 = v14;
          [v14 setNeedsUpdateConstraints];

          return;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v6 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName) == a1 && v5 == a2;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }
}

void sub_100EE2D94()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton);
    v3 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_isFavorite);
    v4 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite;
    v2[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite] = v3;
    v5 = *&v2[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView];
    v7 = v2;
    [v5 setHidden:v3 ^ 1u];
    if (v2[v4] == 1)
    {
      v6 = v7[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_showsOuterGlow] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    [*&v7[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView] setHidden:v6 & 1];
  }

  else
  {
    __break(1u);
  }
}

UIImageSymbolWeight sub_100EE2E90()
{
  result = UIImageSymbolWeightForFontWeight(UIFontWeightMedium);
  qword_101AD8748 = result;
  return result;
}

char *sub_100EE2EBC()
{
  *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dropShadowView;
  v2 = type metadata accessor for CRLShadowView();
  *&v0[v1] = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView;
  *&v0[v3] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView;
  *&v0[v4] = [objc_allocWithZone(_s4ItemC14ViewControllerC18ThumbnailImageViewCMa()) init];
  v5 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailBackdropView;
  *&v0[v5] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailContainerView;
  *&v0[v6] = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton;
  *&v0[v7] = [objc_allocWithZone(_s4ItemC14ViewControllerC14FavoriteButtonCMa()) init];
  v8 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView;
  *&v0[v8] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView] = 0;
  v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isSelected] = 0;
  v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isHighlighted] = 0;
  v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail] = 0;
  v9 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge;
  *&v0[v9] = [objc_allocWithZone(_s4ItemC14ViewControllerC19SelectionStateBadgeCMa()) init];
  v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isInMultipleSelectionMode] = 0;
  v10 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  *&v0[v10] = v11;
  v13 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  *&v0[v13] = v14;
  v16 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  *&v0[v16] = v17;
  *&v0[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_overrideTraitCollection] = 0;
  v21.receiver = v0;
  v21.super_class = _s4ItemC14ViewControllerCMa();
  v19 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  *(*&v19[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton] + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_accessibilityDelegate + 8) = &off_1018A7C28;
  swift_unknownObjectWeakAssign();
  return v19;
}

void sub_100EE3338()
{
  v10.receiver = v0;
  v10.super_class = _s4ItemC14ViewControllerCMa();
  v1 = objc_msgSendSuper2(&v10, "viewDidLoad");
  v2 = (*((swift_isaMask & *v0) + 0x1C0))(v1);
  v3 = (*((swift_isaMask & *v0) + 0x1C8))(v2);
  v4 = (*((swift_isaMask & *v0) + 0x1D0))(v3);
  (*((swift_isaMask & *v0) + 0x1D8))(v4);
  v5 = [objc_opt_self() defaultCenter];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_100EE7E48;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = *"";
  v9[2] = sub_100059694;
  v9[3] = &unk_1018A7E40;
  v7 = _Block_copy(v9);

  v8 = [v5 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:0 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void sub_100EE3584()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x1D8))();
  }
}

char *sub_100EE3A58()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView;
  *&v0[v1] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite] = 0;
  v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_showsOuterGlow] = 0;
  v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_size] = 1;
  v36.receiver = v0;
  v36.super_class = _s4ItemC14ViewControllerC14FavoriteButtonCMa();
  v3 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setUserInteractionEnabled:0];
  sub_1005B981C(&unk_101A150B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  *(v4 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v4 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  *(v4 + 48) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v4 + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView;
  [*&v3[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v3[v5] setHidden:1];
  [v3 addSubview:*&v3[v5]];
  v6 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView;
  [*&v3[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v3[v6] setHidden:1];
  LODWORD(v7) = 1148846080;
  [*&v3[v6] setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [*&v3[v6] setContentHuggingPriority:0 forAxis:v8];
  [v3 addSubview:*&v3[v6]];
  sub_100EE402C();
  v9 = [*&v3[v6] topAnchor];
  v10 = [v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  v12 = [*&v3[v6] leadingAnchor];
  v13 = [v3 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  v15 = [*&v3[v6] trailingAnchor];
  v16 = [v3 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  v18 = [*&v3[v6] bottomAnchor];
  v19 = [v3 bottomAnchor];

  v20 = [v18 constraintEqualToAnchor:v19];
  sub_1005B981C(&unk_1019F4D60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101471410;
  *(v21 + 32) = v11;
  *(v21 + 40) = v14;
  *(v21 + 48) = v17;
  *(v21 + 56) = v20;
  v22 = *&v3[v5];
  v35 = v11;
  v34 = v14;
  v23 = v17;
  v24 = v20;
  v25 = [v22 centerXAnchor];
  v26 = [*&v3[v6] centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v21 + 64) = v27;
  v28 = [*&v3[v5] centerYAnchor];
  v29 = [*&v3[v6] centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v21 + 72) = v30;
  v31 = objc_opt_self();
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];

  return v3;
}

void sub_100EE402C()
{
  if (*(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_size))
  {
    if (qword_1019F25B0 != -1)
    {
      swift_once();
    }

    v1 = &qword_101A229B0;
  }

  else
  {
    if (qword_1019F25A8 != -1)
    {
      swift_once();
    }

    v1 = &qword_101A229A8;
  }

  v2 = *v1;
  v3 = objc_opt_self();
  v32 = v2;
  v4 = [v3 preferredFontForTextStyle:v32];

  [v4 pointSize];
  v6 = v5;

  v7 = *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView);
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 systemImageNamed:v9];

  [v7 setImage:v10];
  sub_1005B981C(&unk_1019F4D60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101465920;
  if (qword_1019F25C0 != -1)
  {
    swift_once();
  }

  v12 = qword_101A229C0;
  *(v11 + 32) = qword_101A229C0;
  sub_100006370(0, &qword_101A11110);
  v13 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = objc_opt_self();
  v16 = [v15 configurationWithPaletteColors:isa];

  v17 = [v15 configurationWithPointSize:9 weight:v6 + 1.0];
  v18 = [v16 configurationByApplyingConfiguration:v17];

  [v7 setPreferredSymbolConfiguration:v18];
  v19 = *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v8 systemImageNamed:v20];

  [v19 setImage:v21];
  v22 = v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_accessibilityDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    if (qword_1019F25B8 != -1)
    {
      swift_once();
    }

    v25 = (*(v23 + 8))(v0, qword_101A229B8, ObjectType, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1019F25B8 != -1)
    {
      swift_once();
    }

    v25 = qword_101A229B8;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101465920;
  *(v26 + 32) = v25;
  v27 = v25;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v15 configurationWithPaletteColors:v28];

  v30 = [v15 configurationWithPointSize:4 weight:v6];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  [v19 setPreferredSymbolConfiguration:v31];
}

UIImageSymbolWeight sub_100EE45EC()
{
  result = UIImageSymbolWeightForFontWeight(UIFontWeightRegular);
  qword_101A229D0 = result;
  return result;
}

void sub_100EE462C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() colorNamed:v0];

  if (v1)
  {
    qword_101A229E0 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_100EE46A8()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  qword_101A229E8 = result;
  return result;
}

id sub_100EE46E8()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.5];
  qword_101A229F0 = result;
  return result;
}

void sub_100EE4724()
{
  v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked] = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 systemImageNamed:v1];

  if (v3)
  {
    v4 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_baseCheckedImage;
    if (qword_1019F25D8 != -1)
    {
      swift_once();
    }

    v5 = qword_101A229D8;
    v6 = [v3 imageWithTintColor:qword_101A229D8];

    *&v0[v4] = v6;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v2 systemImageNamed:v7];

    if (v8)
    {
      v9 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_baseUncheckedImage;
      v10 = [v8 imageWithTintColor:v5];

      *&v0[v9] = v10;
      *&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_checkedImage] = 0;
      *&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_uncheckedImage] = 0;
      v17.receiver = v0;
      v17.super_class = _s4ItemC14ViewControllerC19SelectionStateBadgeCMa();
      v11 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100EE52BC();
      v12 = [objc_opt_self() clearColor];
      [v11 setBackgroundColor:v12];

      LODWORD(v13) = 1148846080;
      [v11 setContentCompressionResistancePriority:0 forAxis:v13];
      LODWORD(v14) = 1148846080;
      [v11 setContentCompressionResistancePriority:1 forAxis:v14];
      LODWORD(v15) = 1148846080;
      [v11 setContentHuggingPriority:0 forAxis:v15];
      LODWORD(v16) = 1148846080;
      [v11 setContentHuggingPriority:1 forAxis:v16];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

CGFloat sub_100EE4A2C()
{
  v1 = *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_checkedImage);
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  if (v1)
  {
    v5 = v1;
    [v5 size];
    v7 = v6;
    v9 = v8;
    [v5 alignmentRectInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v3 = v7 - (v13 + v17);
    v4 = v9 - (v11 + v15);
  }

  v18 = *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_uncheckedImage);
  v19 = 0.0;
  if (v18)
  {
    v20 = v18;
    [v20 size];
    v22 = v21;
    v24 = v23;
    [v20 alignmentRectInsets];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v2 = v22 - (v28 + v32);
    v19 = v24 - (v26 + v30);
  }

  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v33 = 0;
  v34 = 0;
  v37.size.width = v3;
  v37.size.height = v4;
  v35 = v2;
  v38 = CGRectUnion(v37, *(&v19 - 3));
  return v38.size.width;
}

void sub_100EE4B60(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for CGPathFillRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s4ItemC14ViewControllerC19SelectionStateBadgeCMa();
  v68.receiver = v4;
  v68.super_class = v14;
  objc_msgSendSuper2(&v68, "drawRect:", a1, a2, a3, a4);
  v15 = UIGraphicsGetCurrentContext();
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_uncheckedImage;
    v18 = *&v5[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_uncheckedImage];
    if (v18)
    {
      [v18 size];
      v20 = v19;
      v22 = v21;
      v70.origin.x = a1;
      v70.origin.y = a2;
      v70.size.width = a3;
      v70.size.height = a4;
      Width = CGRectGetWidth(v70);
      v71.size.width = a3;
      v24 = Width * 0.5 - v20 * 0.5;
      v65 = a1;
      v66 = a4;
      v71.origin.x = a1;
      v25 = a2;
      v71.origin.y = a2;
      v63 = v71.size.width;
      v71.size.height = a4;
      v26 = CGRectGetHeight(v71) * 0.5 - v20 * 0.5;
      v72.origin.x = v24;
      v72.origin.y = v26;
      v72.size.width = v20;
      v72.size.height = v22;
      v27 = CGRectGetWidth(v72) * 0.21 * 0.5;
      v73.origin.x = v24;
      v73.origin.y = v26;
      v73.size.width = v20;
      v73.size.height = v22;
      v28 = CGRectGetWidth(v73);
      v64 = 0.21;
      v29 = v28 * 0.21 * 0.5;
      v74.origin.x = v24;
      v74.origin.y = v26;
      v74.size.width = v20;
      v74.size.height = v22;
      v75 = CGRectInset(v74, v27, v29);
      v30 = CGPathCreateWithEllipseInRect(v75, 0);
      if (qword_1019F25E8 != -1)
      {
        swift_once();
      }

      v31 = [qword_101A229E8 CGColor];
      CGContextSetFillColorWithColor(v16, v31);

      v67 = v30;
      CGContextAddPath(v16, v30);
      v32 = *(v11 + 104);
      v62 = enum case for CGPathFillRule.evenOdd(_:);
      v61 = v32;
      v32(v13);
      CGContextRef.fillPath(using:)();
      v60 = *(v11 + 8);
      v60(v13, v10);
      CGContextSaveGState(v16);
      if (qword_1019F25F0 != -1)
      {
        swift_once();
      }

      v33 = [qword_101A229F0 CGColor];
      v69.width = 0.0;
      v69.height = 0.0;
      CGContextSetShadowWithColor(v16, v69, 2.0, v33);

      v34 = *&v5[v17];
      if (v34)
      {
        v35 = v17;
        v36 = qword_1019F25D8;
        v37 = v34;
        if (v36 != -1)
        {
          swift_once();
        }

        v38 = qword_101A229D8;
        v76.origin.x = v24;
        v76.origin.y = v26;
        v76.size.width = v20;
        v76.size.height = v22;
        CGContextBeginTransparencyLayerWithRect(v16, v76, 0);
        UIGraphicsPushContext(v16);
        [v37 drawInRect:{v24, v26, v20, v22}];
        UIGraphicsPopContext();
        CGContextSetBlendMode(v16, kCGBlendModeSourceIn);
        v39 = [v38 CGColor];
        CGContextSetFillColorWithColor(v16, v39);

        v77.origin.x = v24;
        v77.origin.y = v26;
        v77.size.width = v20;
        v77.size.height = v22;
        CGContextFillRect(v16, v77);
        CGContextEndTransparencyLayer(v16);

        CGContextRestoreGState(v16);
        if (v5[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked] != 1)
        {
          goto LABEL_16;
        }

        v40 = *&v5[v35];
        if (v40)
        {
          [v40 size];
          v42 = v41;
          v44 = v43;
          v46 = v65;
          v45 = v66;
          v78.origin.x = v65;
          v78.origin.y = a2;
          v47 = v63;
          v78.size.width = v63;
          v78.size.height = v66;
          v48 = CGRectGetWidth(v78) * 0.5 - v42 * 0.5;
          v79.origin.x = v46;
          v79.origin.y = v25;
          v49 = v48;
          v79.size.width = v47;
          v79.size.height = v45;
          v50 = CGRectGetHeight(v79) * 0.5 - v42 * 0.5;
          v80.origin.x = v49;
          v80.origin.y = v50;
          v80.size.width = v42;
          v80.size.height = v44;
          v51 = CGRectGetWidth(v80);
          v52 = v64;
          v53 = v51 * v64 * 0.5;
          v81.origin.x = v49;
          v81.origin.y = v50;
          v81.size.width = v42;
          v81.size.height = v44;
          v54 = CGRectGetWidth(v81) * v52 * 0.5;
          v82.origin.x = v49;
          v82.origin.y = v50;
          v82.size.width = v42;
          v82.size.height = v44;
          v83 = CGRectInset(v82, v53, v54);
          v55 = CGPathCreateWithEllipseInRect(v83, 0);
          if (qword_1019F25E0 != -1)
          {
            swift_once();
          }

          v56 = [qword_101A229E0 CGColor];
          CGContextSetFillColorWithColor(v16, v56);

          CGContextAddPath(v16, v55);
          v61(v13, v62, v10);
          CGContextRef.fillPath(using:)();
          v60(v13, v10);
          v57 = *&v5[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_checkedImage];
          if (v57)
          {
            v58 = v57;
            v84.origin.x = v49;
            v84.origin.y = v50;
            v84.size.width = v42;
            v84.size.height = v44;
            CGContextBeginTransparencyLayerWithRect(v16, v84, 0);
            UIGraphicsPushContext(v16);
            [v58 drawInRect:{v49, v50, v42, v44}];
            UIGraphicsPopContext();
            CGContextSetBlendMode(v16, kCGBlendModeSourceIn);
            v59 = [v38 CGColor];
            CGContextSetFillColorWithColor(v16, v59);

            v85.origin.x = v49;
            v85.origin.y = v50;
            v85.size.width = v42;
            v85.size.height = v44;
            CGContextFillRect(v16, v85);
            CGContextEndTransparencyLayer(v16);

LABEL_16:
            return;
          }

LABEL_21:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_100EE52BC()
{
  if (qword_1019F25D0 != -1)
  {
    swift_once();
  }

  v1 = qword_101A229D0;
  v2 = objc_opt_self();
  v3 = [v2 configurationWithWeight:v1];
  if (qword_1019F25C8 != -1)
  {
    swift_once();
  }

  v4 = [v2 configurationWithTextStyle:qword_101A229C8];
  v5 = [v3 configurationByApplyingConfiguration:v4];

  v6 = [v0 traitCollection];
  v11 = [v5 configurationWithTraitCollection:v6];

  v7 = [*&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_baseCheckedImage] imageByApplyingSymbolConfiguration:v11];
  v8 = *&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_checkedImage];
  *&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_checkedImage] = v7;

  v9 = [*&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_baseUncheckedImage] imageByApplyingSymbolConfiguration:v11];
  v10 = *&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_uncheckedImage];
  *&v0[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_uncheckedImage] = v9;

  [v0 invalidateIntrinsicContentSize];
}

uint64_t sub_100EE56C8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = _s4ItemCMa();
  v54.receiver = v1;
  v54.super_class = v12;
  v13 = objc_msgSendSuper2(&v54, "accessibilityLabel");
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_9:
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v52 = v2;
  v19 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100024CBC((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[16 * v21];
  *(v22 + 4) = v15;
  *(v22 + 5) = v17;
  v2 = v52;
LABEL_10:
  v23 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
  swift_beginAccess();
  sub_1006BF2A8(&v1[v23], v11);
  v24 = *(v3 + 48);
  if (v24(v11, 1, v2))
  {
    sub_1008F6574(v11);
  }

  else
  {
    sub_10075ABD8(v11, v5);
    sub_1008F6574(v11);
    v25 = sub_100F888B8();
    v51 = v26;
    v52 = v25;
    sub_1000510BC(v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v27 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v29 = *(v19 + 2);
    v28 = *(v19 + 3);
    if (v29 >= v28 >> 1)
    {
      v19 = sub_100024CBC((v28 > 1), v29 + 1, 1, v19);
    }

    *(v19 + 2) = v29 + 1;
    v30 = &v19[16 * v29];
    v31 = v51;
    *(v30 + 4) = v52;
    *(v30 + 5) = v31;
    v2 = v27;
  }

  sub_1006BF2A8(&v1[v23], v8);
  if (v24(v8, 1, v2))
  {
    sub_1008F6574(v8);
  }

  else
  {
    sub_10075ABD8(v8, v5);
    sub_1008F6574(v8);
    v32 = sub_100F88220();
    v34 = v33;
    sub_1000510BC(v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v36 = *(v19 + 2);
    v35 = *(v19 + 3);
    if (v36 >= v35 >> 1)
    {
      v19 = sub_100024CBC((v35 > 1), v36 + 1, 1, v19);
    }

    *(v19 + 2) = v36 + 1;
    v37 = &v19[16 * v36];
    *(v37 + 4) = v32;
    *(v37 + 5) = v34;
  }

  v38 = *&v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxLastEditedTimestampText + 8];
  if (v38)
  {
    v39 = *&v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxLastEditedTimestampText];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v41 = *(v19 + 2);
    v40 = *(v19 + 3);
    if (v41 >= v40 >> 1)
    {
      v19 = sub_100024CBC((v40 > 1), v41 + 1, 1, v19);
    }

    *(v19 + 2) = v41 + 1;
    v42 = &v19[16 * v41];
    *(v42 + 4) = v39;
    *(v42 + 5) = v38;
  }

  v43 = &v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName];
  v44 = *&v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName + 8];
  if (v44)
  {
    v45 = *v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v47 = *(v19 + 2);
    v46 = *(v19 + 3);
    if (v47 >= v46 >> 1)
    {
      v19 = sub_100024CBC((v46 > 1), v47 + 1, 1, v19);
    }

    *(v19 + 2) = v47 + 1;
    v48 = &v19[16 * v47];
    *(v48 + 4) = v45;
    *(v48 + 5) = v44;
  }

  v53 = v19;
  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  v49 = BidirectionalCollection<>.joined(separator:)();

  return v49;
}

uint64_t sub_100EE5C10()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v7 = sub_1005B981C(&qword_1019F3480);
    (*(*(v7 - 8) + 56))(v3, 5, 5, v7);
    LOBYTE(v6) = sub_100068604(v5 + v6, v3);
    swift_unknownObjectRelease();
    sub_1000510BC(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if (v6)
    {
      return 0;
    }
  }

  if (*(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_isFavorite) != 1)
  {
    return 0;
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id sub_100EE5E04(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100EE5E84()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v7 = sub_1005B981C(&qword_1019F3480);
    (*(*(v7 - 8) + 56))(v3, 5, 5, v7);
    LOBYTE(v6) = sub_100068604(v5 + v6, v3);
    sub_1000510BC(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if ((v6 & 1) != 0 || *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardAccessState) == 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v8 = [objc_opt_self() mainBundle];
      v9 = String._bridgeToObjectiveC()();
      v10 = String._bridgeToObjectiveC()();
      v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      return v12;
    }
  }

  return result;
}

void *sub_100EE6160()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = _s5BoardVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v11;
  }

  v13 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  type metadata accessor for CRLBoardLibrary();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    return v11;
  }

  v38 = v13;
  v15 = v14;
  v16 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
  swift_beginAccess();
  sub_1006BF2A8(v1 + v16, v7);
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v7, 1, v17) == 1)
  {
    swift_unknownObjectRelease();
    sub_1008F6574(v7);
    return _swiftEmptyArrayStorage;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    swift_unknownObjectRelease();
    v34 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v35 = v7;
LABEL_17:
    sub_1000510BC(v35, v34);
    return _swiftEmptyArrayStorage;
  }

  sub_100065C18(v7, v10, _s5BoardVMa);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v34 = _s5BoardVMa;
    v35 = v10;
    goto LABEL_17;
  }

  sub_1006BF2A8(v1 + v16, v4);
  result = (v18)(v4, 1, v17);
  if (result != 1)
  {
    v20 = *(*(v15 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
    __chkstk_darwin(result);
    *(&v36 - 2) = v10;

    v21 = sub_101107CA8(sub_1008F65DC, (&v36 - 4), v20);

    v22 = sub_100F48B98(v4, v21);
    swift_unknownObjectRelease();

    sub_1000510BC(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v23 = *(v22 + 2);
    if (v23)
    {
      v36 = v22;
      v37 = v10;
      v24 = v22 + 32;
      do
      {
        v25 = *v24++;
        sub_1012C8024();
        v26 = sub_1012C843C();
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v25;
        v29 = objc_allocWithZone(UIAccessibilityCustomAction);

        v30 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_100EE7F04;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100FDE79C;
        aBlock[3] = &unk_1018A7EE0;
        v31 = _Block_copy(aBlock);
        v32 = [v29 initWithName:v30 image:v26 actionHandler:{v31, v36}];

        _Block_release(v31);

        v33 = v32;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        --v23;
      }

      while (v23);
      v11 = v40;
      v10 = v37;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    swift_unknownObjectRelease();

    sub_1000510BC(v10, _s5BoardVMa);
    return v11;
  }

  __break(1u);
  return result;
}

BOOL sub_100EE66D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = Strong;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    *(v11 + 32) = v9;
    *(v11 + 40) = a3;
    sub_10064191C(0, 0, v6, &unk_1014B7D60, v11);
  }

  return Strong != 0;
}

uint64_t sub_100EE6838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 184) = a5;
  *(v5 + 120) = a4;
  sub_1005B981C(&unk_101A15B20);
  *(v5 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 136) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 144) = v7;
  *(v5 + 152) = v6;

  return _swift_task_switch(sub_100EE690C, v7, v6);
}

uint64_t sub_100EE690C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
    swift_beginAccess();
    sub_1006BF2A8(v3 + v4, v2);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_1008F5710;
    v6 = *(v0 + 128);
    v7 = *(v0 + 184);

    return sub_100F46DFC(v7, v6);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100EE6A3C()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v10 = sub_1005B981C(&qword_1019F3480);
    (*(*(v10 - 8) + 56))(v6, 5, 5, v10);
    LOBYTE(v9) = sub_100068604(v8 + v9, v6);
    sub_1000510BC(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if ((v9 & 1) != 0 || *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardAccessState) == 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
      type metadata accessor for MainActor();
      v12 = v0;
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v12;
      sub_10064191C(0, 0, v3, &unk_1014B7D48, v14);
      swift_unknownObjectRelease();

      return 1;
    }
  }

  return result;
}

uint64_t sub_100EE6C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100EE6DC0, v7, v6);
}

uint64_t sub_100EE6DC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = v0[10];
    v3 = v0[5];
    v4 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
    swift_beginAccess();
    sub_1006BF2A8(v3 + v4, v2);
    v0[16] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008F5F2C, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

id sub_100EE6F44(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100EE711C()
{
  result = qword_101A22C00;
  if (!qword_101A22C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22C00);
  }

  return result;
}

unint64_t sub_100EE7174()
{
  result = qword_101A22C08;
  if (!qword_101A22C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22C08);
  }

  return result;
}

uint64_t sub_100EE71C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
  swift_beginAccess();
  return sub_1006BF2A8(v1 + v3, a1);
}

void sub_100EE7220(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  if (v2)
  {
    [*(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setImage:?];
  }

  else
  {
    __break(1u);
  }
}

double sub_100EE7284@<D0>(uint64_t a1@<X8>)
{
  sub_100EE19A8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100EE7308()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardTitle);

  return v1;
}

uint64_t sub_100EE7348()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_lastEditedTimestampText);

  return v1;
}

uint64_t sub_100EE7384()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName);

  return v1;
}

void sub_100EE73C0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  if (v1)
  {
    (*((swift_isaMask & *v1) + 0x160))();
  }

  else
  {
    __break(1u);
  }
}

id sub_100EE74A0(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    if ((*(v4 + 408))(ObjectType, v4))
    {
      if ([objc_opt_self() isIncreaseContrastEnabled])
      {
        v6 = [v2 traitCollection];
        v7 = [v6 userInterfaceStyle];

        if (v7 == 2)
        {
          v8 = [objc_opt_self() currentTraitCollection];
          v9 = UITraitCollection.modifyingTraits(_:)();

          v10 = [a1 resolvedColorWithTraitCollection:v9];
          swift_unknownObjectRelease();

          return v10;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return a1;
}

void sub_100EE7614(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController) = a1;
  if (v2)
  {
    v3 = a1;
    v7 = v2;
    [v7 removeFromParentViewController];
    v4 = [v7 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = a1;
    v7 = 0;
  }

  sub_100EE1F74();
}

void sub_100EE76D0()
{
  v1 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_dimsThumbnail) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardTitle);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_lastEditedTimestampText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxLastEditedTimestampText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_folderName);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_isFavorite) = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_canShowFavoriteButton) = 1;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardAccessState) = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100EE7824()
{
  *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dropShadowView;
  v2 = type metadata accessor for CRLShadowView();
  *(v0 + v1) = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_roundedCornersContainerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView;
  *(v0 + v4) = [objc_allocWithZone(_s4ItemC14ViewControllerC18ThumbnailImageViewCMa()) init];
  v5 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailBackdropView;
  *(v0 + v5) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailContainerView;
  *(v0 + v6) = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton;
  *(v0 + v7) = [objc_allocWithZone(_s4ItemC14ViewControllerC14FavoriteButtonCMa()) init];
  v8 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionHostingView;
  *(v0 + v8) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isHighlighted) = 0;
  *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail) = 0;
  v9 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge;
  *(v0 + v9) = [objc_allocWithZone(_s4ItemC14ViewControllerC19SelectionStateBadgeCMa()) init];
  *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isInMultipleSelectionMode) = 0;
  v10 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_boardTitleLabel;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  *(v0 + v10) = v11;
  v13 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_lastEditedTimestampLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  *(v0 + v13) = v14;
  v16 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  *(v0 + v16) = v17;
  *(v0 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_overrideTraitCollection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100EE7B80()
{
  v1 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_accessibilityDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite) = 0;
  *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_showsOuterGlow) = 0;
  *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_size) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100EE7C84()
{
  *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 systemImageNamed:v1];

  if (!v3)
  {
    __break(1u);
  }

  v4 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_baseCheckedImage;
  if (qword_1019F25D8 != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v5 = qword_101A229D8;
    v6 = [v3 imageWithTintColor:qword_101A229D8];

    *(v0 + v4) = v6;
    v3 = String._bridgeToObjectiveC()();
    v2 = [v2 systemImageNamed:v3];

    if (v2)
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  v7 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_baseUncheckedImage;
  v8 = [v2 imageWithTintColor:v5];

  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_checkedImage) = 0;
  *(v0 + OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_uncheckedImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100EE7E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100EE6C84(a1, v4, v5, v6);
}

uint64_t sub_100EE7F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100EE6838(a1, v4, v5, v6, v7);
}

uint64_t sub_100EE7FDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_100EE8038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

double sub_100EE80A8@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = [v2 presentationLayer];
  sub_100B76520(a1);
  v7 = String._bridgeToObjectiveC()();

  if (!v6)
  {
    v9 = [v3 valueForKey:v7];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

LABEL_7:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  v8 = [v6 valueForKey:v7];

  if (!v8)
  {

    goto LABEL_7;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
LABEL_8:
  result = *&v11;
  *a2 = v11;
  a2[1] = v12;
  return result;
}

uint64_t sub_100EE81B4@<X0>(uint64_t a1@<X8>)
{
  switch(*(v1 + 40))
  {
    case 1:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_105;
      }

      sub_10000BF3C(&v34, &v24);
      type metadata accessor for CGRect(0);
      result = swift_dynamicCast();
      v13 = v33;
      *a1 = v32;
      *(a1 + 16) = v13;
      v4 = 3;
      goto LABEL_90;
    case 2:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_102;
      }

      sub_10000BF3C(&v34, &v24);
      type metadata accessor for CGPoint(0);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 5;
      goto LABEL_90;
    case 3:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_103;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      *(a1 + 256) = 7;
      return result;
    case 4:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_98;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 9;
      goto LABEL_90;
    case 5:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_107;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 11;
      goto LABEL_90;
    case 6:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_110;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 13;
      goto LABEL_90;
    case 7:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_104;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 15;
      goto LABEL_90;
    case 8:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_111;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 17;
      goto LABEL_90;
    case 9:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v11 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v11 = 0;
      }

      *a1 = v11;
      v4 = 19;
      goto LABEL_90;
    case 0xA:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v17 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v17 = 0;
      }

      *a1 = v17;
      v4 = 21;
      goto LABEL_90;
    case 0xB:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_97;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 23;
      goto LABEL_90;
    case 0xC:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_99;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 25;
      goto LABEL_90;
    case 0xD:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_109;
      }

      sub_10000BF3C(&v34, &v24);
      type metadata accessor for CGSize(0);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 27;
      goto LABEL_90;
    case 0xE:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v10 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v10 = 0;
      }

      *a1 = v10;
      v4 = 29;
      goto LABEL_90;
    case 0xF:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        type metadata accessor for CGPath(0);
        result = swift_dynamicCast();
        v12 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v12 = 0;
      }

      *a1 = v12;
      v4 = 31;
      goto LABEL_90;
    case 0x10:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        sub_1005B981C(&qword_101A09290);
        result = swift_dynamicCast();
        v9 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v9 = 0;
      }

      *a1 = v9;
      v4 = 33;
      goto LABEL_90;
    case 0x11:
      result = sub_100601584(v1 + 8, a1);
      v4 = 35;
      goto LABEL_90;
    case 0x12:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        sub_1005B981C(&qword_101A09290);
        result = swift_dynamicCast();
        v16 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v16 = 0;
      }

      *a1 = v16;
      v4 = 37;
      goto LABEL_90;
    case 0x13:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_114;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 39;
      goto LABEL_90;
    case 0x14:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_106;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 41;
      goto LABEL_90;
    case 0x15:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_108;
      }

      sub_10000BF3C(&v34, &v24);
      type metadata accessor for CGRect(0);
      result = swift_dynamicCast();
      v15 = v33;
      *a1 = v32;
      *(a1 + 16) = v15;
      v4 = 43;
      goto LABEL_90;
    case 0x16:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_113;
      }

      sub_10000BF3C(&v34, &v24);
      type metadata accessor for CGPoint(0);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 45;
      goto LABEL_90;
    case 0x17:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_115;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 47;
      goto LABEL_90;
    case 0x18:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_101;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 49;
      goto LABEL_90;
    case 0x19:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_100;
      }

      sub_10000BF3C(&v34, &v24);
      type metadata accessor for CGPoint(0);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 51;
      goto LABEL_90;
    case 0x1A:
      result = sub_100601584(v1 + 8, &v32);
      if (!*(&v33 + 1))
      {
        goto LABEL_118;
      }

      sub_10000BF3C(&v32, &v34);
      type metadata accessor for CATransform3D(0);
      result = swift_dynamicCast();
      v20 = v29;
      *(a1 + 64) = v28;
      *(a1 + 80) = v20;
      v21 = v31;
      *(a1 + 96) = v30;
      *(a1 + 112) = v21;
      v22 = v25;
      *a1 = v24;
      *(a1 + 16) = v22;
      v23 = v27;
      *(a1 + 32) = v26;
      *(a1 + 48) = v23;
      v4 = 53;
      goto LABEL_90;
    case 0x1B:
      result = sub_100601584(v1 + 8, &v32);
      if (!*(&v33 + 1))
      {
        goto LABEL_94;
      }

      sub_10000BF3C(&v32, &v34);
      type metadata accessor for CATransform3D(0);
      result = swift_dynamicCast();
      v5 = v29;
      *(a1 + 64) = v28;
      *(a1 + 80) = v5;
      v6 = v31;
      *(a1 + 96) = v30;
      *(a1 + 112) = v6;
      v7 = v25;
      *a1 = v24;
      *(a1 + 16) = v7;
      v8 = v27;
      *(a1 + 32) = v26;
      *(a1 + 48) = v8;
      v4 = 55;
      goto LABEL_90;
    case 0x1C:
      result = sub_100601584(v1 + 8, &v32);
      if (!*(&v33 + 1))
      {
        goto LABEL_116;
      }

      sub_10000BF3C(&v32, &v34);
      type metadata accessor for CGAffineTransform(0);
      result = swift_dynamicCast();
      v19 = v25;
      *a1 = v24;
      *(a1 + 16) = v19;
      *(a1 + 32) = v26;
      v4 = 57;
      goto LABEL_90;
    case 0x1D:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_117;
      }

      sub_10000BF3C(&v34, &v24);
      type metadata accessor for CGPath(0);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 59;
      goto LABEL_90;
    case 0x1E:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v18 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v18 = 0;
      }

      *a1 = v18;
      v4 = 61;
      goto LABEL_90;
    case 0x1F:
      sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v14 = v32;
      }

      else
      {
        result = sub_1005E09AC(&v34);
        v14 = 0;
      }

      *a1 = v14;
      v4 = 63;
      goto LABEL_90;
    case 0x20:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_112;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 65;
      goto LABEL_90;
    case 0x21:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_96;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 67;
      goto LABEL_90;
    case 0x22:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_95;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 69;
      goto LABEL_90;
    case 0x23:
      result = sub_100601584(v1 + 8, &v34);
      if (v35)
      {
        sub_10000BF3C(&v34, &v24);
        result = swift_dynamicCast();
        *a1 = v32;
        v4 = 71;
LABEL_90:
        *(a1 + 256) = v4;
      }

      else
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
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
      }

      return result;
    case 0x24:
      result = sub_100601584(v1 + 8, &v34);
      if (!v35)
      {
        goto LABEL_93;
      }

      sub_10000BF3C(&v34, &v24);
      result = swift_dynamicCast();
      *a1 = v32;
      v4 = 73;
      goto LABEL_90;
    default:
      result = sub_100601584(v1 + 8, a1);
      v4 = 1;
      goto LABEL_90;
  }
}

uint64_t sub_100EE8F2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100EE80A8(v4, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100601584(v2 + 8, v9);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = v4;
  *(a1 + 72) = sub_100B76520(v4);
  *(a1 + 80) = v7;
  sub_1006A430C(v10, a1);
  return sub_1006A430C(v9, a1 + 32);
}

unint64_t sub_100EE8FE4(uint64_t a1)
{
  result = sub_100EE900C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100EE900C()
{
  result = qword_101A22C10;
  if (!qword_101A22C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22C10);
  }

  return result;
}

BOOL sub_100EE9060(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_100B76520(*(a1 + 40));
  v7 = v6;
  if (v5 == sub_100B76520(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = swift_unknownObjectWeakLoadStrong();
  v13 = v12;
  if (!Strong)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v12)
  {

    return 0;
  }

  sub_1009354E4();
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_14:

  return sub_100B78DFC(a1 + 8, a2 + 8);
}

uint64_t sub_100EE9190@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  sub_100EFEACC(v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v10, v12, v6);
    v14 = [v1 ownerName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v22 = [v1 ownerName];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v21 = v25;
        v20 = v23;
        goto LABEL_9;
      }
    }

    v20 = 0;
    v21 = 0xE000000000000000;
LABEL_9:
    sub_10084BD4C(v10, v20, v21, a1);
    (*(v7 + 8))(v12, v6);
    v13 = 0;
    goto LABEL_10;
  }

  sub_10000CAAC(v5, &qword_1019F6990);
  v13 = 1;
LABEL_10:
  v26 = type metadata accessor for CRLBoardIdentifier(0);
  return (*(*(v26 - 8) + 56))(a1, v13, 1, v26);
}

char *sub_100EE94AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100B39BF4(*(a1 + 16), 0);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = sub_100B3AA50(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_100035F90();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

char *sub_100EE9574(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100B39BF4(*(a1 + 16), 0);
  v4 = *(type metadata accessor for UUID() - 8);
  sub_100B3BB24(&v8, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  v6 = v5;
  sub_100035F90();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100EE9668(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_100EE970C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100B39C98(*(a1 + 16), 0);
  v4 = sub_100B3C454(&v6, v3 + 4, v2, a1);
  sub_100035F90();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100EE979C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100B39C98(*(a1 + 16), 0);
  v4 = sub_100B3B5B0(&v6, v3 + 4, v2, a1);
  sub_100035F90();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_100EE982C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_1005B981C(&qword_101A22D80);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for CRLAssetSyncMetadata();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  *&v44 = a1;
  *(&v44 + 1) = a2;
  swift_bridgeObjectRetain_n();
  v16._countAndFlagsBits = 0x7465737341;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  v17 = CKRecord.subscript.getter();

  if (!v17)
  {

    return 0;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v38 = v18;
  v39 = v11;
  v40 = v6;
  v41 = v17;
  *&v43 = a1;
  *(&v43 + 1) = a2;

  v19._countAndFlagsBits = 0x74654D7465737341;
  v19._object = 0xED00006174616461;
  String.append(_:)(v19);
  v20 = v43;
  sub_100EEAB60(v43, *(&v43 + 1), 0, &v43);
  v21 = *(&v43 + 1);
  if (*(&v43 + 1) >> 60 == 15)
  {
    sub_100EE9FE4(v20, *(&v20 + 1), &v44);

    v22 = *(&v44 + 1);
    if (*(&v44 + 1) >> 60 == 15)
    {

      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v23 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *&v44 = a1;
      *(&v44 + 1) = a2;

      v25._countAndFlagsBits = 0x74654D7465737341;
      v25._object = 0xED00006174616461;
      String.append(_:)(v25);
      v26 = v44;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v26;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v27, "Ignoring an asset without a corresponding metadata field. Expected field that is missing: %@", 92, 2, inited);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return 0;
    }

    v28 = v44;
  }

  else
  {

    v28 = v43;
    v22 = v21;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100F05378(&unk_101A22D88, type metadata accessor for CRLAssetSyncMetadata);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v29 = v40;

  (*(v39 + 56))(v9, 0, 1, v10);
  sub_1000256D0(v9, v15, type metadata accessor for CRLAssetSyncMetadata);
  v31 = v42;
  sub_10000C8A4(v15, v42, type metadata accessor for CRLAssetSyncMetadata);
  v32 = [v38 fileURL];
  if (v32)
  {
    v33 = v32;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100025870(v28, v22);

    swift_unknownObjectRelease();
    sub_100026088(v15, type metadata accessor for CRLAssetSyncMetadata);
    v34 = 0;
  }

  else
  {
    sub_100026088(v15, type metadata accessor for CRLAssetSyncMetadata);
    sub_100025870(v28, v22);
    swift_unknownObjectRelease();
    v34 = 1;
  }

  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 56))(v29, v34, 1, v35);
  type metadata accessor for CRLAssetSyncRemoteRecord();
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  sub_1000256D0(v31, v36 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata, type metadata accessor for CRLAssetSyncMetadata);
  sub_10003DFF8(v29, v36 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, &unk_1019F33C0);
  return v36;
}

uint64_t sub_100EE9FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  result = CKRecord.subscript.getter();
  if (result)
  {
    swift_unknownObjectRetain();
    sub_1005B981C(&qword_101A1B0B0);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      v7 = v14;
    }

    else
    {
      sub_100025870(0, 0xF000000000000000);
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v8 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      *(inited + 56) = &type metadata for String;
      v10 = sub_1000053B0();
      *(inited + 32) = a1;
      *(inited + 40) = a2;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v10;
      *(inited + 64) = v10;
      *(inited + 72) = 1635017028;
      *(inited + 80) = 0xE400000000000000;
      swift_getObjectType();

      v11 = _typeName(_:qualified:)();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v10;
      *(inited + 112) = v11;
      *(inited + 120) = v12;
      v13 = static os_log_type_t.error.getter();
      sub_100005404(v8, &_mh_execute_header, v13, "Attempted to return a value with unexpected type from CKRecord. Key %@, Expected %@, found %@", 93, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();

      _typeName(_:qualified:)();

      swift_unknownObjectRelease();

      v7 = xmmword_101486780;
    }
  }

  else
  {
    v7 = xmmword_101486780;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100EEA210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CKRecord.subscript.getter();
  if (result)
  {
    swift_unknownObjectRetain();
    sub_1005B981C(&qword_101A1B0B0);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v16;
    }

    else
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v10 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      *(inited + 56) = &type metadata for String;
      v12 = sub_1000053B0();
      *(inited + 32) = a1;
      *(inited + 40) = a2;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v12;
      *(inited + 64) = v12;
      *(inited + 72) = a4;
      *(inited + 80) = a5;
      swift_getObjectType();

      v13 = _typeName(_:qualified:)();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v12;
      *(inited + 112) = v13;
      *(inited + 120) = v14;
      v15 = static os_log_type_t.error.getter();
      sub_100005404(v10, &_mh_execute_header, v15, "Attempted to return a value with unexpected type from CKRecord. Key %@, Expected %@, found %@", 93, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();

      _typeName(_:qualified:)();

      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

uint64_t sub_100EEA40C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_100006370(0, a3);
  result = CKRecord.subscript.getter();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      *(inited + 56) = &type metadata for String;
      v8 = sub_1000053B0();
      *(inited + 64) = v8;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v9 = _typeName(_:qualified:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v8;
      *(inited + 72) = v9;
      *(inited + 80) = v10;
      swift_getObjectType();
      v11 = _typeName(_:qualified:)();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v8;
      *(inited + 112) = v11;
      *(inited + 120) = v12;
      v13 = static os_log_type_t.error.getter();
      sub_100005404(v6, &_mh_execute_header, v13, "Attempted to return a value with unexpected type from CKRecord. Key %@, Expected %@, found %@", 93, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();

      _typeName(_:qualified:)();
      _typeName(_:qualified:)();

      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

uint64_t sub_100EEA604(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6472616F42 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x74654D6472616F42 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000015 && 0x8000000101552340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x74696B64756F6C63 && a2 == 0xEE0065726168732ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  v5._countAndFlagsBits = 0x6574496472616F42;
  v5._object = 0xEA00000000005F6DLL;
  if (String.hasPrefix(_:)(v5))
  {
    return 0;
  }

  if (a1 == 0x425F63696C627550 && a2 == 0xEC0000006472616FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  v6._countAndFlagsBits = 0xD000000000000011;
  v6._object = 0x80000001015AF210;
  if (String.hasPrefix(_:)(v6))
  {
    return 5;
  }

  result = 6;
  if (a1 != 0xD00000000000001CLL || 0x8000000101552390 != a2)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 6;
    }

    else
    {
      return 8;
    }
  }

  return result;
}

uint64_t sub_100EEA848()
{
  v18 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v18];
  v2 = v18;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v7 = Error.publicDescription.getter(v16, v17);
    v9 = v8;
    *(inited + 56) = &type metadata for String;
    v10 = sub_1000053B0();
    *(inited + 64) = v10;
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    swift_getErrorValue();
    v11 = Error.fullDescription.getter(v15);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    v13 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v13, "failed to crl_serializeAllFields with error %{public}@ %@", 57, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    return 0;
  }

  return v3;
}

CKRecordID sub_100EEAA6C()
{
  v1 = sub_100EFF9E4(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier);
  sub_100006370(0, &qword_1019F6E98);
  v3 = qword_101A22C20;
  v2 = off_101A22C28;

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = v3;
  v8._object = v2;
  return CKRecordID.init(recordName:zoneID:)(v8, v1);
}

uint64_t sub_100EEAB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X8>)
{
  v5 = v4;
  v10 = [v5 encryptedValues];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKeyedSubscript:v11];

  result = swift_unknownObjectRelease();
  if (v12)
  {
    swift_unknownObjectRetain();
    sub_1005B981C(&qword_101A1B0B0);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      v14 = v21;
    }

    else
    {
      sub_100025870(0, 0xF000000000000000);
      if (a3)
      {
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v15 = static OS_os_log.dataSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C4D0;
        *(inited + 56) = &type metadata for String;
        v17 = sub_1000053B0();
        *(inited + 32) = a1;
        *(inited + 40) = a2;
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v17;
        *(inited + 64) = v17;
        *(inited + 72) = 1635017028;
        *(inited + 80) = 0xE400000000000000;
        swift_getObjectType();

        v18 = _typeName(_:qualified:)();
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v17;
        *(inited + 112) = v18;
        *(inited + 120) = v19;
        v20 = static os_log_type_t.error.getter();
        sub_100005404(v15, &_mh_execute_header, v20, "Attempted to return an encrypted value with unexpected type from CKRecord. Key %@, Expected %@, found %@", 104, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();

        _typeName(_:qualified:)();

        swift_unknownObjectRelease();
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      v14 = xmmword_101486780;
    }
  }

  else
  {
    v14 = xmmword_101486780;
  }

  *a4 = v14;
  return result;
}

uint64_t sub_100EEADF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [v6 encryptedValues];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 objectForKeyedSubscript:v13];

  swift_unknownObjectRelease();
  if (v14)
  {
    swift_unknownObjectRetain();
    sub_1005B981C(&qword_101A1B0B0);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v22;
    }

    if (a3)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v16 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      *(inited + 56) = &type metadata for String;
      v18 = sub_1000053B0();
      *(inited + 32) = a1;
      *(inited + 40) = a2;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v18;
      *(inited + 64) = v18;
      *(inited + 72) = a5;
      *(inited + 80) = a6;
      swift_getObjectType();

      v19 = _typeName(_:qualified:)();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v18;
      *(inited + 112) = v19;
      *(inited + 120) = v20;
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v16, &_mh_execute_header, v21, "Attempted to return an encrypted value with unexpected type from CKRecord. Key %@, Expected %@, found %@", 104, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();

      _typeName(_:qualified:)();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_100EEB05C(uint64_t a1, uint64_t a2, char a3)
{
  sub_100006370(0, &unk_101A22DA0);
  v7 = [v3 encryptedValues];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKeyedSubscript:v8];

  swift_unknownObjectRelease();
  if (v9)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    if (a3)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      *(inited + 56) = &type metadata for String;
      v13 = sub_1000053B0();
      *(inited + 64) = v13;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v14 = _typeName(_:qualified:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v13;
      *(inited + 72) = v14;
      *(inited + 80) = v15;
      swift_getObjectType();
      v16 = _typeName(_:qualified:)();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v13;
      *(inited + 112) = v16;
      *(inited + 120) = v17;
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v18, "Attempted to return an encrypted value with unexpected type from CKRecord. Key %@, Expected %@, found %@", 104, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();

      _typeName(_:qualified:)();
      _typeName(_:qualified:)();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_100EEB2BC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(NSKeyedUnarchiver);
  v6 = sub_100F06740();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:v6];
  sub_10002640C(a1, a2);

  if (!v7)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_100EEB3F0@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a1;
  v119 = a4;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v110 = &v108 - v7;
  v8 = type metadata accessor for UUID();
  v113 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v108 - v12;
  v14 = sub_1005B981C(&unk_1019F52D0);
  v15 = __chkstk_darwin(v14 - 8);
  v111 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v108 - v18;
  __chkstk_darwin(v17);
  v21 = &v108 - v20;
  v22 = type metadata accessor for CRLBoardIdentifier(0);
  v116 = *(v22 - 8);
  v117 = v22;
  v23 = __chkstk_darwin(v22);
  v109 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v108 - v26;
  v28 = __chkstk_darwin(v25);
  v112 = &v108 - v29;
  __chkstk_darwin(v28);
  v31 = &v108 - v30;
  v114 = a2;
  v115 = a3;
  result = sub_100EEA604(a2, a3);
  if (result > 1u)
  {
    if (result == 2 || result == 3)
    {
      v59 = v119;
      *(v119 + 32) = 0;
      *v59 = 0u;
      v59[1] = 0u;
      return result;
    }

    v33 = v118;
    if (result == 7)
    {
      v34 = v119;
      v35 = [v118 zoneID];
      v36 = v111;
      sub_100EE9190(v111);

      if ((*(v116 + 48))(v36, 1, v117) == 1)
      {
        sub_10000CAAC(v36, &unk_1019F52D0);
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v37 = static OS_os_log.dataSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146BDE0;
        v39 = [v33 recordName];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        *(inited + 56) = &type metadata for String;
        v43 = sub_1000053B0();
        *(inited + 32) = v40;
        *(inited + 40) = v42;
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v43;
        v44 = v114;
        *(inited + 64) = v43;
        *(inited + 72) = v44;
        *(inited + 80) = v115;

        v45 = static os_log_type_t.error.getter();
        sub_100005404(v37, &_mh_execute_header, v45, "Cannot extract board identifier from the recordID %{public}@. Record Type: %{public}@", 85, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        result = swift_arrayDestroy();
        *(v34 + 32) = 0;
        *v34 = 0u;
        *(v34 + 16) = 0u;
        return result;
      }

      v91 = v36;
      v92 = v109;
      sub_1000256D0(v91, v109, type metadata accessor for CRLBoardIdentifier);
      v93 = v112;
      sub_10000C8A4(v92, v112, type metadata accessor for CRLBoardIdentifier);
      v94 = type metadata accessor for CRLBoardShareSyncRemoteRecordIdentifier(0);
      v95 = swift_allocObject();
      sub_1000256D0(v93, v95 + OBJC_IVAR____TtC8Freeform39CRLBoardShareSyncRemoteRecordIdentifier_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v34 + 24) = v94;
      *(v34 + 32) = &off_1018B08C0;
      *v34 = v95;
      v96 = v92;
      v97 = type metadata accessor for CRLBoardIdentifier;
      return sub_100026088(v96, v97);
    }

    goto LABEL_21;
  }

  v111 = v11;
  v46 = v113;
  if (result)
  {
    v47 = v118;
    if (result != 1)
    {
LABEL_21:
      v71 = v119;
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v72 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v73 = swift_initStackObject();
      *(v73 + 16) = xmmword_10146C6B0;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_1000053B0();
      v74 = v115;
      *(v73 + 32) = v114;
      *(v73 + 40) = v74;

      v75 = static os_log_type_t.error.getter();
      sub_100005404(v72, &_mh_execute_header, v75, "CRLBoardSyncLogicProvider received an unknown remote record type for creating identifier. Record Type: %{public}@", 113, 2, v73);
      swift_setDeallocating();
      result = sub_100005070(v73 + 32);
      *(v71 + 32) = 0;
      *v71 = 0u;
      *(v71 + 16) = 0u;
      return result;
    }

    v48 = v119;
    v49 = [v118 zoneID];
    sub_100EE9190(v21);

    if ((*(v116 + 48))(v21, 1, v117) != 1)
    {
      sub_1000256D0(v21, v31, type metadata accessor for CRLBoardIdentifier);
      v98 = v112;
      sub_10000C8A4(v31, v112, type metadata accessor for CRLBoardIdentifier);
      v99 = type metadata accessor for CRLBoardSyncRemoteRecordIdentifier(0);
      v100 = swift_allocObject();
      sub_1000256D0(v98, v100 + OBJC_IVAR____TtC8Freeform34CRLBoardSyncRemoteRecordIdentifier_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v48 + 24) = v99;
      *(v48 + 32) = &off_1018BB2D8;
      *v48 = v100;
      v96 = v31;
      v97 = type metadata accessor for CRLBoardIdentifier;
      return sub_100026088(v96, v97);
    }

    sub_10000CAAC(v21, &unk_1019F52D0);
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146BDE0;
    v52 = [v47 recordName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    *(v51 + 56) = &type metadata for String;
    v56 = sub_1000053B0();
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    *(v51 + 96) = &type metadata for String;
    *(v51 + 104) = v56;
    v57 = v114;
    *(v51 + 64) = v56;
    *(v51 + 72) = v57;
    *(v51 + 80) = v115;

    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "Cannot extract boardIdentifier from the recordID %{public}@. Record Type: %{public}@", 84, 2, v51);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    result = swift_arrayDestroy();
LABEL_20:
    *(v48 + 32) = 0;
    *v48 = 0u;
    *(v48 + 16) = 0u;
    return result;
  }

  v60 = v118;
  v61 = [v118 zoneID];
  sub_100EE9190(v19);

  if ((*(v116 + 48))(v19, 1, v117) == 1)
  {
    sub_10000CAAC(v19, &unk_1019F52D0);
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v62 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_10146BDE0;
    v64 = [v60 recordName];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    *(v63 + 56) = &type metadata for String;
    v68 = sub_1000053B0();
    *(v63 + 32) = v65;
    *(v63 + 40) = v67;
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v68;
    v69 = v114;
    *(v63 + 64) = v68;
    *(v63 + 72) = v69;
    *(v63 + 80) = v115;

    v70 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v70, "Cannot extract boardIdentifier from the recordID %{public}@. Record Type: %{public}@", 84, 2, v63);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    result = swift_arrayDestroy();
    v48 = v119;
    goto LABEL_20;
  }

  v76 = v19;
  v77 = v27;
  sub_1000256D0(v76, v27, type metadata accessor for CRLBoardIdentifier);
  v78 = [v60 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = v110;
  UUID.init(uuidString:)();

  v80 = v46;
  if ((*(v46 + 48))(v79, 1, v8) != 1)
  {
    v117 = *(v46 + 32);
    v101 = v13;
    v117(v13, v79, v8);
    v102 = *(v46 + 16);
    v103 = v111;
    v102(v111, v13, v8);
    v118 = type metadata accessor for CRLBoardIdentifier;
    v104 = v112;
    sub_10000C8A4(v27, v112, type metadata accessor for CRLBoardIdentifier);
    v105 = type metadata accessor for CRLBoardItemSyncRemoteRecordIdentifier(0);
    v106 = swift_allocObject();
    v117((v106 + OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_itemUUID), v103, v8);
    sub_1000256D0(v104, v106 + OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v107 = v119;
    *(v119 + 24) = v105;
    v107[4] = &off_1018B0370;
    *v107 = v106;
    (*(v80 + 8))(v101, v8);
    v96 = v77;
    v97 = v118;
    return sub_100026088(v96, v97);
  }

  sub_10000CAAC(v79, &qword_1019F6990);
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v81 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v82 = swift_initStackObject();
  *(v82 + 16) = xmmword_10146BDE0;
  v83 = [v60 recordName];
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  *(v82 + 56) = &type metadata for String;
  v87 = sub_1000053B0();
  *(v82 + 32) = v84;
  *(v82 + 40) = v86;
  *(v82 + 96) = &type metadata for String;
  *(v82 + 104) = v87;
  v88 = v114;
  *(v82 + 64) = v87;
  *(v82 + 72) = v88;
  *(v82 + 80) = v115;

  v89 = static os_log_type_t.error.getter();
  sub_100005404(v81, &_mh_execute_header, v89, "Cannot extract itemUUID from the recordID %{public}@. Record Type: %{public}@", 77, 2, v82);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  result = sub_100026088(v77, type metadata accessor for CRLBoardIdentifier);
  v90 = v119;
  *v119 = 0u;
  *(v90 + 16) = 0u;
  *(v90 + 32) = 0;
  return result;
}

uint64_t sub_100EEC10C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  sub_100EE9190(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_10000CAAC(v4, &unk_1019F52D0);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    sub_1000256D0(v4, v11, type metadata accessor for CRLBoardIdentifier);
    sub_10000C8A4(v11, v9, type metadata accessor for CRLBoardIdentifier);
    v14 = type metadata accessor for CRLBoardSyncRemoteRecordIdentifier(0);
    v13 = swift_allocObject();
    sub_1000256D0(v9, v13 + OBJC_IVAR____TtC8Freeform34CRLBoardSyncRemoteRecordIdentifier_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    result = sub_100026088(v11, type metadata accessor for CRLBoardIdentifier);
    v15 = &off_1018BB2D8;
  }

  *a1 = v13;
  a1[3] = v14;
  a1[4] = v15;
  return result;
}

uint64_t sub_100EEC328()
{
  v0 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRetain();
      v7 = sub_100EEDD54(v4, v6);
      swift_unknownObjectRelease();
      return v7;
    }

    goto LABEL_47;
  }

  type metadata accessor for CRLBoardSyncRemoteRecord(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRetain();
      v13 = sub_100EEEA70(v10, v12);
      swift_unknownObjectRelease();
      return v13;
    }

    goto LABEL_47;
  }

  type metadata accessor for CRLBoardShareSyncRemoteRecord(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    type metadata accessor for CRLBoardShareSyncLocalChangeRecord(0);
    if (swift_dynamicCastClass())
    {
      sub_10000C8A4(v15 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, v2, type metadata accessor for CRLBoardIdentifier);
      v16 = *(v15 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare);
      v17 = swift_allocObject();
      *(v17 + OBJC_IVAR____TtC8Freeform34CRLBoardShareSyncLocalChangeRecord_unsyncedChanges) = 0;
      sub_1000256D0(v2, v17 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      *(v17 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare) = v16;
      v18 = v16;
      return v17;
    }

    goto LABEL_47;
  }

  type metadata accessor for CRLUserBoardMetadataSyncRemoteRecord(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      swift_unknownObjectRetain();
      v23 = sub_100EEF700(v20, v22);
      swift_unknownObjectRelease();
      return v23;
    }

    goto LABEL_47;
  }

  type metadata accessor for CRLFreehandDrawingBucketSyncRemoteRecord(0);
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0);
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v78 = static OS_os_log.dataSync;
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v78, &_mh_execute_header, v79, "Unable to resolve conflict for unhandled record type.", 53, 2, _swiftEmptyArrayStorage);
      goto LABEL_47;
    }

    v30 = v29;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v32 = sub_100EFF9E4(v30 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier);
    sub_100006370(0, &qword_1019F6E98);
    v33._countAndFlagsBits = UUID.uuidString.getter();
    isa = CKRecordID.init(recordName:zoneID:)(v33, v32).super.isa;
    v34 = [(objc_class *)isa recordName];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = inited;
    *(inited + 56) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 32) = v35;
    v82 = v39;
    v83 = inited + 32;
    *(inited + 64) = v39;
    *(inited + 40) = v37;
    v80 = objc_opt_self();
    LODWORD(isa) = [v80 _atomicIncrementAssertCount];
    v84 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v84);
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    v42 = [v41 lastPathComponent];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_53;
    }

LABEL_18:
    v46 = static OS_os_log.crlAssert;
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_10146CA70;
    *(v47 + 56) = &type metadata for Int32;
    *(v47 + 64) = &protocol witness table for Int32;
    *(v47 + 32) = isa;
    v48 = sub_100006370(0, &qword_1019F4D30);
    *(v47 + 96) = v48;
    v49 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    v50 = v81;
    *(v47 + 72) = v81;
    v51 = v82;
    *(v47 + 136) = &type metadata for String;
    *(v47 + 144) = v51;
    *(v47 + 104) = v49;
    *(v47 + 112) = v43;
    *(v47 + 120) = v45;
    *(v47 + 176) = &type metadata for UInt;
    *(v47 + 184) = &protocol witness table for UInt;
    *(v47 + 152) = 212;
    v52 = v84;
    *(v47 + 216) = v48;
    *(v47 + 224) = v49;
    *(v47 + 192) = v52;
    v53 = v50;
    v54 = v52;
    v55 = static os_log_type_t.error.getter();
    sub_100005404(v46, &_mh_execute_header, v55, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
    swift_setDeallocating();
    v82 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v46, &_mh_execute_header, v56, "Unexpectedly received a CRLBoardItemSyncRemoteRecord.Partial when trying to resolve a conflict for record %{public}@.", 117, 2, v38);

    type metadata accessor for __VaListBuilder();
    v57 = swift_allocObject();
    v57[2] = 8;
    v57[3] = 0;
    v58 = v57 + 3;
    v57[4] = 0;
    v57[5] = 0;
    v45 = *(v38 + 16);
    if (!v45)
    {
LABEL_43:
      v74 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v76 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      [v80 handleFailureInFunction:v75 file:v76 lineNumber:212 isFatal:0 format:v77 args:v74];

      swift_setDeallocating();
      swift_arrayDestroy();
      return 0;
    }

    v59 = 0;
    while (1)
    {
      v60 = v38;
      v61 = (v83 + 40 * v59);
      v43 = v61[4];
      LODWORD(isa) = sub_100020E58(v61, v61[3]);
      v62 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v38 = *v58;
      v63 = *(v62 + 16);
      v64 = __OFADD__(*v58, v63);
      v65 = *v58 + v63;
      if (v64)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        swift_once();
        goto LABEL_18;
      }

      isa = v57[4];
      if (isa >= v65)
      {
        goto LABEL_35;
      }

      if (isa + 0x4000000000000000 < 0)
      {
        goto LABEL_51;
      }

      v43 = v57[5];
      if (2 * isa > v65)
      {
        v65 = 2 * isa;
      }

      v57[4] = v65;
      if ((v65 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_52;
      }

      v66 = v62;
      v67 = swift_slowAlloc();
      v68 = v67;
      v57[5] = v67;
      if (v43)
      {
        break;
      }

      v62 = v66;
      if (!v68)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_36:
      v38 = v60;
      v70 = *(v62 + 16);
      if (v70)
      {
        v71 = (v62 + 32);
        v72 = *v58;
        while (1)
        {
          v73 = *v71++;
          *&v68[8 * v72] = v73;
          v72 = *v58 + 1;
          if (__OFADD__(*v58, 1))
          {
            break;
          }

          *v58 = v72;
          if (!--v70)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_50;
      }

LABEL_20:

      if (++v59 == v45)
      {
        goto LABEL_43;
      }
    }

    if (v67 != v43 || v67 >= &v43[8 * v38])
    {
      memmove(v67, v43, 8 * v38);
    }

    LODWORD(isa) = v57;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v62 = v66;
LABEL_35:
    v68 = v57[5];
    if (!v68)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v25 = v24;
  type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    swift_unknownObjectRetain();
    v28 = sub_100EEFB0C(v25, v27);
    swift_unknownObjectRelease();
    return v28;
  }

LABEL_47:
  sub_100EECC74();
  return 0;
}

uint64_t sub_100EECC74()
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getObjectType();
  v2 = _typeName(_:qualified:)();
  v4 = v3;
  *(inited + 56) = &type metadata for String;
  v5 = sub_1000053B0();
  *(inited + 64) = v5;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  swift_getObjectType();
  v6 = _typeName(_:qualified:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  v8 = static os_log_type_t.error.getter();
  sub_100005404(v0, &_mh_execute_header, v8, "CRLBoardSyncLogicProvider received an unknown remote record object to resolve a conflict. Remote Record: %{public}@, Local Record: %{public}@", 141, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  _typeName(_:qualified:)();
  _typeName(_:qualified:)();
}

uint64_t sub_100EECE0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_100006370(0, &qword_1019F54D0);
  v8 = [a3 recordID];
  ObjectType = swift_getObjectType();
  v19[0] = a1;
  v10 = (*(*(a2 + 8) + 8))(ObjectType);
  v11 = static NSObject.== infix(_:_:)();

  if (v11)
  {
    v17 = a1;
    v18 = a2;
    swift_unknownObjectRetain();
    sub_1005B981C(&qword_101A00168);
    sub_1005B981C(&qword_101A22E70);
    if (swift_dynamicCast())
    {
      sub_100050F74(v15, v19);
      v12 = v20;
      v13 = v21;
      sub_100020E58(v19, v20);
      (*(v13 + 16))(a3, *(v4 + 16), v12, v13);
      return sub_100005070(v19);
    }

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_10000CAAC(v15, &qword_101A22E78);
  }

  return sub_100EECFB4(a1, a2, a3);
}

uint64_t sub_100EECFB4(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getObjectType();
  v5 = _typeName(_:qualified:)();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9._countAndFlagsBits = CKRecord.recordType.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x203A444920;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  v11 = [a3 recordID];
  v12 = [v11 recordName];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = 0x203A65707954;
  *(inited + 80) = 0xE600000000000000;
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v17, "CRLBoardSyncLogicProvider received an unknown local record or cloud record to apply changes. Local Record: %{public}@, Cloud Record: %{public}@", 143, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  _typeName(_:qualified:)();
  v18._countAndFlagsBits = CKRecord.recordType.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x203A444920;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20 = [a3 recordID];
  v21 = [v20 recordName];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);
}

uint64_t sub_100EED28C()
{
  v0 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-v1];
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100006370(0, &qword_1019F54D0);
  if (qword_1019F25F8 != -1)
  {
    swift_once();
  }

  if (static NSObject.== infix(_:_:)())
  {
    return 1;
  }

  sub_100EE9190(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &unk_1019F52D0);
  }

  else
  {
    v8 = sub_1000256D0(v2, v6, type metadata accessor for CRLBoardIdentifier);
    __chkstk_darwin(v8);
    *&v11[-16] = v9;
    *&v11[-8] = v6;
    OS_dispatch_queue.sync<A>(execute:)();
    v10 = v11[127];
    sub_100026088(v6, type metadata accessor for CRLBoardIdentifier);
    if (v10)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_100EED608(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v1 + 16);
  sub_1005B981C(&unk_101A22E80);
  OS_dispatch_queue.sync<A>(execute:)();
  v42 = v8;
  v38 = a1;
  v17 = _swiftEmptyArrayStorage;
  v48 = _swiftEmptyArrayStorage;
  v18 = v46 + 56;
  v19 = 1 << *(v46 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v46 + 56);
  v22 = (v19 + 63) >> 6;
  v41 = (v4 + 16);
  v39 = CKCurrentUserDefaultName;
  v40 = (v4 + 8);
  v44 = v46;

  v23 = 0;
  v43 = v3;
  if (v21)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      v35 = sub_100E94984(v17);

      return sub_10119DCE8(v38, v35);
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      do
      {
LABEL_8:
        sub_10000C8A4(*(v44 + 48) + *(v42 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
        (*v41)(v6, v10, v3);
        v25 = &v10[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
        v26 = *v25;
        v27 = v25[1];
        if (*v25)
        {
          v28 = 0;
        }

        else
        {
          v28 = v27 == 0xE000000000000000;
        }

        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v29;
        }

        else
        {
        }

        v46 = 0x5F6472616F42;
        v47 = 0xE600000000000000;
        v30._countAndFlagsBits = UUID.uuidString.getter();
        String.append(_:)(v30);

        v31 = v46;
        v32 = v47;
        sub_100006370(0, &qword_1019F69D0);
        v33._countAndFlagsBits = v31;
        v33._object = v32;
        v34._countAndFlagsBits = v26;
        v34._object = v27;
        CKRecordZoneID.init(zoneName:ownerName:)(v33, v34);
        v3 = v43;
        (*v40)(v6, v43);
        sub_100026088(v10, type metadata accessor for CRLBoardIdentifier);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v21 &= v21 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v48;
      }

      while (v21);
    }
  }

  __break(1u);
  swift_once();
  v11 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v15 = v14;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v11, &_mh_execute_header, v16, "Failed to fetch board identifiers with sync data reset. Error: %@", 65, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  return &_swiftEmptySetSingleton;
}

uint64_t sub_100EEDB58(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  swift_unknownObjectRetain();
  sub_1005B981C(&qword_101A00168);
  sub_1005B981C(&qword_101A22E70);
  if (swift_dynamicCast())
  {
    sub_100050F74(v13, v17);
    v3 = v18;
    v4 = v19;
    sub_100020E58(v17, v18);
    v5 = (*(v4 + 8))(*(v2 + 16), v3, v4);
    sub_100005070(v17);
    return v5;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_10000CAAC(v13, &qword_101A22E78);
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getObjectType();
    v9 = _typeName(_:qualified:)();
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v7, &_mh_execute_header, v12, "CRLBoardSyncLogicProvider cannot create a cloud record from an unknown local record. Local Record: %{public}@", 109, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    _typeName(_:qualified:)();

    return 0;
  }
}

uint64_t sub_100EEDD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v100 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v97 = &v83 - v9;
  v99 = type metadata accessor for UUID();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v101 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *(a2 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData + 8);
  if (v12 >> 60 != 15)
  {
    v13 = *(a2 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
    sub_100006370(0, &qword_101A1AEB0);
    sub_100006370(0, &unk_101A22DA0);
    sub_100024E84(v13, v12);
    sub_100024E98(v13, v12);
    v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_100025870(v13, v12);
    sub_100025870(v13, v12);
  }

  v14 = OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData;
  v15 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData);
  if (v15)
  {
    if (!v11)
    {
      v19 = v15;
      v17 = 0;
      goto LABEL_11;
    }

    *&v102 = 0;
    v16 = v15;
    v17 = v11;
    if (![v17 mergeRecordValue:v16 error:&v102])
    {
      v28 = v102;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = v32;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v31;
      *(inited + 40) = v33;
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v34, "Failed to resolve board item conflict with error - %@", 53, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
      return 0;
    }

    v18 = v102;

    v19 = v17;
  }

  else
  {
    if (!v11)
    {
      v25 = 0;
      v27 = 0;
      v96 = 0xF000000000000000;
      goto LABEL_20;
    }

    v17 = v11;
    v19 = v17;
  }

  v15 = v11;
LABEL_11:
  v20 = v17;
  v21 = sub_100F00014(v19);
  if (v22 >> 60 == 15)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.dataSync;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v24, "Failed to serialize resolved mergeable record value.", 52, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  v25 = v21;
  v96 = v22;

  v26 = *(a1 + v14);
  *(a1 + v14) = v15;
  v27 = v15;

LABEL_20:
  v35 = *(v3 + 16);
  v36 = *&v35[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
  v37 = sub_100E98A48(a1, v36, 0, 0xF000000000000000);

  if (!v37)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v45 = static OS_os_log.dataSync;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v46, "Failed to convert CRLBoardItemSyncRemoteRecord to item data", 59, 2, _swiftEmptyArrayStorage);

    sub_100025870(v25, v96);
    return 0;
  }

  v91 = v35;
  *&v93 = v27;
  v95 = v25;
  v39 = *(a2 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) & 0x10;
  if (v39)
  {
    v40 = a2;
  }

  else
  {
    v40 = a1;
  }

  v41 = *(v40 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned);
  v42 = *(a2 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData);
  if (v42)
  {

    v43 = sub_100DF3C18(v37);
    (*(*v37 + 496))(v42);
    (*(*v37 + 488))(v42);
    (*(*v37 + 480))(v42);
    v44 = *(v42 + 40);
    v105[0] = *(v42 + 24);
    v105[1] = v44;
    v106 = *(v42 + 56);
    sub_10073E870(v105, *(v42 + 16));

    v39 |= v43;
  }

  v48 = (*(*v37 + 264))(v38);
  v89 = *(v37 + 5);
  v90 = *(v37 + 3);
  v49 = *(v37 + 56);
  v50 = v37[2];
  v51 = (*(*v37 + 464))(v48);
  v94 = v41;
  v92 = v39;
  v88 = v50;
  v87 = v49;
  if ((v53 & 0x100) != 0)
  {
    if (v51 | v52)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53 == 0;
    }

    if (v54)
    {
      v86 = 0;
      v85 = 0;
      v57 = 2;
    }

    else if (v51 == 1 && v52 == 0 && v53 == 0)
    {
      v86 = 0;
      v85 = 1;
      v57 = 3;
    }

    else if (v51 != 2 || v52 || v53)
    {
      if (v51 != 3 || v52 || v53)
      {
        if (v51 != 4 || v52 || v53)
        {
          if (v51 != 5 || v52 || v53)
          {
            if (v51 != 6 || v52 || v53)
            {
              if (v51 != 7 || v52 || v53)
              {
                if (v51 != 8 || v52 || v53)
                {
                  if (v51 != 9 || v52 || v53)
                  {
                    if (v51 != 10 || v52 || v53)
                    {
                      if (v53)
                      {
                        v80 = 0;
                      }

                      else
                      {
                        v80 = v52 == 0;
                      }

                      v81 = v80 && v51 == 11;
                      v82 = 1;
                      if (!v81)
                      {
                        v82 = 2;
                      }

                      v86 = v82;
                      v84 = 2;
                      v85 = 0;
                      goto LABEL_50;
                    }

                    v86 = 0;
                    v85 = 1;
                    v57 = 12;
                  }

                  else
                  {
                    v86 = 0;
                    v85 = 1;
                    v57 = 11;
                  }
                }

                else
                {
                  v86 = 0;
                  v85 = 1;
                  v57 = 10;
                }
              }

              else
              {
                v86 = 0;
                v85 = 1;
                v57 = 9;
              }
            }

            else
            {
              v86 = 0;
              v85 = 1;
              v57 = 8;
            }
          }

          else
          {
            v86 = 0;
            v85 = 1;
            v57 = 7;
          }
        }

        else
        {
          v86 = 0;
          v85 = 1;
          v57 = 6;
        }
      }

      else
      {
        v86 = 0;
        v85 = 1;
        v57 = 5;
      }
    }

    else
    {
      v86 = 0;
      v85 = 1;
      v57 = 4;
    }

    v84 = v57;
  }

  else
  {
    v86 = v52;
    v85 = v53;
    v84 = v51;
  }

LABEL_50:
  v58 = v97;
  (*(*v37 + 272))();
  v59 = v100;
  sub_10000C8A4(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v100, type metadata accessor for CRLBoardIdentifier);
  v60 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
  v61 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
  v62 = *(a2 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedAssetUUIDs);
  v103 = type metadata accessor for CRLBoardDataStore(0);
  v104 = &off_1018A4BB8;
  sub_100024E84(v60, v61);

  v63 = v91;

  *&v102 = v63;
  type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
  v64 = swift_allocObject();
  v65 = OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData;
  *(v64 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData) = 0;
  v66 = (v64 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
  v93 = xmmword_101486780;
  *(v64 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
  sub_100050F74(&v102, v64 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_persistenceContext);
  *(v64 + v65) = v37;
  v67 = *v66;
  v68 = v66[1];
  v69 = v96;
  *v66 = v95;
  v66[1] = v69;
  sub_100025870(v67, v68);
  *(v64 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) = v92;
  *(v64 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedAssetUUIDs) = v62;
  v70 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
  v71 = v98;
  v72 = v99;
  (*(v98 + 56))(v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID, 1, 1, v99);
  *(v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData) = v93;
  (*(v71 + 32))(v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v101, v72);
  v73 = v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions;
  *(v73 + 32) = v87;
  v74 = v89;
  *v73 = v90;
  *(v73 + 16) = v74;
  *(v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions) = v88;
  v75 = v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues;
  v76 = v86;
  *v75 = v84;
  *(v75 + 8) = v76;
  *(v75 + 16) = v85 & 1;
  swift_beginAccess();
  sub_100803880(v58, v64 + v70);
  swift_endAccess();
  sub_1000256D0(v59, v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned) = v94;
  v77 = (v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
  v78 = *(v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
  v79 = *(v64 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
  sub_100024E84(v60, v61);
  *v77 = v60;
  v77[1] = v61;
  sub_100025870(v78, v79);
  sub_100025870(v60, v61);
  return v64;
}

uint64_t sub_100EEEA70(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v99 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v81 - v8;
  *&v94 = type metadata accessor for MergeResult();
  *&v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v101 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v12 - 8);
  v14 = &v81 - v13;
  v15 = type metadata accessor for CRLBoardCRDTData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v95 = &v81 - v18;
  __chkstk_darwin(v19);
  v22 = &v81 - v21;
  v100 = a2;
  v23 = *(a2 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData);
  v24 = (a1 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData);
  v25 = *(a1 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8);
  if (v25 >> 60 != 15)
  {
    v89 = v20;
    v90 = v6;
    v91 = v4;
    v26 = *v24;
    sub_100024E84(*v24, v25);
    sub_100024E84(v26, v25);
    sub_100F05378(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

    v97 = v23;

    CRDT.init(serializedData:)();
    v30 = *(v16 + 56);
    v85 = v15;
    v30(v14, 0, 1, v15);
    v88 = type metadata accessor for CRLBoardCRDTData;
    sub_1000256D0(v14, v22, type metadata accessor for CRLBoardCRDTData);
    LODWORD(v87) = *(a1 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 32);
    v31 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions);
    v83 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 16);
    v84 = v31;
    v32 = v95;
    sub_10000C8A4(v22, v95, type metadata accessor for CRLBoardCRDTData);
    v86 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
    v33 = v101;
    sub_10000C8A4(a1 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v101, type metadata accessor for CRLBoardIdentifier);
    v34 = (v33 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v35 = v34[1];
    v82 = *v34;

    sub_100026088(v33, type metadata accessor for CRLBoardIdentifier);
    sub_100025870(v26, v25);

    type metadata accessor for CRLBoardData(0);
    v36 = swift_allocObject();
    sub_100026088(v22, type metadata accessor for CRLBoardCRDTData);
    *(v36 + 16) = 7;
    v37 = v84;
    *(v36 + 40) = v83;
    *(v36 + 24) = v37;
    *(v36 + 56) = v87;
    sub_1000256D0(v32, v36 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v88);
    v38 = (v36 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v39 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned;
    v40 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned);
    v41 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted;
    v88 = a1;
    v42 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted);
    *v38 = v82;
    v38[1] = v35;
    v43 = v100;
    v44 = *(v100 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges);
    if ((v44 & 4) != 0)
    {
      v45 = v97;
      if (v42)
      {
        v47 = v88;
        if ((v44 & 0x10) == 0)
        {
          v46 = 0;
          goto LABEL_23;
        }

        v46 = 16;
        if (*(v100 + v41))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v40 = *(v100 + v39);
        v47 = v88;
        if ((v44 & 0x10) == 0)
        {
          LODWORD(v84) = *(v100 + v39);
          LODWORD(v83) = 0;
          v46 = 4;
          if (!v97)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }

        v46 = 20;
        if (*(v100 + v41))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v45 = v97;
      if ((v44 & 0x10) == 0)
      {
        v46 = 0;
        v47 = v88;
        if (v42)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      v46 = 16;
      v47 = v88;
      if (*(v100 + v41))
      {
LABEL_23:
        v82 = OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges;
        LODWORD(v83) = v42;
        v87 = v46;
        LODWORD(v84) = v40;
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v81 = static OS_os_log.dataSync;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C4D0;
        v49 = sub_100EFF9E4(v47 + v86);
        sub_100006370(0, &qword_1019F6E98);
        v50._countAndFlagsBits = UUID.uuidString.getter();
        isa = CKRecordID.init(recordName:zoneID:)(v50, v49).super.isa;
        v52 = [(objc_class *)isa recordName];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v53;
        *(inited + 40) = v55;
        *(inited + 96) = &type metadata for Bool;
        *(inited + 104) = &protocol witness table for Bool;
        *(inited + 72) = v83;
        v56 = *(v43 + v82);
        *(inited + 136) = &type metadata for Bool;
        *(inited + 144) = &protocol witness table for Bool;
        *(inited + 112) = (v56 & 0x10) != 0;
        v57 = static os_log_type_t.default.getter();
        sub_100005404(v81, &_mh_execute_header, v57, "Setting hideFromRecentlyDeleted to true after resolving board record conflict for recordName: %{public}%. hideFromRecentlyDeleted state for remote record:%d local record:%d ", 173, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        LODWORD(v83) = 1;
        v46 = v87;
        if (v45)
        {
          goto LABEL_26;
        }

LABEL_21:
        v87 = v46;
LABEL_27:
        v92 = *(v96 + 16);
        v62 = v88;
        sub_10000C8A4(v88 + v86, v101, type metadata accessor for CRLBoardIdentifier);
        LODWORD(v96) = *(v36 + 56);
        v63 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        v64 = *(v36 + 24);
        v93 = *(v36 + 40);
        v94 = v64;
        swift_beginAccess();
        sub_10000C8A4(v36 + v63, v32, type metadata accessor for CRLBoardCRDTData);
        sub_1005B981C(&unk_1019F5250);
        v65 = v98;
        CRRegister.wrappedValue.getter();
        sub_100026088(v32, type metadata accessor for CRLBoardCRDTData);
        v66 = v89;
        sub_10000C8A4(v36 + v63, v89, type metadata accessor for CRLBoardCRDTData);
        type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
        v67 = v90;
        CRRegister.wrappedValue.getter();
        sub_100026088(v66, type metadata accessor for CRLBoardCRDTData);
        v68 = *(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
        v69 = *(v62 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
        v70 = *(v100 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedAssetUUIDs);
        v103 = type metadata accessor for CRLBoardDataStore(0);
        v104 = &off_1018A4BB8;
        sub_100024E84(v68, v69);

        v71 = v92;

        *&v102 = v71;
        type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
        v72 = swift_allocObject();
        v73 = OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData;
        *(v72 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData) = 0;
        sub_100050F74(&v102, v72 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_persistenceContext);
        *(v72 + v73) = v36;
        *(v72 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges) = v87;
        *(v72 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedAssetUUIDs) = v70;
        *(v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData) = xmmword_101486780;
        sub_1000256D0(v101, v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        v74 = v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions;
        v75 = v93;
        *v74 = v94;
        *(v74 + 16) = v75;
        *(v74 + 32) = v96;
        v76 = *(v99 + 32);
        v77 = v91;
        v76(v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID, v65, v91);
        v76(v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v67, v77);
        *(v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned) = v84;
        *(v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted) = v83;
        v78 = (v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
        v79 = *(v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
        v80 = *(v72 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
        sub_100024E84(v68, v69);
        *v78 = v68;
        v78[1] = v69;
        sub_100025870(v79, v80);
        sub_100025870(v68, v69);
        return v72;
      }
    }

LABEL_20:
    LODWORD(v84) = v40;
    LODWORD(v83) = 0;
    if (!v45)
    {
      goto LABEL_21;
    }

LABEL_26:
    v58 = v46;

    v87 = sub_100E02DAC(v36);
    v59 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10000C8A4(v45 + v59, v32, type metadata accessor for CRLBoardCRDTData);
    swift_beginAccess();
    sub_100F05378(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
    v60 = v92;
    CRStruct_6.merge(_:)();
    sub_100026088(v32, type metadata accessor for CRLBoardCRDTData);
    (*(v93 + 8))(v60, v94);
    swift_endAccess();
    v61 = *(v45 + 40);
    v105[0] = *(v45 + 24);
    v105[1] = v61;
    v106 = *(v45 + 56);
    sub_1012F22F0(v105);

    v87 |= v58;
    goto LABEL_27;
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.dataSync;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v28, "Failed to convert CRLBoardSyncRemoteRecord to item data", 55, 2, _swiftEmptyArrayStorage);

  return 0;
}

uint64_t sub_100EEF700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = *(a2 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData);

  v16 = sub_100F053C0(a1);
  if (v16)
  {
    v17 = v16;
    if (v15)
    {
      v18 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
      swift_beginAccess();
      sub_10000C8A4(v15 + v18, v14, type metadata accessor for CRLUserBoardMetadataCRDTData);
      v19 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
      swift_beginAccess();
      v20 = v17 + v19;
      v3 = v2;
      sub_10000C8A4(v20, v11, type metadata accessor for CRLUserBoardMetadataCRDTData);
      sub_100F05378(&qword_101A1E728, type metadata accessor for CRLUserBoardMetadataCRDTData);

      v21 = CRStruct_5.hasDelta(from:)();
      sub_100026088(v11, type metadata accessor for CRLUserBoardMetadataCRDTData);
      sub_100026088(v14, type metadata accessor for CRLUserBoardMetadataCRDTData);
      v22 = 2;
      if ((v21 & 1) == 0)
      {
        v22 = 0;
      }

      if (*(v15 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) == *(v17 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 | 4;
      }

      sub_100D64DB0(v15);
    }

    else
    {
      v23 = 0;
    }

    v27 = *(v3 + 16);
    sub_10000C8A4(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v8, type metadata accessor for CRLBoardIdentifier);
    v28 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData);
    v29 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData + 8);
    v30 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity);
    v37 = type metadata accessor for CRLBoardDataStore(0);
    v38 = &off_1018A4BB8;
    sub_100024E84(v28, v29);
    v31 = v27;

    *&v36 = v31;
    type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
    v32 = swift_allocObject();
    v33 = OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData;
    *(v32 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData) = 0;
    sub_100050F74(&v36, v32 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_persistenceContext);
    *(v32 + v33) = v17;
    *(v32 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_unsyncedChanges) = v23;
    sub_1000256D0(v8, v32 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    result = v32;
    v34 = (v32 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData);
    *v34 = v28;
    v34[1] = v29;
    *(v32 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity) = v30;
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.dataSync;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v25, "Failed to convert CRLBoardSyncRemoteRecord to item data", 55, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  return result;
}

uint64_t sub_100EEFB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A22860);
  __chkstk_darwin(v7);
  v176 = (&v143 - v8);
  v9 = sub_1005B981C(&qword_101A21F48);
  __chkstk_darwin(v9 - 8);
  v11 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v143 - v13;
  v15 = sub_1005B981C(&unk_101A22E30);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v143 - v17;
  v19 = sub_1005B981C(&unk_101A341C0);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v31 = &v143 - v30;
  v32 = a1 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions;
  if (*(a1 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions + 49))
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.dataSync;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v34, "_resolveFreehandDrawingBucketRecordConflict() received a partial record, which is unexpected in a conflict", 106, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  v163 = v26;
  v164 = v14;
  v159 = v25;
  v174 = v29;
  v161 = v11;
  *&v160 = v28;
  v172 = a1;
  v162 = v27;
  v156 = v6;
  v166 = v18;
  v165 = v16;
  v173 = v15;
  v171 = v24;
  v35 = *v32;
  v157 = *(v32 + 16);
  v158 = v35;
  v36 = *(v32 + 32);
  v37 = *(v32 + 40);
  v38 = *(v32 + 48);
  v39 = *(a2 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
  v40 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
  v41 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData + 8);
  v42 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions);
  v167 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 16);
  v168 = v42;
  v43 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 40);
  v169 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 32);
  LODWORD(v170) = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 48);
  sub_100024E98(v40, v41);
  v44 = sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
  v177 = 0;
  v150 = v44;
  v151 = v7;
  v147 = v38;
  v148 = v37;
  v149 = v36;
  v154 = sub_1005B981C(&unk_101A228D0);
  v52 = swift_allocObject();
  *(v52 + *(*v52 + 136)) = 0;
  v52[2] = v39;
  v53 = *(v174 + 32);
  v146 = *(*v52 + 120);
  v54 = v171;
  v153 = v174 + 32;
  v152 = v53;
  v53(v52 + v146, v31, v171);
  *(v52 + *(*v52 + 136)) = 0;
  v55 = *(*v52 + 128);
  v155 = v52;
  v56 = v52 + v55;
  v57 = v167;
  *v56 = v168;
  *(v56 + 1) = v57;
  *(v56 + 4) = v169;
  *(v56 + 5) = v43;
  v58 = v172;
  v59 = *(v172 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_ckMergeableRecordValue);
  *&v168 = v56;
  v56[48] = v170;
  v60 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData + 8);
  if (v60 >> 60 == 15)
  {
    *&v167 = a2;
    v170 = v59;
    v61 = v173;
  }

  else
  {
    v78 = *(a2 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData);
    sub_100006370(0, &qword_101A1AEB0);
    sub_100006370(0, &unk_101A22DA0);
    v79 = v59;
    sub_100024E84(v78, v60);
    v80 = v177;
    v81 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v177 = v80;
    v61 = v173;
    if (v80)
    {

      sub_100025870(v78, v60);
      v82 = v155;
      swift_setDeallocating();
      (*(v174 + 8))(v82 + *(*v82 + 120), v54);
      swift_deallocClassInstance();
      goto LABEL_6;
    }

    if (v81)
    {
      v89 = v78;
      *&v178 = 0;
      v90 = v81;
      if (([v81 mergeRecordValue:v79 error:&v178] & 1) == 0)
      {
        v111 = v79;
        v112 = v178;
        v177 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100025870(v89, v60);

        v113 = v155;
        swift_setDeallocating();
        (*(v174 + 8))(v113 + *(*v113 + 120), v54);
        swift_deallocClassInstance();

        goto LABEL_6;
      }

      *&v167 = a2;
      v91 = v178;
      sub_100025870(v89, v60);

      v170 = v90;
      v61 = v173;
    }

    else
    {
      *&v167 = a2;
      sub_100025870(v78, v60);
      v170 = v79;
    }
  }

  v144 = *(v175 + 16);
  v62 = *&v144[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
  v145 = *(v58 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
  *&v178 = v145;
  *&v175 = v62;
  dispatch thunk of CustomStringConvertible.description.getter();
  v169 = v63;
  type metadata accessor for UUID();
  sub_1005B981C(&qword_101A228A0);
  sub_100F05378(&qword_1019FB870, &type metadata accessor for UUID);
  sub_10001A2F8(&qword_101A1F620, &qword_101A228A0);
  sub_10001A2F8(&unk_101A22E50, &qword_101A228A0);
  CRDictionary.init()();
  v64 = v163;
  Capsule.init(_:id:)();
  v65 = swift_allocObject();
  *(v65 + *(*v65 + 136)) = 0;
  v66 = *(*v65 + 120);
  v152(v65 + v66, v64, v54);
  swift_beginAccess();
  v67 = v174;
  v68 = v65 + v66;
  v69 = v164;
  v176 = *(v174 + 16);
  v176(v164, v68, v54);
  swift_setDeallocating();
  v71 = v67 + 8;
  v70 = *(v67 + 8);
  v70(v65 + *(*v65 + 120), v54);
  swift_deallocClassInstance();
  (*(v67 + 56))(v69, 0, 1, v54);
  sub_10001A2F8(&unk_101A22E40, &unk_101A341C0);
  v72 = v175;
  v73 = v166;
  CRCKMergeable.init(crdt:context:)();
  sub_10001A2F8(&qword_101A21F50, &unk_101A22E30);
  v74 = v170;
  v75 = v177;
  CKMergeable.merge(_:)();
  v177 = v75;
  if (v75)
  {
    (*(v165 + 8))(v73, v61);
    v76 = v74;
    v77 = v155;
    swift_setDeallocating();
    v70(v77 + *(*v77 + 120), v54);
    swift_deallocClassInstance();

LABEL_6:
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v45 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v47 = Error.localizedDescription.getter();
    v49 = v48;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v47;
    *(inited + 40) = v49;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v50, "Failed to resolve freehand conflict with error - %@", 51, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    return 0;
  }

  *&v175 = v70;
  v83 = v161;
  CRCKMergeable.crdt.getter();
  if ((*(v67 + 48))(v83, 1, v54) == 1)
  {
    v84 = v74;
    sub_10000CAAC(v83, &qword_101A21F48);
    v85 = v175;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v86 = static OS_os_log.dataSync;
    v87 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v87, "remoteCKMergeable.crdt is nil, something went wrong.", 52, 2, _swiftEmptyArrayStorage);

    v88 = v155;
    swift_setDeallocating();
    v85(v88 + *(*v88 + 120), v54);
    swift_deallocClassInstance();

    (*(v165 + 8))(v166, v61);
    return 0;
  }

  v92 = v162;
  v93 = v152;
  v152(v162, v83, v54);
  v94 = v159;
  v95 = v176;
  v176(v159, v92, v54);
  v96 = swift_allocObject();
  *(v96 + *(*v96 + 136)) = 0;
  v96[2] = v145;
  v93(v96 + *(*v96 + 120), v94, v54);
  *(v96 + *(*v96 + 136)) = 0;
  v97 = v96 + *(*v96 + 128);
  v98 = v157;
  *v97 = v158;
  *(v97 + 1) = v98;
  v99 = v148;
  *(v97 + 4) = v149;
  *(v97 + 5) = v99;
  v97[48] = v147 & 1;
  v100 = v155;
  v174 = sub_100E21B80(v155);
  sub_100E69D38(v96);
  v101 = v146;
  swift_beginAccess();
  v102 = v100 + v101;
  v103 = v160;
  v95(v160, v102, v54);
  v104 = v175;
  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v105, qword_101AD6348);
  v106 = v177;
  v107 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
  v177 = v106;
  v109 = v167;
  if (v106)
  {

    v110 = v155;
    swift_setDeallocating();
    v104(v110 + *(*v110 + 120), v54);
    swift_deallocClassInstance();
    swift_setDeallocating();
    v104(v96 + *(*v96 + 120), v54);
    swift_deallocClassInstance();

    v104(v103, v54);
    v104(v162, v54);
    (*(v165 + 8))(v166, v173);
    goto LABEL_6;
  }

  v176 = v107;
  v177 = v108;
  v104(v103, v54);
  v114 = v170;
  v115 = sub_100F00014(v170);
  if (v116 >> 60 == 15)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v117 = static OS_os_log.dataSync;
    v118 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v118, "Failed to serialize remote mergeable record value.", 50, 2, _swiftEmptyArrayStorage);

    v119 = v155;
    swift_setDeallocating();
    v104(v119 + *(*v119 + 120), v54);
    swift_deallocClassInstance();

    sub_10002640C(v176, v177);
    swift_setDeallocating();
    v104(v96 + *(*v96 + 120), v54);
    swift_deallocClassInstance();
    v104(v162, v54);
    (*(v165 + 8))(v166, v173);
    return 0;
  }

  v159 = v71;
  v120 = v155;
  v169 = v155[2];
  *&v158 = v115;
  v121 = v116;
  sub_10000C8A4(v109 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v156, type metadata accessor for CRLBoardIdentifier);
  v123 = *(v172 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8);
  v172 = *(v172 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v122 = v172;
  *&v167 = v123;
  v124 = v168;
  v125 = *(v168 + 40);
  v164 = *(v168 + 32);
  v163 = v125;
  LODWORD(v161) = *(v168 + 48);
  v179 = type metadata accessor for CRLBoardDataStore(0);
  v180 = &off_1018A4BB8;
  v126 = v124[1];
  v160 = *v124;
  v168 = v126;
  sub_100024E84(v122, v123);
  v127 = v158;
  sub_100024E84(v158, v121);
  v128 = v144;

  swift_setDeallocating();
  v104(v120 + *(*v120 + 120), v54);
  swift_deallocClassInstance();
  *&v178 = v128;
  swift_setDeallocating();
  v104(v96 + *(*v96 + 120), v54);
  swift_deallocClassInstance();
  sub_100025870(v127, v121);

  v104(v162, v54);
  (*(v165 + 8))(v166, v173);
  type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
  v129 = swift_allocObject();
  v130 = (v129 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData);
  v175 = xmmword_101486780;
  *(v129 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData) = xmmword_101486780;
  sub_100050F74(&v178, v129 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_persistenceContext);
  v131 = (v129 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
  v132 = v177;
  *v131 = v176;
  v131[1] = v132;
  v133 = *v130;
  v134 = v130[1];
  *v130 = v127;
  v130[1] = v121;
  sub_100025870(v133, v134);
  *(v129 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_unsyncedChanges) = v174;
  v135 = v129 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions;
  v136 = v168;
  *v135 = v160;
  *(v135 + 16) = v136;
  v137 = v163;
  *(v135 + 32) = v164;
  *(v135 + 40) = v137;
  *(v135 + 48) = v161;
  *(v129 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData) = v175;
  sub_1000256D0(v156, v129 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v129 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex) = v169;
  v138 = (v129 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v139 = *(v129 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v140 = *(v129 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8);
  v141 = v172;
  v142 = v167;
  sub_100024E84(v172, v167);
  *v138 = v141;
  v138[1] = v142;
  sub_100025870(v139, v140);
  sub_100025870(v141, v142);
  return v129;
}

uint64_t sub_100EF1364()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
  swift_beginAccess();
  sub_10000BE14(v1 + v9, v4, &qword_1019F6990);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CAAC(v4, &qword_1019F6990);
    v10 = v1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
    v38 = UUID.uuidString.getter();
    v39 = v11;

    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);

    v13 = v38;
    v14 = v39;
    v15 = (v10 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v16 = *v15;
    v17 = v15[1];
    v38 = v13;
    v39 = v14;

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    String.append(_:)(v18);

    return v38;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v38 = UUID.uuidString.getter();
    v39 = v20;

    v21._countAndFlagsBits = 95;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);

    v23 = v38;
    v22 = v39;
    v24 = v1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
    v38 = UUID.uuidString.getter();
    v39 = v25;

    v26._countAndFlagsBits = 58;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);

    v27 = v38;
    v28 = v39;
    v29 = (v24 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v30 = *v29;
    v31 = v29[1];
    v38 = v27;
    v39 = v28;

    v32._countAndFlagsBits = v30;
    v32._object = v31;
    String.append(_:)(v32);

    v33 = v38;
    v34 = v39;
    v38 = v23;
    v39 = v22;

    v35._countAndFlagsBits = v33;
    v35._object = v34;
    String.append(_:)(v35);

    v19 = v38;
    (*(v6 + 8))(v8, v5);
  }

  return v19;
}

uint64_t sub_100EF1690()
{
  v1 = *v0;
  v12 = UUID.uuidString.getter();

  v2._countAndFlagsBits = 95;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = v12;
  v4 = v1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
  v13._countAndFlagsBits = UUID.uuidString.getter();
  v13._object = v5;

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7 = (v4 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v8 = *v7;
  v9 = v7[1];

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  String.append(_:)(v13);

  return v3;
}

uint64_t sub_100EF17DC()
{
  v1 = *v0 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
  v8 = UUID.uuidString.getter();

  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v4 = *v3;
  v5 = v3[1];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

uint64_t sub_100EF188C()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier;
  v9 = UUID.uuidString.getter();

  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v4 = *v3;
  v5 = v3[1];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x7461646174654D5FLL;
  v7._object = 0xE900000000000061;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_100EF1990()
{
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 95;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier;
  v11._countAndFlagsBits = UUID.uuidString.getter();
  v11._object = v4;

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6 = (v3 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v7 = *v6;
  v8 = v6[1];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  String.append(_:)(v11);

  return 0x5F74656B637562;
}

uint64_t sub_100EF1B14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3 + *a3;
  v11 = UUID.uuidString.getter();

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6 = (v4 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v7 = *v6;
  v8 = v6[1];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  return v11;
}

uint64_t sub_100EF1BBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare);
  v2 = [v1 recordID];
  v3 = [v2 recordName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = [v1 recordID];
  v6 = [v5 zoneID];

  v7 = [v6 zoneName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return v4;
}

uint64_t sub_100EF1CE4()
{
  v1 = sub_1005B981C(&unk_1019F52D0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v18 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare) recordID];
  v6 = [v5 zoneID];

  sub_100EE9190(v4);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
    sub_10000CAAC(v4, &unk_1019F52D0);
    return 0;
  }

  else
  {
    v18 = UUID.uuidString.getter();
    v19 = v9;

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);

    v11 = v18;
    v12 = v19;
    v13 = &v4[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
    v14 = *v13;
    v15 = v13[1];
    v18 = v11;
    v19 = v12;

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    String.append(_:)(v16);

    v8 = v18;
    sub_100026088(v4, type metadata accessor for CRLBoardIdentifier);
  }

  return v8;
}

CKRecordID sub_100EF1EFC()
{
  v1 = sub_100EFF9E4(*v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);
  sub_100006370(0, &qword_1019F6E98);
  v2._countAndFlagsBits = UUID.uuidString.getter();
  return CKRecordID.init(recordName:zoneID:)(v2, v1);
}

CKRecordID sub_100EF1F78(uint64_t a1)
{
  v1 = sub_100EFF9E4(a1);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = sub_10084B8C8();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 32) = v3;
  v7 = inited + 32;
  *(inited + 64) = v6;
  v60 = inited;
  *(inited + 40) = v5;
  v8 = [(objc_class *)v1 ownerName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    goto LABEL_9;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_9:
    v18 = 0xE000000000000000;
    goto LABEL_10;
  }

  v15 = [(objc_class *)v1 ownerName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16)
  {
LABEL_12:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      goto LABEL_41;
    }

    v58 = v1;
    v57 = objc_opt_self();
    LODWORD(v20) = [v57 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v61);
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_46;
    }

LABEL_15:
    v26 = static OS_os_log.crlAssert;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_10146CA70;
    *(v27 + 56) = &type metadata for Int32;
    *(v27 + 64) = &protocol witness table for Int32;
    *(v27 + 32) = v20;
    v28 = sub_100006370(0, &qword_1019F4D30);
    *(v27 + 96) = v28;
    v29 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v27 + 72) = v59;
    *(v27 + 136) = &type metadata for String;
    *(v27 + 144) = v6;
    *(v27 + 104) = v29;
    *(v27 + 112) = v23;
    *(v27 + 120) = v25;
    *(v27 + 176) = &type metadata for UInt;
    *(v27 + 184) = &protocol witness table for UInt;
    *(v27 + 152) = 579;
    v30 = v61;
    *(v27 + 216) = v28;
    *(v27 + 224) = v29;
    *(v27 + 192) = v30;
    v31 = v59;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v27);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "Creating recordIDForCKRecord for public database using non-default ownerName for zone: %{public}@", 97, 2, v60);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v23 = v35 + 3;
    v35[4] = 0;
    v35[5] = 0;
    v20 = *(v60 + 16);
    if (!v20)
    {
LABEL_40:
      v51 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v53 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v54 = String._bridgeToObjectiveC()();

      [v57 handleFailureInFunction:v52 file:v53 lineNumber:579 isFatal:0 format:v54 args:v51];

      v1 = v58;
      goto LABEL_41;
    }

    v36 = 0;
    while (1)
    {
      v37 = (v7 + 40 * v36);
      v25 = v37[4];
      v6 = sub_100020E58(v37, v37[3]);
      v38 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v39 = *v23;
      v40 = *(v38 + 16);
      v41 = __OFADD__(*v23, v40);
      v42 = *v23 + v40;
      if (v41)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        swift_once();
        goto LABEL_15;
      }

      v6 = v35[4];
      if (v6 >= v42)
      {
        goto LABEL_32;
      }

      if (v6 + 0x4000000000000000 < 0)
      {
        goto LABEL_44;
      }

      v25 = v35[5];
      if (2 * v6 > v42)
      {
        v42 = 2 * v6;
      }

      v35[4] = v42;
      if ((v42 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_45;
      }

      v43 = v38;
      v44 = swift_slowAlloc();
      v45 = v44;
      v35[5] = v44;
      if (v25)
      {
        break;
      }

      v38 = v43;
      if (!v45)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_33:
      v47 = *(v38 + 16);
      if (v47)
      {
        v48 = (v38 + 32);
        v49 = *v23;
        while (1)
        {
          v50 = *v48++;
          *&v45[8 * v49] = v50;
          v49 = *v23 + 1;
          if (__OFADD__(*v23, 1))
          {
            break;
          }

          *v23 = v49;
          if (!--v47)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

LABEL_17:

      if (++v36 == v20)
      {
        goto LABEL_40;
      }
    }

    if (v44 != v25 || v44 >= &v25[8 * v39])
    {
      memmove(v44, v25, 8 * v39);
    }

    v6 = v35;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v38 = v43;
LABEL_32:
    v45 = v35[5];
    if (!v45)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

LABEL_10:
  if (v18 != 0xE000000000000000)
  {
    goto LABEL_12;
  }

LABEL_41:
  sub_100006370(0, &qword_1019F6E98);
  v55._countAndFlagsBits = UUID.uuidString.getter();
  return CKRecordID.init(recordName:zoneID:)(v55, v1);
}