unint64_t UUID.uint64Value.getter()
{
  UUID.uuid.getter();
  v1 = v0;
  UUID.uuid.getter();
  v3 = (v2 >> 40) & 0xFF00 | v1;
  UUID.uuid.getter();
  v5 = (v4 >> 24) & 0xFF0000;
  UUID.uuid.getter();
  v7 = v3 | v5 | (v6 >> 8) & 0xFF000000;
  UUID.uuid.getter();
  v9 = v7 & 0xFFFFFF00FFFFFFFFLL | (v8 << 32);
  UUID.uuid.getter();
  v11 = v9 & 0xFFFF00FFFFFFFFFFLL | (v10 << 40);
  UUID.uuid.getter();
  v13 = v11 & 0xFF00FFFFFFFFFFFFLL | (v12 << 48);
  UUID.uuid.getter();
  return v13 | (v14 << 56);
}

uint64_t AVAudioSessionAssertion.__allocating_init(id:manager:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7 + v8, a1, v9);
  outlined init with copy of Transferable(a2, v7 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 8))(a1, v11, v12);
  (*(v10 + 8))(a1, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v7;
}

uint64_t AVAudioSessionAssertionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = Lock.init()();
  v5 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  return v0;
}

uint64_t *AVAudioSessionAssertionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static AVAudioSessionAssertionManager.shared;
}

uint64_t static AVAudioSessionAssertionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id implicit closure #1 in AVAudioSessionAssertionManager.groupSessions.didset(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E6958068];
  v5[0] = 0;
  if ([a1 setCategory:v1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id implicit closure #2 in AVAudioSessionAssertionManager.groupSessions.didset(void *a1, char a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([a1 setIsExpanseMediaSession:a2 & 1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVAudioSessionAssertionManager.groupSessions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

void AVAudioSessionAssertionManager.groupSessions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;

  v4 = *(*(v1 + 24) + 16);
  v5 = [objc_opt_self() sharedInstance];
  v6 = v5;
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v5);
    v5 = tryLog<A>(_:_:function:line:)();
  }

  MEMORY[0x1EEE9AC00](v5);
  tryLog<A>(_:_:function:line:)();
}

void (*AVAudioSessionAssertionManager.groupSessions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AVAudioSessionAssertionManager.groupSessions.modify;
}

void AVAudioSessionAssertionManager.groupSessions.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(*(a1 + 24) + 24) + 16);
    v5 = [objc_opt_self() sharedInstance];
    v6 = v5;
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v5);
      v5 = tryLog<A>(_:_:function:line:)();
    }

    MEMORY[0x1EEE9AC00](v5);
    tryLog<A>(_:_:function:line:)();
  }
}

uint64_t AVAudioSessionAssertionManager.addSession(id:)()
{
  return AVAudioSessionAssertionManager.addSession(id:)();
}

{
  v1 = *(v0 + 16);
  return Lock.withLock<A>(_:)();
}

uint64_t closure #1 in AVAudioSessionAssertionManager.addSession(id:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  (*(v5 + 16))(v9, a2, v4);
  v12 = (*(*a1 + 112))(v14);
  specialized Set._Variant.insert(_:)(v11, v9);
  (*(v5 + 8))(v11, v4);
  return v12(v14, 0);
}

uint64_t closure #1 in AVAudioSessionAssertionManager.removeSession(id:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  v8 = (*(*a1 + 112))(v10);
  specialized Set._Variant.remove(_:)(a2, v7);
  outlined destroy of UUID?(v7);
  return v8(v10, 0);
}

uint64_t AVAudioSessionAssertionManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AVAudioSessionAssertionManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t AVAudioSessionAssertionManager.init()()
{
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = Lock.init()();
  v5 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  return v0;
}

uint64_t *BackgroundAudioSessionAssertionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundAudioSessionAssertionManager.shared;
}

uint64_t static BackgroundAudioSessionAssertionManager.shared.getter()
{
  type metadata accessor for BackgroundAudioSessionAssertionManager();

  return swift_initStaticObject();
}

uint64_t AVAudioSessionAssertion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AVAudioSessionAssertion.init(id:manager:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + v6, a1, v7);
  outlined init with copy of Transferable(a2, v3 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 8))(a1, v9, v10);
  (*(v8 + 8))(a1, v7);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t AVAudioSessionAssertion.deinit()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager;
  outlined init with copy of Transferable(v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id, v1);
  (*(v8 + 16))(v5, v7, v8);
  v10 = *(v2 + 8);
  v10(v5, v1);
  __swift_destroy_boxed_opaque_existential_0(v13);
  v10((v0 + v9), v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v6));
  return v0;
}

uint64_t AVAudioSessionAssertion.__deallocating_deinit()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager;
  outlined init with copy of Transferable(v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager, v15);
  v7 = v16;
  v8 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v9 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id, v1);
  (*(v8 + 16))(v5, v7, v8);
  v10 = *(v2 + 8);
  v10(v5, v1);
  __swift_destroy_boxed_opaque_existential_0(v15);
  v10((v0 + v9), v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v6));
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVAudioSessionAssertion()
{
  result = type metadata singleton initialization cache for AVAudioSessionAssertion;
  if (!type metadata singleton initialization cache for AVAudioSessionAssertion)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AVAudioSessionAssertion()
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

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
}

{
  return specialized _NativeSet.copy()(type metadata accessor for Participant, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR, type metadata accessor for Participant);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(type metadata accessor for PresenceSessionInfo.Participant, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR, type metadata accessor for PresenceSessionInfo.Participant);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E69E8450], &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
}

id specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
}

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *v4;
  v15 = static _SetStorage.copy(original:)();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        outlined init with copy of PresenceSessionInfo.Participant(*(v14 + 48) + v29, v13, a4);
        result = outlined init with take of PresenceSessionInfo.Participant(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for Participant();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return (*(v5 + 56))(v36, 1, 1, v4);
  }

  v14 = ~v12;
  v15 = *(v5 + 72);
  while (1)
  {
    v16 = v15 * v13;
    outlined init with copy of PresenceSessionInfo.Participant(*(v9 + 48) + v15 * v13, v8, type metadata accessor for Participant);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v17 = v4[5];
    v18 = *&v8[v17];
    v19 = *&v8[v17 + 8];
    v20 = (a1 + v17);
    v21 = v18 == *v20 && v19 == v20[1];
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v8[v4[6]] != *(a1 + v4[6]))
    {
      goto LABEL_4;
    }

    v22 = v4[7];
    v23 = &v8[v22];
    v24 = *&v8[v22 + 8];
    v25 = (a1 + v22);
    v26 = v25[1];
    if (v24)
    {
      break;
    }

    if (!v26)
    {
      goto LABEL_19;
    }

LABEL_4:
    outlined destroy of Participant(v8);
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return (*(v5 + 56))(v36, 1, 1, v4);
    }
  }

  if (!v26)
  {
    goto LABEL_4;
  }

  v27 = *v23 == *v25 && v24 == v26;
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  if (v8[v4[8]] != *(a1 + v4[8]) || v8[v4[9]] != *(a1 + v4[9]))
  {
    goto LABEL_4;
  }

  outlined destroy of Participant(v8);
  v28 = v35;
  v29 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v28;
  v37 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(type metadata accessor for Participant, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR, type metadata accessor for Participant);
    v31 = v37;
  }

  v32 = v36;
  outlined init with take of PresenceSessionInfo.Participant(*(v31 + 48) + v16, v36, type metadata accessor for Participant);
  specialized _NativeSet._delete(at:)(v13);
  *v28 = v37;
  return (*(v5 + 56))(v32, 0, 1, v4);
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v34 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v3;
    v30 = v7;
    v31 = a2;
    v16 = ~v14;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    while (1)
    {
      v17(v10, *(v33 + 48) + v20 * v15, v6);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v22 = 1;
        v7 = v30;
        a2 = v31;
        return (*(v7 + 56))(a2, v22, 1, v6);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
      v26 = v35;
    }

    v7 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20 * v15, v6);
    specialized _NativeSet._delete(at:)(v15, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v7 + 56))(a2, v22, 1, v6);
}

