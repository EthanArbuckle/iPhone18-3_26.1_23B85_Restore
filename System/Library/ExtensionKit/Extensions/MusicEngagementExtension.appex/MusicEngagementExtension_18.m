uint64_t ModelObjectBackedStoreItemMetadata.audioTraits.getter()
{
  v10 = _swiftEmptyArrayStorage;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.audioTraits.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_23_1;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.audioTraits.getter(uint64_t a1, char **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      return;
    }

LABEL_3:
    v7 = v6;
    v8 = v5;
    if (([v7 traits] & 0x10) != 0)
    {
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v62 = v11 + 1;
        v50 = v9;
        v51 = *(v9 + 2);
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1, v50);
        v11 = v51;
        v13 = v62;
        v9 = v52;
        *a2 = v52;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = 0x736F6D7461;
      *(v14 + 5) = 0xE500000000000000;
    }

    if (([v7 traits] & 4) != 0)
    {
      v15 = *a2;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if ((v16 & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        *a2 = v15;
      }

      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v63 = v17 + 1;
        v53 = v15;
        v54 = *(v15 + 2);
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v53);
        v17 = v54;
        v19 = v63;
        v15 = v55;
        *a2 = v55;
      }

      *(v15 + 2) = v19;
      v20 = &v15[16 * v17];
      *(v20 + 4) = 0x6C2D7365722D6968;
      *(v20 + 5) = 0xEF7373656C73736FLL;
    }

    if (([v7 traits] & 2) == 0)
    {
      goto LABEL_29;
    }

    v21 = *a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((v22 & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      *a2 = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v62 = v23 + 1;
      v56 = v21;
      v57 = *(v21 + 2);
      v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v23 + 1, 1, v56);
      v23 = v57;
      v25 = v62;
      v21 = v58;
      *a2 = v58;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    v27 = 0x7373656C73736F6CLL;
    v28 = 0xE800000000000000;
    goto LABEL_28;
  }

  v7 = v29;
  v8 = v5;
  if (([v7 traits] & 0x10) != 0)
  {
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v30;
    if ((v31 & 1) == 0)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      *a2 = v30;
    }

    v32 = *(v30 + 2);
    v33 = *(v30 + 3);
    v34 = v32 + 1;
    if (v32 >= v33 >> 1)
    {
      v62 = v32 + 1;
      v59 = v30;
      v60 = *(v30 + 2);
      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v32 + 1, 1, v59);
      v32 = v60;
      v34 = v62;
      v30 = v61;
      *a2 = v61;
    }

    *(v30 + 2) = v34;
    v26 = &v30[16 * v32];
    v27 = 0x736F6D7461;
    v28 = 0xE500000000000000;
LABEL_28:
    *(v26 + 4) = v27;
    *(v26 + 5) = v28;
  }

LABEL_29:
  if (([v7 traits] & 8) != 0)
  {
    v35 = *a2;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
      *a2 = v35;
    }

    v37 = *(v35 + 2);
    v38 = *(v35 + 3);
    v39 = v37 + 1;
    if (v37 >= v38 >> 1)
    {
      v64 = v37 + 1;
      v47 = v35;
      v48 = *(v35 + 2);
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v37 + 1, 1, v47);
      v37 = v48;
      v39 = v64;
      v35 = v49;
      *a2 = v49;
    }

    *(v35 + 2) = v39;
    v40 = &v35[16 * v37];
    *(v40 + 4) = 0x6C616974617073;
    *(v40 + 5) = 0xE700000000000000;
  }

  if (([v7 traits] & 0x20) != 0)
  {
    v41 = *a2;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v41;
    if ((v42 & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
      *a2 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
    }

    v45 = *a2;
    *(v45 + 2) = v44 + 1;
    v46 = &v45[16 * v44];
    *(v46 + 4) = 0x646E756F72727573;
    *(v46 + 5) = 0xE800000000000000;
  }

  else
  {
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isBeats1.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isBeats1.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_33;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.collectionName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.collectionName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_43_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.collectionStoreID.getter;
  *(v5 + 24) = v4;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_53;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void closure #1 in ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = &selRef_album;
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        return;
      }

      v6 = &selRef_season;
    }

    v7 = [v5 *v6];
    v8 = *a2;
    *a2 = v7;
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isCompilation.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isCompilation.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_63_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.composerName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.composerName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_73;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.collectionName.getter(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
{
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v11 = result;
      v12 = v10;
      v13 = [v11 *a3];
      if (v13 && (v14 = *a4, v15 = v13, v16 = [v13 v14], v15, v16))
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }

      *a2 = v17;
      a2[1] = v19;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.copyrightText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.copyrightText.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_83;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.curatorName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.curatorName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_93;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.curatorName.getter(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 curator];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 name];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v16 = [v10 shortName];
          if (v16)
          {
            v17 = v16;
            v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v18;
          }

          else
          {

            v13 = 0;
            v15 = 0;
          }
        }

        *a2 = v13;
        a2[1] = v15;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.descriptionText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.descriptionText.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_103;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.descriptionText.getter(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 descriptionText];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v9 = v6;
        v10 = [v12 descriptionText];
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v9 = v6;
          v10 = [v14 descriptionText];
          if (!v10)
          {
LABEL_13:

            v16 = 0;
            v18 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v19 = result;
          v9 = v6;
          v10 = [v19 descriptionText];
          if (!v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = v10;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

LABEL_14:
    *a2 = v16;
    a2[1] = v18;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.discCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_113;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.discNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_123_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.duration.getter()
{
  v9 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.duration.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_133_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.duration.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result duration];
      *a2 = v6;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.editorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.editorNotes.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_143_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = [v10 *a3];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v11 = v8;
        v12 = [v14 *a3];
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v11 = v8;
          v12 = [v16 *a3];
          if (!v12)
          {
LABEL_13:

            v18 = 0;
            v20 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v21 = result;
          v11 = v8;
          v12 = [v21 *a3];
          if (!v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v17 = v12;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

LABEL_14:
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_153;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.episodeCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.episodeCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_163;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.explicitRating.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.explicitRating.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_173;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.explicitRating.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result explicitRating];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.genreNames.getter()
{
  v16 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v16;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.genreNames.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_183_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v16 && (v8 = [v16 name]) != 0)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1004F2400;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v16;

    return v13;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.genreNames.getter(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [v5 genre];
      v7 = *a2;
      *a2 = v6;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.handle.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.handle.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_193;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_203;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasLyrics.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_213;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.hasLyrics.getter(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasStoreLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_223;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasTimeSyncedLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_233;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result hasSocialPosts];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isExplicitContent.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isExplicitContent.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_243;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.isExplicitContent.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v6 = &selRef_isExplicitSong;
          goto LABEL_5;
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (!result)
        {
          return result;
        }
      }
    }

    v6 = &selRef_hasExplicitContent;
LABEL_5:
    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_253;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result traits];
      *a2 = result & 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPreorder.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isPreorder.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_263;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_273;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_283;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_293;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result hasLightweightProfile];
      *a2 = result ^ 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.itemKind.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.itemKind.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_303;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.itemKind.getter(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v10 = [v8 curatorKind];
      if (v10 <= 1)
      {
        if (!v10)
        {

          return;
        }

        if (v10 == 1)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 2 || v10 == 3 || v10 == 4)
      {
        goto LABEL_22;
      }

      _StringGuts.grow(_:)(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x80000001004C7BF0;
      String.append(_:)(v16);
      v17._object = 0x80000001004CBE40;
      v17._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      type metadata accessor for MPModelCuratorKind(0);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v9 = v5;
      [v15 isArtistUploadedContent];
      [v15 hasVideo];
LABEL_22:
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2[1] = v6;
LABEL_5:
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_313;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = [v20 lastModifiedDateComponents];
      if (v22)
      {
        v23 = v22;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v11 + 32))(v16, v14, v10);
        v24 = [objc_opt_self() storeServerCalendar];
        static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

        Calendar.date(from:)();
        (*(v4 + 8))(v6, v3);
        (*(v11 + 8))(v16, v10);
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v9, v25, &_s10Foundation4DateVSgMd);
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.movementCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.movementCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_323;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.movementName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_333;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.movementNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_343;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.name.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.name.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_353;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.name.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
LABEL_15:
      v12 = v7;
      v10 = v6;
      v11 = [v12 title];
LABEL_16:
      v13 = v11;
      if (v13)
      {
LABEL_17:
        v14 = v13;
LABEL_18:
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

LABEL_27:
        *a2 = v15;
        a2[1] = v17;
      }

      goto LABEL_25;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (!v8)
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              objc_opt_self();
              v7 = swift_dynamicCastObjCClass();
              if (!v7)
              {
                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (!v7)
                {
                  objc_opt_self();
                  v18 = swift_dynamicCastObjCClass();
                  if (v18)
                  {
                    v19 = v18;
                    v10 = v6;
                    v20 = [v19 show];
                    v15 = v20;
                    if (!v20)
                    {

                      goto LABEL_26;
                    }

                    v14 = [v20 title];

                    if (v14)
                    {
                      goto LABEL_18;
                    }
                  }

                  else
                  {
                    objc_opt_self();
                    result = swift_dynamicCastObjCClass();
                    if (!result)
                    {
                      return result;
                    }

                    v21 = result;
                    v10 = v6;
                    v13 = [v21 title];
                    if (v13)
                    {
                      goto LABEL_17;
                    }
                  }

LABEL_25:

                  v15 = 0;
LABEL_26:
                  v17 = 0;
                  goto LABEL_27;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }

    v9 = v8;
    v10 = v6;
    v11 = [v9 name];
    goto LABEL_16;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.nameRaw.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.nameRaw.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_363;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

Class @objc ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.releaseDate.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_373;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.releaseDate.getter(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = type metadata accessor for DateComponents();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v65 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v65 - v13;
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v65 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v65 - v25;
  __chkstk_darwin(v24);
  v28 = &v65 - v27;
  v29 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v31 = *(a1 + v29);
  if (v31)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = v31;
      v35 = [v33 releaseDateComponents];
      if (v35)
      {
        v36 = v35;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v45 = v67;
      v44 = v68;
      (*(v67 + 56))(v14, v37, 1, v68);
      outlined init with take of DateComponents?(v14, v16);
      if ((*(v45 + 48))(v16, 1, v44))
      {

        outlined destroy of TaskPriority?(v16, &_s10Foundation14DateComponentsVSgMd);
        v46 = type metadata accessor for Date();
        (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
      }

      else
      {
        v47 = v66;
        (*(v45 + 16))(v66, v16, v44);
        outlined destroy of TaskPriority?(v16, &_s10Foundation14DateComponentsVSgMd);
        DateComponents.date.getter();

        (*(v45 + 8))(v47, v44);
      }

      v23 = v28;
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        v40 = v31;
        v41 = [v39 releaseDateComponents];
        if (v41)
        {
          v42 = v41;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v55 = v67;
        v54 = v68;
        (*(v67 + 56))(v8, v43, 1, v68);
        outlined init with take of DateComponents?(v8, v11);
        if ((*(v55 + 48))(v11, 1, v54))
        {

          outlined destroy of TaskPriority?(v11, &_s10Foundation14DateComponentsVSgMd);
          v56 = type metadata accessor for Date();
          (*(*(v56 - 8) + 56))(v26, 1, 1, v56);
        }

        else
        {
          v57 = v66;
          (*(v55 + 16))(v66, v11, v54);
          outlined destroy of TaskPriority?(v11, &_s10Foundation14DateComponentsVSgMd);
          DateComponents.date.getter();

          (*(v55 + 8))(v57, v54);
        }

        v23 = v26;
      }

      else
      {
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v49 = v48;
          v50 = v31;
          v51 = [v49 releaseDate];
          if (v51)
          {
            v52 = v51;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v53 = 0;
            v50 = v52;
          }

          else
          {
            v53 = 1;
          }

          v63 = type metadata accessor for Date();
          (*(*(v63 - 8) + 56))(v23, v53, 1, v63);
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v58 = result;
          v59 = v31;
          v60 = [v58 releaseDate];
          if (v60)
          {
            v61 = v60;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v62 = 0;
            v59 = v61;
          }

          else
          {
            v62 = 1;
          }

          v64 = type metadata accessor for Date();
          (*(*(v64 - 8) + 56))(v20, v62, 1, v64);
          v23 = v20;
        }
      }
    }

    return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v23, v69, &_s10Foundation4DateVSgMd);
  }

  return result;
}

