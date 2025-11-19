uint64_t sub_18841CE3C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E388, &qword_1886FAE78);
  }

  else
  {
    return sub_1883FF3C0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18841CE68()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E390, &qword_1886FAE80);
  }

  else
  {
    return sub_1883FF3C0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18841CE94()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E398, &qword_1886FAE88);
  }

  else
  {
    return sub_1883FF3C0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18841CEC0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E3A0, &unk_1886FAE90);
  }

  else
  {
    return sub_1883FF3C0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18841CEEC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E3A8, &qword_1886FAEA0);
  }

  else
  {
    return sub_1883FF3C0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18841CF18()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&unk_1EA90E3B0, qword_1886FAEA8);
  }

  else
  {
    return sub_1883FF3C0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18841CF44()
{
  swift_weakDestroy();
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18841CF84()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E5F0, &qword_1886FBB58);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_18841CFB4(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = *_emptyDequeStorage.unsafeMutableAddressor();
  *(v1 + 112) = a1 & 1;

  return v1;
}

uint64_t sub_18841D000()
{
  sub_18844E6FC(&qword_1EA90D710, &qword_1886F86F8);
  result = swift_allocObject();
  v1 = result;
  *(result + 16) = xmmword_1886FAC20;
  *(result + 32) = xmmword_1886FAC30;
  if (qword_1EA90C8A0 != -1)
  {
    result = swift_once();
  }

  *(v1 + 48) = qword_1EA90C8A8;
  qword_1EA919C30 = v1;
  return result;
}

uint64_t sub_18841D0B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  type metadata accessor for CKAsyncSerialQueue();
  swift_allocObject();
  *(v4 + 120) = sub_18841CFB4(0);
  sub_18844E6FC(a3, a4);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_18841D168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_18840378C(a1, a2, a3, a4);
  sub_1883F7B50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1883F7EE0();
  v9(v8);
  return v4;
}

uint64_t sub_18841D26C(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_shortDescription(v3, v5, v6);
    v22 = 138543362;
    v23 = v7;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "%{public}@ moving in flight record zone changes to pending", &v22, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 96);
    v10 = *(v8 + 104);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v9;
  objc_msgSend_unionOrderedSet_(v11, v12, v10);

  v15 = *(a1 + 32);
  if (v15)
  {
    objc_msgSend_removeAllObjects(*(v15 + 104), v13, v14);
  }

  else
  {
    objc_msgSend_removeAllObjects(0, v13, v14);
  }

  result = objc_msgSend_hasInFlightUntrackedChanges(*(a1 + 32), v16, v17);
  if (result)
  {
    objc_msgSend_setHasPendingUntrackedChanges_(*(a1 + 32), v19, 1);
    result = objc_msgSend_setHasInFlightUntrackedChanges_(*(a1 + 32), v20, 0);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18841D4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18841D550(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_shortDescription(v3, v5, v6);
    v18 = 138543362;
    v19 = v7;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "%{public}@ moving in flight asset syncs to pending", &v18, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 120);
    v10 = *(v8 + 128);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v9;
  objc_msgSend_unionOrderedSet_(v11, v12, v10);

  v15 = *(a1 + 32);
  if (v15)
  {
    result = objc_msgSend_removeAllObjects(*(v15 + 128), v13, v14);
  }

  else
  {
    result = objc_msgSend_removeAllObjects(0, v13, v14);
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_18841D694(uint64_t a1)
{
  if (qword_1EA90C7A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EA919C18);
  [qword_1EA919C20 addObject_];
  v2 = [qword_1EA919C20 allObjects];
  type metadata accessor for SyncEngine();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  os_unfair_lock_unlock(&dword_1EA919C18);
  sub_18841D7B0(v3);
}

id sub_18841D76C()
{
  result = [objc_opt_self() weakObjectsHashTable];
  dword_1EA919C18 = 0;
  qword_1EA919C20 = result;
  return result;
}

uint64_t sub_18841D7B0(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1883F4C9C(a1);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v60 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      goto LABEL_59;
    }

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18CFD59D0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      ++v5;
      v7 = [*(v6 + 144) containerID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v60 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v2 != v5);
    v3 = v60;
  }

  v9 = sub_18841DE10(v3);
  v53 = sub_18841BA88(v9, MEMORY[0x1E69E69A8]);

  v10 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v61 = MEMORY[0x1E69E7CC0];
    result = sub_18841DF0C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      goto LABEL_60;
    }

    v11 = 0;
    v10 = v61;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x18CFD59D0](v11, v1);
      }

      else
      {
        v12 = *(v1 + 8 * v11 + 32);
      }

      v13 = [*(v12 + 136) databaseScope];

      v15 = *(v61 + 16);
      v14 = *(v61 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_18841DF0C((v14 > 1), v15 + 1, 1);
      }

      ++v11;
      *(v61 + 16) = v15 + 1;
      *(v61 + 8 * v15 + 32) = v13;
    }

    while (v2 != v11);
  }

  v59 = *(sub_18841E02C(v10) + 16);

  result = sub_1883F4C9C(v1);
  v16 = v53;
  v58 = result;
  if (result)
  {
    v17 = 0;
    v56 = v1;
    v57 = v1 & 0xC000000000000001;
    v54 = v1 + 32;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v57)
      {
        result = MEMORY[0x18CFD59D0](v17, v1);
        v18 = result;
      }

      else
      {
        if (v17 >= *(v55 + 16))
        {
          goto LABEL_58;
        }

        v18 = *(v54 + 8 * v17);
      }

      if (__OFADD__(v17++, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      v20 = MEMORY[0x1E69E7CC0];
      if (v16 >= 2)
      {
        v21 = [*(v18 + 144) containerID];
        v22 = [v21 containerIdentifier];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        sub_1883F8CAC();
        v20 = v26;
        v27 = *(v26 + 16);
        if (v27 >= *(v26 + 24) >> 1)
        {
          sub_1883F8CAC();
          v20 = v52;
        }

        *(v20 + 16) = v27 + 1;
        v28 = v20 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
      }

      if (v59 >= 2)
      {
        break;
      }

      if (!*(v20 + 16))
      {
        _print_unlocked<A, B>(_:_:)();
        v30 = 0;
        v32 = 0xE000000000000000;
        for (i = 15; i >> 14; i = String.index(after:)())
        {
          v42 = String.subscript.getter();
          v44 = v43;
          v45 = v42 == 48 && v43 == 0xE100000000000000;
          if (v45 || (v46 = v42, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v46 == 120 ? (v47 = v44 == 0xE100000000000000) : (v47 = 0), v47))
          {
          }

          else
          {
            v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v48 & 1) == 0)
            {
              if (i >> 14)
              {
                goto LABEL_61;
              }

              String.subscript.getter();

              sub_18841E33C();
              String.append<A>(contentsOf:)();

              v30 = 30768;
              v32 = 0xE200000000000000;
              break;
            }
          }
        }

        v16 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_55:
          v49 = *(v20 + 16);
          sub_1883F8CAC();
          v20 = v50;
        }

LABEL_31:
        v33 = *(v20 + 16);
        if (v33 >= *(v20 + 24) >> 1)
        {
          sub_1883F8CAC();
          v20 = v51;
        }

        *(v20 + 16) = v33 + 1;
        v34 = v20 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v32;
        v1 = v56;
      }

      sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
      sub_1883F94A4();
      v35 = BidirectionalCollection<>.joined(separator:)();
      v37 = v36;

      v38 = v18 + OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex;
      os_unfair_lock_lock((v18 + OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex));
      v39 = *(v38 + 16);

      *(v38 + 8) = v35;
      *(v38 + 16) = v37;

      os_unfair_lock_unlock(v38);

      v40 = *(v18 + 128);

      sub_18841E390();

      if (v17 == v58)
      {
        return result;
      }
    }

    v29 = CKDatabaseScopeString([*(v18 + 136) databaseScope]);
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  return result;
}