{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  v34 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v3;
    v30 = v7;
    v31 = a2;
    v16 = ~v14;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    while (1)
    {
      v17(v10, *(v33 + 48) + v20 * v15, v6);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v22 = 1;
        v7 = v30;
        a2 = v31;
        return (*(v7 + 56))(a2, v22, 1, v6);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69E8450], &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
      v26 = v35;
    }

    v7 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20 * v15, v6);
    specialized _NativeSet._delete(at:)(v15, MEMORY[0x1E69E8450], &lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v7 + 56))(a2, v22, 1, v6);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = (v15 + 1) & v13;
      v17 = *(v4 + 72);
      v40 = v17;
      v41 = v10;
      while (1)
      {
        v18 = *(v9 + 48);
        v42 = v12;
        v19 = v17 * v12;
        outlined init with copy of PresenceSessionInfo.Participant(v18 + v17 * v12, v8, type metadata accessor for Participant);
        v20 = *(v9 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        dispatch thunk of Hashable.hash(into:)();
        v21 = &v8[v3[5]];
        v22 = *v21;
        v23 = *(v21 + 1);
        String.hash(into:)();
        MEMORY[0x1B2715070](*&v8[v3[6]]);
        v24 = &v8[v3[7]];
        if (*(v24 + 1))
        {
          v25 = v8;
          v26 = v3;
          v27 = v19;
          v28 = a1;
          v29 = v9;
          v30 = v16;
          v31 = v13;
          v32 = *v24;
          Hasher._combine(_:)(1u);
          v13 = v31;
          v16 = v30;
          v9 = v29;
          a1 = v28;
          v19 = v27;
          v3 = v26;
          v8 = v25;
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v8[v3[8]]);
        Hasher._combine(_:)(v8[v3[9]]);
        v33 = Hasher._finalize()();
        outlined destroy of Participant(v8);
        v34 = v33 & v13;
        if (a1 >= v16)
        {
          break;
        }

        v17 = v40;
        v35 = v42;
        if (v34 < v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v36 = v17 * a1;
        if (v17 * a1 < v19 || *(v9 + 48) + v17 * a1 >= (*(v9 + 48) + v19 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v35;
          if (v36 == v19)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v35;
LABEL_6:
        v12 = (v35 + 1) & v13;
        v10 = v41;
        if (((*(v41 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v17 = v40;
      v35 = v42;
      if (v34 < v16)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v34)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v37 = *(v9 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v39;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = _HashTable.previousHole(before:)();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v42 = (v19 + 1) & v17;
      v41 = v8[2];
      v47 = v8[9];
      v43 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v41(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        _s10Foundation4UUIDVACSHAAWlTm_4(v44, v45);
        v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v42)
        {
          if (v29 < v42 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v42 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}

__n128 GroupSession.Sessions.init(base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t GroupSession.Sessions.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v5 = v2;
  swift_unknownObjectRetain();
}

uint64_t GroupSession.Sessions.Iterator.baseIterator.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GroupSession.Sessions.Iterator.next()()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](GroupSession.Sessions.Iterator.next(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSession<A>.Sessions.Iterator(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

void protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSession<A>.Sessions(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GroupSession.Sessions.makeAsyncIterator()(a1, a2);
  v3 = *(v2 + 8);
  v5 = *v2;
  v4 = *(v2 + 32);

  swift_unknownObjectRelease();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v32)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        specialized Set.subscript.getter(v35, v36, v37, v1);
        v14 = v13;
        v15 = [v13 participantIdentifier];

        v16 = v33;
        v38 = v33;
        v18 = *(v33 + 16);
        v17 = *(v33 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo13CPParticipantC_GMd, &_sSh5IndexVySo13CPParticipantC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            outlined consume of Set<TUHandle>.Index._Variant(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                outlined consume of Set<TUHandle>.Index._Variant(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            outlined consume of Set<TUHandle>.Index._Variant(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_So13CPParticipantCs5NeverOTg504_s15d145Activities11LinkManagerC8sendData_2to21messageTypeIdentifier11reliability10completiony10Foundation0F0V_AA12ParticipantsOSSAA15SendReliabilityOys5c11_pSgctFSo13g5CAA11F6VXEfU_Tf1cn_nTm(uint64_t a1)
{
  v3 = type metadata accessor for Participant();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v33[1] = v1;
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v34 = a1 + 64;
    v35 = v12;
    v37 = v6;
    v38 = a1;
    v36 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v42 = v11;
      v43 = 1 << v10;
      v15 = v39;
      _s15GroupActivities11ParticipantVWOcTm_1(*(a1 + 48) + *(v40 + 72) * v10, v39, type metadata accessor for Participant);
      v16 = v41;
      v17 = (v15 + *(v41 + 20));
      v19 = *v17;
      v18 = v17[1];
      v20 = objc_allocWithZone(MEMORY[0x1E6997710]);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v22 = MEMORY[0x1B2714130](v19, v18);
      v23 = [v20 initWithUUID:isa accountIdentifier:v22];

      [v23 _setParticipantIdentifier_];
      a1 = v38;
      _s15GroupActivities11ParticipantVWOhTm_0(v15, type metadata accessor for Participant);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = *(v44 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v8 = v36;
      v25 = v37;
      v26 = *(v36 + 8 * v14);
      if ((v26 & v43) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v12) = v35;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v10 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v14 << 6;
        v29 = v14 + 1;
        v30 = (v34 + 8 * v14);
        while (v29 < (v13 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = outlined consume of Set<TUHandle>.Index._Variant(v10, v35, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<TUHandle>.Index._Variant(v10, v35, 0);
      }

LABEL_4:
      v11 = v42 + 1;
      v10 = v13;
      if (v42 + 1 == v25)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *LinkManager.__allocating_init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v96 = a5;
  v97 = a7;
  v94 = a1;
  v95 = a6;
  v92 = a3;
  v93 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v82 = *(v83 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v79 - v14;
  v79 = type metadata accessor for Participant();
  v86 = *(v79 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v87 = v16;
  v88 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - v25;
  v89 = v8;
  v27 = objc_allocWithZone(v8);
  v28 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
  *&v27[v28] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
  v29 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v98[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v23 + 32))(&v27[v29], v26, v22);
  *&v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
  v30 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
  v31 = MEMORY[0x1E69E7CC0];
  v98[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v18 + 32))(&v27[v30], v21, v17);
  if (v31 >> 62 && __CocoaSet.count.getter())
  {
    v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  *&v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v32;
  v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
  v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
  v33 = &v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier;
  v38 = type metadata accessor for UUID();
  v90 = *(v38 - 8);
  v39 = *(v90 + 16);
  v40 = v94;
  v39(&v27[v37], v94, v38);
  v41 = v93;
  v91 = v38;
  v39(&v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v93, v38);
  *&v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = a4;
  v42 = v96;
  _s15GroupActivities11ParticipantVWOcTm_1(v96, &v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
  v43 = v95;
  *&v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v95;
  v44 = a4;
  v45 = v97;
  *&v27[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v97;
  v99.receiver = v27;
  v99.super_class = v89;

  v95 = v43;
  swift_unknownObjectRetain();
  v46 = objc_msgSendSuper2(&v99, sel_init);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = v88;
  _s15GroupActivities11ParticipantVWOcTm_1(v42, v88, type metadata accessor for Participant);
  v49 = (*(v86 + 80) + 24) & ~*(v86 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  _s15GroupActivities11ParticipantVWObTm_2(v48, v50 + v49, type metadata accessor for Participant);
  v51 = *(*v44 + 336);
  v52 = v46;

  v51(partial apply for closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v50);
  v53 = v40;

  v54 = v45;
  v55 = v44;
  v56 = [v54 unreliableMessengerEnabled];
  v57 = v92;
  if (v56)
  {
    v58 = UUID.uuidString.getter();
    v60 = v59;
    v61 = *(v42 + *(v79 + 24));
    v62 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager);
    v63 = (*(*v57 + 256))(v41, v58, v60, v61, v95, v52, v62);

    v65 = v80;
    (*(*v55 + 448))(v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
    v66 = v41;
    v67 = v53;
    v68 = v81;
    v69 = v83;
    Publisher.map<A>(_:)();
    (*(v82 + 8))(v65, v69);
    v70 = UnreliableMessenger.$activeReliableSubscribers.modify();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
    v71 = v85;
    Publisher<>.assign(to:)();
    v72 = v68;
    v53 = v67;
    v41 = v66;
    v42 = v96;
    (*(v84 + 8))(v72, v71);
    v70(v98, 0);
    v73 = *&v52[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger];
    *&v52[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v63;
  }

  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v75 = *(*v55 + 360);

  v75(partial apply for closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v74);

  swift_unknownObjectRelease();

  _s15GroupActivities11ParticipantVWOhTm_0(v42, type metadata accessor for Participant);
  v76 = v91;
  v77 = *(v90 + 8);
  v77(v41, v91);
  v77(v53, v76);

  return v52;
}

void LinkManager.sendData(_:to:messageTypeIdentifier:reliability:completion:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(void), uint64_t a8)
{
  v15 = *a3;
  v16 = *a6;
  if (TUSimulatedModeEnabled())
  {
    (a7)(0);
    return;
  }

  if (v15)
  {
    if ((v16 & 1) == 0)
    {
      v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_So13CPParticipantCs5NeverOTg504_s15d145Activities11LinkManagerC8sendData_2to21messageTypeIdentifier11reliability10completiony10Foundation0F0V_AA12ParticipantsOSSAA15SendReliabilityOys5c11_pSgctFSo13g5CAA11F6VXEfU_Tf1cn_nTm(v15);
      v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo13CPParticipantC_SayAEGTt0g5Tf4g_nTm(v19, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710, &lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, specialized Set._Variant.insert(_:));

      LinkManager.sendDataReliably(_:to:messageTypeIdentifier:completion:)(a1, a2, v20, a4, a5, a7, a8);
      goto LABEL_13;
    }

    if ([*(v8 + OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags) unreliableMessengerEnabled])
    {
      v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_So13CPParticipantCs5NeverOTg504_s15d145Activities11LinkManagerC8sendData_2to21messageTypeIdentifier11reliability10completiony10Foundation0F0V_AA12ParticipantsOSSAA15SendReliabilityOys5c11_pSgctFSo13g5CAA11F6VXEfU_Tf1cn_nTm(v15);
      v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo13CPParticipantC_SayAEGTt0g5Tf4g_nTm(v17, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710, &lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, specialized Set._Variant.insert(_:));

      LinkManager.sendDataUnreliably(_:to:completion:)(a1, a2, v18, a7);
LABEL_13:

      return;
    }

    goto LABEL_16;
  }

  if ((v16 & 1) == 0)
  {
    (*(**(v8 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 664))(a1, a2, 0, a4, a5, a7, a8);
    return;
  }

  if (([*(v8 + OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags) unreliableMessengerEnabled] & 1) == 0)
  {
LABEL_16:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1AEE80000, v22, v23, "Dropping message since unreliable messaging is disabled", v24, 2u);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    v25 = swift_allocError();
    *v26 = 1;
    a7();

    return;
  }

  LinkManager.sendDataUnreliably(_:to:completion:)(a1, a2, 0, a7);
}

uint64_t LinkManager.removeAttachment(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.removeAttachment(id:), 0, 0);
}

uint64_t LinkManager.removeAttachment(id:)()
{
  v26 = v0;
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 24)) + 0xF8))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = LinkManager.removeAttachment(id:);
    v3 = *(v0 + 16);

    return AttachmentLedgerTopic.remove(id:)(v3);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1AEE80000, v10, v11, "Dropping removal request %s due to not having a topic yet.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = *(v0 + 48);

    v24 = *(v0 + 8);

    return v24();
  }
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = LinkManager.removeAttachment(id:);
  }

  else
  {
    v3 = LinkManager.removeAttachment(id:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t LinkManager.uploadAttachment(id:file:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for LinkManager.Attachment(0);
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v5[22] = v10;
  v11 = *(v10 - 8);
  v5[23] = v11;
  v12 = *(v11 + 64) + 15;
  v5[24] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v14 = type metadata accessor for TaskPriority();
  v5[26] = v14;
  v15 = *(v14 - 8);
  v5[27] = v15;
  v16 = *(v15 + 64) + 15;
  v5[28] = swift_task_alloc();
  v17 = type metadata accessor for URL();
  v5[29] = v17;
  v18 = *(v17 - 8);
  v5[30] = v18;
  v19 = *(v18 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v5[33] = v20;
  v21 = *(v20 - 8);
  v5[34] = v21;
  v22 = *(v21 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.uploadAttachment(id:file:developerMetadata:), 0, 0);
}

uint64_t LinkManager.uploadAttachment(id:file:developerMetadata:)()
{
  v54 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v8 = v0[13];
  v7 = v0[14];
  v9 = type metadata accessor for Logger();
  v0[39] = __swift_project_value_buffer(v9, static Log.default);
  v10 = *(v3 + 16);
  v0[40] = v10;
  v0[41] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  v0[42] = v11;
  v0[43] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[38];
  v17 = v0[33];
  v16 = v0[34];
  v18 = v0[32];
  v20 = v0[29];
  v19 = v0[30];
  if (v14)
  {
    v47 = v0[28];
    v49 = v0[26];
    v50 = v0[27];
    v51 = v13;
    v21 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v21 = 136315650;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v46 = v18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v12;
    v24 = v23;
    v25 = *(v16 + 8);
    v25(v15, v17);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v53);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v19 + 8))(v46, v20);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v53);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v50 + 8))(v47, v49);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v53);

    *(v21 + 24) = v34;
    _os_log_impl(&dword_1AEE80000, log, v51, "Received upload request: %s, file: %s. Waiting for topic with priority: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v52, -1, -1);
    MEMORY[0x1B2715BA0](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v25 = *(v16 + 8);
    v25(v15, v17);
  }

  v0[44] = v25;
  v35 = v0[25];
  v36 = v0[17];
  (*(v0[27] + 56))(v35, 1, 1, v0[26]);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v36;
  v38 = v36;
  v39 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities21AttachmentLedgerTopicC_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in LinkManager.fetchAttachmentLedgerTopic(), v37);
  v0[45] = v39;
  v40 = *(MEMORY[0x1E69E86A8] + 4);
  v41 = swift_task_alloc();
  v0[46] = v41;
  v42 = type metadata accessor for AttachmentLedgerTopic(0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[47] = v43;
  *v41 = v0;
  v41[1] = LinkManager.uploadAttachment(id:file:developerMetadata:);
  v44 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 10, v39, v42, v43, v44);
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 360);

  if (v0)
  {
    v6 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  else
  {
    v6 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v56 = v0;
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[33];
  v6 = v0[13];
  v48 = v0[10];
  v0[49] = v48;
  v2(v4, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v11 = v0[37];
  v12 = v0[33];
  v13 = v0[34];
  if (v9)
  {
    v53 = v0[44];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55 = v15;
    *v14 = 136315138;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v53(v11, v12);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v55);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v7, v8, "Got topic for upload request: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B2715BA0](v15, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  else
  {

    v10(v11, v12);
  }

  v50 = v0[42];
  v51 = v0[43];
  v21 = v0[40];
  v20 = v0[41];
  v22 = v0[33];
  v49 = v22;
  v47 = v0[31];
  v23 = v0[29];
  v24 = v0[24];
  v25 = v0[21];
  v46 = v0[20];
  v26 = v0[19];
  v44 = v0[36];
  v45 = v0[18];
  v43 = v0[17];
  v54 = v0[16];
  v27 = v0[14];
  v52 = v0[15];
  v28 = v0[13];
  static Date.now.getter();
  v21(v25, v28, v22);
  Date.timeIntervalSince1970.getter();
  v30 = v29;
  v50(v25 + v26[7], v27, v23);
  *(v25 + v26[5]) = v30;
  v31 = v25 + v26[6];
  *v31 = v52;
  *(v31 + 8) = v54;
  *(v31 + 16) = 1;
  *(v25 + v26[8]) = 2;
  v32 = *(v43 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  v0[50] = v32;
  outlined copy of Data?(v52, v54);
  [v32 lock];
  v21(v44, v28, v49);
  _s15GroupActivities11ParticipantVWOcTm_1(v25, v45, type metadata accessor for LinkManager.Attachment);
  (*(v46 + 56))(v45, 0, 1, v26);
  v33 = *MEMORY[0x1E69E7D40] & *v43;
  v34 = *(v33 + 0x128);
  v0[51] = v34;
  v0[52] = (v33 + 296) & 0xFFFFFFFFFFFFLL | 0xF38D000000000000;
  v35 = v34(v0 + 2);
  specialized Dictionary.subscript.setter(v45, v44);
  v35(v0 + 2, 0);
  [v32 unlock];
  v50(v47, v27, v23);
  v21(v44, v28, v49);
  type metadata accessor for AssetManager();

  v36 = static AssetManager.shared.getter();
  v37 = type metadata accessor for AttachmentUploadTask();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  outlined copy of Data?(v52, v54);
  v0[53] = specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(v48, v47, v52, v54, v44, v36, v40);

  v41 = swift_task_alloc();
  v0[54] = v41;
  *v41 = v0;
  v41[1] = LinkManager.uploadAttachment(id:file:developerMetadata:);

  return AttachmentUploadTask.start()();
}

{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v13 = v0[18];
  v14 = v0[48];

  v11 = v0[1];

  return v11();
}

{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  else
  {
    v3 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[53];
  v2 = v0[49];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v13 = v0[32];
  v14 = v0[31];
  v7 = v0[24];
  v15 = v0[28];
  v16 = v0[25];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[21];
  v17 = v0[18];

  _s15GroupActivities11ParticipantVWOhTm_0(v10, type metadata accessor for LinkManager.Attachment);
  (*(v9 + 8))(v7, v8);

  v11 = v0[1];

  return v11();
}

{
  v70 = v0;
  v1 = *(v0 + 440);
  *(v0 + 88) = v1;
  v2 = *(v0 + 376);
  v3 = v1;
  if (swift_dynamicCast() && *(v0 + 448) == 1)
  {
    v4 = *(v0 + 424);
    v5 = *(v0 + 392);
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    _s15GroupActivities11ParticipantVWOhTm_0(v9, type metadata accessor for LinkManager.Attachment);
    (*(v6 + 8))(v7, v8);
  }

  else
  {
    v67 = v0 + 48;
    v11 = *(v0 + 440);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v14 = *(v0 + 312);
    v15 = *(v0 + 280);
    v16 = *(v0 + 264);
    v17 = *(v0 + 104);

    v13(v15, v17, v16);
    v18 = v11;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v60 = *(v0 + 440);
      v62 = *(v0 + 376);
      v22 = *(v0 + 272);
      v21 = *(v0 + 280);
      v23 = *(v0 + 264);
      v24 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69[0] = v64;
      *v24 = 136315394;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v69);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v0 + 96) = v60;
      v29 = v60;
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v69);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_1AEE80000, v19, v20, "Failed to upload attachment %s, error: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v64, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    else
    {
      v34 = *(v0 + 272);
      v33 = *(v0 + 280);
      v35 = *(v0 + 264);

      (*(v34 + 8))(v33, v35);
    }

    v36 = *(v0 + 440);
    v37 = *(v0 + 416);
    v38 = *(v0 + 400);
    v39 = *(v0 + 408);
    v58 = *(v0 + 392);
    v59 = *(v0 + 424);
    v40 = *(v0 + 184);
    v41 = *(v0 + 176);
    v63 = v41;
    v65 = *(v0 + 192);
    v61 = *(v0 + 168);
    v42 = *(v0 + 136);
    v43 = *(v0 + 144);
    v44 = *(v0 + 104);
    [v38 lock];
    v45 = v39(v67);
    specialized Dictionary.removeValue(forKey:)(v44, v43);
    outlined destroy of NSObject?(v43, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
    v45(v67, 0);
    [v38 unlock];
    swift_willThrow();

    _s15GroupActivities11ParticipantVWOhTm_0(v61, type metadata accessor for LinkManager.Attachment);
    (*(v40 + 8))(v65, v63);
    v68 = *(v0 + 440);
  }

  v47 = *(v0 + 296);
  v46 = *(v0 + 304);
  v49 = *(v0 + 280);
  v48 = *(v0 + 288);
  v51 = *(v0 + 248);
  v50 = *(v0 + 256);
  v52 = *(v0 + 224);
  v54 = *(v0 + 192);
  v53 = *(v0 + 200);
  v55 = *(v0 + 168);
  v66 = *(v0 + 144);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t LinkManager.fetchAttachment(attachmentID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachment(attachmentID:), 0, 0);
}

uint64_t LinkManager.fetchAttachment(attachmentID:)()
{
  v29 = v0;
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0xF8))();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;

    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = LinkManager.fetchAttachment(attachmentID:);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    return LinkManager.fetchAttachment(attachmentID:generator:)(v6, v4, &async function pointer to partial apply for closure #1 in LinkManager.fetchAttachment(attachmentID:), v2);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = *(v0 + 24);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    (*(v9 + 16))(v8, v11, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Dropping downloadRequest %s due to not having a topic yet.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v26 = *(v0 + 56);

    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4.n128_u64[0] = v0[11];

  return v3(v4);
}

{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t LinkManager.fetchAttachment(attachmentID:)(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v9 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = LinkManager.fetchAttachment(attachmentID:);
  }

  else
  {
    v7 = *(v4 + 64);

    *(v4 + 88) = a1;
    v6 = LinkManager.fetchAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t LinkManager.fetchAttachmentMetadata(attachmentID:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for Attachment.Metadata();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = type metadata accessor for LinkManager.Attachment(0);
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachmentMetadata(attachmentID:), 0, 0);
}

uint64_t LinkManager.fetchAttachmentMetadata(attachmentID:)()
{
  v76 = v0;
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0xF8))();
  *(v0 + 152) = v1;
  if (!v1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    v9 = *(v0 + 24);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v75[0] = v18;
      *v17 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v75);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1AEE80000, v11, v12, "Dropping downloadRequest %s due to not having a topic yet.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B2715BA0](v18, -1, -1);
      MEMORY[0x1B2715BA0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    goto LABEL_16;
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  [v5 lock];
  closure #1 in LinkManager.fetchAttachmentMetadata(attachmentID:)(v4, v3, v2);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  [v5 unlock];
  v25 = v23 + *(v24 + 24);
  v26 = *v25;
  *(v0 + 160) = *v25;
  v27 = *(v25 + 8);
  *(v0 + 168) = v27;
  if (*(v25 + 16))
  {
    if (v27 >> 60 == 15)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.default);
      _s15GroupActivities11ParticipantVWOcTm_1(v28, v29, type metadata accessor for LinkManager.Attachment);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 136);
      if (v33)
      {
        v36 = *(v0 + 104);
        v35 = *(v0 + 112);
        v38 = *(v0 + 64);
        v37 = *(v0 + 72);
        v39 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75[0] = v74;
        *v39 = 136315138;
        _s15GroupActivities11ParticipantVWOcTm_1(v34, v37, type metadata accessor for LinkManager.Attachment);
        (*(v35 + 56))(v37, 0, 1, v36);
        outlined init with copy of URL?(v37, v38, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
        if ((*(v35 + 48))(v38, 1, v36) == 1)
        {
          v40 = 0xE300000000000000;
          v41 = 7104878;
        }

        else
        {
          v66 = *(v0 + 120);
          v67 = *(v0 + 128);
          v68 = *(v0 + 104);
          _s15GroupActivities11ParticipantVWObTm_2(*(v0 + 64), v67, type metadata accessor for LinkManager.Attachment);
          _s15GroupActivities11ParticipantVWOcTm_1(v67, v66, type metadata accessor for LinkManager.Attachment);
          v41 = String.init<A>(reflecting:)();
          v40 = v69;
          _s15GroupActivities11ParticipantVWOhTm_0(v67, type metadata accessor for LinkManager.Attachment);
        }

        v70 = *(v0 + 136);
        outlined destroy of NSObject?(*(v0 + 72), &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
        _s15GroupActivities11ParticipantVWOhTm_0(v70, type metadata accessor for LinkManager.Attachment);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, v75);

        *(v39 + 4) = v71;
        _os_log_impl(&dword_1AEE80000, v31, v32, "Requested to fetch metadata but local attachment %s doesn't have any", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x1B2715BA0](v74, -1, -1);
        MEMORY[0x1B2715BA0](v39, -1, -1);
      }

      else
      {

        _s15GroupActivities11ParticipantVWOhTm_0(v34, type metadata accessor for LinkManager.Attachment);
      }

      v72 = *(v0 + 144);
      lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
      swift_allocError();
      *v73 = 3;
      swift_willThrow();

      _s15GroupActivities11ParticipantVWOhTm_0(v72, type metadata accessor for LinkManager.Attachment);
LABEL_16:
      v44 = *(v0 + 136);
      v43 = *(v0 + 144);
      v46 = *(v0 + 120);
      v45 = *(v0 + 128);
      v47 = *(v0 + 96);
      v49 = *(v0 + 64);
      v48 = *(v0 + 72);
      v50 = *(v0 + 56);

      v51 = *(v0 + 8);

      return v51();
    }

    v56 = *(v0 + 144);
    outlined copy of LinkManager.Attachment.Source(v26, v27, 1);

    _s15GroupActivities11ParticipantVWOhTm_0(v56, type metadata accessor for LinkManager.Attachment);
    v58 = *(v0 + 136);
    v57 = *(v0 + 144);
    v60 = *(v0 + 120);
    v59 = *(v0 + 128);
    v61 = *(v0 + 96);
    v63 = *(v0 + 64);
    v62 = *(v0 + 72);
    v64 = *(v0 + 56);

    v65 = *(v0 + 8);

    return v65(v26, v27);
  }

  else
  {
    v53 = *(MEMORY[0x1E69974A8] + 4);

    v54 = swift_task_alloc();
    *(v0 + 176) = v54;
    *v54 = v0;
    v54[1] = LinkManager.fetchAttachmentMetadata(attachmentID:);
    v55 = *(v0 + 96);

    return MEMORY[0x1EEDF85A8](v55);
  }
}

{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = LinkManager.fetchAttachmentMetadata(attachmentID:);
  }

  else
  {
    v3 = LinkManager.fetchAttachmentMetadata(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v46 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = Attachment.Metadata.developerMetadata.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = v0[20];
    v7 = v0[21];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined consume of LinkManager.Attachment.Source(v8, v7, 0);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[20];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v45 = v14;
      *v13 = 136315138;
      v0[2] = v12;
      type metadata accessor for Attachment();

      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v45);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1AEE80000, v10, v11, "Requested to fetch metadata but attachment %s doesn't have any", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B2715BA0](v14, -1, -1);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    v19 = v0[20];
    v18 = v0[21];
    v21 = v0[18];
    v20 = v0[19];
    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    outlined consume of LinkManager.Attachment.Source(v19, v18, 0);
    _s15GroupActivities11ParticipantVWOhTm_0(v21, type metadata accessor for LinkManager.Attachment);
    v24 = v0[17];
    v23 = v0[18];
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[12];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v34 = v0[20];
    v33 = v0[21];
    v35 = v0[19];
    _s15GroupActivities11ParticipantVWOhTm_0(v0[18], type metadata accessor for LinkManager.Attachment);
    outlined consume of LinkManager.Attachment.Source(v34, v33, 0);

    v37 = v0[17];
    v36 = v0[18];
    v39 = v0[15];
    v38 = v0[16];
    v40 = v0[12];
    v42 = v0[8];
    v41 = v0[9];
    v43 = v0[7];

    v44 = v0[1];

    return v44(v4, v6);
  }
}

{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  outlined consume of LinkManager.Attachment.Source(v1, v2, 0);
  _s15GroupActivities11ParticipantVWOhTm_0(v4, type metadata accessor for LinkManager.Attachment);
  v5 = v0[23];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities21AttachmentLedgerTopicC_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of URL?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      type metadata accessor for AttachmentLedgerTopic(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  type metadata accessor for AttachmentLedgerTopic(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities35PluginAttachmentLedgerTopicProvider_p_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of URL?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of URL?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for LinkManager.Attachment(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
    specialized Dictionary.removeValue(forKey:)(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of NSObject?(v8, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  }

  else
  {
    _s15GroupActivities11ParticipantVWObTm_2(a1, v12, type metadata accessor for LinkManager.Attachment);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v10);
    v8 = type metadata accessor for CodingUserInfoKey();
    (*(*(v8 - 8) + 8))(a2, v8);
    return outlined destroy of NSObject?(v10, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of NSObject?(a1, &_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
    v15 = *v3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      specialized _NativeDictionary._delete(at:)(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return outlined destroy of NSObject?(v9, &_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = type metadata accessor for UUID();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v5 = v29;
  }

  else
  {
    v16 = *v5;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v30 = *v6;
      if (!v21)
      {
        a5();
        v22 = v30;
      }

      v23 = *(v22 + 48);
      v24 = type metadata accessor for UUID();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);

      a4(v19, v22);
      result = (v26)(a2, v24);
      *v6 = v22;
    }

    else
    {
      v27 = type metadata accessor for UUID();
      v28 = *(*(v27 - 8) + 8);

      return v28(a2, v27);
    }
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
  }

  else
  {
    v13 = *v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if (v14)
    {
      v15 = result;
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v23 = *v5;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v23;
      }

      v19 = *(v18 + 56) + 24 * v15;
      v21 = *(v19 + 8);
      v20 = *(v19 + 16);

      result = specialized _NativeDictionary._delete(at:)(v15, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v28;
  }

  else
  {
    v12 = *v3;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v29 = *v4;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v29;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = (*(v18 + 56) + 16 * v15);
      v25 = *v23;
      v24 = v23[1];

      specialized _NativeDictionary._delete(at:)(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v27 = *(*(v26 - 8) + 8);

      return v27(a3, v26);
    }
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Transferable(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, outlined init with take of Transferable, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v10);

    return outlined destroy of NSObject?(v10, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[1] == 1;
  }

  if (v4)
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMd, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v11);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(a2, v9);
    return outlined destroy of NSObject?(v11, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMd, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMR);
  }

  else
  {
    outlined init with take of GroupSessionTable.Storage(a1, v11);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v10;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 40) == 255)
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMd, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMR);
    v9 = *v2;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v15 = v20;
      }

      v16 = (*(v15 + 56) + 48 * v12);
      v17 = *(v16 + 25);
      v18 = v16[1];
      *v21 = *v16;
      *&v21[16] = v18;
      *&v21[25] = v17;
      specialized _NativeDictionary._delete(at:)(v12, v15);
      *v3 = v15;
    }

    else
    {
      memset(v21, 0, 40);
      v21[40] = -1;
    }

    return outlined destroy of NSObject?(v21, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMd, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMR);
  }

  else
  {
    v5 = *(a1 + 16);
    *v21 = *a1;
    *&v21[16] = v5;
    *&v21[25] = *(a1 + 25);
    v6 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a2, v7);
    *v2 = v19;
  }

  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v16;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for LinkManager.Attachment(0);
    v22 = *(v15 - 8);
    _s15GroupActivities11ParticipantVWObTm_2(v14 + *(v22 + 72) * v8, a2, type metadata accessor for LinkManager.Attachment);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for LinkManager.Attachment(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void LinkManager.attachmentLedgerTopic.willset(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMR);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v22 = v3;
    v11 = 7104878;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315394;
    v14 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0xF8))();
    if (v14)
    {
      v24 = v14;
      type metadata accessor for AttachmentLedgerTopic(0);
      v15 = String.init<A>(reflecting:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v25);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    if (a1)
    {
      v24 = a1;
      type metadata accessor for AttachmentLedgerTopic(0);

      v11 = String.init<A>(reflecting:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v20, v25);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1AEE80000, v9, v10, "Updating AttachmentLedgerTopic from %s to: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);

    v3 = v22;
    if (a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (a1)
    {
LABEL_13:
      v25[0] = (*(*a1 + 392))();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
      Publisher.compactMap<A>(_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<[Attachment], Never>, [LinkManager.Attachment]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMR);
      Publisher<>.sink(receiveValue:)();

      (*(v23 + 8))(v6, v3);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }
}

void closure #1 in LinkManager.attachmentLedgerTopic.willset(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v38 = type metadata accessor for LinkManager.Attachment(0);
  v35 = *(v38 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v31 - v11;
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v12 >> 62)
    {
      goto LABEL_26;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a2; v13; i = a2)
    {
      v14 = 0;
      v36 = v12 & 0xC000000000000001;
      a2 = (v12 & 0xFFFFFFFFFFFFFF8);
      v15 = (v35 + 48);
      v16 = MEMORY[0x1E69E7CC0];
      v33 = v12;
      while (v36)
      {
        v17 = MEMORY[0x1B2714B30](v14, v12);
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_24;
        }

LABEL_10:
        v40 = v17;
        closure #1 in closure #1 in LinkManager.attachmentLedgerTopic.willset(&v40, Strong, v7);

        if ((*v15)(v7, 1, v38) == 1)
        {
          outlined destroy of NSObject?(v7, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
        }

        else
        {
          v19 = v34;
          _s15GroupActivities11ParticipantVWObTm_2(v7, v34, type metadata accessor for LinkManager.Attachment);
          _s15GroupActivities11ParticipantVWObTm_2(v19, v37, type metadata accessor for LinkManager.Attachment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          }

          v21 = v16[2];
          v20 = v16[3];
          if (v21 >= v20 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v16);
          }

          v16[2] = v21 + 1;
          _s15GroupActivities11ParticipantVWObTm_2(v37, v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v21, type metadata accessor for LinkManager.Attachment);
          v12 = v33;
        }

        ++v14;
        if (v18 == v13)
        {
          goto LABEL_28;
        }
      }

      if (v14 >= a2[2])
      {
        goto LABEL_25;
      }

      v17 = *(v12 + 8 * v14 + 32);

      v18 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v13 = __CocoaSet.count.getter();
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_28:

    a2 = i;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.default);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;
      v27 = type metadata accessor for Attachment();
      v28 = MEMORY[0x1B27142D0](v12, v27);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v40);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1AEE80000, v23, v24, "Learned about new attachments: %s but lost reference to self. Can't indicate an update to clients", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B2715BA0](v26, -1, -1);
      MEMORY[0x1B2715BA0](v25, -1, -1);
    }

    v16 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v16;
}

uint64_t closure #1 in closure #1 in LinkManager.attachmentLedgerTopic.willset@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v5 = type metadata accessor for Date();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v66 - v10;
  v79 = type metadata accessor for URL();
  v73 = *(v79 - 8);
  v11 = *(v73 + 64);
  v12 = MEMORY[0x1EEE9AC00](v79);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v66 - v17;
  v18 = type metadata accessor for UUID();
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for LinkManager.Attachment(0);
  v22 = *(v80 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v80);
  v69 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v66 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v68 = &v66 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v67 = &v66 - v32;
  v33 = *a1;
  v34 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x130);
  v78 = a2;
  result = v34(v31);
  v36 = result;
  v37 = *(result + 16);
  if (v37)
  {
    v38 = 0;
    v39 = (v82 + 8);
    while (v38 < *(v36 + 16))
    {
      _s15GroupActivities11ParticipantVWOcTm_1(v36 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v38, v28, type metadata accessor for LinkManager.Attachment);
      Attachment.id.getter();
      v40 = static UUID.== infix(_:_:)();
      (*v39)(v21, v83);
      if (v40)
      {

        v61 = v68;
        _s15GroupActivities11ParticipantVWObTm_2(v28, v68, type metadata accessor for LinkManager.Attachment);
        v62 = v61;
        v63 = v67;
        _s15GroupActivities11ParticipantVWObTm_2(v62, v67, type metadata accessor for LinkManager.Attachment);
        v64 = v63;
        v65 = v81;
        _s15GroupActivities11ParticipantVWObTm_2(v64, v81, type metadata accessor for LinkManager.Attachment);
        return (*(v22 + 56))(v65, 0, 1, v80);
      }

      ++v38;
      result = _s15GroupActivities11ParticipantVWOhTm_0(v28, type metadata accessor for LinkManager.Attachment);
      if (v37 == v38)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v41 = v33;
    Attachment.id.getter();
    v42 = (*((*MEMORY[0x1E69E7D40] & *v78) + 0x128))(v84);
    v43 = v77;
    specialized Dictionary.removeValue(forKey:)(v21, v77);
    v44 = v83;
    v45 = *(v82 + 8);
    v45(v21, v83);
    v42(v84, 0);
    v46 = v80;
    if ((*(v22 + 48))(v43, 1, v80) == 1)
    {
      outlined destroy of NSObject?(v43, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
      UUID.init()();
      UUID.uuidString.getter();
      v45(v21, v44);
      v47 = v71;
      static URL.temporaryDirectory.getter();
      v48 = v73;
      (*(v73 + 56))(v47, 0, 1, v79);
      v49 = v70;
      URL.init(fileURLWithPath:relativeTo:)();

      outlined destroy of NSObject?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v50 = v72;
      URL.absoluteURL.getter();
      v51 = v49;
      v52 = v79;
      (*(v48 + 8))(v51, v79);
      v53 = v74;
      static Date.now.getter();
      v54 = v81;
      Attachment.id.getter();
      Date.timeIntervalSince1970.getter();
      v56 = v55;
      (*(v75 + 8))(v53, v76);
      *(v54 + v46[5]) = v56;
      v57 = v54 + v46[6];
      *v57 = v41;
      *(v57 + 8) = 0;
      *(v57 + 16) = 0;
      (*(v48 + 32))(v54 + v46[7], v50, v52);
      *(v54 + v46[8]) = 0;
      (*(v22 + 56))(v54, 0, 1, v46);
    }

    else
    {
      v58 = v69;
      _s15GroupActivities11ParticipantVWObTm_2(v43, v69, type metadata accessor for LinkManager.Attachment);
      v59 = v58;
      v60 = v81;
      _s15GroupActivities11ParticipantVWObTm_2(v59, v81, type metadata accessor for LinkManager.Attachment);
      return (*(v22 + 56))(v60, 0, 1, v46);
    }
  }

  return result;
}

uint64_t LinkManager.Attachment.init(id:sentTime:source:file:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for LinkManager.Attachment(0);
  *(a7 + v17[5]) = a8;
  v18 = a7 + v17[6];
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = a4 & 1;
  v19 = v17[7];
  v20 = type metadata accessor for URL();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  *(a7 + v17[8]) = a6;
  return result;
}

void closure #2 in LinkManager.attachmentLedgerTopic.willset(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
    [v4 lock];
    v5 = *((*MEMORY[0x1E69E7D40] & v3->isa) + 0x138);

    v5(v6);
    [v4 unlock];
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);

    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = type metadata accessor for LinkManager.Attachment(0);
      v12 = MEMORY[0x1B27142D0](v1, v11);
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1AEE80000, v3, v8, "Learned about new attachments: %s but lost reference to self. Can't indicate an update to clients", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B2715BA0](v10, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }
  }
}

uint64_t LinkManager.attachmentLedgerTopic.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

uint64_t LinkManager.attachmentLedgerTopic.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  LinkManager.attachmentLedgerTopic.willset(a1);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic, v3);
  v9[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

void (*LinkManager.attachmentLedgerTopic.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v5[5] = v6;
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v5[6] = v8;
  v5[7] = v9;
  v10 = *(v7 + 16);
  v5[8] = v10;
  v5[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11 = v8;
  v10();
  CurrentSubject.wrappedValue.getter();
  v12 = *(v7 + 8);
  v5[10] = v12;
  v5[11] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v11, v6);
  *v5 = v5[1];
  return LinkManager.attachmentLedgerTopic.modify;
}

void LinkManager.attachmentLedgerTopic.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v5 = (*a1)[10];
  v4 = (*a1)[11];
  v7 = (*a1)[8];
  v6 = (*a1)[9];
  v8 = (*a1)[6];
  v9 = (*a1)[7];
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  if (a2)
  {

    LinkManager.attachmentLedgerTopic.willset(v12);
    v7(v8, v10 + v9, v11);
    v2[2] = v3;
    CurrentSubject.wrappedValue.setter();
    v5(v8, v11);
    v13 = *v2;
  }

  else
  {
    LinkManager.attachmentLedgerTopic.willset(v3);
    v7(v8, v10 + v9, v11);
    v2[3] = v3;
    CurrentSubject.wrappedValue.setter();
    v5(v8, v11);
  }

  free(v8);

  free(v2);
}

uint64_t LinkManager.pendingLocalAttachments.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t LinkManager.pendingLocalAttachments.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LinkManager.attachments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

uint64_t LinkManager.attachments.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments, v3);
  v9[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

void (*LinkManager.attachments.modify(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t LinkManager.$attachmentLedgerTopic.getter(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v3 + *a3, v5);
  v10 = CurrentSubject.projectedValue.getter();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t LinkManager.dataCryptor.setter(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 408);
  v4 = swift_unknownObjectRetain();
  result = v3(v4);
  if (*(v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
  {
    if (a1)
    {
      ObjectType = swift_getObjectType();
      v12 = ObjectType;
      v11[0] = a1;
      swift_unknownObjectRetain();

      UnreliableMessenger.refreshDataCryptorProvider(with:)();
      v7 = __swift_destroy_boxed_opaque_existential_0(v11);
      v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))(v7);
      if (v8)
      {
        (*(*v8 + 344))(v11);

        if (v12)
        {
          outlined init with copy of Transferable(v11, v10);
          outlined destroy of NSObject?(v11, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
          __swift_project_boxed_opaque_existential_1(v10, v10[3]);
          v9[3] = ObjectType;
          v9[0] = a1;
          swift_unknownObjectRetain();
          dispatch thunk of TopicCryptorProvider.refresh(with:)();
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(v9);
          return __swift_destroy_boxed_opaque_existential_0(v10);
        }

        else
        {
          swift_unknownObjectRelease();

          return outlined destroy of NSObject?(v11, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*LinkManager.dataCryptor.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = (*(**(v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 400))();
  return LinkManager.dataCryptor.modify;
}

uint64_t LinkManager.dataCryptor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return LinkManager.dataCryptor.setter(*a1);
  }

  v4 = *a1;
  v5 = swift_unknownObjectRetain();
  LinkManager.dataCryptor.setter(v5);

  return swift_unknownObjectRelease();
}

uint64_t LinkManager.hasConnectedOnce.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LinkManager.hasConnectedOnce.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for LinkManager.receivedDataHandler : LinkManager@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64, @in_guaranteed SendReliability) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.receivedDataHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed SendReliability) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B8);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for LinkManager.onFirstConnectedHandler : LinkManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.onFirstConnectedHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for LinkManager.invalidationHandler : LinkManager@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.invalidationHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1E8);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for LinkManager.catchupNeededHandler : LinkManager@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt64) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.catchupNeededHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x200);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t (*LinkManager.catchupNeededHandler.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic);
  a1[2] = v2;
  *a1 = (*(*v2 + 376))();
  a1[1] = v4;
  return LinkManager.catchupNeededHandler.modify;
}

uint64_t LinkManager.catchupNeededHandler.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(*a1[2] + 384);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*a1);
  v4(v3, v2);

  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v3);
}

