uint64_t getEnumTagSinglePayload for IndexSet.RangeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for IndexSet.RangeView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IndexSet.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IndexSet.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t type metadata completion function for _MutablePair()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _MutablePair(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for _MutablePair(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
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

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IndexSetBoundaryIterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 107))
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

uint64_t storeEnumTagSinglePayload for IndexSetBoundaryIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 107) = 1;
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

    *(result + 107) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id NSNotificationCenter.messages<A, B>(of:for:bufferSize:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_unknownObjectWeakInit();
  *a2 = v5;
  swift_unknownObjectWeakAssign();
  a2[2] = a1;

  return v5;
}

{
  swift_unknownObjectWeakInit();
  *a2 = v5;
  swift_unknownObjectWeakAssign();
  a2[2] = a1;

  return v5;
}

id NSNotificationCenter.messages<A>(of:for:bufferSize:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_unknownObjectWeakInit();
  *a2 = v5;
  swift_unknownObjectWeakAssign();
  a2[2] = a1;

  return v5;
}

size_t NSNotificationCenter.AsyncMessageSequence.makeAsyncIterator()()
{
  v1 = *v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 16);
  type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator();
  swift_allocObject();
  return NSNotificationCenter.AsyncMessageSequenceIterator.init(center:object:bufferSize:)(v1, Strong, v3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance NSNotificationCenter.AsyncMessageSequence<A>@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v5 = NSNotificationCenter.AsyncMessageSequence.makeAsyncIterator()();
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

size_t NSNotificationCenter.AsyncMessageSequenceIterator.init(center:object:bufferSize:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 80);
  type metadata accessor for _DequeBuffer();
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 40) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_11;
  }

  v12[3] = 0;
  v12[4] = 0;
  v12[2] = (result - v11) / v10;
  v15 = *(v8 + 88);
  type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.State();
  type metadata accessor for LockedState._Buffer();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 48) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = v17;
  *(v16 + 32) = v12;
  *(v16 + 40) = a3;
  v4[2] = v16;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v15;
  v19[4] = v18;
  v20 = (*(v15 + 16))(v9, v15);
  if (a2)
  {
    v28 = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.init(center:object:bufferSize:);
    v29 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v27 = &block_descriptor_19;
    v21 = _Block_copy(&aBlock);

    [a1 _addObserver_object_usingBlock_];
  }

  else
  {
    v28 = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.init(center:object:bufferSize:);
    v29 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v27 = &block_descriptor_12;
    v21 = _Block_copy(&aBlock);

    [a1 _addObserver_object_usingBlock_];
  }

  _Block_release(v21);

  v22 = v4[2];
  MEMORY[0x1EEE9AC00](v23);

  os_unfair_lock_lock((v22 + 48));
  partial apply for closure #2 in NSNotificationCenter.AsyncMessageSequenceIterator.init(center:object:bufferSize:)((v22 + 16));
  os_unfair_lock_unlock((v22 + 48));

  swift_unknownObjectRelease();
  return v4;
}

NSObject *closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.init(center:object:bufferSize:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v83 = a4;
  v6 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
  v78 = type metadata accessor for Optional();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v8 = &v72 - v7;
  v84 = type metadata accessor for Optional();
  v9 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v72 - v19;
  v86 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v72 - v26;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v28 = *(a1 + 40);
  v82 = result;
  v74 = v6;
  v76 = v8;
  v80 = v9;
  v75 = a1;
  if (v28)
  {
    if (one-time initialization token for key != -1)
    {
      swift_once();
    }

    v29 = static NSNotificationCenter.NotificationMessageKey.key;
    v87 = static NSNotificationCenter.NotificationMessageKey.key;
    type metadata accessor for NSNotificationCenter.NotificationMessageKey();
    lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject();
    v30 = v29;
    AnyHashable.init<A>(_:)();
    if (*(v28 + 16))
    {
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v88);
      if (v32)
      {
        outlined init with copy of Any(*(v28 + 56) + 32 * v31, v89);
        outlined destroy of AnyHashable(v88);
        goto LABEL_10;
      }
    }

    outlined destroy of AnyHashable(v88);
  }

  memset(v89, 0, 32);
LABEL_10:
  v33 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v34 = swift_dynamicCast();
  v35 = *(v33 + 56);
  if (v34)
  {
    v35(v17, 0, 1, a3);
    v36 = v33;
    v37 = *(v33 + 32);
    v37(v24, v17, a3);
    v38 = v85;
    v37(v85, v24, a3);
    v39 = v38;
    v35(v38, 0, 1, a3);
    v40 = (*(v36 + 48))(v38, 1, a3);
LABEL_18:
    v56 = v82;
    v57 = v76;
    if (v40 == 1)
    {

      v48 = *(v80 + 8);
      v42 = v84;
      return v48(v39, v42);
    }

    v58 = v81;
    v59 = (v37)(v81, v39, a3);
    isa = v56[2].isa;
    MEMORY[0x1EEE9AC00](v59);
    v61 = v83;
    *(&v72 - 4) = a3;
    *(&v72 - 3) = v61;
    *(&v72 - 2) = v58;
    os_unfair_lock_lock(isa + 12);
    partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.observationCallback(_:)(isa + 2, v57);
    os_unfair_lock_unlock(isa + 12);
    v62 = v74;
    v63 = *(v74 - 8);
    if ((*(v63 + 48))(v57, 1, v74) == 1)
    {

      (*(v77 + 8))(v57, v78);
    }

    else
    {
      v64 = *(v57 + *(v62 + 36));
      v65 = *(v64 + 16);
      if (v65)
      {
        v83 = v63;
        v85 = a3;
        v66 = v84;
        v67 = *(v80 + 16);
        v68 = (v80 + 32);

        v69 = v57;
        v70 = 32;
        do
        {
          v71 = *(v64 + v70);
          v67(v11, v69, v66);
          (*v68)(*(*(v71 + 64) + 40), v11, v66);
          swift_continuation_resume();
          v70 += 8;
          --v65;
        }

        while (v65);

        v62 = v74;
        v57 = v69;
        a3 = v85;
        v58 = v81;
        v63 = v83;
      }

      else
      {
      }

      (*(v63 + 8))(v57, v62);
    }

    return (*(v86 + 8))(v58, a3);
  }

  v35(v17, 1, 1, a3);
  v73 = v35;
  v41 = *(v80 + 8);
  v42 = v84;
  v41(v17, v84);
  (*(v83 + 24))(v75, a3);
  v43 = v86;
  v44 = *(v86 + 48);
  if (v44(v14, 1, a3) != 1)
  {
    v37 = *(v43 + 32);
    v55 = v79;
    v37(v79, v14, a3);
    v39 = v85;
    v37(v85, v55, a3);
    v73(v39, 0, 1, a3);
    v40 = v44(v39, 1, a3);
    goto LABEL_18;
  }

  v45 = v73;
  v41(v14, v42);
  v46 = static os_log_type_t.fault.getter();
  result = _NSRuntimeIssuesLog();
  if (result)
  {
    v47 = result;
    v48 = v41;
    if (os_log_type_enabled(result, v46))
    {
      v49 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v49 = 136315138;
      *&v89[0] = a3;
      swift_getMetatypeMetadata();
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v88);

      *(v49 + 4) = v52;
      _os_log_impl(&dword_18075C000, v47, v46, "Unable to deliver Notification to Message observer because %s.makeMessage() returned nil. If this is unexpected, check or provide an implementation of makeMessage() which returns a non-nil value for this notification's payload.", v49, 0xCu);
      v53 = v86;
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x1865D2690](v53, -1, -1);
      v54 = v49;
      v45 = v73;
      MEMORY[0x1865D2690](v54, -1, -1);
    }

    v39 = v85;
    v45(v85, 1, 1, a3);
    return v48(v39, v42);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in NSNotificationCenter.AsyncMessageSequenceIterator.init(center:object:bufferSize:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSNotificationCenter.ObservationToken._NSNotificationObserverTokenWrapper();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v5 + 16) = a3;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakAssign();

  *a1 = v5;
  return result;
}

uint64_t NSNotificationCenter.AsyncMessageSequenceIterator.teardown()()
{
  v1 = *v0;
  v27 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo20NSNotificationCenterC10FoundationE16ObservationTokenVSgMd);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = TupleTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v25 - v10;
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = v0[2];
  v29 = v27;
  v30 = v6;
  os_unfair_lock_lock((v15 + 48));
  partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.teardown()((v15 + 16), v11);
  os_unfair_lock_unlock((v15 + 48));
  v16 = *v11;
  (*(v28 + 32))(v14, &v11[*(v9 + 56)], v7);
  v27 = v7;
  v17 = *&v14[*(v7 + 36)];
  v18 = *(v17 + 16);
  if (v18)
  {
    v26 = v16;
    v19 = *(v3 + 16);

    v20 = 32;
    do
    {
      v21 = *(v17 + v20);
      v19(v5, v14, v2);
      (*(v3 + 32))(*(*(v21 + 64) + 40), v5, v2);
      swift_continuation_resume();
      v20 += 8;
      --v18;
    }

    while (v18);

    v16 = v26;
  }

  if (!v16)
  {
    return (*(v28 + 8))(v14, v27);
  }

  if (*(v16 + 24))
  {
    (*(v28 + 8))(v14, v27);
  }

  else
  {
    v23 = *(v16 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _removeObserver_];

    (*(v28 + 8))(v14, v27);
    *(v16 + 16) = 0;
    *(v16 + 24) = 1;
  }
}

uint64_t NSNotificationCenter.AsyncMessageSequenceIterator.__deallocating_deinit()
{
  NSNotificationCenter.AsyncMessageSequenceIterator.teardown()();

  return swift_deallocClassInstance();
}

uint64_t get_witness_table_So20NSNotificationCenterC10FoundationE17MessageIdentifierRzAbCE05AsyncD0R_0D4TypeQzRs_7SubjectRm_Cr0_lAbCE0fD8Sequence33_09520FE604E44184541A60E153E93F2ELLVy_q_GSciHPyHCTm()
{
  type metadata accessor for NSNotificationCenter.AsyncMessageSequence();

  return swift_getWitnessTable();
}

uint64_t type metadata instantiation function for NSNotificationCenter.AsyncMessageSequence()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for NSNotificationCenter.AsyncMessageSequenceIterator.State()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.teardown()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  *a1 = 0;

  a1[2] = *_emptyDequeStorage.unsafeMutableAddressor();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo20NSNotificationCenterC10FoundationE16ObservationTokenVSgMd);
  v7 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
  v8 = a3 + *(swift_getTupleTypeMetadata2() + 48);
  *a3 = v6;
  v9 = a1[1];
  (*(*(a2 - 8) + 56))(v8, 1, 1, a2);
  *&v8[*(v7 + 36)] = v9;
  a1[1] = MEMORY[0x1E69E7CC0];
}

void closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.observationCallback(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a2;
  v53 = a4;
  v56 = type metadata accessor for Optional();
  v51 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v48 - v8;
  v10 = (a1 + 2);
  v11 = a1[2];
  v12 = *(v11 + 3);
  if (__OFADD__(v12, 1))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = a1[3];
  v52 = a5;
  if (v13 < v12 + 1)
  {
    if (!v12)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._makeUniqueCopy()();
    }

    v11 = *v10;
    (*(*(a3 - 8) + 8))(&(*v10)[((*(*(a3 - 8) + 80) + 40) & ~*(*(a3 - 8) + 80)) + *(*(a3 - 8) + 72) * *(*v10 + 4)], a3);
    v14 = *(v11 + 4);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_38;
    }

    v17 = *(v11 + 3);
    if (v16 >= *(v11 + 2))
    {
      v16 = 0;
    }

    *(v11 + 4) = v16;
    if (__OFSUB__(v17, 1))
    {
      goto LABEL_39;
    }

    *(v11 + 3) = v17 - 1;
    v18 = static os_log_type_t.fault.getter();
    v19 = _NSRuntimeIssuesLog();
    if (!v19)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v20 = v19;
    if (os_log_type_enabled(v19, v18))
    {
      v21 = swift_slowAlloc();
      v50 = v9;
      v22 = v21;
      v23 = swift_slowAlloc();
      v58 = v23;
      *v22 = 136315138;
      v57 = a3;
      swift_getMetatypeMetadata();
      v24 = String.init<A>(describing:)();
      v49 = v18;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v58);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_18075C000, v20, v49, "Notification center message dropped due to buffer limit. Check sequence iterator frequently or increase buffer size. Message: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1865D2690](v23, -1, -1);
      v9 = v50;
      MEMORY[0x1865D2690](v22, -1, -1);
    }
  }

  v27 = *(v11 + 3);
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v10;
  if (*(*v10 + 2) < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = isUniquelyReferenced_nonNull_native;
    type metadata accessor for Deque._Storage();
    Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v31, v28, 0);
    v30 = *v10;
  }

  v32 = *(a3 - 8);
  v33 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v34 = v55;
  closure #1 in Deque.append(_:)(v30 + 2, &v30[v33], v54, a3);
  v55 = v34;
  v35 = a1[1];
  v36 = type metadata accessor for UnsafeContinuation();
  if (MEMORY[0x1865CB560](v35, v36))
  {
    if (*(v30 + 3))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Deque._Storage();
        Deque._Storage._makeUniqueCopy()();
      }

      v37 = *v10;
      (*(v32 + 32))(v9, &v37[v33 + *(v32 + 72) * *(v37 + 4)], a3);
      v38 = *(v37 + 4);
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (!v15)
      {
        v40 = *(v37 + 3);
        if (v39 >= *(v37 + 2))
        {
          v39 = 0;
        }

        *(v37 + 4) = v39;
        if (!__OFSUB__(v40, 1))
        {
          *(v37 + 3) = v40 - 1;
          (*(v32 + 56))(v9, 0, 1, a3);
          if (MEMORY[0x1865CB560](v35, v36))
          {
            type metadata accessor for Array();
            swift_getWitnessTable();
            Collection.first.getter();
            v41 = v58;
            if (v58)
            {
              swift_getWitnessTable();
              RangeReplaceableCollection.removeFirst(_:)(1);
              v43 = v51;
              v42 = v52;
              v44 = v56;
              (*(v51 + 16))(v52, v9, v56);
              type metadata accessor for _ContiguousArrayStorage();
              v45 = swift_allocObject();
              *(v45 + 16) = xmmword_181218E20;
              *(v45 + 32) = v41;
              (*(v43 + 8))(v9, v44);
              v46 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
              *(v42 + *(v46 + 36)) = v45;
              (*(*(v46 - 8) + 56))(v42, 0, 1, v46);
              return;
            }

            goto LABEL_40;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
  (*(*(v47 - 8) + 56))(v52, 1, 1, v47);
}

uint64_t NSNotificationCenter.AsyncMessageSequenceIterator.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](NSNotificationCenter.AsyncMessageSequenceIterator.next(), 0, 0);
}

uint64_t NSNotificationCenter.AsyncMessageSequenceIterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  type metadata accessor for Optional();
  *v1 = v0;
  v1[1] = NSNotificationCenter.AsyncMessageSequenceIterator.next();
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v2, &async function pointer to partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next());
}

void NSNotificationCenter.AsyncMessageSequenceIterator.next()()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next(), 0, 0);
}

uint64_t closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()()
{
  v1 = v0[10];
  v2 = v0[11];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();
  v3 = swift_continuation_init();
  closure #1 in closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = *(v4 + 88);
  v11 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
  v12 = type metadata accessor for Optional();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = a2[2];
  v26 = v5;
  v27 = v10;
  v28 = a1;
  os_unfair_lock_lock(v15 + 12);
  partial apply for closure #1 in closure #1 in closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()(&v15[4], v14);
  v16 = v11;
  os_unfair_lock_unlock(v15 + 12);
  v17 = *(v11 - 8);
  if ((*(v17 + 48))(v14, 1, v11) == 1)
  {
    return (*(v24 + 8))(v14, v25);
  }

  v19 = *&v14[*(v11 + 36)];
  v20 = *(v19 + 16);
  if (v20)
  {
    v24 = v17;
    v25 = v16;
    v21 = *(v7 + 16);

    v22 = 32;
    do
    {
      v23 = *(v19 + v22);
      v21(v9, v14, v6);
      (*(v7 + 32))(*(*(v23 + 64) + 40), v9, v6);
      swift_continuation_resume();
      v22 += 8;
      --v20;
    }

    while (v20);

    v17 = v24;
    v16 = v25;
  }

  return (*(v17 + 8))(v14, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v31 = a2;
  v30 = type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();
  Array._makeUniqueAndReserveCapacityIfNotUnique()();
  Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(*(a1 + 8) + 16));
  Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*(*(a1 + 16) + 24))
  {
    v13 = *(a1 + 8);
    v27[1] = a4;
    v28 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Deque._Storage();
      Deque._Storage._makeUniqueCopy()();
    }

    v14 = *(a1 + 16);
    v15 = *(a3 - 8);
    result = (*(v15 + 32))(v12, &v14[((*(v15 + 80) + 40) & ~*(v15 + 80)) + *(v15 + 72) * *(v14 + 4)], a3);
    v17 = *(v14 + 4);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    v20 = v30;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      v21 = *(v14 + 3);
      if (v19 >= *(v14 + 2))
      {
        v19 = 0;
      }

      *(v14 + 4) = v19;
      if (!__OFSUB__(v21, 1))
      {
        *(v14 + 3) = v21 - 1;
        (*(v15 + 56))(v12, 0, 1, a3);
        result = MEMORY[0x1865CB560](v28, v20);
        if (result)
        {
          swift_getWitnessTable();
          result = Collection.first.getter();
          v22 = v31;
          if (v31)
          {
            swift_getWitnessTable();
            RangeReplaceableCollection.removeFirst(_:)(1);
            v23 = v29;
            (*(v29 + 16))(a5, v12, v10);
            type metadata accessor for _ContiguousArrayStorage();
            v24 = swift_allocObject();
            *(v24 + 16) = xmmword_181218E20;
            *(v24 + 32) = v22;
            (*(v23 + 8))(v12, v10);
            v25 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
            *(a5 + *(v25 + 36)) = v24;
            return (*(*(v25 - 8) + 56))(a5, 0, 1, v25);
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v26 = type metadata accessor for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption();
  return (*(*(v26 - 8) + 56))(a5, 1, 1, v26);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.AsyncMessageSequenceIterator<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.AsyncMessageSequenceIterator<A>;

  return NSNotificationCenter.AsyncMessageSequenceIterator.next()(a1);
}

uint64_t _sSo20NSNotificationCenterC10FoundationE28AsyncMessageSequenceIterator33_09520FE604E44184541A60E153E93F2ELLCy_xGScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = _sSo20NSNotificationCenterC10FoundationE28AsyncMessageSequenceIterator33_09520FE604E44184541A60E153E93F2ELLCy_xGScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v12);
}

uint64_t _sSo20NSNotificationCenterC10FoundationE28AsyncMessageSequenceIterator33_09520FE604E44184541A60E153E93F2ELLCy_xGScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()(a1, v1);
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.NotificationMessageKey and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.NotificationMessageKey and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.NotificationMessageKey and conformance NSObject)
  {
    type metadata accessor for NSNotificationCenter.NotificationMessageKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.NotificationMessageKey and conformance NSObject);
  }

  return result;
}