char *sub_18841DF0C(char *a1, int64_t a2, char a3)
{
  result = sub_18841DF2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18841DF2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D710, &qword_1886F86F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_18841E02C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Scope(0);
  v4 = v3;
  v5 = sub_188504BF0();
  v6 = MEMORY[0x18CFD55A0](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_18841E114(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

BOOL sub_18841E114(Swift::Int *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a2);
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_18841E204(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

Swift::Int sub_18841E204(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_188501958(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_188503394(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x18CFD5EB0](v5);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for Scope(0);
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_188502BE8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_18841E33C()
{
  result = qword_1EA90C8D0;
  if (!qword_1EA90C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C8D0);
  }

  return result;
}

void sub_18841E390()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x18CFD5010]();

  [v1 setLoggingID_];
}

uint64_t sub_18841E3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v9 = sub_1883F8AE4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = [objc_opt_self() defaultCenter];
  v13 = NSNotificationCenter.notifications(named:object:)();

  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v14, v15, v16, v17);
  sub_1883F7B88();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v13;
  v19[5] = v18;
  v19[6] = a3;
  v19[7] = a4;

  sub_1884101D8();
  sub_188453610();
  v21 = v20;
  v22 = v5 + OBJC_IVAR____TtC8CloudKit10SyncEngine_notificationObserverTasksMutex;
  os_unfair_lock_lock(v22);
  sub_18841E608();
  v23 = *(*(v22 + 8) + 16);
  sub_18841EB58();
  v24 = *(v22 + 8);
  *(v24 + 16) = v23 + 1;
  *(v24 + 8 * v23 + 32) = v21;

  os_unfair_lock_unlock(v22);
}

uint64_t sub_18841E5B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void *sub_18841E62C()
{
  v1[575] = v2;
  v1[576] = v0;

  return memcpy(v1 + 577, v1 + 661, 0x50uLL);
}

uint64_t sub_18841E65C()
{
  v2 = objc_opt_self();
  v3 = [v2 sharedScheduler];
  sub_18841FC48();
  sub_1884E6148();
  sub_1883F90D4();
  sub_1883F7B88();
  v4 = swift_allocObject();
  swift_weakInit();

  sub_18841F044(v0, v1, 1, &unk_1886FB630, v4);

  v5 = [v2 sharedScheduler];
  sub_18841F1C8();
  sub_18840FC80();
  sub_1883F7B88();
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1883F84DC();
  sub_18841F044(v7, v8, 1, v9, v6);
}

uint64_t sub_18841E7C0()
{
  swift_weakDestroy();
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18841E848()
{
  v0 = [CKScheduler alloc];
  qword_1ED4B62F0 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_18841E9C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

BOOL sub_18841E9FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void *sub_18841EA28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D6A0, &qword_1886F8670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D6A8, &qword_1886F8678);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18841EB70()
{
  if (CKCurrentProcessIsDaemon())
  {
    return 0;
  }

  sub_1883FEB90();
  return MEMORY[0x18CFD5010](0xD00000000000002CLL);
}

uint64_t sub_18841EC60(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  *(v9 + 96) = v8;

  v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  *(v12 + 104) = v11;

  v14 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v15 = *(a1 + 32);
  v16 = *(v15 + 80);
  *(v15 + 80) = v14;

  v17 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v18 = *(a1 + 32);
  v19 = *(v18 + 88);
  *(v18 + 88) = v17;

  v20 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v21 = *(a1 + 32);
  v22 = *(v21 + 120);
  *(v21 + 120) = v20;

  v23 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v24 = *(a1 + 32);
  v25 = *(v24 + 128);
  *(v24 + 128) = v23;

  *(*(a1 + 32) + 18) = 0;
  *(*(a1 + 32) + 19) = 0;
  v26 = *(a1 + 32);
  v27 = *(v26 + 24);
  *(v26 + 24) = 0;

  v28 = *(a1 + 32);
  v29 = *(v28 + 32);
  *(v28 + 32) = 0;

  v30 = *(a1 + 32);
  v31 = *(v30 + 40);
  *(v30 + 40) = 0;

  *(*(a1 + 32) + 16) = 1;
  *(*(a1 + 32) + 17) = 1;
  *(*(a1 + 32) + 20) = 0;
  v32 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v33 = *(a1 + 32);
  v34 = *(v33 + 112);
  *(v33 + 112) = v32;

  v35 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v36 = *(a1 + 32);
  v37 = *(v36 + 136);
  *(v36 + 136) = v35;

  return MEMORY[0x1EEE66BB8]();
}

unint64_t sub_18841EE98()
{
  v1 = type metadata accessor for UUID();
  v2 = sub_1883F70DC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1883F7100();
  _StringGuts.grow(_:)(32);

  sub_1883F9424();
  v7 = *(v0 + 128);
  sub_18841EFE4();
  sub_1883FE8FC(&qword_1EA90C858, MEMORY[0x1E69695A8]);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v8);

  v9 = *(v4 + 8);
  v10 = sub_1883F7E8C();
  v11(v10);
  return 0xD00000000000001ELL;
}

void sub_18841EFE4()
{
  v1 = [*(v0 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_18841F044(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x18CFD5010]();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v12[4] = sub_1884C1A4C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1884C1F34;
  v12[3] = &unk_1EFA2BB00;
  v11 = _Block_copy(v12);

  [v5 registerActivityIdentifier:v9 replaceExistingHandler:a3 & 1 handler:v11];
  _Block_release(v11);
}

uint64_t sub_18841F144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18841F1C8()
{
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1886F8960;
  *(v0 + 32) = sub_18841EE98();
  *(v0 + 40) = v1;
  sub_1883F9424();
  *(v0 + 48) = 0xD000000000000015;
  *(v0 + 56) = v2;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883F94A4();
  sub_1884F47FC();
  BidirectionalCollection<>.joined(separator:)();

  return sub_1884F4640();
}

uint64_t sub_18841F284(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_188420F44(v3, a2);
  sub_1883FDE5C(v3, a2);
  if (qword_1ED4B5CE0 != -1)
  {
    sub_1883F7604();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t CKCreateDirectoryAtURL(void *a1, char *a2, uint64_t a3)
{
  v4 = objc_msgSend_path(a1, a2, a3);
  v5 = CKCreateDirectoryAtPathWithAttributes(v4, 0, a2);

  return v5;
}

void sub_18841F3D0(void *a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_msgSend_queue(a1, a2, a3);
    dispatch_assert_queue_V2(v4);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[3];
      v14 = 138412290;
      v15 = v12;
      v13 = v5;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Updating push notification listeners for subscription infos: %@", &v14, 0xCu);
    }

    v8 = a1[7];
    if (v8 == 1)
    {
      v9 = objc_msgSend_sharedPushRegistry(CKPKPushRegistry, v6, v7);
      objc_msgSend_addDelegate_(v9, v10, a1);
    }

    else if (!v8)
    {
      sub_188647B44(a1, v6, v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18841F568()
{
  v0 = [CKPKPushRegistry alloc];
  qword_1ED4B62E0 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_18841F748()
{
  v1 = *(*v0 + 88);
  sub_1883F7930(*(*v0 + 80));
  (*(v2 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_18841F7B4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_18841F82C()
{
  v1 = *(v0 + 16);
  sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_18841F88C(uint64_t a1)
{
  MEMORY[0x18CFD55A0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  sub_18840E81C();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v6 = *(v3 - 1);
    v5 = *v3;

    sub_188420364(&v7, v6, v5);

    v3 += 2;
  }

  __break(1u);
}

Swift::Int sub_18841F940(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_188501DC8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1885035B0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_188502E68();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_18841FC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18841FC2C()
{

  return swift_arrayDestroy();
}

void sub_18841FD50()
{
  v1 = v0;
  if ((sub_188403050() & 1) == 0)
  {
    v11 = *(v0 + 368);
    *(v0 + 368) = 0;

    return;
  }

  v2 = *(v0 + 344);
  v3 = *(v1 + 352);

  if (CKCurrentProcessIsDaemon())
  {
    if (!v3)
    {
      if (qword_1EA90C9F0 != -1)
      {
LABEL_38:
        sub_1883F7480();
      }

      v4 = type metadata accessor for Logger();
      sub_1883FDE5C(v4, qword_1EA90C9F8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1883EA000, v5, v6, "BUG IN CLIENT OF CLOUDKIT: When using CKSyncEngine in a daemon, you must set apsMachServiceName in your configuration. Otherwise, your process won't be launched for push notifications.", v7, 2u);
        sub_1883F82B8();
      }

      v8 = *MEMORY[0x1E698CF08];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      goto LABEL_13;
    }

LABEL_12:

    v10 = v3;
LABEL_13:
    sub_1883F4C5C(0, &qword_1EA90C768, off_1E70BA490);
    v12 = sub_1884E1FC0(v2, v10, &selRef_initWithMachServiceName_);
    v13 = *(v1 + 360);
    v14 = v12;
    [v14 setUseOpportunisticPushTopics_];
    goto LABEL_14;
  }

  if (v3)
  {
    goto LABEL_12;
  }

  v14 = [objc_allocWithZone(CKNotificationListener) init];
LABEL_14:
  v15 = *(v1 + 368);
  *(v1 + 368) = v14;

  sub_18844E6FC(&qword_1EA90E520, &qword_1886FB4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FAC20;
  *(inited + 32) = sub_188420248();
  *(inited + 40) = v17;
  v18 = *(v1 + 384);
  *(inited + 48) = *(v1 + 376);
  *(inited + 56) = v18;
  v19 = *(v1 + 128);

  v20 = sub_1884202FC();
  v21 = 0;
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  v23 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v24 = v21 - 1;
  v25 = 16 * v21 + 40;
  while (v24 != 2)
  {
    if (++v24 > 2)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v26 = v25 + 16;
    v27 = *(inited + v25);
    v25 += 16;
    if (v27)
    {
      v28 = *(inited + v26 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v23 + 16);
        sub_1883F8CAC();
        v23 = v32;
      }

      v29 = *(v23 + 16);
      if (v29 >= *(v23 + 24) >> 1)
      {
        sub_1883F8CAC();
        v23 = v33;
      }

      v21 = v24 + 1;
      *(v23 + 16) = v29 + 1;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v28;
      *(v30 + 40) = v27;
      goto LABEL_15;
    }
  }

  v51 = v14;
  swift_setDeallocating();
  sub_18841F82C();
  sub_18841F88C(v23);
  v35 = v34;
  v36 = 0;
  v37 = v34 + 56;
  v38 = 1 << *(v34 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v34 + 56);
  v41 = (v38 + 63) >> 6;
  if (v40)
  {
    while (1)
    {
      v42 = v36;
LABEL_32:
      v43 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v44 = (*(v35 + 48) + ((v42 << 10) | (16 * v43)));
      v45 = *v44;
      v46 = v44[1];

      v47 = MEMORY[0x18CFD5010](v45, v46);

      v48 = *(v1 + 136);
      v49 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1884E3ABC;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1884B4610;
      aBlock[3] = &unk_1EFA2C068;
      v50 = _Block_copy(aBlock);

      [v51 registerForSubscriptionWithID:v47 inDatabase:v48 handler:v50];
      _Block_release(v50);

      if (!v40)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
LABEL_28:
    v42 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v42 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v42);
    ++v36;
    if (v40)
    {
      v36 = v42;
      goto LABEL_32;
    }
  }
}

uint64_t sub_188420210()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_188420248()
{
  _StringGuts.grow(_:)(35);

  v1 = CKDatabaseScopeString([*(v0 + 136) databaseScope]);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x18CFD5140](v2, v4);

  return 0xD000000000000021;
}

uint64_t sub_1884202FC()
{
  v1 = [*(v0 + 16) existingDatabaseSubscriptionID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

BOOL sub_188420364(void *a1, uint64_t a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v9 = *(v7 + 32);
  sub_1883F9AD4();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;

  v21 = sub_188410D0C();
  sub_18841F940(v21, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v23;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

uint64_t sub_1884204C0()
{
  sub_1883F7120();
  v1 = *(v0 + 16);
  if (sub_188420584())
  {
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_188420CAC;
    v3 = *(v0 + 16);

    return sub_18842062C(v2);
  }

  else
  {
    sub_1883F816C();

    return v5();
  }
}

uint64_t sub_188420584()
{
  v1 = *(v0 + 144);
  v2 = [v1 deviceContext];
  v3 = [v2 testDeviceReferenceProtocol];

  if (v3)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    v5 = [v1 containerID];
    v6 = [v5 isTestContainer];

    return v6 ^ 1;
  }
}

uint64_t sub_188420644()
{
  v1 = [*(*(v0 + 336) + 144) containerID];
  v2 = sub_188420BE4(v1);
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = 0xEB00000000432D65;

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7 && (v8 = v7, v9 = [v7 dataSource], v8, v9))
    {
      swift_unknownObjectRelease();
      v6 = 0xEA00000000006563;
      v10 = 0x72756F5361746144;
    }

    else
    {
      v10 = 0x76697463656A624FLL;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v10 = 0x7466697753;
  }

  v34 = v10;
  v11 = *(v0 + 336);
  sub_18844E6FC(&qword_1EA90E5E0, &qword_1886FBAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FBA90;
  sub_1883F9424();
  v13[4] = 0xD000000000000013;
  v13[5] = v14;
  v15 = MEMORY[0x1E69E6158];
  v13[6] = v2;
  v13[7] = v4;
  sub_1884055C4();
  *(v16 + 72) = v15;
  *(v16 + 80) = v17;
  sub_1883F7DA4(v16);
  v18 = CKContainerEnvironmentString([v1 environment]);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(inited + 96) = v19;
  *(inited + 104) = v21;
  sub_1883FA210();
  *(inited + 120) = v15;
  *(inited + 128) = v22;
  sub_1883F8A84();
  *(inited + 136) = v23;
  v24 = CKDatabaseScopeString([*(v11 + 136) databaseScope]);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(inited + 144) = v25;
  *(inited + 152) = v27;
  sub_1883F9424();
  *(inited + 168) = v15;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = v28;
  v29 = sub_188403050();
  v30 = MEMORY[0x1E69E6370];
  *(inited + 192) = v29 & 1;
  *(inited + 216) = v30;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000188702A80;
  *(inited + 240) = *(v11 + 384) != 0;
  *(inited + 264) = v30;
  *(inited + 272) = 0x65707954697061;
  *(inited + 312) = v15;
  *(inited + 280) = 0xE700000000000000;
  *(inited + 288) = v34;
  *(inited + 296) = v6;
  sub_18844E6FC(&qword_1EA90E5D8, &qword_1886FBAB8);
  v31 = Dictionary.init(dictionaryLiteral:)();

  v32 = *(v0 + 8);

  return v32(v31);
}

void sub_18842090C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90E5D0, &qword_1886FBAB0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_188405DF8(*(a1 + 56) + 32 * v9, v28);
    *&v27 = v11;
    *(&v27 + 1) = v12;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v13 = v27;
    sub_188419138(v26, v25);

    sub_18844E6FC(&qword_1EA90E5D8, &qword_1886FBAB8);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    if (!swift_dynamicCast())
    {

      return;
    }

    v5 &= v5 - 1;
    v14 = sub_188420F2C(v13, *(&v13 + 1));
    v15 = v14;
    if (v16)
    {
      v17 = v2[6] + 16 * v14;
      v18 = *(v17 + 8);
      *v17 = v13;

      v19 = v2[7];
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v24;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      *(v2[6] + 16 * v14) = v13;
      *(v2[7] + 8 * v14) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_22;
      }

      v2[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_188420B80()
{
  v0 = sub_18844E6FC(&qword_1EA90E808, &qword_1886FE2B8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1EA90C818 = result;
  return result;
}

unint64_t sub_188420BE4(void *a1)
{
  if ([a1 isAppleInternal])
  {
    goto LABEL_5;
  }

  if (qword_1EA90CBD8 != -1)
  {
    swift_once();
  }

  if (byte_1EA919CA0 != 1)
  {
    return 0xD000000000000011;
  }

LABEL_5:
  v2 = [a1 containerIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_188420CAC()
{
  sub_1883F7120();
  v1 = *v0;
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_1883F78D4();
  *v8 = v7;
  *(v10 + 32) = v9;

  return MEMORY[0x1EEE6DFA0](sub_188420DB8, v6, 0);
}

uint64_t sub_188420DB8()
{
  sub_18842090C(*(v0 + 32));
  v2 = v1;

  if (v2)
  {
    v3 = MEMORY[0x18CFD5010](0xD00000000000002BLL, 0x8000000188702A50);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v5 = type metadata accessor for Logger();
    sub_1883FDE5C(v5, qword_1EA90C9F8);
    v4.super.isa = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4.super.isa, v6))
    {
      *swift_slowAlloc() = 0;
      sub_1883FDB58(&dword_1883EA000, v7, v8, "BUG IN CLOUDKIT: Unable to convert configuration telemetry payload to NSObjects");
      sub_1883F8F74();
    }
  }

  sub_1883F816C();

  return v9();
}

uint64_t *sub_188420F44(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t CKUseSystemInstalledBinariesFuncForSwift()
{
  if (_sCKUseSystemInstalledBinariesPredicate != -1)
  {
    dispatch_once(&_sCKUseSystemInstalledBinariesPredicate, &unk_1EFA30BF0);
  }

  return _sCKUseSystemInstalledBinaries;
}

uint64_t sub_188420FF0()
{
  v0 = 0xD000000000000012;
  result = CKUseSystemInstalledBinariesFuncForSwift();
  if (result && __sTestOverridesAvailable != 1)
  {
    v2 = "com.apple.cloudkit.test";
  }

  else
  {
    v2 = "TrafficCompressed";
    v0 = 0xD000000000000017;
  }

  qword_1ED4B5CE8 = v0;
  *algn_1ED4B5CF0 = v2 | 0x8000000000000000;
  return result;
}

uint64_t sub_188421060(uint64_t a1, unint64_t a2)
{
  v4 = sub_188421190(a1, a2);
  sub_1884210AC(&unk_1EFA25938);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1884210AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1884212A8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_188421190(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_188517278(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1884212A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90E358, qword_1886FE400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_18842139C()
{
  v0 = objc_alloc(MEMORY[0x1E696AE70]);
  qword_1ED4B6688 = objc_msgSend_initWithPattern_options_error_(v0, v1, @"[0-9,A-Z]{10}\\.(.*)", 0, 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1884213EC(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((CKCurrentProcessIsDaemon() & 1) == 0)
  {
    v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v2, v3);
    v7 = objc_msgSend_bundleIdentifier(v4, v5, v6);

    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[2];
    }

    v9 = v8;
    v11 = v9;
    if (v7)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && (objc_msgSend_isEqual_(v7, v10, v9) & 1) == 0 && objc_msgSend_hasSuffix_(v7, v13, @".xctrunner"))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412290;
        v17 = @"application-identifier";
        _os_log_fault_impl(&dword_1883EA000, v14, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Trying to listen for push notifications in an XCTestRunner, but the bundle identifier does not match your entitlements. Please append '.xctrunner' to your %@ entitlement, otherwise you may not properly receive push notifications.", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1884215A4(uint64_t a1)
{
  v2 = [CKUserDefaults alloc];
  v8 = objc_msgSend_suiteName(*(a1 + 32), v3, v4);
  v6 = objc_msgSend_initWithSuiteName_(v2, v5, v8);
  v7 = qword_1ED4B6748;
  qword_1ED4B6748 = v6;
}

void sub_188421AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v15 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 120));
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_188421BB0()
{
  v0 = [CKLogicalDeviceContext alloc];
  qword_1ED4B6570 = objc_msgSend__initWithTestDeviceReferenceProtocol_useLiveServer_(v0, v1, 0, 1);

  return MEMORY[0x1EEE66BB8]();
}

void sub_188421BF8()
{
  v31 = *MEMORY[0x1E69E9840];
  v0 = NSHomeDirectory();
  isEqualToString = objc_msgSend_isEqualToString_(v0, v1, @"/var/empty");

  if (isEqualToString)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Not attempting to create Caches directory for /var/empty process", buf, 2u);
    }
  }

  else
  {
    v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
    v28 = 0;
    v8 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v6, v7, 13, 1, 0, 0, &v28);
    v9 = v28;

    v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11);
    v15 = objc_msgSend_path(v8, v13, v14);
    v17 = objc_msgSend_fileExistsAtPath_(v12, v16, v15);

    if (v17)
    {
      v18 = v9;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Warn: Caches directory does not exist, creating one", buf, 2u);
      }

      v22 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v20, v21);
      v27 = v9;
      v24 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v22, v23, 13, 1, 0, 1, &v27);
      v18 = v27;

      if (!v24)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v25 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v18;
          _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Couldn't create caches directory, %@", buf, 0xCu);
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

id sub_188421EC8()
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1884224A0;
  block[3] = &unk_1E70BC418;
  block[4] = v0;
  if (qword_1ED4B6148 != -1)
  {
    dispatch_once(&qword_1ED4B6148, block);
  }

  v1 = qword_1ED4B6140;

  return v1;
}

void sub_188421F6C(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((byte_1EA90C538 & 1) == 0)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, *(a1 + 32), *(a1 + 40), @"CKXPCConnection.m", 49, @"The daemon shouldn't be using XPC to talk to itself");
  }

  v4 = objc_alloc(*(a1 + 40));
  v12 = objc_msgSend_processInfo(CKProcessInfo, v5, v6);
  v8 = objc_msgSend_initWithProcessInfo_(v4, v7, v12);
  v9 = qword_1ED4B6270;
  qword_1ED4B6270 = v8;
}

void sub_18842207C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8C80);
  v3 = qword_1ED4B6278;
  qword_1ED4B6278 = v2;

  v4 = qword_1ED4B6278;
  v5 = sub_188422354();
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_getContainerScopedDaemonProxyCreatorForSetupInfo_containerScopedClientProxy_completionHandler_, 1, 0);

  v7 = qword_1ED4B6278;
  v8 = sub_188421EC8();
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v7, v9, v8, sel_getContainerScopedDaemonProxyCreatorForSetupInfo_containerScopedClientProxy_completionHandler_, 0, 1);

  v10 = qword_1ED4B6278;
  v13 = objc_msgSend_CKXPCDaemonToClientSessionAcquisitionInterface(_TtC8CloudKit25CKSessionAcquirerXPCProxy, v11, v12);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v10, v14, v13, sel_getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo_sessionAcquisitionClientProxy_completionHandler_, 1, 0);

  v15 = qword_1ED4B6278;
  v18 = objc_msgSend_CKXPCClientToDaemonSessionAcquisitionInterface(_TtC8CloudKit25CKSessionAcquirerXPCProxy, v16, v17);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v15, v19, v18, sel_getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo_sessionAcquisitionClientProxy_completionHandler_, 0, 1);

  v20 = qword_1ED4B6278;
  v23 = objc_msgSend_CKXPCClientToDaemonLogicalDeviceScopedInterface(CKLogicalDeviceScopedDaemonProxy, v21, v22);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v20, v24, v23, sel_getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 1);

  if (__sTestOverridesAvailable[0] == 1)
  {
    v27 = NSClassFromString(&cfstr_Cktestdevicere.isa);
    v28 = qword_1ED4B6278;
    v30 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v29, v27);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v28, v31, v30, sel_getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 0);
  }

  v32 = qword_1ED4B6278;
  v33 = objc_msgSend_CKXPCClientToDaemonProcessScopedInterface(CKProcessScopedDaemonProxy, v25, v26);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v32, v34, v33, sel_getProcessScopedDaemonProxyCreatorWithCompletionHandler_, 0, 1);

  v35 = qword_1ED4B6278;
  v38 = objc_msgSend_CKXPCClientToDaemonAdopterProcessScopedInterface(CKAdopterProcessScopedDaemonProxy, v36, v37);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v35, v39, v38, sel_getAdopterProcessScopedDaemonProxyCreatorWithCompletionHandler_, 0, 1);

  if (__sTestOverridesAvailable[0] == 1)
  {
    v40 = NSClassFromString(&cfstr_Cktestserverma.isa);
    v41 = qword_1ED4B6278;
    v45 = objc_msgSend_CKXPCClientToDaemonTestServerManagerInterface(v40, v42, v43);
    objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v41, v44, v45, sel_getDaemonTestServerManagerProxyCreatorWithCompletionHandler_, 0, 1);
  }
}

uint64_t sub_188422324()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

id sub_188422354()
{
  objc_opt_self();
  if (qword_1ED4B6128 != -1)
  {
    dispatch_once(&qword_1ED4B6128, &unk_1EFA2E8A8);
  }

  v0 = qword_1ED4B6120;

  return v0;
}

void sub_1884223AC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFA892E8);
  v3 = qword_1ED4B6120;
  qword_1ED4B6120 = v2;

  v4 = qword_1ED4B6120;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v10, v9, sel_consumeSandboxExtensions_reply_, 0, 0);

  v11 = qword_1ED4B6120;
  v13 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v11, v12, v13, sel_handleSharingUIUpdatedShare_recordID_isDeleted_error_reply_, 3, 0);
}

void sub_1884224A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_self();
  if (qword_1ED4B6138 != -1)
  {
    dispatch_once(&qword_1ED4B6138, &unk_1EFA2E8C8);
  }

  v2 = qword_1ED4B6130;

  objc_storeStrong(&qword_1ED4B6140, v2);
}

void sub_188422500(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8AA0);
  v3 = qword_1ED4B6130;
  qword_1ED4B6130 = v2;

  v4 = qword_1ED4B6130;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v10, v9, sel_statusGroupsForApplicationPermission_completionHandler_, 0, 1);

  v11 = qword_1ED4B6130;
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v16 = objc_msgSend_setWithObjects_(v12, v15, v13, v14, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v11, v17, v16, sel_getRecordPCSDiagnosticsForZonesWithCompletionHandler_, 0, 1);

  v81 = MEMORY[0x1E695DFD8];
  v82 = qword_1ED4B6130;
  v80 = objc_opt_class();
  v79 = objc_opt_class();
  v78 = objc_opt_class();
  v77 = objc_opt_class();
  v76 = objc_opt_class();
  v75 = objc_opt_class();
  v74 = objc_opt_class();
  v73 = objc_opt_class();
  v72 = objc_opt_class();
  v71 = objc_opt_class();
  v70 = objc_opt_class();
  v69 = objc_opt_class();
  v68 = objc_opt_class();
  v67 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v30 = objc_msgSend_setWithObjects_(v81, v29, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v82, v31, v30, sel_fetchLongLivedOperationsWithIDs_completionHandler_, 0, 1);

  objc_msgSend_setXPCType_forSelector_argumentIndex_ofReply_(qword_1ED4B6130, v32, MEMORY[0x1E69E9E80], sel_networkTransferEndpointWithCompletionHandler_, 0, 1);
  v33 = qword_1ED4B6130;
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v42 = objc_msgSend_setWithObjects_(v34, v41, v35, v36, v37, v38, v39, v40, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v33, v43, v42, sel_setFakeResponseOperationResult_forNextRequestOfClassName_forItemID_withLifetime_completionHandler_, 2, 0);

  v44 = qword_1ED4B6130;
  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v53 = objc_msgSend_setWithObjects_(v45, v52, v46, v47, v48, v49, v50, v51, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v44, v54, v53, sel_setFakeError_forNextRequestOfClassName_completionHandler_, 0, 0);

  v55 = qword_1ED4B6130;
  v56 = MEMORY[0x1E695DFD8];
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v60 = objc_msgSend_setWithObjects_(v56, v59, v57, v58, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v55, v61, v60, sel_clearPILSCacheForLookupInfos_, 0, 0);

  v62 = qword_1ED4B6130;
  v63 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v62, v64, v63, sel_getCloudCoreSessionValidityError_, 0, 1);

  v65 = qword_1ED4B6130;
  v83 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v65, v66, v83, sel_getCloudCoreSessionValidityError_, 1, 1);
}

uint64_t sub_188422BC0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_188422CA4(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

void sub_188422D04(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

void sub_188422E20(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8BC0);
  v3 = qword_1ED4B6228;
  qword_1ED4B6228 = v2;

  v4 = qword_1ED4B6228;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v9, v10, sel_allClouddThrottlesWithCompletionHandler_, 0, 1);
}

uint64_t sub_188422F38(uint64_t a1, const char *a2)
{
  qword_1ED4B6248 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8C20);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_188422F80(uint64_t a1, const char *a2)
{
  qword_1ED4B6218 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8840);

  return MEMORY[0x1EEE66BB8]();
}