id @objc ModelObjectBackedStoreItemMetadata.artistStoreID.getter(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v12);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_0Tm(v12, v13);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ModelObjectBackedStoreItemMetadata.socialProfileID.getter@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.socialProfileID.getter;
  *(v5 + 24) = v4;
  v10[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_383;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.socialProfileID.getter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = (a1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
      swift_beginAccess();
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        v9 = &type metadata for String;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[1] = v7;
      v10[3] = v9;

      return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v10, a2, &_sypSgMd_0);
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.seasonNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.seasonNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_393;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.seasonNumber.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 season];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 number];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.shortName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.shortName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_403;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.copyrightText.getter(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4, uint64_t a5, SEL *a6)
{
  v10 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v12 = *(a1 + v10);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 *a4];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

LABEL_11:
        *a2 = v18;
        a2[1] = v20;
      }
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v21 = result;
      v22 = v12;
      v23 = [v21 *a6];
      if (v23)
      {
        v24 = v23;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v25;

        goto LABEL_11;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  return result;
}

id @objc ModelObjectBackedStoreItemMetadata.url.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a1;
  a3();

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v14 = v13;
    (*(v10 + 8))(v7, v9);
    v12 = v14;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.shortURL.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_413;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.showComposer.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.showComposer.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_423;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.isBeats1.getter(uint64_t a1, _BYTE *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.storeID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = &type metadata for String;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[3] = v6;
}

uint64_t ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_433;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 16);
      v9 = v7;
      v10 = v5;
      v11 = v8(ObjectType, v9);

      *a2 = v11 & 1;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.trackCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.trackCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_443;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.discCount.getter(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.trackNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.trackNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_453;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.trackNumber.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = &selRef_trackNumber;
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v6 = &selRef_episodeNumber;
    }

    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.url.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_463;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.shortURL.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v12 = result;
      v13 = v11;
      v14 = [v12 *a3];
      if (v14)
      {
        v15 = v14;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = 0;
        v13 = v15;
      }

      else
      {
        v16 = 1;
      }

      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v8, v16, 1, v17);
      return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v8, a2, &_s10Foundation3URLVSgMd);
    }
  }

  return result;
}

id @objc ModelObjectBackedStoreItemMetadata.artistName.getter(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t ModelObjectBackedStoreItemMetadata.workName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.workName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_473;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.handle.getter(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v9 = *(a1 + v7);
  if (v9)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v10 = result;
      v11 = v9;
      v12 = [v10 *a4];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      *a2 = v14;
      a2[1] = v16;
    }
  }

  return result;
}

id ModelObjectBackedStoreItemMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id specialized ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v10 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  outlined init with copy of Date?(a3, v9);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v9, v12);
  }

  v15 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v11.super.isa, a2, isa);

  outlined destroy of TaskPriority?(a3, &_s10Foundation4DateVSgMd);
  return v16;
}

uint64_t sub_1001B3B44()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MotionMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v6 == enum case for MotionMode.wifiOnly(_:))
  {
    v8 = [objc_opt_self() sharedMonitor];
    [v8 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v6 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v10 = 0xD00000000000001ELL;
    v11 = 0x80000001004CBE80;
    lazy protocol witness table accessor for type MotionMode and conformance MotionMode();
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MotionMode and conformance MotionMode()
{
  result = lazy protocol witness table cache variable for type MotionMode and conformance MotionMode;
  if (!lazy protocol witness table cache variable for type MotionMode and conformance MotionMode)
  {
    type metadata accessor for MotionMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionMode and conformance MotionMode);
  }

  return result;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t *NetworkMonitor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for NetworkMonitor.isOnline : NetworkMonitor@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for NetworkMonitor.isOnline : NetworkMonitor()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for NetworkMonitor.$isOnline : NetworkMonitor()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for NetworkMonitor.$isOnline : NetworkMonitor(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

id NetworkMonitor.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
    v8 = [result hasProperNetworkConditionsToShowCloudMedia];

    LOBYTE(aBlock[0]) = v8;
    Published.init(initialValue:)();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in NetworkMonitor.init();
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    aBlock[3] = &block_descriptor_26;
    v13 = _Block_copy(aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B4E54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id closure #1 in NetworkMonitor.init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v1 = result;
      if (([result shouldProhibitMusicActionForCurrentNetworkConditions] & 1) == 0)
      {
        [v1 hasProperNetworkConditionsToShowCloudMedia];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      return static Published.subscript.setter();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = type metadata singleton initialization cache for NetworkMonitor;
  if (!type metadata singleton initialization cache for NetworkMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NetworkMonitor()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v214 = a2;
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v219 = type metadata accessor for Notice.Thumbnail(0);
  v217 = *(v219 - 8);
  __chkstk_darwin(v219);
  v5 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v207 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v207 - v17);
  __chkstk_darwin(v16);
  v212 = (&v207 - v19);
  v20 = type metadata accessor for Locale();
  __chkstk_darwin(v20 - 8);
  v218 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.LocalizationValue();
  v23 = *(v22 - 8);
  v215 = v22;
  v216 = v23;
  v24 = __chkstk_darwin(v22);
  v213 = &v207 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v207 - v26;
  v28 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v28);
  v30 = (&v207 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Notice.Variant(a1, v30, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = *v30;
      v87 = v30[1];
      v89 = Notice.Variant.id.getter();
      v207 = v90;
      v208 = v89;
      if (v87)
      {
        v210 = v87;
        v211 = v88;
        v209 = 0x7265646C6F66;
        v91 = v219;
        v92 = v216;
        v93 = v217;
        v94 = v27;
        v95 = v214;
        v96 = v215;
        v97 = v213;
      }

      else
      {
        v94 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v96 = v215;
        v92 = v216;
        v97 = v213;
        (*(v216 + 16))(v213, v27, v215);
        v91 = v219;
        v93 = v217;
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v209 = 0x672E657261757173;
        v192 = static NSBundle.module;
        static Locale.current.getter();
        v193 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v194;
        v211 = v193;
        (*(v92 + 8))(v27, v96);
        v95 = v214;
      }

      String.LocalizationValue.init(stringLiteral:)();
      (*(v92 + 16))(v97, v94, v96);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v195 = static NSBundle.module;
      static Locale.current.getter();
      v219 = String.init(localized:table:bundle:locale:comment:)();
      v197 = v196;
      (*(v92 + 8))(v94, v96);
      v198 = Image.init(_internalSystemName:)();
      v199 = v212;
      *v212 = v198;
      swift_storeEnumTagMultiPayload();
      v200 = *(v93 + 56);
      v200(v199, 0, 1, v91);
      v201 = type metadata accessor for Notice(0);
      v202 = v201[5];
      v200(v95 + v202, 1, 1, v91);
      v203 = (v95 + v201[7]);
      v188 = (v95 + v201[8]);
      v121 = v95 + v201[9];
      v122 = v95 + v201[10];
      v204 = v207;
      *v95 = v208;
      v95[1] = v204;
      result = outlined assign with take of Notice.Thumbnail?(v199, v95 + v202);
      v205 = (v95 + v201[6]);
      v206 = v210;
      *v205 = v211;
      v205[1] = v206;
      *v203 = v219;
      v203[1] = v197;
      goto LABEL_74;
    case 2u:
      v71 = *v30;
      v70 = v30[1];
      v72 = v30[2];
      v73 = Notice.Variant.id.getter();
      v208 = v74;
      v209 = v73;
      if (v72)
      {
        v210 = v72;
        v211 = v70;
        v76 = v215;
        v75 = v216;
        v77 = v27;
        v79 = v213;
        v78 = v214;
      }

      else
      {
        v77 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v76 = v215;
        v75 = v216;
        v79 = v213;
        (*(v216 + 16))(v213, v27, v215);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v167 = static NSBundle.module;
        static Locale.current.getter();
        v168 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v169;
        v211 = v168;
        (*(v75 + 8))(v27, v76);
        v78 = v214;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v170._countAndFlagsBits = 0;
      v170._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v170);
      v220 = v71;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v171 = 0x80000001004CBF70;
      v172 = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v83 = *v30;
      v82 = v30[1];
      v84 = v30[2];
      v85 = Notice.Variant.id.getter();
      v208 = v86;
      v209 = v85;
      if (v84)
      {
        v210 = v84;
        v211 = v82;
        v76 = v215;
        v75 = v216;
        v77 = v27;
        v79 = v213;
        v78 = v214;
      }

      else
      {
        v77 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v76 = v215;
        v75 = v216;
        v79 = v213;
        (*(v216 + 16))(v213, v27, v215);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v173 = static NSBundle.module;
        static Locale.current.getter();
        v174 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v175;
        v211 = v174;
        (*(v75 + 8))(v27, v76);
        v78 = v214;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v176._countAndFlagsBits = 0;
      v176._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v176);
      v220 = v83;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v172 = 0xD000000000000013;
      v171 = 0x80000001004CBF50;
LABEL_65:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v172);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v75 + 16))(v79, v77, v76);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v177 = static NSBundle.module;
      static Locale.current.getter();
      v178 = String.init(localized:table:bundle:locale:comment:)();
      v180 = v179;
      (*(v75 + 8))(v77, v76);
      v181 = Image.init(_internalSystemName:)();
      v182 = v212;
      *v212 = v181;
      v183 = v219;
      swift_storeEnumTagMultiPayload();
      v184 = *(v217 + 56);
      v184(v182, 0, 1, v183);
      v185 = type metadata accessor for Notice(0);
      v186 = v185[5];
      v184(v78 + v186, 1, 1, v183);
      v187 = (v78 + v185[7]);
      v188 = (v78 + v185[8]);
      v121 = v78 + v185[9];
      v122 = v78 + v185[10];
      v189 = v208;
      *v78 = v209;
      v78[1] = v189;
      result = outlined assign with take of Notice.Thumbnail?(v182, v78 + v186);
      v190 = (v78 + v185[6]);
      v191 = v210;
      *v190 = v211;
      v190[1] = v191;
      *v187 = v178;
      v187[1] = v180;
LABEL_74:
      *v188 = 0;
      v188[1] = 0;
      break;
    case 4u:
      v56 = *v30;
      v55 = v30[1];
      v57 = Notice.Variant.id.getter();
      v208 = v58;
      if (v55)
      {
        v210 = v55;
        v211 = v56;
        v59 = v219;
        v61 = v215;
        v60 = v216;
        v62 = v27;
      }

      else
      {
        v62 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v61 = v215;
        v60 = v216;
        (*(v216 + 16))(v213, v27, v215);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v145 = static NSBundle.module;
        static Locale.current.getter();
        v146 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v147;
        v211 = v146;
        (*(v60 + 8))(v27, v61);
        v59 = v219;
      }

      v148 = v214;
      v149 = one-time initialization token for isInternalInstall;

      if (v149 != -1)
      {
        swift_once();
      }

      v209 = v57;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        (*(v60 + 16))(v213, v62, v61);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v150 = static NSBundle.module;
        static Locale.current.getter();
        v151 = String.init(localized:table:bundle:locale:comment:)();
        v218 = v152;
        v219 = v151;
        (*(v60 + 8))(v62, v61);
        v154 = swift_allocObject();
        *(v154 + 16) = v56;
        *(v154 + 24) = v55;
        v153 = partial apply for closure #1 in static Notice.variant(_:);
      }

      else
      {

        v153 = 0;
        v154 = 0;
        v218 = 0;
        v219 = 0;
      }

      v155 = Image.init(_internalSystemName:)();
      v156 = v212;
      *v212 = v155;
      swift_storeEnumTagMultiPayload();
      v157 = *(v217 + 56);
      v157(v156, 0, 1, v59);
      v158 = type metadata accessor for Notice(0);
      v159 = v59;
      v160 = v158[5];
      v157(v148 + v160, 1, 1, v159);
      v161 = (v148 + v158[7]);
      v162 = (v148 + v158[8]);
      v121 = v148 + v158[9];
      v122 = v148 + v158[10];
      v163 = v208;
      *v148 = v209;
      v148[1] = v163;
      result = outlined assign with take of Notice.Thumbnail?(v156, v148 + v160);
      v164 = (v148 + v158[6]);
      v165 = v210;
      *v164 = v211;
      v164[1] = v165;
      v166 = v218;
      *v161 = v219;
      v161[1] = v166;
      *v162 = v153;
      v162[1] = v154;
      *v121 = 2;
      goto LABEL_37;
    case 5u:
      v100 = Notice.Variant.id.getter();
      v210 = v101;
      v211 = v100;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v108 = Notice.Variant.id.getter();
      v210 = v109;
      v211 = v108;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v68 = Notice.Variant.id.getter();
      v210 = v69;
      v211 = v68;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v104 = Notice.Variant.id.getter();
      v210 = v105;
      v211 = v104;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v53 = Notice.Variant.id.getter();
      v210 = v54;
      v211 = v53;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v63 = Notice.Variant.id.getter();
      v210 = v64;
      v211 = v63;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v102 = Notice.Variant.id.getter();
      v210 = v103;
      v211 = v102;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v48 = Notice.Variant.id.getter();
      v210 = v49;
      v211 = v48;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v110 = static NSBundle.module;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v111;
      (*(v51 + 8))(v50, v52);
      goto LABEL_35;
    case 0xFu:
      v80 = Notice.Variant.id.getter();
      v210 = v81;
      v211 = v80;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v40 = Notice.Variant.id.getter();
      v210 = v41;
      v211 = v40;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v215;
      v42 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v44 = static NSBundle.module;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v46;
      (*(v42 + 8))(v27, v43);
      goto LABEL_35;
    case 0x11u:
      v98 = Notice.Variant.id.getter();
      v210 = v99;
      v211 = v98;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v106 = static NSBundle.module;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v107;
      (*(v66 + 8))(v65, v67);
LABEL_35:
      v112 = Image.init(_internalSystemName:)();
      v113 = v212;
      *v212 = v112;
      v114 = v219;
      swift_storeEnumTagMultiPayload();
      v115 = *(v217 + 56);
      v115(v113, 0, 1, v114);
      v116 = type metadata accessor for Notice(0);
      v117 = v116[5];
      v118 = v214;
      v115(v214 + v117, 1, 1, v114);
      v119 = (v118 + v116[7]);
      v120 = (v118 + v116[8]);
      v121 = v118 + v116[9];
      v122 = v118 + v116[10];
      v123 = v210;
      *v118 = v211;
      v118[1] = v123;
      result = outlined assign with take of Notice.Thumbnail?(v113, v118 + v117);
      v125 = (v118 + v116[6]);
      *v125 = v45;
      v125[1] = v47;
      *v119 = 0;
      v119[1] = 0;
      *v120 = 0;
      v120[1] = 0;
      break;
    default:
      v31 = *v30;
      v211 = v30[1];
      v212 = v31;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS12playlistName_8MusicKit7ArtworkVSg7artworkSi9songCounttMd);
      v33 = *(v32 + 48);
      v207 = *(v30 + *(v32 + 64));
      outlined init with take of Artwork?(v30 + v33, v11);
      v34 = Notice.Variant.id.getter();
      v209 = v35;
      v210 = v34;
      outlined init with copy of TaskPriority?(v11, v9, &_s8MusicKit7ArtworkVSgMd);
      v36 = type metadata accessor for Artwork();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v9, 1, v36) == 1)
      {
        outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSgMd);
        v38 = 1;
        v39 = v219;
      }

      else
      {
        (*(v37 + 32))(v5, v9, v36);
        v39 = v219;
        swift_storeEnumTagMultiPayload();
        outlined init with take of Notice.Thumbnail(v5, v15);
        v38 = 0;
      }

      v126 = v217;
      v127 = *(v217 + 56);
      v127(v15, v38, 1, v39);
      v217 = *(v126 + 48);
      v128 = (v217)(v15, 1, v39);
      v208 = v127;
      if (v128 == 1)
      {
        *v18 = Image.init(_internalSystemName:)();
        swift_storeEnumTagMultiPayload();
        v127(v18, 0, 1, v39);
        if ((v217)(v15, 1, v39) != 1)
        {
          outlined destroy of TaskPriority?(v15, &_s9MusicCore6NoticeV9ThumbnailOSgMd);
        }
      }

      else
      {
        outlined init with take of Notice.Thumbnail(v15, v18);
        v127(v18, 0, 1, v39);
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v129);
      v220 = v207;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v130._countAndFlagsBits = 0x297328676E6F7320;
      v130._object = 0xEE00646564646120;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v130);
      String.LocalizationValue.init(stringInterpolation:)();
      v132 = v215;
      v131 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v133 = static NSBundle.module;
      static Locale.current.getter();
      v134 = String.init(localized:table:bundle:locale:comment:)();
      v136 = v135;
      (*(v131 + 8))(v27, v132);
      outlined destroy of TaskPriority?(v11, &_s8MusicKit7ArtworkVSgMd);
      v137 = type metadata accessor for Notice(0);
      v138 = v137[5];
      v139 = v214;
      v208(v214 + v138, 1, 1, v219);
      v140 = (v139 + v137[7]);
      v141 = (v139 + v137[8]);
      v121 = v139 + v137[9];
      v122 = v139 + v137[10];
      v142 = v209;
      *v139 = v210;
      v139[1] = v142;
      result = outlined assign with take of Notice.Thumbnail?(v18, v139 + v138);
      v143 = (v139 + v137[6]);
      v144 = v211;
      *v143 = v212;
      v143[1] = v144;
      *v140 = v134;
      v140[1] = v136;
      *v141 = 0;
      v141[1] = 0;
      break;
  }

  *v121 = 0;