uint64_t key path getter for LinkManager.requestEncryptionKeysHandler : LinkManager@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [UInt64]?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.requestEncryptionKeysHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x218);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t LinkManager.receivedDataHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t LinkManager.receivedDataHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v82 = a3;
  v83 = a7;
  v81 = a6;
  v85 = a5;
  v86 = a2;
  v84 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v72 - v14;
  v72 = type metadata accessor for Participant();
  v79 = *(v72 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v72 - v24;
  v26 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
  *&v7[v26] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
  v27 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v87[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v22 + 32))(&v7[v27], v25, v21);
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
  v28 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
  v29 = MEMORY[0x1E69E7CC0];
  v87[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v17 + 32))(&v7[v28], v20, v16);
  if (v29 >> 62 && __CocoaSet.count.getter())
  {
    v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CD0];
  }

  v31 = v84;
  v32 = v86;
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v30;
  v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
  v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
  v33 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier;
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 16);
  v40(&v7[v37], v31, v38);
  v40(&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v32, v38);
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = a4;
  v41 = v85;
  _s15GroupActivities11ParticipantVWOcTm_1(v85, &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
  v42 = v81;
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v81;
  v43 = v83;
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v83;
  v44 = type metadata accessor for LinkManager(0);
  v88.receiver = v7;
  v88.super_class = v44;

  v81 = v42;
  swift_unknownObjectRetain();
  v45 = objc_msgSendSuper2(&v88, sel_init);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v80;
  _s15GroupActivities11ParticipantVWOcTm_1(v41, v80, type metadata accessor for Participant);
  v48 = (*(v79 + 80) + 24) & ~*(v79 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  _s15GroupActivities11ParticipantVWObTm_2(v47, v49 + v48, type metadata accessor for Participant);
  v50 = *(*a4 + 336);
  v51 = v45;

  v50(closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v49);
  v52 = v84;

  if ([v43 unreliableMessengerEnabled])
  {
    v53 = UUID.uuidString.getter();
    v55 = v54;
    v56 = *(v85 + *(v72 + 24));
    v57 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager);
    v80 = (*(*v82 + 256))(v86, v53, v55, v56, v81, v51, v57);

    v59 = v73;
    (*(*a4 + 448))(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
    v60 = v52;
    v61 = v74;
    v62 = v76;
    Publisher.map<A>(_:)();
    (*(v75 + 8))(v59, v62);
    v63 = v80;
    v64 = UnreliableMessenger.$activeReliableSubscribers.modify();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
    v65 = v78;
    Publisher<>.assign(to:)();
    v66 = v61;
    v52 = v60;
    (*(v77 + 8))(v66, v65);
    v64(v87, 0);
    v67 = *&v51[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger];
    *&v51[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v63;
  }

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v69 = *(*a4 + 360);

  v69(closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v68);

  swift_unknownObjectRelease();

  _s15GroupActivities11ParticipantVWOhTm_0(v85, type metadata accessor for Participant);
  v70 = *(v39 + 8);
  v70(v86, v38);
  v70(v52, v38);

  return v51;
}

void closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for Participant();
    if (a4)
    {
      v14 = *(a4 + 16);
      v15 = (a4 + 32);
      while (v14)
      {
        v16 = *v15++;
        --v14;
        if (v16 == *(a6 + *(v13 + 24)))
        {
          goto LABEL_6;
        }
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.default);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1AEE80000, v20, v21, "Ignoring topic record due to not being in the destination list", v22, 2u);
        MEMORY[0x1B2715BA0](v22, -1, -1);
      }
    }

    else
    {
LABEL_6:
      v17 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x1B0))(v13);
      if (v17)
      {
        v18 = v17;
        v23 = 0;
        v17(a1, a2, a3, &v23);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v18);
      }
    }
  }
}