void sub_188423070(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAA02E8);
  v3 = qword_1ED4B6288;
  qword_1ED4B6288 = v2;

  v4 = qword_1ED4B6288;
  v7 = objc_msgSend_CKXPCDaemonToClientLogicalDeviceScopedInterface(CKLogicalDeviceScopedDaemonProxy, v5, v6);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v4, v8, v7, sel_getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 1);

  if (__sTestOverridesAvailable[0] == 1)
  {
    v11 = NSClassFromString(&cfstr_Cktestdevicere.isa);
    v12 = qword_1ED4B6288;
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v16 = objc_msgSend_setWithObjects_(v13, v15, v11, v14, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v12, v17, v16, sel_getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 0);
  }

  v18 = qword_1ED4B6288;
  v20 = objc_msgSend_CKXPCDaemonToClientProcessScopedInterface(CKProcessScopedDaemonProxy, v9, v10);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v18, v19, v20, sel_getProcessScopedClientProxyCreatorWithCompletionHandler_, 0, 1);
}

uint64_t sub_188423214(uint64_t a1, const char *a2)
{
  qword_1ED4B6238 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAB9AA0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1884232B0(uint64_t a1, const char *a2)
{
  qword_1ED4B6258 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFABAB68);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t type metadata accessor for CKSessionAcquirerXPCProxy()
{
  result = qword_1ED4B5E10;
  if (!qword_1ED4B5E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const mach_header *CKHeaderForLibraryName(void *a1)
{
  v1 = a1;
  v2 = _dyld_image_count();
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      image_header = _dyld_get_image_header(i);
      if (image_header)
      {
        v6 = image_header;
        if (image_header->filetype == 6)
        {
          ncmds = image_header->ncmds;
          if (ncmds)
          {
            v8 = 0;
            p_cputype = &image_header[1].cputype;
            do
            {
              if (*p_cputype == 13)
              {
                v10 = p_cputype + p_cputype[2];
                v11 = strrchr(v10, 47);
                if (v11)
                {
                  v10 = v11 + 1;
                }

                v12 = v1;
                v15 = objc_msgSend_UTF8String(v12, v13, v14);
                if (!strcmp(v10, v15))
                {
                  goto LABEL_15;
                }

                ncmds = v6->ncmds;
              }

              p_cputype = (p_cputype + p_cputype[1]);
              ++v8;
            }

            while (v8 < ncmds);
          }
        }
      }
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

id sub_188423430(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_new();
    v2 = CKSDKVersion();
    objc_msgSend_setClientSDKVersion_(v1, v3, v2);
    v4 = objc_opt_new();
    objc_msgSend_setFrameworkFingerprint_(v1, v5, v4);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1884239B0(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    a1 = objc_msgSend_sharedXPCConnection(CKXPCConnection, a2, a3);
    v3 = vars8;
  }

  return a1;
}

uint64_t CKSyncEngine.State.Serialization.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_18844E6FC(&qword_1EA90E768, &qword_1886FD048);
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_188423FF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_188424048();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
  }

  return sub_1883FE944(a1);
}

uint64_t sub_188423C74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_188423CCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_188423D24(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 _s19FetchChangesOptionsV17ZoneConfigurationVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_188423E7C()
{
  result = qword_1EA90C640;
  if (!qword_1EA90C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C640);
  }

  return result;
}

unint64_t sub_188423FA0()
{
  result = qword_1EA90C648;
  if (!qword_1EA90C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C648);
  }

  return result;
}

unint64_t sub_188423FF4()
{
  result = qword_1EA90C650;
  if (!qword_1EA90C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C650);
  }

  return result;
}

unint64_t sub_188424048()
{
  result = qword_1EA90C658;
  if (!qword_1EA90C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C658);
  }

  return result;
}

_BYTE *_s5StateC13SerializationV10CodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x188424150);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_188424184(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_188423C74(a1, a2);
  }

  return a1;
}

void *sub_188424198(uint64_t *a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = *a1;
  v6 = a1[1];
  v7 = objc_allocWithZone(CKSyncEngineState);
  v8 = sub_188424248(v5, v6);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v8;
  }

  return v3;
}

id sub_188424248(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v7 = [v3 initWithData:isa error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_188423CCC(a1, a2);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_188424734(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_numberOfArguments(a1, a2, a3);
  if (v4 - 1 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v4;
  while (1)
  {
    v7 = objc_msgSend__signatureForBlockAtArgumentIndex_(a1, v5, --v6);
    if (v7)
    {
      break;
    }

    if (v6 <= 2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v10 = v7;
  v12 = objc_msgSend_numberOfArguments(v7, v5, v8) - 1;
  while (1)
  {
    v9 = v12 - 1;
    if (v12 < 1)
    {
      break;
    }

    v13 = objc_msgSend__classForObjectAtArgumentIndex_(v10, v11, v12);
    v14 = objc_opt_class();
    isSubclassOfClass = objc_msgSend_isSubclassOfClass_(v13, v15, v14);
    v12 = v9;
    if (isSubclassOfClass)
    {
      goto LABEL_11;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return v9;
}

void sub_188425440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1884257BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_callbackQueue(*(a1 + 32), a2, a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18842584C;
  block[3] = &unk_1E70BC388;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void sub_18842584C(uint64_t a1, const char *a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v14 = objc_msgSend_ckShortDescription(v11, v12, v13);
      v43 = 138543874;
      v44 = v10;
      v45 = 2048;
      v46 = v11;
      v47 = 2114;
      v48 = v14;
      v15 = "Operation <%{public}@: %p; %{public}@> was cancelled, so skipping call to performCKOperation";
LABEL_17:
      _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_INFO, v15, &v43, 0x20u);
    }
  }

  else if (objc_msgSend_isFinished(*(a1 + 32), v4, v5))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v8 = v16;
      v18 = objc_opt_class();
      v10 = NSStringFromClass(v18);
      v19 = *(a1 + 32);
      v14 = objc_msgSend_ckShortDescription(v19, v20, v21);
      v43 = 138543874;
      v44 = v10;
      v45 = 2048;
      v46 = v19;
      v47 = 2114;
      v48 = v14;
      v15 = "Operation <%{public}@: %p; %{public}@> was finished, so skipping call to performCKOperation";
      goto LABEL_17;
    }
  }

  else
  {
    v22 = *(a1 + 32);
    if (v22 && *(v22 + 278) == 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v23 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        v8 = v23;
        v25 = objc_opt_class();
        v10 = NSStringFromClass(v25);
        v26 = *(a1 + 32);
        v14 = objc_msgSend_ckShortDescription(v26, v27, v28);
        v43 = 138543874;
        v44 = v10;
        v45 = 2048;
        v46 = v26;
        v47 = 2114;
        v48 = v14;
        v15 = "Operation <%{public}@: %p; %{public}@> failed to enqueue, so skipping call to performCKOperation";
        goto LABEL_17;
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v29 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v32 = *(a1 + 32);
        v33 = v29;
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = *(a1 + 32);
        v39 = objc_msgSend_ckShortDescription(v36, v37, v38);
        v43 = 138543874;
        v44 = v35;
        v45 = 2048;
        v46 = v36;
        v47 = 2114;
        v48 = v39;
        _os_log_impl(&dword_1883EA000, v33, OS_LOG_TYPE_INFO, "Operation <%{public}@: %p; %{public}@> invoking on container throttle queue", &v43, 0x20u);
      }

      objc_msgSend_ckSignpostBegin(*(a1 + 32), v30, v31);
      objc_msgSend_performCKOperation(*(a1 + 32), v40, v41);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

void sub_188425F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188426128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1884264BC(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_superclass(a1, v4, v5);
  if (objc_msgSend_conformsToProtocol_(v6, v7, v3))
  {
    v10 = objc_msgSend_superclass(a1, v8, v9);
    v11 = sub_1884264BC(v10, v3);
    v13 = objc_msgSend_arrayByAddingObject_(v11, v12, a1);
  }

  else if (objc_msgSend_conformsToProtocol_(a1, v8, v3))
  {
    v17[0] = a1;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v17, 1);
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

void sub_1884265D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v8 = objc_msgSend_daemonInvocationSelector(v5, v6, v7);
  v10 = objc_msgSend_methodSignatureForSelector_(v3, v9, v8);
  v12 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x1E695DF50], v11, v10);
  objc_msgSend_setTarget_(v12, v13, v3);
  v14 = *(a1 + 32);
  v15 = objc_opt_class();
  v18 = objc_msgSend_daemonInvocationSelector(v15, v16, v17);
  objc_msgSend_setSelector_(v12, v19, v18);
  objc_initWeak(&location, *(a1 + 32));
  objc_msgSend_retainArguments(v12, v20, v21);
  v34 = objc_msgSend_operationInfo(*(a1 + 32), v22, v23);
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = sub_188431D64;
  v31 = &unk_1E70BEEE8;
  objc_copyWeak(&v32, &location);
  v33 = _Block_copy(&v28);
  objc_msgSend_setArgument_atIndex_(v12, v24, &v34, 2, v28, v29, v30, v31);
  objc_msgSend_setArgument_atIndex_(v12, v25, &v33, 3);
  objc_msgSend_invoke(v12, v26, v27);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

uint64_t sub_188426774(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 352));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_18842690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter()
{
  v1 = [*(v0 + 16) zoneIDsWithUnfetchedServerChanges];
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_18844C2F0(v2);
}

void sub_18842699C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_188426A14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1883F4C9C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_188426C20();
        for (i = 0; i != v7; ++i)
        {
          sub_18844E6FC(&unk_1EA90E4C0, &qword_1886FB458);
          v9 = sub_188426B88(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_188426B88(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_188426C14(a3);
  sub_188426C84(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x18CFD59D0](a2, a3);
  }

  *a1 = v7;
  return sub_188426CB0;
}

unint64_t sub_188426C20()
{
  result = qword_1EA90C6A8[0];
  if (!qword_1EA90C6A8[0])
  {
    sub_18844E798(&unk_1EA90E4C0, &qword_1886FB458);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA90C6A8);
  }

  return result;
}

unint64_t sub_188426C8C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_188426CB8()
{

  return swift_arrayDestroy();
}

void sub_188426CE0(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(a2 + 16))
  {
    return;
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v5 = sub_1883F4C9C(a1);
  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v17 = a1;
  v18 = a1 & 0xC000000000000001;
  v20 = a1 + 32;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = v5;
  while (v6 != v5)
  {
    if (v7)
    {
      v8 = MEMORY[0x18CFD59D0](v6, v17);
    }

    else
    {
      if (v6 >= *(v21 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v20 + 8 * v6);
    }

    v9 = v8;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    if (v4)
    {
      v11 = __CocoaSet.contains(_:)();

      if (v11)
      {
        return;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        v12 = NSObject._rawHashValue(seed:)(*(a2 + 40));
        v13 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v14 = v12 & v13;
          if (((*(a2 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
          {
            break;
          }

          v15 = *(*(a2 + 48) + 8 * v14);
          v16 = static NSObject.== infix(_:_:)();

          v12 = v14 + 1;
          if (v16)
          {

            return;
          }
        }
      }

      v4 = 0;
      v7 = v18;
      v5 = v19;
    }
  }
}

uint64_t sub_188426EB4()
{
  sub_1883FB4AC();
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  sub_18840C690();
  sub_1884DE210(v3);
  swift_endAccess();

  (*(v4 + 8))(v3, v6);

  sub_1883F816C();

  return v7();
}

uint64_t sub_188426F80()
{
  sub_1883F7120();
  sub_1883FB300(v0 + 16);
  sub_1883F816C();

  return v1();
}

uint64_t sub_188426FDC()
{
  sub_1883F78E0();
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  os_activity_scope_leave((v0 + 88));
  swift_unknownObjectRelease();
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_188427080, v2, 0);
}

uint64_t sub_188427080()
{
  sub_1883F7120();
  v3 = *MEMORY[0x1E69E9840];
  sub_1883F816C();
  v1 = *MEMORY[0x1E69E9840];

  return v0();
}

uint64_t sub_188427100()
{
  sub_1883F7120();
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 256);
    v1(0);
  }

  sub_1883F816C();

  return v3();
}

BOOL sub_188427168()
{
  v1 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v2 = sub_1883F8AE4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = sub_1883F70DC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x1EEE9AC00])(v8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  sub_188427384(v18, 0.0, 1800.0);
  v20 = v19;
  v21 = [*(*(v0 + 128) + 16) lastFetchDatabaseChangesDate];
  if (v21)
  {
    v22 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v10 + 32);
    v23(v6, v15, v7);
    sub_188442C14(v6);
    v23(v17, v6, v7);
  }

  else
  {
    sub_18844334C();
    sub_1883F90F4(v24, v25, v26, v7);
    static Date.distantPast.getter();
    if (sub_1883F971C(v6, 1, v7) != 1)
    {
      sub_1883F9FEC(v6, &unk_1EA90D7B0, &dword_1886F8780);
    }
  }

  v27 = v20 + 86400.0;
  Date.timeIntervalSinceNow.getter();
  v29 = v28;
  v30 = *(v10 + 8);
  v31 = sub_1883F7E8C();
  v32(v31);
  return v27 <= -v29;
}

void sub_188427384(uint64_t a1, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  if (v5 * vcvtd_n_f64_u64(__buf & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    sub_188427384(a1, a2, a3);
  }
}

void sub_188427428(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_188427448()
{
  sub_1883F78E0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 336);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_188429CFC;

  return sub_1883FD964(v5, 1, &unk_1886FB510, v4);
}

id sub_188427510()
{
  v1 = v0[3];
  v2 = *(v0[2] + 136);
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v3 = v1;

  v4 = sub_1884296E8(0, v1);
  v0[4] = v4;
  result = [v2 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  swift_getObjectType();

  result = [v2 container];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result implementation];

  v9 = v4;
  v10 = sub_1884276B8(v8, v4);
  v0[5] = v10;
  v11 = [v10 databaseWithDatabaseScope_];
  v0[6] = v11;
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_188427714;
  v13 = v0[2];

  return sub_188429744(v11);
}

id sub_1884276B8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImplementation:a1 convenienceConfiguration:a2];

  return v4;
}

uint64_t sub_188427714()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    v9 = sub_1884E2A68;
  }

  else
  {
    v9 = sub_188429BF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_188427924()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 1912);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 1920) = v0;

  if (v0)
  {
    v9 = *(v3 + 1856);
    v10 = sub_1884D4328;
  }

  else
  {
    v11 = *(v3 + 1856);

    v10 = sub_188428D74;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_188427A34(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 177) = a1;
  *(v4 + 80) = *v3;
  return sub_188405594(sub_188427A7C);
}

uint64_t sub_188427A7C()
{
  sub_1883FC738();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = sub_188405E54();
  sub_1883F7468();
  v6 = sub_1884CCC70(v4, v5);
  v7 = sub_1884CDD68(v6);
  sub_188404C5C(v7, v3);
  sub_1883FF014();
  if (v2)
  {
    sub_1883F9E4C(*(v0 + 56));
    v9 = *(v8 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 96) = v10;
    *v10 = v11;
    sub_1883FF534(v10);
    sub_1884CDCCC();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 72);
  if (*(v14 + 128) == 1)
  {
    sub_1883FAAC8();
    if (!v16)
    {
      v17 = *(v0 + 177);
      *(v14 + 120) = v15;
      v18 = swift_task_alloc();
      v19 = sub_1883F9A44(v18);
      sub_1883FF604(v19);
      sub_1883F7468();
      sub_1884CCC70(v20, v21);
      v22 = *(MEMORY[0x1E69E88F0] + 4);
      v23 = swift_task_alloc();
      v24 = sub_188404A84(v23);
      *v24 = v25;
      v24[1] = sub_1884CA4D4;
      sub_1883F960C();
      sub_1884CDCCC();

      return MEMORY[0x1EEE6DE18]();
    }

    __break(1u);
  }

  else
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v27)
    {
      sub_1884CDD48();
      if (v28)
      {
        static Task<>.checkCancellation()();
      }

      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = *(v0 + 72);
      v32 = sub_188405E54();
      v33 = sub_188404238(v32);
      sub_1883F813C(v33, v34, v35);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  sub_1883F89B8();
LABEL_15:
  v36 = *(v0 + 72);
  v37 = sub_188400870();
  sub_1884022A8(v37);
  sub_1883F7468();
  sub_1884CCC70(v38, v39);
  v40 = *(MEMORY[0x1E69E8950] + 4);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 160) = v41;
  *v41 = v42;
  sub_18840E7E4(v41);
  sub_1883FAECC();
  sub_1884CDD5C();
  sub_1883FA170();
  sub_188410CA4();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_188427DD4()
{
  sub_1883F78E0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_1883FAED8(v4);

  return sub_1884308FC(v6, v7, v8);
}

uint64_t sub_1884280A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

id sub_1884280C0()
{
  sub_1883FB4E4();
  v20 = v3;
  sub_1883F653C();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v0;
  v5 = v1;
  v6 = sub_1883FDFD0();
  result = sub_18840AD04(v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = v2[4];
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  v12 = v2[4];
  v11 = v2[5];
  [result implementation];

  v13 = v0;
  v14 = sub_1883FDBA8();
  sub_1883FE210(v14);
  v2[9] = [v0 databaseWithDatabaseScope_];
  v19 = v11 + *v11;
  v15 = v11[1];
  v16 = swift_task_alloc();
  v2[10] = v16;
  *v16 = v2;
  v17 = sub_1884036F4(v16);

  return v18(v17);
}

uint64_t sub_188428270()
{
  sub_1883F7120();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1884DE0FC;
  v3 = sub_1883FE860();

  return sub_188429240(v3, v0);
}

uint64_t sub_188428300()
{
  sub_1883F7120();
  v0[4] = [*(v0[3] + 16) serverChangeTokenForDatabase];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1884DA58C;
  v2 = v0[2];
  v3 = sub_1883FE860();

  return CKDatabase.databaseChanges(since:resultsLimit:)(v3, 0, 1);
}

uint64_t sub_1884283BC()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 72);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v4 = swift_task_alloc();
  v5 = sub_1884101CC(v4);
  *v5 = v6;
  v5[1] = sub_188468ED8;
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = sub_1883FF484(*(v1 + 16));

  return sub_188429398(v9, v10, v11, v12, v0);
}