LABEL_37:
  v121[8] = 0;
  *v122 = 1;
  return result;
}

uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return outlined assign with take of Notice.Thumbnail?(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

uint64_t Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

uint64_t Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.link.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 32));
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v36 = a12;
  v34 = a11;
  v35 = a4;
  v33 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  *(&v33 - v17) = a3;
  v19 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 0, 1, v19);
  v21 = type metadata accessor for Notice(0);
  v22 = v21[5];
  v20(&a9[v22], 1, 1, v19);
  v23 = &a9[v21[7]];
  v24 = &a9[v21[8]];
  v25 = v21[10];
  v26 = &a9[v21[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = outlined assign with take of Notice.Thumbnail?(v18, &a9[v22]);
  v28 = &a9[v21[6]];
  v29 = v37;
  *v28 = v35;
  *(v28 + 1) = v29;
  v30 = v39;
  *v23 = v38;
  *(v23 + 1) = v30;
  v32 = v33;
  v31 = v34;
  *v24 = v40;
  *(v24 + 1) = v32;
  *v26 = v31;
  v26[8] = v36 & 1;
  a9[v25] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = outlined assign with take of Notice.Thumbnail?(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}

uint64_t Notice.init(id:symbol:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v34 = a11;
  v32 = a10;
  v33 = a3;
  v30 = a8;
  v31 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd);
  __chkstk_darwin(v14 - 8);
  v16 = (&v30 - v15);
  *v16 = Image.init(_internalSystemName:)();
  v17 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 0, 1, v17);
  v19 = type metadata accessor for Notice(0);
  v20 = v19[5];
  v18((a7 + v20), 1, 1, v17);
  v21 = (a7 + v19[7]);
  v22 = (a7 + v19[8]);
  v23 = v19[10];
  v24 = a7 + v19[9];
  *a7 = a1;
  a7[1] = a2;
  result = outlined assign with take of Notice.Thumbnail?(v16, a7 + v20);
  v26 = (a7 + v19[6]);
  v27 = v35;
  *v26 = v33;
  v26[1] = v27;
  v28 = v37;
  *v21 = v36;
  v21[1] = v28;
  v29 = v31;
  *v22 = v30;
  v22[1] = v29;
  *v24 = v32;
  v24[8] = v34 & 1;
  *(a7 + v23) = 1;
  return result;
}

uint64_t Notice.withLink(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of Notice.Variant(v3, a3, type metadata accessor for Notice);
  v7 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v8 = *v7;

  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  v1 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Notice.Variant(v0, v3, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v3, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v3, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v3, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v3, type metadata accessor for Notice.Variant);
      result = 0x726F727265;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7473614C79616C70;
      break;
    case 7:
      result = 0x6575516F54646461;
      break;
    case 8:
      result = 0x6574664179616C70;
      break;
    case 9:
      result = 0x417972617262696CLL;
      break;
    case 10:
      result = 0x72437265646C6F66;
      break;
    case 11:
      result = 0x436E6F6974617473;
      break;
    case 12:
      result = 0x64656E6E6970;
      break;
    case 13:
      result = 0x64656E6E69706E75;
      break;
    case 14:
      result = 0x657469726F766166;
      break;
    case 15:
      result = 0x69726F7661666E75;
      break;
    case 16:
      result = 0x4C74736567677573;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    default:

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS12playlistName_8MusicKit7ArtworkVSg7artworkSi9songCounttMd);
      outlined destroy of TaskPriority?(&v3[*(v6 + 48)], &_s8MusicKit7ArtworkVSgMd);
      result = 0x506F546465646461;
      break;
  }

  return result;
}

uint64_t closure #1 in static Notice.variant(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    a1 = 0xD000000000000010;
    v13 = 0x80000001004CC090;
  }

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(&_swiftEmptyArrayStorage);
  static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(a1, v13, 0xD000000000000032, 0x80000001004C8F70, &_swiftEmptyArrayStorage, v14, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, v12, 1u);
  v15 = v4;

  outlined init with copy of TaskPriority?(v12, v10, &_s10Foundation3URLVSgMd);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v16 = v30;
    (*(v5 + 32))(v30, v10, v4);
    v17 = objc_opt_self();
    v18 = [v17 sharedApplication];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v22 = [v18 canOpenURL:v20];

    if (v22)
    {
      v23 = [v17 sharedApplication];
      URL._bridgeToObjectiveC()(v24);
      v26 = v25;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
      lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v23 openURL:v26 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v16, v15);
    v10 = v12;
  }

  return outlined destroy of TaskPriority?(v10, &_s10Foundation3URLVSgMd);
}

uint64_t outlined assign with take of Notice.Thumbnail?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8368()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Notice.Thumbnail(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Notice.Thumbnail.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notice.Thumbnail(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailO_AEtMd);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = *(v14 + 56);
  outlined init with copy of Notice.Variant(a1, &v23 - v15, type metadata accessor for Notice.Thumbnail);
  outlined init with copy of Notice.Variant(a2, &v16[v17], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Notice.Variant(v16, v12, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = static Image.== infix(_:_:)();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Notice.Variant(v16, v10, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v24;
      (*(v24 + 32))(v6, &v16[v17], v4);
      v20 = static Artwork.== infix(_:_:)();
      v21 = *(v19 + 8);
      v21(v6, v4);
      v21(v10, v4);
LABEL_12:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v16, type metadata accessor for Notice.Thumbnail);
      return v20 & 1;
    }

    (*(v24 + 8))(v10, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    outlined destroy of TaskPriority?(v16, &_s9MusicCore6NoticeV9ThumbnailO_AEtMd);
    v20 = 0;
    return v20 & 1;
  }

  _s9MusicCore6NoticeV7VariantOWOhTm_2(v16, type metadata accessor for Notice.Thumbnail);
  v20 = 1;
  return v20 & 1;
}

uint64_t outlined init with copy of Notice.Variant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static Notice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSg_AFtMd);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = *a1;
  v15 = a1[1];
  v39 = a1;
  if ((v14 != *a2 || v15 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = a2;
  v38 = type metadata accessor for Notice(0);
  v17 = *(v38 + 20);
  v18 = *(v11 + 48);
  outlined init with copy of TaskPriority?(v39 + v17, v13, &_s9MusicCore6NoticeV9ThumbnailOSgMd);
  v19 = v16 + v17;
  v20 = v16;
  outlined init with copy of TaskPriority?(v19, &v13[v18], &_s9MusicCore6NoticeV9ThumbnailOSgMd);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s9MusicCore6NoticeV9ThumbnailOSgMd);
      goto LABEL_13;
    }