void *closure #1 in Deque.append(_:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result[1];
  v4 = result[2];
  v8 = __OFADD__(v4, v5);
  v6 = v4 + v5;
  if (!v8)
  {
    v7 = result;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v8))
      {
LABEL_9:
        result = (*(*(a4 - 8) + 16))(a2 + *(*(a4 - 8) + 72) * v6, a3, a4);
        v9 = v7[1];
        v8 = __OFADD__(v9, 1);
        v10 = v9 + 1;
        if (!v8)
        {
          v7[1] = v10;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v8 = __OFADD__(v6, *result);
      v6 += *result;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnsafeContinuation();
    result = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for NSNotificationCenter.AsyncMessageSequenceIterator.Resumption(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);

    v24();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

Swift::String_optional __swiftcall String._removingQueryResolveFlags()()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v5 = v122;
  LOBYTE(v6) = 1;
  if ((v1 & 0x1000000000000000) != 0)
  {
    v142 = v0;
    v143 = v1;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v12 = String._bridgeToObjectiveCImpl()();

    v13 = [v12 _fastCharacterContents];
    v14 = v12;
    if (v13)
    {
      v142 = v3;
      v143 = v2;
      StringProtocol._ephemeralString.getter();
      v15 = String._bridgeToObjectiveCImpl()();

      v16 = [v15 length];
      swift_unknownObjectRelease();
      v9 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v13, v16, 0x40u, 0);
      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = specialized Sequence.allSatisfy(_:)(v3, v2, 64);
      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_7;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v1) & 0xF;
    v142 = v0;
    v143 = v2 & 0xFFFFFFFFFFFFFFLL;
    v7 = &v142;
  }

  else
  {
    if ((v0 & 0x1000000000000000) == 0)
    {
      goto LABEL_191;
    }

    v7 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v9 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 0x40u, 0);
    if (v9)
    {
LABEL_7:

      v10 = v3;
      v11 = v2;
    }

    else
    {
LABEL_10:
      v17 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v17 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v142 = v3;
        v143 = v2;
        MEMORY[0x1EEE9AC00](v9);
        v94 = &v142;
        LOWORD(v95) = 64;

        v18 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:), &v93, v3, v2);
        if (!v19)
        {
          v18 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v3, v2, 0x40u, 0);
        }

        v10 = v18;
        v11 = v19;
      }

      else
      {

        v10 = 0;
        v11 = 0xE000000000000000;
      }
    }

    v142 = 0;
    v143 = 0;
    v144 = 0;
    *(v5 + 191) = *(v5 + 7);
    v145 = *(v5 + 10);
    *(v5 + 198) = 0u;
    *(v5 + 214) = 0u;
    *(v5 + 230) = 0u;
    *(v5 + 246) = 0u;
    v146 = 0;
    v147 = v6;
    *&v148[3] = *(v5 + 3);
    *v148 = *v5;
    v150 = 0;
    v149 = 0;
    *&v151 = v10;
    *(&v151 + 1) = v11;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v102 = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
    if (!v102)
    {
      v124 = 0;
      v125 = 0;
      v126 = 0;
      *(v5 + 31) = *(v5 + 7);
      *&v127[3] = *(v5 + 10);
      *(v5 + 38) = 0u;
      *(v5 + 54) = 0u;
      *(v5 + 70) = 0u;
      *(v5 + 86) = 0u;
      v132 = 0;
      v133 = v6;
      *&v134[3] = *(v5 + 3);
      *(v5 + 111) = *v5;
      v135 = 0;
      v136 = 0;
      v137 = v10;
      v138 = v11;
      v139 = 0;
      v140 = 0;
      v141 = 0;
      outlined destroy of URLComponents(&v124);

LABEL_189:
      v90 = v3;
      v91 = v2;
      goto LABEL_199;
    }

    v100 = v11;
    v101 = v10;
    v99 = v4;
    v20 = *(v102 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v22 = (v102 + 56);
      v2 = 0x65766C6F7365722ELL;
      do
      {
        v24 = *(v22 - 3);
        v5 = *(v22 - 2);
        v25 = *(v22 - 1);
        v26 = *v22;
        if ((specialized Sequence<>.elementsEqual<A>(_:)(0x65766C6F7365722EuLL, 0xE800000000000000, v24, v5) & 1) == 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
          }

          v28 = *(v21 + 2);
          v27 = *(v21 + 3);
          v29 = v21;
          if (v28 >= v27 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v21);
          }

          *(v29 + 2) = v28 + 1;
          v21 = v29;
          v23 = &v29[32 * v28];
          *(v23 + 4) = v24;
          *(v23 + 5) = v5;
          *(v23 + 6) = v25;
          *(v23 + 7) = v26;
        }

        v22 += 4;
        --v20;
      }

      while (v20);
    }

    v3 = *(v21 + 2);
    if (!v3)
    {
      v124 = 0;
      v125 = 0;
      v126 = 0;
      *v127 = *v123;
      *&v127[3] = *&v123[3];
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0;
      v133 = 1;
      *&v134[3] = *&v122[3];
      *v134 = *v122;
      v135 = 0;
      v136 = 0;
      v137 = v101;
      v138 = v100;
      v139 = 0;
      v140 = 0;
      v141 = 0;
      outlined destroy of URLComponents(&v124);

      v2 = 0;
      goto LABEL_189;
    }

    v121 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v30 = 0;
    v31 = v21;
    v32 = v121;
    v101 = v3;
    v102 = v31;
    v100 = (v31 + 32);
    v4 = 1;
    v6 = &v103;
LABEL_29:
    if (v30 < *(v102 + 16))
    {
      break;
    }

    __break(1u);
LABEL_191:
    v7 = _StringObject.sharedUTF8.getter();
  }

  v33 = (v100 + 32 * v30);
  v34 = *v33;
  v2 = v33[1];
  v35 = v33[2];
  v36 = v33[3];
  if ((v2 & 0x1000000000000000) != 0)
  {
    v98 = v33[2];
    v124 = v34;
    v125 = v2;
    v97 = lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v56 = String._bridgeToObjectiveCImpl()();

    v57 = [v56 _fastCharacterContents];
    v58 = v56;
    if (!v57)
    {
      v83 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v34, v2, 0x80u, 1);
      v35 = v98;
      if (v83)
      {
        goto LABEL_134;
      }

      goto LABEL_195;
    }

    v96 = v57;
    v124 = v34;
    v125 = v2;
    StringProtocol._ephemeralString.getter();
    v59 = String._bridgeToObjectiveCImpl()();

    v60 = [v59 length];
    swift_unknownObjectRelease();
    if (v60)
    {
      v61 = *v96;
      v35 = v98;
      if (v61 > 0x7F)
      {
        goto LABEL_195;
      }

      v62 = 0;
      v63 = v96 + 1;
      v64 = 2 * v60 - 2;
      while (1)
      {
        if (v61 == 37)
        {
          if (v62 || !v64)
          {
            goto LABEL_195;
          }

          v62 = 2;
          goto LABEL_107;
        }

        if (v61 - 39 >= 9 && v61 != 33 && v61 != 36)
        {
          if (v61 == 38)
          {
            goto LABEL_195;
          }

          if ((v61 - 58) <= 0xF5u)
          {
            if (v61 - 58 <= 6)
            {
              if (((1 << (v61 - 58)) & 0x63) != 0)
              {
                goto LABEL_113;
              }

              if (v61 == 61)
              {
                goto LABEL_195;
              }
            }

            if (v61 != 95 && (v61 - 65) >= 0x1Au && v61 != 126 && (v61 - 97) >= 0x1Au)
            {
              goto LABEL_195;
            }
          }
        }

LABEL_113:
        v41 = v62-- < 1;
        if (v41)
        {
          v62 = 0;
        }

        else if ((v61 - 58) <= 0xF5u && (v61 - 71) <= 0xF9u && (v61 <= 0x60u || v61 >= 0x67u))
        {
          goto LABEL_195;
        }

        if (!v64)
        {
          if (!v62)
          {
            goto LABEL_134;
          }

          goto LABEL_195;
        }

LABEL_107:
        v65 = *v63++;
        LOWORD(v61) = v65;
        v64 -= 2;
        if (v65 >= 0x80)
        {
          goto LABEL_195;
        }
      }
    }

    v35 = v98;
    v124 = v34;
    v125 = v2;
    if (!v36)
    {
      goto LABEL_180;
    }

LABEL_135:
    if ((v36 & 0x1000000000000000) != 0)
    {
      v103 = v35;
      v104 = v36;
      v76 = lazy protocol witness table accessor for type String and conformance String();

      v98 = v35;
      v97 = v76;
      StringProtocol._ephemeralString.getter();
      v77 = String._bridgeToObjectiveCImpl()();

      v78 = [v77 _fastCharacterContents];
      v79 = v77;
      if (v78)
      {
        v103 = v98;
        v104 = v36;
        v96 = v78;
        StringProtocol._ephemeralString.getter();
        v80 = String._bridgeToObjectiveCImpl()();

        v81 = [v80 length];
        swift_unknownObjectRelease();
        v82 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v96, v81, 0x40u, 1);
        v35 = v98;
        if (v82)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v35 = v98;
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v98, v36, 0x40u, 1))
        {
          goto LABEL_170;
        }
      }

LABEL_197:

      swift_bridgeObjectRelease_n();
      goto LABEL_198;
    }

    if ((v36 & 0x2000000000000000) == 0)
    {
      if ((v35 & 0x1000000000000000) != 0)
      {
        v66 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v67 = v35 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = _StringObject.sharedUTF8.getter();
      }

      v68 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v66, v67, 0x40u, 1);

      if (v68)
      {
        goto LABEL_170;
      }

      goto LABEL_197;
    }

    v69 = HIBYTE(v36) & 0xF;
    v103 = v35;
    v104 = v36 & 0xFFFFFFFFFFFFFFLL;
    if (!v69)
    {

      goto LABEL_170;
    }

    if (v103 < 0)
    {
LABEL_196:

      goto LABEL_197;
    }

    v70 = 0;
    v71 = v103;
    v72 = 1;
    while (1)
    {
      if ((v71 - 38) >= 0xA && v71 != 33 && v71 != 36)
      {
        if (v71 == 37)
        {
          if (v70 || v69 == v72)
          {
            goto LABEL_196;
          }

          v70 = 2;
          goto LABEL_146;
        }

        v75 = v71 - 58;
        if ((v71 - 58) <= 0xFFFFFFF5 && (v75 > 6 || ((1 << v75) & 0x6B) == 0) && v71 != 95 && (v71 - 65) >= 0x1A && v71 != 126 && (v71 - 97) >= 0x1A)
        {
          goto LABEL_196;
        }
      }

      v41 = v70-- < 1;
      if (v41)
      {
        v70 = 0;
      }

      else if ((v71 - 58) <= 0xFFFFFFF5)
      {
        v74 = v71 - 65;
        if (v74 > 0x25 || ((1 << v74) & 0x3F0000003FLL) == 0)
        {
          goto LABEL_196;
        }
      }

      if (v69 == v72)
      {

        if (v70)
        {
          goto LABEL_197;
        }

LABEL_170:
        v103 = 61;
        v104 = 0xE100000000000000;
        MEMORY[0x1865CB0E0](v35, v36);
        MEMORY[0x1865CB0E0](v103, v104);

        v34 = v124;
        v2 = v125;
LABEL_181:
        v121 = v32;
        v3 = *(v32 + 16);
        v84 = *(v32 + 24);
        v5 = (v3 + 1);
        if (v3 >= v84 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v3 + 1, 1);
          v32 = v121;
        }

        ++v30;
        *(v32 + 16) = v5;
        v85 = v32 + 16 * v3;
        *(v85 + 32) = v34;
        *(v85 + 40) = v2;
        if (v30 == v101)
        {
          v155 = v151;
          v124 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v86 = BidirectionalCollection<>.joined(separator:)();
          v88 = v87;

          outlined destroy of String?(&v155);
          v124 = 0;
          v125 = 0;
          v126 = 0;
          *v127 = *v123;
          *&v127[3] = *&v123[3];
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0;
          v133 = 1;
          *&v134[3] = *&v122[3];
          *v134 = *v122;
          v135 = 0;
          v136 = 0;
          v137 = v86;
          v138 = v88;
          v139 = 0;
          v140 = 0;
          v141 = 0;
          v3 = URLComponents._URLComponents.query.getter();
          v2 = v89;
          v103 = 0;
          v104 = 0;
          v105 = 0;
          *v106 = *v123;
          *&v106[3] = *&v123[3];
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0;
          v112 = 1;
          *&v113[3] = *&v122[3];
          *v113 = *v122;
          v114 = 0;
          v115 = 0;
          v116 = v86;
          v117 = v88;
          v118 = 0;
          v119 = 0;
          v120 = 0;
          outlined destroy of URLComponents(&v103);
          goto LABEL_189;
        }

        goto LABEL_29;
      }

LABEL_146:
      v73 = *(&v103 + v72);
      v71 = *(&v103 + v72++);
      if (v73 < 0)
      {
        goto LABEL_196;
      }
    }
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(v2) & 0xF;
    v124 = v34;
    v125 = v2 & 0xFFFFFFFFFFFFFFLL;
    if (!v46)
    {
      goto LABEL_132;
    }

    v47 = 0;
    v48 = &v124;
    while (1)
    {
      if (*v48 < 0)
      {
LABEL_95:
        v54 = 0;
        goto LABEL_133;
      }

      v49 = *v48;
      if ((v49 - 39) < 9)
      {
        goto LABEL_71;
      }

      if (*v48 > 0x24u)
      {
        if (v49 == 37)
        {
          if (v47)
          {
            goto LABEL_95;
          }

          v47 = 2;
          goto LABEL_68;
        }

        if (v49 == 38)
        {
          goto LABEL_95;
        }
      }

      else if (v49 == 33 || v49 == 36)
      {
        goto LABEL_71;
      }

      v53 = v49 - 58;
      if ((v49 - 58) > 0xFFFFFFF5)
      {
        goto LABEL_71;
      }

      if (v53 <= 6)
      {
        if (((1 << v53) & 0x63) != 0)
        {
          goto LABEL_71;
        }

        if (v49 == 61)
        {
          goto LABEL_95;
        }
      }

      if (v49 != 95 && (v49 - 65) >= 0x1A && v49 != 126 && (v49 - 97) >= 0x1A)
      {
        goto LABEL_95;
      }

LABEL_71:
      v41 = v47-- < 1;
      if (v41)
      {
        v47 = 0;
      }

      else if ((v49 - 58) <= 0xFFFFFFF5)
      {
        v50 = v49 - 65;
        v41 = v50 > 0x25;
        v51 = (1 << v50) & 0x3F0000003FLL;
        if (v41 || v51 == 0)
        {
          goto LABEL_95;
        }
      }

LABEL_68:
      ++v48;
      if (!--v46)
      {
        v55 = v47 == 0;
        goto LABEL_98;
      }
    }
  }

  if ((v34 & 0x1000000000000000) != 0)
  {
    v37 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v38 = v34 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v37 = _StringObject.sharedUTF8.getter();
    if (!v37)
    {
      goto LABEL_132;
    }
  }

  if (!v38)
  {
LABEL_132:
    v54 = 1;
    goto LABEL_133;
  }

  v39 = 0;
  do
  {
    if (*v37 < 0)
    {
LABEL_194:

      goto LABEL_195;
    }

    v40 = *v37;
    if ((v40 - 39) < 9)
    {
      goto LABEL_40;
    }

    if (*v37 > 0x24u)
    {
      if (v40 == 37)
      {
        if (v39)
        {
          goto LABEL_194;
        }

        v39 = 2;
        goto LABEL_37;
      }

      if (v40 == 38)
      {
        goto LABEL_194;
      }
    }

    else if (v40 == 33 || v40 == 36)
    {
      goto LABEL_40;
    }

    v45 = v40 - 58;
    if ((v40 - 58) > 0xFFFFFFF5)
    {
      goto LABEL_40;
    }

    if (v45 <= 6)
    {
      if (((1 << v45) & 0x63) != 0)
      {
        goto LABEL_40;
      }

      if (v40 == 61)
      {
        goto LABEL_194;
      }
    }

    if (v40 != 95 && (v40 - 65) >= 0x1A && v40 != 126 && (v40 - 97) >= 0x1A)
    {
      goto LABEL_194;
    }

LABEL_40:
    v41 = v39-- < 1;
    if (v41)
    {
      v39 = 0;
    }

    else if ((v40 - 58) <= 0xFFFFFFF5)
    {
      v42 = v40 - 65;
      v41 = v42 > 0x25;
      v43 = (1 << v42) & 0x3F0000003FLL;
      if (v41 || v43 == 0)
      {
        goto LABEL_194;
      }
    }

LABEL_37:
    ++v37;
    --v38;
  }

  while (v38);
  v55 = v39 == 0;
LABEL_98:
  v54 = v55;
LABEL_133:

  if (v54)
  {
LABEL_134:
    v124 = v34;
    v125 = v2;
    if (v36)
    {
      goto LABEL_135;
    }

LABEL_180:

    goto LABEL_181;
  }

LABEL_195:

LABEL_198:
  v95 = 0;
  v94 = 1152;
  v90 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_199:
  result.value._object = v91;
  result.value._countAndFlagsBits = v90;
  return result;
}

Swift::String __swiftcall NSString._urlStringByInsertingPathResolveFlags(_:)(Swift::UInt32 a1)
{
  v2 = v1;
  LODWORD(v1) = a1;
  v108 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(v2);
  v4 = v2;
  v5 = v4;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v4);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v9 = v8;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      v13 = [v5 UTF8String];
      if (!v13)
      {
        __break(1u);
        goto LABEL_86;
      }

      v15 = String.init(utf8String:)(v13);
      if (v16)
      {
LABEL_15:
        v7 = v15;
        v9 = v16;

        goto LABEL_20;
      }

      __break(1u);
    }

    LOWORD(v84[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = *(&v86 + 1);
      v7 = v86;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v86) = 0;
  v95.value._countAndFlagsBits = 0;
  LOBYTE(v84[0]) = 0;
  LOBYTE(v68[0].value._countAndFlagsBits) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v7 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_20;
  }

  v10 = v5;
  v11 = String.init(_nativeStorage:)();
  if (v12)
  {
    v7 = v11;
    v9 = v12;

    goto LABEL_20;
  }

  v95.value._countAndFlagsBits = [v10 length];
  if (!v95.value._countAndFlagsBits)
  {

    goto LABEL_10;
  }

  v7 = String.init(_cocoaString:)();
  v9 = v17;