uint64_t sub_1884284C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken_];
  [v8 setFetchAllChanges_];
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  [v8 setResultsLimit_];
  sub_1883F7B88();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  sub_1883F7B88();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v30 = sub_18846CB44;
  v31 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v28 = sub_18846B9A0;
  v29 = &unk_1EFA27060;
  v13 = _Block_copy(aBlock);

  sub_188443320(v14, sel_setRecordZoneWithIDChangedBlock_);
  _Block_release(v13);
  v30 = sub_18846CB4C;
  v31 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F7B94();
  v28 = v15;
  v29 = &unk_1EFA27088;
  _Block_copy(aBlock);
  sub_18840BDE0();

  sub_188443320(v16, sel_setRecordZoneWithIDWasDeletedBlock_);
  _Block_release(v13);
  v30 = sub_18846CB6C;
  v31 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F7B94();
  v28 = v17;
  v29 = &unk_1EFA270B0;
  _Block_copy(aBlock);
  sub_18840BDE0();

  sub_188443320(v18, sel_setRecordZoneWithIDWasPurgedBlock_);
  _Block_release(v13);
  v30 = sub_18846CB8C;
  v31 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F7B94();
  v28 = v19;
  v29 = &unk_1EFA270D8;
  _Block_copy(aBlock);
  sub_18840BDE0();

  sub_188443320(v20, sel_setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock_);
  _Block_release(v13);
  sub_188405D30();
  v21 = swift_allocObject();
  sub_1883FB4C4(v21);

  v22 = sub_1883F7AB8();
  CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter(v22, v23);
  [v25 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t sub_1884287C8()
{
  v1 = *(v0 + 16);

  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

id CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v10[4] = sub_1884BC924;
    v10[5] = v6;
    sub_1883F7188();
    sub_1883F7450();
    v10[2] = v7;
    v10[3] = &unk_1EFA2ACF0;
    v8 = _Block_copy(v10);

    [v3 setFetchDatabaseChangesCompletionBlock_];
    _Block_release(v8);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchDatabaseChangesCompletionBlock_];
  }
}

uint64_t sub_188428990()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1884289C8()
{
  v1 = v0;
  v2 = type metadata accessor for TaskPriority();
  v3 = sub_1883F70DC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Task<>.currentPriority.getter();
  v10 = TaskPriority.rawValue.getter();
  v11 = *(v5 + 8);
  v11(v9, v2);
  if (__ROR8__(v10 - 9, 3) > 3uLL)
  {
    TaskPriority.init(rawValue:)();
    v12 = TaskPriority.rawValue.getter();
    v11(v9, v2);
    if (v10 == v12)
    {
      if (qword_1ED4B5C68 != -1)
      {
        sub_1883F7264();
      }

      v13 = type metadata accessor for Logger();
      sub_1883FDE5C(v13, qword_1ED4B5C70);
      v14 = v1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36 = v18;
        *v17 = 136315138;
        v19 = [v14 operationID];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_1883FE340(v20, v22, &v36);

        *(v17 + 4) = v23;
        _os_log_impl(&dword_1883EA000, v15, v16, "Not setting QoS on %s to TaskPriority.medium and instead relying on default NSOperation QoS behavior", v17, 0xCu);
        sub_1883FE944(v18);
        sub_1883F7B60();
        sub_1883F7B60();
      }
    }

    else
    {
      if (qword_1ED4B5C68 != -1)
      {
        sub_1883F7264();
      }

      v24 = type metadata accessor for Logger();
      sub_1883FDE5C(v24, qword_1ED4B5C70);
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36 = v29;
        *v28 = 136315394;
        v30 = [v25 operationID];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_1883FE340(v31, v33, &v36);

        *(v28 + 4) = v34;
        *(v28 + 12) = 256;
        *(v28 + 14) = v10;
        _os_log_impl(&dword_1883EA000, v26, v27, "Not setting QoS on %s for unknown task priority %hhu", v28, 0xFu);
        sub_1883FE944(v29);
        sub_1883F7B60();
        sub_1883F7B60();
      }
    }
  }

  else
  {
    [v1 setQualityOfService_];
  }
}

uint64_t sub_188428D74()
{
  v3 = *(v1 + 1856);
  v4 = *(v3 + 128);
  if ((*(v1 + 80) & 1) == 0)
  {
    v5 = *(v1 + 1856);
    v6 = sub_188403050();
    v3 = *(v1 + 1856);
    if (v6)
    {
      v7 = *(v1 + 1856);
      v8 = sub_188427168();
      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

      v3 = *(v1 + 1856);
    }
  }

  v16 = *(v1 + 1864);

  v17 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v18 = *(v1 + 1856);
    sub_1883F9984();
    v19 = sub_1883F8C00();
    *v3 = 136315138;
    v20 = sub_1883FE43C();
    sub_1883FA594(v20, v21, v22, v23, v24, v25, v26, v27, v19);
    sub_1883FE2FC();
    *(v3 + 4) = v2;
    sub_1883F831C();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_1883FE944(v19);
    sub_1883FD784();
    sub_1883F82B8();
  }

  v8 = [*(v4 + 16) setNeedsToFetchDatabaseChanges_];
LABEL_8:
  sub_1884E01A8(v8, v9, v10, v11, v12, v13, v14, v15, v53);
  sub_1884023F4();
  if ((v33 & 1) == 0)
  {
LABEL_11:
    v35 = *(v1 + 1872);
    v36 = sub_1884D44E8();
    v37 = v36;
    if (v36)
    {
      v38 = v36;
      v39 = *(v1 + 1856);
      v40 = v38;
      v41 = sub_18842D4B4();
      sub_18840F1E8(v41);
    }

    *(v1 + 1984) = v37;
    v42 = swift_task_alloc();
    v43 = sub_188410CE8(v42);
    *v43 = v44;
    sub_1883F74DC(v43);

    return sub_18840E178();
  }

  v34 = *(v1 + 88);
  *(v1 + 1928) = v34;
  if (v34)
  {
    v46 = sub_1883FA45C();
    sub_1883FAAD4(v46);
    v47 = swift_task_alloc();
    *(v1 + 1944) = v47;
    *v47 = v1;
    sub_1883FE6C4(v47);
  }

  else
  {
    if ((v34 & 2) == 0)
    {
      goto LABEL_11;
    }

    *(v1 + 2017) = 0;
    v48 = sub_1883FA45C();
    sub_1883F8010(v48);
    v49 = swift_task_alloc();
    *(v1 + 1968) = v49;
    *v49 = v1;
    sub_1883F8F18(v49);
  }

  v50 = sub_1883FEB9C();

  return sub_188427A34(v50, v51, v52);
}

uint64_t sub_188428FD0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_188428FE0()
{
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);

  return type metadata accessor for Logger();
}

uint64_t sub_188429010()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883F8BF0();

  return v4(v3);
}

uint64_t sub_1884290B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1884CCD48;

  return sub_188429150(a2);
}

uint64_t sub_188429150(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1884CC5BC;

  return v5(v1 + 32);
}

uint64_t sub_188429240(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_188428300, 0, 0);
}

uint64_t CKDatabase.databaseChanges(since:resultsLimit:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_18842927C()
{
  sub_1883F653C();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5 & 1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  sub_18844E6FC(&qword_1EA90D508, &qword_1886F7F30);
  sub_1883FE558();
  *v9 = v10;
  v9[1] = sub_18846907C;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_188429398(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 41) = a3;
  *(v6 + 48) = a1;
  return sub_1883F7178();
}

uint64_t sub_1884293C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v22 = a7;
  v12 = sub_18844E6FC(&qword_1EA90D510, &qword_1886F7F38);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  (*(v13 + 16))(&v21 - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v12);
  sub_1884284C0(a3, a4, a5 & 1, a6, v22);
}

uint64_t sub_188429614(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_188427448, v1, 0);
}

uint64_t sub_188429634()
{
  sub_1883F78E0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v6 = sub_1883F7A30(v4);

  return sub_1884296C8(v6, v7, v1);
}

uint64_t sub_1884296C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_188427510, 0, 0);
}

id sub_1884296E8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 group:a2];

  return v4;
}

uint64_t sub_188429744(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_18844E6FC(&qword_1EA90E530, &qword_1886FB520);
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();
  v6 = sub_18844E6FC(&qword_1EA90D4B8, &qword_1886F79D8);
  v2[49] = v6;
  v7 = *(v6 - 8);
  v2[50] = v7;
  v8 = *(v7 + 64) + 15;
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188429878, v1, 0);
}

uint64_t sub_188429878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v15 = *(v14[45] + 128);
  v14[52] = v15;
  if ([*(v15 + 16) needsToSaveDatabaseSubscription])
  {
    v16 = v14[45];
    sub_1883F4C5C(0, &qword_1EA90C7D0, off_1E70BA150);
    v17._countAndFlagsBits = sub_1884E0DBC();
    CKDatabaseSubscription.init(subscriptionID:)(v18, v17);
    v20 = v19;
    v14[53] = v19;
    v21 = [objc_allocWithZone(CKNotificationInfo) init];
    v14[54] = v21;
    [v21 setShouldSendContentAvailable_];
    v51 = v20;
    [v20 setNotificationInfo_];
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v22 = v14[45];
    v23 = type metadata accessor for Logger();
    v14[55] = sub_1883FDE5C(v23, qword_1EA90C9F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v14[45];
      v27 = sub_1883F9984();
      v52 = sub_1883FE540();
      *v27 = 136315138;
      v28 = sub_1883FE43C();
      v32 = sub_1883FB598(v28, v29, v30, v31);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1883EA000, v24, v25, "%s saving database subscription", v27, 0xCu);
      sub_1883FE944(v52);
      sub_1883F7B60();
      sub_1883FD784();
    }

    v33 = v14[50];
    v34 = v14[51];
    v35 = v14[49];
    v50 = v14[44];
    v14[2] = v14;
    v14[7] = v14 + 42;
    v14[3] = sub_1884E2AE4;
    swift_continuation_init();
    v14[25] = v35;
    v36 = sub_188403664(v14 + 22);
    sub_1883F4C5C(0, &qword_1EA90CA90, off_1E70BA7C8);
    v14[56] = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    CheckedContinuation.init(continuation:function:)();
    (*(v33 + 32))(v36, v34, v35);
    v14[18] = MEMORY[0x1E69E9820];
    v14[19] = 1107296256;
    v14[20] = sub_188464050;
    v14[21] = &unk_1EFA2C108;
    [v50 saveSubscription:v51 completionHandler:v14 + 18];
    (*(v33 + 8))(v36, v35);
    sub_1883FEB30();

    return MEMORY[0x1EEE6DEC8](v37);
  }

  else
  {
    v39 = v14[51];
    v40 = v14[48];

    sub_1883FDB48();
    sub_1883FEB30();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_188429BF4()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  sub_1883FDB48();

  return v4();
}

uint64_t sub_188429CFC()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = v2[5];
  v6 = v2[4];
  *v4 = *v1;
  *(v3 + 48) = v0;

  v7 = v2[3];
  if (v0)
  {
    v8 = sub_1884E0D98;
  }

  else
  {
    v8 = sub_1884E0D78;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_188429E38(uint64_t a1)
{
  *(v2 + 352) = v1;
  v3 = *v1;
  *(v2 + 456) = *a1;
  v4 = *(a1 + 8);
  *(v2 + 360) = v3;
  *(v2 + 368) = v4;
  *(v2 + 457) = *(a1 + 16);
  *(v2 + 376) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_18842D3A8, v1, 0);
}

uint64_t sub_188429E9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return sub_188405594(sub_188429EE4);
}

uint64_t sub_188429EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  v16 = sub_188405E54();
  sub_1883F7468();
  v19 = sub_1884CCC70(v17, v18);
  v20 = sub_188410EC8(v19);
  sub_188404C5C(v20, v16);
  sub_1883FF014();
  if (v15)
  {
    sub_1883F9E4C(*(v12 + 64));
    v75 = v21;
    v23 = *(v22 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 104) = v24;
    *v24 = v25;
    sub_188404FA4(v24);
    sub_18840DEA4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v75, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v35)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v54)
    {
      sub_18840AE7C();
      if (v35)
      {
        static Task<>.checkCancellation()();
      }

      v55 = sub_18840F8F4();
      v56 = sub_188404238(v55);
      sub_1883FDEB0(v56, v57);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8();
LABEL_16:
    v58 = *(v12 + 80);
    v59 = sub_188400870();
    sub_1883F984C(v59);
    sub_1883F7468();
    sub_1884CCC70(v60, v61);
    v62 = *(MEMORY[0x1E69E8950] + 4);
    v63 = swift_task_alloc();
    sub_1883FF4C8(v63);
    sub_18844E6FC(&qword_1EA90E408, &qword_1886FB158);
    sub_1883FA6DC();
    *v13 = v64;
    sub_1883FDD90(v65);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12);
  }

  sub_1883FAAC8();
  if (v37)
  {
    __break(1u);
    goto LABEL_20;
  }

  v38 = sub_1884CDCB0(v36);
  v39 = sub_1883F9A44(v38);
  sub_1883FF604(v39);
  sub_1883F7468();
  sub_1884CCC70(v40, v41);
  v42 = *(MEMORY[0x1E69E88F0] + 4);
  v43 = swift_task_alloc();
  v44 = sub_188404A84(v43);
  *v44 = v45;
  v44[1] = sub_1884CBD5C;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_18842A230()
{
  sub_1883FB4AC();
  sub_188410CF4();
  v2 = *(v0 + 40);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_188442BE4;
  sub_188405778();

  return sub_18842A2DC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18842A2DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_18842A810;

  return sub_18842D514(a1, v6 + 16);
}

uint64_t sub_18842A398(uint64_t a1)
{
  *(v2 + 24) = v1;
  v3 = *(a1 + 8);
  *(v2 + 32) = *v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_18842D62C, v1, 0);
}

uint64_t sub_18842A3EC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (a2 < 1)
  {
    return v2;
  }

  v5 = *(a1 + 16);
  v6 = (a1 + 40);
  v7 = v5;
  if (v5)
  {
    while (1)
    {
      if (*v6 != 1)
      {
        v8 = *(v6 - 1);
        v9 = CKRecordZone.parent.getter();

        if (v9)
        {
          break;
        }
      }

      v6 += 2;
      if (!--v7)
      {
        goto LABEL_6;
      }
    }

    v43 = v2;
    sub_1884779C4(0, v5, 0);
    v22 = v2;
    v40 = a1;
    v23 = (a1 + 40);
    v24 = v5;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      v27 = v25;
      if (v26 == 1)
      {
        v28 = v27;
      }

      else
      {
        v28 = [v27 zoneID];
      }

      v29 = v28;
      v43 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = sub_1883F8DD4(v30);
        sub_1884779C4(v33, v31 + 1, 1);
        v22 = v43;
      }

      *(v22 + 16) = v31 + 1;
      v32 = v22 + 24 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v25;
      *(v32 + 48) = v26;
      v23 += 16;
      --v24;
    }

    while (v24);
    v34 = sub_1884F4A68(v22);
    v35 = swift_allocObject();
    *(v35 + 16) = MEMORY[0x1E69E7CD0];
    v36 = swift_allocObject();
    *(v36 + 16) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v37 = (v40 + 40);
    do
    {
      if (*(*(v36 + 16) + 16) < a2)
      {
        v38 = *v37;
        v41 = *(v37 - 1);
        v42 = v38;
        v39 = v41;
        sub_1884F8D70(&v41, v35, v36, a2, v34);
      }

      v37 += 16;
      --v5;
    }

    while (v5);

    swift_beginAccess();
    v2 = *(v36 + 16);

    return v2;
  }

LABEL_6:

  v10 = sub_18842E160(a2, a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_7:
    sub_188510A94(v10, v12, v14, v16);
    v18 = v17;
    swift_unknownObjectRelease();
    return v18;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  sub_18841BAF0();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v16 >> 1, v14))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v21 != (v16 >> 1) - v14)
  {
LABEL_28:
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_18842A71C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18842A758(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_18842A7A4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_18842A810()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883FDB48();

  return v5();
}

uint64_t sub_18842A8F0()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  *(v3 + 416) = v0;

  v6 = v2[50];
  v7 = v2[44];

  if (v0)
  {
    v8 = sub_1884F4D00;
  }

  else
  {
    v8 = sub_18842AA2C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_18842AA2C()
{
  sub_1883FE264();
  sub_18840C194();
  v1 = v0 + 224;
  v2 = *(v0 + 392);
  if (*(v0 + 224))
  {
    v88 = *(v0 + 224);
    v89 = v0;
    v3 = *(v0 + 232);
    v87 = *(v0 + 240);
    v91 = *(v0 + 248);
    v92 = v0 + 184;
    v94 = *(v3 + 16);
    v95 = v0 + 144;

    v4 = 0;
    v93 = v3;
    v5 = (v3 + 40);
    while (v94 != v4)
    {
      if (v4 >= *(v93 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v6 = *v5;
      v7 = *(v5 - 1);
      v8 = v6;
      *(v1 + 96) = [v7 zoneID];
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
      AnyHashable.init<A>(_:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 104) = v2;
      sub_1884864E0();
      v10 = v2[2];
      sub_1883FE314();
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        goto LABEL_43;
      }

      v16 = v11;
      v17 = v12;
      sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
      {
        v18 = *(v1 + 104);
        sub_1884864E0();
        sub_1883F7AE8();
        if (!v20)
        {
LABEL_35:
          sub_1883F8300();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v16 = v19;
      }

      v2 = *(v1 + 104);
      if (v17)
      {
        v21 = v2[7];
        v22 = *(v21 + 8 * v16);
        *(v21 + 8 * v16) = v8;

        sub_1884889C4(v95);
      }

      else
      {
        sub_1883FF230(&v2[v16 >> 6]);
        sub_1884802A8(v95, v2[6] + 40 * v16);
        *(v2[7] + 8 * v16) = v8;
        sub_1884889C4(v95);
        v23 = v2[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_45;
        }

        v2[2] = v25;
      }

      v5 += 2;
      ++v4;
    }

    v26 = *(v89 + 392);

    v28 = v91 + 64;
    v27 = *(v91 + 64);
    v29 = *(v91 + 32);
    sub_1883F8A68();
    v32 = v31 & v30;
    sub_1883FE184();
    v34 = v33 >> 6;
    swift_bridgeObjectRetain_n();

    v35 = 0;
    v36 = v2;
    v90 = v34;
    if (!v32)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v37 = v35;
LABEL_20:
      v38 = (v37 << 9) | (8 * __clz(__rbit64(v32)));
      v39 = *(*(v91 + 48) + v38);
      v40 = *(*(v91 + 56) + v38);
      *(v1 + 112) = v39;
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
      v96 = v39;
      v41 = v40;
      AnyHashable.init<A>(_:)();
      v42 = v41;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 120) = v36;
      sub_1884864E0();
      v44 = v36[2];
      sub_1883FE314();
      v47 = v1;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        break;
      }

      v51 = v45;
      v52 = v46;
      sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v50))
      {
        v53 = *(v47 + 120);
        sub_1884864E0();
        sub_1883F7AE8();
        if (!v20)
        {
          goto LABEL_35;
        }

        v51 = v54;
      }

      v1 = v47;
      v32 &= v32 - 1;
      v36 = *(v47 + 120);
      if (v52)
      {
        v55 = v36[7];
        v56 = *(v55 + 8 * v51);
        *(v55 + 8 * v51) = v42;

        sub_1884889C4(v92);
      }

      else
      {
        sub_1883FF230(&v36[v51 >> 6]);
        sub_1884802A8(v92, v36[6] + 40 * v51);
        *(v36[7] + 8 * v51) = v42;

        sub_1884889C4(v92);
        v57 = v36[2];
        v24 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v24)
        {
          goto LABEL_47;
        }

        v36[2] = v58;
      }

      v35 = v37;
      v28 = v91 + 64;
      v34 = v90;
      if (!v32)
      {
LABEL_17:
        while (1)
        {
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_44;
          }

          if (v37 >= v34)
          {
            v59 = *(v1 + 234);

            sub_1884F8FAC(v88);

            if ((v59 & 1) == 0)
            {
              v2 = v36;
              v0 = v89;
              goto LABEL_39;
            }

            *(v89 + 392) = v36;
            v60 = *(v89 + 457);
            v61 = *(v89 + 368);
            v62 = *(v89 + 376);
            v63 = *(v1 + 232);
            v64 = *(v89 + 352);
            v65 = swift_task_alloc();
            *(v89 + 400) = v65;
            *(v65 + 16) = v64;
            *(v65 + 24) = v63;
            *(v65 + 32) = v61;
            *(v65 + 40) = v60;
            *(v65 + 48) = v62;
            v66 = swift_task_alloc();
            *(v89 + 408) = v66;
            *v66 = v89;
            v66[1] = sub_18842A8F0;
            v67 = *(v89 + 384);
            sub_1883FE74C();
            sub_1883F7F94();
            sub_1883F8300();

            sub_188429E9C(v68, v69, v70, v71);
            return;
          }

          v32 = *(v28 + 8 * v37);
          ++v35;
          if (v32)
          {
            goto LABEL_20;
          }
        }
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
LABEL_39:
    *(v0 + 424) = v2;
    v74 = *(v0 + 457);
    v75 = *(v0 + 368);
    v76 = *(v0 + 376);
    v77 = *(v1 + 232);
    v78 = *(v0 + 352);
    v79 = swift_task_alloc();
    *(v0 + 432) = v79;
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v79 + 32) = v75;
    *(v79 + 40) = v74;
    *(v79 + 48) = v76;
    v80 = swift_task_alloc();
    *(v0 + 440) = v80;
    *v80 = v0;
    v80[1] = sub_1884307B4;
    v81 = *(v0 + 384);
    sub_1883F8300();

    sub_18842DD9C(v82, v83, v84, v85);
  }
}