uint64_t closure #2 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMd, &_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMR);
  v4 = *(*(v52 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v43 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v49 = &v43 - v10;
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v44 = a2;
    v56 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v56;
    v14 = v11 + 64;
    v15 = -1 << *(v11 + 32);
    result = _HashTable.startBucket.getter();
    v16 = result;
    v17 = 0;
    v45 = v11 + 72;
    v46 = v12;
    v47 = v11 + 64;
    v48 = v11;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_22;
      }

      v21 = *(v11 + 36);
      v53 = v17;
      v54 = v21;
      v55 = v13;
      v22 = v52;
      v23 = *(v52 + 48);
      v24 = *(v11 + 56);
      v25 = *(*(v11 + 48) + 8 * v16);
      v26 = type metadata accessor for PubSubTopic.Participant();
      v27 = *(v26 - 8);
      v28 = v49;
      (*(v27 + 16))(&v49[v23], v24 + *(v27 + 72) * v16, v26);
      v29 = v50;
      *v50 = v25;
      (*(v27 + 32))(&v29[*(v22 + 48)], &v28[v23], v26);
      v30 = v29;
      v31 = v51;
      outlined init with take of (key: UInt64, value: PubSubTopic.Participant)(v30, v51);
      v32 = *v31;
      v33 = *(v22 + 48);
      v13 = v55;
      result = (*(v27 + 8))(&v31[v33], v26);
      v56 = v13;
      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      if (v35 >= v34 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v13 = v56;
      }

      *(v13 + 16) = v35 + 1;
      *(v13 + 8 * v35 + 32) = v32;
      v11 = v48;
      v18 = 1 << *(v48 + 32);
      if (v16 >= v18)
      {
        goto LABEL_23;
      }

      v14 = v47;
      v36 = *(v47 + 8 * v20);
      if ((v36 & (1 << v16)) == 0)
      {
        goto LABEL_24;
      }

      if (v54 != *(v48 + 36))
      {
        goto LABEL_25;
      }

      v37 = v36 & (-2 << (v16 & 0x3F));
      if (v37)
      {
        v18 = __clz(__rbit64(v37)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v46;
      }

      else
      {
        v38 = v20 << 6;
        v39 = v20 + 1;
        v19 = v46;
        v40 = (v45 + 8 * v20);
        while (v39 < (v18 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = outlined consume of Set<TUHandle>.Index._Variant(v16, v54, 0);
            v18 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<TUHandle>.Index._Variant(v16, v54, 0);
      }

LABEL_4:
      v17 = v53 + 1;
      v16 = v18;
      if (v53 + 1 == v19)
      {
        a2 = v44;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_20:
    *a2 = v13;
  }

  return result;
}

void closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)()
{
  v0 = type metadata accessor for PubSubTopic.State();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v1 + 104))(v4, *MEMORY[0x1E69974D8], v0);
    v7 = static PubSubTopic.State.== infix(_:_:)();
    v8 = (*(v1 + 8))(v4, v0);
    if ((v7 & 1) != 0 && (v9 = MEMORY[0x1E69E7D40], ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x198))(v8) & 1) == 0) && (v10 = (*((*v9 & *v6) + 0x1A0))(1), (v11 = (*((*v9 & *v6) + 0x1C8))(v10)) != 0))
    {
      v12 = v11;
      v11();

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v12);
    }

    else
    {
    }
  }
}

id LinkManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSObject *LinkManager.resume()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - v7;
  v9 = *(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  v10 = [v9 lock];
  v11 = OBJC_IVAR____TtC15GroupActivities11LinkManager_state;
  if ((*(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_state) & 1) == 0)
  {
    (*(**(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 648))(v10);
    *(&v0->isa + v11) = 1;
    if ([*(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags) unreliableMessengerEnabled])
    {
      if (!*(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Log.default);
        v0 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v0, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_1AEE80000, v0, v35, "No UnreliableMessenger to start", v36, 2u);
          MEMORY[0x1B2715BA0](v36, -1, -1);
        }

        lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
        swift_allocError();
        v13 = 3;
        goto LABEL_3;
      }

      v14 = *((*MEMORY[0x1E69E7D40] & v0->isa) + 0x168);
      v51 = *(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger);

      v16 = v14(v15);
      if (!v16)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Log.default);
        v0 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v0, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1AEE80000, v0, v38, "Missing dataCryptor, unable to start UnreliableMessenger", v39, 2u);
          MEMORY[0x1B2715BA0](v39, -1, -1);
        }

        lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
        swift_allocError();
        *v40 = 4;
        swift_willThrow();

        goto LABEL_4;
      }

      v17 = v16;
      v18 = (*((*MEMORY[0x1E69E7D40] & v0->isa) + 0x210))();
      if (!v18)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Log.default);
        v0 = Logger.logObject.getter();
        v42 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v0, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1AEE80000, v0, v42, "Missing requestEncryptionKeysHandler for UnreliableMessenger", v43, 2u);
          MEMORY[0x1B2715BA0](v43, -1, -1);
        }

        lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
        swift_allocError();
        *v44 = 5;
        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_4;
      }

      v46 = v2;
      v20 = v18;
      v50 = v19;
      v21 = UUID.uuidString.getter();
      v47 = v22;
      v48 = v21;
      v23 = type metadata accessor for GroupSessionDataCryptorProvider();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v49 = v23;
      v45 = swift_allocObject();
      outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v20);
      swift_unknownObjectRetain();
      v47 = v20;
      v48 = v17;
      v26 = GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)();
      v27 = static Date.now.getter();
      v28 = (*((*MEMORY[0x1E69E7D40] & v0->isa) + 0xF8))(v27);
      v29 = MEMORY[0x1E69976B8];
      if (v28)
      {
        v53 = v49;
        v54 = MEMORY[0x1E69976B8];
        v52[0] = v26;
        v30 = *(*v28 + 432);

        v30(v52, MEMORY[0x1E69E7CC0]);
        v29 = MEMORY[0x1E69976B8];

        outlined destroy of NSObject?(v52, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
      }

      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      Date.timeIntervalSince1970.getter();
      v53 = v49;
      v54 = v29;
      v52[0] = v26;

      UnreliableMessenger.start(dataCryptorProvider:)();

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v47);
      swift_unknownObjectRelease();
      v31 = *(v46 + 8);
      v31(v6, v1);
      v31(v8, v1);
      __swift_destroy_boxed_opaque_existential_0(v52);
    }

    v32 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v0 = AttachmentDataReport.init(isSubscribe:responseTime:)();
    [v9 unlock];
    return v0;
  }

  lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
  swift_allocError();
  v13 = 2;
LABEL_3:
  *v12 = v13;
  swift_willThrow();
LABEL_4:
  [v9 unlock];
  return v0;
}

uint64_t LinkManager.close()()
{
  v3 = v0;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  v13 = [v12 lock];
  v14 = OBJC_IVAR____TtC15GroupActivities11LinkManager_state;
  if (*(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_state) == 1)
  {
    v24[0] = v12;
    v24[1] = v1;
    (*(**(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 656))(v13);
    v15 = static Date.now.getter();
    v16 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF8))(v15);
    if (v16)
    {
      (*(*v16 + 448))(v16);
    }

    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    Date.timeIntervalSince1970.getter();
    v17 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v2 = AttachmentDataReport.init(isSubscribe:responseTime:)();
    v18 = OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger;
    if (*(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
    {
      v19 = *(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger);

      UnreliableMessenger.close()();
    }

    v20 = *(v5 + 8);
    v20(v9, v4);
    v20(v11, v4);
    v21 = *(v3 + v18);
    *(v3 + v18) = 0;

    *(v3 + v14) = 0;
    [v24[0] unlock];
  }

  else
  {
    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    [v12 unlock];
  }

  return v2;
}

id LinkManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void LinkManager.sendDataReliably(_:to:messageTypeIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  if (!a3)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v34 = a4;
  v35 = a1;
  v32 = a5;
  v33 = a2;
  v9 = a6;
  v10 = a7;
  if ((a3 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
      v12 = v11;
      v13 = *(v11 + 16);

      if (v13 == __CocoaSet.count.getter())
      {
LABEL_5:

        a7 = v10;
        a6 = v9;
        a5 = v32;
        a2 = v33;
        a4 = v34;
        a1 = v35;
LABEL_18:
        (*(**(v7 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 664))(a1, a2, v12, a4, a5, a6, a7);

        return;
      }

LABEL_9:
      v31 = v7;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36[0] = v30;
        *v20 = 136315394;
        v21 = MEMORY[0x1B27142D0](v12, MEMORY[0x1E69E76D8]);
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v36);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
        lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
        v25 = Set.description.getter();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v36);

        *(v20 + 14) = v27;
        _os_log_impl(&dword_1AEE80000, v18, v19, "Not able to resolve all participants' identifiers, sending only to destinations %s instead of %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v30, -1, -1);
        MEMORY[0x1B2715BA0](v20, -1, -1);
      }

      else
      {
      }

      a7 = v10;
      a6 = v9;
      a5 = v32;
      a2 = v33;
      a4 = v34;
      a1 = v35;
      v7 = v31;
      goto LABEL_18;
    }
  }

  else if (*(a3 + 16))
  {
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
    v12 = v14;
    v15 = *(v14 + 16);
    v16 = *(a3 + 16);

    if (v15 == v16)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
  v28 = swift_allocError();
  *v29 = 0;
  v9();
}

void LinkManager.sendDataUnreliably(_:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(v4 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
  {
    if (!a3)
    {
      v16 = *(v4 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger);

      goto LABEL_25;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {

      if (__CocoaSet.count.getter())
      {
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
        v8 = v7;
        v9 = *(v7 + 16);

        if (v9 == __CocoaSet.count.getter())
        {
LABEL_6:

LABEL_25:
          UnreliableMessenger.send(_:to:completion:)();

          return;
        }

LABEL_15:
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.default);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36[0] = v35;
          *v24 = 136315394;
          v33 = v23;
          v25 = MEMORY[0x1B27142D0](v8, MEMORY[0x1E69E76D8]);
          log = v22;
          v27 = v26;

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v36);

          *(v24 + 4) = v28;
          *(v24 + 12) = 2080;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
          lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
          v29 = Set.description.getter();
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v36);

          *(v24 + 14) = v31;
          v22 = log;
          _os_log_impl(&dword_1AEE80000, log, v33, "Not able to resolve all participants' identifiers, sending only to destinations %s instead of %s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v35, -1, -1);
          MEMORY[0x1B2715BA0](v24, -1, -1);
        }

        else
        {
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = *(a3 + 16);

      if (v17)
      {
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
        v8 = v18;
        v19 = *(v18 + 16);
        v20 = *(a3 + 16);

        if (v19 == v20)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    v14 = swift_allocError();
    *v32 = 0;
    a4();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1AEE80000, v11, v12, "Unexpected, unreliableMessenger instance not found", v13, 2u);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    v14 = swift_allocError();
    *v15 = 1;
    a4();
  }
}

uint64_t LinkManager.fetchAttachmentLedgerTopic()()
{
  *(v1 + 24) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachmentLedgerTopic(), 0, 0);
}

{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities21AttachmentLedgerTopicC_Tt2g5(0, 0, v1, &closure #1 in LinkManager.fetchAttachmentLedgerTopic()partial apply, v4);
  v0[5] = v6;
  v7 = *(MEMORY[0x1E69E86A8] + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = type metadata accessor for AttachmentLedgerTopic(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v8 = v0;
  v8[1] = LinkManager.fetchAttachmentLedgerTopic();
  v11 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v6, v9, v10, v11);
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = LinkManager.fetchAttachmentLedgerTopic();
  }

  else
  {
    v4 = LinkManager.fetchAttachmentLedgerTopic();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t closure #1 in LinkManager.fetchAttachmentLedgerTopic()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGGMR);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMR);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkManager.fetchAttachmentLedgerTopic(), 0, 0);
}

uint64_t closure #1 in LinkManager.fetchAttachmentLedgerTopic()()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  *(v0 + 16) = (*((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0x110))();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMR);
  v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<AttachmentLedgerTopic?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMR);
  MEMORY[0x1B2713ED0](v5, v6);

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<AttachmentLedgerTopic?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMR);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);

  return MEMORY[0x1EEE6D8C8](v0 + 24, v11, v7);
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
  }

  else
  {
    v3 = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 120) = *(v0 + 24);
  return MEMORY[0x1EEE6DFA0](closure #1 in LinkManager.fetchAttachmentLedgerTopic(), 0, 0);
}