LABEL_20:

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v7, v9, 1, v84);
  v92 = v84[6];
  v93 = v84[7];
  v94[0] = v85[0];
  *(v94 + 10) = *(v85 + 10);
  v88 = v84[2];
  v89 = v84[3];
  v90 = v84[4];
  v91 = v84[5];
  v86 = v84[0];
  v87 = v84[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v86) == 1)
  {
    goto LABEL_66;
  }

  v18 = v86;
  v66 = *(&v86 + 9);
  v67 = BYTE13(v86);
  v64 = HIBYTE(v86);
  v80 = v89;
  v81 = v90;
  v82 = v91;
  countAndFlagsBits = *(&v92 + 1);
  v83 = v92;
  v78 = v87;
  v79 = v88;
  v63 = v7;
  v20 = *&v94[0];
  v76 = *(v94 + 8);
  v77 = WORD4(v94[1]);
  if (v93)
  {
    object = v93;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    if ((BYTE14(v86) & 1) != 0 && v86)
    {
      v22 = *&v94[0];
      v23 = v86;
      if (*(v86 + 168))
      {
        v24 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v24 = String.subscript.getter();
      }

      countAndFlagsBits = MEMORY[0x1865CAE80](v24);
      object = v25;

      v18 = v23;
      v20 = v22;
    }
  }

  if (!v1 || (v26 = specialized Collection.first.getter(countAndFlagsBits, object), (v26 & 0x100) != 0) || v26 != 47)
  {

    goto LABEL_43;
  }

  v65 = 0;

  *&v27 = String._pathResolveFlags(prefixLength:)(&v65);
  if ((v27 & 0x100000000) != 0 || (LODWORD(v1) = v27 | v1, v1 == v27))
  {
LABEL_43:
    if ((object & 0x1000000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_70;
  }

  v28 = v65;
  v62 = v18;
  if ((object & 0x1000000000000000) != 0)
  {
    goto LABEL_82;
  }

  if ((v65 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  v29 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v29 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v29 < v65)
  {
LABEL_84:
    __break(1u);
  }

  for (i = (v65 << 16) | 4; ; i = MEMORY[0x1865CB180](15, v28, countAndFlagsBits, object))
  {
    v31 = specialized Collection.suffix(from:)(i, countAndFlagsBits, object);
    v34 = v31;
    v36 = v35;
    if (v1 == 1)
    {
      v68[0].value._countAndFlagsBits = 0x6C6C6F666F6E2E2FLL;
      v68[0].value._object = 0xEA0000000000776FLL;
      v95.value._countAndFlagsBits = v31;
      v95.value._object = v32;
      v96.value._countAndFlagsBits = v33;
    }

    else
    {
      v95.value._countAndFlagsBits = 0x766C6F7365722E2FLL;
      v95.value._object = 0xEA00000000002F65;
      LODWORD(v68[0].value._countAndFlagsBits) = v1;
      v60 = v32;
      v58 = v33;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v48);

      v68[0] = v95;
      v95.value._countAndFlagsBits = v34;
      v95.value._object = v60;
      v96.value._countAndFlagsBits = v58;
    }

    v96.value._object = v36;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v1 = v68;
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v68[0].value._countAndFlagsBits;
    object = v68[0].value._object;
    v18 = v62;
    if ((v68[0].value._object & 0x1000000000000000) != 0)
    {
LABEL_70:
      v62 = v18;
      v95.value._countAndFlagsBits = countAndFlagsBits;
      v95.value._object = object;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v49 = String._bridgeToObjectiveCImpl()();

      v1 = [v49 _fastCharacterContents];
      v50 = v49;
      v59 = v1;
      if (v1)
      {
        v95.value._countAndFlagsBits = countAndFlagsBits;
        v95.value._object = object;
        StringProtocol._ephemeralString.getter();
        v51 = String._bridgeToObjectiveCImpl()();

        v1 = [v51 length];
        swift_unknownObjectRelease();
        v52 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v59, v1, 0x10u, 1);
      }

      else
      {
        v52 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(countAndFlagsBits, object, 0x10u, 1);
      }

      v18 = v62;
      if ((v52 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
LABEL_44:
      if ((object & 0x2000000000000000) != 0)
      {
        v38 = HIBYTE(object) & 0xF;
        v95.value._countAndFlagsBits = countAndFlagsBits;
        v95.value._object = (object & 0xFFFFFFFFFFFFFFLL);
        v37 = &v95;
      }

      else if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v37 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v38 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = _StringObject.sharedUTF8.getter();
      }

      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v37, v38, 0x10u, 1))
      {
        goto LABEL_81;
      }
    }

    LODWORD(v1) = v20;
    if (!v20)
    {
      v40 = 0;
      if (v64 != 1 || !v18)
      {
        goto LABEL_62;
      }

      if (*(v18 + 192))
      {
        v20 = 0;
        v40 = 0;
        goto LABEL_62;
      }

      v46 = String.subscript.getter();
      MEMORY[0x1865CAE80](v46);
      LODWORD(v1) = v47;
    }

    Resolve = String._removingQueryResolveFlags()();
    v20 = Resolve.value._countAndFlagsBits;
    v40 = Resolve.value._object;

    if (!Resolve.value._object)
    {
      break;
    }

    if ((Resolve.value._object & 0x1000000000000000) != 0)
    {
      v62 = v18;
      v95 = Resolve;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v53 = String._bridgeToObjectiveCImpl()();

      v1 = [v53 _fastCharacterContents];
      v54 = v53;
      v61 = v1;
      if (v1)
      {
        v95 = Resolve;
        StringProtocol._ephemeralString.getter();
        v55 = String._bridgeToObjectiveCImpl()();

        v1 = [v55 length];
        swift_unknownObjectRelease();
        v56 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v61, v1, 0x40u, 1);
      }

      else
      {
        v56 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(Resolve.value._countAndFlagsBits, Resolve.value._object, 0x40u, 1);
      }

      v18 = v62;
      if (v56)
      {
        break;
      }
    }

    else
    {
      if ((Resolve.value._object & 0x2000000000000000) != 0)
      {
        v42 = (Resolve.value._object >> 56) & 0xF;
        v95.value._countAndFlagsBits = Resolve.value._countAndFlagsBits;
        v95.value._object = (Resolve.value._object & 0xFFFFFFFFFFFFFFLL);
        v41 = &v95;
      }

      else if ((Resolve.value._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v41 = ((Resolve.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v42 = Resolve.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = _StringObject.sharedUTF8.getter();
      }

      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v41, v42, 0x40u, 1))
      {
        break;
      }
    }

LABEL_81:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_82:
    ;
  }

LABEL_62:
  v98 = v80;
  v99 = v81;
  v100 = v82;
  v96 = v78;
  v95.value._countAndFlagsBits = v18;
  LOBYTE(v95.value._object) = 0;
  *(&v95.value._object + 1) = v66;
  BYTE5(v95.value._object) = v67;
  HIWORD(v95.value._object) = 0;
  v97 = v79;
  v101 = v83;
  v102 = countAndFlagsBits;
  v103 = object;
  v104 = v20;
  v105 = v40;
  v106 = v76;
  v107 = v77;
  v43 = URLComponents._URLComponents.computedString.getter();
  if (v44)
  {
    v7 = v43;
    v45 = v44;

    v9 = v45;
  }

  else
  {
    v7 = v63;
  }

  v68[0].value._countAndFlagsBits = v18;
  LOBYTE(v68[0].value._object) = 0;
  *(&v68[0].value._object + 1) = v66;
  BYTE5(v68[0].value._object) = v67;
  HIWORD(v68[0].value._object) = 0;
  v68[3] = v80;
  v68[4] = v81;
  v68[5] = v82;
  v68[1] = v78;
  v68[2] = v79;
  v69 = v83;
  v70 = countAndFlagsBits;
  v71 = object;
  v72 = v20;
  v73 = v40;
  v74 = v76;
  v75 = v77;
  outlined destroy of URLComponents(v68);
LABEL_66:
  v13 = v7;
  v14 = v9;
LABEL_86:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall NSString._urlStringByRemovingResolveFlags()()
{
  v94 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(v0);
  v2 = v0;
  v3 = v2;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v2);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v5 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v7 = v6;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      v11 = [v3 UTF8String];
      if (!v11)
      {
        __break(1u);
        goto LABEL_66;
      }

      v13 = String.init(utf8String:)(v11);
      if (v14)
      {
LABEL_15:
        v5 = v13;
        v7 = v14;

        goto LABEL_20;
      }

      __break(1u);
    }

    LOWORD(v76[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v13 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v14)
    {
      [v3 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v7 = *(&v78 + 1);
      v5 = v78;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v78) = 0;
  v87[0]._countAndFlagsBits = 0;
  LOBYTE(v76[0]) = 0;
  LOBYTE(v52) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v5 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_20;
  }

  v8 = v3;
  v9 = String.init(_nativeStorage:)();
  if (v10)
  {
    v5 = v9;
    v7 = v10;

    goto LABEL_20;
  }

  v87[0]._countAndFlagsBits = [v8 length];
  if (!v87[0]._countAndFlagsBits)
  {

    goto LABEL_10;
  }

  v5 = String.init(_cocoaString:)();
  v7 = v15;
LABEL_20:

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v5, v7, 1, v76);
  v84 = v76[6];
  v85 = v76[7];
  v86[0] = v77[0];
  *(v86 + 10) = *(v77 + 10);
  v80 = v76[2];
  v81 = v76[3];
  v82 = v76[4];
  v83 = v76[5];
  v78 = v76[0];
  v79 = v76[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v78) != 1)
  {
    v46 = v5;
    v50 = *(&v78 + 9);
    v51 = BYTE13(v78);
    v49 = HIBYTE(v78);
    v72 = v81;
    v73 = v82;
    v74 = v83;
    v75 = v84;
    v70 = v79;
    v71 = v80;
    v47 = *&v86[0];
    v48 = v78;
    v68 = *(v86 + 8);
    v69 = WORD4(v86[1]);
    if (!v85 && (BYTE14(v78) & 1) != 0 && v78)
    {
      if (*(v78 + 168))
      {
        v16 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v16 = String.subscript.getter();
      }

      MEMORY[0x1865CAE80](v16);
    }

    v17 = String._removingPathResolveFlags()();

    if ((v17._object & 0x1000000000000000) != 0)
    {
      v87[0] = v17;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v32 = String._bridgeToObjectiveCImpl()();

      v33 = [v32 _fastCharacterContents];
      v34 = v32;
      v44 = v33;
      if (v33)
      {
        v87[0] = v17;
        StringProtocol._ephemeralString.getter();
        v35 = String._bridgeToObjectiveCImpl()();

        v36 = [v35 length];
        swift_unknownObjectRelease();
        v20 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v44, v36, 0x10u, 1);
      }

      else
      {
        v20 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v17._countAndFlagsBits, v17._object, 0x10u, 1);
      }
    }

    else
    {
      if ((v17._object & 0x2000000000000000) == 0)
      {
        if ((v17._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v18 = ((v17._object & 0xFFFFFFFFFFFFFFFLL) + 32);
          v19 = v17._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v18, v19, 0x10u, 1))
        {
LABEL_64:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

LABEL_36:

        if (v47)
        {
LABEL_37:

          Resolve = String._removingQueryResolveFlags()();
          countAndFlagsBits = Resolve.value._countAndFlagsBits;
          object = Resolve.value._object;

          if (Resolve.value._object)
          {
            if ((Resolve.value._object & 0x1000000000000000) != 0)
            {
              v87[0] = Resolve.value;
              lazy protocol witness table accessor for type String and conformance String();
              StringProtocol._ephemeralString.getter();
              v37 = String._bridgeToObjectiveCImpl()();

              v38 = [v37 _fastCharacterContents];
              v39 = v37;
              v45 = v38;
              if (v38)
              {
                v87[0] = Resolve.value;
                StringProtocol._ephemeralString.getter();
                v40 = String._bridgeToObjectiveCImpl()();

                v41 = [v40 length];
                swift_unknownObjectRelease();
                v42 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v45, v41, 0x40u, 1);
              }

              else
              {
                v42 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(Resolve.value._countAndFlagsBits, Resolve.value._object, 0x40u, 1);
              }

              v5 = v46;
              if ((v42 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            else
            {
              if ((Resolve.value._object & 0x2000000000000000) != 0)
              {
                v25 = (Resolve.value._object >> 56) & 0xF;
                v87[0]._countAndFlagsBits = Resolve.value._countAndFlagsBits;
                v87[0]._object = (Resolve.value._object & 0xFFFFFFFFFFFFFFLL);
                v24 = v87;
              }

              else if ((Resolve.value._countAndFlagsBits & 0x1000000000000000) != 0)
              {
                v24 = ((Resolve.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
                v25 = Resolve.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = _StringObject.sharedUTF8.getter();
              }

              if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v24, v25, 0x40u, 1))
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_49;
        }

        countAndFlagsBits = 0;
        object = 0;
        if (v49 != 1)
        {
LABEL_49:
          v26 = v48;
          goto LABEL_50;
        }

        v26 = v48;
        if (v48)
        {
          if ((*(v48 + 192) & 1) == 0)
          {
            v31 = String.subscript.getter();
            MEMORY[0x1865CAE80](v31);

            goto LABEL_37;
          }

          countAndFlagsBits = 0;
          object = 0;
        }

LABEL_50:
        v87[0]._countAndFlagsBits = v26;
        LOBYTE(v87[0]._object) = 0;
        *(&v87[0]._object + 1) = v50;
        BYTE5(v87[0]._object) = v51;
        HIWORD(v87[0]._object) = 0;
        v87[3] = v72;
        v87[4] = v73;
        v87[5] = v74;
        v87[1] = v70;
        v87[2] = v71;
        v88 = v75;
        v89 = v17;
        v90 = countAndFlagsBits;
        v91 = object;
        v92 = v68;
        v93 = v69;
        v27 = URLComponents._URLComponents.computedString.getter();
        if (v28)
        {
          v29 = v27;
          v30 = v28;

          v5 = v29;
          v7 = v30;
        }

        v52 = v48;
        v53 = 0;
        v54 = v50;
        v55 = v51;
        v56 = 0;
        v59 = v72;
        v60 = v73;
        v61 = v74;
        v57 = v70;
        v58 = v71;
        v62 = v75;
        v63 = v17;
        v64 = countAndFlagsBits;
        v65 = object;
        v66 = v68;
        v67 = v69;
        outlined destroy of URLComponents(&v52);
        goto LABEL_53;
      }

      v87[0]._countAndFlagsBits = v17._countAndFlagsBits;
      v87[0]._object = (v17._object & 0xFFFFFFFFFFFFFFLL);
      v20 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v87, (v17._object >> 56) & 0xF, 0x10u, 1);
    }

    v5 = v46;
    if ((v20 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_36;
  }

LABEL_53:
  v11 = v5;
  v12 = v7;
LABEL_66:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5s6UInt32VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5i9VGXEfU_s6L7V_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5s6UInt32VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5h9VGXEfU_s6L7V_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5s6UInt32VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5h9VGXEfU_s6L7V_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void __swiftcall CollectionDifference.Change._bridgeToObjectiveC()(NSOrderedCollectionChange *__return_ptr retstr)
{
  v2 = *(v1 + 16);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = v12 + *(TupleTypeMetadata3 + 64);
  v18 = (v3 + 16);
  v19 = *(v3 + 32);
  if (v17[8])
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = *v17;
  }

  v21 = v12 + *(TupleTypeMetadata3 + 48);
  if (EnumCaseMultiPayload == 1)
  {
    v19(v5, v21, v2);
    v53 = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
    (*v18)(boxed_opaque_existential_0, v5, v2);
    v23 = v53;
    if (!v53)
    {
      v32 = 0;
      goto LABEL_16;
    }

    v50 = v20;
    v51 = v15;
    v24 = __swift_project_boxed_opaque_existential_1(v52, v53);
    v49 = &v48;
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x1EEE9AC00](v24);
    v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
    v29 = (&v48 - v28);
    v30 = *(v25 + 16);
    v30(&v48 - v28, v27);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v48 = &v48;
      v46 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v30)(&v48 - v28, &v48 - v28, v23, v46);
      v32 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(v25 + 8))(&v48 - v28, v23);
      goto LABEL_9;
    }

    if (v26 == 8)
    {
      v32 = *v29;
      v33 = *(v25 + 8);
      swift_unknownObjectRetain();
      v33(v29, v23);
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1(v52);
      v20 = v50;
      v15 = v51;
LABEL_16:
      [objc_allocWithZone(NSOrderedCollectionChange) initWithObject:v32 type:1 index:v15 associatedIndex:v20];
      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  v19(v8, v21, v2);
  v53 = v2;
  v34 = __swift_allocate_boxed_opaque_existential_0(v52);
  (*v18)(v34, v8, v2);
  v35 = v53;
  if (v53)
  {
    v50 = v20;
    v51 = v15;
    v36 = __swift_project_boxed_opaque_existential_1(v52, v53);
    v49 = &v48;
    v37 = *(v35 - 8);
    v38 = v37[8];
    v39 = MEMORY[0x1EEE9AC00](v36);
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
    v41 = (&v48 - v40);
    v42 = v37[2];
    v42(&v48 - v40, v39);
    v43 = _swift_isClassOrObjCExistentialType();
    if (v43)
    {
      if (v38 != 8)
      {
LABEL_23:
        __break(1u);
        return;
      }

      v44 = *v41;
      v45 = v37[1];
      swift_unknownObjectRetain();
      v45(v41, v35);
    }

    else
    {
      v48 = &v48;
      v47 = MEMORY[0x1EEE9AC00](v43);
      (v42)(&v48 - v40, &v48 - v40, v35, v47);
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (v37[1])(&v48 - v40, v35);
    }

    __swift_destroy_boxed_opaque_existential_1(v52);
    v20 = v50;
    v15 = v51;
  }

  else
  {
    v44 = 0;
  }

  [objc_allocWithZone(NSOrderedCollectionChange) initWithObject:v44 type:0 index:v15 associatedIndex:v20];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v8, v2);
}

uint64_t static CollectionDifference.Change._forceBridgeFromObjectiveC(_:result:)(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v10 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  swift_dynamicCast();
  (*(v6 + 8))(v9, a3);
  result = static CollectionDifference.Change._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2, a3);
  if ((result & 1) == 0)
  {
    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    *&v16 = 0xD000000000000011;
    *(&v16 + 1) = 0x80000001814811D0;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSOrderedCollectionChange);
    v12 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v12);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    type metadata accessor for CollectionDifference.Change();
    v13 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v13);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static CollectionDifference.Change._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27[-v8];
  v10 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v30, v31);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if (v15)
  {
    v16(v9, 0, 1, a3);
    v17 = *(v10 + 32);
    v17(v14, v9, a3);
    v18 = [a1 associatedIndex];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v19 = [a1 associatedIndex];
    }

    v20 = [a1 changeType];
    if (!v20)
    {
      v29 = v19;
      v28 = 0;
      goto LABEL_13;
    }

    if (v20 == 1)
    {
      v29 = v19;
      v28 = 1;
LABEL_13:
      type metadata accessor for CollectionDifference.Change();
      v21 = type metadata accessor for Optional();
      (*(*(v21 - 8) + 8))(a2, v21);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v23 = *(TupleTypeMetadata3 + 48);
      v24 = a2 + *(TupleTypeMetadata3 + 64);
      *a2 = [a1 index];
      v17(a2 + v23, v14, a3);
      *v24 = v29;
      v24[8] = v18 == 0x7FFFFFFFFFFFFFFFLL;
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for CollectionDifference.Change();
      (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
      return 1;
    }

    (*(v10 + 8))(v14, a3);
  }

  else
  {
    v16(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t static CollectionDifference.Change._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CollectionDifference.Change();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v17 - v13);
  v15 = *(v6 - 8);
  result = (*(v15 + 56))(&v17 - v13, 1, 1, v6, v12);
  if (a1)
  {
    static CollectionDifference.Change._forceBridgeFromObjectiveC(_:result:)(a1, v14, a2);
    (*(v8 + 16))(v10, v14, v7);
    result = (*(v15 + 48))(v10, 1, v6);
    if (result != 1)
    {
      (*(v8 + 8))(v14, v7);
      return (*(v15 + 32))(a3, v10, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void __swiftcall CollectionDifference._bridgeToObjectiveC()(NSOrderedCollectionDifference *__return_ptr retstr)
{
  v1 = type metadata accessor for CollectionDifference.Change();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  swift_getWitnessTable();
  v5 = dispatch thunk of Collection.count.getter();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    dispatch thunk of Collection.startIndex.getter();
    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v11 = (v2 + 16);
    do
    {
      v8 = dispatch thunk of Collection.subscript.read();
      (*v11)(v4);
      v8(v12, 0);
      CollectionDifference.Change._bridgeToObjectiveC()(v9);
      (*(v2 + 8))(v4, v1);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      dispatch thunk of Collection.formIndex(after:)();
      --v7;
    }

    while (v7);
    v6 = v13;
  }

  if (v6 >> 62)
  {
    if (v6 >= 0)
    {
      v6 &= 0xFFFFFFFFFFFFFF8uLL;
    }
  }

  else
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSOrderedCollectionChange);
    v6 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  [objc_allocWithZone(NSOrderedCollectionDifference) initWithChanges_];
  swift_unknownObjectRelease();
}

uint64_t static CollectionDifference._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static CollectionDifference._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2, a3);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSOrderedCollectionDifference);
    v4 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v4);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    type metadata accessor for CollectionDifference();
    v5 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v5);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL static CollectionDifference._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = type metadata accessor for CollectionDifference();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v37 - v7;
  v39 = a3;
  v8 = type metadata accessor for CollectionDifference.Change();
  v9 = type metadata accessor for Optional();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v37 - v17;
  v42 = v6;
  v18 = *(v6 + 8);
  v46 = a2;
  v44 = v5;
  v40 = v18;
  v41 = v6 + 8;
  (v18)(a2, v5, v16);
  v19 = swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)(v19, v83);
  v79 = v83[10];
  v80 = v83[11];
  v81[0] = v84[0];
  *(v81 + 9) = *(v84 + 9);
  v75 = v83[6];
  v76 = v83[7];
  v77 = v83[8];
  v78 = v83[9];
  v71 = v83[2];
  v72 = v83[3];
  v73 = v83[4];
  v74 = v83[5];
  v69 = v83[0];
  v70 = v83[1];
  outlined init with copy of NSFastEnumerationIterator(v83, &v54);
  NSFastEnumerationIterator.next()(&v67);
  if (v68)
  {
    v37 = v9;
    v49 = (v12 + 48);
    v50 = (v12 + 56);
    v20 = (v12 + 32);
    v47 = v12 + 8;
    v48 = (v12 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      outlined init with take of Any(&v67, v53);
      outlined init with copy of Any(v53, &v54);
      v22 = swift_dynamicCast();
      (*v50)(v11, v22 ^ 1u, 1, v8);
      if ((*v49)(v11, 1, v8) == 1)
      {
        break;
      }

      v23 = *v20;
      v24 = v51;
      (*v20)(v51, v11, v8);
      (*v48)(v52, v24, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v21;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v28 = MEMORY[0x1865CB550](v21, v8);
        v21 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 + 1, 1, v21, v8);
        v82 = v21;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = v26 > 1;
        type metadata accessor for Array();
        Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v27 + 1, 1);
        v21 = v82;
      }

      *(v21 + 16) = v27 + 1;
      v23((v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v27), v52, v8);
      (*(v12 + 8))(v51, v8);
      __swift_destroy_boxed_opaque_existential_1(v53);
      NSFastEnumerationIterator.next()(&v67);
      if (!v68)
      {
        goto LABEL_11;
      }
    }

    outlined destroy of NSFastEnumerationIterator(v83);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v64 = v79;
    v65 = v80;
    v66[0] = v81[0];
    *(v66 + 9) = *(v81 + 9);
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    v56 = v71;
    v57 = v72;
    v58 = v73;
    v59 = v74;
    v54 = v69;
    v55 = v70;
    outlined destroy of IteratorSequence<NSFastEnumerationIterator>(&v54);

    (*(v38 + 8))(v11, v37);
    v31 = v45;
    v30 = v46;
    (*(*(v45 - 8) + 56))(v46, 1, 1, v45);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v64 = v79;
    v65 = v80;
    v66[0] = v81[0];
    *(v66 + 9) = *(v81 + 9);
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    v56 = v71;
    v57 = v72;
    v58 = v73;
    v59 = v74;
    v54 = v69;
    v55 = v70;
    outlined destroy of IteratorSequence<NSFastEnumerationIterator>(&v54);
    *&v53[0] = v21;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v30 = v46;
    CollectionDifference.init<A>(_:)();
    outlined destroy of NSFastEnumerationIterator(v83);
    v31 = v45;
  }

  v32 = v43;
  v33 = v30;
  v34 = v44;
  (*(v42 + 16))(v43, v33, v44);
  v35 = (*(*(v31 - 8) + 48))(v32, 1, v31) != 1;
  v40(v32, v34);
  return v35;
}