uint64_t sub_18842B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  v16 = sub_188405E54();
  sub_1883F7468();
  v19 = sub_1884CCC70(v17, v18);
  v20 = sub_188410EC8(v19);
  sub_188404C5C(v20, v16);
  sub_1883FF014();
  if (v15)
  {
    sub_1883F9E4C(*(v12 + 64));
    v75 = v21;
    v23 = *(v22 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 104) = v24;
    *v24 = v25;
    sub_188404FA4(v24);
    sub_18840DEA4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v75, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v35)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v54)
    {
      sub_18840AE7C();
      if (v35)
      {
        static Task<>.checkCancellation()();
      }

      v55 = sub_18840F8F4();
      v56 = sub_188404238(v55);
      sub_1883FDEB0(v56, v57);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8();
LABEL_16:
    v58 = *(v12 + 80);
    v59 = sub_188400870();
    sub_1883F984C(v59);
    sub_1883F7468();
    sub_1884CCC70(v60, v61);
    v62 = *(MEMORY[0x1E69E8950] + 4);
    v63 = swift_task_alloc();
    sub_1883FF4C8(v63);
    sub_18844E6FC(&qword_1EA90E3F8, &qword_1886FB0D0);
    sub_1883FA6DC();
    *v13 = v64;
    sub_1883FDD90(v65);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12);
  }

  sub_1883FAAC8();
  if (v37)
  {
    __break(1u);
    goto LABEL_20;
  }

  v38 = sub_1884CDCB0(v36);
  v39 = sub_1883F9A44(v38);
  sub_1883FF604(v39);
  sub_1883F7468();
  sub_1884CCC70(v40, v41);
  v42 = *(MEMORY[0x1E69E88F0] + 4);
  v43 = swift_task_alloc();
  v44 = sub_188404A84(v43);
  *v44 = v45;
  v44[1] = sub_1884CBAB4;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_18842B3A8()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_18842B438()
{
  sub_1883FB4AC();
  sub_188410CF4();
  v2 = *(v0 + 40);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_188442BE4;
  sub_188405778();

  return sub_18842B4E4(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18842B4E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_18842CF78;

  return sub_18842B5A0(a1, v6 + 16);
}

uint64_t sub_18842B5A0(uint64_t a1, uint64_t a2)
{
  *(v3 + 384) = a1;
  *(v3 + 392) = v2;
  v5 = type metadata accessor for CancellationError();
  *(v3 + 400) = v5;
  v6 = *(v5 - 8);
  *(v3 + 408) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  *(v3 + 313) = *a2;
  v9 = *(a2 + 8);
  *(v3 + 416) = v8;
  *(v3 + 424) = v9;
  *(v3 + 314) = *(a2 + 16);
  *(v3 + 432) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_18842B680, v2, 0);
}

uint64_t sub_18842B680()
{
  sub_1883F7120();
  v1 = *(*(v0 + 392) + 128);
  *(v0 + 440) = v1;
  v2 = [*(v1 + 16) hasPendingUntrackedChanges];
  *(v0 + 315) = v2;
  if (v2)
  {
    [*(v1 + 16) setHasPendingUntrackedChanges_];
  }

  v3 = *(v0 + 314);
  *(v0 + 240) = *(v0 + 313);
  v4 = *(v0 + 432);
  *(v0 + 248) = *(v0 + 424);
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 448) = v5;
  *v5 = v6;
  v5[1] = sub_18842F9C8;
  v7 = *(v0 + 392);

  return sub_18842DDE4(v0 + 296, v0 + 240);
}

void sub_18842B76C()
{
  v1 = *(v0 + 96);
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 34);
    v7 = *(v0 + 33);
    v8 = *(*(v0 + 96) + 152);
    sub_18840FB98();
    v9 = swift_allocObject();
    *(v0 + 128) = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v4;
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
    *(v9 + 48) = v3;
    sub_1884F9D6C(&unk_1886FB0E0);

    v10 = v5;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 136) = v11;
    *v11 = v12;
    v11[1] = sub_18842EE64;
    sub_188404AB8();

    __asm { BR              X3 }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v15 = *(v0 + 96);
  v16 = type metadata accessor for Logger();
  sub_1883FDE5C(v16, qword_1EA90C9F8);
  sub_18840FB8C();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 96);
    v20 = swift_slowAlloc();
    v31 = sub_1883FE540();
    *v20 = 136315138;
    v21 = sub_1883FE43C();
    v25 = sub_1883FB598(v21, v22, v23, v24);

    *(v20 + 4) = v25;
    sub_1883F7A44(&dword_1883EA000, v26, v27, "%s not getting next record zone change batch for deallocated engine");
    sub_1883FE944(v31);
    sub_1883FD784();
    sub_1883F7B60();
  }

  v28 = *(v0 + 88);
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  sub_1883FDB48();
  sub_188404AB8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18842B9B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  sub_18840FB98();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_18842B9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_188405594(sub_18842BA10);
}

uint64_t sub_18842BA10()
{
  sub_1883FB4AC();
  sub_1884CDCE4();
  v1 = sub_1884021B4();
  v0[12] = v1;
  v3 = sub_1884038A4(v1, v2);
  sub_1883FDF34(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  swift_task_alloc();
  sub_1883FF2B8();
  v0[14] = v12;
  *v12 = v13;
  v12[1] = sub_188407510;
  v14 = v0[8];
  sub_1884110E4();

  return sub_18842E2EC(v15, v16, v17, v18);
}

uint64_t sub_18842BAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = *(v12 + 80);
  v15 = *(v12 + 88);
  v16 = sub_188405E54();
  sub_1883F7468();
  v19 = sub_1884CCC70(v17, v18);
  v20 = sub_188410EC8(v19);
  sub_188404C5C(v20, v16);
  sub_1883FF014();
  if (v15)
  {
    sub_1883F9E4C(*(v12 + 64));
    v75 = v21;
    v23 = *(v22 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 104) = v24;
    *v24 = v25;
    sub_188404FA4(v24);
    sub_18840DEA4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v75, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v35)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v54)
    {
      sub_18840AE7C();
      if (v35)
      {
        static Task<>.checkCancellation()();
      }

      v55 = sub_18840F8F4();
      v56 = sub_188404238(v55);
      sub_1883FDEB0(v56, v57);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8();
LABEL_16:
    v58 = *(v12 + 80);
    v59 = sub_188400870();
    sub_1883F984C(v59);
    sub_1883F7468();
    sub_1884CCC70(v60, v61);
    v62 = *(MEMORY[0x1E69E8950] + 4);
    v63 = swift_task_alloc();
    sub_1883FF4C8(v63);
    sub_18844E6FC(&qword_1EA90E400, &qword_1886FB110);
    sub_1883FA6DC();
    *v13 = v64;
    sub_1883FDD90(v65);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12);
  }

  sub_1883FAAC8();
  if (v37)
  {
    __break(1u);
    goto LABEL_20;
  }

  v38 = sub_1884CDCB0(v36);
  v39 = sub_1883F9A44(v38);
  sub_1883FF604(v39);
  sub_1883F7468();
  sub_1884CCC70(v40, v41);
  v42 = *(MEMORY[0x1E69E88F0] + 4);
  v43 = swift_task_alloc();
  v44 = sub_188404A84(v43);
  *v44 = v45;
  v44[1] = sub_1884CC004;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_18842BE1C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_18842BEAC()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18842BF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_18842C000(a1, a2, a3, v8, v9);
}

uint64_t sub_18842C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a3;
  v5[3] = a5;
  v5[4] = a1;
  v5[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18842C028, 0, 0);
}

uint64_t sub_18842C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FB4AC();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4();
  }

  v13 = sub_18841BAD0();
  sub_1884052D8(v13);
  v14 = *(MEMORY[0x1E69E8950] + 4);
  v15 = swift_task_alloc();
  *(v12 + 64) = v15;
  sub_18844E6FC(&qword_1EA90E400, &qword_1886FB110);
  *v15 = v12;
  v15[1] = sub_18840750C;
  v16 = *(v12 + 32);
  sub_188414794();
  sub_188404D5C();

  return MEMORY[0x1EEE6DE98](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_18842C148()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1884061E0;
  sub_188405778();

  return sub_18842DEAC(v9, v10, v11, v12, v13, v14, v5);
}

uint64_t sub_18842C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_188442BE4;

  return sub_18842C2C4(a1, a2, a3);
}

uint64_t sub_18842C2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 80) = *a2;
  v5 = *(a2 + 8);
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  *(v4 + 81) = *(a2 + 16);
  *(v4 + 48) = *(a2 + 24);
  return sub_1883F9430();
}

uint64_t sub_18842C2F8()
{
  sub_1883F7120();
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = v0[3];
    sub_1883FA550();
    v0[8] = v4;
    v5 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    v8 = v0[2];
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    sub_1883F816C();

    return v9();
  }
}

uint64_t sub_18842C3A8()
{
  sub_1883FC738();
  v20 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  if (v1)
  {
    v3 = *(v0 + 81);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    LOBYTE(v17) = *(v0 + 80);
    *(&v17 + 1) = v5;
    v18 = v3;
    v19 = v4;
    v6 = sub_18841488C();
    v7 = [v2 syncEngine:v1 nextRecordZoneChangeBatchForContext:v6];
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 16);
    if (v7)
    {
      v11 = v7;
      sub_18850A598(&v17);

      swift_unknownObjectRelease();
      v12 = v18;
      *v10 = v17;
      *(v10 + 16) = v12;
    }

    else
    {

      swift_unknownObjectRelease();
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
    }
  }

  else
  {
    v13 = *(v0 + 56);
    swift_unknownObjectRelease();
    v14 = *(v0 + 16);
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
  }

  sub_1883F816C();

  return v15();
}

uint64_t sub_18842C4D8()
{
  v0 = sub_1883F6A78();
  v1 = *(v0 + 128);

  v2 = *(v1 + 16);
  sub_1883F793C();

  return v0;
}

uint64_t sub_18842C524()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 96);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F816C();

  return v5();
}

void sub_18842C604()
{
  v114 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  *(v0 + 464) = v2;
  *(v0 + 472) = v1;
  v107 = v1;
  *(v0 + 316) = *(v0 + 312);
  if (!v2)
  {
    goto LABEL_59;
  }

  if (!sub_1883F4C9C(v2) && !sub_1883F4C9C(v107))
  {
    sub_1884F9AC4(v2);
LABEL_59:
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v80 = *(v0 + 424);
    v79 = *(v0 + 432);
    v81 = *(v0 + 392);
    v82 = type metadata accessor for Logger();
    sub_1883FDE5C(v82, qword_1EA90C9F8);
    sub_18840FB8C();

    v83 = v79;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v108 = *(v0 + 314);
      v86 = *(v0 + 432);
      v106 = *(v0 + 424);
      v87 = *(v0 + 313);
      v88 = *(v0 + 392);
      sub_1883FD778();
      swift_slowAlloc();
      v109 = sub_18842D4DC();
      *v81 = 136315394;
      v89 = sub_1883FE43C();
      sub_1883FE340(v89, v90, &v109);
      sub_1883F9B0C();
      sub_1883FC70C();
      LOBYTE(v110) = v87;
      v111 = v106;
      v112 = v108;
      v113 = v86;

      v91 = v86;
      v92 = CKSyncEngine.SendChangesContext.description.getter();
      v94 = v93;

      sub_1883FE340(v92, v94, &v109);
      sub_18840FB8C();

      *(v81 + 14) = v92;
      _os_log_impl(&dword_1883EA000, v84, v85, "%s no record zone change batch to send for context: %s", v81, 0x16u);
      sub_1884038F4();
      sub_1883FC7E4();
      sub_1883FD784();
    }

    v95 = *(v0 + 384);
    *v95 = 0u;
    v95[1] = 0u;
    v96 = *(v0 + 416);

    sub_1883FDB48();

    v97();
    return;
  }

  if (qword_1EA90C9F0 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v4 = *(v0 + 424);
    v3 = *(v0 + 432);
    v5 = *(v0 + 392);
    v6 = type metadata accessor for Logger();
    sub_1883FDE5C(v6, qword_1EA90C9F8);

    v7 = v0;
    v8 = v3;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v100 = v0;
    if (os_log_type_enabled(v9, v10))
    {
      v104 = *(v0 + 314);
      v11 = *(v0 + 424);
      v12 = *(v0 + 432);
      v102 = *(v7 + 424);
      v13 = *(v7 + 313);
      v14 = *(v7 + 392);
      sub_1883FD778();
      v15 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = sub_1883FE43C();
      v18 = sub_1883FE340(v16, v17, &v109);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      LOBYTE(v110) = v13;
      v111 = v102;
      v112 = v104;
      v113 = v12;

      v19 = v12;
      v20 = CKSyncEngine.SendChangesContext.description.getter();
      v22 = v21;

      v23 = sub_1883FE340(v20, v22, &v109);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1883EA000, v9, v10, "%s will send next change batch for context: %s", v15, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    v24 = v107;
    v25 = sub_1883F4C9C(v2);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v27 = v25;
      v110 = MEMORY[0x1E69E7CC0];
      sub_1883FE594();
      sub_18847791C();
      if (v27 < 0)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        return;
      }

      v28 = 0;
      v26 = v110;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x18CFD59D0](v28, v2);
        }

        else
        {
          v29 = *(v2 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = [v29 recordID];

        v110 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1883F8DD4(v32);
          sub_18847791C();
          v26 = v110;
        }

        ++v28;
        *(v26 + 16) = v33 + 1;
        v34 = v26 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = 0;
      }

      while (v27 != v28);
      v24 = v107;
    }

    v35 = sub_1883F4C9C(v24);
    v0 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v36 = v35;
      v110 = MEMORY[0x1E69E7CC0];
      sub_1883FE594();
      sub_18847791C();
      if (v36 < 0)
      {
        goto LABEL_74;
      }

      v37 = 0;
      v38 = v110;
      v39 = v107;
      do
      {
        if ((v107 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x18CFD59D0](v37, v39);
        }

        else
        {
          v40 = *(v39 + 8 * v37 + 32);
        }

        v41 = v40;
        v110 = v38;
        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1883F8DD4(v42);
          sub_18847791C();
          v39 = v107;
          v38 = v110;
        }

        ++v37;
        *(v38 + 16) = v43 + 1;
        v44 = v38 + 16 * v43;
        *(v44 + 32) = v41;
        *(v44 + 40) = 1;
      }

      while (v36 != v37);
      v0 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    v45 = *(v100 + 440);
    v110 = v26;
    sub_18847261C(v38);
    v46 = v110;
    CKSyncEngine.State.pendingRecordZoneChanges.getter();
    sub_1884FB948(v47);
    v49 = sub_1884F9684(v46, v48);
    v2 = *(v45 + 16);
    v50 = v49[2];
    if (!v50)
    {
      break;
    }

    v98 = v2;
    v99 = v46;
    v110 = v0;
    v101 = v49;
    specialized ContiguousArray.reserveCapacity(_:)();
    v53 = sub_1884E4828(v101);
    v54 = v101;
    v55 = 0;
    v56 = v101 + 7;
    v103 = v51;
    while ((v53 & 0x8000000000000000) == 0 && v53 < 1 << *(v54 + 32))
    {
      v57 = v53 >> 6;
      v0 = 1 << v53;
      if ((v56[v53 >> 6] & (1 << v53)) == 0)
      {
        goto LABEL_67;
      }

      if (*(v54 + 9) != v51)
      {
        goto LABEL_68;
      }

      v105 = v55;
      v58 = v51;
      v59 = v54[6] + 16 * v53;
      v60 = v54;
      LODWORD(v107) = v52;
      [objc_allocWithZone(CKSyncEnginePendingRecordZoneChange) initWithRecordID:*v59 type:*(v59 + 8)];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v2 = *(v110 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v107)
      {
        goto LABEL_75;
      }

      v61 = 1 << *(v60 + 32);
      if (v53 >= v61)
      {
        goto LABEL_69;
      }

      v62 = v56[v57];
      if ((v62 & v0) == 0)
      {
        goto LABEL_70;
      }

      v54 = v60;
      v63 = v58;
      if (*(v60 + 9) != v58)
      {
        goto LABEL_71;
      }

      v64 = v62 & (-2 << (v53 & 0x3F));
      if (v64)
      {
        v61 = __clz(__rbit64(v64)) | v53 & 0x7FFFFFFFFFFFFFC0;
        v65 = v105;
      }

      else
      {
        v0 = v57 << 6;
        v66 = &v101[v57 + 8];
        v67 = v57 + 1;
        v65 = v105;
        while (v67 < (v61 + 63) >> 6)
        {
          v68 = *v66++;
          v2 = v68;
          v0 += 64;
          ++v67;
          if (v68)
          {
            sub_188487EB8(v53, v63, 0);
            v54 = v101;
            v61 = __clz(__rbit64(v2)) + v0;
            goto LABEL_45;
          }
        }

        sub_188487EB8(v53, v63, 0);
        v54 = v101;
      }

LABEL_45:
      v52 = 0;
      v55 = v65 + 1;
      v53 = v61;
      v51 = v103;
      if (v55 == v50)
      {

        v2 = v98;
        v46 = v99;
        goto LABEL_48;
      }
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
LABEL_72:
    sub_1883F7480();
  }