{
  v1 = v0[15];
  if (v1 == 1)
  {
    v7 = v0[9];
    (*(v0[11] + 8))(v0[12], v0[10]);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v8 = v0[1];
  }

  else
  {
    if (!v1)
    {
      v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<AttachmentLedgerTopic?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMR);
      v3 = *(MEMORY[0x1E69E85A8] + 4);
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
      v5 = v0[12];
      v6 = v0[10];

      return MEMORY[0x1EEE6D8C8](v0 + 3, v6, v2);
    }

    v9 = v0[9];
    v10 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);
    *v10 = v1;

    v8 = v0[1];
  }

  return v8();
}

{
  *(v0 + 32) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t closure #1 in LinkManager.fetchAttachment(attachmentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for URL();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[30] = v11;
  v12 = *(v11 - 8);
  v4[31] = v12;
  v13 = *(v12 + 64) + 15;
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkManager.fetchAttachment(attachmentID:), 0, 0);
}

uint64_t closure #1 in LinkManager.fetchAttachment(attachmentID:)()
{
  v40 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = type metadata accessor for Logger();
  *(v0 + 264) = __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = *(v0 + 232);
    v8 = *(v0 + 240);
    v9 = *(v0 + 224);
    v36 = *(v0 + 216);
    v38 = v4;
    v10 = *(v0 + 168);
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v11 = 136315394;
    Attachment.id.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v5 + 8))(v6, v8);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v39);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v9 + 8))(v7, v36);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v39);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1AEE80000, v3, v38, "Received request to generate new AttachmentDownloadTask for attachment: %s with priority: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v37, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = *(v21 + 16);
  *(v0 + 272) = v26;
  *(v0 + 280) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v20, v24, v22);
  v27 = type metadata accessor for AssetManager();
  v28 = static AssetManager.shared.getter();
  *(v0 + 40) = v27;
  *(v0 + 48) = &protocol witness table for AssetManager;
  *(v0 + 16) = v28;
  *(v0 + 80) = type metadata accessor for AttachmentLedgerTopic(0);
  *(v0 + 88) = &protocol witness table for AttachmentLedgerTopic;
  *(v0 + 56) = v23;
  v29 = type metadata accessor for Attachment();
  *(v0 + 288) = v29;
  *(v0 + 120) = v29;
  *(v0 + 128) = &protocol witness table for Attachment;
  *(v0 + 96) = v25;
  v30 = type metadata accessor for AttachmentDownloadTask();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  *(v0 + 296) = v33;

  swift_defaultActor_initialize();
  *(v33 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler) = 0;
  outlined init with take of Transferable((v0 + 56), v33 + 112);
  outlined init with take of Transferable((v0 + 96), v33 + 152);
  (*(v21 + 32))(v33 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file, v20, v22);
  outlined init with take of Transferable((v0 + 16), v33 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager);
  v34 = swift_task_alloc();
  *(v0 + 304) = v34;
  *v34 = v0;
  v34[1] = closure #1 in LinkManager.fetchAttachment(attachmentID:);

  return AttachmentDownloadTask.start()();
}

{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = closure #1 in LinkManager.fetchAttachment(attachmentID:);
  }

  else
  {
    v3 = closure #1 in LinkManager.fetchAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[24];
  v8 = v0[22];
  v9 = v0[20];

  v3(v9, v8, v7);

  v10 = v0[1];

  return v10();
}

{
  v32 = v0;
  v1 = *(v0 + 312);
  *(v0 + 136) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && *(v0 + 320) == 1)
  {
    v3 = *(v0 + 296);

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 264);
    v7 = *(v0 + 168);

    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 312);
      v12 = *(v0 + 288);
      v13 = *(v0 + 168);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v14 = 136315394;
      *(v0 + 144) = v13;

      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v31);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v0 + 152) = v11;
      v19 = v11;
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v31);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1AEE80000, v9, v10, "Failed to download attachment %s, error: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v15, -1, -1);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    v23 = *(v0 + 312);
    v24 = *(v0 + 296);
    swift_willThrow();

    v25 = *(v0 + 312);
  }

  v26 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 208);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t LinkManager.fetchAttachment(attachmentID:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for LinkManager.Attachment(0);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for TaskPriority();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v5[22] = *(v13 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachment(attachmentID:generator:), 0, 0);
}

uint64_t LinkManager.fetchAttachment(attachmentID:generator:)()
{
  v122 = v0;
  v119 = *(v0[10] + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  [v119 lock];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, static Log.default);
  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v7 = v9;
  v9(v1, v4, v2);
  v118 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[21];
  if (v12)
  {
    v114 = v7;
    v16 = v0[19];
    v109 = v0[17];
    v110 = v0[18];
    v17 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v121[0] = v112;
    *v17 = 136315394;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    LODWORD(v108) = v11;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v8;
    v21 = v20;
    v116 = *(v15 + 8);
    v116(v13, v14);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, v121);
    v8 = v19;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = v16;
    v7 = v114;
    (*(v110 + 8))(v26, v109);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v121);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1AEE80000, v10, v108, "Received request to fetch attachment: %s with priority: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v112, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  else
  {

    v116 = *(v15 + 8);
    v28 = (v116)(v13, v14);
  }

  v29 = v0[10];
  v30 = v0[7];
  v31 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x130);
  v32 = (v31)(v28);
  v33 = swift_task_alloc();
  v33[2] = v30;
  v34 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:), v33, v32);
  v36 = v35;

  if (v36)
  {
    v7(v0[23], v0[7], v0[20]);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[23];
    v42 = v0[20];
    v43 = v0[21];
    if (v40)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v121[0] = v45;
      *v44 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v116(v41, v42);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v121);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1AEE80000, v38, v39, "Failed to find attachment with attachmentID %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B2715BA0](v45, -1, -1);
      MEMORY[0x1B2715BA0](v44, -1, -1);
    }

    else
    {

      v116(v41, v42);
    }

    [v119 unlock];
    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    swift_allocError();
    *v58 = 3;
    swift_willThrow();
    goto LABEL_15;
  }

  v50 = v0[10];
  v51 = (v31)(v37);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v34 >= *(v51 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v52 = v0[16];
  v54 = v0[12];
  v53 = v0[13];
  v55 = *(v53 + 80);
  v118 = (v55 + 32) & ~v55;
  v31 = *(v53 + 72) * v34;
  _s15GroupActivities11ParticipantVWOcTm_1(v51 + v118 + v31, v52, type metadata accessor for LinkManager.Attachment);

  v56 = *(v54 + 32);
  v57 = *(v52 + v56);
  if (v57 - 1 < 2)
  {
    v8 = 0;
    goto LABEL_22;
  }

  v8 = *(v52 + v56);
  if (v57)
  {
    goto LABEL_22;
  }

  v68 = v0[16];
  v69 = v68 + *(v0[12] + 24);
  if ((*(v69 + 16) & 1) == 0)
  {
    v95 = *(v52 + v56);
    v108 = *v69;
    v109 = *(v69 + 8);
    v117 = v0[24];
    v104 = v0[22];
    v113 = v0[21];
    v115 = v0[20];
    v71 = v0[17];
    v111 = v0[15];
    v96 = v0[16];
    v72 = v0[10];
    v106 = v72;
    v107 = v0[11];
    v105 = v0[9];
    v103 = v0[8];
    v97 = v0[7];
    v99 = v0[14];
    (*(v0[18] + 56))();
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s15GroupActivities11ParticipantVWOcTm_1(v96, v111, type metadata accessor for LinkManager.Attachment);
    v7(v117, v97, v115);
    v98 = (v55 + 56) & ~v55;
    v102 = (v98 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = (v102 + *(v113 + 80) + 8) & ~*(v113 + 80);
    v73 = swift_allocObject();
    *(v73 + 2) = 0;
    *(v73 + 3) = 0;
    *(v73 + 4) = v103;
    *(v73 + 5) = v105;
    *(v73 + 6) = v108;
    _s15GroupActivities11ParticipantVWObTm_2(v111, &v73[v98], type metadata accessor for LinkManager.Attachment);
    *&v73[v102] = v101;
    (*(v113 + 32))(&v73[v100], v117, v115);
    outlined copy of LinkManager.Attachment.Source(v108, v109, 0);
    outlined copy of LinkManager.Attachment.Source(v108, v109, 0);

    v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v107, &async function pointer to partial apply for closure #2 in LinkManager.fetchAttachment(attachmentID:generator:), v73);
    v29 = v0 + 2;
    *(v52 + v56) = v8;
    v74 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x140);

    v50 = v74(v0 + 2);
    v36 = v75;
    v33 = *v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v36 = v33;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_20:
      if (v34 >= v33[2])
      {
        __break(1u);
        return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_native, v77, v78, v79, v80);
      }

      outlined assign with copy of LinkManager.Attachment(v0[16], v33 + v118 + v31);
      v50(v29, 0);
      outlined consume of LinkManager.Attachment.Source(v108, v109, 0);
      v57 = v95;
LABEL_22:
      v0[26] = v8;
      outlined copy of LinkManager.Attachment.State(v57);
      [v119 unlock];
      if (!v8)
      {
        v83 = v0[24];
        v84 = v0[25];
        v85 = v0[23];
        v86 = v0[19];
        v88 = v0[15];
        v87 = v0[16];
        v89 = v0[12];
        v120 = v0[11];
        v90 = v0[6];
        v91 = *(v89 + 28);
        v92 = type metadata accessor for URL();
        (*(*(v92 - 8) + 16))(v90, v87 + v91, v92);
        v93 = *(v87 + *(v89 + 20));
        _s15GroupActivities11ParticipantVWOhTm_0(v87, type metadata accessor for LinkManager.Attachment);

        v67 = v0[1];
        v66.n128_u64[0] = v93;
        goto LABEL_27;
      }

      v81 = *(MEMORY[0x1E69E86A8] + 4);
      v82 = swift_task_alloc();
      v0[27] = v82;
      isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v82 = v0;
      v82[1] = LinkManager.fetchAttachment(attachmentID:generator:);
      v80 = MEMORY[0x1E69E7288];
      v78 = MEMORY[0x1E69E7CA8] + 8;
      v77 = v8;
      v79 = isUniquelyReferenced_nonNull_native;

      return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_native, v77, v78, v79, v80);
    }

LABEL_32:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
    v33 = isUniquelyReferenced_nonNull_native;
    *v36 = isUniquelyReferenced_nonNull_native;
    goto LABEL_20;
  }

  [v119 unlock];
  lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
  swift_allocError();
  *v70 = 4;
  swift_willThrow();
  _s15GroupActivities11ParticipantVWOhTm_0(v68, type metadata accessor for LinkManager.Attachment);
LABEL_15:
  v60 = v0[24];
  v59 = v0[25];
  v61 = v0[23];
  v62 = v0[19];
  v64 = v0[15];
  v63 = v0[16];
  v65 = v0[11];

  v67 = v0[1];
LABEL_27:

  return v67(v66);
}

{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = LinkManager.fetchAttachment(attachmentID:generator:);
  }

  else
  {
    v3 = LinkManager.fetchAttachment(attachmentID:generator:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[26];

  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v16 = v0[11];
  v9 = v0[6];
  v10 = *(v8 + 28);
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 16))(v9, v6 + v10, v11);
  v12 = *(v6 + *(v8 + 20));
  _s15GroupActivities11ParticipantVWOhTm_0(v6, type metadata accessor for LinkManager.Attachment);

  v13 = v0[1];
  v14.n128_u64[0] = v12;

  return v13(v14);
}

{
  v1 = v0[26];
  v2 = v0[16];

  _s15GroupActivities11ParticipantVWOhTm_0(v2, type metadata accessor for LinkManager.Attachment);
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for LinkManager.Attachment(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v28;
  v12 = type metadata accessor for LinkManager.Attachment(0);
  v8[11] = v12;
  v13 = *(v12 - 8);
  v8[12] = v13;
  v14 = *(v13 + 64) + 15;
  v8[13] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[14] = v15;
  v16 = *(v15 - 8);
  v8[15] = v16;
  v17 = *(v16 + 64) + 15;
  v8[16] = swift_task_alloc();
  v18 = type metadata accessor for URL();
  v8[17] = v18;
  v19 = *(v18 - 8);
  v8[18] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v8[19] = v21;
  v22 = *(v12 + 28);
  v26 = (a4 + *a4);
  v23 = a4[1];
  v24 = swift_task_alloc();
  v8[20] = v24;
  *v24 = v8;
  v24[1] = closure #2 in LinkManager.fetchAttachment(attachmentID:generator:);

  return v26(v21, a6, a7 + v22);
}

uint64_t closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = closure #2 in LinkManager.fetchAttachment(attachmentID:generator:);
  }

  else
  {
    v3 = closure #2 in LinkManager.fetchAttachment(attachmentID:generator:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v54 = v0;
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[21];
    v5 = v0[10];
    v6 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
    v7 = [*(Strong + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock) lock];
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*MEMORY[0x1E69E7D40] & *v3) + 304;
    v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x130);
    v11 = (v10)(v7);
    v12 = swift_task_alloc();
    *(v12 + 16) = v5;
    v13 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #2 in LinkManager.fetchAttachment(attachmentID:generator:), v12, v11);
    v15 = v14;

    if (v15)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v18 = v0[15];
      v17 = v0[16];
      v19 = v0[14];
      v20 = v0[10];
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.default);
      (*(v18 + 16))(v17, v20, v19);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v24 = os_log_type_enabled(v22, v23);
      v26 = v0[15];
      v25 = v0[16];
      v27 = v0[14];
      if (v24)
      {
        v28 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v52;
        *v28 = 136315138;
        lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v23;
        v30 = v6;
        v32 = v31;
        (*(v26 + 8))(v25, v27);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &v53);
        v6 = v30;

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1AEE80000, v22, v50, "Failed to find attachment with attachmentID %s when trying to update the state", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1B2715BA0](v52, -1, -1);
        MEMORY[0x1B2715BA0](v28, -1, -1);
      }

      else
      {

        (*(v26 + 8))(v25, v27);
      }