void static CollectionDifference._unconditionallyBridgeFromObjectiveC(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CollectionDifference.Change();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for CollectionDifference();
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v29 = &v26 - v15;
  if (a1)
  {
    v27 = v13;
    v28 = a2;
    v26 = a3;
    v16 = swift_unknownObjectRetain();
    NSFastEnumerationIterator.init(_:)(v16, v51);
    v47 = v51[10];
    v48 = v51[11];
    v49[0] = v52[0];
    *(v49 + 9) = *(v52 + 9);
    v43 = v51[6];
    v44 = v51[7];
    v45 = v51[8];
    v46 = v51[9];
    v39 = v51[2];
    v40 = v51[3];
    v41 = v51[4];
    v42 = v51[5];
    v37 = v51[0];
    v38 = v51[1];
    outlined init with copy of NSFastEnumerationIterator(v51, v33);
    NSFastEnumerationIterator.next()(&v35);
    if (v36)
    {
      v30 = v7 + 8;
      v31 = v7 + 32;
      v17 = MEMORY[0x1E69E7CC0];
      do
      {
        outlined init with take of Any(&v35, v33);
        outlined init with copy of Any(v33, v32);
        swift_dynamicCast();
        (*(v7 + 16))(v9, v12, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v17;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v21 = MEMORY[0x1865CB550](v17, v6);
          v17 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 + 1, 1, v17, v6);
          v50 = v17;
        }

        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          v22 = v19 > 1;
          type metadata accessor for Array();
          Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v20 + 1, 1);
          v17 = v50;
        }

        *(v17 + 16) = v20 + 1;
        (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v9, v6);
        (*(v7 + 8))(v12, v6);
        __swift_destroy_boxed_opaque_existential_1(v33);
        NSFastEnumerationIterator.next()(&v35);
      }

      while (v36);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v33[10] = v47;
    v33[11] = v48;
    v34[0] = v49[0];
    *(v34 + 9) = *(v49 + 9);
    v33[6] = v43;
    v33[7] = v44;
    v33[8] = v45;
    v33[9] = v46;
    v33[2] = v39;
    v33[3] = v40;
    v33[4] = v41;
    v33[5] = v42;
    v33[0] = v37;
    v33[1] = v38;
    outlined destroy of IteratorSequence<NSFastEnumerationIterator>(v33);
    v32[0] = v17;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v23 = v29;
    CollectionDifference.init<A>(_:)();
    outlined destroy of NSFastEnumerationIterator(v51);
    v24 = v27;
    v25 = *(v27 - 8);
    if ((*(v25 + 48))(v23, 1, v27) != 1)
    {
      (*(v25 + 32))(v26, v23, v24);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t outlined destroy of IteratorSequence<NSFastEnumerationIterator>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IteratorSequenceVy10Foundation017NSFastEnumerationA0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id NSURLCache.init(memoryCapacity:diskCapacity:directory:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v5 = a3[1];
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 432))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMemoryCapacity:a1 diskCapacity:a2 directoryURL:v7];

  return v8;
}