LABEL_48:
  v69 = *(v100 + 315);
  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  sub_1883F9598();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 markRecordZoneChanges:isa inFlight:1];

  if (v69)
  {
    [*(*(v100 + 440) + 16) setHasInFlightUntrackedChanges_];
  }

  v71 = *(v46 + 16);
  if (v71)
  {
    v110 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v72 = 32;
    do
    {
      v73 = *(v46 + v72);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v74 = *(v110 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v72 += 16;
      --v71;
    }

    while (v71);

    v75 = v110;
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  *(v100 + 480) = v75;
  v76 = swift_task_alloc();
  *(v100 + 488) = v76;
  *v76 = v100;
  v76[1] = sub_1884F6884;
  v77 = *(v100 + 392);
  v78 = MEMORY[0x1E69E7CC0];

  sub_1884E5CF0(v78, v75);
}

uint64_t sub_18842CF78()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1883F816C();

    return v12();
  }
}

uint64_t sub_18842D08C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[56] = v0;

  if (v0)
  {
    v9 = v3[46];

    return MEMORY[0x1EEE6DFA0](sub_1884F4C08, v9, 0);
  }

  else
  {
    v3[57] = 0;
    v10 = swift_task_alloc();
    v3[58] = v10;
    *v10 = v7;
    sub_1883F9E98(v10);
    v11 = v3[46];

    return sub_18840E178();
  }
}

uint64_t sub_18842D1CC()
{
  sub_1883F7120();
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    v1(0);
  }

  sub_1883F816C();

  return v3();
}

uint64_t sub_18842D234()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 432) = v0;

  if (v0)
  {
    v9 = *(v3 + 368);

    return MEMORY[0x1EEE6DFA0](sub_1884F4B10, v9, 0);
  }

  else
  {
    v10 = *(v3 + 505);
    v12 = *(v3 + 376);
    v11 = *(v3 + 384);
    *(v3 + 336) = *(v3 + 504);
    *(v3 + 344) = v12;
    *(v3 + 352) = v10;
    *(v3 + 360) = v11;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v3 + 440) = v13;
    *v13 = v14;
    v13[1] = sub_18842D08C;
    v15 = *(v3 + 368);

    return sub_188429E38(v3 + 336);
  }
}

uint64_t sub_18842D3A8()
{
  sub_1883FB4AC();
  v1 = *(v0 + 456);
  v2 = *(v0 + 352);
  *(v0 + 458) = *(v2 + 201);
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + 384) = *(v2 + 176);
  *(v0 + 392) = v3;
  v4 = *(v0 + 457);
  v6 = *(v0 + 368);
  v5 = *(v0 + 376);
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *(v7 + 32) = v6;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 408) = v8;
  *v8 = v9;
  v8[1] = sub_18842A8F0;
  v10 = *(v0 + 384);
  sub_1883FE74C();
  v11 = sub_18840BE44();

  return sub_188429E9C(v11, v12, v13, v14);
}

BOOL sub_18842D494()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

void sub_18842D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21[341] = a20;
  v21[342] = a19;
  v21[343] = a18;
  v21[344] = v20;
}

uint64_t sub_18842D4DC()
{

  return swift_slowAlloc();
}

void sub_18842D4F8()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_18842D514(uint64_t a1, uint64_t a2)
{
  *(v3 + 360) = a1;
  *(v3 + 368) = v2;
  v5 = type metadata accessor for CancellationError();
  *(v3 + 376) = v5;
  v6 = *(v5 - 8);
  *(v3 + 384) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *(v3 + 240) = *a2;
  *(v3 + 392) = v8;
  *(v3 + 400) = v11;
  *(v3 + 248) = v9;
  *(v3 + 256) = v10;
  *(v3 + 264) = v11;
  v12 = swift_task_alloc();
  *(v3 + 408) = v12;
  *v12 = v3;
  v12[1] = sub_18842E1F4;

  return sub_18842A398(v3 + 240);
}

uint64_t sub_18842D62C()
{
  v1 = v0;
  v2 = *(v0[3] + 128);
  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v72 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v69 = v0;
  if (!Strong)
  {
    goto LABEL_35;
  }

  v5 = Strong;
  v6 = [Strong dataSource];
  if (!v6)
  {

LABEL_35:
    v35 = v1[3];
    v62 = sub_18842DD68();
    goto LABEL_36;
  }

  v7 = v6;
  v8 = &off_1E70C3000;
  if (([v6 respondsToSelector_] & 1) != 0 && (v9 = objc_msgSend(v7, sel_recordZonesToSaveForSyncEngine_, v5)) != 0)
  {
    v10 = v9;
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_1883F9598();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = sub_1883F4C9C(v11) != 0;
    v13 = sub_1883F4C9C(v11);
    if (v13)
    {
      v14 = v13;
      v68 = v7;
      v70 = v5;
      v73 = MEMORY[0x1E69E7CC0];
      sub_1883FE594();
      sub_188477954();
      if (v14 < 0)
      {
        goto LABEL_68;
      }

      v15 = 0;
      v16 = v73;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x18CFD59D0](v15, v11);
        }

        else
        {
          v17 = *(v11 + 8 * v15 + 32);
        }

        v18 = v17;
        v20 = *(v73 + 16);
        v19 = *(v73 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1883F8DD4(v19);
          sub_1883FF374();
          sub_188477954();
        }

        ++v15;
        *(v73 + 16) = v20 + 1;
        v21 = v73 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = 0;
      }

      while (v14 != v15);

      v5 = v70;
      v7 = v68;
      v8 = &off_1E70C3000;
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_188472600(v16);
  }

  else
  {
    v12 = 0;
  }

  if ([v7 v8[329]])
  {
    v22 = [v7 recordZoneIDsToDeleteForSyncEngine_];
    if (v22)
    {
      v23 = v22;
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_1883F9598();
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = sub_1883F4C9C(v24) != 0;
      v26 = sub_1883F4C9C(v24);
      if (v26)
      {
        v27 = v26;
        v74 = MEMORY[0x1E69E7CC0];
        sub_1883FE594();
        sub_188477954();
        if (v27 < 0)
        {
          goto LABEL_69;
        }

        v28 = 0;
        v29 = v74;
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x18CFD59D0](v28, v24);
          }

          else
          {
            v30 = *(v24 + 8 * v28 + 32);
          }

          v31 = v30;
          v33 = *(v74 + 16);
          v32 = *(v74 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1883F8DD4(v32);
            sub_1883FF374();
            sub_188477954();
          }

          ++v28;
          *(v74 + 16) = v33 + 1;
          v34 = v74 + 16 * v33;
          *(v34 + 32) = v31;
          *(v34 + 40) = 1;
        }

        while (v27 != v28);

        v1 = v69;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      v12 |= v25;
      sub_188472600(v29);
    }
  }

  swift_unknownObjectRelease();
  if ((v12 & 1) == 0)
  {
    goto LABEL_35;
  }

  v62 = 100;
LABEL_36:
  v36 = 0;
  v37 = v1[5];
  v67 = *(v72 + 16);
  v64 = v1 + 2;
  v63 = MEMORY[0x1E69E7CC0];
  while (v36 != v67)
  {
    if (v36 >= *(v72 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      JUMPOUT(0x18842DD14);
    }

    v38 = v72 + 32 + 16 * v36;
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = *v38;
    v71 = v41;
    if (v40 == 1)
    {
      v42 = v41;
    }

    else
    {
      v42 = [v41 zoneID];
    }

    v43 = v42;
    ++v36;
    v66 = v39;
    v65 = v40;
    switch(*(v69 + 48))
    {
      case 1:
        *v64 = v42;
        *(swift_task_alloc() + 16) = v64;
        v52 = sub_18850DE28();

        if (v52)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      case 2:
        v45 = sub_1883F4C9C(v37);
        if (!v45)
        {
          goto LABEL_55;
        }

        v46 = v45;
        v75 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v46 < 0)
        {
          goto LABEL_67;
        }

        v47 = 0;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x18CFD59D0](v47, v37);
          }

          else
          {
            v48 = *(v37 + 8 * v47 + 32);
          }

          v49 = v48;
          ++v47;
          v50 = [v48 zoneID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v51 = *(v75 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v46 != v47);
LABEL_55:
        *v64 = v43;
        *(swift_task_alloc() + 16) = v64;
        v53 = sub_18850DE28();

        if (v53)
        {
LABEL_58:
          v54 = v63;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = *(v63 + 16);
            sub_188477954();
            v54 = v63;
          }

          v57 = *(v54 + 16);
          v56 = *(v54 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_1883F8DD4(v56);
            sub_188410F10();
            sub_188477954();
            v54 = v63;
          }

          *(v54 + 16) = v57 + 1;
          v63 = v54;
          v58 = v54 + 16 * v57;
          *(v58 + 32) = v66;
          *(v58 + 40) = v65;
        }

        else
        {
LABEL_56:
        }

        break;
      case 3:

        goto LABEL_58;
      default:
        *v64 = v42;
        *(swift_task_alloc() + 16) = v64;
        v44 = sub_18850DE28();

        if ((v44 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
    }
  }

  v59 = sub_18842A3EC(v63, v62);

  v60 = v69[1];

  return v60(v59);
}

uint64_t sub_18842DD68()
{
  os_unfair_lock_lock((v0 + 184));
  v1 = *(v0 + 192);
  os_unfair_lock_unlock((v0 + 184));
  return v1;
}

uint64_t sub_18842DD9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return sub_188405594(sub_18842B05C);
}

uint64_t sub_18842DDE4(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  *(v3 + 33) = *a2;
  *(v3 + 34) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(v3 + 104) = *(a2 + 8);
  *(v3 + 112) = v4;
  return sub_1883F8EA4(sub_18842B76C, v2);
}

uint64_t sub_18842DE1C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18842DEAC(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 105) = a5;
  *(v7 + 104) = a3;
  *(v7 + 48) = a1;
  *(v7 + 56) = a4;
  *(v7 + 80) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_18842E33C, 0, 0);
}

uint64_t sub_18842DEE0()
{
  sub_1883F7120();
  v1 = v0[8];
  v2 = v0[4];
  v0[9] = swift_unknownObjectWeakLoadStrong();

  v3 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18842DFC8(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_188406308(a1, a2, a3, v8, v9);
}

uint64_t sub_18842E08C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

id sub_18842E11C()
{
  v1 = [*(*(v0 + OBJC_IVAR___CKSyncEngine_delegateAdapter) + 120) dataSource];

  return v1;
}

uint64_t sub_18842E160(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_18842A758(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1884DFC9C(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18842E1F4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 408);
  v5 = *(v3 + 368);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;
  *(v9 + 416) = v8;

  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18842E2EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_18842BAD0, v4, 0);
}

void sub_18842E33C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 105);
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    swift_getObjectType();
    *(v0 + 16) = v5 & 1;
    *(v0 + 24) = v4;
    *(v0 + 32) = v2;
    *(v0 + 40) = v3;
    v7 = *(v1 + 16);
    v18 = v7 + *v7;
    v8 = v7[1];
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 96) = v9;
    *v9 = v10;
    v9[1] = sub_18842C524;
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    sub_188404AB8();

    __asm { BRAA            X5, X16 }
  }

  v15 = *(v0 + 48);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  sub_1883F816C();
  sub_188404AB8();

  __asm { BRAA            X1, X16 }
}

void sub_18842E524(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1883F4C9C(a1);
  if (v6)
  {
    v7 = v6;
    _Block_copy(a3);
    v25 = MEMORY[0x1E69E7CC0];
    sub_18847791C();
    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v20 = a3;
    v21 = a2;
    v8 = 0;
    v9 = v25;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18CFD59D0](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      sub_18850C5B8(&v22);

      v12 = v22;
      v13 = v23;
      v25 = v9;
      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        sub_18847791C();
        v9 = v25;
      }

      ++v8;
      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
    }

    while (v7 != v8);

    a3 = v20;
    a2 = v21;
  }

  else
  {
    _Block_copy(a3);

    v9 = MEMORY[0x1E69E7CC0];
  }

  _Block_copy(a3);
  sub_18842E76C(a3, v9, &v22);
  v16 = v22;
  if (v22)
  {
    v17 = v24;
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    v19 = Array._bridgeToObjectiveC()().super.isa;
    [a2 initWithRecordsToSave:isa recordIDsToDelete:v19 atomicByZone:v17 & 1];
    _Block_release(a3);
    _Block_release(a3);
    sub_1884F9AC4(v16);
  }

  else
  {
    _Block_release(a3);
    _Block_release(a3);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }
}