LABEL_9:
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6NoticeV9ThumbnailOSg_AFtMd);
    return 0;
  }

  outlined init with copy of TaskPriority?(v13, v10, &_s9MusicCore6NoticeV9ThumbnailOSgMd);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_2(v10, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  outlined init with take of Notice.Thumbnail(&v13[v18], v7);
  v23 = specialized static Notice.Thumbnail.__derived_enum_equals(_:_:)(v10, v7);
  _s9MusicCore6NoticeV7VariantOWOhTm_2(v7, type metadata accessor for Notice.Thumbnail);
  _s9MusicCore6NoticeV7VariantOWOhTm_2(v10, type metadata accessor for Notice.Thumbnail);
  outlined destroy of TaskPriority?(v13, &_s9MusicCore6NoticeV9ThumbnailOSgMd);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v24 = v38;
  v25 = *(v38 + 24);
  v26 = (v39 + v25);
  v27 = *(v39 + v25 + 8);
  v28 = (v20 + v25);
  if ((*v26 != *v28 || v27 != v28[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v29 = *(v24 + 28);
  v30 = (v39 + v29);
  v31 = *(v39 + v29 + 8);
  v32 = (v20 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33 && (*v30 == *v32 && v31 == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v33)
  {
    return 0;
  }

LABEL_23:
  v34 = *(v24 + 36);
  v35 = (v39 + v34);
  v36 = *(v39 + v34 + 8);
  v37 = v20 + v34;
  result = *(v37 + 8);
  if ((v36 & 1) == 0)
  {
    return (*v35 == *v37) & ~result;
  }

  return result;
}

uint64_t sub_1001B8C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001B8CF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Notice()
{
  type metadata accessor for Notice.Thumbnail?(319, &lazy cache variable for type metadata for Notice.Thumbnail?, type metadata accessor for Notice.Thumbnail);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (())?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Notice.Thumbnail?(319, &lazy cache variable for type metadata for UINotificationFeedbackType?, type metadata accessor for UINotificationFeedbackType);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Notice.Thumbnail?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for Notice.Thumbnail()
{
  result = type metadata accessor for Artwork();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Notice.Variant()
{
  type metadata accessor for (playlistName: String, artwork: Artwork?, songCount: Int)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (folderName: String?)(319, &lazy cache variable for type metadata for (folderName: String?));
    if (v1 <= 0x3F)
    {
      type metadata accessor for (playlistCount: Int, folderName: String?)(319, &lazy cache variable for type metadata for (playlistCount: Int, folderName: String?));
      if (v2 <= 0x3F)
      {
        type metadata accessor for (playlistCount: Int, folderName: String?)(319, &lazy cache variable for type metadata for (folderCount: Int, folderName: String?));
        if (v3 <= 0x3F)
        {
          type metadata accessor for (folderName: String?)(319, &lazy cache variable for type metadata for (message: String?));
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (playlistName: String, artwork: Artwork?, songCount: Int)()
{
  if (!lazy cache variable for type metadata for (playlistName: String, artwork: Artwork?, songCount: Int))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit7ArtworkVSgMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (playlistName: String, artwork: Artwork?, songCount: Int));
    }
  }
}

void type metadata accessor for (playlistCount: Int, folderName: String?)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (folderName: String?)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for String?();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t _s9MusicCore6NoticeV7VariantOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v14 = v13[7];
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = v13[8];
  a7[v13[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t outlined assign with take of NowPlaying.TrackMetadata.StringKind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v22 = a3;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v16 = &a7[v15[6]];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);
  v19 = v15[7];
  v18(&a7[v19], 1, 1, v17);
  v20 = v15[8];
  a7[v15[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = v22;
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v14, &a7[v19]);
  *&a7[v20] = v23;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v32 = a3;
  v33 = a7;
  v31 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a4;
  v19[1] = a5;
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for AttributedString();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(a6, 1, v20) == 1)
  {
    outlined destroy of TaskPriority?(a6, &_s10Foundation16AttributedStringVSgMd);
    v22 = 1;
  }

  else
  {
    (*(v21 + 32))(v15, a6, v20);
    swift_storeEnumTagMultiPayload();
    v22 = 0;
  }

  v23 = *(v17 + 56);
  v23(v15, v22, 1, v16);
  v24 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v25 = v24[7];
  v23(&a8[v25], 1, 1, v16);
  v26 = v24[8];
  a8[v24[9]] = 1;
  v28 = v31;
  v27 = v32;
  *a8 = a1;
  *(a8 + 1) = v28;
  *(a8 + 2) = v27;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v19, &a8[v24[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v15, &a8[v25]);
  *&a8[v26] = v33;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s10Foundation16AttributedStringVSgMd);
    v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    (*(v5 + 32))(a2, a1, v4);
    v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return v7(v9, v10, 1, v8);
}

{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v28 = a3;
  v29 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v14 - 8);
  v16 = (&v28 - v15);
  v17 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString();
  (*(*(v21 - 8) + 32))(v20, a4, v21);
  swift_storeEnumTagMultiPayload();
  if (a6)
  {
    *v16 = a5;
    v16[1] = a6;
    swift_storeEnumTagMultiPayload();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v18 + 56);
  v23(v16, v22, 1, v17);
  v24 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v25 = v24[7];
  v23((a8 + v25), 1, 1, v17);
  v26 = v24[8];
  *(a8 + v24[9]) = 1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v28;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v20, a8 + v24[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v16, a8 + v25);
  *(a8 + v26) = v29;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;
    a3[1] = a2;
    v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a3;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a3;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.title.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 24);

  return outlined assign with take of NowPlaying.TrackMetadata.StringKind(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return outlined assign with take of NowPlaying.TrackMetadata.StringKind?(a1, v3);
}

void *NowPlaying.TrackMetadata.artwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;
  return v1;
}

void NowPlaying.TrackMetadata.artwork.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t outlined assign with take of NowPlaying.TrackMetadata.StringKind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v1, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  v9 = AttributedStringProtocol.description.getter();
  (*(v3 + 8))(v5, v2);
  return v9;
}

unint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString()
{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NowPlaying.TrackMetadata.StringKind()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v1, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v6, v8, v2);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  v9 = AttributedStringProtocol.description.getter();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = *(v1 + *(v6 + 32));
  outlined init with copy of TaskPriority?(a1, v5, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v8 = v7;
    outlined destroy of TaskPriority?(v5, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *&v5[*(v6 + 32)];
    v8 = v10;
    v11 = v7;
    outlined destroy of NowPlaying.TrackMetadata(v5, type metadata accessor for NowPlaying.TrackMetadata);
    if (v7)
    {
      if (v10)
      {
        if ([v11 isArtworkVisuallyIdenticalToCatalog:v8])
        {
          v9 = 1;
        }

        else
        {
          type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
          v9 = static NSObject.== infix(_:_:)();
        }
      }

      else
      {
        v9 = 0;
        v8 = v11;
      }

      goto LABEL_13;
    }

    if (v10)
    {
LABEL_3:
      v9 = 0;
LABEL_13:

      return v9 & 1;
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t NowPlaying.TrackMetadata.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for notPlaying != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = __swift_project_value_buffer(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void one-time initialization function for notPlaying()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __swift_allocate_value_buffer(v14, static NowPlaying.TrackMetadata.notPlaying);
  v15 = __swift_project_value_buffer(v14, static NowPlaying.TrackMetadata.notPlaying);
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v4 + 16);
  v27 = v3;
  v16(v7, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  (*(v4 + 8))(v9, v27);
  *v13 = v18;
  v13[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = *(v11 + 56);
  v22 = v28;
  v21(v28, 1, 1, v10);
  v23 = v14[7];
  v21(&v15[v23], 1, 1, v10);
  v24 = v14[8];
  *&v15[v24] = 0;
  v15[v14[9]] = 1;
  *v15 = 0x79616C705F746F6ELL;
  *(v15 + 1) = 0xEB00000000676E69;
  *(v15 + 2) = 0;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v13, &v15[v14[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v22, &v15[v23]);
  v25 = *&v15[v24];
  *&v15[v24] = 0;
}

void one-time initialization function for loading()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __swift_allocate_value_buffer(v14, static NowPlaying.TrackMetadata.loading);
  v15 = __swift_project_value_buffer(v14, static NowPlaying.TrackMetadata.loading);
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v4 + 16);
  v27 = v3;
  v16(v7, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  (*(v4 + 8))(v9, v27);
  *v13 = v18;
  v13[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = *(v11 + 56);
  v22 = v28;
  v21(v28, 1, 1, v10);
  v23 = v14[7];
  v21((v15 + v23), 1, 1, v10);
  v24 = v14[8];
  *(v15 + v24) = 0;
  *(v15 + v14[9]) = 1;
  strcpy(v15, "i_am_loading");
  *(v15 + 13) = 0;
  *(v15 + 14) = -5120;
  *(v15 + 16) = 0;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v13, v15 + v14[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v22, v15 + v23);
  v25 = *(v15 + v24);
  *(v15 + v24) = 0;
}

uint64_t NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static NowPlaying.TrackMetadata.notPlaying.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of NowPlaying.TrackMetadata.StringKind(v6, a3, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v67) = a3;
  v74 = a2;
  v76 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v5 - 8);
  v73 = &v63 - v6;
  v75 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v75);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AttributedString();
  v70 = *(v72 - 8);
  v10 = __chkstk_darwin(v72);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v63 - v12;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  String.LocalizationValue.init(stringLiteral:)();
  v21 = *(v15 + 16);
  v21(v18, v20, v14);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v22 = static NSBundle.module;
  static Locale.current.getter();
  v23 = v22;
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v64 = v25;
  v65 = v24;
  v26 = *(v15 + 8);
  v26(v20, v14);
  String.LocalizationValue.init(stringLiteral:)();
  v21(v18, v20, v14);
  static Locale.current.getter();
  v27 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v28;
  v26(v20, v14);
  v30 = [a1 route];
  v31 = a1;
  if (v30)
  {
    v32 = v30;
    v33 = [v30 routeName];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = [a1 representedBundleDisplayName];
  if (!v37)
  {
    if (v67)
    {
      goto LABEL_11;
    }

LABEL_12:

    v42 = v64;

    v36 = v42;
    v41 = v65;
    v34 = v65;
    goto LABEL_13;
  }

  v38 = v37;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if ((v67 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v40)
  {
LABEL_11:

    v42 = v64;

    v41 = v65;
    goto LABEL_13;
  }

  v36 = v29;
  v34 = v27;
  v42 = v64;
  v41 = v65;
LABEL_13:
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v43 = [v31 representedBundleID];
  if (!v43)
  {
    v43 = [v31 bundleID];
    if (!v43)
    {
      v66 = 0xD000000000000013;
      v67 = 0x80000001004CC0D0;
      v71 = v31;
      if (v36)
      {
        goto LABEL_16;
      }

LABEL_18:
      v34 = v41;
      goto LABEL_19;
    }
  }

  v44 = v43;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v45;

  v71 = v31;
  if (!v36)
  {
    goto LABEL_18;
  }

LABEL_16:

  v42 = v36;
LABEL_19:
  v46 = v70;
  v47 = v68;
  v48 = v72;
  (*(v70 + 16))(v68, v77, v72);
  v49 = v75;
  v50 = v69;
  v51 = &v69[*(v75 + 24)];
  *v51 = v34;
  v51[1] = v42;
  v52 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v53 = v73;
  (*(v46 + 32))(v73, v47, v48);
  swift_storeEnumTagMultiPayload();
  v54 = *(*(v52 - 8) + 56);
  v54(v53, 0, 1, v52);
  v55 = v49[7];
  v54(v50 + v55, 1, 1, v52);
  v56 = v49[8];
  *(v50 + v49[9]) = 1;
  v57 = v67;
  *v50 = v66;
  v50[1] = v57;
  v58 = v74;
  v50[2] = v74;
  v59 = v58;
  outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v53, v50 + v55);
  *(v50 + v56) = 0;
  v60 = v76;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v50, v76, type metadata accessor for NowPlaying.TrackMetadata);
  v61 = v71;
  LOBYTE(v51) = [v71 isSystemMusicPath];

  result = (*(v46 + 8))(v77, v48);
  *(v60 + v49[9]) = v51;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v13 - 8);
  v75 = &v67 - v14;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = __chkstk_darwin(v15);
  v78 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v67 - v18);
  v20 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v21 = *(v20 - 1);
  __chkstk_darwin(v20);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v79 = a2;
    v80 = a3;
    v76 = v20;
    v77 = a4;
    v24 = a1;
    v25 = [v24 metadataObject];
    if (v25)
    {
      v70 = v25;
      v26 = [v25 innermostModelObject];
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      v69 = a5;
      v71 = v21;
      v72 = v27;
      v28 = v80;
      if (v27)
      {

        if (v79 && (v29 = [v79 items], v30 = objc_msgSend(v29, "firstSection"), v29, v30) && (v31 = objc_msgSend(v30, "metadataObject"), v30, v31))
        {
          v32 = [v31 anyObject];

          v33 = v74;
          if (v32)
          {
            objc_opt_self();
            v67 = v32;
            v32 = swift_dynamicCastObjCClass();
            if (!v32)
            {
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v74;
        }

        v68 = a1;
        if (v28)
        {
          MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(v32, v28, v77);
        }

        else
        {
          *v19 = MPModelSong.nowPlayingTitle(from:)(v32);
          v19[1] = v38;
        }

        swift_storeEnumTagMultiPayload();
        v39 = [v24 queueItemIdentifier];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v40;

        outlined init with copy of NowPlaying.TrackMetadata.StringKind(v19, v78, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v41 = v32;
        MPModelSong.preferredBylineAttribution(with:from:)(&outlined read-only object #0 of NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:), v32, v12);
        v42 = type metadata accessor for AttributedString();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v12, 1, v42) == 1)
        {
          outlined destroy of TaskPriority?(v12, &_s10Foundation16AttributedStringVSgMd);
          v44 = 1;
          v45 = v75;
        }

        else
        {
          v45 = v75;
          (*(v43 + 32))(v75, v12, v42);
          swift_storeEnumTagMultiPayload();
          v44 = 0;
        }

        v46 = v33;
        v47 = *(v73 + 56);
        v47(v45, v44, 1, v46);
        v48 = [v72 artworkCatalog];

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v80);
        outlined destroy of NowPlaying.TrackMetadata(v19, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v20 = v76;
        v49 = v76[7];
        v47(v23 + v49, 1, 1, v46);
        v50 = v20[8];
        *(v23 + v20[9]) = 1;
        v52 = v67;
        v51 = v68;
        *v23 = v74;
        v23[1] = v52;
        v23[2] = v51;
        outlined init with take of NowPlaying.TrackMetadata.StringKind(v78, v23 + v20[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v45, v23 + v49);
        *(v23 + v50) = v48;
        a5 = v69;
      }

      else
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = v35;
          v37 = v26;
          NowPlaying.TrackMetadata.init(tvEpisode:item:)(v36, v24, v23);

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v28);
          v20 = v76;
        }

        else
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          v20 = v76;
          if (!v54)
          {

            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            __swift_project_value_buffer(v57, static NowPlaying.TrackMetadata.logger);
            v58 = v70;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = v24;
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v82 = v63;
              *v62 = 136315138;
              v81 = [v58 type];
              type metadata accessor for MPModelGenericObjectType(0);
              v64 = String.init<A>(describing:)();
              v66 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v64, v65, &v82);
              a5 = v69;

              *(v62 + 4) = v66;
              _os_log_impl(&_mh_execute_header, v59, v60, "Unexpected metadataObject type %s", v62, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v63);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v80);
            }

            else
            {

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v80);
            }

            v34 = 1;
            goto LABEL_23;
          }

          v55 = v54;
          v56 = v26;
          NowPlaying.TrackMetadata.init(movie:item:)(v55, v24, v23);

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v80);
        }
      }

      outlined init with take of NowPlaying.TrackMetadata.StringKind(v23, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v34 = 0;
LABEL_23:
      v21 = v71;
      return (*(v21 + 56))(a5, v34, 1, v20);
    }

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v80);
    v34 = 1;
    v20 = v76;
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a3);

    v34 = 1;
  }

  return (*(v21 + 56))(a5, v34, 1, v20);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v45 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = (&v38 - v21);
  v42 = v20;
  v43 = a4;
  if (v20)
  {
    MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(a2, v20, a4);
  }

  else
  {
    *v22 = MPModelSong.nowPlayingTitle(from:)(a2);
    v22[1] = v23;
  }

  swift_storeEnumTagMultiPayload();
  v44 = a3;
  v24 = [a3 queueItemIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v26;
  v40 = v25;

  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v22, v45, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v41 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&outlined read-only object #0 of NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:), a2, v12);
  v27 = type metadata accessor for AttributedString();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v12, 1, v27) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s10Foundation16AttributedStringVSgMd);
    v29 = 1;
  }

  else
  {
    (*(v28 + 32))(v15, v12, v27);
    swift_storeEnumTagMultiPayload();
    v29 = 0;
  }

  v30 = *(v17 + 56);
  v30(v15, v29, 1, v16);
  v31 = [a1 artworkCatalog];

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v42);
  outlined destroy of NowPlaying.TrackMetadata(v22, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v32 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v33 = v32[7];
  v30(a5 + v33, 1, 1, v16);
  v34 = v32[8];
  *(a5 + v32[9]) = 1;
  v35 = v39;
  *a5 = v40;
  a5[1] = v35;
  v36 = v45;
  a5[2] = v44;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v36, a5 + v32[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v15, a5 + v33);
  *(a5 + v34) = v31;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v6 - 8);
  v50 = &v45 - v7;
  v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  v51 = a2;
  v22 = [a2 queueItemIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v24;
  v46 = v23;

  v47 = a1;
  v25 = [a1 title];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v16 + 16))(v19, v21, v15);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v30 = static NSBundle.module;
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v31;
    (*(v16 + 8))(v21, v15);
  }

  v32 = type metadata accessor for AttributedString();
  v33 = *(v32 - 8);
  (*(v33 + 56))(v13, 1, 1, v32);
  v34 = v47;
  v35 = [v47 artworkCatalog];

  *v10 = v27;
  v10[1] = v29;
  v36 = v49;
  swift_storeEnumTagMultiPayload();
  if ((*(v33 + 48))(v13, 1, v32) == 1)
  {
    outlined destroy of TaskPriority?(v13, &_s10Foundation16AttributedStringVSgMd);
    v37 = 1;
    v38 = v50;
  }

  else
  {
    v38 = v50;
    (*(v33 + 32))(v50, v13, v32);
    swift_storeEnumTagMultiPayload();
    v37 = 0;
  }

  v39 = *(v48 + 56);
  v39(v38, v37, 1, v36);
  v40 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v41 = v40[7];
  v39(a3 + v41, 1, 1, v36);
  v42 = v40[8];
  *(a3 + v40[9]) = 1;
  v43 = v45;
  *a3 = v46;
  a3[1] = v43;
  a3[2] = v51;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v10, a3 + v40[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v38, a3 + v41);
  *(a3 + v42) = v35;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = [a2 queueItemIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v19;
  v38 = v18;

  v20 = [a1 title];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v11 + 16))(v14, v16, v10);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v25 = static NSBundle.module;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v24 = v26;
    (*(v11 + 8))(v16, v10);
  }

  v27 = [a1 artworkCatalog];

  v28 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v29 = (a3 + v28[6]);
  *v29 = v22;
  v29[1] = v24;
  v30 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v31 = *(*(v30 - 8) + 56);
  v31(v8, 1, 1, v30);
  v32 = v28[7];
  v31(a3 + v32, 1, 1, v30);
  v33 = v28[8];
  *(a3 + v28[9]) = 1;
  v34 = v37;
  *a3 = v38;
  a3[1] = v34;
  a3[2] = a2;
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v8, a3 + v32);
  *(a3 + v33) = v27;
  return result;
}