uint64_t static NSUndoManager.DidUndoChangeMessage.makeMessage(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_8;
  }

  *&v9 = 0xD000000000000022;
  *(&v9 + 1) = 0x8000000181487DC0;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v5 & 1) == 0))
  {
    outlined destroy of AnyHashable(v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v9);
  outlined destroy of AnyHashable(v8);
  if (!*(&v10 + 1))
  {
LABEL_9:
    result = outlined destroy of TermOfAddress?(&v9, &_sypSgMd);
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = v8[0];
LABEL_11:
  *a2 = v7;
  return result;
}

uint64_t static NSUndoManager.DidUndoChangeMessage.makeNotification(_:)@<X0>(unsigned __int8 *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *&v20 = 0xD000000000000022;
  *(&v20 + 1) = 0x8000000181487DC0;
  AnyHashable.init<A>(_:)();
  v6 = [objc_allocWithZone(NSNumber) initWithBool_];
  v24[8] = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  v24[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?(v24, &v20, &_ss11AnyHashableV_yptMd);

  outlined destroy of TermOfAddress?(v24, &_ss11AnyHashableV_yptMd);
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(&v20);
  v10 = v9;

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v7[(v8 >> 6) + 8] |= 1 << v8;
    v12 = v7[6] + 40 * v8;
    v13 = v20;
    v14 = v21;
    *(v12 + 32) = v22;
    *v12 = v13;
    *(v12 + 16) = v14;
    result = outlined init with take of Any(&v23, (v7[7] + 32 * v8));
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      v7[2] = v17;
      v18 = *a2;
      v20 = 0u;
      v21 = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 8) = 0u;
      *a3 = v18;
      v19 = v18;
      result = outlined assign with take of Any?(&v20, a3 + 8);
      *(a3 + 40) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TimeZone.SystemTimeZoneDidChangeMessage.previousTimeZone.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_unknownObjectRelease();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

__n128 TimeZone.SystemTimeZoneDidChangeMessage.init(previousTimeZone:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t static TimeZone.SystemTimeZoneDidChangeMessage.makeMessage(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of FloatingPointRoundingRule?(a1 + 8, v8, &_sypSgMd);
  if (v9)
  {
    result = swift_dynamicCast();
    v4 = v6;
    v5 = v7;
    if (!result)
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    result = outlined destroy of TermOfAddress?(v8, &_sypSgMd);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

id NSFileHandle.ConnectionAcceptedMessage.fileHandleItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void NSFileHandle.ConnectionAcceptedMessage.fileHandleItem.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t NSFileHandle.ConnectionAcceptedMessage.init(fileHandleItem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void static NSFileHandle.ConnectionAcceptedMessage.makeMessage(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (!v3)
  {
    v55 = 0u;
    v56 = 0u;
    outlined destroy of TermOfAddress?(&v55, &_sypSgMd);
    goto LABEL_21;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v54), (v5 & 1) == 0))
  {
    outlined destroy of AnyHashable(v54);
    v55 = 0u;
    v56 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v55);
  outlined destroy of AnyHashable(v54);
  if (!*(&v56 + 1))
  {
LABEL_13:
    outlined destroy of TermOfAddress?(&v55, &_sypSgMd);
    goto LABEL_14;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = v54[0];
  [v54[0] intValue];
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {

LABEL_14:
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16))
    {
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
      if (v12)
      {
        outlined init with copy of Any(*(v3 + 56) + 32 * v11, &v55);
        outlined destroy of AnyHashable(v54);
        if (*(&v56 + 1))
        {
          type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSFileHandle);
          if (swift_dynamicCast())
          {
            v13 = 0;
            v14 = v54[0];
LABEL_24:
            *a2 = v14;
            *(a2 + 8) = v13;
            return;
          }

LABEL_23:
          v14 = 0;
          v13 = -1;
          goto LABEL_24;
        }

LABEL_22:
        outlined destroy of TermOfAddress?(&v55, &_sypSgMd);
        goto LABEL_23;
      }
    }

    outlined destroy of AnyHashable(v54);
LABEL_21:
    v55 = 0u;
    v56 = 0u;
    goto LABEL_22;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v8 = @"NSPOSIXErrorDomain";
  v9 = v8;
  if (!isTaggedPointer)
  {
    goto LABEL_26;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_35:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v19)
      {
        [(__CFString *)v9 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_42;
      }

      goto LABEL_40;
    case 0x16:
      v17 = [(__CFString *)v9 UTF8String];
      if (!v17)
      {
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      String.init(utf8String:)(v17);
      if (v18)
      {
        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_35;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_42;
  }

LABEL_26:
  LOBYTE(v55) = 0;
  v54[0] = 0;
  if (!__CFStringIsCF())
  {
    v15 = v9;
    String.init(_nativeStorage:)();
    if (v16 || (v54[0] = [(__CFString *)v15 length]) == 0)
    {

      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (!v54[0])
  {
LABEL_40:

    goto LABEL_42;
  }

LABEL_41:
  String.init(_cocoaString:)();
LABEL_42:
  v20 = POSIXErrorCode.rawValue.getter();
  v21 = objc_allocWithZone(NSError);
  v22 = String._bridgeToObjectiveCImpl()();

  v14 = [v21 initWithDomain:v22 code:v20 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v14 domain];
  if (!v23)
  {
    v29 = 0;
    v31 = 0xE000000000000000;
LABEL_67:
    v39 = v9;
    v40 = v39;
    if (!isTaggedPointer)
    {
      goto LABEL_72;
    }

    v41 = _objc_getTaggedPointerTag(v39);
    if (!v41)
    {
      goto LABEL_81;
    }

    if (v41 != 22)
    {
      if (v41 == 2)
      {
        MEMORY[0x1EEE9AC00](v41);
        v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v44 = v43;

LABEL_87:
        if (v29 == v42 && v31 == v44)
        {

          v13 = 1;
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v52 & 1) == 0)
          {
            __break(1u);
          }

          v13 = 1;
        }

        goto LABEL_24;
      }

LABEL_72:
      LOBYTE(v55) = 0;
      v54[0] = 0;
      if (__CFStringIsCF())
      {
        v42 = v54[0];
        if (!v54[0])
        {

          v44 = 0xE000000000000000;
          goto LABEL_87;
        }
      }

      else
      {
        v45 = v40;
        v46 = String.init(_nativeStorage:)();
        if (v47)
        {
          v42 = v46;
          v44 = v47;

          goto LABEL_87;
        }

        v54[0] = [(__CFString *)v45 length];
        if (!v54[0])
        {

          v42 = 0;
          v44 = 0xE000000000000000;
          goto LABEL_87;
        }
      }

      v42 = String.init(_cocoaString:)();
      v44 = v51;
      goto LABEL_87;
    }

    v48 = [(__CFString *)v40 UTF8String];
    if (v48)
    {
      v49 = String.init(utf8String:)(v48);
      if (v50)
      {
LABEL_82:
        v42 = v49;
        v44 = v50;

        goto LABEL_87;
      }

      __break(1u);
LABEL_81:
      _CFIndirectTaggedPointerStringGetContents();
      v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v50)
      {
        [(__CFString *)v40 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v44 = *(&v55 + 1);
        v42 = v55;
        goto LABEL_87;
      }

      goto LABEL_82;
    }

    goto LABEL_94;
  }

  v53 = isTaggedPointer;
  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_48;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  if (!v28)
  {
    goto LABEL_59;
  }

  if (v28 != 22)
  {
    if (v28 == 2)
    {
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

LABEL_66:
      isTaggedPointer = v53;
      goto LABEL_67;
    }

LABEL_48:
    LOBYTE(v55) = 0;
    v54[0] = 0;
    if (__CFStringIsCF())
    {
      if (v54[0])
      {
LABEL_64:
        v29 = String.init(_cocoaString:)();
        v31 = v38;
        goto LABEL_65;
      }
    }

    else
    {
      v32 = v27;
      v33 = String.init(_nativeStorage:)();
      if (v34)
      {
        v29 = v33;
        v31 = v34;

        goto LABEL_66;
      }

      v54[0] = [v32 length];
      if (v54[0])
      {
        goto LABEL_64;
      }
    }

    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_66;
  }

  v35 = [v27 UTF8String];
  if (v35)
  {
    v36 = String.init(utf8String:)(v35);
    if (v37)
    {
      goto LABEL_60;
    }

    __break(1u);
LABEL_59:
    _CFIndirectTaggedPointerStringGetContents();
    v36 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v37)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v31 = *(&v55 + 1);
      v29 = v55;
      goto LABEL_65;
    }

LABEL_60:
    v29 = v36;
    v31 = v37;

LABEL_65:
    goto LABEL_66;
  }

LABEL_95:
  __break(1u);
}

void *static NSFileHandle.ConnectionAcceptedMessage.makeNotification(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    *&v71 = 0xD000000000000026;
    *(&v71 + 1) = 0x8000000181487DF0;
    v18 = v7;
    AnyHashable.init<A>(_:)();
    v77 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSFileHandle);
    *&v76 = v18;
    outlined init with take of Any(&v76, v75);
    v19 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v19;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
    v21 = *(v19 + 16);
    v22 = (v20 & 1) == 0;
    v14 = __OFADD__(v21, v22);
    v23 = v21 + v22;
    if (v14)
    {
      goto LABEL_19;
    }

    v2 = v20;
    if (*(v19 + 24) >= v23)
    {
      v26 = MEMORY[0x1E69E7CC8];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
        v48 = static _DictionaryStorage.copy(original:)();
        v16 = v48;
        v49 = *(v26 + 16);
        if (v49)
        {
          result = (v48 + 64);
          v50 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v26 || result >= v26 + 8 * v50 + 64)
          {
            result = memmove(result, (v26 + 64), 8 * v50);
          }

          v51 = 0;
          *(v16 + 16) = v49;
          v52 = 1 << *(v26 + 32);
          v53 = *(v26 + 64);
          v54 = -1;
          if (v52 < 64)
          {
            v54 = ~(-1 << v52);
          }

          v55 = v54 & v53;
          v56 = (v52 + 63) >> 6;
          if ((v54 & v53) != 0)
          {
            do
            {
              v57 = __clz(__rbit64(v55));
              v55 &= v55 - 1;
              v58 = v57 | (v51 << 6);
LABEL_46:
              v61 = 40 * v58;
              outlined init with copy of AnyHashable(*(v26 + 48) + 40 * v58, &v71);
              v62 = 32 * v58;
              outlined init with copy of Any(*(v26 + 56) + v62, v70);
              v63 = *(v16 + 48) + v61;
              v64 = v71;
              v65 = v72;
              *(v63 + 32) = v73;
              *v63 = v64;
              *(v63 + 16) = v65;
              result = outlined init with take of Any(v70, (*(v16 + 56) + v62));
            }

            while (v55);
          }

          while (1)
          {
            v59 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_56;
            }

            if (v59 >= v56)
            {
              break;
            }

            v60 = *(v26 + 8 * v59 + 64);
            ++v51;
            if (v60)
            {
              v55 = (v60 - 1) & v60;
              v58 = __clz(__rbit64(v60)) | (v59 << 6);
              v51 = v59;
              goto LABEL_46;
            }
          }
        }

        v10 = v47;
        if (v2)
        {
          goto LABEL_17;
        }

        goto LABEL_52;
      }

      v16 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v16 = v74;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
      if ((v2 & 1) != (v24 & 1))
      {
        goto LABEL_9;
      }
    }

    if (v2)
    {
LABEL_17:
      v27 = (*(v16 + 56) + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1(v27);
      outlined init with take of Any(v75, v27);
LABEL_53:
      outlined destroy of AnyHashable(v78);
      goto LABEL_54;
    }

LABEL_52:
    v67 = v10;
    outlined init with copy of AnyHashable(v78, &v71);
    specialized _NativeDictionary._insert(at:key:value:)(v67, &v71, v75, v16);
    goto LABEL_53;
  }

  *&v71 = 0xD000000000000011;
  *(&v71 + 1) = 0x8000000181487E20;
  v2 = v7;
  AnyHashable.init<A>(_:)();
  v3 = off_1E69EE6D0;
  v8 = [objc_allocWithZone(NSNumber) initWithInteger_];
  v77 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  *&v76 = v8;
  outlined init with take of Any(&v76, v75);
  v9 = MEMORY[0x1E69E7CC8];
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v9;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (!v14)
  {
    LOBYTE(v3) = v11;
    if (*(v9 + 24) >= v15)
    {
      goto LABEL_10;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5);
    v16 = v74;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
    if ((v3 & 1) == (v17 & 1))
    {
      goto LABEL_12;
    }

LABEL_9:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_10:
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    if (v5)
    {
      v16 = MEMORY[0x1E69E7CC8];
LABEL_12:
      if (v3)
      {
LABEL_13:
        v25 = (*(v16 + 56) + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1(v25);
        outlined init with take of Any(v75, v25);
LABEL_50:
        outlined destroy of AnyHashable(v78);

LABEL_54:
        memset(v78, 0, 32);
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *a2 = @"NSFileHandleConnectionAcceptedNotification";
        v68 = @"NSFileHandleConnectionAcceptedNotification";
        result = outlined assign with take of Any?(v78, a2 + 8);
        *(a2 + 40) = v16;
        return result;
      }

LABEL_49:
      v66 = v10;
      outlined init with copy of AnyHashable(v78, &v71);
      specialized _NativeDictionary._insert(at:key:value:)(v66, &v71, v75, v16);
      goto LABEL_50;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  v28 = static _DictionaryStorage.copy(original:)();
  v16 = v28;
  v29 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v29)
  {
LABEL_48:

    v10 = v69;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

  result = (v28 + 64);
  v31 = ((1 << *(v16 + 32)) + 63) >> 6;
  if (v16 != isUniquelyReferenced_nonNull_native || result >= isUniquelyReferenced_nonNull_native + 8 * v31 + 64)
  {
    result = memmove(result, (isUniquelyReferenced_nonNull_native + 64), 8 * v31);
  }

  v32 = 0;
  *(v16 + 16) = v29;
  v33 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
  v34 = *(isUniquelyReferenced_nonNull_native + 64);
  v35 = -1;
  if (v33 < 64)
  {
    v35 = ~(-1 << v33);
  }

  v36 = v35 & v34;
  v37 = (v33 + 63) >> 6;
  if ((v35 & v34) != 0)
  {
    do
    {
      v38 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v39 = v38 | (v32 << 6);
LABEL_32:
      v42 = 40 * v39;
      outlined init with copy of AnyHashable(*(isUniquelyReferenced_nonNull_native + 48) + 40 * v39, &v71);
      v43 = 32 * v39;
      outlined init with copy of Any(*(isUniquelyReferenced_nonNull_native + 56) + v43, v70);
      v44 = *(v16 + 48) + v42;
      v45 = v71;
      v46 = v72;
      *(v44 + 32) = v73;
      *v44 = v45;
      *(v44 + 16) = v46;
      result = outlined init with take of Any(v70, (*(v16 + 56) + v43));
    }

    while (v36);
  }

  while (1)
  {
    v40 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      goto LABEL_48;
    }

    v41 = *(isUniquelyReferenced_nonNull_native + 8 * v40 + 64);
    ++v32;
    if (v41)
    {
      v36 = (v41 - 1) & v41;
      v39 = __clz(__rbit64(v41)) | (v40 << 6);
      v32 = v40;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void static NSFileHandle.ReadToEndOfFileCompletionMessage.makeMessage(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static NSFileHandle.ReadToEndOfFileCompletionMessage.makeMessage(_:)(a1, a2);
}

{
  v60 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (!v3)
  {
    v58 = 0u;
    v59 = 0u;
    outlined destroy of TermOfAddress?(&v58, &_sypSgMd);
    goto LABEL_21;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v57), (v5 & 1) == 0))
  {
    outlined destroy of AnyHashable(v57);
    v58 = 0u;
    v59 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v58);
  outlined destroy of AnyHashable(v57);
  if (!*(&v59 + 1))
  {
LABEL_13:
    outlined destroy of TermOfAddress?(&v58, &_sypSgMd);
    goto LABEL_14;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = v57[0];
  [v57[0] intValue];
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {

LABEL_14:
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
      if (v13)
      {
        outlined init with copy of Any(*(v3 + 56) + 32 * v12, &v58);
        outlined destroy of AnyHashable(v57);
        if (*(&v59 + 1))
        {
          if (swift_dynamicCast())
          {
            *a2 = *v57;
            *(a2 + 16) = 0;
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        outlined destroy of TermOfAddress?(&v58, &_sypSgMd);
LABEL_23:
        *a2 = 0;
        *(a2 + 8) = 0;
        v14 = -1;
LABEL_24:
        *(a2 + 16) = v14;
        return;
      }
    }

    outlined destroy of AnyHashable(v57);
LABEL_21:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_22;
  }

  v55 = v6;
  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v8 = @"NSPOSIXErrorDomain";
  v9 = v8;
  v56 = isTaggedPointer;
  v10 = v8;
  if (!isTaggedPointer)
  {
    goto LABEL_26;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_35:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v19)
      {
        [(__CFString *)v9 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_41;
      }

      goto LABEL_36;
    case 0x16:
      v17 = [(__CFString *)v9 UTF8String];
      if (!v17)
      {
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      String.init(utf8String:)(v17);
      if (v18)
      {
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_35;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_41;
  }

LABEL_26:
  LOBYTE(v58) = 0;
  v57[0] = 0;
  if (!__CFStringIsCF())
  {
    v15 = v9;
    String.init(_nativeStorage:)();
    if (v16 || (v57[0] = [(__CFString *)v15 length]) == 0)
    {

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!v57[0])
  {
LABEL_36:

    goto LABEL_41;
  }

LABEL_40:
  String.init(_cocoaString:)();
LABEL_41:
  v20 = POSIXErrorCode.rawValue.getter();
  v21 = objc_allocWithZone(NSError);
  v22 = String._bridgeToObjectiveCImpl()();

  v23 = [v21 initWithDomain:v22 code:v20 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v24 = [v23 domain];
  if (!v24)
  {
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_51;
  }

  v25 = v24;
  v26 = _objc_isTaggedPointer(v24);
  v27 = v25;
  v28 = v27;
  v29 = v10;
  if ((v26 & 1) == 0)
  {
LABEL_47:
    LOBYTE(v58) = 0;
    v57[0] = 0;
    if (__CFStringIsCF())
    {
      if (v57[0])
      {
LABEL_64:
        v31 = String.init(_cocoaString:)();
        v33 = v40;
        goto LABEL_65;
      }
    }

    else
    {
      v34 = v28;
      v35 = String.init(_nativeStorage:)();
      if (v36)
      {
        v31 = v35;
        v33 = v36;

        goto LABEL_66;
      }

      v57[0] = [v34 length];
      if (v57[0])
      {
        goto LABEL_64;
      }
    }

    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_66;
  }

  v30 = _objc_getTaggedPointerTag(v27);
  if (!v30)
  {
    goto LABEL_59;
  }

  if (v30 != 22)
  {
    if (v30 == 2)
    {
      MEMORY[0x1EEE9AC00](v30);
      v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v33 = v32;

LABEL_51:
      v29 = v10;
LABEL_66:
      v41 = v29;
      v42 = v41;
      if (!v56)
      {
        goto LABEL_71;
      }

      v43 = _objc_getTaggedPointerTag(v41);
      if (!v43)
      {
        goto LABEL_81;
      }

      if (v43 != 22)
      {
        if (v43 == 2)
        {
          MEMORY[0x1EEE9AC00](v43);
          v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v46 = v45;

          goto LABEL_87;
        }

LABEL_71:
        LOBYTE(v58) = 0;
        v57[0] = 0;
        if (__CFStringIsCF())
        {
          if (v57[0])
          {
LABEL_86:
            v44 = String.init(_cocoaString:)();
            v46 = v53;
LABEL_87:
            if (v31 == v44 && v33 == v46)
            {
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v54 & 1) == 0)
              {
                __break(1u);
              }
            }

            *a2 = v23;
            *(a2 + 8) = 0;
            v14 = 1;
            goto LABEL_24;
          }
        }

        else
        {
          v47 = v42;
          v48 = String.init(_nativeStorage:)();
          if (v49)
          {
            v44 = v48;
            v46 = v49;

            goto LABEL_87;
          }

          v57[0] = [(__CFString *)v47 length];
          if (v57[0])
          {
            goto LABEL_86;
          }
        }

        v44 = 0;
        v46 = 0xE000000000000000;
        goto LABEL_87;
      }

      v50 = [(__CFString *)v42 UTF8String];
      if (v50)
      {
        v51 = String.init(utf8String:)(v50);
        if (v52)
        {
          goto LABEL_82;
        }

        __break(1u);
LABEL_81:
        _CFIndirectTaggedPointerStringGetContents();
        v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v52)
        {
          [(__CFString *)v42 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v46 = *(&v58 + 1);
          v44 = v58;
          goto LABEL_87;
        }

LABEL_82:
        v44 = v51;
        v46 = v52;

        goto LABEL_87;
      }

      goto LABEL_94;
    }

    goto LABEL_47;
  }

  v37 = [v28 UTF8String];
  if (v37)
  {
    v38 = String.init(utf8String:)(v37);
    if (v39)
    {
      goto LABEL_60;
    }

    __break(1u);
LABEL_59:
    _CFIndirectTaggedPointerStringGetContents();
    v38 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v39)
    {
      [v28 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      v29 = v10;
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v33 = *(&v58 + 1);
      v31 = v58;
      goto LABEL_65;
    }

LABEL_60:
    v31 = v38;
    v33 = v39;

LABEL_65:
    goto LABEL_66;
  }

LABEL_95:
  __break(1u);
}

id NSFileHandle.ReadToEndOfFileCompletionMessage.dataItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of Result<Data, POSIXError>(v2, v3, v4);
}

void NSFileHandle.ReadToEndOfFileCompletionMessage.dataItem.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  outlined consume of Result<Data, POSIXError>(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

__n128 NSFileHandle.ReadCompletionMessage.init(dataItem:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

void *static NSFileHandle.ReadToEndOfFileCompletionMessage.makeNotification(_:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {
    *&v74 = 0xD000000000000020;
    *(&v74 + 1) = 0x8000000181487E40;
    outlined copy of Data._Representation(v8, v7);
    AnyHashable.init<A>(_:)();
    v80 = &type metadata for Data;
    *&v79 = v8;
    *(&v79 + 1) = v7;
    outlined init with take of Any(&v79, v78);
    v21 = MEMORY[0x1E69E7CC8];
    LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
    v77 = v21;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
    v23 = *(v21 + 16);
    v24 = (v22 & 1) == 0;
    v17 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (v17)
    {
      goto LABEL_19;
    }

    v7 = v22;
    if (*(v21 + 24) >= v25)
    {
      v28 = MEMORY[0x1E69E7CC8];
      if ((v10 & 1) == 0)
      {
        v72 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
        v47 = static _DictionaryStorage.copy(original:)();
        v19 = v47;
        v48 = *(v28 + 16);
        if (v48)
        {
          result = (v47 + 64);
          v49 = ((1 << *(v19 + 32)) + 63) >> 6;
          if (v19 != v28 || result >= v28 + 8 * v49 + 64)
          {
            result = memmove(result, (v28 + 64), 8 * v49);
          }

          v50 = 0;
          *(v19 + 16) = v48;
          v51 = 1 << *(v28 + 32);
          v52 = *(v28 + 64);
          v53 = -1;
          if (v51 < 64)
          {
            v53 = ~(-1 << v51);
          }

          v54 = v53 & v52;
          v55 = (v51 + 63) >> 6;
          if ((v53 & v52) != 0)
          {
            do
            {
              v56 = __clz(__rbit64(v54));
              v54 &= v54 - 1;
              v57 = v56 | (v50 << 6);
LABEL_46:
              v60 = 40 * v57;
              outlined init with copy of AnyHashable(*(v28 + 48) + 40 * v57, &v74);
              v61 = 32 * v57;
              outlined init with copy of Any(*(v28 + 56) + v61, v73);
              v62 = *(v19 + 48) + v60;
              v63 = v74;
              v64 = v75;
              *(v62 + 32) = v76;
              *v62 = v63;
              *(v62 + 16) = v64;
              result = outlined init with take of Any(v73, (*(v19 + 56) + v61));
            }

            while (v54);
          }

          while (1)
          {
            v58 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_56;
            }

            if (v58 >= v55)
            {
              break;
            }

            v59 = *(v28 + 8 * v58 + 64);
            ++v50;
            if (v59)
            {
              v54 = (v59 - 1) & v59;
              v57 = __clz(__rbit64(v59)) | (v58 << 6);
              v50 = v58;
              goto LABEL_46;
            }
          }
        }

        v13 = v72;
        if (v7)
        {
          goto LABEL_17;
        }

        goto LABEL_52;
      }

      v19 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v10);
      v19 = v77;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
      if ((v7 & 1) != (v26 & 1))
      {
        goto LABEL_9;
      }
    }

    if (v7)
    {
LABEL_17:
      v29 = (*(v19 + 56) + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v29);
      outlined init with take of Any(v78, v29);
LABEL_53:
      outlined destroy of AnyHashable(v81);
      goto LABEL_54;
    }

LABEL_52:
    v66 = v13;
    outlined init with copy of AnyHashable(v81, &v74);
    specialized _NativeDictionary._insert(at:key:value:)(v66, &v74, v78, v19);
    goto LABEL_53;
  }

  *&v74 = 0xD000000000000011;
  *(&v74 + 1) = 0x8000000181487E20;
  v9 = v8;
  AnyHashable.init<A>(_:)();
  v10 = off_1E69EE6D0;
  v11 = [objc_allocWithZone(NSNumber) initWithInteger_];
  v80 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  *&v79 = v11;
  outlined init with take of Any(&v79, v78);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (!v17)
  {
    LOBYTE(v10) = v14;
    if (*(v12 + 24) >= v18)
    {
      goto LABEL_10;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v19 = v77;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
    if ((v10 & 1) == (v20 & 1))
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_10:
    v3 = MEMORY[0x1E69E7CC8];
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = MEMORY[0x1E69E7CC8];
LABEL_12:
      if (v10)
      {
LABEL_13:
        v27 = (*(v19 + 56) + 32 * v13);
        __swift_destroy_boxed_opaque_existential_1(v27);
        outlined init with take of Any(v78, v27);
LABEL_50:
        outlined destroy of AnyHashable(v81);
        outlined consume of Result<Data, POSIXError>(v8, v7, 1);
LABEL_54:
        v67 = *a2;
        memset(v81, 0, 32);
        *(a3 + 24) = 0u;
        *(a3 + 8) = 0u;
        *a3 = v67;
        v68 = v67;
        result = outlined assign with take of Any?(v81, a3 + 8);
        *(a3 + 40) = v19;
        return result;
      }

LABEL_49:
      v65 = v13;
      outlined init with copy of AnyHashable(v81, &v74);
      specialized _NativeDictionary._insert(at:key:value:)(v65, &v74, v78, v19);
      goto LABEL_50;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  v69 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  v30 = static _DictionaryStorage.copy(original:)();
  v19 = v30;
  v31 = *(v3 + 16);
  if (!v31)
  {
LABEL_48:

    v13 = v69;
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

  result = (v30 + 64);
  v33 = ((1 << *(v19 + 32)) + 63) >> 6;
  if (v19 != v3 || result >= v3 + 8 * v33 + 64)
  {
    result = memmove(result, (v3 + 64), 8 * v33);
  }

  v34 = 0;
  *(v19 + 16) = v31;
  v35 = 1 << *(v3 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v3 + 64);
  v38 = (v35 + 63) >> 6;
  v70 = v38;
  if (v37)
  {
    do
    {
      v71 = (v37 - 1) & v37;
      v39 = __clz(__rbit64(v37)) | (v34 << 6);
LABEL_32:
      v42 = 40 * v39;
      outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v39, &v74);
      v43 = 32 * v39;
      outlined init with copy of Any(*(v3 + 56) + v43, v73);
      v44 = *(v19 + 48) + v42;
      v45 = v74;
      v46 = v75;
      *(v44 + 32) = v76;
      *v44 = v45;
      *(v44 + 16) = v46;
      result = outlined init with take of Any(v73, (*(v19 + 56) + v43));
      v38 = v70;
      v37 = v71;
    }

    while (v71);
  }

  while (1)
  {
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v40 >= v38)
    {
      goto LABEL_48;
    }

    v41 = *(v3 + 8 * v40 + 64);
    ++v34;
    if (v41)
    {
      v71 = (v41 - 1) & v41;
      v39 = __clz(__rbit64(v41)) | (v40 << 6);
      v34 = v40;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

id outlined copy of Result<Data, POSIXError>(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return outlined copy of Data._Representation(a1, a2);
  }
}

void outlined consume of Result<Data, POSIXError>(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

uint64_t getEnumTagSinglePayload for TimeZone.SystemTimeZoneDidChangeMessage(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TimeZone.SystemTimeZoneDidChangeMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

void static URL.FormatStyle.ComponentDisplayOption.always.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static URL.FormatStyle.HostDisplayOption.always.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;

  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

__n128 URL.FormatStyle.init(scheme:user:password:host:port:path:query:fragment:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = a4[24];
  v13 = *(a4 + 4);
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  *a9 = *a1;
  *(a9 + 8) = *(a1 + 8);
  *(a9 + 24) = v9;
  *(a9 + 32) = *(a2 + 8);
  *(a9 + 48) = v10;
  *(a9 + 56) = *(a3 + 8);
  *(a9 + 72) = v11;
  *(a9 + 80) = *(a4 + 8);
  *(a9 + 96) = v12;
  *(a9 + 104) = v13;
  *(a9 + 112) = v14;
  *(a9 + 120) = *(a5 + 8);
  *(a9 + 136) = v15;
  *(a9 + 144) = *(a6 + 8);
  *(a9 + 160) = v16;
  *(a9 + 168) = *(a7 + 8);
  *(a9 + 184) = v17;
  result = *(a8 + 8);
  *(a9 + 192) = result;
  return result;
}

uint64_t URL.FormatStyle.format(_:)(uint64_t *a1)
{
  v418 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v330 = *v1;
  v4 = *(v1 + 1);
  *(v339 + 3) = *(v1 + 1);
  v339[0] = v4;
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v329 = v1[24];
  v7 = *(v1 + 25);
  *(v338 + 3) = *(v1 + 7);
  v338[0] = v7;
  v8 = *(v1 + 5);
  v318 = *(v1 + 4);
  v319 = v5;
  v305 = v8;
  v328 = v1[48];
  LODWORD(v8) = *(v1 + 49);
  *(v337 + 3) = *(v1 + 13);
  v337[0] = v8;
  v9 = *(v1 + 8);
  v320 = *(v1 + 7);
  v317 = v9;
  v327 = v1[72];
  LODWORD(v9) = *(v1 + 73);
  *(v336 + 3) = *(v1 + 19);
  v336[0] = v9;
  v10 = *(v1 + 10);
  v309 = *(v1 + 11);
  v310 = v10;
  v326 = v1[96];
  LODWORD(v9) = *(v1 + 97);
  *(v335 + 3) = *(v1 + 25);
  v335[0] = v9;
  v11 = *(v1 + 13);
  v325 = v1[112];
  LODWORD(v9) = *(v1 + 113);
  *(v334 + 3) = *(v1 + 29);
  v334[0] = v9;
  v12 = *(v1 + 16);
  v313 = *(v1 + 15);
  v324 = v1[136];
  LODWORD(v9) = *(v1 + 137);
  *(v333 + 3) = *(v1 + 35);
  v333[0] = v9;
  v13 = *(v1 + 19);
  v307 = *(v1 + 18);
  v308 = v11;
  v316 = v13;
  v323 = v1[160];
  LODWORD(v13) = *(v1 + 161);
  *(v332 + 3) = *(v1 + 41);
  v332[0] = v13;
  v14 = *(v1 + 22);
  v306 = *(v1 + 21);
  v315 = v14;
  v322 = v1[184];
  LODWORD(v14) = *(v1 + 185);
  *(v331 + 3) = *(v1 + 47);
  v331[0] = v14;
  v15 = *(v1 + 25);
  v311 = *(v1 + 24);
  v321 = v15;
  ObjectType = swift_getObjectType();
  v17 = (*(v3 + 104))(ObjectType, v3);
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v17, v18, 1, v390);
  v398 = v390[6];
  v399 = v390[7];
  v400[0] = v391[0];
  *(v400 + 10) = *(v391 + 10);
  v394 = v390[2];
  v395 = v390[3];
  v396 = v390[4];
  v397 = v390[5];
  v392 = v390[0];
  v393 = v390[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v392) == 1)
  {
    return (*(v3 + 112))(ObjectType, v3);
  }

  v314 = v2;
  v312 = v3;
  v303 = 0;
  v304 = v12;
  v405[2] = v398;
  v405[3] = v399;
  v406[0] = v400[0];
  *(v406 + 10) = *(v400 + 10);
  v403 = v394;
  v404 = v395;
  v405[0] = v396;
  v405[1] = v397;
  v401 = v392;
  v402 = v393;
  v387 = v398;
  v388 = v399;
  v389[0] = v400[0];
  *(v389 + 10) = *(v400 + 10);
  v383 = v394;
  v384 = v395;
  v385 = v396;
  v386 = v397;
  v381 = v392;
  v382 = v393;
  URLComponents.init()(&v372);
  v302 = v6;
  v20 = v318;
  if (!v6)
  {
    v21 = v312;
    v22 = v314;
    goto LABEL_10;
  }

  v21 = v312;
  if (v319 == 4)
  {
    v22 = v314;
    v23 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v314, v312, 4u);
    if (v24)
    {
      goto LABEL_19;
    }

    *&v349 = v23;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v22 = v314;
    v25 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v314, v312, v319);
    if (!v26)
    {
      goto LABEL_19;
    }
  }

  v27 = specialized Set.contains(_:)(v25, v26, v6);

  if (v27)
  {
LABEL_10:

    if (v330)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:

  if ((v330 & 1) == 0)
  {
LABEL_11:
    if (v403)
    {
      v28 = *(&v402 + 1);
      v29 = v403;
    }

    else
    {
      if (BYTE9(v401) & 1) == 0 || !v401 || (*(v401 + 48))
      {
        v28 = 0;
        v29 = 0;
        WORD4(v372) = 0;
        goto LABEL_28;
      }

      v130 = String.subscript.getter();
      v28 = MEMORY[0x1865CAE80](v130);
      v29 = v131;
    }

    WORD4(v372) = 0;
    v30 = specialized Collection.first.getter(v28, v29);
    if ((v30 & 0x100) != 0 || v30 < 0x41u)
    {
    }

    else if ((v29 & 0x1000000000000000) != 0)
    {
      *&v349 = v28;
      *(&v349 + 1) = v29;
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol._ephemeralString.getter();
      v258 = String._bridgeToObjectiveCImpl()();

      v259 = [v258 _fastCharacterContents];
      v260 = v258;
      if (v259)
      {
        *&v349 = v28;
        *(&v349 + 1) = v29;
        StringProtocol._ephemeralString.getter();
        v261 = String._bridgeToObjectiveCImpl()();

        v262 = [v261 length];
        swift_unknownObjectRelease();
        v263 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v259, v262, 1u, 0);
      }

      else
      {
        v263 = specialized Sequence.allSatisfy(_:)(v28, v29, 1);
      }

      v20 = v318;
      if (v263)
      {
LABEL_28:
        *(&v373 + 1) = v28;
        *&v374 = v29;

        v415 = v378;
        v416 = v379;
        v417[0] = v380[0];
        *(v417 + 10) = *(v380 + 10);
        v411 = v374;
        v412 = v375;
        v413 = v376;
        v414 = v377;
        v409 = v372;
        v410 = v373;
        if (!v377)
        {
          if ((BYTE12(v409) & 1) != 0 && v409 && (*(v409 + 120) & 1) == 0)
          {
            v132 = String.subscript.getter();
            MEMORY[0x1865CAE80](v132);
          }

          else
          {
            URLComponents._URLComponents.port.getter();
            if (v38)
            {
              URLComponents._URLComponents.percentEncodedUser.getter();
              if (!v39)
              {
                v22 = v314;
                v34 = v20;
LABEL_49:
                v35 = v305;

                v33 = v320;
                v21 = v312;
                v36 = v329;
                if (!v305)
                {
                  goto LABEL_55;
                }

                goto LABEL_50;
              }
            }
          }
        }

        v407[7] = v378;
        v407[8] = v379;
        v408[0] = v380[0];
        *(v408 + 10) = *(v380 + 10);
        v407[3] = v374;
        v407[4] = v375;
        v407[5] = v376;
        v407[6] = v377;
        v407[1] = v372;
        v407[2] = v373;
        v40 = URLComponents._URLComponents.encodedHost.getter();
        if (!v41)
        {
          goto LABEL_46;
        }

        v42 = v41;
        v43 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v43 = v40 & 0xFFFFFFFFFFFFLL;
        }

        v22 = v314;
        if (!v43)
        {

          v40 = 0;
          v41 = 0xE000000000000000;
          goto LABEL_47;
        }

        if (BYTE8(v408[1]))
        {
          v44 = _s10Foundation13RFC3986ParserV13percentDecode_9excluding8encodingSSSgxSg_Shys5UInt8VGSSAAE8EncodingVtSyRzlFZSS_Tt2B5(v40, v41);
          v46 = v45;

          v41 = v46;
          v40 = v44;
LABEL_47:
          v34 = v20;
          goto LABEL_48;
        }

        v47 = v40;

        v48 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v47, v42);
        if (v49 != 1)
        {
          v59 = v48;
          v60 = v49;
          swift_bridgeObjectRelease_n();
          v41 = v60;
          v40 = v59;
LABEL_46:
          v22 = v314;
          goto LABEL_47;
        }

        *&v349 = v47;
        *(&v349 + 1) = v42;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v50 = String._bridgeToObjectiveCImpl()();

        v51 = [v50 _fastCharacterContents];
        v52 = v50;
        if (v51)
        {
          *&v349 = v47;
          *(&v349 + 1) = v42;
          StringProtocol._ephemeralString.getter();
          v53 = String._bridgeToObjectiveCImpl()();

          [v53 length];
          v54 = swift_unknownObjectRelease();
          MEMORY[0x1EEE9AC00](v54);
          LOBYTE(v287) = 0;
          MEMORY[0x1EEE9AC00](v55);
          v56 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v51);
          v58 = v57;
          swift_bridgeObjectRelease_n();
          v41 = v58;
          v40 = v56;
          v34 = v318;
          v22 = v314;
LABEL_48:
          URLComponents._URLComponents.host.setter(v40, v41);
          goto LABEL_49;
        }

        *&v349 = v47;
        *(&v349 + 1) = v42;

        v246 = String.init<A>(_:)();
        v248 = v246;
        v249 = v247;
        v20 = v318;
        if ((v247 & 0x1000000000000000) != 0)
        {
          v248 = static String._copying(_:)();
          v279 = v278;

          v249 = v279;
          if ((v279 & 0x2000000000000000) == 0)
          {
LABEL_242:
            if ((v248 & 0x1000000000000000) != 0)
            {
              v250 = (v249 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v250 = _StringObject.sharedUTF8.getter();
              if (!v250)
              {
                if (one-time initialization token for idnaTranscoder != -1)
                {
                  swift_once();
                }

                if (byte_1ED436DC0 != 1)
                {
                  goto LABEL_286;
                }

                v255 = 0;
                v257 = 0;
                v20 = v318;
                goto LABEL_245;
              }

              v20 = v318;
            }

            MEMORY[0x1EEE9AC00](v250);
            LOBYTE(v287) = 0;
            MEMORY[0x1EEE9AC00](v251);
            v255 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v252, v253, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v254, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
            v257 = v256;
LABEL_245:
            swift_bridgeObjectRelease_n();

            v40 = v255;
            v41 = v257;
            goto LABEL_46;
          }
        }

        else if ((v247 & 0x2000000000000000) == 0)
        {
          goto LABEL_242;
        }

        *&v349 = v248;
        *(&v349 + 1) = v249 & 0xFFFFFFFFFFFFFFLL;
        MEMORY[0x1EEE9AC00](v246);
        LOBYTE(v287) = 0;
        MEMORY[0x1EEE9AC00](v280);
        v283 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v349, v281, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v282, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
        v285 = v284;

        swift_bridgeObjectRelease_n();
        v41 = v285;
        v40 = v283;
        goto LABEL_46;
      }
    }

    else
    {
      if ((v29 & 0x2000000000000000) != 0)
      {
        v32 = HIBYTE(v29) & 0xF;
        *&v349 = v28;
        *(&v349 + 1) = v29 & 0xFFFFFFFFFFFFFFLL;
        v31 = &v349;
      }

      else if ((v28 & 0x1000000000000000) != 0)
      {
        v31 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v32 = v28 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = _StringObject.sharedUTF8.getter();
      }

      v37 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v31, v32, 1u, 0);

      if (v37)
      {
        goto LABEL_28;
      }
    }

    v288 = 0;
    v287 = 813;
    goto LABEL_281;
  }

LABEL_20:
  v33 = v320;
  v34 = v318;
  v35 = v305;
  v36 = v329;
  if (!v305)
  {
LABEL_55:

    v66 = v317;
    if (v36)
    {
      goto LABEL_56;
    }

    goto LABEL_62;
  }

LABEL_50:

  if (v34 == 4)
  {
    v61 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, 4u);
    if (v62)
    {
      goto LABEL_61;
    }

    *&v349 = v61;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v63 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, v34);
    if (!v64)
    {
      goto LABEL_61;
    }
  }

  v65 = specialized Set.contains(_:)(v63, v64, v35);

  if (v65)
  {
    goto LABEL_55;
  }

LABEL_61:

  v66 = v317;
  if ((v36 & 1) == 0)
  {
LABEL_56:
    v355 = v387;
    v356 = v388;
    v357[0] = v389[0];
    *(v357 + 10) = *(v389 + 10);
    v351 = v383;
    v352 = v384;
    v353 = v385;
    v354 = v386;
    v349 = v381;
    v350 = v382;
    v67 = URLComponents.user.getter();
    v69 = v67;
    v70 = v68;
    BYTE8(v372) = 0;
    BYTE10(v372) = 0;
    if (!v68)
    {
      goto LABEL_74;
    }

    if ((v68 & 0x1000000000000000) != 0)
    {
      *&v370[0] = v67;
      *(&v370[0] + 1) = v68;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v264 = String._bridgeToObjectiveCImpl()();

      v265 = [v264 _fastCharacterContents];
      v266 = v264;
      if (v265)
      {
        *&v370[0] = v69;
        *(&v370[0] + 1) = v70;
        StringProtocol._ephemeralString.getter();
        v267 = String._bridgeToObjectiveCImpl()();

        v268 = [v267 length];
        swift_unknownObjectRelease();
        v74 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v265, v268, 2u, 0);
      }

      else
      {
        v74 = specialized Sequence.allSatisfy(_:)(v69, v70, 2);
      }

      v66 = v317;
      if (v74)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if ((v68 & 0x2000000000000000) != 0)
      {
        v72 = HIBYTE(v68) & 0xF;
        *&v370[0] = v67;
        *(&v370[0] + 1) = v70 & 0xFFFFFFFFFFFFFFLL;
        v71 = v370;
      }

      else if ((v67 & 0x1000000000000000) != 0)
      {
        v71 = ((v68 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v72 = v69 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v71 = _StringObject.sharedUTF8.getter();
      }

      v74 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v71, v72, 2u, 0);
      if (v74)
      {
        goto LABEL_74;
      }
    }

    v75 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v75 = v69 & 0xFFFFFFFFFFFFLL;
    }

    if (v75)
    {
      *&v370[0] = v69;
      *(&v370[0] + 1) = v70;
      MEMORY[0x1EEE9AC00](v74);
      v287 = v370;
      LOWORD(v288) = 2;

      v76 = v303;
      v77 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:), v286, v69, v70);
      v303 = v76;
      if (v78)
      {
        v79 = v77;
        v80 = v78;
        swift_bridgeObjectRelease_n();
        v69 = v79;
      }

      else
      {
        v69 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v69, v70, 2u, 0);
        v80 = v81;
        swift_bridgeObjectRelease_n();
      }

      v70 = v80;
      v22 = v314;
    }

    else
    {

      v69 = 0;
      v70 = 0xE000000000000000;
    }