LABEL_14:
      v44 = v0[18];
      v43 = v0[19];
      v45 = v0[17];
      [*(v3 + v6) unlock];
      (*(v44 + 8))(v43, v45);

      goto LABEL_15;
    }

    v34 = v3;
    v35 = (v10)(v16);
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *(v35 + 16))
    {
      v51 = v6;
      v12 = (v0 + 2);
      v36 = v0[12];
      v37 = v0[13];
      v38 = v0[11];
      v9 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v10 = *(v36 + 72) * v13;
      _s15GroupActivities11ParticipantVWOcTm_1(v35 + v9 + v10, v37, type metadata accessor for LinkManager.Attachment);

      v39 = *(v38 + 32);
      outlined consume of LinkManager.Attachment.State(*(v37 + v39));
      *(v37 + v39) = 2;
      v34 = (*((*v8 & *v3) + 0x140))(v0 + 2);
      v8 = v40;
      v15 = *v40;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v15;
      if (result)
      {
LABEL_11:
        v6 = v51;
        if (v13 >= v15[2])
        {
          __break(1u);
          return result;
        }

        v42 = v0[13];
        outlined assign with copy of LinkManager.Attachment(v42, v15 + v9 + v10);
        v34(v12, 0);
        _s15GroupActivities11ParticipantVWOhTm_0(v42, type metadata accessor for LinkManager.Attachment);
        goto LABEL_14;
      }

LABEL_20:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v15 = result;
      *v8 = result;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_20;
  }

  (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_15:
  v46 = v0[19];
  v47 = v0[16];
  v48 = v0[13];

  v49 = v0[1];

  return v49();
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t closure #1 in LinkManager.fetchAttachmentMetadata(attachmentID:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v57 = a3;
  v4 = type metadata accessor for TaskPriority();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v64 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - v13;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Log.default);
  v60 = v9[2];
  v61 = v9 + 2;
  v60(v14, a1, v8);
  v62 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v65 = v9;
  v63 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v56 = a1;
    v21 = v20;
    v55 = swift_slowAlloc();
    v67 = v55;
    *v21 = 136315394;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v9;
    v25 = v24;
    v59 = v23[1];
    v59(v14, v8);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v25, &v67);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v58 + 8))(v7, v4);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v67);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_1AEE80000, v17, v18, "Received request to fetch attachmentMetadata: %s with priority: %s", v21, 0x16u);
    v31 = v55;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v31, -1, -1);
    v32 = v21;
    a1 = v56;
    MEMORY[0x1B2715BA0](v32, -1, -1);
  }

  else
  {

    v59 = v9[1];
    v33 = (v59)(v14, v8);
  }

  v34 = *((*MEMORY[0x1E69E7D40] & *v66) + 0x130);
  v35 = v34(v33);
  MEMORY[0x1EEE9AC00](v35);
  *(&v54 - 2) = a1;
  v36 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #2 in LinkManager.fetchAttachment(attachmentID:generator:), (&v54 - 4), v35);
  v38 = v37;

  if (v38)
  {
    v40 = v63;
    v41 = v64;
    v60(v64, a1, v63);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v67 = v45;
      *v44 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v59(v41, v40);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v67);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1AEE80000, v42, v43, "Failed to find attachment with attachmentID %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B2715BA0](v45, -1, -1);
      MEMORY[0x1B2715BA0](v44, -1, -1);
    }

    else
    {

      v59(v41, v40);
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    swift_allocError();
    *v53 = 3;
    return swift_willThrow();
  }

  else
  {
    result = v34(v39);
    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v51 = result;
      if (v36 < *(result + 16))
      {
        v52 = *(type metadata accessor for LinkManager.Attachment(0) - 8);
        _s15GroupActivities11ParticipantVWOcTm_1(v51 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v36, v57, type metadata accessor for LinkManager.Attachment);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t LinkManager.Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LinkManager.Attachment.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LinkManager.Attachment.sentTime.setter(double a1)
{
  result = type metadata accessor for LinkManager.Attachment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t LinkManager.Attachment.source.getter()
{
  v1 = v0 + *(type metadata accessor for LinkManager.Attachment(0) + 24);
  v2 = *v1;
  outlined copy of LinkManager.Attachment.Source(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t LinkManager.Attachment.source.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for LinkManager.Attachment(0) + 24);
  result = outlined consume of LinkManager.Attachment.Source(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t LinkManager.Attachment.file.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) + 28);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LinkManager.Attachment.file.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) + 28);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t LinkManager.Attachment.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkManager.Attachment(0) + 32));
  outlined copy of LinkManager.Attachment.State(v1);
  return v1;
}

unint64_t LinkManager.Attachment.state.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) + 32);
  result = outlined consume of LinkManager.Attachment.State(*(v1 + v3));
  *(v1 + v3) = a1;
  return result;
}

uint64_t LinkManager.messageReceived(messenger:message:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (result)
  {
    v2 = result;
    v3 = UnreliableMessenger.Message.data.getter();
    v5 = v4;
    v6 = UnreliableMessenger.Message.fromParticipantID.getter();
    v7 = 1;
    v2(v3, v5, v6, &v7);
    outlined consume of Data._Representation(v3, v5);
    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2);
  }

  return result;
}

void LinkManager.messengerClosed(_:reason:)()
{
  if (static UnreliableMessenger.ClosedReason.== infix(_:_:)() & 1) != 0 || (static UnreliableMessenger.ClosedReason.== infix(_:_:)())
  {
    v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E0))();
    if (v1)
    {
      v2 = v1;
      lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
      v3 = swift_allocError();
      *v4 = 2;
      v2();
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2);
    }
  }
}

uint64_t protocol witness for UnreliableMessengerDelegate.messageReceived(messenger:message:) in conformance LinkManager()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (result)
  {
    v2 = result;
    v3 = UnreliableMessenger.Message.data.getter();
    v5 = v4;
    v6 = UnreliableMessenger.Message.fromParticipantID.getter();
    v7 = 1;
    v2(v3, v5, v6, &v7);
    outlined consume of Data._Representation(v3, v5);
    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2);
  }

  return result;
}

void protocol witness for UnreliableMessengerDelegate.messengerClosed(_:reason:) in conformance LinkManager()
{
  if (static UnreliableMessenger.ClosedReason.== infix(_:_:)() & 1) != 0 || (static UnreliableMessenger.ClosedReason.== infix(_:_:)())
  {
    v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E0))();
    if (v1)
    {
      v2 = v1;
      lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
      v3 = swift_allocError();
      *v4 = 2;
      v2();
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2);
    }
  }
}

uint64_t LinkManager.isResumed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager_state);
  [v1 unlock];
  return v2;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for CodingUserInfoKey();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    outlined init with take of Any((*(v11 + 56) + 32 * v8), a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    outlined init with take of GroupSessionTable.Storage(*(v11 + 56) + 24 * v8, a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1AF00EBD0;
    *(a2 + 16) = 0;
  }

  return result;
}