uint64_t static Logger.nowPlaying(_:)(uint64_t a1, uint64_t a2)
{
  String.append(_:)(*&a1);

  return Logger.init(subsystem:category:)();
}

uint64_t specialized static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for AttributedString();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO_AGtMd);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = (&v26 + *(v14 + 56) - v15);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(a1, &v26 - v15, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(a2, v17, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of NowPlaying.TrackMetadata.StringKind(v16, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v22 = *v12;
    v21 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v17 && v21 == v17[1])
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          outlined destroy of NowPlaying.TrackMetadata(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      outlined destroy of NowPlaying.TrackMetadata(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    outlined destroy of TaskPriority?(v16, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO_AGtMd);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v16, v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v10, v27);
    goto LABEL_7;
  }

  v18 = v27;
  (*(v4 + 32))(v6, v17, v27);
  v19 = static AttributedString.== infix(_:_:)();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v10, v18);
  outlined destroy of NowPlaying.TrackMetadata(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v19 & 1;
}

uint64_t specialized static NowPlaying.TrackMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
  if ((specialized static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(a1 + *(v17 + 24), a2 + *(v17 + 24)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = v10;
  v28 = v17;
  v29 = v6;
  v18 = *(v17 + 28);
  v19 = *(v14 + 48);
  outlined init with copy of TaskPriority?(a1 + v18, v16, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  outlined init with copy of TaskPriority?(a2 + v18, &v16[v19], &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  v20 = *(v8 + 48);
  if (v20(v16, 1, v7) == 1)
  {
    if (v20(&v16[v19], 1, v7) == 1)
    {
      outlined destroy of TaskPriority?(v16, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
LABEL_14:
      v25 = v29;
      outlined init with copy of NowPlaying.TrackMetadata.StringKind(a2, v29, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v28 - 8) + 56))(v25, 0, 1);
      v21 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v25);
      outlined destroy of TaskPriority?(v25, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd);
      return v21 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of TaskPriority?(v16, v13, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  if (v20(&v16[v19], 1, v7) == 1)
  {
    outlined destroy of NowPlaying.TrackMetadata(v13, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_10:
    outlined destroy of TaskPriority?(v16, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd);
    goto LABEL_11;
  }

  v23 = v27;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(&v16[v19], v27, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v24 = specialized static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v13, v23);
  outlined destroy of NowPlaying.TrackMetadata(v23, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of NowPlaying.TrackMetadata(v13, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of TaskPriority?(v16, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t outlined init with copy of NowPlaying.TrackMetadata.StringKind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NowPlaying.TrackMetadata.StringKind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NowPlaying.TrackMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001BD41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001BD560(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for NowPlaying.TrackMetadata()
{
  type metadata accessor for MPCPlayerResponseItem?(319, &lazy cache variable for type metadata for MPCPlayerResponseItem?, &lazy cache variable for type metadata for MPCPlayerResponseItem);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NowPlaying.TrackMetadata.StringKind?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MPCPlayerResponseItem?(319, &lazy cache variable for type metadata for MPArtworkCatalog?, &lazy cache variable for type metadata for MPArtworkCatalog);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for NowPlaying.TrackMetadata.StringKind?()
{
  if (!lazy cache variable for type metadata for NowPlaying.TrackMetadata.StringKind?)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NowPlaying.TrackMetadata.StringKind?);
    }
  }
}

void type metadata accessor for MPCPlayerResponseItem?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for UIAction(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for NowPlaying.TrackMetadata.StringKind()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t KeyboardObserverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static Edge.Set.top.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore016KeyboardObserverD0VGMd);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy9MusicCore016KeyboardObserverF0VGAA14_PaddingLayoutVGMd) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = specialized static Publishers.keyboardHeight.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine12AnyPublisherVy12CoreGraphics7CGFloatVs5NeverOGAA15ModifiedContentVyAA01_d9Modifier_M0Vy05MusicH0016KeyboardObserverN0VGAA14_PaddingLayoutVGGMd);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = partial apply for closure #1 in KeyboardObserverModifier.body(content:);
  v22[1] = v20;
}

uint64_t closure #1 in KeyboardObserverModifier.body(content:)()
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[1] = 0;
  State.init(wrappedValue:)();
  return ModifiedContent.init(content:modifier:)();
}

uint64_t sub_1001BDBE4()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type KeyboardObserverModifier and conformance KeyboardObserverModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type KeyboardObserverModifier and conformance KeyboardObserverModifier()
{
  result = lazy protocol witness table cache variable for type KeyboardObserverModifier and conformance KeyboardObserverModifier;
  if (!lazy protocol witness table cache variable for type KeyboardObserverModifier and conformance KeyboardObserverModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardObserverModifier and conformance KeyboardObserverModifier);
  }

  return result;
}

CGFloat Notification.keyboardHeight.getter()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&v5), (v3 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v2, &v6);
  outlined destroy of AnyHashable(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    outlined destroy of Any?(&v6);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t specialized static Publishers.keyboardHeight.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMd);
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  __chkstk_darwin(v0);
  v31 = &v28 - v2;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGMd);
  v30 = *(v7 - 8);
  v8 = v30;
  v9 = __chkstk_darwin(v7);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v28 = &v28 - v11;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.map<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v16 = v29;
  Publisher.map<A>(_:)();
  v14(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMd);
  v17 = *(v30 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004F2EF0;
  v20 = v19 + v18;
  v21 = *(v8 + 16);
  v22 = v28;
  v21(v20, v28, v7);
  v21(v20 + v17, v16, v7);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, CGFloat> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGMd);
  v23 = v31;
  Publishers.MergeMany.init(_:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.MergeMany<Publishers.Map<NSNotificationCenter.Publisher, CGFloat>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMd);
  v24 = v32;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v33 + 8))(v23, v24);
  v26 = *(v8 + 8);
  v26(v16, v7);
  v26(v22, v7);
  return v25;
}

uint64_t sub_1001BE264()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher);
  }

  return result;
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, a1, v2);
  Published.init(wrappedValue:)(v5, v2);
  return (*(v3 + 8))(a1, v2);
}

uint64_t OptionalObservableObject.output.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  specialized OptionalObservableObject.output.setter(a1);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.output.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return OptionalObservableObject.output.modify;
}

void OptionalObservableObject.output.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  type metadata accessor for Optional();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  specialized OptionalObservableObject.$output.setter(a1);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published.Publisher();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.$output.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  type metadata accessor for Optional();
  v5 = type metadata accessor for Published.Publisher();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  OptionalObservableObject.$output.getter();
  return OptionalObservableObject.$output.modify;
}

void OptionalObservableObject.$output.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized OptionalObservableObject.$output.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized OptionalObservableObject.$output.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OptionalObservableObject.__allocating_init(publisher:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OptionalObservableObject.init(publisher:)(a1);
  return v2;
}