LABEL_74:

    *(&v374 + 1) = v69;
    *&v375 = v70;
    v33 = v320;
    v21 = v312;
    v73 = v328;
    if (!v66)
    {
      goto LABEL_80;
    }

LABEL_75:

    if (v33 == 4)
    {
      v82 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, 4u);
      if (v83)
      {
        goto LABEL_82;
      }

      *&v349 = v82;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    else
    {
      v84 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, v33);
      if (!v85)
      {
        goto LABEL_82;
      }
    }

    v86 = specialized Set.contains(_:)(v84, v85, v66);

    if (v86)
    {
      goto LABEL_80;
    }

LABEL_82:

    if (v73)
    {
      goto LABEL_92;
    }

LABEL_83:
    v355 = v387;
    v356 = v388;
    v357[0] = v389[0];
    *(v357 + 10) = *(v389 + 10);
    v351 = v383;
    v352 = v384;
    v353 = v385;
    v354 = v386;
    v349 = v381;
    v350 = v382;
    v87 = URLComponents.password.getter();
    v89 = v87;
    v90 = v88;
    BYTE8(v372) = 0;
    BYTE11(v372) = 0;
    if (v88)
    {
      if ((v88 & 0x1000000000000000) != 0)
      {
        *&v370[0] = v87;
        *(&v370[0] + 1) = v88;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v269 = String._bridgeToObjectiveCImpl()();

        v270 = [v269 _fastCharacterContents];
        v271 = v269;
        if (v270)
        {
          *&v370[0] = v89;
          *(&v370[0] + 1) = v90;
          StringProtocol._ephemeralString.getter();
          v272 = String._bridgeToObjectiveCImpl()();

          v273 = [v272 length];
          swift_unknownObjectRelease();
          if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v270, v273, 2u, 0))
          {
            goto LABEL_91;
          }
        }

        else
        {
          v274 = v303;
          v275 = specialized Sequence.allSatisfy(_:)(v89, v90, 2);
          v303 = v274;
          if (v275)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        if ((v88 & 0x2000000000000000) != 0)
        {
          v92 = HIBYTE(v88) & 0xF;
          *&v370[0] = v87;
          *(&v370[0] + 1) = v90 & 0xFFFFFFFFFFFFFFLL;
          v91 = v370;
        }

        else if ((v87 & 0x1000000000000000) != 0)
        {
          v91 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v92 = v89 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v91 = _StringObject.sharedUTF8.getter();
        }

        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v91, v92, 2u, 0))
        {
          goto LABEL_91;
        }
      }

      v89 = _s10Foundation13RFC3986ParserV13percentEncode_9component18skipAlreadyEncodedSSSgxSg_AA13URLComponentsV9ComponentOSbtSyRzlFZSS_Tt2g5(v89, v90, 2u, 0);
      v94 = v93;

      v90 = v94;
    }

LABEL_91:

    *(&v375 + 1) = v89;
    *&v376 = v90;
    v21 = v312;
    goto LABEL_92;
  }

LABEL_62:
  v73 = v328;
  if (v66)
  {
    goto LABEL_75;
  }

LABEL_80:

  if (v73)
  {
    goto LABEL_83;
  }