void sub_18842E76C(uint64_t (**aBlock)(void *, id)@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v4 = aBlock;
  v5 = a2;
  v6 = a3;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v46 = *(a2 + 16);
  if (!v46)
  {
    _Block_copy(aBlock);

    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  _Block_copy(aBlock);
  v7 = 0;
  v8 = 0;
  v9 = (v5 + 40);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v47 = v5;
  while (1)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v12 = *(v9 - 1);
    v13 = *v9;
    v14 = v12;
    v3 = v14;
    if (v13 != 1)
    {
      v45 = v14;
      v3 = v14;
      v19 = v4[2](v4, v3);
      if (!v19)
      {
        v44 = v11;
        if (qword_1EA90C9F0 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1883FDE5C(v23, qword_1EA90C9F8);
        v24 = v3;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v42 = v4;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v28 = v12;
          v29 = v24;
          _os_log_impl(&dword_1883EA000, v25, v26, "No record to save for record ID %@", v27, 0xCu);
          sub_188462FE0(v28);
          MEMORY[0x18CFD7E80](v28, -1, -1);
          v30 = v27;
          v4 = v42;
          MEMORY[0x18CFD7E80](v30, -1, -1);
          v24 = v25;
          v25 = v29;
        }

        v11 = v44;

        v3 = v45;
        goto LABEL_27;
      }

      v20 = v19;
      v21 = [v19 size];
      v18 = __OFADD__(v7, v21);
      v7 += v21;
      if (v18)
      {
        goto LABEL_66;
      }

      if (v7 <= 1572864)
      {
        goto LABEL_18;
      }

      if (v11 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_41;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      if (!(v10 >> 62))
      {
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

LABEL_18:
        v22 = v20;
        MEMORY[0x18CFD52F0]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v11 = v49;
        v3 = v45;
        if (v7 > 1572864)
        {
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }

LABEL_41:

      v3 = v45;
LABEL_42:

      if (qword_1EA90C9F0 == -1)
      {
LABEL_43:
        v33 = type metadata accessor for Logger();
        sub_1883FDE5C(v33, qword_1EA90C9F8);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_55;
        }

        v36 = v4;
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Next record will exceed max bytes per batch";
        goto LABEL_54;
      }

LABEL_67:
      swift_once();
      goto LABEL_43;
    }

    v15 = [v14 size];
    if (__OFADD__(v7, v15))
    {
      goto LABEL_64;
    }

    if (v15 + v7 > 1572864)
    {
      goto LABEL_42;
    }

    v16 = v3;
    v3 = v3;
    MEMORY[0x18CFD52F0]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v48;
    v17 = [v3 size];
    v18 = __OFADD__(v7, v17);
    v7 += v17;
    if (v18)
    {
      goto LABEL_65;
    }

    v3 = v16;
LABEL_27:
    if (v11 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v31, v32))
    {
      goto LABEL_63;
    }

    if (v31 + v32 > 249)
    {
      break;
    }

    v5 = v47;
    if (v7 >= 1572864)
    {

      if (qword_1EA90C9F0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1883FDE5C(v40, qword_1EA90C9F8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = v4;
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Current batch is over the max bytes per batch";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    ++v8;

    v9 += 16;
    if (v46 == v8)
    {

      goto LABEL_56;
    }
  }

  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1883FDE5C(v39, qword_1EA90C9F8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v4;
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Reached max record count per batch";
LABEL_54:
    _os_log_impl(&dword_1883EA000, v34, v35, v38, v37, 2u);
    v41 = v37;
    v4 = v36;
    MEMORY[0x18CFD7E80](v41, -1, -1);
  }

LABEL_55:

LABEL_56:
  v6 = a3;
LABEL_57:
  if (sub_1883F4C9C(v11) || sub_1883F4C9C(v10))
  {
    _Block_release(v4);
    _Block_release(v4);
    *v6 = v11;
    *(v6 + 8) = v10;
  }

  else
  {

    _Block_release(v4);
    _Block_release(v4);
    *v6 = 0;
    *(v6 + 8) = 0;
  }

  *(v6 + 16) = 0;
}

uint64_t sub_18842EE64()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[17];
  v3 = v1[16];
  v4 = v1[12];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  v7 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18842EF78()
{
  v99 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v87 = v0 + 48;
    v88 = v0 + 40;
    v85 = v0 + 64;
    v86 = v0 + 56;
    v83 = v0 + 80;
    v84 = v0 + 72;
    v93 = *(v0 + 24);
    v89 = *(v0 + 32);
    v96 = MEMORY[0x1E69E7CC0];
    v3 = sub_1883F4C9C(v2);
    v4 = 0;
    v92 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    v90 = v2;
    while (1)
    {
      v6 = v4;
LABEL_4:
      if (v3 == v6)
      {
        break;
      }

      if (v92)
      {
        v7 = MEMORY[0x18CFD59D0](v6, v2);
      }

      else
      {
        if (v6 >= *(v5 + 16))
        {
          goto LABEL_62;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v1 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v8 = *(v0 + 34);
      v9 = [v7 recordID];
      v10 = v9;
      switch(v8)
      {
        case 1:
          v15 = *(v0 + 104);
          v16 = [v9 zoneID];
          *(v0 + 56) = v16;
          *(swift_task_alloc() + 16) = v86;
          sub_1884F9D7C();
          LOBYTE(v15) = sub_18850DE28();

          if (v15)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        case 2:
          v11 = *(v0 + 104);
          *(v0 + 48) = v9;
          *(swift_task_alloc() + 16) = v87;
          sub_1884F9D7C();
          LOBYTE(v11) = sub_18850DE28();

          if (v11)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        case 3:

          ++v6;
          goto LABEL_4;
        default:
          v12 = *(v0 + 104);
          v13 = [v9 zoneID];
          *(v0 + 40) = v13;
          *(swift_task_alloc() + 16) = v88;
          LOBYTE(v12) = sub_18850DE28();

          if (v12)
          {
LABEL_15:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v14 = *(v96 + 16);
            sub_188404A38();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_188404A38();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_13:
          }

          v2 = v90;
          v0 = v91;
          break;
      }
    }

    v17 = v96;
    v18 = sub_1883F4C9C(v96);
    if (v18)
    {
      v1 = v18;
      v19 = MEMORY[0x1E69E7CC0];
      v96 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v1 < 0)
      {
        goto LABEL_65;
      }

      v20 = 0;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x18CFD59D0](v20, v17);
        }

        else
        {
          v21 = *(v17 + 8 * v20 + 32);
        }

        v22 = v21;
        ++v20;
        v23 = [v21 recordID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = *(v96 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v2 = v90;
        v0 = v91;
      }

      while (v1 != v20);

      v25 = v96;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
      v19 = MEMORY[0x1E69E7CC0];
    }

    v96 = v19;
    v39 = v93;
    v1 = sub_1883F4C9C(v93);
    v40 = 0;
    while (v1 != v40)
    {
      if ((v93 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x18CFD59D0](v40, v39);
      }

      else
      {
        if (v40 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v41 = *(v39 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_63;
      }

      switch(*(v0 + 34))
      {
        case 1:
          v48 = *(v0 + 104);
          v49 = [v41 zoneID];
          *(v0 + 80) = v49;
          *(swift_task_alloc() + 16) = v83;
          sub_1884F9D7C();
          v45 = sub_18850DE28();

          goto LABEL_45;
        case 2:
          v44 = *(v0 + 104);
          *(v0 + 72) = v41;
          *(swift_task_alloc() + 16) = v84;
          v45 = sub_18850DE28();
LABEL_45:

          if ((v45 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        case 3:

          ++v40;
          v39 = v93;
          continue;
        default:
          v46 = *(v0 + 104);
          v47 = [v41 zoneID];
          *(v0 + 64) = v47;
          *(swift_task_alloc() + 16) = v85;
          sub_1884F9D7C();
          LOBYTE(v46) = sub_18850DE28();

          if (v46)
          {
LABEL_46:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v50 = *(v96 + 16);
            sub_188404A38();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_188404A38();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_43:
          }

          v40 = v43;
          v2 = v90;
          v0 = v91;
          v39 = v93;
          break;
      }
    }

    if (sub_1883F4C9C(v25) || sub_1883F4C9C(v96))
    {
      v51 = *(v0 + 120);
      v52 = *(v0 + 34);
      v53 = *(v0 + 104);
      sub_1884F9AC4(v2);
      v96 = 0;
      v97 = 0xE000000000000000;
      _StringGuts.grow(_:)(113);
      MEMORY[0x18CFD5140](0xD000000000000039, 0x8000000188702780);
      v94 = v53;
      v95 = v52;
      CKSyncEngine.SendChangesOptions.Scope.description.getter();
      MEMORY[0x18CFD5140]();

      sub_1883FA724();
      v54 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
      v55 = MEMORY[0x18CFD5330](v25, v54);
      v57 = v56;

      MEMORY[0x18CFD5140](v55, v57);

      sub_1883FA724();
      v58 = sub_1883F7E8C();
      v59 = MEMORY[0x18CFD5330](v58);
      v61 = v60;

      MEMORY[0x18CFD5140](v59, v61);

      related decl 'e' for CKErrorCode.init(_:description:)(12, 0, 0xE000000000000000);
      swift_willThrow();

      sub_1883F816C();
      goto LABEL_52;
    }

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v63 = *(v91 + 96);
    v64 = type metadata accessor for Logger();
    sub_1883FDE5C(v64, qword_1EA90C9F8);

    v65 = v90;
    sub_1884F9B70(v90);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    v68 = v91;

    sub_1884F9AC4(v90);
    v69 = os_log_type_enabled(v66, v67);
    v70 = *(v91 + 120);
    if (v69)
    {
      v71 = *(v91 + 96);
      sub_1883FD778();
      v72 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v72 = 136315394;
      v73 = sub_1883FE43C();
      v75 = sub_1883FE340(v73, v74, &v94);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2080;
      v96 = v90;
      v97 = v39;
      v76 = v89 & 1;
      v98 = v89 & 1;
      sub_1884F9B70(v90);
      v77 = CKSyncEngine.RecordZoneChangeBatch.description.getter();
      v79 = v78;

      v39 = v93;

      v80 = sub_1883FE340(v77, v79, &v94);
      v65 = v90;
      v68 = v91;

      *(v72 + 14) = v80;
      _os_log_impl(&dword_1883EA000, v66, v67, "%s received record zone change batch: %s", v72, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    else
    {
      v81 = *(v91 + 120);

      v76 = v89 & 1;
    }

    v82 = *(v68 + 88);
    *v82 = v65;
    *(v82 + 8) = v39;
    *(v82 + 16) = v76;
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
LABEL_66:
      sub_1883F7480();
    }

    v26 = *(v0 + 96);
    v27 = type metadata accessor for Logger();
    sub_1883FDE5C(v27, qword_1EA90C9F8);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 120);
    if (v30)
    {
      v32 = *(v0 + 96);
      v33 = swift_slowAlloc();
      v34 = sub_1883FE540();
      v96 = v34;
      *v33 = 136315138;
      v35 = sub_1883FE43C();
      sub_1883FE340(v35, v36, &v96);
      sub_1883F9B0C();
      *(v33 + 4) = v1;
      _os_log_impl(&dword_1883EA000, v28, v29, "%s no batch received from nextRecordZoneChangeBatch", v33, 0xCu);
      sub_1883FE944(v34);
      sub_1883FC7E4();
      v0 = v91;
      sub_1883F7B60();
    }

    v37 = *(v0 + 88);
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
  }

  sub_1883FDB48();
LABEL_52:

  return v38();
}

uint64_t sub_18842F9C8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 456) = v0;

  v9 = *(v3 + 392);
  if (v0)
  {
    v10 = sub_1884F7C6C;
  }

  else
  {
    v10 = sub_18842C604;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_18842FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FE264();
  sub_18840C194();
  v21 = *(v20 + 424);
  if (*(v20 + 256))
  {
    a11 = *(v20 + 256);
    v22 = *(v20 + 264);
    a10 = *(v20 + 272);
    a14 = *(v20 + 280);
    a16 = *(v22 + 16);

    v23 = 0;
    a15 = v22;
    v24 = (v22 + 40);
    while (a16 != v23)
    {
      if (v23 >= *(a15 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v25 = *v24;
      v26 = *(v24 - 1);
      v27 = v25;
      *(v20 + 288) = [v26 recordID];
      sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
      sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
      AnyHashable.init<A>(_:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 296) = v21;
      sub_1884864E0();
      v29 = v21[2];
      sub_1883FE314();
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_57;
      }

      v35 = v30;
      v36 = v31;
      sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
      {
        v37 = *(v20 + 296);
        v38 = sub_1884864E0();
        if ((v36 & 1) != (v39 & 1))
        {
LABEL_44:
          sub_1883F8300();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v35 = v38;
      }

      v21 = *(v20 + 296);
      if (v36)
      {
        v40 = v21[7];
        v41 = *(v40 + 8 * v35);
        *(v40 + 8 * v35) = v27;

        sub_1884889C4(v20 + 64);
      }

      else
      {
        sub_1883FF230(&v21[v35 >> 6]);
        sub_1884802A8(v20 + 64, v21[6] + 40 * v35);
        *(v21[7] + 8 * v35) = v27;
        sub_1884889C4(v20 + 64);
        v42 = v21[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_59;
        }

        v21[2] = v44;
      }

      v24 += 2;
      ++v23;
    }

    v45 = *(v20 + 424);

    v47 = a14 + 64;
    v46 = *(a14 + 64);
    v48 = *(a14 + 32);
    sub_1883F8A68();
    v51 = v50 & v49;
    sub_1883FE184();
    v53 = v52 >> 6;
    swift_bridgeObjectRetain_n();

    v54 = 0;
    v55 = v21;
    a12 = v53;
    a13 = a14 + 64;
    if (v51)
    {
      goto LABEL_19;
    }

LABEL_15:
    while (1)
    {
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v56 >= v53)
      {

        sub_1884F8FAC(a11);

        if (!v55[2])
        {
LABEL_52:
          v103 = *(v20 + 352);
          *(v20 + 458) = *(v103 + 201);
          *(v20 + 384) = *(v103 + 176);
          *(v20 + 392) = v55;
          v104 = *(v20 + 457);
          v106 = *(v20 + 368);
          v105 = *(v20 + 376);
          v107 = *(v20 + 456);
          v108 = swift_task_alloc();
          *(v20 + 400) = v108;
          *(v108 + 16) = v103;
          *(v108 + 24) = v107;
          *(v108 + 32) = v106;
          *(v108 + 40) = v104;
          *(v108 + 48) = v105;
          swift_task_alloc();
          sub_1883FF2B8();
          *(v20 + 408) = v109;
          *v109 = v110;
          v109[1] = sub_18842A8F0;
          v111 = *(v20 + 384);
          sub_1883FE74C();
          sub_18840BE44();
          sub_1883F8300();

          sub_188429E9C(v112, v113, v114, v115);
          return;
        }

        if (*(*(v20 + 352) + 200) != 1)
        {
          goto LABEL_42;
        }

        v78 = v55[8];
        v79 = *(v20 + 448);
        v80 = *(v55 + 32);
        sub_1883F8A68();
        v83 = v82 & v81;
        sub_1883FE184();
        v85 = v84 >> 6;

        v86 = 0;
        while (v83)
        {
LABEL_38:
          v88 = *(v20 + 360);
          v89 = __clz(__rbit64(v83)) | (v86 << 6);
          sub_1884802A8(v55[6] + 40 * v89, v20 + 16);
          v90 = *(v55[7] + 8 * v89);
          *(v20 + 56) = v90;
          v91 = sub_1884F856C(v90);
          if (v79)
          {

            sub_188442B84(v20 + 16, &qword_1EA90E5B0, &qword_1886FB9F8);
            sub_1883F8300();
            return;
          }

          v92 = v91;
          v83 &= v83 - 1;
          sub_188442B84(v20 + 16, &qword_1EA90E5B0, &qword_1886FB9F8);
          if (v92)
          {

            goto LABEL_42;
          }
        }

        while (1)
        {
          v87 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_60;
          }

          if (v87 >= v85)
          {

            goto LABEL_52;
          }

          v83 = v55[v87 + 8];
          ++v86;
          if (v83)
          {
            v86 = v87;
            goto LABEL_38;
          }
        }
      }

      v51 = *(v47 + 8 * v56);
      ++v54;
      if (v51)
      {
        v54 = v56;
LABEL_19:
        while (1)
        {
          v57 = (v54 << 9) | (8 * __clz(__rbit64(v51)));
          v58 = *(*(a14 + 48) + v57);
          v59 = *(*(a14 + 56) + v57);
          *(v20 + 304) = v58;
          sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
          sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
          a16 = v58;
          v60 = v59;
          AnyHashable.init<A>(_:)();
          v61 = v60;
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *(v20 + 312) = v55;
          sub_1884864E0();
          v63 = v55[2];
          sub_1883FE314();
          v68 = v66 + v67;
          if (__OFADD__(v66, v67))
          {
            goto LABEL_61;
          }

          v69 = v64;
          v70 = v65;
          sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v62, v68))
          {
            v71 = *(v20 + 312);
            sub_1884864E0();
            sub_1883F7AE8();
            if (!v73)
            {
              goto LABEL_44;
            }

            v69 = v72;
          }

          v55 = *(v20 + 312);
          if (v70)
          {
            v74 = v55[7];
            v75 = *(v74 + 8 * v69);
            *(v74 + 8 * v69) = v61;

            sub_1884889C4(v20 + 104);
          }

          else
          {
            sub_1883FF230(&v55[v69 >> 6]);
            sub_1884802A8(v20 + 104, v55[6] + 40 * v69);
            *(v55[7] + 8 * v69) = v61;

            sub_1884889C4(v20 + 104);
            v76 = v55[2];
            v43 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v43)
            {
              goto LABEL_62;
            }

            v55[2] = v77;
          }

          v51 &= v51 - 1;
          v53 = a12;
          v47 = a14 + 64;
          if (!v51)
          {
            goto LABEL_15;
          }
        }
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v55 = *(v20 + 424);
LABEL_42:
    [*(*(*(v20 + 352) + 128) + 16) moveInFlightDatabaseChangesToPending];
    if (v55[2])
    {
      sub_18847F5F4(v55);
      sub_18847FB50(v93, 0xD000000000000016, 0x80000001887026E0);
      swift_willThrow();

      sub_1883F816C();
    }

    else
    {

      sub_1883FDB48();
    }

    sub_1883F8300();

    v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1884301B0()
{
  sub_1883F7120();
  v1 = *(v0 + 48);

  sub_1883FDB48();

  return v2();
}

uint64_t sub_188430210()
{
  sub_1883F78E0();
  v1 = *MEMORY[0x1E69E9840];
  sub_1884F9D88();
  swift_unknownObjectRelease();
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_188427080, v0, 0);
}

uint64_t sub_1884302B8()
{
  v1 = v0[52];
  v2 = *(v1 + 16);
  if (v2)
  {
    v0[53] = *(v0[46] + 128);
    v3 = sub_1883FF150();
    sub_18850C3B0(v3);
    if (qword_1EA90C9F0 != -1)
    {
LABEL_35:
      sub_1883F7480();
    }

    v4 = v0[52];
    v5 = v0[46];
    v6 = type metadata accessor for Logger();
    sub_1883FDE5C(v6, qword_1EA90C9F8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[52];
      v10 = v0[46];
      sub_1883FD778();
      swift_slowAlloc();
      sub_18842D4DC();
      *v4 = 136315394;
      v11 = sub_1883FE43C();
      v15 = sub_1883FB598(v11, v12, v13, v14);

      *(v4 + 4) = v15;
      *(v4 + 12) = 2080;
      v16 = MEMORY[0x18CFD5330](v9, &type metadata for CKSyncEngine.PendingDatabaseChange);
      sub_1883FB598(v16, v17, v18, v19);
      sub_1883F9B0C();
      *(v4 + 14) = v9;
      sub_1883FDDA4();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      sub_1884038F4();
      sub_1883FC7E4();
      sub_1883FD784();
    }

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    v66 = MEMORY[0x1E69E7CC0];
    v67 = MEMORY[0x1E69E7CC0];
    v65 = v0[52];
    v27 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v0[54] = v27;
    for (i = (v65 + 40 + 16 * v25); ; i += 2)
    {
      v0[55] = v26;
      if (v2 == v25)
      {
        break;
      }

      if (v25 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v29 = *i;
      v30 = *(i - 1);
      if (v29)
      {
        MEMORY[0x18CFD52F0]();
        sub_1883FDF80(v67);
        if (v32)
        {
          sub_1883F8DD4(v33);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v25;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v27 = v67;
        goto LABEL_6;
      }

      MEMORY[0x18CFD52F0]();
      sub_1883FDF80(v66);
      if (v32)
      {
        sub_1883F8DD4(v31);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v26 = v66;
      ++v25;
    }

    v0[56] = [objc_allocWithZone(CKOperationConfiguration) init];
    v34 = *(v1 + 16);
    if (v34)
    {
      v68 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v35 = (v65 + 40);
      do
      {
        v36 = *(v35 - 1);
        if (*v35 == 1)
        {
          v37 = v36;
        }

        else
        {
          v38 = [v36 zoneID];
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v39 = *(v68 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v35 += 16;
        --v34;
      }

      while (v34);
      v40 = v0[52];

      v41 = v68;
    }

    else
    {
      v60 = v0[52];

      v41 = MEMORY[0x1E69E7CC0];
    }

    v61 = sub_1884043A8(v41);
    v0[57] = v61;
    v0[58] = sub_1883F5DF8(v61);
    v62 = swift_task_alloc();
    v0[59] = v62;
    *v62 = v0;
    sub_1883FB5E0(v62);
    v63 = sub_1883FE860();

    return sub_1884E5CF0(v63, v64);
  }

  else
  {
    v42 = v0[52];

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v43 = v0[46];
    v44 = type metadata accessor for Logger();
    sub_1883FDE5C(v44, qword_1EA90C9F8);
    sub_18840FB8C();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v0[46];
      v48 = swift_slowAlloc();
      v69 = sub_1883FE540();
      *v48 = 136315138;
      v49 = sub_1883FE43C();
      v53 = sub_1883FB598(v49, v50, v51, v52);

      *(v48 + 4) = v53;
      sub_1883F7A44(&dword_1883EA000, v54, v55, "%s no more pending database changes");
      sub_1883FE944(v69);
      sub_1883FD784();
      sub_1883F7B60();
    }

    v56 = v0[45];
    *v56 = 0u;
    v56[1] = 0u;
    v57 = v0[49];

    sub_1883F816C();

    return v58();
  }
}

uint64_t sub_1884307B4()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  v5 = v2[55];
  *v4 = *v1;
  *(v3 + 448) = v0;

  v6 = v2[54];
  v7 = v2[44];

  if (v0)
  {
    v8 = sub_1884F4D5C;
  }

  else
  {
    v8 = sub_18842FAC8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1884308FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1884D45EC;

  return sub_18843099C(a3);
}

uint64_t sub_18843099C(uint64_t a1)
{
  v2[120] = v1;
  v2[119] = a1;
  v3 = type metadata accessor for Date();
  v2[121] = v3;
  v4 = *(v3 - 8);
  v2[122] = v4;
  v5 = *(v4 + 64) + 15;
  v2[123] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188427E68, v1, 0);
}

BOOL sub_188430A60()
{

  return os_log_type_enabled(v0, v1);
}

void sub_188430D38(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
  v5 = objc_msgSend_bundleIdentifier(v20, v3, v4);
  if (objc_msgSend_hasPrefix_(v5, v6, @"com.apple."))
  {
    byte_1ED4B65DA = 1;
  }

  else
  {
    v9 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v7, v8);
    v12 = objc_msgSend_untrustedEntitlements(v9, v10, v11);
    if (objc_msgSend_hasSPIEntitlement(v12, v13, v14))
    {
      byte_1ED4B65DA = 1;
    }

    else
    {
      v17 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x1E6963620], v15, v16);
      byte_1ED4B65DA = objc_msgSend_developerType(v17, v18, v19) == 1;
    }
  }
}

uint64_t sub_188430E80()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D4 = result;
  return result;
}

uint64_t sub_188430EA8()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED4B6060;
  qword_1ED4B6060 = v0;

  v3 = qword_1ED4B6060;

  return objc_msgSend_setName_(v3, v2, @"com.apple.cloudkit.operationCallbackProxy");
}

id CKSessionConfiguration.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for AnySessionConfiguration();
  v5 = sub_1883F9CF4(&qword_1EA90C4A8);
  v6 = sub_1883F7334(&qword_1EA90C4B8);
  v7 = sub_1883F8890(&qword_1EA90C4B0);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

uint64_t sub_188431628(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnySessionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  type metadata accessor for Logger();
  sub_1883F9C28();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v51 - v23;
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v53 = v7;
    v51[1] = ObjectType;
    v51[2] = v22;
    v52 = v21;
    v26 = Data.init(base64Encoded:options:)();
    if (v27 >> 60 == 15)
    {
      CCLog.getter();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v58[0] = swift_slowAlloc();
        *v30 = 136315394;
        v31 = sub_1883F828C(&v59);
        v33 = sub_1883FE340(v31, v32, v58);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2080;
        v34 = sub_1883FE340(a1, a2, v58);

        *(v30 + 14) = v34;
        _os_log_impl(&dword_1883EA000, v28, v29, "SQLite representation of %s was malformed b64 string: %s", v30, 0x16u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1883F7B60();
      }

      else
      {
      }

      sub_1883FF188(&v60);
      v38(v19, v52);
    }

    else
    {
      v35 = v26;
      v36 = v27;

      v37 = type metadata accessor for JSONDecoder();
      sub_1883FEA90(v37);
      JSONDecoder.init()();
      v58[3] = a3;
      v58[4] = a4;
      v58[5] = a5;
      v58[6] = a6;
      sub_188403664(v58);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_1884B1B70(v58, &v55, &qword_1EA90E328, &qword_1886FAA20);
      if (v56)
      {
        sub_18841BA74(v35, v36);
        sub_188499B68(&v55, v57);
        sub_188499B68(v57, v53 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
        sub_18840E840(v58, &qword_1EA90E328, &qword_1886FAA20);
        v39 = type metadata accessor for CKSecureCodingBox();
        sub_1883FDAD8(v39);
        return objc_msgSendSuper2(&v54, sel_init);
      }

      sub_18840E840(&v55, &qword_1EA90E328, &qword_1886FAA20);
      CCLog.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *&v57[0] = swift_slowAlloc();
        *v43 = 136315394;
        v44 = sub_1883F828C(&v59);
        v46 = sub_1883FE340(v44, v45, v57);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2080;
        v47 = _typeName(_:qualified:)();
        v49 = sub_1883FE340(v47, v48, v57);

        *(v43 + 14) = v49;
        _os_log_impl(&dword_1883EA000, v41, v42, "%s data couldn't be parsed as an encoded %s", v43, 0x16u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1883F7B60();
      }

      sub_18841BA74(v35, v36);

      sub_1883FF188(&v60);
      v50(v24, v52);
      sub_18840E840(v58, &qword_1EA90E328, &qword_1886FAA20);
    }
  }

  else
  {
  }

  type metadata accessor for CKSecureCodingBox();
  swift_deallocPartialClassInstance();
  return 0;
}

id CKSessionAcquiredInfo.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for AnySessionAcquiredInfo();
  v5 = sub_1883F8854(&qword_1EA90C4C0);
  v6 = sub_1883F9CA4(&qword_1EA90C4D0);
  v7 = sub_1883F72CC(&qword_1EA90C4C8);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

uint64_t sub_188431C90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnySessionAcquiredInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_188431D64(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to perform operation with error: %@", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_cancelWithError_(WeakRetained, v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

BOOL sub_188431EA4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKErrorDomain") && objc_msgSend_code(a1, v6, v7) == 170)
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_msgSend_domain(a1, v6, v7);
    if (objc_msgSend_isEqualToString_(v9, v10, @"CKInternalErrorDomain"))
    {
      v8 = objc_msgSend_code(a1, v11, v12) == 12000;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void sub_1884320F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA28B20;
    v7 = _Block_copy(v9);

    [v3 setSystemSharingUIDidSaveShareBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setSystemSharingUIDidSaveShareBlock_];
  }
}

uint64_t sub_188432664()
{
  v1 = *(v0 + 24);

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

id sub_188432764(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = *MEMORY[0x1E696AA08];
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v6, *MEMORY[0x1E696AA08]);

  if (!v7)
  {
    goto LABEL_10;
  }

  v10 = 0;
  do
  {
    v11 = objc_msgSend_domain(v7, v8, v9);
    if (objc_msgSend_isEqualToString_(v11, v12, @"CKInternalErrorDomain"))
    {
      v13 = CKTopLevelUnderlyingErrorCodes();
      v14 = MEMORY[0x1E696AD98];
      v17 = objc_msgSend_code(v7, v15, v16);
      v19 = objc_msgSend_numberWithInteger_(v14, v18, v17);
      v21 = objc_msgSend_containsObject_(v13, v20, v19);

      if (!v21)
      {
        goto LABEL_7;
      }

      v11 = v10;
      v10 = v7;
    }

LABEL_7:
    v24 = objc_msgSend_userInfo(v7, v22, v23);
    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, v5);

    v7 = v26;
  }

  while (v26);
  if (v10)
  {
    v27 = objc_msgSend_code(v10, v8, v9);
    v30 = objc_msgSend_userInfo(v10, v28, v29);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(CKPrettyError, v31, @"CKInternalErrorDomain", v27, v30, a1, 0, 0, 0);

    goto LABEL_11;
  }

LABEL_10:
  v32 = a1;
LABEL_11:

  return v32;
}

id sub_188432958(void *a1, const char *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_domain(a1, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  if (isEqualToString && objc_msgSend_code(a1, v7, v8) == 2056)
  {
    v13 = @"CKUserDidResetEncryptedData";
    v14[0] = MEMORY[0x1E695E118];
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v14, &v13, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t CKErrorCodeForUnderlyingErrorCode(uint64_t a1, const char *a2, uint64_t a3)
{
  result = 1;
  if (a1 <= 2999)
  {
    if (a1 <= 1999)
    {
      switch(a1)
      {
        case 1000:
        case 1001:
        case 1003:
        case 1005:
        case 1015:
        case 1023:
        case 1024:
        case 1027:
        case 1028:
        case 1050:
        case 1051:
        case 1052:
          return result;
        case 1002:
        case 1018:
        case 1030:
          return 9;
        case 1004:
          return 115;
        case 1006:
        case 1007:
        case 1009:
        case 1017:
        case 1021:
          return 12;
        case 1008:
          return 6;
        case 1010:
        case 1029:
          return 36;
        case 1011:
          return 2;
        case 1012:
          return 3;
        case 1013:
          goto LABEL_53;
        case 1014:
          return 5;
        case 1016:
          return 21;
        case 1019:
          return 24;
        case 1020:
          return 27;
        case 1022:
          return 14;
        case 1025:
          return 130;
        case 1026:
          return 131;
        case 1031:
        case 1032:
        case 1033:
        case 1034:
        case 1035:
        case 1036:
        case 1037:
        case 1038:
        case 1039:
        case 1040:
        case 1041:
        case 1042:
        case 1043:
        case 1044:
        case 1045:
        case 1046:
        case 1047:
        case 1048:
        case 1049:
          goto LABEL_81;
        default:
          if (!a1)
          {
            return result;
          }

          if (a1 == 1)
          {
            return 20;
          }

          goto LABEL_81;
      }
    }

    switch(a1)
    {
      case 2000:
      case 2001:
      case 2010:
      case 2021:
      case 2027:
      case 2028:
      case 2032:
      case 2033:
      case 2034:
      case 2039:
      case 2041:
      case 2043:
      case 2044:
        return 15;
      case 2002:
      case 2009:
      case 2022:
      case 2030:
      case 2031:
        return 6;
      case 2003:
        return 11;
      case 2004:
      case 2017:
      case 2037:
        return 14;
      case 2005:
      case 2013:
      case 2014:
      case 2053:
      case 2054:
        return result;
      case 2006:
      case 2015:
      case 2016:
      case 2018:
      case 2019:
      case 2020:
      case 2049:
        return 12;
      case 2007:
      case 2051:
      case 2057:
        result = 10;
        break;
      case 2008:
      case 2061:
      case 2062:
      case 2063:
        goto LABEL_27;
      case 2011:
      case 2012:
      case 2047:
      case 2060:
        return 9;
      case 2023:
      case 2052:
        return 27;
      case 2024:
      case 2055:
        result = 22;
        break;
      case 2025:
        return 31;
      case 2026:
        return 21;
      case 2029:
        result = 23;
        break;
      case 2035:
      case 2038:
        result = 25;
        break;
      case 2036:
      case 2056:
        result = 26;
        break;
      case 2040:
        result = 34;
        break;
      case 2042:
        result = 28;
        break;
      case 2045:
        result = 29;
        break;
      case 2046:
        result = 30;
        break;
      case 2048:
        result = 32;
        break;
      case 2050:
        result = 100;
        break;
      default:
        goto LABEL_81;
    }

    return result;
  }

  if (a1 > 5999)
  {
    if (a1 <= 8999)
    {
      switch(a1)
      {
        case 8000:
        case 8002:
        case 8006:
        case 8010:
          return 15;
        case 8001:
        case 8003:
          return 12;
        case 8004:
          return 11;
        case 8005:
        case 8007:
        case 8008:
        case 8009:
        case 8012:
          return result;
        case 8011:
          return 9;
        case 8013:
        case 8014:
          return 33;
        default:
          if ((a1 - 7000) < 5)
          {
            return result;
          }

          if (a1 == 6000)
          {
            return 15;
          }

          goto LABEL_81;
      }
    }

    if (a1 <= 10999)
    {
      if (a1 <= 10002)
      {
        if ((a1 - 10000) < 3 || (a1 - 9000) < 2)
        {
          return result;
        }

LABEL_81:
        v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
        v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "CKErrorCode CKErrorCodeForUnderlyingErrorCode(CKUnderlyingErrorCode)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v8, v7, @"CKError.m", 1269, @"No mapping exists for internal error code %ld", a1);

        return 1;
      }

      if (a1 <= 10004)
      {
        if (a1 == 10003)
        {
          return 20;
        }

        else
        {
          return 16;
        }
      }

      if (a1 != 10005)
      {
        if (a1 == 10006)
        {
          return 36;
        }

        goto LABEL_81;
      }

      return 12;
    }

    if (a1 > 11003)
    {
      if (a1 > 12999)
      {
        if (a1 == 13000)
        {
          return 180;
        }

        if (a1 == 13001)
        {
          return 31;
        }

        goto LABEL_81;
      }

      if (a1 != 11004)
      {
        if (a1 == 12000)
        {
          return 170;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (a1 > 11001)
      {
        if (a1 == 11002)
        {
          return 37;
        }

        return 12;
      }

      if (a1 == 11000)
      {
        return 15;
      }
    }

    return 27;
  }

  switch(a1)
  {
    case 5000:
    case 5001:
    case 5002:
    case 5003:
    case 5004:
    case 5005:
    case 5007:
    case 5010:
    case 5016:
    case 5017:
    case 5018:
    case 5019:
    case 5020:
    case 5023:
      return result;
    case 5006:
      result = 110;
      break;
    case 5008:
    case 5009:
      result = 111;
      break;
    case 5011:
      result = 112;
      break;
    case 5012:
LABEL_27:
      result = 7;
      break;
    case 5013:
      result = 114;
      break;
    case 5014:
      return 36;
    case 5015:
      return 12;
    case 5021:
      result = 160;
      break;
    case 5022:
      result = 161;
      break;
    default:
      switch(a1)
      {
        case 3000:
        case 3001:
        case 3004:
        case 3007:
        case 3008:
        case 3015:
          return result;
        case 3002:
        case 3009:
          return 16;
        case 3003:
          result = 17;
          break;
        case 3005:
        case 3014:
          return 12;
        case 3006:
LABEL_53:
          result = 4;
          break;
        case 3010:
          result = 35;
          break;
        case 3011:
        case 3012:
          return 11;
        case 3013:
          result = 140;
          break;
        default:
          if ((a1 - 4000) >= 3)
          {
            goto LABEL_81;
          }

          break;
      }

      break;
  }

  return result;
}

BOOL CKOperationExecutionStateTransitionToFinished(void *a1, int *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  objc_msgSend_willChangeValueForKey_(v3, v4, @"isExecuting");
  objc_msgSend_willChangeValueForKey_(v3, v5, @"isFinished");
  os_unfair_lock_lock(&unk_1ED4B6780);
  v6 = *a2;
  if (*a2 == 2)
  {
    os_unfair_lock_unlock(&unk_1ED4B6780);
    objc_msgSend_didChangeValueForKey_(v3, v10, @"isExecuting");
    objc_msgSend_didChangeValueForKey_(v3, v11, @"isFinished");
  }

  else
  {
    *a2 = 2;
    os_unfair_lock_unlock(&unk_1ED4B6780);
    objc_msgSend_didChangeValueForKey_(v3, v7, @"isExecuting");
    objc_msgSend_didChangeValueForKey_(v3, v8, @"isFinished");
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138543362;
      v15 = v3;
      _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "Operation was marked as finished: %{public}@", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6 != 2;
}

__CFString *CKErrorChainStringFromError(void *a1)
{
  v1 = CKErrorChainFromError(a1);
  v3 = v1;
  if (v1)
  {
    v4 = objc_msgSend_CKMap_(v1, v2, &unk_1EFA2EBE8);
    v6 = objc_msgSend_componentsJoinedByString_(v4, v5, @"_");
  }

  else
  {
    v6 = &stru_1EFA32970;
  }

  return v6;
}

id CKErrorChainFromError(void *a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v52 = v11;
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138543618;
      v63 = v54;
      v64 = 2112;
      v65 = v1;
      _os_log_fault_impl(&dword_1883EA000, v52, OS_LOG_TYPE_FAULT, "Trying to get an error chain from a non-NSError (%{public}@): %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v2 = v1;
  v5 = objc_msgSend_domain(v2, v3, v4);
  if (objc_msgSend_isEqualToString_(v5, v6, @"CKErrorDomain") && objc_msgSend_code(v2, v7, v8) == 2)
  {

LABEL_13:
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = v2;
    v18 = objc_msgSend_userInfo(v2, v9, v10);
    v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"CKPartialErrors");
    v23 = objc_msgSend_allValues(v20, v21, v22);

    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v56, v61, 16);
    if (!v25)
    {
LABEL_25:

      v2 = v55;
      goto LABEL_31;
    }

    v28 = v25;
    v29 = *v57;
LABEL_15:
    v30 = 0;
    while (1)
    {
      if (*v57 != v29)
      {
        objc_enumerationMutation(v23);
      }

      v31 = *(*(&v56 + 1) + 8 * v30);
      v32 = objc_msgSend_domain(v31, v26, v27);
      if (objc_msgSend_isEqualToString_(v32, v33, @"CKErrorDomain") && objc_msgSend_code(v31, v34, v35) == 22)
      {
      }

      else
      {
        v36 = objc_msgSend_domain(v31, v34, v35);
        if ((objc_msgSend_isEqualToString_(v36, v37, @"CKInternalErrorDomain") & 1) == 0)
        {

LABEL_28:
          v41 = v31;

          if (v41 != v55)
          {
            v12 = CKErrorChainFromError(v41);
            v2 = v41;
            goto LABEL_34;
          }

          v2 = v41;
          goto LABEL_31;
        }

        v40 = objc_msgSend_code(v31, v38, v39);

        if (v40 != 2024)
        {
          goto LABEL_28;
        }
      }

      if (v28 == ++v30)
      {
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v56, v61, 16);
        if (v28)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }
  }

  v13 = objc_msgSend_domain(v2, v7, v8);
  if ((objc_msgSend_isEqualToString_(v13, v14, @"CKInternalErrorDomain") & 1) == 0)
  {

    goto LABEL_31;
  }

  v17 = objc_msgSend_code(v2, v15, v16);

  if (v17 == 1011)
  {
    goto LABEL_13;
  }

LABEL_31:
  v60 = v2;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, &v60, 1);
  v44 = objc_msgSend_userInfo(v2, v42, v43);
  v46 = objc_msgSend_objectForKeyedSubscript_(v44, v45, *MEMORY[0x1E696AA08]);
  v47 = CKErrorChainFromError(v46);

  if (v47)
  {
    v49 = objc_msgSend_arrayByAddingObjectsFromArray_(v12, v48, v47);

    v12 = v49;
  }

LABEL_34:
LABEL_35:

  v50 = *MEMORY[0x1E69E9840];

  return v12;
}