uint64_t *OptionalObservableObject.init(publisher:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  type metadata accessor for Optional();
  v6 = type metadata accessor for Published();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v4 + 88);
  (*(*(v5 - 8) + 56))(&v21 - v11, 1, 1, v5);
  property wrapper backing initializer of OptionalObservableObject.output(v12);
  (*(v7 + 32))(v2 + v13, v10, v6);
  *(v2 + *(*v2 + 104)) = 0;
  v14 = v2 + *(*v2 + 96);
  if (!*(a1 + 24))
  {
    v18 = *(a1 + 16);
    *v14 = *a1;
    *(v14 + 16) = v18;
    *(v14 + 32) = *(a1 + 32);
LABEL_8:
    v19 = *(a1 + 16);
    v21 = *a1;
    v22 = v19;
    v23 = *(a1 + 32);
    v15 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:
    __swift_project_boxed_opaque_existential_0Tm(&v21, v15);

    v17 = Publisher.sink(receiveCompletion:receiveValue:)();

    if (*(a1 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    goto LABEL_11;
  }

  outlined init with copy of ActionPerforming(a1, v14);
  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  outlined init with copy of ActionPerforming(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 24);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t closure #2 in OptionalObservableObject.init(publisher:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  specialized OptionalObservableObject.output.setter(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + *(*v0 + 96);
  if (*(v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance OptionalObservableObject<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OptionalObservableObject();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized OptionalObservableObject.output.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return static Published.subscript.setter();
}

uint64_t specialized OptionalObservableObject.$output.setter(uint64_t a1)
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published.Publisher();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t type metadata completion function for OptionalObservableObject()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Published();
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

uint64_t PrivacyAcknowledgementObserver.__allocating_init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(a1, a2, a3);
  return v6;
}

uint64_t PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = ICPrivacyIdentifierMusic;
  *(v3 + 16) = ICPrivacyIdentifierMusic;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = objc_opt_self();
  v6 = v4;

  v7 = [v5 sharedPrivacyInfo];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v14[4] = partial apply for closure #1 in PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:);
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed ICPrivacyIdentifier, @unowned Bool) -> ();
  v14[3] = &block_descriptor_27;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = [v7 beginObservingPrivacyAcknowledgementForIdentifier:v11 handler:v10];

  _Block_release(v10);

  *(v3 + 24) = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1001BF6A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t closure #1 in PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) == 1)
    {
      type metadata accessor for OS_dispatch_queue();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PrivacyAcknowledgementObserver.handlePrivacyAcknowledgementChanged(_:), v5);
    }

    else
    {
      (*(result + 40))(a2 & 1);
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed ICPrivacyIdentifier, @unowned Bool) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PrivacyAcknowledgementObserver.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PrivacyAcknowledgementObserver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in PrivacyAcknowledgementObserver.handlePrivacyAcknowledgementChanged(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v4(a2 & 1);
  }

  return result;
}

uint64_t sub_1001BFA78()
{

  return swift_deallocObject();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of TaskPriority?(v7, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd);
  }

  else
  {
    outlined init with take of PushNotificationObserver.RegisteredHandler(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_sScS12ContinuationVySaySfG_GSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of TaskPriority?(v7, &_sScS12ContinuationVySaySfG_GSgMd);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v16 = *(a2 + 16);
    outlined destroy of String(&v16);
    v15 = *(a2 + 32);
    result = outlined destroy of TaskPriority?(&v15, &_sSay7LyricsX0A0C8SyllableVGMd);
    *v2 = v13;
  }

  else
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    v10 = v9;
    v16 = *(a2 + 16);
    outlined destroy of String(&v16);
    v15 = *(a2 + 32);
    result = outlined destroy of TaskPriority?(&v15, &_sSay7LyricsX0A0C8SyllableVGMd);
    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v14 = *v3;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v14;
      }

      result = specialized _NativeDictionary._delete(at:)(v8, v12);
      *v3 = v12;
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of TaskPriority?(a1, &_sypSgMd_0);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    outlined destroy of TaskPriority?(v6, &_sypSgMd_0);
  }
}

id PushNotificationObserver.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

uint64_t static PushNotificationObserver.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t PushNotificationObserver.register(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(PushNotificationObserver.register(for:handler:), v5, 0);
}

uint64_t PushNotificationObserver.register(for:handler:)()
{
  v1 = *(v0 + 80);
  if (*(v1 + 120))
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    *v7 = *(v0 + 48);
    *(v7 + 8) = v8;
    *(v7 + 24) = v6;
    v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v10 = *(v9 + 24);

    UUID.init()();
    (*(v3 + 16))(v2, v7 + v10, v4);
    outlined init with copy of PushNotificationObserver.RegisteredHandler(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      outlined copy of PushNotificationObserver.Connection?(*(v1 + 120));
      v12 = v11;
      outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v11);
      PushNotificationObserver.registeredPushTopics.getter();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v12 _setEnabledTopics:isa];
    }

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = PushNotificationObserver.register(for:handler:);

    return PushNotificationObserver.setupConnection()();
  }
}

{
  v1 = *(*v0 + 80);

  return _swift_task_switch(PushNotificationObserver.register(for:handler:), v1, 0);
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *v7 = *(v0 + 48);
  *(v7 + 8) = v8;
  *(v7 + 24) = v5;
  v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v10 = *(v9 + 24);

  UUID.init()();
  (*(v2 + 16))(v1, v7 + v10, v3);
  outlined init with copy of PushNotificationObserver.RegisteredHandler(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    outlined copy of PushNotificationObserver.Connection?(*(v6 + 120));
    v12 = v11;
    outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v11);
    PushNotificationObserver.registeredPushTopics.getter();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 _setEnabledTopics:isa];
  }

  v14 = *(v0 + 8);

  return v14();
}

void PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(v8 + 16))(v10, a1 + *(v11 + 24), v7);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v6, v10);
  swift_endAccess();
  v13 = (v2 + 120);
  v12 = *(v2 + 120);
  if (v12)
  {
    outlined copy of PushNotificationObserver.Connection?(*(v2 + 120));
    v14 = v12;
    outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v12);
    PushNotificationObserver.registeredPushTopics.getter();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 _setEnabledTopics:isa];
  }

  if (!*(*(v2 + 112) + 16))
  {
    v16 = *v13;
    if (*v13)
    {
      [v16 setDelegate:0];
      v16 = *v13;
      if (*v13)
      {
        [v16 shutdown];
        v16 = *v13;
      }
    }

    *v13 = 0;
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v16);
  }
}

uint64_t PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  result = __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  if (a4)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v4;
    v13[5] = a2;
    v13[6] = a3;
    v13[7] = a4;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:), v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:), 0, 0);
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:), *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)()
{
  PushNotificationObserver.executeMatchingHandlers(topic:userInfo:)(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

id *PushNotificationObserver.registeredPushTopics.getter()
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd);
  v1 = __chkstk_darwin(v59);
  v58 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v57 = &v49 - v4;
  v5 = __chkstk_darwin(v3);
  v56 = &v49 - v6;
  __chkstk_darwin(v5);
  v55 = &v49 - v7;
  if (!*(v0 + 152))
  {
    return _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v8 = *(*(v0 + 112) + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v63 = _swiftEmptyArrayStorage;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v11 = v10;
  v9 = v63;
  v12 = v11 + 64;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v16 = *(v11 + 36);
  v50 = v11 + 72;
  v51 = v8;
  v52 = v16;
  v53 = v11 + 64;
  v54 = v11;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v11 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_25;
    }

    if (v16 != *(v11 + 36))
    {
      goto LABEL_26;
    }

    v60 = v15;
    v61 = 1 << v14;
    v19 = v59;
    v20 = *(v59 + 48);
    v21 = *(v11 + 48);
    v22 = type metadata accessor for UUID();
    v23 = *(v22 - 8);
    v24 = v23;
    v25 = v21 + *(v23 + 72) * v14;
    v26 = *(v23 + 16);
    v62 = v9;
    v27 = v55;
    v26(v55, v25, v22);
    v28 = *(v11 + 56);
    v29 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    outlined init with copy of PushNotificationObserver.RegisteredHandler(v28 + *(*(v29 - 8) + 72) * v14, &v27[v20]);
    v30 = *(v24 + 32);
    v31 = v56;
    v30(v56, v27, v22);
    outlined init with take of PushNotificationObserver.RegisteredHandler(&v27[v20], v31 + *(v19 + 48));
    v32 = v57;
    outlined init with copy of (key: UUID, value: PushNotificationObserver.RegisteredHandler)(v31, v57);
    v33 = *(v19 + 48);
    v34 = v58;
    v35 = &v58[v33];
    v30(v58, v32, v22);
    v36 = v32 + v33;
    v9 = v62;
    outlined init with take of PushNotificationObserver.RegisteredHandler(v36, v34 + v33);
    v37 = *v35;
    v38 = *(v35 + 1);

    outlined destroy of TaskPriority?(v34, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd);
    result = outlined destroy of TaskPriority?(v31, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd);
    v63 = v9;
    v40 = v9[2];
    v39 = v9[3];
    if (v40 >= v39 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
      v9 = v63;
    }

    v9[2] = (v40 + 1);
    v41 = &v9[2 * v40];
    v41[4] = v37;
    v41[5] = v38;
    v11 = v54;
    v17 = 1 << *(v54 + 32);
    if (v14 >= v17)
    {
      goto LABEL_27;
    }

    v12 = v53;
    v42 = *(v53 + 8 * v18);
    if ((v42 & v61) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v16) = v52;
    if (v52 != *(v54 + 36))
    {
      goto LABEL_29;
    }

    v43 = v42 & (-2 << (v14 & 0x3F));
    if (v43)
    {
      v17 = __clz(__rbit64(v43)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v44 = v18 << 6;
      v45 = v18 + 1;
      v46 = (v50 + 8 * v18);
      while (v45 < (v17 + 63) >> 6)
      {
        v48 = *v46++;
        v47 = v48;
        v44 += 64;
        ++v45;
        if (v48)
        {
          result = outlined consume of [UUID : PushNotificationObserver.RegisteredHandler].Index._Variant(v14, v52, 0);
          v17 = __clz(__rbit64(v47)) + v44;
          goto LABEL_5;
        }
      }

      result = outlined consume of [UUID : PushNotificationObserver.RegisteredHandler].Index._Variant(v14, v52, 0);
    }

LABEL_5:
    v15 = v60 + 1;
    v14 = v17;
    if (v60 + 1 == v51)
    {

      return v9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t PushNotificationObserver.executeMatchingHandlers(topic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v56 = a1;
  v5 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v51 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v39 - v9;
  v55 = type metadata accessor for UUID();
  v10 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetSgMd);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  swift_beginAccess();
  v18 = *(v3 + 112);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v40 = (v19 + 63) >> 6;
  v43 = v10 + 32;
  v44 = v10 + 16;
  v49 = v10;
  v22 = (v10 + 8);
  v23 = v18 + 64;
  v53 = v18;
  v54 = v22;

  v25 = 0;
  v52 = a2;
  v46 = v15;
  v47 = v8;
  v45 = v17;
  v42 = v23;
  while (v21)
  {
    v26 = v25;
LABEL_16:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v30 = v29 | (v26 << 6);
    v31 = v53;
    v32 = v49;
    (*(v49 + 16))(v48, *(v53 + 48) + *(v49 + 72) * v30, v55);
    v33 = *(v31 + 56);
    v34 = v50;
    outlined init with copy of PushNotificationObserver.RegisteredHandler(v33 + *(v51 + 72) * v30, v50);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd);
    v36 = *(v35 + 48);
    v15 = v46;
    (*(v32 + 32))();
    outlined init with take of PushNotificationObserver.RegisteredHandler(v34, &v15[v36]);
    (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
    a2 = v52;
    v8 = v47;
    v17 = v45;
    v23 = v42;
LABEL_17:
    outlined init with take of (key: UUID, value: PushNotificationObserver.RegisteredHandler)?(v15, v17);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd);
    if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
    {
    }

    outlined init with take of PushNotificationObserver.RegisteredHandler(&v17[*(v37 + 48)], v8);
    if (*v8 == v56 && *(v8 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      (*(v8 + 2))(v56, a2, v41);
    }

    outlined destroy of PushNotificationObserver.RegisteredHandler(v8);
    result = (*v54)(v17, v55);
  }

  if (v40 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v40;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v40)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd);
      (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
      v21 = 0;
      v25 = v28;
      goto LABEL_17;
    }

    v21 = *(v23 + 8 * v26);
    ++v25;
    if (v21)
    {
      v25 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *PushNotificationObserver.connection.setter(id a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[15];
  if (v7)
  {
    [v7 setDelegate:0];
    v8 = v3[15];
    if (v8)
    {
      [v8 shutdown];
    }
  }

  if (a1)
  {
    [a1 setDelegate:v3];
  }

  v9 = v3[15];
  v3[15] = a1;
  v3[16] = a2;
  v3[17] = a3;

  return outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v9);
}

uint64_t PushNotificationObserver.setupConnection()()
{
  *(v1 + 32) = v0;
  v2 = lazy protocol witness table accessor for type PushNotificationObserver and conformance PushNotificationObserver();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = PushNotificationObserver.setupConnection();

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x80000001004CC250, closure #1 in PushNotificationObserver.loadPushConfiguration(), 0, &unk_1005B74C0);
}

{
  v1 = *(*v0 + 32);

  return _swift_task_switch(PushNotificationObserver.setupConnection(), v1, 0);
}

{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      type metadata accessor for OS_dispatch_queue();

      v5 = static OS_dispatch_queue.main.getter();
      v6 = objc_allocWithZone(APSConnection);
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v6 initWithEnvironmentName:v7 namedDelegatePort:v8 queue:v5];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v9 = 0;
    }

    v3 = 0;
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v3 = 0;
  }

LABEL_10:
  v10 = v0[4];
  v11 = v10[15];
  v12 = v10[16];
  v13 = v10[17];
  if (v11)
  {

    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  outlined copy of PushNotificationObserver.Connection?(v11);
  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v11);
  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
    if (!v2)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v2)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v14 != v3 || v15 != v2)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_23:
    PushNotificationObserver.connection.setter(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v9);