LABEL_92:
  v407[0] = *(v405 + 8);
  v95 = *&v405[1];
  if (*&v405[1])
  {
    v96 = *&v407[0];
    v97 = v304;
  }

  else
  {
    v97 = v304;
    if ((BYTE12(v401) & 1) != 0 && v401 && (*(v401 + 120) & 1) == 0)
    {
      v117 = String.subscript.getter();
      v96 = MEMORY[0x1865CAE80](v117);
      v95 = v118;
    }

    else
    {
      URLComponents._URLComponents.port.getter();
      if (v98)
      {
        URLComponents._URLComponents.percentEncodedUser.getter();
        if (!v99)
        {
          v116 = 0;
          v104 = v313;
          goto LABEL_136;
        }
      }

      v96 = 0;
      v95 = 0xE000000000000000;
    }
  }

  v100 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v100 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (!v100)
  {
    outlined init with copy of String?(v407, &v349);

    v101 = 0;
    v103 = 0xE000000000000000;
    v104 = v313;
LABEL_127:
    v135 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v135 = v101 & 0xFFFFFFFFFFFFLL;
    }

    if (v135)
    {
      v300 = v101;
      v301 = v103;
      v290 = v326;
      LODWORD(v299) = v327;
      if (!v309)
      {
        v291 = 1;
        v186 = 0;
        v187 = v310;
        v136 = v320;
LABEL_201:
        v298 = v330;
        LOBYTE(v349) = v330;
        *(&v349 + 1) = v339[0];
        DWORD1(v349) = *(v339 + 3);
        *(&v349 + 1) = v319;
        *&v350 = v302;
        v297 = v329;
        BYTE8(v350) = v329;
        *(&v350 + 9) = v338[0];
        HIDWORD(v350) = *(v338 + 3);
        *&v351 = v318;
        *(&v351 + 1) = v35;
        v296 = v328;
        LOBYTE(v352) = v328;
        *(&v352 + 1) = v337[0];
        DWORD1(v352) = *(v337 + 3);
        *(&v352 + 1) = v136;
        *&v353 = v317;
        v295 = v327;
        BYTE8(v353) = v327;
        *(&v353 + 9) = v336[0];
        HIDWORD(v353) = *(v336 + 3);
        *&v354 = v187;
        *(&v354 + 1) = v186;
        v294 = v326;
        LOBYTE(v355) = v326;
        DWORD1(v355) = *(v335 + 3);
        *(&v355 + 1) = v335[0];
        *(&v355 + 1) = v308;
        v293 = v325;
        LOBYTE(v356) = v325;
        DWORD1(v356) = *(v334 + 3);
        *(&v356 + 1) = v334[0];
        *(&v356 + 1) = v313;
        v97 = v304;
        *&v357[0] = v304;
        v292 = v324;
        BYTE8(v357[0]) = v324;
        HIDWORD(v357[0]) = *(v333 + 3);
        *(v357 + 9) = v333[0];
        v214 = v306;
        v215 = v307;
        *&v357[1] = v307;
        *(&v357[1] + 1) = v316;
        v216 = v323;
        v358 = v323;
        *&v359[3] = *(v332 + 3);
        *v359 = v332[0];
        v360 = v306;
        v361 = v315;
        v217 = v322;
        v362 = v322;
        *&v363[3] = *(v331 + 3);
        *v363 = v331[0];
        v364 = v311;
        v365 = v321;
        v219 = v300;
        v218 = v301;
        v289 = URL.FormatStyle.isIPv4(_:)(v300, v301);
        LOBYTE(v349) = v298;
        *(&v349 + 1) = v339[0];
        DWORD1(v349) = *(v339 + 3);
        *(&v349 + 1) = v319;
        *&v350 = v302;
        BYTE8(v350) = v297;
        *(&v350 + 9) = v338[0];
        HIDWORD(v350) = *(v338 + 3);
        *&v351 = v318;
        *(&v351 + 1) = v305;
        LOBYTE(v352) = v296;
        DWORD1(v352) = *(v337 + 3);
        *(&v352 + 1) = v337[0];
        *(&v352 + 1) = v320;
        *&v353 = v317;
        BYTE8(v353) = v295;
        HIDWORD(v353) = *(v336 + 3);
        *(&v353 + 9) = v336[0];
        *&v354 = v310;
        *(&v354 + 1) = v309;
        LOBYTE(v355) = v294;
        DWORD1(v355) = *(v335 + 3);
        *(&v355 + 1) = v335[0];
        *(&v355 + 1) = v308;
        LOBYTE(v356) = v293;
        DWORD1(v356) = *(v334 + 3);
        *(&v356 + 1) = v334[0];
        *(&v356 + 1) = v313;
        *&v357[0] = v97;
        BYTE8(v357[0]) = v292;
        *(v357 + 9) = v333[0];
        HIDWORD(v357[0]) = *(v333 + 3);
        *&v357[1] = v215;
        *(&v357[1] + 1) = v316;
        v297 = v217;
        v298 = v216;
        v358 = v216;
        *v359 = v332[0];
        *&v359[3] = *(v332 + 3);
        v360 = v214;
        v361 = v315;
        v362 = v217;
        *&v363[3] = *(v331 + 3);
        *v363 = v331[0];
        v220 = v218;
        v364 = v311;
        v365 = v321;
        v221 = URL.FormatStyle.isIPv6(_:)(v219, v218);
        v222 = specialized URL.UnicodeLookalikeTable.allCharactersInIDNScriptAllowList(in:)(v219, v218);
        if (v222)
        {
          v223 = v319;
          v224 = v302;
          v21 = v312;
          if ((v299 & 1) == 0)
          {
            v116 = 0;
            v104 = v313;
            v22 = v314;
            goto LABEL_211;
          }
        }

        else
        {
          v222 = specialized URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:)(v219, v218);
          if ((v299 & 1) == 0)
          {
            v116 = v222 ^ 1;
            v21 = v312;
            v104 = v313;
            v22 = v314;
LABEL_211:
            v35 = v305;
            if (v291)
            {
            }

            else
            {
              URLComponents._URLComponents.host.setter(v300, v220);
            }

            goto LABEL_136;
          }

          v223 = v319;
          v224 = v302;
          v21 = v312;
          if ((v222 & 1) == 0)
          {
            if ((v291 & 1) == 0)
            {

              v116 = 1;
              v35 = v305;
              v104 = v313;
              v22 = v314;
              goto LABEL_136;
            }

            v235 = v219;
            v116 = 1;
            v236 = v220;
            v35 = v305;
            v104 = v313;
            v22 = v314;
            goto LABEL_234;
          }
        }

        v225 = v289 | v221;
        *&v349 = 46;
        *(&v349 + 1) = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v222);
        v287 = &v349;

        v226 = v220;
        v227 = v303;
        v229 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v286, v219, v226, v228);
        v303 = v227;
        *&v370[0] = v229;
        if (v290)
        {
          v230 = v225;
          if ((*(v229 + 16) < 4uLL) | v225 & 1)
          {
            v231 = 0;
            v35 = v305;
            v22 = v314;
            v232 = v301;
            if (!v308)
            {
              goto LABEL_229;
            }
          }

          else
          {
            LOBYTE(v349) = v330;
            *(&v349 + 1) = v339[0];
            DWORD1(v349) = *(v339 + 3);
            *(&v349 + 1) = v223;
            *&v350 = v224;
            BYTE8(v350) = v329;
            *(&v350 + 9) = v338[0];
            HIDWORD(v350) = *(v338 + 3);
            *&v351 = v318;
            v35 = v305;
            *(&v351 + 1) = v305;
            LOBYTE(v352) = v328;
            *(&v352 + 1) = v337[0];
            DWORD1(v352) = *(v337 + 3);
            *(&v352 + 1) = v320;
            *&v353 = v317;
            BYTE8(v353) = v327;
            *(&v353 + 9) = v336[0];
            HIDWORD(v353) = *(v336 + 3);
            *&v354 = v310;
            *(&v354 + 1) = v309;
            LOBYTE(v355) = v326;
            DWORD1(v355) = *(v335 + 3);
            *(&v355 + 1) = v335[0];
            *(&v355 + 1) = v308;
            LOBYTE(v356) = v325;
            DWORD1(v356) = *(v334 + 3);
            *(&v356 + 1) = v334[0];
            *(&v356 + 1) = v313;
            *&v357[0] = v97;
            BYTE8(v357[0]) = v324;
            HIDWORD(v357[0]) = *(v333 + 3);
            *(v357 + 9) = v333[0];
            *&v357[1] = v307;
            *(&v357[1] + 1) = v316;
            v358 = v298;
            *&v359[3] = *(v332 + 3);
            *v359 = v332[0];
            v360 = v306;
            v361 = v315;
            v362 = v297;
            *&v363[3] = *(v331 + 3);
            *v363 = v331[0];
            v364 = v311;
            v365 = v321;
            v232 = v301;
            URL.FormatStyle.formatMultiLevelSubdomains(from:forHost:)(v370);
            v230 = v225;
            v231 = 1;
            v22 = v314;
            if (!v308)
            {
              goto LABEL_229;
            }
          }
        }

        else
        {
          v231 = 0;
          v35 = v305;
          v22 = v314;
          v232 = v301;
          v230 = v225;
          if (!v308)
          {
LABEL_229:
            if (v230)
            {
              goto LABEL_230;
            }

            goto LABEL_231;
          }
        }

        v237 = *&v370[0];
        if (*(*&v370[0] + 16) < 3uLL)
        {
          goto LABEL_229;
        }

        if (v230)
        {
LABEL_230:

          v244 = v219;
          v236 = v232;
LABEL_232:

          if ((v291 & 1) == 0)
          {

            v104 = v313;
            if (v231)
            {
              URLComponents._URLComponents.host.setter(v219, v232);
            }

            else
            {
            }

            v116 = 0;
            v97 = v304;
LABEL_136:
            v141 = v325;
            if (!v97)
            {
              goto LABEL_142;
            }

            if (v104 == 4)
            {
              v142 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, 4u);
              if (v143)
              {
                goto LABEL_147;
              }

              *&v349 = v142;
              v144 = dispatch thunk of CustomStringConvertible.description.getter();
            }

            else
            {
              v144 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, v104);
              if (!v145)
              {
                goto LABEL_147;
              }
            }

            v146 = specialized Set.contains(_:)(v144, v145, v97);

            if (v146)
            {
LABEL_142:

              v148 = v315;
              v147 = v316;
              if (v141)
              {
LABEL_143:
                v355 = v387;
                v356 = v388;
                v357[0] = v389[0];
                *(v357 + 10) = *(v389 + 10);
                v351 = v383;
                v352 = v384;
                v353 = v385;
                v354 = v386;
                v349 = v381;
                v350 = v382;
                v149 = URLComponents.port.getter();
                BYTE8(v372) = 0;
                BYTE13(v372) = 0;
                if ((v150 & 1) == 0 && v149 < 0)
                {
                  while (1)
                  {
                    v288 = 0;
                    v287 = 868;
LABEL_281:
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }
                }

                *(&v377 + 1) = v149;
                LOBYTE(v378) = v150 & 1;
                v151 = v324;
                if (!v147)
                {
LABEL_154:

                  v159 = v314;
                  if ((v151 & 1) == 0)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_157;
                }

LABEL_149:
                v152 = v307;
                v153 = v307;

                if (v153 == 4)
                {
                  v154 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v314, v21, 4u);
                  if (v155)
                  {
                    goto LABEL_156;
                  }

                  *&v349 = v154;
                  v156 = dispatch thunk of CustomStringConvertible.description.getter();
                }

                else
                {
                  v156 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v314, v21, v152);
                  if (!v157)
                  {
                    goto LABEL_156;
                  }
                }

                v158 = specialized Set.contains(_:)(v156, v157, v147);

                if (v158)
                {
                  goto LABEL_154;
                }

LABEL_156:

                v159 = v314;
                if (v151)
                {
                  goto LABEL_163;
                }

LABEL_157:
                v355 = v387;
                v356 = v388;
                v357[0] = v389[0];
                *(v357 + 10) = *(v389 + 10);
                v351 = v383;
                v352 = v384;
                v353 = v385;
                v354 = v386;
                v349 = v381;
                v350 = v382;
                v160 = URLComponents.path.getter();
                BYTE8(v372) = 0;
                BYTE14(v372) = 0;
                v162 = HIBYTE(v161) & 0xF;
                if ((v161 & 0x2000000000000000) == 0)
                {
                  v162 = v160 & 0xFFFFFFFFFFFFLL;
                }

                if (v162)
                {
                  v163 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v160, v161, 0);
                  v165 = v164;
                }

                else
                {

                  v163 = 0;
                  v165 = 0xE000000000000000;
                }

                *(&v378 + 1) = v163;
                *&v379 = v165;
LABEL_163:
                v166 = v323;
                LODWORD(v301) = v116;
                if (!v148)
                {
                  goto LABEL_169;
                }

                v167 = v306;
                v168 = v306;

                if (v168 == 4)
                {
                  v169 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v159, v21, 4u);
                  if (v170)
                  {
                    goto LABEL_171;
                  }

                  *&v349 = v169;
                  v171 = dispatch thunk of CustomStringConvertible.description.getter();
                }

                else
                {
                  v171 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v159, v21, v167);
                  if (!v172)
                  {
                    goto LABEL_171;
                  }
                }

                v173 = specialized Set.contains(_:)(v171, v172, v148);

                if (v173)
                {
LABEL_169:

                  if ((v166 & 1) == 0)
                  {
LABEL_181:
                    v190 = v322;
                    if (!v321)
                    {
                      goto LABEL_187;
                    }

                    v191 = v311;
                    v192 = v311;

                    if (v192 == 4)
                    {
                      v193 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v159, v21, 4u);
                      if (v194)
                      {
                        goto LABEL_189;
                      }

                      *&v349 = v193;
                      v195 = dispatch thunk of CustomStringConvertible.description.getter();
                      v197 = v321;
                    }

                    else
                    {
                      v195 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v159, v21, v191);
                      v197 = v321;
                      if (!v196)
                      {
                        goto LABEL_189;
                      }
                    }

                    v198 = specialized Set.contains(_:)(v195, v196, v197);

                    if (v198)
                    {
LABEL_187:

                      if ((v190 & 1) == 0)
                      {
                        goto LABEL_197;
                      }

                      goto LABEL_190;
                    }

LABEL_189:

                    if (v190)
                    {
LABEL_197:
                      v366[0] = v372;
                      v366[1] = v373;
                      v366[4] = v376;
                      v366[5] = v377;
                      v366[2] = v374;
                      v366[3] = v375;
                      *(v367 + 10) = *(v380 + 10);
                      v367[0] = v380[0];
                      v366[6] = v378;
                      v366[7] = v379;
                      v346 = v378;
                      v347 = v379;
                      v348[0] = v380[0];
                      *(v348 + 10) = *(v380 + 10);
                      v342 = v374;
                      v343 = v375;
                      LOBYTE(v349) = v330;
                      *(&v349 + 1) = v339[0];
                      DWORD1(v349) = *(v339 + 3);
                      *(&v349 + 1) = v319;
                      *&v350 = v302;
                      BYTE8(v350) = v329;
                      *(&v350 + 9) = v338[0];
                      HIDWORD(v350) = *(v338 + 3);
                      *&v351 = v318;
                      *(&v351 + 1) = v35;
                      LOBYTE(v352) = v328;
                      DWORD1(v352) = *(v337 + 3);
                      *(&v352 + 1) = v337[0];
                      *(&v352 + 1) = v320;
                      *&v353 = v317;
                      BYTE8(v353) = v327;
                      HIDWORD(v353) = *(v336 + 3);
                      *(&v353 + 9) = v336[0];
                      *&v354 = v310;
                      *(&v354 + 1) = v309;
                      LOBYTE(v355) = v326;
                      DWORD1(v355) = *(v335 + 3);
                      *(&v355 + 1) = v335[0];
                      *(&v355 + 1) = v308;
                      LOBYTE(v356) = v325;
                      DWORD1(v356) = *(v334 + 3);
                      *(&v356 + 1) = v334[0];
                      *(&v356 + 1) = v104;
                      *&v357[0] = v304;
                      BYTE8(v357[0]) = v324;
                      HIDWORD(v357[0]) = *(v333 + 3);
                      *(v357 + 9) = v333[0];
                      *&v357[1] = v307;
                      *(&v357[1] + 1) = v316;
                      v358 = v323;
                      *&v359[3] = *(v332 + 3);
                      *v359 = v332[0];
                      v360 = v306;
                      v361 = v315;
                      v362 = v322;
                      *&v363[3] = *(v331 + 3);
                      *v363 = v331[0];
                      v364 = v311;
                      v365 = v321;
                      v344 = v376;
                      v345 = v377;
                      v340 = v372;
                      v341 = v373;
                      outlined init with copy of URLComponents(v366, v370);
                      v213 = URL.FormatStyle.generateFormattedString(from:useEncodedHost:)(&v340, v301 & 1);
                      outlined destroy of URLComponents._URLComponents?(v390);
                      v368[6] = v346;
                      v368[7] = v347;
                      v369[0] = v348[0];
                      *(v369 + 10) = *(v348 + 10);
                      v368[2] = v342;
                      v368[3] = v343;
                      v368[4] = v344;
                      v368[5] = v345;
                      v368[0] = v340;
                      v368[1] = v341;
                      outlined destroy of URLComponents(v368);
                      v370[6] = v378;
                      v370[7] = v379;
                      v371[0] = v380[0];
                      *(v371 + 10) = *(v380 + 10);
                      v370[2] = v374;
                      v370[3] = v375;
                      v370[4] = v376;
                      v370[5] = v377;
                      v370[0] = v372;
                      v370[1] = v373;
                      outlined destroy of URLComponents(v370);
                      return v213;
                    }

LABEL_190:
                    v355 = v387;
                    v356 = v388;
                    v357[0] = v389[0];
                    *(v357 + 10) = *(v389 + 10);
                    v351 = v383;
                    v352 = v384;
                    v353 = v385;
                    v354 = v386;
                    v349 = v381;
                    v350 = v382;
                    v199 = URLComponents.fragment.getter();
                    v201 = v199;
                    v202 = v200;
                    BYTE8(v372) = 0;
                    LOBYTE(v373) = 0;
                    if (v200)
                    {
                      v203 = v303;
                      v204 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v199, v200, 64, 0);
                      if (v204 == 2)
                      {
                        v314 = v203;
                        *&v370[0] = v201;
                        *(&v370[0] + 1) = v202;
                        lazy protocol witness table accessor for type String and conformance String();
                        StringProtocol._ephemeralString.getter();
                        v205 = String._bridgeToObjectiveCImpl()();

                        v206 = [v205 _fastCharacterContents];
                        v207 = v205;
                        if (v206)
                        {
                          *&v370[0] = v201;
                          *(&v370[0] + 1) = v202;
                          StringProtocol._ephemeralString.getter();
                          v208 = String._bridgeToObjectiveCImpl()();

                          v209 = [v208 length];
                          swift_unknownObjectRelease();
                          v210 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v206, v209, 0x40u, 0);
                        }

                        else
                        {
                          v210 = specialized Sequence.allSatisfy(_:)(v201, v202, 64);
                        }

                        v104 = v313;
                        if (v210)
                        {
                          goto LABEL_196;
                        }

                        goto LABEL_195;
                      }

                      if ((v204 & 1) == 0)
                      {
LABEL_195:
                        v201 = _s10Foundation13RFC3986ParserV13percentEncode_9component18skipAlreadyEncodedSSSgxSg_AA13URLComponentsV9ComponentOSbtSyRzlFZSS_Tt2g5(v201, v202, 8u, 0);
                        v212 = v211;

                        v202 = v212;
                      }
                    }

LABEL_196:

                    *(&v380[0] + 1) = v201;
                    *&v380[1] = v202;
                    goto LABEL_197;
                  }

LABEL_172:
                  v174 = URLComponents._URLComponents.query.getter();
                  v176 = v174;
                  v177 = v175;
                  BYTE8(v372) = 0;
                  HIBYTE(v372) = 0;
                  if (v175)
                  {
                    v178 = v303;
                    v179 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v174, v175, 64, 0);
                    v303 = v178;
                    if (v179 == 2)
                    {
                      *&v349 = v176;
                      *(&v349 + 1) = v177;
                      lazy protocol witness table accessor for type String and conformance String();
                      StringProtocol._ephemeralString.getter();
                      v180 = String._bridgeToObjectiveCImpl()();

                      v181 = [v180 _fastCharacterContents];
                      v182 = v180;
                      if (v181)
                      {
                        *&v349 = v176;
                        *(&v349 + 1) = v177;
                        StringProtocol._ephemeralString.getter();
                        v183 = String._bridgeToObjectiveCImpl()();

                        v184 = [v183 length];
                        swift_unknownObjectRelease();
                        v185 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v181, v184, 0x40u, 0);
                        v104 = v313;
                        if (v185)
                        {
                          goto LABEL_180;
                        }
                      }

                      else
                      {
                        v233 = v303;
                        v234 = specialized Sequence.allSatisfy(_:)(v176, v177, 64);
                        v303 = v233;
                        v104 = v313;
                        if (v234)
                        {
                          goto LABEL_180;
                        }
                      }

                      goto LABEL_179;
                    }

                    if ((v179 & 1) == 0)
                    {
LABEL_179:
                      v176 = _s10Foundation13RFC3986ParserV13percentEncode_9component18skipAlreadyEncodedSSSgxSg_AA13URLComponentsV9ComponentOSbtSyRzlFZSS_Tt2g5(v176, v177, 6u, 0);
                      v189 = v188;

                      v177 = v189;
                    }
                  }

LABEL_180:

                  *(&v379 + 1) = v176;
                  *&v380[0] = v177;
                  v21 = v312;
                  goto LABEL_181;
                }

LABEL_171:

                if (v166)
                {
                  goto LABEL_181;
                }

                goto LABEL_172;
              }

LABEL_148:
              v151 = v324;
              if (!v147)
              {
                goto LABEL_154;
              }

              goto LABEL_149;
            }

LABEL_147:

            v148 = v315;
            v147 = v316;
            if ((v141 & 1) == 0)
            {
              goto LABEL_143;
            }

            goto LABEL_148;
          }

          v116 = 0;
          v235 = v244;
          v104 = v313;
LABEL_234:
          URLComponents._URLComponents.host.setter(v235, v236);
          v97 = v304;
          goto LABEL_136;
        }

        v238 = *(*&v370[0] + 40);
        v299 = *(*&v370[0] + 32);
        v240 = *(*&v370[0] + 48);
        v239 = *(*&v370[0] + 56);

        v241 = MEMORY[0x1865CAE80](v299, v238, v240, v239);
        v243 = v242;

        LOBYTE(v239) = specialized Set.contains(_:)(v241, v243, v308);

        if ((v239 & 1) == 0)
        {
LABEL_231:
          *&v349 = *&v370[0];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [Substring] and conformance [A], &_sSaySsGMd);
          lazy protocol witness table accessor for type Substring and conformance Substring();
          v244 = Sequence<>.joined(separator:)();
          v236 = v245;

          v232 = v301;
          goto LABEL_232;
        }

        if (*(v237 + 16))
        {
          v231 = 1;
          specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
          goto LABEL_231;
        }

        __break(1u);
        goto LABEL_269;
      }

      v136 = v320;
      if (v310 == 4)
      {
        v137 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, 4u);
        if ((v138 & 1) == 0)
        {
          *&v349 = v137;
          v139 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_199:
          v186 = v309;
          v291 = specialized Set.contains(_:)(v139, v140, v309);

          v187 = v310;
          goto LABEL_201;
        }
      }

      else
      {
        v139 = specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(v22, v21, v310);
        if (v140)
        {
          goto LABEL_199;
        }
      }

      v291 = 0;
      v186 = v309;
      v187 = v310;
      goto LABEL_201;
    }

LABEL_135:
    v116 = 0;
    goto LABEL_136;
  }

  if (BYTE8(v406[1]))
  {
    outlined init with copy of String?(v407, &v349);
    v101 = _s10Foundation13RFC3986ParserV13percentDecode_9excluding8encodingSSSgxSg_Shys5UInt8VGSSAAE8EncodingVtSyRzlFZSS_Tt2B5(v96, v95);
    v103 = v102;

    v104 = v313;
    if (!v103)
    {
      goto LABEL_135;
    }

    goto LABEL_127;
  }

  outlined init with copy of String?(v407, &v349);

  v105 = v303;
  v106 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v96, v95);
  v303 = v105;
  if (v107 != 1)
  {
    v101 = v106;
    v103 = v107;
    goto LABEL_126;
  }

  *&v349 = v96;
  *(&v349 + 1) = v95;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v108 = String._bridgeToObjectiveCImpl()();

  v109 = [v108 _fastCharacterContents];
  v110 = v108;
  if (v109)
  {
    *&v349 = v96;
    *(&v349 + 1) = v95;
    StringProtocol._ephemeralString.getter();
    v111 = String._bridgeToObjectiveCImpl()();

    [v111 length];
    v112 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v112);
    LOBYTE(v287) = 0;
    MEMORY[0x1EEE9AC00](v113);
    v101 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v109);
    v115 = v114;
    swift_bridgeObjectRelease_n();
    v103 = v115;
    v21 = v312;
    v104 = v313;
    v97 = v304;
    if (!v115)
    {
      goto LABEL_135;
    }

    goto LABEL_127;
  }

  *&v349 = v96;
  *(&v349 + 1) = v95;

  v119 = String.init<A>(_:)();
  v120 = v119;
  v122 = v121;
  if ((v121 & 0x1000000000000000) != 0)
  {
    v120 = static String._copying(_:)();
    v277 = v276;

    v122 = v277;
  }

  v97 = v304;
  v21 = v312;
  if ((v122 & 0x2000000000000000) != 0)
  {
    *&v349 = v120;
    *(&v349 + 1) = v122 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v119);
    LOBYTE(v287) = 0;
    MEMORY[0x1EEE9AC00](v133);
    v128 = partial apply for closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:);
    v129 = partial apply for closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:);
    v125 = &v349;
    goto LABEL_125;
  }

  if ((v120 & 0x1000000000000000) != 0)
  {
    v123 = (v122 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_120:
    MEMORY[0x1EEE9AC00](v123);
    LOBYTE(v287) = 0;
    MEMORY[0x1EEE9AC00](v124);
    v128 = closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply;
    v129 = closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply;
LABEL_125:
    v101 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v125, v126, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, v128, v127, v129);
    v103 = v134;

LABEL_126:
    swift_bridgeObjectRelease_n();
    v104 = v313;
    if (!v103)
    {
      goto LABEL_135;
    }

    goto LABEL_127;
  }

  v123 = _StringObject.sharedUTF8.getter();
  if (v123)
  {
    v97 = v304;
    v35 = v305;
    v21 = v312;
    v22 = v314;
    goto LABEL_120;
  }