unint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 16 * v9;
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v14) = *(v14 + 9);
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 9) = v14;
    result = specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 1280;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v21 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v21;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    a3(*(v18 + 56) + 40 * v15, a6);
    a4(v15, v18);
    *v10 = v18;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError()
{
  result = lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError;
  if (!lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError;
  if (!lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors()
{
  result = lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors;
  if (!lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors;
  if (!lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LinkManager and conformance LinkManager(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in LinkManager.fetchAttachmentLedgerTopic()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in LinkManager.fetchAttachmentLedgerTopic()(a1, v4, v5, v6);
}

uint64_t _s15GroupActivities11ParticipantVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v56 = a4;
  v57 = a5;
  v54 = a2;
  v55 = a3;
  v50 = a1;
  v8 = type metadata accessor for Asset.Protector();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SymmetricKeySize();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SymmetricKey();
  v48 = *(v44 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  v46 = *(v43 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v38 - v17;
  v63 = type metadata accessor for AssetManager();
  v64 = &protocol witness table for AssetManager;
  *&v62 = a6;
  swift_defaultActor_initialize();
  v42 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMR);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMR) - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v40 = 8 * *(v18 + 72);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1AF014AC0;
  LOBYTE(v58) = 0;
  v61 = 1;
  v60 = 0;
  lazy protocol witness table accessor for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State();
  lazy protocol witness table accessor for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 1;
  v61 = 2;
  v60 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 2;
  v61 = 5;
  v60 = 3;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 2;
  v61 = 2;
  v60 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 2;
  v61 = 2;
  v60 = 7;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 2;
  v61 = 5;
  v60 = 5;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 3;
  v61 = 3;
  v60 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 2;
  v61 = 3;
  v20 = v39;
  v60 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 1;
  v61 = 5;
  v60 = 1;
  v21 = v43;
  v22 = v44;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v58) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMR);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v20 + v42) = StateMachine.init(initialState:transitions:)();
  *(v20 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask) = 0;
  *(v20 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler) = 0;
  v26 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  LOBYTE(v58) = 0;
  v27 = v45;
  Published.init(initialValue:)();
  (*(v46 + 32))(v20 + v26, v27, v21);
  *(v20 + 112) = v50;

  static SymmetricKeySize.bits256.getter();
  v28 = v47;
  SymmetricKey.init(size:)();
  v29 = v48 + 16;
  (*(v48 + 16))(v20 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key, v28, v22);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  outlined copy of Data._Representation(v58, v59);
  v30 = v51;
  Asset.Protector.init(securityKey:privacyKey:)();
  (*(v29 - 8))(v28, v22);
  (*(v52 + 32))(v20 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector, v30, v53);
  outlined init with take of Transferable(&v62, v20 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager);
  v31 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file;
  v32 = type metadata accessor for URL();
  (*(*(v32 - 8) + 32))(v20 + v31, v54, v32);
  v33 = (v20 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  v34 = v56;
  *v33 = v55;
  v33[1] = v34;
  v35 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v36 = type metadata accessor for UUID();
  (*(*(v36 - 8) + 32))(v20 + v35, v57, v36);
  return v20;
}

uint64_t _s15GroupActivities11ParticipantVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in LinkManager.fetchAttachment(attachmentID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in LinkManager.fetchAttachment(attachmentID:)(a1, a2, a3, v3);
}

uint64_t _s15GroupActivities11ParticipantVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of LinkManager.Attachment.Source(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return outlined copy of Data?(a1, a2);
  }

  else
  {
  }
}

uint64_t outlined consume of LinkManager.Attachment.Source(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return outlined consume of Data?(a1, a2);
  }

  else
  {
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t outlined copy of LinkManager.Attachment.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(type metadata accessor for UUID() - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + v5);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)(a1, v7, v8, v9, v10, v11, v1 + v4, v12);
}

uint64_t outlined assign with copy of LinkManager.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkManager.Attachment(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t outlined consume of LinkManager.Attachment.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void type metadata completion function for LinkManager()
{
  type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<AttachmentLedgerTopic?>, &_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<[LinkManager.Attachment]>, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for UUID();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Participant();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LinkManager.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkManager.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for LinkManager.Attachment()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkManager.Attachment.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for LinkManager.Attachment.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities11LinkManagerC10AttachmentV5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for LinkManager.Attachment.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkManager.Attachment.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkManager.State and conformance LinkManager.State()
{
  result = lazy protocol witness table cache variable for type LinkManager.State and conformance LinkManager.State;
  if (!lazy protocol witness table cache variable for type LinkManager.State and conformance LinkManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.State and conformance LinkManager.State);
  }

  return result;
}

uint64_t _sytIegr_Ieg_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed SendReliability) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8 = a3;
  return v5(v9, &v8, a4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64, @in_guaranteed SendReliability) -> ()(void *a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, a1[1], *a2, a3);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B2714600](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1B2714600](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities11ParticipantV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = *(a1 + 16);
  v13 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
  v14 = MEMORY[0x1B2714600](v12, v2, v13);
  v40 = v12;
  if (v12)
  {
    v15 = 0;
    v16 = *(v3 + 80);
    v17 = *(v3 + 72);
    v38 = v17;
    v39 = a1 + ((v16 + 32) & ~v16);
    while (1)
    {
      _s15GroupActivities11ParticipantVWOcTm_1(v39 + v17 * v15, v11, type metadata accessor for Participant);
      v18 = *(v14 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v19 = &v11[v2[5]];
      v20 = *v19;
      v21 = *(v19 + 1);
      String.hash(into:)();
      v46 = *&v11[v2[6]];
      MEMORY[0x1B2715070]();
      v22 = &v11[v2[7]];
      v24 = *v22;
      v23 = *(v22 + 1);
      v42 = v15;
      v44 = v24;
      v45 = v23;
      if (v23)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v43 = v11[v2[8]];
      Hasher._combine(_:)(v43);
      v41 = v11[v2[9]];
      Hasher._combine(_:)(v41);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v14 + 32);
      v27 = v25 & ~v26;
      v17 = v38;
      if ((*(v14 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        break;
      }

LABEL_27:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v37;
      _s15GroupActivities11ParticipantVWOcTm_1(v11, v37, type metadata accessor for Participant);
      v47 = v14;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v35, v27, isUniquelyReferenced_nonNull_native);
      v14 = v47;
LABEL_28:
      v15 = v42 + 1;
      _s15GroupActivities11ParticipantVWOhTm_0(v11, type metadata accessor for Participant);
      if (v15 == v40)
      {
        return v14;
      }
    }

    v28 = ~v26;
    while (1)
    {
      _s15GroupActivities11ParticipantVWOcTm_1(*(v14 + 48) + v27 * v17, v7, type metadata accessor for Participant);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_9;
      }

      v29 = &v7[v2[5]];
      v30 = *v29 == v20 && *(v29 + 1) == v21;
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v7[v2[6]] != v46)
      {
        goto LABEL_9;
      }

      v31 = &v7[v2[7]];
      v32 = *(v31 + 1);
      if (v32)
      {
        if (!v45)
        {
          goto LABEL_9;
        }

        v33 = *v31 == v44 && v32 == v45;
        if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v45)
      {
        goto LABEL_9;
      }

      if (v43 == v7[v2[8]] && v41 == v7[v2[9]])
      {
        _s15GroupActivities11ParticipantVWOhTm_0(v7, type metadata accessor for Participant);
        goto LABEL_28;
      }

LABEL_9:
      _s15GroupActivities11ParticipantVWOhTm_0(v7, type metadata accessor for Participant);
      v27 = (v27 + 1) & v28;
      if (((*(v14 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  return v14;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo13CPParticipantC_SayAEGTt0g5Tf4g_nTm(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v12 = type metadata accessor for OS_dispatch_queue(0, a2, a3);
    v13 = lazy protocol witness table accessor for type CPParticipant and conformance NSObject(a4, a2, a3);
    result = MEMORY[0x1B2714600](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1B2714B30](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = __CocoaSet.count.getter();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
  result = MEMORY[0x1B2714600](v2, &type metadata for AddressableMember, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      specialized Set._Variant.insert(_:)(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities19PresenceSessionInfoV11ParticipantV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type PresenceSessionInfo.Participant and conformance PresenceSessionInfo.Participant, type metadata accessor for PresenceSessionInfo.Participant);
  result = MEMORY[0x1B2714600](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      _s15GroupActivities11ParticipantVWOcTm_1(v13, v7, type metadata accessor for PresenceSessionInfo.Participant);
      specialized Set._Variant.insert(_:)(v9, v7);
      _s15GroupActivities11ParticipantVWOhTm_0(v9, type metadata accessor for PresenceSessionInfo.Participant);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  result = MEMORY[0x1B2714600](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CPParticipant and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_dispatch_queue(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State()
{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event()
{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event);
  }

  return result;
}

uint64_t outlined init with take of (key: UInt64, value: PubSubTopic.Participant)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMd, &_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AttachmentUploadTask.__allocating_init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  v16 = swift_allocObject();
  v17 = a6[3];
  v18 = a6[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  v20 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(a1, a2, a3, a4, a5, v22, v16, v17, v18);

  __swift_destroy_boxed_opaque_existential_0(a6);
  return v24;
}

Swift::Int AttachmentUploadTask.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

Swift::Int AttachmentUploadTask.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AttachmentUploadTask.developerMetadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata + 8));
  return v1;
}

uint64_t AttachmentUploadTask.file.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path getter for AttachmentUploadTask.protector : AttachmentUploadTask@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  v5 = type metadata accessor for Asset.Protector();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for AttachmentUploadTask.protector : AttachmentUploadTask(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Asset.Protector();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t AttachmentUploadTask.protector.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  v4 = type metadata accessor for Asset.Protector();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t AttachmentUploadTask.protector.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  v4 = type metadata accessor for Asset.Protector();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for AttachmentUploadTask.assetManager : AttachmentUploadTask(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of Transferable(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + v4));
  outlined init with take of Transferable(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t AttachmentUploadTask.assetManager.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  return outlined init with copy of Transferable(v1 + v3, a1);
}

uint64_t AttachmentUploadTask.assetManager.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of Transferable(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for AttachmentUploadTask.topicUploadTask : AttachmentUploadTask(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t AttachmentUploadTask.topicUploadTask.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t key path getter for AttachmentUploadTask.state : AttachmentUploadTask@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for AttachmentUploadTask.state : AttachmentUploadTask(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t AttachmentUploadTask.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AttachmentUploadTask.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*AttachmentUploadTask.state.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CKShareGroupSessionProvider.share.modify;
}

uint64_t key path getter for AttachmentUploadTask.$state : AttachmentUploadTask(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for AttachmentUploadTask.$state : AttachmentUploadTask(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t AttachmentUploadTask.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AttachmentUploadTask.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AttachmentUploadTask.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SystemCoordinatorHostManager.$configurations.modify;
}

uint64_t AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(a1, a2, a3, a4, a5, v18, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_0(a6);
  return v20;
}

uint64_t AttachmentUploadTask.start()()
{
  v1[54] = v0;
  v2 = type metadata accessor for SimultaneousTransferError();
  v1[55] = v2;
  v3 = *(v2 - 8);
  v1[56] = v3;
  v4 = *(v3 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v5 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v1[59] = v5;
  v6 = *(v5 - 8);
  v1[60] = v6;
  v7 = *(v6 + 64) + 15;
  v1[61] = swift_task_alloc();
  v8 = type metadata accessor for Asset();
  v1[62] = v8;
  v9 = *(v8 - 8);
  v1[63] = v9;
  v10 = *(v9 + 64) + 15;
  v1[64] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[65] = swift_task_alloc();
  v12 = type metadata accessor for Asset.ID();
  v1[66] = v12;
  v13 = *(v12 - 8);
  v1[67] = v13;
  v14 = *(v13 + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v15 = type metadata accessor for SymmetricKey();
  v1[71] = v15;
  v16 = *(v15 - 8);
  v1[72] = v16;
  v17 = *(v16 + 64) + 15;
  v1[73] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v1[74] = v18;
  v19 = *(v18 - 8);
  v1[75] = v19;
  v20 = *(v19 + 64) + 15;
  v1[76] = swift_task_alloc();
  v21 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v1[77] = v21;
  v22 = *(v21 - 8);
  v1[78] = v22;
  v1[79] = *(v22 + 64);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR) - 8) + 64) + 15;
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v24 = type metadata accessor for AssetSkeleton();
  v1[84] = v24;
  v25 = *(v24 - 8);
  v1[85] = v25;
  v26 = *(v25 + 64) + 15;
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v27 = type metadata accessor for UploadToken();
  v1[90] = v27;
  v28 = *(v27 - 8);
  v1[91] = v28;
  v29 = *(v28 + 64) + 15;
  v1[92] = swift_task_alloc();
  v30 = type metadata accessor for TaskPriority();
  v1[93] = v30;
  v31 = *(v30 - 8);
  v1[94] = v31;
  v32 = *(v31 + 64) + 15;
  v1[95] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.start(), v0, 0);
}

{
  v23 = v0;
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v1 = v0[54];
  v2 = type metadata accessor for Logger();
  v0[96] = __swift_project_value_buffer(v2, static Log.uploadTask);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[95];
    v6 = v0[94];
    v7 = v0[93];
    v8 = v0[54];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = AttachmentUploadTask.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v6 + 8))(v5, v7);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Received request to start with priority: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = swift_task_alloc();
  v0[97] = v18;
  *v18 = v0;
  v18[1] = AttachmentUploadTask.start();
  v19 = v0[92];
  v20 = v0[54];

  return AttachmentUploadTask.requestUploadToken()(v19);
}

{
  v2 = *(*v1 + 776);
  v3 = *v1;
  v3[98] = v0;

  if (v0)
  {
    v4 = v3[54];

    return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.start(), v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[99] = v5;
    *v5 = v3;
    v5[1] = AttachmentUploadTask.start();
    v6 = v3[92];
    v7 = v3[54];

    return AttachmentUploadTask.createAssetUploadCoordinator(_:)((v3 + 7), v6);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = AttachmentUploadTask.start();
  }

  else
  {
    v6 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 432);
  outlined init with take of Transferable((v0 + 56), v0 + 16);
  outlined init with copy of Transferable(v0 + 16, v0 + 96);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 432);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315394;
    v8 = AttachmentUploadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v23);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    outlined init with copy of Transferable(v0 + 96, v0 + 176);
    outlined init with copy of URL?(v0 + 176, v0 + 216, &_s15GroupActivities22AssetUploadCoordinator_pSgMd, &_s15GroupActivities22AssetUploadCoordinator_pSgMR);
    if (*(v0 + 240))
    {
      outlined init with take of Transferable((v0 + 216), v0 + 256);
      outlined init with copy of Transferable(v0 + 256, v0 + 296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities22AssetUploadCoordinator_pMd, &_s15GroupActivities22AssetUploadCoordinator_pMR);
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    outlined destroy of NSObject?(v0 + 176, &_s15GroupActivities22AssetUploadCoordinator_pSgMd, &_s15GroupActivities22AssetUploadCoordinator_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v23);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Attempting to fetch skeleton from coordinator %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
  v17 = *(v16 + 8);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 808) = v19;
  *v19 = v0;
  v19[1] = AttachmentUploadTask.start();
  v20 = *(v0 + 712);

  return v22(v20, v15, v16);
}

{
  v1 = *(*v0 + 808);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.start(), v2, 0);
}

{
  v132 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 432);
  v3 = *(*(v0 + 680) + 16);
  v3(*(v0 + 704), *(v0 + 712), *(v0 + 672));

  v4 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.default.getter();

  v127 = v1;
  v5 = os_log_type_enabled(v4, v1);
  v6 = *(v0 + 704);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  if (v5)
  {
    v124 = v4;
    v9 = *(v0 + 664);
    v114 = *(v0 + 656);
    v10 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v131[0] = v119;
    *v11 = 136315394;
    v12 = AttachmentUploadTask.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v131);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v3(v9, v6, v8);
    (*(v7 + 56))(v9, 0, 1, v8);
    outlined init with copy of URL?(v9, v114, &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    if ((*(v7 + 48))(v114, 1, v8) == 1)
    {
      v15 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      v17 = *(v0 + 696);
      v18 = *(v0 + 688);
      v19 = *(v0 + 680);
      v20 = *(v0 + 672);
      (*(v19 + 32))(v17, *(v0 + 656), v20);
      v3(v18, v17, v20);
      v16 = String.init<A>(reflecting:)();
      v15 = v21;
      (*(v19 + 8))(v17, v20);
    }

    v22 = *(v0 + 704);
    v23 = *(v0 + 680);
    v24 = *(v0 + 672);
    outlined destroy of NSObject?(*(v0 + 664), &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    v111 = *(v23 + 8);
    v111(v22, v24);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v131);

    *(v11 + 14) = v25;
    _os_log_impl(&dword_1AEE80000, v124, v127, "%s Fetched skeleton: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v119, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  else
  {

    v111 = *(v7 + 8);
    v111(v6, v8);
  }

  v125 = *(v0 + 800);
  v128 = *(v0 + 712);
  v26 = *(v0 + 608);
  v27 = *(v0 + 600);
  v28 = *(v0 + 592);
  v115 = *(v0 + 584);
  v120 = *(v0 + 672);
  v29 = *(v0 + 576);
  v30 = *(v0 + 568);
  v31 = *(v0 + 432);
  v32 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  *(v0 + 816) = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v33 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key;
  v106 = *(v31 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata + 8);
  v108 = *(v31 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  v34 = type metadata accessor for JSONEncoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  (*(v27 + 16))(v26, v31 + v32, v28);
  (*(v29 + 16))(v115, v31 + v33, v30);
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AssetSkeleton and conformance AssetSkeleton, MEMORY[0x1E6994708]);
  v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v125)
  {
    v121 = *(v0 + 736);
    v39 = *(v0 + 728);
    v116 = *(v0 + 720);
    v109 = *(v0 + 712);
    v40 = *(v0 + 680);
    v41 = *(v0 + 672);
    v42 = *(v0 + 608);
    v43 = *(v0 + 600);
    v44 = *(v0 + 592);
    v45 = *(v0 + 584);
    v46 = *(v0 + 576);
    v47 = *(v0 + 568);

    (*(v46 + 8))(v45, v47);
    (*(v43 + 8))(v42, v44);
    v111(v109, v41);
    (*(v39 + 8))(v121, v116);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v48 = *(v0 + 760);
    v49 = *(v0 + 736);
    v50 = *(v0 + 712);
    v51 = *(v0 + 704);
    v52 = *(v0 + 696);
    v53 = *(v0 + 688);
    v54 = *(v0 + 664);
    v55 = *(v0 + 656);
    v56 = *(v0 + 648);
    v57 = *(v0 + 640);
    v98 = *(v0 + 608);
    v100 = *(v0 + 584);
    v102 = *(v0 + 560);
    v104 = *(v0 + 552);
    v107 = *(v0 + 544);
    v110 = *(v0 + 520);
    v112 = *(v0 + 512);
    v117 = *(v0 + 488);
    v122 = *(v0 + 464);
    v129 = *(v0 + 456);

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    v103 = *(v0 + 752);
    v105 = *(v0 + 744);
    v60 = *(v0 + 648);
    v113 = *(v0 + 640);
    v126 = *(v0 + 632);
    v118 = *(v0 + 624);
    v61 = *(v0 + 616);
    v94 = *(v0 + 608);
    v91 = *(v0 + 600);
    v92 = *(v0 + 592);
    v96 = *(v0 + 576);
    v97 = *(v0 + 568);
    v99 = *(v0 + 584);
    v62 = *(v0 + 560);
    v63 = *(v0 + 552);
    v89 = *(v0 + 544);
    v64 = *(v0 + 536);
    v65 = *(v0 + 528);
    v101 = *(v0 + 520);
    v123 = *(v0 + 432);
    v95 = v38;
    v93 = v37;
    AssetSkeleton.assetID.getter();
    v66 = v60 + v61[8];
    Asset.ID.storageLocation.getter();
    v67 = *(v64 + 8);
    v67(v62, v65);
    AssetSkeleton.assetID.getter();
    v68 = Asset.ID.signature.getter();
    v90 = v69;
    v67(v63, v65);
    AssetSkeleton.assetID.getter();
    v70 = Asset.ID.referenceSignature.getter();
    v72 = v71;

    v67(v89, v65);
    (*(v91 + 32))(v60, v94, v92);
    (*(v96 + 32))(v60 + v61[5], v99, v97);
    v73 = (v60 + v61[6]);
    *v73 = v93;
    v73[1] = v95;
    v74 = (v60 + v61[7]);
    *v74 = v108;
    v74[1] = v106;
    v75 = (v60 + v61[9]);
    *v75 = v68;
    v75[1] = v90;
    v76 = (v60 + v61[10]);
    *v76 = v70;
    v76[1] = v72;
    (*(v103 + 56))(v101, 1, 1, v105);
    outlined init with copy of AttachmentLedgerTopic.UploadRequest(v60, v113);
    outlined init with copy of Transferable(v0 + 16, v0 + 136);
    v77 = lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AttachmentUploadTask and conformance AttachmentUploadTask, type metadata accessor for AttachmentUploadTask);
    v78 = (*(v118 + 80) + 40) & ~*(v118 + 80);
    v79 = swift_allocObject();
    v79[2] = v123;
    v79[3] = v77;
    v79[4] = v123;
    outlined init with take of AttachmentLedgerTopic.UploadRequest(v113, v79 + v78);
    outlined init with take of Transferable((v0 + 136), v79 + ((v126 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
    swift_retain_n();
    outlined copy of Data?(v108, v106);
    v80 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v101, &async function pointer to partial apply for closure #1 in AttachmentUploadTask.start(), v79);
    v81 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask;
    *(v0 + 824) = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask;
    swift_beginAccess();
    v82 = *(v123 + v81);
    *(v123 + v81) = v80;

    v83 = *(v0 + 40);
    v84 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v83);
    v85 = *(v84 + 24);
    v130 = (v85 + *v85);
    v86 = v85[1];
    v87 = swift_task_alloc();
    *(v0 + 832) = v87;
    *v87 = v0;
    v87[1] = AttachmentUploadTask.start();
    v88 = *(v0 + 512);

    return (v130)(v88, v83, v84);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v8 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v4 = v2[54];
    v5 = AttachmentUploadTask.start();
  }

  else
  {
    v6 = v2[54];
    (*(v2[63] + 8))(v2[64], v2[62]);
    v5 = AttachmentUploadTask.start();
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v91 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 432);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 432);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v90[0] = v7;
    *v6 = 136315138;
    v8 = AttachmentUploadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v90);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s finished upload", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = *(*(v0 + 432) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  *(v0 + 937) = 4;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v12 = *(v0 + 432);
    v13 = *(v12 + *(v0 + 824));
    *(v0 + 848) = v13;
    if (v13)
    {
      v14 = *(MEMORY[0x1E69E86A8] + 4);

      v15 = swift_task_alloc();
      *(v0 + 856) = v15;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v15 = v0;
      v15[1] = AttachmentUploadTask.start();
      v17 = MEMORY[0x1E69E7288];
      v18 = MEMORY[0x1E69E7CA8] + 8;
LABEL_12:

      return MEMORY[0x1EEE6DA10](v16, v13, v18, v16, v17);
    }

    v64 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    v65 = *(v12 + v64);
    if (v65)
    {

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v65, MEMORY[0x1E69E7CA8] + 8, v66, MEMORY[0x1E69E7288]);
    }

    v67 = *(v0 + 816);
    v68 = *(v0 + 432);
    v69 = *(v68 + 112);
    (*(*(v0 + 480) + 104))(*(v0 + 488), *MEMORY[0x1E69974A0], *(v0 + 472));
    v70 = swift_task_alloc();
    *(v0 + 872) = v70;
    *v70 = v0;
    v70[1] = AttachmentUploadTask.start();
    v71 = *(v0 + 488);

    return AttachmentLedgerTopic.updateProgress(on:with:)(v68 + v67, v71);
  }

  else
  {
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    *(v0 + 888) = v19;
    v21 = *(v0 + 768);
    v22 = *(v0 + 432);

    v23 = v19;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 432);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v90[0] = v28;
      *v27 = 136315394;
      v29 = AttachmentUploadTask.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v90);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v0 + 424) = v19;
      v32 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v90);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1AEE80000, v24, v25, "%s Failed to upload, reason: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v28, -1, -1);
      MEMORY[0x1B2715BA0](v27, -1, -1);
    }

    v36 = *(*(v0 + 432) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
    *(v0 + 936) = 5;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      v37 = *(v0 + 824);
      v38 = *(v0 + 432);
      v39 = *(v38 + v37);
      v40 = MEMORY[0x1E69E7CA8];
      if (v39)
      {
        v41 = *(v38 + v37);

        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        MEMORY[0x1B27144E0](v39, v40 + 8, v42, MEMORY[0x1E69E7288]);

        v13 = *(v38 + v37);
        *(v0 + 896) = v13;
        if (v13)
        {
          v43 = *(MEMORY[0x1E69E86A8] + 4);

          v44 = swift_task_alloc();
          *(v0 + 904) = v44;
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          *v44 = v0;
          v44[1] = AttachmentUploadTask.start();
          v17 = MEMORY[0x1E69E7288];
          v18 = v40 + 8;
          goto LABEL_12;
        }

        v38 = *(v0 + 432);
      }

      v72 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
      swift_beginAccess();
      v73 = *(v38 + v72);
      if (v73)
      {

        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        MEMORY[0x1B27144E0](v73, v40 + 8, v74, MEMORY[0x1E69E7288]);
      }

      v75 = *(v0 + 816);
      v76 = *(v0 + 432);
      v77 = *(v76 + 112);
      v78 = swift_task_alloc();
      *(v0 + 920) = v78;
      *v78 = v0;
      v78[1] = AttachmentUploadTask.start();

      return AttachmentLedgerTopic.remove(id:)(v76 + v75);
    }

    else
    {
      v45 = *(v0 + 736);
      v46 = *(v0 + 728);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 680);
      v50 = *(v0 + 672);
      v51 = *(v0 + 648);
      swift_allocError();
      *v52 = 0;
      swift_willThrow();

      outlined destroy of AttachmentLedgerTopic.UploadRequest(v51);
      (*(v49 + 8))(v48, v50);
      (*(v46 + 8))(v45, v47);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v53 = *(v0 + 760);
      v54 = *(v0 + 736);
      v55 = *(v0 + 712);
      v56 = *(v0 + 704);
      v57 = *(v0 + 696);
      v58 = *(v0 + 688);
      v59 = *(v0 + 664);
      v60 = *(v0 + 656);
      v61 = *(v0 + 648);
      v62 = *(v0 + 640);
      v80 = *(v0 + 608);
      v81 = *(v0 + 584);
      v82 = *(v0 + 560);
      v83 = *(v0 + 552);
      v84 = *(v0 + 544);
      v85 = *(v0 + 520);
      v86 = *(v0 + 512);
      v87 = *(v0 + 488);
      v88 = *(v0 + 464);
      v89 = *(v0 + 456);

      v63 = *(v0 + 8);

      return v63();
    }
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v9 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = *(v2 + 848);
    v5 = *(v2 + 432);

    v6 = AttachmentUploadTask.start();
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 432);
    v6 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