LABEL_26:
  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler()
{
  result = type metadata singleton initialization cache for PushNotificationObserver.RegisteredHandler;
  if (!type metadata singleton initialization cache for PushNotificationObserver.RegisteredHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *outlined copy of PushNotificationObserver.Connection?(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in PushNotificationObserver.loadPushConfiguration()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v10(v6, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v8, v2);
  v13 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v14 = v23;
  if (v23)
  {
    closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(v23);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v15 = swift_allocObject();
    v22[1] = v13;
    v16 = v15;
    swift_weakInit();
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    swift_weakAssign();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = partial apply for closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration();
    v18[3] = v12;
    v18[4] = v17;
    v18[5] = v16;
    v19 = *(v16 + 24);
    *(v16 + 24) = partial apply for closure #1 in BagProvider.getBag(completion:);
    *(v16 + 32) = v18;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19);

    __chkstk_darwin(v20);
    v22[-2] = v9;
    v22[-1] = v16;
    UnfairLock.locked<A>(_:)(partial apply for closure #2 in BagProvider.getBag(completion:));
    BagProvider.fetchBag(forceReload:)(0);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&v10), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v10);
    goto LABEL_8;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, v12);
  outlined destroy of AnyHashable(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t PushNotificationObserver.deinit()
{

  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(*(v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(*(v0 + 120));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001C2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001C2644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t type metadata completion function for PushNotificationObserver.RegisteredHandler()
{
  result = type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PushNotificationObserver.UncheckedSendableWrapper()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushNotificationObserver.UncheckedSendableWrapper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for PushNotificationObserver.UncheckedSendableWrapper(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t getEnumTagSinglePayload for PushNotificationObserver.PushConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PushNotificationObserver.PushConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PushNotificationObserver.PushConfiguration(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined init with take of (key: UUID, value: PushNotificationObserver.RegisteredHandler)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined init with copy of (key: UUID, value: PushNotificationObserver.RegisteredHandler)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PushNotificationObserver and conformance PushNotificationObserver()
{
  result = lazy protocol witness table cache variable for type PushNotificationObserver and conformance PushNotificationObserver;
  if (!lazy protocol witness table cache variable for type PushNotificationObserver and conformance PushNotificationObserver)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PushNotificationObserver and conformance PushNotificationObserver);
  }

  return result;
}

uint64_t sub_1001C2EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd);

  return closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(a1);
}

uint64_t sub_1001C2FF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001C3030()
{

  return swift_deallocObject();
}

uint64_t Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a5;
  v72 = a6;
  v77 = a4;
  v69 = a9;
  v70 = a3;
  v74 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v65 = *(v13 - 8);
  v76 = *(v65 + 64);
  v14 = __chkstk_darwin(v13 - 8);
  v68 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v75 = &v57 - v17;
  v18 = *(a7 - 8);
  v19 = __chkstk_darwin(v16);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v62 = &v57 - v22;
  v24 = v23;
  v64 = v23;
  __chkstk_darwin(v21);
  v26 = &v57 - v25;
  v27 = a8;
  v73 = a8;
  PinnableMusicItem.musicPinItem.getter(a7, a9);
  v58 = *(v18 + 16);
  v63 = a1;
  v58(v26, a1, a7);
  v28 = *(v18 + 80);
  v29 = (v28 + 32) & ~v28;
  v60 = v28 | 7;
  v30 = v24 + 7;
  v31 = (v24 + 7 + v29) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  *(v32 + 24) = v27;
  v59 = *(v18 + 32);
  v61 = v18 + 32;
  v33 = v32 + v29;
  v34 = v32;
  v66 = v32;
  v59(v33, v26, a7);
  v35 = v74;
  *(v34 + v31) = v74;
  v36 = v62;
  v58(v62, a1, a7);
  outlined init with copy of TaskPriority?(v77, v75, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v37 = (v28 + 40) & ~v28;
  v38 = (v30 + v37) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v65 + 80);
  v40 = swift_allocObject();
  v41 = v73;
  v40[2] = a7;
  v40[3] = v41;
  v40[4] = v35;
  v42 = v59;
  v59(v40 + v37, v36, a7);
  outlined init with take of PresentationSource(v70, v40 + v38);
  outlined init with take of URL?(v75, v40 + ((v38 + v39 + 96) & ~v39), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v43 = v68;
  outlined init with take of URL?(v77, v68, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v44 = v67;
  v42(v67, v63, a7);
  v45 = (v39 + 48) & ~v39;
  v46 = (v76 + v28 + v45) & ~v28;
  v47 = swift_allocObject();
  v48 = v73;
  *(v47 + 2) = a7;
  *(v47 + 3) = v48;
  v49 = v72;
  *(v47 + 4) = v71;
  *(v47 + 5) = v49;
  outlined init with take of URL?(v43, &v47[v45], &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v42(&v47[v46], v44, a7);
  v50 = type metadata accessor for Actions.Pin.Context(0);
  v51 = v69;
  v52 = (v69 + v50[5]);
  v53 = v66;
  *v52 = partial apply for closure #1 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v52[1] = v53;
  v54 = (v51 + v50[6]);
  *v54 = &async function pointer to partial apply for closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v54[1] = v40;
  v55 = (v51 + v50[7]);
  *v55 = &async function pointer to partial apply for closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v55[1] = v47;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.Pin.Context(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.Pin.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.Pin.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.Pin.action(context:);
  v6[1] = 0;
  return result;
}

uint64_t Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v55 = a5;
  v56 = a6;
  v57 = a4;
  v52 = a3;
  v59 = a2;
  v54 = a9;
  v11 = *(a7 - 8);
  v12 = __chkstk_darwin(a1);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = &v44 - v15;
  v17 = v16;
  v50 = v16;
  __chkstk_darwin(v14);
  v19 = &v44 - v18;
  v21 = v20;
  v58 = v20;
  PinnableMusicItem.musicPinItem.getter(v22, v23);
  v47 = *(v11 + 16);
  v47(v19, v21, a7);
  v49 = *(v11 + 80);
  v24 = (v49 + 40) & ~v49;
  v25 = swift_allocObject();
  v53 = v25;
  *(v25 + 2) = a7;
  *(v25 + 3) = a8;
  v26 = v59;
  *(v25 + 4) = v59;
  v45 = *(v11 + 32);
  v46 = v11 + 32;
  v45(v25 + v24, v19, a7);
  v27 = v48;
  v47(v48, v58, a7);
  v28 = swift_allocObject();
  *(v28 + 2) = a7;
  *(v28 + 3) = a8;
  *(v28 + 4) = v26;
  v29 = v27;
  v30 = v45;
  v45(&v28[v24], v29, a7);
  outlined init with take of PresentationSource(v52, &v28[(v24 + v17 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v31 = v51;
  v30(v51, v58, a7);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v49 + v33) & ~v49;
  v35 = swift_allocObject();
  *(v35 + 2) = a7;
  *(v35 + 3) = a8;
  v36 = v56;
  *(v35 + 4) = v55;
  *(v35 + 5) = v36;
  outlined init with take of URL?(v57, &v35[v33], &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v30(&v35[v34], v31, a7);
  v37 = type metadata accessor for Actions.Unpin.Context(0);
  v39 = v53;
  v38 = v54;
  v40 = (v54 + v37[5]);
  *v40 = partial apply for closure #1 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v40[1] = v39;
  v41 = (v38 + v37[6]);
  *v41 = &async function pointer to partial apply for closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v41[1] = v28;
  v42 = (v38 + v37[7]);
  *v42 = &async function pointer to partial apply for closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v42[1] = v35;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.Pin.Context(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.Unpin.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.Unpin.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.Unpin.action(context:);
  v6[1] = 0;
  return result;
}

uint64_t closure #2 in static Actions.Pin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #3 in static Actions.Pin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #2 in static Actions.Unpin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #3 in static Actions.Unpin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicPin.Action();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v9 = updated - 8;
  __chkstk_darwin(updated);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Actions.Pin.Context(a1, v11, type metadata accessor for Actions.UpdatePinAction.Context);
  (*(v5 + 16))(v7, a1 + *(v9 + 28), v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v12 != enum case for MusicPin.Action.play(_:))
    {
      if (v12 == enum case for MusicPin.Action.shuffle(_:))
      {
        v13 = 45;
        goto LABEL_8;
      }

      (*(v5 + 8))(v7, v4);
    }

    v13 = 44;
    goto LABEL_8;
  }

  v13 = 46;
LABEL_8:
  outlined init with take of Actions.UpdatePinAction.Context(v11, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO09UpdatePinC0O7ContextVytGMd);
  *(a2 + result[9]) = v13;
  *(a2 + result[11]) = 0x4014000000000000;
  v15 = (a2 + result[10]);
  *v15 = closure #1 in static Actions.UpdatePinAction.action(context:);
  v15[1] = 0;
  v16 = (a2 + result[12]);
  *v16 = &async function pointer to closure #2 in static Actions.UpdatePinAction.action(context:);
  v16[1] = 0;
  v17 = (a2 + result[13]);
  *v17 = &async function pointer to closure #3 in static Actions.UpdatePinAction.action(context:);
  v17[1] = 0;
  return result;
}

uint64_t closure #2 in static Actions.UpdatePinAction.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #3 in static Actions.UpdatePinAction.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t PinnableMusicItem.musicPinItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v95 = type metadata accessor for MusicPin();
  v93 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v92 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v94 = &v92 - v5;
  v105 = type metadata accessor for RecentlyAddedMusicItem();
  v98 = *(v105 - 8);
  v6 = __chkstk_darwin(v105);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v97 = &v92 - v9;
  __chkstk_darwin(v8);
  v99 = &v92 - v10;
  v102 = type metadata accessor for Playlist.Entry.InternalItem();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Playlist.Entry();
  v104 = *(v110 - 8);
  v12 = __chkstk_darwin(v110);
  v103 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v92 - v14;
  v112 = type metadata accessor for Track();
  v109 = *(v112 - 8);
  v15 = __chkstk_darwin(v112);
  v107 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v108 = &v92 - v18;
  __chkstk_darwin(v17);
  v111 = &v92 - v19;
  v116 = type metadata accessor for Song();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Playlist();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MusicVideo();
  v118 = *(v23 - 8);
  v119 = v23;
  __chkstk_darwin(v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Artist();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Album();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v37;
  (*(v37 + 16))(v36, v120, a1);
  if (swift_dynamicCast())
  {
    v38 = v121;
    (*(v31 + 32))(v121, v34, v30);
    v39 = &enum case for MusicPin.Item.album(_:);
LABEL_3:
    v40 = *v39;
    v41 = type metadata accessor for MusicPin.Item();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v38, v40, v41);
    (*(v42 + 56))(v38, 0, 1, v41);
    return (*(v122 + 8))(v36, a1);
  }

  v43 = v121;
  if (swift_dynamicCast())
  {
    v44 = v43;
    (*(v27 + 32))(v43, v29, v26);
    v45 = enum case for MusicPin.Item.artist(_:);
    v46 = type metadata accessor for MusicPin.Item();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v44, v45, v46);
    (*(v47 + 56))(v44, 0, 1, v46);
    return (*(v122 + 8))(v36, a1);
  }

  v49 = v119;
  if (swift_dynamicCast())
  {
    v38 = v43;
    (*(v118 + 32))(v43, v25, v49);
    v39 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_3;
  }

  v50 = v117;
  v38 = v43;
  if (swift_dynamicCast())
  {
    (*(v115 + 32))(v43, v22, v50);
    v39 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_3;
  }

  v51 = v114;
  v52 = v116;
  if (swift_dynamicCast())
  {
    (*(v113 + 32))(v38, v51, v52);
    v39 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_3;
  }

  v53 = v111;
  v54 = v112;
  if (swift_dynamicCast())
  {
    v56 = v108;
    v55 = v109;
    (*(v109 + 32))(v108, v53, v54);
    v57 = v107;
    (*(v55 + 16))(v107, v56, v54);
    v58 = (*(v55 + 88))(v57, v54);
    if (v58 == enum case for Track.song(_:))
    {
      (*(v55 + 96))(v57, v54);
      (*(v113 + 32))(v38, v57, v52);
LABEL_16:
      v59 = &enum case for MusicPin.Item.song(_:);
LABEL_29:
      v77 = *v59;
      v78 = type metadata accessor for MusicPin.Item();
      v79 = *(v78 - 8);
      (*(v79 + 104))(v38, v77, v78);
      (*(v79 + 56))(v38, 0, 1, v78);
      goto LABEL_30;
    }

    if (v58 != enum case for Track.musicVideo(_:))
    {
      v80 = type metadata accessor for MusicPin.Item();
      (*(*(v80 - 8) + 56))(v38, 1, 1, v80);
      v81 = *(v55 + 8);
      v81(v57, v54);
      v81(v56, v54);
      return (*(v122 + 8))(v36, a1);
    }

    (*(v55 + 96))(v57, v54);
    (*(v118 + 32))(v38, v57, v49);
LABEL_28:
    v59 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_29;
  }

  v60 = v106;
  v54 = v110;
  if (swift_dynamicCast())
  {
    v56 = v103;
    v55 = v104;
    (*(v104 + 32))(v103, v60, v54);
    v61 = v100;
    Playlist.Entry.internalItem.getter();
    v62 = v101;
    v63 = v102;
    v64 = (*(v101 + 88))(v61, v102);
    if (v64 != enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      if (v64 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v62 + 96))(v61, v63);
        (*(v118 + 32))(v38, v61, v119);
        goto LABEL_28;
      }

      if (v64 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v62 + 96))(v61, v63);
        (*(v113 + 32))(v38, v61, v116);
        goto LABEL_16;
      }

      if (v64 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:) && v64 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v64 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v90 = type metadata accessor for MusicPin.Item();
        (*(*(v90 - 8) + 56))(v38, 1, 1, v90);
        (*(v62 + 8))(v61, v63);
        goto LABEL_30;
      }
    }

    (*(v62 + 8))(v61, v63);
    v65 = type metadata accessor for MusicPin.Item();
    (*(*(v65 - 8) + 56))(v38, 1, 1, v65);
LABEL_30:
    (*(v55 + 8))(v56, v54);
    return (*(v122 + 8))(v36, a1);
  }

  v66 = v99;
  v67 = v105;
  if (swift_dynamicCast())
  {
    v68 = v98;
    v69 = v97;
    (*(v98 + 32))(v97, v66, v67);
    v70 = v96;
    (*(v68 + 16))(v96, v69, v67);
    v71 = (*(v68 + 88))(v70, v67);
    if (v71 == enum case for RecentlyAddedMusicItem.album(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v31 + 32))(v38, v70, v30);
      v72 = &enum case for MusicPin.Item.album(_:);
LABEL_25:
      v73 = *v72;
      v74 = v69;
      v75 = type metadata accessor for MusicPin.Item();
      v76 = *(v75 - 8);
      (*(v76 + 104))(v38, v73, v75);
      (*(v76 + 56))(v38, 0, 1, v75);
      (*(v68 + 8))(v74, v67);
      return (*(v122 + 8))(v36, a1);
    }

    if (v71 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      goto LABEL_35;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v118 + 32))(v38, v70, v119);
      v72 = &enum case for MusicPin.Item.musicVideo(_:);
      goto LABEL_25;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v115 + 32))(v38, v70, v117);
      v72 = &enum case for MusicPin.Item.playlist(_:);
      goto LABEL_25;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v71 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