LABEL_269:
  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {

    swift_bridgeObjectRelease_n();
    v116 = 0;
    v97 = v304;
    v35 = v305;
    v21 = v312;
    v104 = v313;
    v22 = v314;
    goto LABEL_136;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  swift_slowAlloc();
  __break(1u);
LABEL_286:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v8[4] == v8[0])
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 2;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  else
  {
    v3 = dispatch thunk of Collection.subscript.read();
    v5 = v4[3];
    v7 = *v4;
    v6 = v4[1];
    *(a1 + 32) = v4[2];
    *(a1 + 48) = v5;
    *a1 = v7;
    *(a1 + 16) = v6;
    return v3(v8, 0);
  }

  return result;
}

uint64_t specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v5);
    return _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v9, v8, v6, 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v7, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v3 = _StringObject.sharedUTF8.getter();
    }

    result = closure #1 in static UIDNAHookICU.IDNACodedHost<A>(_:encodeToASCII:)(v3, &v10);
    if (!v2)
    {
      return v10;
    }
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  String.index(before:)();

  return String.remove(at:)();
}

void static URL.FormatStyle.ComponentDisplayOption.never.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

Swift::Int static URL.FormatStyle.ComponentDisplayOption.omitIfHTTPFamily.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v2 = static _SetStorage.allocate(capacity:)();
  v3 = v2 + 56;
  v5 = *aHttp_0;
  v4 = unk_1EEED44F0;
  Hasher.init(_seed:)();

  String.hash(into:)();
  result = Hasher._finalize()();
  v7 = -1 << *(v2 + 32);
  v8 = result & ~v7;
  v9 = v8 >> 6;
  v10 = *(v2 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    while (1)
    {
      v13 = (*(v2 + 48) + 16 * v8);
      if (*v13 == v5 && v13[1] == v4)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v3 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    *(v3 + 8 * v9) = v11 | v10;
    v15 = (*(v2 + 48) + 16 * v8);
    *v15 = v5;
    v15[1] = v4;
    v16 = *(v2 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_24;
    }

    *(v2 + 16) = v18;
  }

  v20 = *aHttps_0;
  v19 = unk_1EEED4500;
  Hasher.init(_seed:)();

  String.hash(into:)();
  result = Hasher._finalize()();
  v21 = -1 << *(v2 + 32);
  v22 = result & ~v21;
  v23 = v22 >> 6;
  v24 = *(v3 + 8 * (v22 >> 6));
  v25 = 1 << v22;
  if (((1 << v22) & v24) != 0)
  {
    v26 = ~v21;
    while (1)
    {
      v27 = (*(v2 + 48) + 16 * v22);
      if (*v27 == v20 && v27[1] == v19)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v22 = (v22 + 1) & v26;
      v23 = v22 >> 6;
      v24 = *(v3 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if (((1 << v22) & v24) == 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

LABEL_20:
  *(v3 + 8 * v23) = v25 | v24;
  v29 = (*(v2 + 48) + 16 * v22);
  *v29 = v20;
  v29[1] = v19;
  v30 = *(v2 + 16);
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v17)
  {
    *(v2 + 16) = v31;
LABEL_23:
    result = swift_arrayDestroy();
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URL.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URL.FormatStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation3URLV11FormatStyleV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v53 = v1[24];
  v9 = *(v1 + 5);
  v44 = *(v1 + 4);
  v45 = v9;
  v43 = v1[48];
  v10 = *(v1 + 7);
  v41 = *(v1 + 8);
  v42 = v10;
  v40 = v1[72];
  v11 = *(v1 + 11);
  v36 = *(v1 + 10);
  v37 = v11;
  v38 = v1[96];
  v39 = *(v1 + 13);
  v33 = v1[112];
  v12 = *(v1 + 16);
  v34 = *(v1 + 15);
  v35 = v12;
  v30 = v1[136];
  v13 = *(v1 + 19);
  v31 = *(v1 + 18);
  v32 = v13;
  v27 = v1[160];
  v14 = *(v1 + 22);
  v28 = *(v1 + 21);
  v29 = v14;
  HIDWORD(v24) = v1[184];
  v15 = *(v1 + 25);
  v25 = *(v1 + 24);
  v26 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v48 = v6;
  v49 = v7;
  v50 = v8;
  v16 = v5;
  v54 = 0;
  lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption();
  v17 = v46;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v17)
  {

    return (*(v47 + 8))(v5, v3);
  }

  else
  {
    v20 = v41;
    v19 = v42;
    v21 = v43;
    v22 = v40;
    v23 = v47;

    v48 = v53;
    v49 = v44;
    v50 = v45;
    v54 = 1;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v48 = v21;
    v49 = v19;
    v50 = v20;
    v54 = 2;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v48 = v22;
    v49 = v36;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v54 = 3;
    lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v48 = v33;
    v49 = v34;
    v50 = v35;
    v54 = 4;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v48 = v30;
    v49 = v31;
    v50 = v32;
    v54 = 5;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v48 = v27;
    v49 = v28;
    v50 = v29;
    v54 = 6;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v48 = BYTE4(v24);
    v49 = v25;
    v50 = v26;
    v54 = 7;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v23 + 8))(v16, v3);
  }
}

void URL.FormatStyle.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  v6 = v2[24];
  v7 = *(v2 + 5);
  v19 = v2[48];
  v12 = *(v2 + 4);
  v13 = *(v2 + 7);
  v20 = *(v2 + 8);
  v21 = v2[72];
  v8 = *(v2 + 11);
  v22 = v2[96];
  v23 = *(v2 + 13);
  v24 = v2[112];
  v9 = *(v2 + 16);
  v14 = *(v2 + 10);
  v15 = *(v2 + 15);
  v25 = v2[136];
  v10 = *(v2 + 19);
  v16 = *(v2 + 18);
  v26 = v2[160];
  v17 = *(v2 + 21);
  v27 = *(v2 + 22);
  v28 = v2[184];
  v11 = *(v2 + 25);
  v18 = *(v2 + 24);
  MEMORY[0x1865CD060](*v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v5]);
    specialized Set.hash(into:)(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](v6);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v12]);
    specialized Set.hash(into:)(a1, v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](v19);
  if (v20)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v13]);
    specialized Set.hash(into:)(a1, v20);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](v21);
  if (v8)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v14]);
    specialized Set.hash(into:)(a1, v8);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v22);
  if (v23)
  {
    Hasher._combine(_:)(1u);
    specialized Set.hash(into:)(a1, v23);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](v24);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v15]);
    specialized Set.hash(into:)(a1, v9);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](v25);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v16]);
    specialized Set.hash(into:)(a1, v10);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](v26);
  if (v27)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v17]);
    specialized Set.hash(into:)(a1, v27);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1865CD060](v28);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v18]);

    specialized Set.hash(into:)(a1, v11);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int URL.FormatStyle.hashValue.getter()
{
  Hasher.init(_seed:)();
  URL.FormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t URL.FormatStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation3URLV11FormatStyleV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v9 = a1[3];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v61 = a2;
  v62 = v6;
  LOBYTE(v63) = 0;
  lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption();
  v10 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v76[0];
  v12 = v77;
  v60 = v78;
  LOBYTE(v63) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v57 = v11;
  v58 = v12;
  v13 = v76[0];
  v14 = v77;
  v59 = v78;
  LOBYTE(v63) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v55 = v13;
  v54 = v14;
  v15 = v76[0];
  v16 = v77;
  v56 = v78;
  LOBYTE(v63) = 3;
  lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v16;
  v52 = v15;
  v50 = v76[0];
  v17 = v77;
  v53 = v78;
  LODWORD(v16) = v79;
  v18 = v80;
  LOBYTE(v63) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v16;
  v46 = v17;
  LODWORD(v17) = v76[0];
  v19 = v77;
  v48 = 0;
  v49 = v78;
  LOBYTE(v63) = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v17;
  v44 = v19;
  LODWORD(v17) = v76[0];
  v42 = v77;
  v47 = v78;
  LOBYTE(v63) = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v18;
  LODWORD(v18) = v17;
  v40 = v76[0];
  v21 = v77;
  v41 = v78;
  v106 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v62 + 8))(v8, v10);
  v39 = v107;
  v48 = *(&v108 + 1);
  v62 = v108;
  LOBYTE(v63) = v57;
  v22 = v59;
  v23 = v60;
  *(&v63 + 1) = v58;
  *&v64 = v60;
  BYTE8(v64) = v55;
  v24 = v53;
  *&v65 = v54;
  *(&v65 + 1) = v59;
  LOBYTE(v66) = v52;
  v25 = v56;
  *(&v66 + 1) = v51;
  *&v67 = v56;
  BYTE8(v67) = v50;
  *&v68 = v46;
  *(&v68 + 1) = v53;
  LOBYTE(v69) = v45;
  *(&v69 + 1) = v20;
  LOBYTE(v70) = v43;
  *(&v70 + 1) = v44;
  *&v71 = v49;
  v38 = v18;
  BYTE8(v71) = v18;
  *&v72 = v42;
  *(&v72 + 1) = v47;
  LOBYTE(v18) = v40;
  LOBYTE(v73) = v40;
  *(&v73 + 1) = v21;
  *&v74 = v41;
  BYTE8(v74) = v107;
  v75 = v108;
  v26 = v70;
  v37 = v21;
  v27 = v61;
  v61[6] = v69;
  v27[7] = v26;
  v28 = v63;
  v29 = v64;
  v30 = v68;
  v27[4] = v67;
  v27[5] = v30;
  v31 = v66;
  v27[2] = v65;
  v27[3] = v31;
  *v27 = v28;
  v27[1] = v29;
  v32 = v71;
  v33 = v72;
  v34 = v75;
  v35 = v73;
  v27[11] = v74;
  v27[12] = v34;
  v27[9] = v33;
  v27[10] = v35;
  v27[8] = v32;
  outlined init with copy of URL.FormatStyle(&v63, v76);
  __swift_destroy_boxed_opaque_existential_1(v113);
  v76[0] = v57;
  v77 = v58;
  v78 = v23;
  v79 = v55;
  v80 = v54;
  v81 = v22;
  v82 = v52;
  v83 = v51;
  v84 = v25;
  v85 = v50;
  v86 = v46;
  v87 = v24;
  v88 = v45;
  v89 = v20;
  v90 = v43;
  *v91 = v112[0];
  *&v91[3] = *(v112 + 3);
  v92 = v44;
  v93 = v49;
  v94 = v38;
  *v95 = *v111;
  *&v95[3] = *&v111[3];
  v96 = v42;
  v97 = v47;
  v98 = v18;
  *v99 = *v110;
  *&v99[3] = *&v110[3];
  v100 = v37;
  v101 = v41;
  v102 = v39;
  *&v103[3] = *&v109[3];
  *v103 = *v109;
  v104 = v62;
  v105 = v48;
  return outlined destroy of URL.FormatStyle(v76);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.FormatStyle()
{
  Hasher.init(_seed:)();
  URL.FormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.FormatStyle()
{
  Hasher.init(_seed:)();
  URL.FormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t URL.FormatStyle.Component.description.getter()
{
  v1 = *v0;
  v2 = 0x656D65686373;
  v3 = 0x7972657571;
  if (v1 != 6)
  {
    v3 = 0x746E656D67617266;
  }

  v4 = 1953656688;
  if (v1 != 4)
  {
    v4 = 1752457584;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64726F7773736170;
  if (v1 != 2)
  {
    v5 = 1953722216;
  }

  if (*v0)
  {
    v2 = 0x656D616E72657375;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(uint64_t a1, void (**a2)(void, void), unsigned __int8 a3)
{
  ObjectType = swift_getObjectType();
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        a2[22](ObjectType, a2);
      }

      else
      {
        a2[24](ObjectType, a2);
      }
    }

    else if (a3)
    {
      a2[20](ObjectType, a2);
    }

    else
    {
      a2[17](ObjectType, a2);
    }

    goto LABEL_19;
  }

  if (a3 > 5u)
  {
    if (a3 == 6)
    {
      a2[32](ObjectType, a2);
    }

    else
    {
      a2[34](ObjectType, a2);
    }

    goto LABEL_19;
  }

  if (a3 != 4)
  {
    a2[30](ObjectType, a2);
LABEL_19:

    return 0;
  }

  a2[26](ObjectType, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized URL.FormatStyle.Component.getComponentValue<A>(from:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  ObjectType = swift_getObjectType();
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        (*(a2 + 176))(ObjectType, a2);
      }

      else
      {
        (*(a2 + 192))(ObjectType, a2);
      }
    }

    else if (a3)
    {
      (*(a2 + 160))(ObjectType, a2);
    }

    else
    {
      (*(a2 + 136))(ObjectType, a2);
    }

    goto LABEL_16;
  }

  if (a3 > 5u)
  {
    if (a3 == 6)
    {
      (*(a2 + 256))(ObjectType, a2);
    }

    else
    {
      (*(a2 + 272))(ObjectType, a2);
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    return v7;
  }

  if (a3 == 4)
  {
    (*(a2 + 208))(ObjectType, a2);
    return 0;
  }

  return (*(a2 + 240))(ObjectType, a2);
}

uint64_t URL.FormatStyle.Component.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 15)
  {
    if (result > 63)
    {
      if (result == 64)
      {
        *a2 = 6;
        return result;
      }

      if (result == 128)
      {
        *a2 = 7;
        return result;
      }
    }

    else
    {
      if (result == 16)
      {
        *a2 = 4;
        return result;
      }

      if (result == 32)
      {
        *a2 = 5;
        return result;
      }
    }
  }

  else if (result > 3)
  {
    if (result == 4)
    {
      *a2 = 2;
      return result;
    }

    if (result == 8)
    {
      *a2 = 3;
      return result;
    }
  }

  else
  {
    if (result == 1)
    {
      *a2 = 0;
      return result;
    }

    if (result == 2)
    {
      *a2 = 1;
      return result;
    }
  }

  *a2 = 8;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.FormatStyle.Component()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](qword_1812E3860[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.FormatStyle.Component()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](qword_1812E3860[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL.FormatStyle.Component()
{
  v1 = *v0;
  v2 = 0x656D65686373;
  v3 = 0x7972657571;
  if (v1 != 6)
  {
    v3 = 0x746E656D67617266;
  }

  v4 = 1953656688;
  if (v1 != 4)
  {
    v4 = 1752457584;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64726F7773736170;
  if (v1 != 2)
  {
    v5 = 1953722216;
  }

  if (*v0)
  {
    v2 = 0x656D616E72657375;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t URL.FormatStyle.ComponentDisplayCondition.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(16);

  v2 = 0xE600000000000000;
  v3 = 0x656D65686373;
  v4 = 0xE500000000000000;
  v5 = 0x7972657571;
  if (v1 != 6)
  {
    v5 = 0x746E656D67617266;
    v4 = 0xE800000000000000;
  }

  v6 = 1953656688;
  if (v1 != 4)
  {
    v6 = 1752457584;
  }

  if (v1 <= 5)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64726F7773736170;
  if (v1 != 2)
  {
    v8 = 1953722216;
    v7 = 0xE400000000000000;
  }

  if (v1)
  {
    v3 = 0x656D616E72657375;
    v2 = 0xE800000000000000;
  }

  if (v1 > 1)
  {
    v3 = v8;
    v2 = v7;
  }

  if (v1 <= 3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (v1 <= 3)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x1865CB0E0](v9, v10);

  MEMORY[0x1865CB0E0](0x7365686374616D20, 0xE900000000000020);
  v11 = Set.description.getter();
  MEMORY[0x1865CB0E0](v11);

  return 2123369;
}

uint64_t URL.FormatStyle.ComponentDisplayCondition.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation3URLV11FormatStyleV25ComponentDisplayConditionV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v12 = 0;
  lazy protocol witness table accessor for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t URL.FormatStyle.ComponentDisplayCondition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation3URLV11FormatStyleV25ComponentDisplayConditionV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    lazy protocol witness table accessor for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    v13 = 1;
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys()
{
  if (*v0)
  {
    return 0x6D65726975716572;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.FormatStyle.ComponentDisplayCondition()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](qword_1812E3860[v1]);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance URL.FormatStyle.ComponentDisplayCondition(uint64_t a1)
{
  v3 = *(v1 + 1);
  MEMORY[0x1865CD060](qword_1812E3860[*v1]);

  return specialized Set.hash(into:)(a1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.FormatStyle.ComponentDisplayCondition()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](qword_1812E3860[v1]);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance URL.FormatStyle.ComponentDisplayCondition(char *a1, char *a2)
{
  if (qword_1812E3860[*a1] == qword_1812E3860[*a2])
  {
    return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t URL.FormatStyle.ComponentDisplayOption.description.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  if (*v0)
  {
    if (!v1)
    {
      return 0x737961776C61;
    }

    _StringGuts.grow(_:)(24);

    v3 = 0xD000000000000015;
  }

  else
  {
    if (!v1)
    {
      return 0x726576656ELL;
    }

    _StringGuts.grow(_:)(22);

    v3 = 0xD000000000000013;
  }

  v15 = v3;
  _StringGuts.grow(_:)(16);

  v4 = 0xE600000000000000;
  v5 = 0xE500000000000000;
  v6 = 0x7972657571;
  if (v2 != 6)
  {
    v6 = 0x746E656D67617266;
    v5 = 0xE800000000000000;
  }

  v7 = 1953656688;
  if (v2 != 4)
  {
    v7 = 1752457584;
  }

  if (v2 <= 5u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x64726F7773736170;
  if (v2 != 2)
  {
    v9 = 1953722216;
    v8 = 0xE400000000000000;
  }

  v10 = 0x656D616E72657375;
  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x656D65686373;
  }

  if (v2 > 1u)
  {
    v4 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (v2 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1865CB0E0](v11, v12);

  MEMORY[0x1865CB0E0](0x7365686374616D20, 0xE900000000000020);
  v13 = Set.description.getter();
  MEMORY[0x1865CB0E0](v13);

  MEMORY[0x1865CB0E0](2123369, 0xE300000000000000);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v15;
}

uint64_t static URL.FormatStyle.ComponentDisplayOption.displayWhen(_:matches:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *a3 = 1;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
}

uint64_t static URL.FormatStyle.ComponentDisplayOption.omitWhen(_:matches:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *a3 = 0;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys()
{
  if (*v0)
  {
    return 0x6F697469646E6F63;
  }

  else
  {
    return 0x6E6F6974706FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URL.FormatStyle.ComponentDisplayOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation3URLV11FormatStyleV22ComponentDisplayOptionV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = v7;
  v14 = 0;
  lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v8;
    v14 = 1;
    lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}