{
  v1 = v0[106];

  v2 = v0[54];
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B27144E0](v4, MEMORY[0x1E69E7CA8] + 8, v5, MEMORY[0x1E69E7288]);
  }

  v6 = v0[102];
  v7 = v0[54];
  v8 = *(v7 + 112);
  (*(v0[60] + 104))(v0[61], *MEMORY[0x1E69974A0], v0[59]);
  v9 = swift_task_alloc();
  v0[109] = v9;
  *v9 = v0;
  v9[1] = AttachmentUploadTask.start();
  v10 = v0[61];

  return AttachmentLedgerTopic.updateProgress(on:with:)(v7 + v6, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(*v1 + 880) = v0;

  v5 = v2[61];
  v6 = v2[60];
  v7 = v2[59];
  v8 = v2[54];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = AttachmentUploadTask.start();
  }

  else
  {
    v9 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[85];
  v6 = v0[84];
  outlined destroy of AttachmentLedgerTopic.UploadRequest(v0[81]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[95];
  v8 = v0[92];
  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[87];
  v12 = v0[86];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v18 = v0[80];
  v19 = v0[76];
  v20 = v0[73];
  v21 = v0[70];
  v22 = v0[69];
  v23 = v0[68];
  v24 = v0[65];
  v25 = v0[64];
  v26 = v0[61];
  v27 = v0[58];
  v28 = v0[57];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v16 = v0[1];

  return v16();
}

{
  v23 = v0[98];
  v1 = v0[95];
  v2 = v0[92];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v13 = v0[76];
  v14 = v0[73];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[61];
  v21 = v0[58];
  v22 = v0[57];

  v11 = v0[1];

  return v11();
}

{
  v48 = v0;
  v1 = v0[100];
  v2 = v0[58];
  v3 = v0[55];
  v0[51] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = v0[96];
    v6 = v0[54];
    (*(v0[56] + 8))(v0[58], v0[55]);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[54];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v47 = v11;
      *v10 = 136315138;
      v12 = AttachmentUploadTask.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v47);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1AEE80000, v7, v8, "%s caught SimultaneousTransferError", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    v15 = v0[100];
    v16 = v0[92];
    v17 = v0[91];
    v18 = v0[90];
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v20 = v0[100];
    v21 = v0[92];
    v22 = v0[91];
    v23 = v0[90];
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    v46 = v0[100];
  }

  v24 = v0[95];
  v25 = v0[92];
  v26 = v0[89];
  v27 = v0[88];
  v28 = v0[87];
  v29 = v0[86];
  v30 = v0[83];
  v31 = v0[82];
  v32 = v0[81];
  v33 = v0[80];
  v36 = v0[76];
  v37 = v0[73];
  v38 = v0[70];
  v39 = v0[69];
  v40 = v0[68];
  v41 = v0[65];
  v42 = v0[64];
  v43 = v0[61];
  v44 = v0[58];
  v45 = v0[57];

  v34 = v0[1];

  return v34();
}

{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v9 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = *(v2 + 896);
    v5 = *(v2 + 432);

    v6 = AttachmentUploadTask.start();
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 432);
    v6 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

{
  v1 = v0[112];

  v2 = v0[54];
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B27144E0](v4, MEMORY[0x1E69E7CA8] + 8, v5, MEMORY[0x1E69E7288]);
  }

  v6 = v0[102];
  v7 = v0[54];
  v8 = *(v7 + 112);
  v9 = swift_task_alloc();
  v0[115] = v9;
  *v9 = v0;
  v9[1] = AttachmentUploadTask.start();

  return AttachmentLedgerTopic.remove(id:)(v7 + v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  *(*v1 + 928) = v0;

  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = AttachmentUploadTask.start();
  }

  else
  {
    v6 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v56 = v0;
  v1 = v0[111];
  v2 = v0[57];
  v3 = v0[55];
  v0[52] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = v0[96];
    v6 = v0[54];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[54];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v55 = v11;
      *v10 = 136315138;
      v12 = AttachmentUploadTask.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v55);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1AEE80000, v7, v8, "%s caught SimultaneousTransferError", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    v15 = v0[111];
    v16 = v0[92];
    v17 = v0[91];
    v18 = v0[90];
    v19 = v0[89];
    v20 = v0[85];
    v21 = v0[84];
    v22 = v0[81];
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v22);
    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v24 = v0[111];
    v25 = v0[92];
    v26 = v0[91];
    v27 = v0[90];
    v28 = v0[89];
    v29 = v0[85];
    v30 = v0[84];
    v31 = v0[81];
    swift_willThrow();
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v31);
    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v54 = v0[111];
  }

  v32 = v0[95];
  v33 = v0[92];
  v34 = v0[89];
  v35 = v0[88];
  v36 = v0[87];
  v37 = v0[86];
  v38 = v0[83];
  v39 = v0[82];
  v40 = v0[81];
  v41 = v0[80];
  v44 = v0[76];
  v45 = v0[73];
  v46 = v0[70];
  v47 = v0[69];
  v48 = v0[68];
  v49 = v0[65];
  v50 = v0[64];
  v51 = v0[61];
  v52 = v0[58];
  v53 = v0[57];

  v42 = v0[1];

  return v42();
}

{
  v67 = v0;
  v1 = *(v0 + 840);
  *(v0 + 888) = v1;
  v2 = *(v0 + 768);
  v3 = *(v0 + 432);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136315394;
    v10 = AttachmentUploadTask.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v66);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 424) = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v66);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s Failed to upload, reason: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v17 = *(*(v0 + 432) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  *(v0 + 936) = 5;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v18 = *(v0 + 824);
    v19 = *(v0 + 432);
    v20 = *(v19 + v18);
    v21 = MEMORY[0x1E69E7CA8];
    if (v20)
    {
      v22 = *(v19 + v18);

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v20, v21 + 8, v23, MEMORY[0x1E69E7288]);

      v24 = *(v19 + v18);
      *(v0 + 896) = v24;
      if (v24)
      {
        v25 = *(MEMORY[0x1E69E86A8] + 4);

        v26 = swift_task_alloc();
        *(v0 + 904) = v26;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        *v26 = v0;
        v26[1] = AttachmentUploadTask.start();
        v28 = MEMORY[0x1E69E7288];

        return MEMORY[0x1EEE6DA10](v27, v24, v21 + 8, v27, v28);
      }

      v19 = *(v0 + 432);
    }

    v48 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    v49 = *(v19 + v48);
    if (v49)
    {

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v49, v21 + 8, v50, MEMORY[0x1E69E7288]);
    }

    v51 = *(v0 + 816);
    v52 = *(v0 + 432);
    v53 = *(v52 + 112);
    v54 = swift_task_alloc();
    *(v0 + 920) = v54;
    *v54 = v0;
    v54[1] = AttachmentUploadTask.start();

    return AttachmentLedgerTopic.remove(id:)(v52 + v51);
  }

  else
  {
    v29 = *(v0 + 736);
    v30 = *(v0 + 728);
    v31 = *(v0 + 720);
    v32 = *(v0 + 712);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v35 = *(v0 + 648);
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v35);
    (*(v33 + 8))(v32, v34);
    (*(v30 + 8))(v29, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v37 = *(v0 + 760);
    v38 = *(v0 + 736);
    v39 = *(v0 + 712);
    v40 = *(v0 + 704);
    v41 = *(v0 + 696);
    v42 = *(v0 + 688);
    v43 = *(v0 + 664);
    v44 = *(v0 + 656);
    v45 = *(v0 + 648);
    v46 = *(v0 + 640);
    v56 = *(v0 + 608);
    v57 = *(v0 + 584);
    v58 = *(v0 + 560);
    v59 = *(v0 + 552);
    v60 = *(v0 + 544);
    v61 = *(v0 + 520);
    v62 = *(v0 + 512);
    v63 = *(v0 + 488);
    v64 = *(v0 + 464);
    v65 = *(v0 + 456);

    v47 = *(v0 + 8);

    return v47();
  }
}

{
  v67 = v0;
  v1 = *(v0 + 864);
  *(v0 + 888) = v1;
  v2 = *(v0 + 768);
  v3 = *(v0 + 432);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136315394;
    v10 = AttachmentUploadTask.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v66);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 424) = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v66);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s Failed to upload, reason: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v17 = *(*(v0 + 432) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  *(v0 + 936) = 5;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v18 = *(v0 + 824);
    v19 = *(v0 + 432);
    v20 = *(v19 + v18);
    v21 = MEMORY[0x1E69E7CA8];
    if (v20)
    {
      v22 = *(v19 + v18);

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v20, v21 + 8, v23, MEMORY[0x1E69E7288]);

      v24 = *(v19 + v18);
      *(v0 + 896) = v24;
      if (v24)
      {
        v25 = *(MEMORY[0x1E69E86A8] + 4);

        v26 = swift_task_alloc();
        *(v0 + 904) = v26;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        *v26 = v0;
        v26[1] = AttachmentUploadTask.start();
        v28 = MEMORY[0x1E69E7288];

        return MEMORY[0x1EEE6DA10](v27, v24, v21 + 8, v27, v28);
      }

      v19 = *(v0 + 432);
    }

    v48 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    v49 = *(v19 + v48);
    if (v49)
    {

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v49, v21 + 8, v50, MEMORY[0x1E69E7288]);
    }

    v51 = *(v0 + 816);
    v52 = *(v0 + 432);
    v53 = *(v52 + 112);
    v54 = swift_task_alloc();
    *(v0 + 920) = v54;
    *v54 = v0;
    v54[1] = AttachmentUploadTask.start();

    return AttachmentLedgerTopic.remove(id:)(v52 + v51);
  }

  else
  {
    v29 = *(v0 + 736);
    v30 = *(v0 + 728);
    v31 = *(v0 + 720);
    v32 = *(v0 + 712);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v35 = *(v0 + 648);
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v35);
    (*(v33 + 8))(v32, v34);
    (*(v30 + 8))(v29, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v37 = *(v0 + 760);
    v38 = *(v0 + 736);
    v39 = *(v0 + 712);
    v40 = *(v0 + 704);
    v41 = *(v0 + 696);
    v42 = *(v0 + 688);
    v43 = *(v0 + 664);
    v44 = *(v0 + 656);
    v45 = *(v0 + 648);
    v46 = *(v0 + 640);
    v56 = *(v0 + 608);
    v57 = *(v0 + 584);
    v58 = *(v0 + 560);
    v59 = *(v0 + 552);
    v60 = *(v0 + 544);
    v61 = *(v0 + 520);
    v62 = *(v0 + 512);
    v63 = *(v0 + 488);
    v64 = *(v0 + 464);
    v65 = *(v0 + 456);

    v47 = *(v0 + 8);

    return v47();
  }
}

{
  v47 = v0;
  v1 = v0[96];
  v2 = v0[54];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[110];
  v7 = v0[92];
  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[85];
  v12 = v0[84];
  v44 = v0[81];
  if (v5)
  {
    v42 = v0[92];
    v13 = v0[54];
    v40 = v0[90];
    v14 = swift_slowAlloc();
    v38 = v10;
    v15 = swift_slowAlloc();
    v46 = v15;
    *v14 = 136315138;
    v16 = AttachmentUploadTask.description.getter();
    v36 = v12;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v46);

    *(v14 + 4) = v18;
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B2715BA0](v15, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v44);
    (*(v11 + 8))(v38, v36);
    (*(v8 + 8))(v42, v40);
  }

  else
  {

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v44);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[95];
  v20 = v0[92];
  v21 = v0[89];
  v22 = v0[88];
  v23 = v0[87];
  v24 = v0[86];
  v25 = v0[83];
  v26 = v0[82];
  v27 = v0[81];
  v30 = v0[80];
  v31 = v0[76];
  v32 = v0[73];
  v33 = v0[70];
  v34 = v0[69];
  v35 = v0[68];
  v37 = v0[65];
  v39 = v0[64];
  v41 = v0[61];
  v43 = v0[58];
  v45 = v0[57];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v28 = v0[1];

  return v28();
}

{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 648);

  outlined destroy of AttachmentLedgerTopic.UploadRequest(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v30 = *(v0 + 912);
  v8 = *(v0 + 760);
  v9 = *(v0 + 736);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 664);
  v15 = *(v0 + 656);
  v16 = *(v0 + 648);
  v17 = *(v0 + 640);
  v20 = *(v0 + 608);
  v21 = *(v0 + 584);
  v22 = *(v0 + 560);
  v23 = *(v0 + 552);
  v24 = *(v0 + 544);
  v25 = *(v0 + 520);
  v26 = *(v0 + 512);
  v27 = *(v0 + 488);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);

  v18 = *(v0 + 8);

  return v18();
}

{
  v73 = v0;
  v1 = v0[96];
  v2 = v0[54];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[116];
  if (v5)
  {
    v70 = v0[102];
    v7 = v0[74];
    v8 = v0[54];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v72[0] = v10;
    *v9 = 136315394;
    v11 = AttachmentUploadTask.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v72);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v72);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Failed to remove attachment %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v17 = v0[111];
  v18 = v0[57];
  v19 = v0[55];
  v0[52] = v17;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v21 = v0[96];
    v22 = v0[54];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[54];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72[0] = v27;
      *v26 = 136315138;
      v28 = AttachmentUploadTask.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v72);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1AEE80000, v23, v24, "%s caught SimultaneousTransferError", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B2715BA0](v27, -1, -1);
      MEMORY[0x1B2715BA0](v26, -1, -1);
    }

    v31 = v0[111];
    v32 = v0[92];
    v33 = v0[91];
    v34 = v0[90];
    v35 = v0[89];
    v36 = v0[85];
    v37 = v0[84];
    v38 = v0[81];
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v38);
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v40 = v0[111];
    v41 = v0[92];
    v42 = v0[91];
    v43 = v0[90];
    v44 = v0[89];
    v45 = v0[85];
    v46 = v0[84];
    v47 = v0[81];
    swift_willThrow();
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v47);
    (*(v45 + 8))(v44, v46);
    (*(v42 + 8))(v41, v43);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v71 = v0[111];
  }

  v48 = v0[95];
  v49 = v0[92];
  v50 = v0[89];
  v51 = v0[88];
  v52 = v0[87];
  v53 = v0[86];
  v54 = v0[83];
  v55 = v0[82];
  v56 = v0[81];
  v57 = v0[80];
  v60 = v0[76];
  v61 = v0[73];
  v62 = v0[70];
  v63 = v0[69];
  v64 = v0[68];
  v65 = v0[65];
  v66 = v0[64];
  v67 = v0[61];
  v68 = v0[58];
  v69 = v0[57];

  v58 = v0[1];

  return v58();
}