LABEL_35:
      v87 = *(v68 + 8);
      v87(v70, v67);
      v88 = type metadata accessor for MusicPin.Item();
      (*(*(v88 - 8) + 56))(v38, 1, 1, v88);
    }

    else
    {
      v91 = type metadata accessor for MusicPin.Item();
      (*(*(v91 - 8) + 56))(v38, 1, 1, v91);
      v87 = *(v68 + 8);
      v87(v70, v67);
    }

    v87(v69, v67);
    return (*(v122 + 8))(v36, a1);
  }

  v82 = v94;
  v83 = v95;
  if (swift_dynamicCast())
  {
    v84 = v93;
    v85 = v92;
    (*(v93 + 32))(v92, v82, v83);
    MusicPin.item.getter();
    (*(v84 + 8))(v85, v83);
    v86 = type metadata accessor for MusicPin.Item();
    (*(*(v86 - 8) + 56))(v38, 0, 1, v86);
  }

  else
  {
    v89 = type metadata accessor for MusicPin.Item();
    (*(*(v89 - 8) + 56))(v38, 1, 1, v89);
  }

  return (*(v122 + 8))(v36, a1);
}

uint64_t closure #1 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v36 = a2;
  v33 = type metadata accessor for MusicLibrary.PinAction();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMd);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = *(a3 - 8);
  __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v15 + 16);
  v34 = a1;
  v22(v17, a1, a3);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v14, 1, 1, v18);
    outlined destroy of TaskPriority?(v14, &_s8MusicKit5AlbumVSgMd);
    goto LABEL_5;
  }

  v24(v14, 0, 1, v18);
  (*(v19 + 32))(v21, v14, v18);
  v25 = Album.childrenAddStatus(_:)(v36);
  (*(v19 + 8))(v21, v18);
  if (v25 != 1)
  {
LABEL_5:
    static MusicLibraryAction<>.pin.getter();
    v27 = v33;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v35 + 8))(v7, v27);
    v26 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
    (*(v30 + 8))(v10, v31);
    return v26;
  }

  return 0x206C616974726150;
}

uint64_t sub_1001C592C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = type metadata accessor for MusicLibrary.InternalError();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  type metadata accessor for Locale();
  v6[78] = swift_task_alloc();
  v11 = type metadata accessor for String.LocalizationValue();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v6[83] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v6[84] = v12;
  v6[85] = *(v12 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v13 = *(a5 - 8);
  v6[88] = v13;
  v6[89] = *(v13 + 64);
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = type metadata accessor for Notice.Variant(0);
  v6[93] = swift_task_alloc();
  v14 = type metadata accessor for MusicPin.Action();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = type metadata accessor for MusicLibrary.PinAction();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMd);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = v0[103];
  v2 = v0[101];
  v34 = v0[100];
  v35 = v0[102];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  static MusicLibraryAction<>.pin.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v4 + 8))(v3, v5);
  (*(v2 + 16))(v35, v1, v34);
  v6 = (*(v2 + 88))(v35, v34);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[102];
    v8 = v0[87];
    v9 = v0[86];
    v10 = v0[85];
    v11 = v0[84];
    (*(v0[101] + 96))(v7, v0[100]);
    (*(v10 + 32))(v8, v7, v11);
    (*(v10 + 16))(v9, v8, v11);
    v12 = (*(v10 + 88))(v9, v11);
    if (v12 == enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      v0[118] = type metadata accessor for MainActor();
      v0[119] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      v16 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
      v17 = v13;
      v18 = v15;
LABEL_10:

      return _swift_task_switch(v16, v17, v18);
    }

    if (v12 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v0[111] = type metadata accessor for MainActor();
      v0[112] = static MainActor.shared.getter();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v28;
      v0[113] = v27;
      v0[114] = v28;
      v16 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
      v17 = v27;
      goto LABEL_10;
    }

    v29 = v0 + 87;
    v30 = v0 + 85;
    v31 = v0 + 84;
    (*(v0[85] + 8))(v0[86], v0[84]);
    goto LABEL_15;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 102;
    v30 = v0 + 101;
    v31 = v0 + 100;
LABEL_15:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[101] + 8))(v0[103], v0[100]);

    v32 = v0[1];

    return v32();
  }

  v19 = v0[96];
  v20 = enum case for MusicPin.Action.navigate(_:);
  v21 = type metadata accessor for MusicPin.Action();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  v22 = swift_task_alloc();
  v0[104] = v22;
  *v22 = v0;
  v22[1] = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v23 = v0[96];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v26, v23, v25, v24);
}

{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    v5 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = type metadata accessor for MainActor();
  *(v0 + 856) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v2, v1);
}

{
  v1 = *(v0 + 744);

  specialized NoticePresenting.present(_:internalOnly:)(v1, 0);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 448);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 448);
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    outlined destroy of TaskPriority?(v0 + 448, &_s9MusicCore18CatalogIDProviding_pSgMd);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v8, v7);
}

{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[65];
  v2 = static MainActor.shared.getter();
  v0[115] = v2;
  v3 = swift_task_alloc();
  v0[116] = v3;
  *(v3 + 16) = 7;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[117] = v4;
  *v4 = v0;
  v4[1] = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 122, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v3, &type metadata for Bool);
}

{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 280);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  *(v0 + 960) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v2, v1);
}

{
  v1 = *(v0 + 520);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 280, 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 376) = &block_descriptor_100;
    v13 = _Block_copy((v0 + 352));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

    outlined destroy of Alert(v0 + 280);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 312), 1, 0, 0);

    outlined destroy of Alert(v0 + 280);
  }

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v1 = *(v0 + 520);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 424) = &block_descriptor_114_1;
    v13 = _Block_copy((v0 + 400));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

    outlined destroy of Alert(v0 + 208);
    v18 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 240), 1, 0, 0);

    outlined destroy of Alert(v0 + 208);
    v18 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v18, 0, 0);
}

{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      type metadata accessor for MusicLibrary();
      static MusicLibrary.shared.getter();
      MusicLibrary.pinsObserver.getter();

      v5 = dispatch thunk of MusicLibraryPinsObserver.maximumPinCount.getter();

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0xD000000000000035;
      v6._object = 0x80000001004CC290;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      v51 = v5;
      *(v0 + 496) = v5;
      lazy protocol witness table accessor for type Int and conformance Int();
      v7 = BinaryInteger.formatted()();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

      v8._countAndFlagsBits = 0xD000000000000018;
      v8._object = 0x80000001004CC2D0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.init(stringInterpolation:)();
      v41 = *(v3 + 16);
      v41(v2, v1, v4);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 656);
      v10 = *(v0 + 648);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      v43 = *(v0 + 720);
      v44 = *(v0 + 616);
      v46 = *(v0 + 712);
      v45 = *(v0 + 600);
      v47 = *(v0 + 592);
      v48 = *(v0 + 584);
      v49 = *(v0 + 576);
      v37 = *(v0 + 528);
      v38 = *(v0 + 704);
      v36 = *(v0 + 512);
      v13 = static NSBundle.module;
      v52 = *(v0 + 536);
      static Locale.current.getter();
      v14 = v13;
      v53 = String.init(localized:table:bundle:locale:comment:)();
      v35 = v15;
      v16 = *(v11 + 8);
      v16(v9, v12);
      v34 = v16;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v17 = String.init(localized:table:bundle:locale:comment:)();
      v39 = v18;
      v40 = v17;
      v16(v9, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1004F2400;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v50 = String.init(localized:table:bundle:locale:comment:)();
      v42 = v20;
      v34(v9, v12);
      (*(v38 + 16))(v43, v36, v52);
      outlined init with copy of TaskPriority?(v37, v44, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
      v21 = (*(v38 + 80) + 56) & ~*(v38 + 80);
      v22 = (v46 + *(v45 + 80) + v21) & ~*(v45 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v52;
      *(v23 + 32) = v53;
      *(v23 + 40) = v35;
      *(v23 + 48) = v51;
      (*(v38 + 32))(v23 + v21, v43, v52);
      outlined init with take of URL?(v44, v23 + v22, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

      UUID.init()();
      v24 = UUID.uuidString.getter();
      v26 = v25;
      (*(v48 + 8))(v47, v49);
      *(v19 + 32) = v24;
      *(v19 + 40) = v26;
      *(v19 + 48) = v50;
      *(v19 + 56) = v42;
      *(v19 + 64) = 2;
      *(v19 + 72) = &async function pointer to partial apply for closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
      *(v19 + 80) = v23;
      *(v0 + 208) = v40;
      *(v0 + 216) = v39;
      *(v0 + 224) = v53;
      *(v0 + 232) = v35;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v19;
      *(v0 + 272) = 0;
      type metadata accessor for MainActor();
      *(v0 + 968) = static MainActor.shared.getter();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v28, v27);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);

  (*(v30 + 8))(v29, v31);

  v32 = *(v0 + 8);

  return v32();
}