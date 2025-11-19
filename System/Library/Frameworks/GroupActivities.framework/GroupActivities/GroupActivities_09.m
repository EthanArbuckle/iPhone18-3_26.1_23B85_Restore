uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = lazy protocol witness table accessor for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator();
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 2, &type metadata for GroupSessionJournal.Attachments.Iterator, v3);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TY2_;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5TY2_()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E24SessionAttachmentManagerC11AttachmentsV8IteratorV_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = lazy protocol witness table accessor for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator();
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 2, &type metadata for GroupSessionAttachmentManager.Attachments.Iterator, v3);
}

void specialized closure #1 in _PublisherElements.Iterator.Inner.next()(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v10 = a2[2];
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  outlined init with copy of URL?((a2 + 4), &v22, a3, a4);
  if (!v23)
  {
    swift_beginAccess();
    v11 = a2[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2[3] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = a5(0, *(v11 + 16) + 1, 1, v11);
      a2[3] = v11;
    }

    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      v11 = a5(v13 > 1, v14 + 1, 1, v11);
    }

    *(v11 + 16) = v14 + 1;
    *(v11 + 8 * v14 + 32) = a1;
    a2[3] = v11;
    swift_endAccess();
    swift_beginAccess();
    v15 = a2[9];
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_12;
    }

    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_12:
      v16 = static Subscribers.Demand.unlimited.getter();
    }

    a2[9] = v16;
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    return;
  }

  if (v23 == 1)
  {
    os_unfair_lock_unlock(v10);
    **(*(a1 + 64) + 40) = 0;
    swift_continuation_resume();
  }

  else
  {
    outlined init with take of Transferable(&v22, v21);
    swift_beginAccess();
    v17 = a2[3];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    a2[3] = v17;
    if ((v18 & 1) == 0)
    {
      v17 = a5(0, *(v17 + 16) + 1, 1, v17);
      a2[3] = v17;
    }

    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      v17 = a5(v19 > 1, v20 + 1, 1, v17);
    }

    *(v17 + 16) = v20 + 1;
    *(v17 + 8 * v20 + 32) = a1;
    a2[3] = v17;
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_0(v21);
  }
}

uint64_t GroupSessionAttachmentManager.session.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t GroupSessionAttachmentManager.attachments.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  if (*(v1 + 32))
  {
    v8 = *(v1 + 32);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
    v9 = v1;
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionAttachmentManager.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
    v8 = Publisher.eraseToAnyPublisher()();
    (*(v4 + 8))(v7, v3);
    v10 = *(v9 + 32);
    *(v9 + 32) = v8;
  }

  *a1 = v8;
}

uint64_t GroupSessionAttachmentManager.attachments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

uint64_t GroupSessionAttachmentManager.Attachments.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionAttachmentManager.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
  v7 = Publisher.eraseToAnyPublisher()();

  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t (*GroupSessionAttachmentManager.attachments.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  GroupSessionAttachmentManager.attachments.getter(a1);
  return GroupSessionJournal.attachments.modify;
}

uint64_t GroupSessionAttachmentManager._attachments.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionAttachmentManager.cancellables.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager_cancellables;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t GroupSessionAttachmentManager.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager_cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t GroupSessionAttachmentManager.upload<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[51] = a4;
  v5[52] = v4;
  v5[49] = a2;
  v5[50] = a3;
  v5[48] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[57] = v9;
  v10 = *(v9 - 8);
  v5[58] = v10;
  v11 = *(v10 + 64) + 15;
  v5[59] = swift_task_alloc();
  v12 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v5[60] = v12;
  v13 = *(v12 - 8);
  v5[61] = v13;
  v14 = *(v13 + 64) + 15;
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v15 = type metadata accessor for ResolvedTransferRepresentation();
  v5[64] = v15;
  v16 = *(v15 - 8);
  v5[65] = v16;
  v17 = *(v16 + 64) + 15;
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v18 = type metadata accessor for _TransferRepresentationInputs();
  v5[72] = v18;
  v19 = *(v18 - 8);
  v5[73] = v19;
  v20 = *(v19 + 64) + 15;
  v5[74] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[75] = AssociatedTypeWitness;
  v22 = type metadata accessor for _TransferRepresentationValue();
  v5[76] = v22;
  v23 = *(v22 - 8);
  v5[77] = v23;
  v24 = *(v23 + 64) + 15;
  v5[78] = swift_task_alloc();
  v25 = type metadata accessor for _TransferRepresentationOutputs();
  v5[79] = v25;
  v26 = *(v25 - 8);
  v5[80] = v26;
  v27 = *(v26 + 64) + 15;
  v5[81] = swift_task_alloc();
  v28 = *(AssociatedTypeWitness - 8);
  v5[82] = v28;
  v29 = *(v28 + 64) + 15;
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v30 = type metadata accessor for Optional();
  v5[86] = v30;
  v31 = *(v30 - 8);
  v5[87] = v31;
  v32 = *(v31 + 64) + 15;
  v5[88] = swift_task_alloc();
  v33 = *(a3 - 8);
  v5[89] = v33;
  v34 = *(v33 + 64) + 15;
  v5[90] = swift_task_alloc();
  v35 = type metadata accessor for UUID();
  v5[91] = v35;
  v36 = *(v35 - 8);
  v5[92] = v36;
  v37 = *(v36 + 64) + 15;
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.upload<A>(_:), 0, 0);
}

uint64_t GroupSessionAttachmentManager.upload<A>(_:)()
{
  v170 = v0;
  v1 = *(v0 + 95);
  UUID.init()();
  if (one-time initialization token for ledger != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = *(v0 + 95);
    v3 = *(v0 + 94);
    v4 = *(v0 + 92);
    v5 = *(v0 + 91);
    buf = v0;
    v6 = *(v0 + 90);
    v7 = *(v0 + 89);
    v8 = *(v0 + 50);
    v9 = *(v0 + 49);
    v10 = type metadata accessor for Logger();
    *(v0 + 96) = v10;
    *(v0 + 97) = __swift_project_value_buffer(v10, static Log.ledger);
    v11 = *(v7 + 16);
    v12 = v6;
    v13 = v0;
    v11(v12, v9, v8);
    v14 = *(v4 + 16);
    *(v0 + 98) = v14;
    *(v0 + 99) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v3, v2, v5);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 94);
    v19 = *(v0 + 92);
    v164 = *(v0 + 91);
    v20 = *(v0 + 90);
    v21 = *(v0 + 89);
    v158 = v11;
    if (v17)
    {
      v145 = v18;
      v22 = *(buf + 88);
      loga = v15;
      v23 = *(buf + 87);
      v142 = *(buf + 86);
      v151 = v16;
      v24 = *(buf + 50);
      v25 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v169[0] = v148;
      *v25 = 136315394;
      v11(v22, v20, v24);
      (*(v21 + 56))(v22, 0, 1, v24);
      v26 = >> prefix<A>(_:)(v22, v24);
      v28 = v27;
      (*(v23 + 8))(v22, v142);
      (*(v21 + 8))(v20, v24);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v169);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v33 = *(v19 + 8);
      v33(v145, v164);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v169);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1AEE80000, loga, v151, "Received upload request for item: %s, using ID: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v148, -1, -1);
      v35 = v25;
      v13 = buf;
      MEMORY[0x1B2715BA0](v35, -1, -1);
    }

    else
    {
      v36 = *(buf + 50);

      v33 = *(v19 + 8);
      v33(v18, v164);
      (*(v21 + 8))(v20, v36);
    }

    v139 = v33;
    *(v13 + 100) = v33;
    v37 = *(v13 + 85);
    v38 = *(v13 + 84);
    v39 = *(v13 + 82);
    v143 = *(v13 + 81);
    logb = *(v13 + 80);
    v165 = *(v13 + 79);
    v40 = *(v13 + 78);
    v149 = *(v13 + 77);
    v152 = *(v13 + 76);
    v41 = v13;
    v42 = *(v13 + 75);
    v43 = *(v41 + 74);
    v44 = *(v41 + 73);
    v146 = *(v41 + 72);
    v45 = *(v41 + 50);
    v46 = *(v41 + 51);
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    v134 = *(v39 + 16);
    v134(v38, v37, v42);
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    v47 = *(v44 + 8);
    v0 = (v44 + 8);
    v47(v43, v146);
    (*(v149 + 8))(v40, v152);
    v48 = _TransferRepresentationOutputs.storage.getter();
    (logb[1].isa)(v143, v165);
    v49 = v48;
    log = *(v48 + 16);
    if (!log)
    {
      break;
    }

    v50 = 0;
    v51 = *(v41 + 65);
    v52 = MEMORY[0x1E69E7CC0];
    v53 = v41;
    while (v50 < *(v49 + 16))
    {
      v54 = *(v53 + 71);
      v55 = *(v53 + 69);
      v56 = *(v53 + 64);
      v57 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v58 = v49;
      v59 = *(v51 + 72);
      (*(v51 + 16))(v54, v49 + v57 + v59 * v50, v56);
      v60 = *(v51 + 32);
      v60(v55, v54, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169[0] = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 16) + 1, 1);
        v52 = v169[0];
      }

      v63 = *(v52 + 16);
      v62 = *(v52 + 24);
      v53 = buf;
      if (v63 >= v62 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1);
        v52 = v169[0];
      }

      v50 = (v50 + 1);
      v64 = *(buf + 69);
      v65 = *(buf + 64);
      *(v52 + 16) = v63 + 1;
      v60(v52 + v57 + v63 * v59, v64, v65);
      v0 = v158;
      v49 = v58;
      if (log == v50)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v52 = MEMORY[0x1E69E7CC0];
  v53 = v41;
  v0 = v158;
LABEL_15:

  if (*(v52 + 16))
  {
    v66 = *(v53 + 65);
    v67 = *(v66 + 16);
    v67(*(v53 + 70), v52 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), *(v53 + 64));

    v68 = ResolvedTransferRepresentation.exporting.getter();
    *(v53 + 101) = v68;
    *(v53 + 102) = v69;
    if (v68)
    {
      v70 = v68;
      v71 = *(v53 + 49);
      v166 = *(v53 + 25);
      *(v53 + 5) = v166;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53 + 7);
      v0(boxed_opaque_existential_1, v71, v166);
      v167 = (v70 + *v70);
      v73 = v70[1];
      v74 = swift_task_alloc();
      *(v53 + 103) = v74;
      *v74 = v53;
      v74[1] = GroupSessionAttachmentManager.upload<A>(_:);

      return v167(v53 + 16, v53 + 56);
    }

    v67(*(v53 + 68), *(v53 + 70), *(v53 + 64));
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v53 + 68);
    v96 = *(v53 + 65);
    v97 = *(v53 + 64);
    if (v94)
    {
      v168 = v93;
      v99 = *(v53 + 53);
      v98 = *(v53 + 54);
      v100 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v169[0] = v159;
      bufa = v100;
      *v100 = 136315138;
      v67(v98, v95, v97);
      (*(v96 + 56))(v98, 0, 1, v97);
      outlined init with copy of URL?(v98, v99, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v96 + 48))(v99, 1, v97) == 1)
      {
        v101 = 0xE300000000000000;
        v102 = 7104878;
      }

      else
      {
        v108 = *(v53 + 67);
        v109 = *(v53 + 66);
        v110 = *(v53 + 65);
        v111 = *(v53 + 64);
        (*(v110 + 32))(v108, *(v53 + 53), v111);
        v67(v109, v108, v111);
        v102 = String.init<A>(reflecting:)();
        v101 = v112;
        (*(v110 + 8))(v108, v111);
      }

      v113 = *(v53 + 68);
      v114 = *(v53 + 65);
      v115 = *(v53 + 64);
      outlined destroy of NSObject?(*(v53 + 54), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v107 = *(v114 + 8);
      v107(v113, v115);
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v101, v169);

      *(bufa + 4) = v116;
      _os_log_impl(&dword_1AEE80000, v92, v168, "Failed to find exporting closure from representation: %s", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v159);
      MEMORY[0x1B2715BA0](v159, -1, -1);
      MEMORY[0x1B2715BA0](bufa, -1, -1);
    }

    else
    {

      v107 = *(v96 + 8);
      v107(v95, v97);
    }

    v103 = *(v53 + 95);
    v117 = *(v53 + 92);
    v105 = *(v53 + 91);
    v118 = *(v53 + 70);
    v119 = *(v53 + 64);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v120 = 0;
    swift_willThrow();
    v107(v118, v119);
  }

  else
  {
    v76 = *(v53 + 85);
    v77 = *(v53 + 83);
    v78 = *(v53 + 75);

    v134(v77, v76, v78);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v53;
    v83 = *(v53 + 83);
    v84 = *(v82 + 82);
    v85 = *(v82 + 75);
    if (v81)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v169[0] = v87;
      *v86 = 136315138;
      swift_getDynamicType();
      v88 = _typeName(_:qualified:)();
      v90 = v89;
      (*(v84 + 8))(v83, v85);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v169);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_1AEE80000, v79, v80, "Failed to find supported representation for strategy: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x1B2715BA0](v87, -1, -1);
      MEMORY[0x1B2715BA0](v86, -1, -1);
    }

    else
    {

      (*(v84 + 8))(v83, v85);
    }

    v53 = buf;
    v103 = *(buf + 95);
    v104 = *(buf + 92);
    v105 = *(buf + 91);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v106 = 0;
    swift_willThrow();
  }

  v139(v103, v105);
  v121 = *(v53 + 95);
  v122 = *(v53 + 94);
  v123 = *(v53 + 93);
  v124 = *(v53 + 90);
  v125 = *(v53 + 88);
  v126 = *(v53 + 85);
  v127 = v53;
  v128 = *(v53 + 84);
  v129 = *(v127 + 83);
  v130 = *(v127 + 81);
  v132 = *(v127 + 78);
  v133 = *(v127 + 74);
  v135 = *(v127 + 71);
  v136 = *(v127 + 70);
  v137 = *(v127 + 69);
  v138 = *(v127 + 68);
  v140 = *(v127 + 67);
  v141 = *(v127 + 66);
  v144 = *(v127 + 63);
  v147 = *(v127 + 62);
  v150 = *(v127 + 59);
  v153 = *(v127 + 56);
  logc = *(v127 + 55);
  v160 = *(v127 + 54);
  bufb = *(v127 + 53);
  (*(*(v127 + 82) + 8))(v126, *(v127 + 75));

  v131 = *(v127 + 1);

  return v131();
}

{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v6 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v4 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v4 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v100 = v0;
  outlined init with copy of Transferable(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  if (!swift_dynamicCast())
  {
    v26 = *(v0 + 776);
    outlined init with copy of Transferable(v0 + 16, v0 + 136);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v99 = v30;
      *v29 = 136315138;
      outlined init with copy of Transferable(v0 + 136, v0 + 176);
      outlined init with copy of URL?(v0 + 176, v0 + 216, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      if (*(v0 + 240))
      {
        outlined init with take of Transferable((v0 + 216), v0 + 256);
        outlined init with copy of Transferable(v0 + 256, v0 + 296);
        v31 = String.init<A>(reflecting:)();
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      }

      else
      {
        v33 = 0xE300000000000000;
        v31 = 7104878;
      }

      outlined destroy of NSObject?(v0 + 176, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v99);

      *(v29 + 4) = v43;
      _os_log_impl(&dword_1AEE80000, v27, v28, "Failed to convert %s to Data", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1B2715BA0](v30, -1, -1);
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    v44 = *(v0 + 816);
    v45 = *(v0 + 808);
    v95 = *(v0 + 800);
    v46 = *(v0 + 760);
    v47 = *(v0 + 736);
    v48 = *(v0 + 728);
    v49 = *(v0 + 560);
    v50 = *(v0 + 520);
    v51 = *(v0 + 512);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v45);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v50 + 8))(v49, v51);
    v95(v46, v48);
    goto LABEL_17;
  }

  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 504);
  v7 = *(v0 + 480);
  v8 = *(v0 + 464);
  v86 = v1;
  v89 = *(v0 + 456);
  v9 = *(v0 + 440);
  v97 = *(v0 + 448);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  (*(v0 + 784))(v6, *(v0 + 760), v5);
  v12 = *(v7 + 20);
  swift_weakInit();
  v13 = (v6 + *(v7 + 24));
  *v13 = v11;
  v13[1] = v10;
  v91 = v11;
  outlined copy of Data._Representation(v11, v10);
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 840) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86(v3, v5);
  static URL.temporaryDirectory.getter();
  (*(v8 + 56))(v9, 0, 1, v89);
  URL.init(string:relativeTo:)();

  outlined destroy of NSObject?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v8 + 48))(v97, 1, v89) == 1)
  {
    v14 = *(v0 + 448);
    outlined consume of Data._Representation(v11, v10);
    outlined destroy of NSObject?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 768), static Log.default);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEE80000, v15, v16, "Failed to convert TemporaryDirectory to URL", v17, 2u);
      MEMORY[0x1B2715BA0](v17, -1, -1);
    }

    v18 = *(v0 + 816);
    v19 = *(v0 + 808);
    v94 = *(v0 + 800);
    v92 = *(v0 + 760);
    v20 = *(v0 + 728);
    v21 = *(v0 + 560);
    v22 = *(v0 + 520);
    v24 = *(v0 + 504);
    v23 = *(v0 + 512);

    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v19);
    outlined destroy of GroupSessionAttachmentManager.Attachment(v24, type metadata accessor for GroupSessionAttachmentManager.Attachment);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v22 + 8))(v21, v23);
    v94(v92, v20);
    goto LABEL_17;
  }

  v34 = *(v0 + 832);
  (*(*(v0 + 464) + 32))(*(v0 + 472), *(v0 + 448), *(v0 + 456));
  Data.write(to:options:)();
  if (v34)
  {
    v35 = *(v0 + 816);
    v36 = *(v0 + 808);
    v84 = *(v0 + 760);
    v87 = *(v0 + 800);
    v80 = *(v0 + 560);
    v82 = *(v0 + 728);
    v37 = *(v0 + 520);
    v39 = *(v0 + 504);
    v38 = *(v0 + 512);
    v41 = *(v0 + 464);
    v40 = *(v0 + 472);
    v42 = *(v0 + 456);
    outlined consume of Data._Representation(v91, v10);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v36);
    (*(v41 + 8))(v40, v42);
    outlined destroy of GroupSessionAttachmentManager.Attachment(v39, type metadata accessor for GroupSessionAttachmentManager.Attachment);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v37 + 8))(v80, v38);
    v87(v84, v82);
LABEL_17:
    v53 = *(v0 + 760);
    v54 = *(v0 + 752);
    v55 = *(v0 + 744);
    v56 = *(v0 + 720);
    v57 = *(v0 + 704);
    v58 = *(v0 + 672);
    v59 = *(v0 + 664);
    v60 = *(v0 + 648);
    v72 = *(v0 + 624);
    v73 = *(v0 + 592);
    v74 = *(v0 + 568);
    v75 = *(v0 + 560);
    v76 = *(v0 + 552);
    v77 = *(v0 + 544);
    v78 = *(v0 + 536);
    v79 = *(v0 + 528);
    v81 = *(v0 + 504);
    v83 = *(v0 + 496);
    v85 = *(v0 + 472);
    v88 = *(v0 + 448);
    v90 = *(v0 + 440);
    v93 = *(v0 + 432);
    v96 = *(v0 + 424);
    (*(*(v0 + 656) + 8))(*(v0 + 680), *(v0 + 600));

    v61 = *(v0 + 8);

    return v61();
  }

  v63 = *(v0 + 416);
  outlined consume of Data._Representation(v11, v10);
  v65 = *(v63 + 16);
  v64 = *(v63 + 24);
  ObjectType = swift_getObjectType();
  v67 = *(v64 + 40);
  v98 = (v67 + *v67);
  v68 = v67[1];
  v69 = swift_task_alloc();
  *(v0 + 848) = v69;
  *v69 = v0;
  v69[1] = GroupSessionAttachmentManager.upload<A>(_:);
  v70 = *(v0 + 760);
  v71 = *(v0 + 472);

  return (v98)(v70, v71, 0, 0xF000000000000000, ObjectType, v64);
}

{
  v2 = *(*v1 + 848);
  v5 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  else
  {
    v3 = GroupSessionAttachmentManager.upload<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = [objc_allocWithZone(MEMORY[0x1E6997708]) init];
  v2 = [v1 sharePlayAttachmentLedgerEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = v0[52];
    outlined init with copy of GroupSessionAttachmentManager.Attachment(v0[63], v0[62], type metadata accessor for GroupSessionAttachmentManager.Attachment);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = static Published.subscript.modify();
    v6 = v5;
    v7 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      *v6 = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1, v7);
      *v6 = v7;
    }

    v12 = v0[61];
    v11 = v0[62];
    v7[2] = v10 + 1;
    outlined init with take of GroupSessionAttachmentManager.Attachment(v11, v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10);
    v4(v0 + 42, 0);
  }

  v13 = v0[102];
  v30 = v0[105];
  v31 = v0[94];
  v25 = v0[91];
  v26 = v0[95];
  v32 = v0[93];
  v33 = v0[90];
  v28 = v0[100];
  v29 = v0[85];
  v34 = v0[88];
  v35 = v0[84];
  v14 = v0[82];
  v36 = v0[83];
  v37 = v0[81];
  v27 = v0[75];
  v38 = v0[78];
  v39 = v0[74];
  v15 = v0[70];
  v40 = v0[71];
  v41 = v0[69];
  v42 = v0[68];
  v43 = v0[67];
  v44 = v0[66];
  v16 = v0[65];
  v17 = v0[63];
  v18 = v0[64];
  v20 = v0[58];
  v19 = v0[59];
  v21 = v0[57];
  v45 = v0[62];
  v46 = v0[56];
  v47 = v0[55];
  v48 = v0[54];
  v49 = v0[53];
  v22 = v0[48];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[101]);
  (*(v20 + 8))(v19, v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v16 + 8))(v15, v18);
  v28(v26, v25);
  outlined init with take of GroupSessionAttachmentManager.Attachment(v17, v22);
  (*(v14 + 8))(v29, v27);

  v23 = v0[1];

  return v23();
}

{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[70];
  v7 = v0[65];
  v8 = v0[64];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[101]);
  (*(v7 + 8))(v6, v8);
  v2(v3, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v34 = v0[104];
  v9 = v0[95];
  v10 = v0[94];
  v11 = v0[93];
  v12 = v0[90];
  v13 = v0[88];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[81];
  v19 = v0[78];
  v20 = v0[74];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[63];
  v28 = v0[62];
  v29 = v0[59];
  v30 = v0[56];
  v31 = v0[55];
  v32 = v0[54];
  v33 = v0[53];
  (*(v0[82] + 8))(v0[85], v0[75]);

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[102];
  v35 = v0[100];
  v37 = v0[105];
  v2 = v0[95];
  v3 = v0[91];
  v4 = v0[70];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[58];
  v8 = v0[59];
  v10 = v0[57];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[101]);
  (*(v9 + 8))(v8, v10);
  outlined destroy of GroupSessionAttachmentManager.Attachment(v7, type metadata accessor for GroupSessionAttachmentManager.Attachment);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v5 + 8))(v4, v6);
  v35(v2, v3);
  v38 = v0[107];
  v11 = v0[95];
  v12 = v0[94];
  v13 = v0[93];
  v14 = v0[90];
  v15 = v0[88];
  v16 = v0[84];
  v17 = v0[83];
  v18 = v0[81];
  v21 = v0[78];
  v22 = v0[74];
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[69];
  v26 = v0[68];
  v27 = v0[67];
  v28 = v0[66];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[59];
  v32 = v0[56];
  v33 = v0[55];
  v34 = v0[54];
  v36 = v0[53];
  (*(v0[82] + 8))(v0[85], v0[75]);

  v19 = v0[1];

  return v19();
}

uint64_t GroupSessionAttachmentManager.Attachment.init(id:ledger:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v10 = *(v9 + 20);
  swift_weakInit();

  v12 = (a4 + *(v9 + 24));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

char *GroupSessionAttachmentManager.__allocating_init<A>(session:)(uint64_t a1)
{
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = type metadata accessor for GroupSession();
  v6 = *(v1 + 48);
  v7 = *(v1 + 52);
  v8 = swift_allocObject();

  return specialized GroupSessionAttachmentManager.init(transportSession:)(a1, v8, v5, &protocol witness table for GroupSession<A>);
}

char *GroupSessionAttachmentManager.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionAttachmentManager.__allocating_init(transportSession:)(a1, v2, ObjectType, a2);
}

char *GroupSessionAttachmentManager.init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionAttachmentManager.init(transportSession:)(a1, v2, ObjectType, a2);
}

uint64_t closure #1 in GroupSessionAttachmentManager.init(transportSession:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMd, &_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v34 - v8;
  v9 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v42 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v43 = *(*a1 + 16);
  if (v43)
  {
    v22 = 0;
    v40 = v19 + 16;
    v41 = (v19 + 8);
    v35 = v10;
    v39 = (v10 + 48);
    v46 = MEMORY[0x1E69E7CC0];
    v36 = v9;
    v37 = a2;
    while (v22 < *(v21 + 16))
    {
      v23 = v21;
      v24 = v19;
      v25 = v42;
      v3 = v18;
      (*(v19 + 16))(v42, v21 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v22, v18);
      v26 = v44;
      v27 = a2;
      closure #1 in closure #1 in GroupSessionAttachmentManager.init(transportSession:)(v25, a2, v44);
      v28 = v25;
      v10 = v3;
      (*v41)(v28, v3);
      if ((*v39)(v26, 1, v9) == 1)
      {
        result = outlined destroy of NSObject?(v26, &_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMd, &_s15GroupActivities0A24SessionAttachmentManagerC0D0VSgMR);
      }

      else
      {
        v29 = v38;
        outlined init with take of GroupSessionAttachmentManager.Attachment(v26, v38);
        outlined init with take of GroupSessionAttachmentManager.Attachment(v29, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
        }

        v31 = v46[2];
        v30 = v46[3];
        v3 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v46);
        }

        v32 = v45;
        v33 = v46;
        v46[2] = v3;
        result = outlined init with take of GroupSessionAttachmentManager.Attachment(v32, v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31);
        v9 = v36;
        v27 = v37;
      }

      ++v22;
      v18 = v10;
      a2 = v27;
      v21 = v23;
      v19 = v24;
      if (v43 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v41)(v10, v3);

    __break(1u);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *v34 = v46;
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSessionAttachmentManager.init(transportSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.ledger);
  v22 = *(v12 + 16);
  v45 = a1;
  v23 = a1;
  v24 = v22;
  v22(v20, v23, v11);
  v25 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v25, v43);
  v44 = v24;
  if (v26)
  {
    v39 = v18;
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v48 = v40;
    v41 = v27;
    *v27 = 136315138;
    v24(v10, v20, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    outlined init with copy of URL?(v10, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    else
    {
      v30 = v39;
      (*(v12 + 32))(v39, v8, v11);
      v24(v42, v30, v11);
      v29 = String.init<A>(reflecting:)();
      v28 = v31;
      (*(v12 + 8))(v30, v11);
    }

    outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v12 + 8))(v20, v11);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v48);

    v33 = v41;
    *(v41 + 1) = v32;
    _os_log_impl(&dword_1AEE80000, v25, v43, "Received new attachment: %s", v33, 0xCu);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B2715BA0](v34, -1, -1);
    MEMORY[0x1B2715BA0](v33, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v20, v11);
  }

  v35 = v47;
  v44(v47, v45, v11);
  swift_beginAccess();
  swift_weakLoadStrong();
  v36 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v37 = *(v36 + 20);
  swift_weakInit();

  *(v35 + *(v36 + 24)) = xmmword_1AF012B00;
  return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
}

uint64_t closure #2 in GroupSessionAttachmentManager.init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v86 = a3;
  v83 = a2;
  v5 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v80 = &v72 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v72 - v17;
  v18 = type metadata accessor for Participant();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v90 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v87 = &v72 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v78 = &v72 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v79 = &v72 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v72 - v33;
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v35, static Log.ledger);
  v37 = *(v23 + 16);
  v84 = a1;
  v37(v34, a1, v22);
  outlined init with copy of GroupSessionAttachmentManager.Attachment(v86, v21, type metadata accessor for Participant);
  v86 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v88 = v23 + 16;
  v81 = v23;
  v82 = v37;
  if (v40)
  {
    v73 = v39;
    v74 = v5;
    v41 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v91[0] = v72;
    *v41 = 136315394;
    v42 = v85;
    v37(v85, v34, v22);
    (*(v23 + 56))(v42, 0, 1, v22);
    outlined init with copy of URL?(v42, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v23 + 48))(v16, 1, v22) == 1)
    {
      v43 = 7104878;
      v44 = 0xE300000000000000;
    }

    else
    {
      v45 = v16;
      v46 = v38;
      v47 = v37;
      v48 = v78;
      v49 = v79;
      (*(v23 + 32))(v79, v45, v22);
      v47(v48, v49, v22);
      v38 = v46;
      v43 = String.init<A>(reflecting:)();
      v44 = v50;
      (*(v23 + 8))(v49, v22);
    }

    outlined destroy of NSObject?(v85, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v23 + 8))(v34, v22);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v91);

    *(v41 + 4) = v51;
    *(v41 + 12) = 2080;
    v52 = Participant.description.getter();
    v54 = v53;
    outlined destroy of GroupSessionAttachmentManager.Attachment(v21, type metadata accessor for Participant);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v91);

    *(v41 + 14) = v55;
    _os_log_impl(&dword_1AEE80000, v38, v73, "Received new attachment: %s from: %s", v41, 0x16u);
    v56 = v72;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v56, -1, -1);
    MEMORY[0x1B2715BA0](v41, -1, -1);

    v5 = v74;
  }

  else
  {

    outlined destroy of GroupSessionAttachmentManager.Attachment(v21, type metadata accessor for Participant);
    (*(v23 + 8))(v34, v22);
  }

  v57 = v87;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v89 = result;
  if (result)
  {
    v82(v57, v84, v22);
    v59 = Data.init(contentsOf:options:)();
    v61 = v60 | 0x1000000000000000;
    v62 = v76;
    (*(v81 + 32))(v76, v57, v22);
    v63 = *(v5 + 20);
    swift_weakInit();
    v64 = (v62 + *(v5 + 24));
    *v64 = v59;
    v64[1] = v61;
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = static Published.subscript.modify();
    v67 = v66;
    v68 = *v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v67 = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
      *v67 = v68;
    }

    v71 = v68[2];
    v70 = v68[3];
    if (v71 >= v70 >> 1)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v68);
      *v67 = v68;
    }

    v68[2] = v71 + 1;
    outlined init with take of GroupSessionAttachmentManager.Attachment(v62, v68 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v71);
    v65(v91, 0);
  }

  return result;
}

uint64_t GroupSessionAttachmentManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager___attachments;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager_cancellables);

  return v0;
}

uint64_t GroupSessionAttachmentManager.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager___attachments;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager_cancellables];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t GroupSessionAttachmentManager.Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupSessionAttachmentManager.Attachment.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t key path getter for GroupSessionAttachmentManager.Attachment.ledger : GroupSessionAttachmentManager.Attachment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GroupSessionAttachmentManager.Attachment(a1, v8, type metadata accessor for GroupSessionAttachmentManager.Attachment);
  v9 = *(v5 + 28);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of GroupSessionAttachmentManager.Attachment(v8, type metadata accessor for GroupSessionAttachmentManager.Attachment);
  *a2 = Strong;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachment.ledger.getter()
{
  v1 = v0 + *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 20);

  return swift_weakLoadStrong();
}

uint64_t GroupSessionAttachmentManager.Attachment.ledger.setter()
{
  v0 = *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 20);
  swift_weakAssign();
}

uint64_t (*GroupSessionAttachmentManager.Attachment.ledger.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 20);
  *a1 = swift_weakLoadStrong();
  return GroupSessionJournal.Attachment.ledger.modify;
}

uint64_t GroupSessionAttachmentManager.Attachment.source.getter()
{
  v1 = v0 + *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 24);
  v2 = *v1;
  outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(*v1, *(v1 + 8));
  return v2;
}

uint64_t GroupSessionAttachmentManager.Attachment.source.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 24);
  result = outlined consume of GroupSessionAttachmentManager.Attachment.AttachmentSource(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[43] = a1;
  v5[44] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v7 = type metadata accessor for Optional();
  v5[49] = v7;
  v8 = *(v7 - 8);
  v5[50] = v8;
  v9 = *(v8 + 64) + 15;
  v5[51] = swift_task_alloc();
  v10 = type metadata accessor for ResolvedTransferRepresentation();
  v5[52] = v10;
  v11 = *(v10 - 8);
  v5[53] = v11;
  v12 = *(v11 + 64) + 15;
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v13 = type metadata accessor for _TransferRepresentationInputs();
  v5[60] = v13;
  v14 = *(v13 - 8);
  v5[61] = v14;
  v15 = *(v14 + 64) + 15;
  v5[62] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[63] = AssociatedTypeWitness;
  v17 = type metadata accessor for _TransferRepresentationValue();
  v5[64] = v17;
  v18 = *(v17 - 8);
  v5[65] = v18;
  v19 = *(v18 + 64) + 15;
  v5[66] = swift_task_alloc();
  v20 = type metadata accessor for _TransferRepresentationOutputs();
  v5[67] = v20;
  v21 = *(v20 - 8);
  v5[68] = v21;
  v22 = *(v21 + 64) + 15;
  v5[69] = swift_task_alloc();
  v23 = *(AssociatedTypeWitness - 8);
  v5[70] = v23;
  v24 = *(v23 + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v25 = type metadata accessor for URL();
  v5[74] = v25;
  v26 = *(v25 - 8);
  v5[75] = v26;
  v27 = *(v26 + 64) + 15;
  v5[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachment.load<A>(_:), 0, 0);
}

uint64_t GroupSessionAttachmentManager.Attachment.load<A>(_:)()
{
  v144 = v0;
  v1 = v0;
  v2 = v0[46];
  v3 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  v4 = (v2 + *(v3 + 24));
  v5 = *v4;
  v0[77] = *v4;
  v6 = v4[1];
  v0[78] = v6;
  v7 = (v6 >> 60) & 3;
  v8 = v6;
  if (!v7)
  {
LABEL_4:
    v121 = v8;
    v0[84] = v8;
    v0[83] = v5;
    v9 = v0[73];
    v10 = v0[72];
    v11 = v0[70];
    logc = v0[68];
    bufa = v0[67];
    v12 = v0[66];
    v13 = v0[63];
    v128 = v0[65];
    v130 = v0[64];
    v14 = v0[61];
    v15 = v0[62];
    v124 = v0[69];
    v126 = v0[60];
    v16 = v0[44];
    v17 = v0[45];
    v122 = v5;
    outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(v5, v6);
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    v120 = *(v11 + 16);
    v120(v10, v9, v13);
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v14 + 8))(v15, v126);
    (*(v128 + 8))(v12, v130);
    v18 = _TransferRepresentationOutputs.storage.getter();
    (logc[1].isa)(v124, bufa);
    v19 = v18;
    log = *(v18 + 16);
    if (log)
    {
      v20 = 0;
      v21 = v0[53];
      v22 = MEMORY[0x1E69E7CC0];
      v1 = v0;
      v131 = v19;
      while (v20 < *(v19 + 16))
      {
        v23 = *(v1 + 59);
        v24 = *(v1 + 57);
        v25 = v1;
        v26 = *(v1 + 52);
        v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v28 = *(v21 + 72);
        (*(v21 + 16))(v23, v19 + v27 + v28 * v20, v26);
        v29 = *(v21 + 32);
        v29(v24, v23, v26);
        v143[0] = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
          v22 = v143[0];
        }

        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        v1 = v25;
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1);
          v22 = v143[0];
        }

        v20 = (v20 + 1);
        v32 = *(v25 + 57);
        v33 = *(v25 + 52);
        *(v22 + 16) = v31 + 1;
        v29(v22 + v27 + v31 * v28, v32, v33);
        v19 = v131;
        if (log == v20)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
      v1 = v0;
LABEL_18:

      if (*(v22 + 16))
      {
        v44 = *(v1 + 53);
        v45 = *(v44 + 16);
        v45(*(v1 + 58), v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), *(v1 + 52));

        v46 = ResolvedTransferRepresentation.importing.getter();
        *(v1 + 85) = v46;
        *(v1 + 86) = v47;
        if (v46)
        {
          v48 = v46;
          v49 = MEMORY[0x1E6965B68];
          *(v1 + 10) = MEMORY[0x1E6969080];
          *(v1 + 11) = v49;
          *(v1 + 7) = v122;
          *(v1 + 8) = v121;
          outlined copy of Data._Representation(v122, v121);
          buf = v48 + *v48;
          v50 = v48[1];
          v51 = swift_task_alloc();
          *(v1 + 87) = v51;
          *v51 = v1;
          v51[1] = GroupSessionAttachmentManager.Attachment.load<A>(_:);

          return (buf)(v1 + 16, v1 + 56);
        }

        if (one-time initialization token for ledger != -1)
        {
          swift_once();
        }

        v69 = *(v1 + 58);
        v70 = *(v1 + 56);
        v71 = *(v1 + 52);
        v72 = type metadata accessor for Logger();
        __swift_project_value_buffer(v72, static Log.ledger);
        v45(v70, v69, v71);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();
        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v1 + 56);
        v78 = *(v1 + 52);
        v77 = *(v1 + 53);
        if (v75)
        {
          logb = v73;
          v80 = *(v1 + 47);
          v79 = *(v1 + 48);
          v81 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v143[0] = v132;
          *v81 = 136315138;
          v45(v79, v76, v78);
          (*(v77 + 56))(v79, 0, 1, v78);
          outlined init with copy of URL?(v79, v80, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          if ((*(v77 + 48))(v80, 1, v78) == 1)
          {
            v82 = 0xE300000000000000;
            v83 = 7104878;
          }

          else
          {
            v90 = *(v1 + 54);
            v89 = *(v1 + 55);
            v91 = v74;
            v93 = *(v1 + 52);
            v92 = *(v1 + 53);
            (*(v92 + 32))(v89, *(v1 + 47), v93);
            v45(v90, v89, v93);
            v83 = String.init<A>(reflecting:)();
            v82 = v94;
            (*(v92 + 8))(v89, v93);
            v74 = v91;
          }

          v95 = *(v1 + 56);
          v97 = *(v1 + 52);
          v96 = *(v1 + 53);
          outlined destroy of NSObject?(*(v1 + 48), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          v98 = v97;
          v88 = *(v96 + 8);
          v88(v95, v98);
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v82, v143);

          *(v81 + 4) = v99;
          _os_log_impl(&dword_1AEE80000, logb, v74, "Failed to find importing closure from representation %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v132);
          MEMORY[0x1B2715BA0](v132, -1, -1);
          MEMORY[0x1B2715BA0](v81, -1, -1);
        }

        else
        {

          v88 = *(v77 + 8);
          v88(v76, v78);
        }

        v100 = *(v1 + 73);
        v101 = *(v1 + 70);
        v102 = *(v1 + 63);
        v103 = v1;
        v104 = *(v1 + 58);
        v105 = *(v103 + 52);
        lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
        swift_allocError();
        *v106 = 0;
        swift_willThrow();
        outlined consume of Data._Representation(v122, v121);
        v107 = v104;
        v1 = v103;
        v88(v107, v105);
        (*(v101 + 8))(v100, v102);
        goto LABEL_38;
      }

      if (one-time initialization token for ledger == -1)
      {
        goto LABEL_24;
      }
    }

    swift_once();
LABEL_24:
    v52 = *(v1 + 73);
    v53 = *(v1 + 71);
    v54 = *(v1 + 63);
    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Log.ledger);
    v120(v53, v52, v54);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v1 + 71);
    v60 = *(v1 + 70);
    v61 = *(v1 + 63);
    if (v58)
    {
      bufb = v1;
      v62 = swift_slowAlloc();
      logd = swift_slowAlloc();
      v143[0] = logd;
      *v62 = 136315138;
      swift_getDynamicType();
      v63 = _typeName(_:qualified:)();
      v65 = v64;
      v66 = *(v60 + 8);
      v66(v59, v61);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v143);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1AEE80000, v56, v57, "Failed to find supported representation for strategy: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(logd);
      MEMORY[0x1B2715BA0](logd, -1, -1);
      v68 = v62;
      v1 = bufb;
      MEMORY[0x1B2715BA0](v68, -1, -1);
    }

    else
    {

      v66 = *(v60 + 8);
      v66(v59, v61);
    }

    v85 = *(v1 + 73);
    v86 = *(v1 + 63);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v87 = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v122, v121);
    v66(v85, v86);
    goto LABEL_38;
  }

  if (v7 == 1)
  {
    v8 = v6 & 0xCFFFFFFFFFFFFFFFLL;
    goto LABEL_4;
  }

  v34 = *(v3 + 20);
  Strong = swift_weakLoadStrong();
  v0[79] = Strong;
  if (!Strong)
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v84 = 2;
    swift_willThrow();
LABEL_38:
    v108 = *(v1 + 76);
    v109 = *(v1 + 73);
    v110 = v1;
    v111 = *(v1 + 72);
    v112 = *(v110 + 71);
    v113 = *(v110 + 69);
    v114 = *(v110 + 66);
    v115 = *(v110 + 62);
    v116 = *(v110 + 58);
    v117 = *(v110 + 59);
    v118 = *(v110 + 57);
    v123 = *(v110 + 56);
    v125 = *(v110 + 55);
    v127 = *(v110 + 54);
    v129 = *(v110 + 51);
    v133 = *(v110 + 48);
    loge = *(v110 + 47);

    v119 = *(v110 + 1);

    return v119();
  }

  v0[80] = *(Strong + 16);
  v36 = *(Strong + 24);
  ObjectType = swift_getObjectType();
  v38 = *(v36 + 48);
  swift_unknownObjectRetain();
  loga = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  v0[81] = v40;
  *v40 = v0;
  v40[1] = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  v41 = v0[76];
  v42 = v0[46];

  return (loga)(v41, v42, ObjectType, v36);
}

{
  v2 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  else
  {
    v3 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v136 = v0;
  v1 = v0[82];
  v2 = v0[80];
  v3 = v0[76];
  swift_unknownObjectRelease();
  v4 = Data.init(contentsOf:options:)();
  v6 = v5;
  v7 = v0[79];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

LABEL_3:
    v11 = v0[76];
    v12 = v0[73];
    v13 = v0[72];
    v14 = v0[71];
    v15 = v0[69];
    v16 = v0[66];
    v17 = v0[62];
    v18 = v0[58];
    v19 = v0[59];
    v20 = v0[57];
    v115 = v0[56];
    v116 = v0[55];
    v118 = v0[54];
    v120 = v0[51];
    v122 = v0[48];
    v124 = v0[47];

    v21 = v0[1];

    return v21();
  }

  (*(v9 + 8))(v8, v10);

  v113 = v4;
  v114 = v6;
  v0[84] = v6;
  v0[83] = v4;
  v23 = v0[73];
  v24 = v0[72];
  v25 = v0[70];
  v130 = v0[67];
  v26 = v0[66];
  v121 = v0[65];
  v123 = v0[68];
  v27 = v0[63];
  v125 = v0[64];
  v29 = v0[61];
  v28 = v0[62];
  v117 = v0[69];
  v119 = v0[60];
  v30 = v0[44];
  v31 = v0[45];
  outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(v0[77], v0[78]);
  dispatch thunk of static Transferable.transferRepresentation.getter();
  swift_getDynamicType();
  v112 = *(v25 + 16);
  v112(v24, v23, v27);
  _TransferRepresentationValue.init(_:)();
  _TransferRepresentationInputs.init()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
  (*(v29 + 8))(v28, v119);
  (*(v121 + 8))(v26, v125);
  v32 = _TransferRepresentationOutputs.storage.getter();
  (*(v123 + 8))(v117, v130);
  v33 = v32;
  v131 = *(v32 + 16);
  if (v131)
  {
    v34 = 0;
    v35 = v0[53];
    v36 = v35 + 32;
    v37 = MEMORY[0x1E69E7CC0];
    v126 = v33;
    v128 = v0;
    while (v34 < *(v33 + 16))
    {
      v38 = v0[59];
      v39 = v0[57];
      v40 = v0;
      v41 = v36;
      v42 = v40[52];
      v43 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v44 = *(v35 + 72);
      (*(v35 + 16))(v38, v33 + v43 + v44 * v34, v42);
      v45 = *(v35 + 32);
      v46 = v42;
      v36 = v41;
      v45(v39, v38, v46);
      v135[0] = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1);
        v37 = v135[0];
      }

      v48 = *(v37 + 16);
      v47 = *(v37 + 24);
      v0 = v128;
      if (v48 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
        v37 = v135[0];
      }

      ++v34;
      v49 = v128[57];
      v50 = v128[52];
      *(v37 + 16) = v48 + 1;
      v45(v37 + v43 + v48 * v44, v49, v50);
      v33 = v126;
      if (v131 == v34)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_16:

  if (!*(v37 + 16))
  {

    if (one-time initialization token for ledger == -1)
    {
LABEL_22:
      v59 = v0[73];
      v60 = v0[71];
      v61 = v0[63];
      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Log.ledger);
      v112(v60, v59, v61);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      v65 = os_log_type_enabled(v63, v64);
      v66 = v0[71];
      v67 = v0[70];
      v68 = v0[63];
      if (v65)
      {
        v129 = v0;
        v69 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v135[0] = v133;
        *v69 = 136315138;
        swift_getDynamicType();
        v70 = _typeName(_:qualified:)();
        v72 = v71;
        v73 = *(v67 + 8);
        v73(v66, v68);
        v74 = v73;
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v135);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_1AEE80000, v63, v64, "Failed to find supported representation for strategy: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v133);
        MEMORY[0x1B2715BA0](v133, -1, -1);
        v0 = v129;
        MEMORY[0x1B2715BA0](v69, -1, -1);

        v76 = v74;
      }

      else
      {

        v76 = *(v67 + 8);
        v76(v66, v68);
      }

      v92 = v0[73];
      v93 = v0[63];
      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v94 = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v113, v114);
      v76(v92, v93);
      goto LABEL_3;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

  v51 = v0[53];
  v52 = *(v51 + 16);
  v52(v0[58], v37 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v0[52]);

  v53 = ResolvedTransferRepresentation.importing.getter();
  v0[85] = v53;
  v0[86] = v54;
  if (!v53)
  {
    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v77 = v0[58];
    v78 = v0[56];
    v79 = v0[52];
    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Log.ledger);
    v52(v78, v77, v79);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v0[56];
    v86 = v0[52];
    v85 = v0[53];
    if (v83)
    {
      v134 = v82;
      v88 = v0[47];
      v87 = v0[48];
      v89 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v135[0] = v127;
      *v89 = 136315138;
      v52(v87, v84, v86);
      (*(v85 + 56))(v87, 0, 1, v86);
      outlined init with copy of URL?(v87, v88, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v85 + 48))(v88, 1, v86) == 1)
      {
        v90 = 0xE300000000000000;
        v91 = 7104878;
      }

      else
      {
        v96 = v0[54];
        v97 = v0[55];
        v99 = v0[52];
        v98 = v0[53];
        (*(v98 + 32))(v97, v0[47], v99);
        v52(v96, v97, v99);
        v91 = String.init<A>(reflecting:)();
        v90 = v100;
        (*(v98 + 8))(v97, v99);
      }

      v101 = v0[56];
      v103 = v0[52];
      v102 = v0[53];
      outlined destroy of NSObject?(v0[48], &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v104 = v103;
      v95 = *(v102 + 8);
      v95(v101, v104);
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v90, v135);

      *(v89 + 4) = v105;
      _os_log_impl(&dword_1AEE80000, v81, v134, "Failed to find importing closure from representation %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x1B2715BA0](v127, -1, -1);
      MEMORY[0x1B2715BA0](v89, -1, -1);
    }

    else
    {

      v95 = *(v85 + 8);
      v95(v84, v86);
    }

    v106 = v0[73];
    v107 = v0[70];
    v108 = v0[63];
    v109 = v0[58];
    v110 = v0[52];
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v111 = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v113, v114);
    v95(v109, v110);
    (*(v107 + 8))(v106, v108);
    goto LABEL_3;
  }

  v55 = v53;
  v56 = MEMORY[0x1E6965B68];
  v0[10] = MEMORY[0x1E6969080];
  v0[11] = v56;
  v0[7] = v113;
  v0[8] = v114;
  outlined copy of Data._Representation(v113, v114);
  v132 = (v55 + *v55);
  v57 = v55[1];
  v58 = swift_task_alloc();
  v0[87] = v58;
  *v58 = v0;
  v58[1] = GroupSessionAttachmentManager.Attachment.load<A>(_:);

  return (v132)(v0 + 2, v0 + 7);
}

{
  v1 = v0[80];
  v2 = v0[79];

  swift_unknownObjectRelease();
  v21 = v0[82];
  v3 = v0[76];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[62];
  v11 = v0[58];
  v10 = v0[59];
  v12 = v0[57];
  v15 = v0[56];
  v16 = v0[55];
  v17 = v0[54];
  v18 = v0[51];
  v19 = v0[48];
  v20 = v0[47];

  v13 = v0[1];

  return v13();
}

{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v6 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v4 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v4 = GroupSessionAttachmentManager.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v76 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 352);
  outlined init with copy of Transferable(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 672);
    v5 = *(v0 + 664);
    v53 = *(v0 + 584);
    v54 = *(v0 + 608);
    v55 = *(v0 + 576);
    v56 = *(v0 + 568);
    v6 = *(v0 + 560);
    v57 = *(v0 + 552);
    v58 = *(v0 + 528);
    v52 = *(v0 + 504);
    v7 = *(v0 + 464);
    v59 = *(v0 + 496);
    v60 = *(v0 + 472);
    v62 = *(v0 + 456);
    v64 = *(v0 + 448);
    v66 = *(v0 + 440);
    v68 = *(v0 + 432);
    v8 = *(v0 + 416);
    v9 = *(v0 + 424);
    v10 = *(v0 + 408);
    v71 = *(v0 + 384);
    v74 = *(v0 + 376);
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 680));
    outlined consume of Data._Representation(v5, v4);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v9 + 8))(v7, v8);
    v13 = *(v11 - 8);
    (*(v13 + 56))(v10, 0, 1, v11);
    (*(v13 + 32))(v12, v10, v11);
    (*(v6 + 8))(v53, v52);

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 400);
    v15 = *(v0 + 408);
    v17 = *(v0 + 392);
    (*(*(*(v0 + 352) - 8) + 56))(v15, 1, 1);
    (*(v16 + 8))(v15, v17);
    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.ledger);
    outlined init with copy of Transferable(v0 + 16, v0 + 136);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v75[0] = v22;
      *v21 = 136315394;
      outlined init with copy of Transferable(v0 + 136, v0 + 176);
      outlined init with copy of URL?(v0 + 176, v0 + 216, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
      if (*(v0 + 240))
      {
        outlined init with take of Transferable((v0 + 216), v0 + 256);
        outlined init with copy of Transferable(v0 + 256, v0 + 296);
        v23 = String.init<A>(reflecting:)();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = *(v0 + 352);
      outlined destroy of NSObject?(v0 + 176, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v75);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      *(v0 + 336) = v26;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v29 = >> prefix<A>(_:)(v0 + 336, MetatypeMetadata);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v75);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_1AEE80000, v19, v20, "Failed to convert %s to %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v22, -1, -1);
      MEMORY[0x1B2715BA0](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    v32 = *(v0 + 688);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v35 = *(v0 + 664);
    v36 = *(v0 + 560);
    v69 = *(v0 + 504);
    v72 = *(v0 + 584);
    v37 = *(v0 + 464);
    v38 = *(v0 + 416);
    v39 = *(v0 + 424);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v33);
    outlined consume of Data._Representation(v35, v34);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v39 + 8))(v37, v38);
    (*(v36 + 8))(v72, v69);
    v41 = *(v0 + 608);
    v42 = *(v0 + 584);
    v43 = *(v0 + 576);
    v44 = *(v0 + 568);
    v45 = *(v0 + 552);
    v46 = *(v0 + 528);
    v47 = *(v0 + 496);
    v48 = *(v0 + 464);
    v49 = *(v0 + 472);
    v50 = *(v0 + 456);
    v61 = *(v0 + 448);
    v63 = *(v0 + 440);
    v65 = *(v0 + 432);
    v67 = *(v0 + 408);
    v70 = *(v0 + 384);
    v73 = *(v0 + 376);

    v14 = *(v0 + 8);
  }

  return v14();
}

{
  v1 = v0[86];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[63];
  v7 = v0[58];
  v8 = v0[52];
  v9 = v0[53];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[85]);
  outlined consume of Data._Representation(v3, v2);
  (*(v9 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v5 + 8))(v4, v6);
  v28 = v0[88];
  v10 = v0[76];
  v11 = v0[73];
  v12 = v0[72];
  v13 = v0[71];
  v14 = v0[69];
  v15 = v0[66];
  v16 = v0[62];
  v18 = v0[58];
  v17 = v0[59];
  v19 = v0[57];
  v22 = v0[56];
  v23 = v0[55];
  v24 = v0[54];
  v25 = v0[51];
  v26 = v0[48];
  v27 = v0[47];

  v20 = v0[1];

  return v20();
}

uint64_t GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:), 0, 0);
}

uint64_t GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:)()
{
  v1 = v0[3];
  v2 = *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 20);
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v0[8] = *(Strong + 16);
    v4 = *(Strong + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    swift_unknownObjectRetain();
    v15 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:);
    v9 = v0[6];
    v10 = v0[2];

    return v15(v9, v10, ObjectType, v4);
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:);
  }

  else
  {
    v3 = GroupSessionAttachmentManager.Attachment.loadDataFromAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  swift_unknownObjectRelease();
  v4 = Data.init(contentsOf:options:)();
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  if (v1)
  {
    (*(v9 + 8))(v0[6], v0[4]);

    v10 = v0[6];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v4;
    v14 = v5;
    (*(v9 + 8))(v0[6], v0[4]);

    v15 = v0[1];

    return v15(v13, v14);
  }
}

{
  v1 = v0[7];
  v2 = v0[8];

  swift_unknownObjectRelease();
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t GroupSessionAttachmentManager.Attachment.loadMetadata<A>(of:)()
{
  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachment.loadMetadata<A>(of:), 0, 0);
}

{
  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t GroupSessionAttachmentManager.Attachments.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR);
  v3 = swift_allocObject();

  v4 = swift_slowAlloc();
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *(v3 + 72) = static Subscribers.Demand.none.getter();
  *v4 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR);
  Publisher.subscribe<A>(_:)();

  *a1 = v3;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachments.Iterator.baseIterator.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GroupSessionAttachmentManager.Attachments.Iterator.next()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](GroupSessionAttachmentManager.Attachments.Iterator.next(), 0, 0);
}

{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x1E69E88F0] + 4);

  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMR);
  *v5 = v0;
  v5[1] = GroupSessionJournal.Attachments.Iterator.next();

  return MEMORY[0x1EEE6DE18](v0 + 2, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v3, partial apply for specialized closure #1 in _PublisherElements.Iterator.next(), v2, 0, 0, v6);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionAttachmentManager.Attachments.Iterator(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionAttachmentManager.Attachments.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionAttachmentManager.Attachments.Iterator()
{
  v1 = v0[4];
  v2 = *v1;
  v0[5] = *v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x1E69E88F0] + 4);

  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGSgMR);
  *v5 = v0;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator;

  return MEMORY[0x1EEE6DE18](v0 + 2, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v6);
}

uint64_t _s15GroupActivities0A24SessionAttachmentManagerC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E24SessionAttachmentManagerC11AttachmentsV8IteratorV_Tg5(a2, a3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSessionAttachmentManager.Attachments@<X0>(uint64_t *a1@<X8>)
{
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR);
  v3 = swift_allocObject();

  v4 = swift_slowAlloc();
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *(v3 + 72) = static Subscribers.Demand.none.getter();
  *v4 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0J0VGs5NeverOG__GMR);
  Publisher.subscribe<A>(_:)();

  *a1 = v3;
}

uint64_t key path getter for GroupSessionAttachmentManager._attachments : GroupSessionAttachmentManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GroupSessionAttachmentManager._attachments : GroupSessionAttachmentManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined init with take of GroupSessionAttachmentManager.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionAttachmentManager.Attachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *specialized GroupSessionAttachmentManager.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  v10 = swift_allocObject();

  return specialized GroupSessionAttachmentManager.init(transportSession:)(a1, v10, a3, a4);
}

char *specialized GroupSessionAttachmentManager.init(transportSession:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D24SessionAttachmentManagerC0G0VG_GMR);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMR);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMd, &_s7Combine9PublishedVySay15GroupActivities0C24SessionAttachmentManagerC0F0VGGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  *(a2 + 4) = 0;
  v23 = OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager___attachments;
  v40 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMR);
  Published.init(initialValue:)();
  (*(v19 + 32))(&a2[v23], v22, v18);
  *&a2[OBJC_IVAR____TtC15GroupActivities29GroupSessionAttachmentManager_cancellables] = MEMORY[0x1E69E7CD0];
  *(a2 + 2) = a1;
  *(a2 + 3) = a4;
  v40 = (*(a4 + 24))(v34, a4);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  v34 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  Publisher.map<A>(_:)();

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID], Never>, [GroupSessionAttachmentManager.Attachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I24SessionAttachmentManagerC0L0VGGMR);
  v24 = v35;
  Publisher<>.assign(to:)();
  (*(v36 + 8))(v17, v24);
  v25 = v38;
  v26 = v39;
  (*(v38 + 16))(v37, v12, v39);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v25 + 8))(v12, v26);
  v27 = *(a2 + 2);
  v28 = *(a2 + 3);
  ObjectType = swift_getObjectType();
  v40 = (*(v28 + 32))(ObjectType, v28);
  v30 = swift_allocObject();
  swift_weakInit();

  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #2 in GroupSessionAttachmentManager.init(transportSession:);
  *(v31 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(UUID, URL, Participant), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a2;
}

uint64_t outlined copy of GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return outlined copy of Data._Representation(result, a2);
}

uint64_t outlined consume of GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return outlined consume of Data._Representation(result, a2);
}

unint64_t lazy protocol witness table accessor for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator()
{
  result = lazy protocol witness table cache variable for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator;
  if (!lazy protocol witness table cache variable for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionAttachmentManager.Attachments.Iterator and conformance GroupSessionAttachmentManager.Attachments.Iterator);
  }

  return result;
}

void type metadata completion function for GroupSessionAttachmentManager()
{
  type metadata accessor for Published<[GroupSessionAttachmentManager.Attachment]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[GroupSessionAttachmentManager.Attachment]>()
{
  if (!lazy cache variable for type metadata for Published<[GroupSessionAttachmentManager.Attachment]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMd, &_sSay15GroupActivities0A24SessionAttachmentManagerC0D0VGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[GroupSessionAttachmentManager.Attachment]>);
    }
  }
}

uint64_t type metadata completion function for GroupSessionAttachmentManager.Attachment()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A24SessionAttachmentManagerC0D0V0D6SourceO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t getEnumTagSinglePayload for GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionAttachmentManager.Attachment.AttachmentSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1AF012B10;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for GroupSessionAttachmentManager.Attachment.AttachmentSource(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t _s10Foundation4UUIDVAA3URLV15GroupActivities11ParticipantVIegnnn_AC_AeHtIegn_TRTA_0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  return v4(a1, a1 + *(v5 + 48), a1 + *(v5 + 64));
}

uint64_t outlined init with copy of GroupSessionAttachmentManager.Attachment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GroupSessionAttachmentManager.Attachment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *Participant.init(handle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  UUID.init()();
  result = type metadata accessor for Participant();
  v7 = (a3 + result[5]);
  *v7 = a1;
  v7[1] = a2;
  *(a3 + result[6]) = 0;
  *(a3 + result[8]) = 0;
  v8 = (a3 + result[7]);
  *v8 = 0;
  v8[1] = 0;
  *(a3 + result[9]) = 0;
  return result;
}

uint64_t Participant.asNearbyParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Participant();
  v4 = v3[6];
  v5 = *(v1 + v4);
  v6 = (v1 + v3[5]);
  v8 = *v6;
  v7 = v6[1];
  v9 = (v1 + v3[7]);
  v11 = *v9;
  v10 = v9[1];
  *(a1 + v4) = v5;

  result = UUID.init(_:)();
  v13 = (a1 + v3[5]);
  *v13 = v8;
  v13[1] = v7;
  v14 = (a1 + v3[7]);
  *v14 = v11;
  v14[1] = v10;
  *(a1 + v3[8]) = 1;
  *(a1 + v3[9]) = 0;
  return result;
}

int *Participant.init(serverIdentifier:handle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init(_:)();
  result = type metadata accessor for Participant();
  *(a4 + result[6]) = a1;
  v9 = (a4 + result[5]);
  *v9 = a2;
  v9[1] = a3;
  *(a4 + result[8]) = 0;
  v10 = (a4 + result[7]);
  *v10 = 0;
  v10[1] = 0;
  *(a4 + result[9]) = 0;
  return result;
}

uint64_t Participant.init(serverIdentifier:handle:stableDeviceIdentifier:isNearbyWithLocalParticipant:isConnectedToCommunalDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for Participant();
  *(a8 + v16[6]) = a1;
  result = UUID.init(_:)();
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a3)
  {
    v19 = a3;
  }

  v20 = (a8 + v16[5]);
  *v20 = v18;
  v20[1] = v19;
  v21 = (a8 + v16[7]);
  *v21 = a4;
  v21[1] = a5;
  *(a8 + v16[8]) = a6;
  *(a8 + v16[9]) = a7;
  return result;
}

id Participant.cpParticipant.getter()
{
  v1 = type metadata accessor for Participant();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_allocWithZone(MEMORY[0x1E6997710]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = MEMORY[0x1B2714130](v3, v4);
  v8 = [v5 initWithUUID:isa accountIdentifier:v7];

  [v8 _setParticipantIdentifier_];
  return v8;
}

int *Participant.init(id:handle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  v10 = UUID.uint64Value.getter();
  (*(v9 + 8))(a1, v8);
  result = type metadata accessor for Participant();
  *(a4 + result[6]) = v10;
  v12 = (a4 + result[5]);
  *v12 = a2;
  v12[1] = a3;
  v13 = (a4 + result[7]);
  *v13 = 0;
  v13[1] = 0;
  *(a4 + result[8]) = 0;
  *(a4 + result[9]) = 0;
  return result;
}

uint64_t Participant.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Participant.handle.getter()
{
  v1 = (v0 + *(type metadata accessor for Participant() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Participant.stableDeviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Participant() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Participant.isNearbyWithLocalParticipant.setter(char a1)
{
  result = type metadata accessor for Participant();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Participant.isConnectedToCommunalDevice.setter(char a1)
{
  result = type metadata accessor for Participant();
  *(v1 + *(result + 36)) = a1;
  return result;
}

int *Participant.init(cpParticipant:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 participantIdentifier];
  v5 = [a1 accountIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  UUID.init(_:)();
  result = type metadata accessor for Participant();
  *(a2 + result[6]) = v4;
  v10 = (a2 + result[5]);
  *v10 = v6;
  v10[1] = v8;
  *(a2 + result[8]) = 0;
  v11 = (a2 + result[7]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + result[9]) = 0;
  return result;
}

void Participant.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for Participant();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  String.hash(into:)();
  MEMORY[0x1B2715070](*(v0 + v1[6]));
  v5 = (v0 + v1[7]);
  if (v5[1])
  {
    v6 = *v5;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + v1[8]));
  Hasher._combine(_:)(*(v0 + v1[9]));
}

Swift::Int Participant.hashValue.getter()
{
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Participant()
{
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Participant()
{
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  return Hasher._finalize()();
}

unint64_t Participant.description.getter()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v1);

  v2 = type metadata accessor for Participant();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x1B27141F0]();
    MEMORY[0x1B27141F0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  }

  v7 = (v0 + v2[7]);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    _StringGuts.grow(_:)(28);

    MEMORY[0x1B27141F0](v9, v8);
    MEMORY[0x1B27141F0](0xD00000000000001ALL, 0x80000001AF01C500);
  }

  if (*(v0 + v2[8]) == 1)
  {
    MEMORY[0x1B27141F0](0xD000000000000024, 0x80000001AF01C4D0);
  }

  if (*(v0 + v2[9]) == 1)
  {
    MEMORY[0x1B27141F0](0xD000000000000023, 0x80000001AF01C4A0);
  }

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t specialized static Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = type metadata accessor for Participant();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_18;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
    goto LABEL_18;
  }

  if (*(a1 + v4[8]) == *(a2 + v4[8]))
  {
    v16 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
    return v16 & 1;
  }

LABEL_18:
  v16 = 0;
  return v16 & 1;
}

uint64_t static BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AF00DBA0;
  v7 = a1;
  (*(a3 + 8))();
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v6 + 16);
    outlined copy of Data._Representation(v7, *(v6 + 24));
  }

  return v7;
}

double BinaryEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_1AF00DBA0;
  return result;
}

uint64_t BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in BinaryEncoder.encode<A>(_:), 0, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], MEMORY[0x1E69E7410], a8);
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return outlined consume of Data._Representation(v9, v10);
}

uint64_t closure #1 in BinaryEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t BinaryEncoder.encode(_:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6[0] = UUID.uuid.getter();
  v6[1] = v0;
  v1 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v6, v7);
  v3 = v2;
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  result = outlined consume of Data._Representation(v1, v3);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

{
  swift_beginAccess();
  Data.append(_:)();
  return swift_endAccess();
}

uint64_t BinaryEncoder.encode<A>(_:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = &v12 - v3;
  dispatch thunk of RawRepresentable.rawValue.getter();
  BinaryEncoder.encode<A>(_:)(v4, AssociatedTypeWitness, v5, v6, v7, v8, v9, v10);
  return (*(v1 + 8))(v4, AssociatedTypeWitness);
}

uint64_t BinaryEncoder.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double BinaryEncoder.init()()
{
  result = 0.0;
  *(v0 + 16) = xmmword_1AF00DBA0;
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t IdentifiableGroupActivity.uuid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v19 = *(v21 - 8);
  v7 = *(v19 + 64);
  v8 = MEMORY[0x1EEE9AC00](v21);
  v18[2] = v18 - v9;
  v22 = *(a1 - 8);
  v10 = *(v22 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  v20 = v5;
  dispatch thunk of Identifiable.id.getter();
  v16 = type metadata accessor for UUID();
  swift_getAssociatedConformanceWitness();
  default argument 0 of static SharableObjectIdentifier.identifier<A, B>(ofType:with:)(AssociatedTypeWitness, v16);
  v23 = a3;
  static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

id XPCWrapper.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized XPCWrapper.init(_:)(a1);
  (*(*(*(v1 + 10) - 8) + 8))(a1);
  return v4;
}

id XPCWrapper.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized XPCWrapper.init(_:)(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

Swift::Void __swiftcall XPCWrapper.encode(with:)(NSCoder with)
{
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  v4 = *v3;
  v5 = v3[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = MEMORY[0x1B2714130](1635017060, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v7];
}

void @objc XPCWrapper.encode(with:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  XPCWrapper.encode(with:)(v4);
}

id XPCWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & *v1);
  v6 = v5[10];
  v7 = type metadata accessor for Optional();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v35 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v35 - v14;
  type metadata accessor for NSData();
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v16 && (v37 = v12, v40 = xmmword_1AF011260, v17 = v16, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v17, v18 = *(&v40 + 1), *(&v40 + 1) >> 60 != 15))
  {
    v19 = v40;
    v20 = type metadata accessor for JSONDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v35[1] = v5[11];
    v36 = v19;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v28 = v37;
    (*(v37 + 56))(v11, 0, 1, v6);
    v29 = *(v28 + 32);
    v29(v15, v11, v6);
    v30 = MEMORY[0x1E69E7D40];
    v31 = &v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x70)];
    *v31 = v36;
    *(v31 + 1) = v18;
    v29(&v2[*((*v30 & *v2) + 0x68)], v15, v6);
    v32 = v5[12];
    v33 = type metadata accessor for XPCWrapper();
    v39.receiver = v2;
    v39.super_class = v33;
    v34 = objc_msgSendSuper2(&v39, sel_init);

    return v34;
  }

  else
  {

    v23 = v5[11];
    v24 = v5[12];
    type metadata accessor for XPCWrapper();
    v25 = *((*v4 & *v2) + 0x30);
    v26 = *((*v4 & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id XPCWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void XPCWrapper.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  specialized XPCWrapper.init()();
}

void @objc XPCWrapper.init()(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  specialized XPCWrapper.init()();
}

id XPCWrapper.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for XPCWrapper();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t @objc XPCWrapper.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  v3 = &a1[*((*v2 & *a1) + 0x70)];
  v4 = *v3;
  v5 = v3[1];

  return outlined consume of Data._Representation(v4, v5);
}

id specialized XPCWrapper.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v23 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *((v3 & v2) + 0x68);
  v5 = *((v3 & v2) + 0x50);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v10 = *((v3 & v2) + 0x60);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v21)
  {

    (*(v6 + 8))(&v1[v4], v5);
    v13 = *(v23 + 88);
    type metadata accessor for XPCWrapper();
    v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v11;
    v18 = v12;

    v19 = &v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)];
    *v19 = v17;
    v19[1] = v18;
    v20 = *(v23 + 88);
    v22.receiver = v1;
    v22.super_class = type metadata accessor for XPCWrapper();
    return objc_msgSendSuper2(&v22, sel_init);
  }
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t type metadata completion function for XPCWrapper(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = 0;
  v10 = *(a5 + 8);
  outlined copy of Data._Representation(a2, a3);
  return v10(v9, a4, a5);
}

uint64_t BinaryDecoder.isAtEnd.getter()
{
  v1 = v0[4];
  result = swift_beginAccess();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2)
    {
      return v1 >= v6;
    }

    v8 = v3 + 16;
    v3 = *(v3 + 16);
    v7 = *(v8 + 8);
    v9 = __OFSUB__(v7, v3);
    v6 = v7 - v3;
    if (!v9)
    {
      return v1 >= v6;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    return v1 >= v6;
  }

  v9 = __OFSUB__(HIDWORD(v3), v3);
  v10 = HIDWORD(v3) - v3;
  if (!v9)
  {
    v6 = v10;
    return v1 >= v6;
  }

  __break(1u);
  return result;
}

uint64_t BinaryDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(*(*(a2 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v43 = a3;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v11 = result / 8;
  v12 = *(a1 - 8);
  if (result / 8 != *(v12 + 64))
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v20 = v19;
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1B27141F0](0xD000000000000018, 0x80000001AF01C5A0);
    v21 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v21);

    MEMORY[0x1B27141F0](0xD00000000000003FLL, 0x80000001AF01C5C0);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B00], v18);
LABEL_28:
    swift_willThrow();
    return (*(v12 + 8))(v43, a1);
  }

  v13 = v3[4];
  if (__OFADD__(v13, v11))
  {
    __break(1u);
    goto LABEL_30;
  }

  result = swift_beginAccess();
  v14 = v4[2];
  v15 = v4[3];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_13;
    }

    v23 = v14 + 16;
    v14 = *(v14 + 16);
    v22 = *(v23 + 8);
    v24 = __OFSUB__(v22, v14);
    v17 = v22 - v14;
    if (!v24)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v15);
    goto LABEL_13;
  }

  v24 = __OFSUB__(HIDWORD(v14), v14);
  v25 = HIDWORD(v14) - v14;
  if (v24)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v17 = v25;
LABEL_13:
  if (__OFSUB__(v17, v13))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v17 - v13 >= v11)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v41 - 4) = v11;
    *(&v41 - 3) = v4;
    *(&v41 - 2) = v13;
    *(&v41 - 1) = v13 + v11;
    result = _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v43, partial apply for closure #1 in BinaryDecoder.decode<A>(_:), (&v41 - 6), a1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v33);
    v34 = v4[4];
    v24 = __OFADD__(v34, v11);
    v35 = v34 + v11;
    if (!v24)
    {
      v4[4] = v35;
      return result;
    }

    goto LABEL_31;
  }

  v26 = type metadata accessor for DecodingError();
  swift_allocError();
  v42 = v27;
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  MEMORY[0x1B27141F0](0xD00000000000002ALL, 0x80000001AF01C600);
  v28 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v28);

  result = MEMORY[0x1B27141F0](0x766168206557202ELL, 0xEA00000000002065);
  v29 = v4[2];
  v30 = v4[3];
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    v32 = 0;
    if (v31 != 2 || (v37 = v29 + 16, v29 = *(v29 + 16), v36 = *(v37 + 8), v24 = __OFSUB__(v36, v29), v32 = v36 - v29, !v24))
    {
LABEL_26:
      if (!__OFSUB__(v32, v4[4]))
      {
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v39);

        MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01C630);
        v48 = v11;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v40);

        MEMORY[0x1B27141F0](0x2E736574796220, 0xE700000000000000);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v26 - 8) + 104))(v42, *MEMORY[0x1E69E6B00], v26);
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else if (!v31)
  {
    v32 = BYTE6(v30);
    goto LABEL_26;
  }

  v24 = __OFSUB__(HIDWORD(v29), v29);
  v38 = HIDWORD(v29) - v29;
  if (!v24)
  {
    v32 = v38;
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t closure #1 in BinaryDecoder.decode<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - result;
  if (!result)
  {
    v6 = 0;
  }

  if (v6 == a3)
  {
    swift_beginAccess();
    result = *(a4 + 16);
    v10 = result;
    v11 = *(a4 + 24);
    if (a6 >= a5)
    {
      outlined copy of Data._Representation(result, *(a4 + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
      DataProtocol.copyBytes<A>(to:from:)();
      return outlined consume of Data._Representation(v10, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t BinaryDecoder.decode(_:)()
{
  v1 = v0;
  v29 = *MEMORY[0x1E69E9840];
  v2 = v0[4];
  if (__OFADD__(v2, 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    goto LABEL_11;
  }

  LODWORD(v6) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v6 = v6;
LABEL_11:
  v9 = __OFSUB__(v6, v2);
  v10 = v6 - v2;
  if (v9)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10 < 16)
  {
    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    _StringGuts.grow(_:)(102);
    MEMORY[0x1B27141F0](0xD00000000000003ALL, 0x80000001AF01C660);
    v14 = v1[2];
    v15 = v1[3];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      v17 = 0;
      if (v16 != 2 || (v22 = v14 + 16, v14 = *(v14 + 16), v21 = *(v22 + 8), v9 = __OFSUB__(v21, v14), v17 = v21 - v14, !v9))
      {
LABEL_25:
        if (!__OFSUB__(v17, v1[4]))
        {
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1B27141F0](v24);

          MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01C630);
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1B27141F0](v25);

          MEMORY[0x1B27141F0](0x2E736574796220, 0xE700000000000000);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B00], v11);
          result = swift_willThrow();
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v15);
      goto LABEL_25;
    }

    v9 = __OFSUB__(HIDWORD(v14), v14);
    v23 = HIDWORD(v14) - v14;
    if (v9)
    {
      goto LABEL_34;
    }

    v17 = v23;
    goto LABEL_25;
  }

  v27 = v3;
  v28 = v4;
  if (v2 + 16 < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v27, v28);
  v18 = v1[4];
  v9 = __OFADD__(v18, 16);
  v19 = v18 + 16;
  if (v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1[4] = v19;
  result = UUID.init(uuid:)();
LABEL_27:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>);
  }

  return result;
}

uint64_t BinaryDecoder.decode(_:encoding:delimiter:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = v2[2];
  v10 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AF00CA60;
  *(v11 + 32) = a2;
  outlined copy of Data._Representation(v9, v10);
  v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v11);
  v14 = v13;

  v17 = v2[3];
  v16 = v2[4];
  v18 = v2[2];
  v19 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    v20 = 0;
    if (v19 != 2)
    {
      goto LABEL_10;
    }

    v22 = v18 + 16;
    v18 = *(v18 + 16);
    v21 = *(v22 + 8);
    v20 = v21 - v18;
    if (!__OFSUB__(v21, v18))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(v17);
    goto LABEL_10;
  }

  v23 = __OFSUB__(HIDWORD(v18), v18);
  v24 = HIDWORD(v18) - v18;
  if (v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = v24;
LABEL_10:
  if (v20 < v16)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v48 = v5;
  v25 = a1;
  v26 = Data.range(of:options:in:)();
  v28 = v27;
  outlined consume of Data._Representation(v12, v14);
  result = outlined consume of Data._Representation(v9, v10);
  if (v28)
  {
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B00], v29);
    swift_willThrow();
    return v6;
  }

  v32 = v2[4];
  if (v26 < v32)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v33 = specialized Data.subscript.getter(v32, v26, v2[2], v2[3]);
  v35 = v34;
  swift_endAccess();
  v49 = v33;
  v50 = v35;
  (*(v6 + 16))(v51, v25, v48);
  lazy protocol witness table accessor for type Data and conformance Data();
  v36 = String.init<A>(bytes:encoding:)();
  if (!v37)
  {
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x1B27141F0](0xD000000000000027, 0x80000001AF01C6D0);
    lazy protocol witness table accessor for type String.Encoding and conformance String.Encoding();
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B27141F0](v42);

    MEMORY[0x1B27141F0](0x6E69646F636E6520, 0xEA00000000002E67);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v41, *MEMORY[0x1E69E6B00], v6);
    swift_willThrow();
    outlined consume of Data._Representation(v33, v35);
    return v6;
  }

  v6 = v36;
  v38 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v38 == 2)
    {
      v44 = *(v33 + 16);
      v43 = *(v33 + 24);
      result = outlined consume of Data._Representation(v33, v35);
      v39 = v43 - v44;
      if (__OFSUB__(v43, v44))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      result = outlined consume of Data._Representation(v33, v35);
      v39 = 0;
    }

LABEL_26:
    v45 = v2[4];
    v23 = __OFADD__(v45, v39);
    v46 = v45 + v39;
    if (!v23)
    {
      v2[4] = v46;
      return v6;
    }

    goto LABEL_31;
  }

  if (!v38)
  {
    result = outlined consume of Data._Representation(v33, v35);
    v39 = BYTE6(v35);
    goto LABEL_26;
  }

LABEL_23:
  result = outlined consume of Data._Representation(v33, v35);
  LODWORD(v39) = HIDWORD(v33) - v33;
  if (!__OFSUB__(HIDWORD(v33), v33))
  {
    v39 = v39;
    goto LABEL_26;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t specialized Data.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return Data._Representation.subscript.getter();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t BinaryDecoder.decode(_:length:)(uint64_t result)
{
  v2 = v1;
  v3 = v1[4];
  v4 = v3 + result;
  if (__OFADD__(v3, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = result;
  result = swift_beginAccess();
  v6 = v2[2];
  v7 = v2[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v10 = *(v11 + 8);
    v12 = __OFSUB__(v10, v6);
    v9 = v10 - v6;
    if (!v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    goto LABEL_11;
  }

  v12 = __OFSUB__(HIDWORD(v6), v6);
  v13 = HIDWORD(v6) - v6;
  if (v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v13;
LABEL_11:
  if (__OFSUB__(v9, v3))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v9 - v3 >= v5)
  {
    v2[4] = v4;
    if (v4 >= v3)
    {
      swift_beginAccess();
      v21 = v2[2];
      v22 = v2[3];
      v23 = Data._Representation.subscript.getter();
      swift_endAccess();
      return v23;
    }

    goto LABEL_29;
  }

  v14 = type metadata accessor for DecodingError();
  swift_allocError();
  v16 = v15;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(100);
  result = MEMORY[0x1B27141F0](0xD000000000000038, 0x80000001AF01C700);
  v17 = v2[2];
  v18 = v2[3];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    v20 = 0;
    if (v19 != 2 || (v25 = v17 + 16, v17 = *(v17 + 16), v24 = *(v25 + 8), v12 = __OFSUB__(v24, v17), v20 = v24 - v17, !v12))
    {
LABEL_24:
      if (!__OFSUB__(v20, v2[4]))
      {
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v27);

        MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01C630);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B27141F0](v28);

        v23 = v29;
        MEMORY[0x1B27141F0](0x2E736574796220, 0xE700000000000000);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B00], v14);
        swift_willThrow();
        return v23;
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(v18);
    goto LABEL_24;
  }

  v12 = __OFSUB__(HIDWORD(v17), v17);
  v26 = HIDWORD(v17) - v17;
  if (!v12)
  {
    v20 = v26;
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t BinaryDecoder.decodeRemainder()()
{
  v1 = v0[4];
  result = swift_beginAccess();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v5)
    {
      v9 = __OFSUB__(HIDWORD(v3), v3);
      v16 = HIDWORD(v3) - v3;
      if (v9)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if (v1 >= v16)
      {
        return 0;
      }
    }

    else if (v1 >= BYTE6(v4))
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    if (v1 < 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v8 = v3 + 16;
  v6 = *(v3 + 16);
  v7 = *(v8 + 8);
  v9 = __OFSUB__(v7, v6);
  v10 = v7 - v6;
  if (v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 >= v10)
  {
    return 0;
  }

LABEL_8:
  result = swift_beginAccess();
  v11 = v0[2];
  v12 = v0[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    v14 = 0;
    v15 = 0;
    if (v13 == 2)
    {
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
    }
  }

  else
  {
    if (v13)
    {
      v14 = v11 >> 32;
    }

    else
    {
      v14 = BYTE6(v12);
    }

    if (v13)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v14 < v1 || v14 < v15)
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = Data._Representation.subscript.getter();
  swift_endAccess();
  return v17;
}

uint64_t BinaryDecoder.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t BinaryDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);

  return v5(v6, a2, a3);
}

uint64_t BinaryDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[0] = a4;
  v23[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v23 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v15 = v24;
  result = BinaryDecoder.decode<A>(_:)(AssociatedTypeWitness, a3, v9);
  if (!v15)
  {
    v17 = v23[0];
    v24 = 0;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v18 = *(a2 - 8);
    if ((*(v18 + 48))(v14, 1, a2) == 1)
    {
      (*(v11 + 8))(v14, v10);
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      v23[2] = 0;
      v23[3] = 0xE000000000000000;
      _StringGuts.grow(_:)(81);
      MEMORY[0x1B27141F0](0xD000000000000034, 0x80000001AF01C740);
      v22 = _typeName(_:qualified:)();
      MEMORY[0x1B27141F0](v22);

      MEMORY[0x1B27141F0](0xD00000000000001BLL, 0x80000001AF01C780);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
      return swift_willThrow();
    }

    else
    {
      return (*(v18 + 32))(v17, v14, a2);
    }
  }

  return result;
}

uint64_t BinaryDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  result = BinaryDecoder.decode<A>(_:)(v9, a4, &v12 - v10);
  if (!v4)
  {
    return dispatch thunk of OptionSet.init(rawValue:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.Encoding and conformance String.Encoding()
{
  result = lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding;
  if (!lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding)
  {
    type metadata accessor for String.Encoding();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding);
  }

  return result;
}

__n128 SystemCoordinator.ParticipantState.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 32) = *(v1 + 160);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 192);
  result = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = result;
  return result;
}

__n128 SystemCoordinator.ParticipantState.init(isSpatial:seat:pose:role:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  v5 = *(a2 + 80);
  *(a5 + 80) = *(a2 + 64);
  *(a5 + 96) = v5;
  *(a5 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(a5 + 16) = *a2;
  *(a5 + 32) = v6;
  v7 = *(a2 + 48);
  *(a5 + 48) = *(a2 + 32);
  *(a5 + 64) = v7;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  *(a5 + 192) = *(a3 + 64);
  *(a5 + 160) = v10;
  *(a5 + 176) = v11;
  *(a5 + 128) = v8;
  *(a5 + 144) = v9;
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 232) = *(a4 + 32);
  *(a5 + 216) = v13;
  *(a5 + 200) = result;
  return result;
}

__n128 SystemCoordinator.ParticipantState.Seat.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t SystemCoordinator.ParticipantState.Seat.hash(into:)()
{
  v1 = v0[1];
  v14 = *v0;
  v15 = v1;
  v2 = v0[3];
  v16 = v0[2];
  v17 = v2;
  SPPose3D.hash(into:)();
  outlined init with copy of URL?((v0 + 4), &v9, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v10 + 1))
  {
    outlined init with take of Transferable(&v9, v12);
  }

  else
  {
    outlined destroy of NSObject?(&v9, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v12, 0, sizeof(v12));
    v13 = 0;
  }

  outlined init with copy of URL?(v12, &v9, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (*(&v10 + 1))
  {
    v6 = v9;
    v7 = v10;
    v8 = v11;
    Hasher._combine(_:)(1u);
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    v4 = *(v3 + 8);
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of NSObject?(v12, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    return outlined destroy of AnySpatialTemplateRole(&v6);
  }

  else
  {
    Hasher._combine(_:)(0);
    return outlined destroy of NSObject?(v12, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  }
}

__n128 SystemCoordinator.ParticipantState.Seat.init(pose:role:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v3;
  v4 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 64) = *a2;
  *(a3 + 80) = v6;
  *(a3 + 96) = *(a2 + 32);
  return result;
}

Swift::Int SystemCoordinator.ParticipantState.Seat.hashValue.getter()
{
  Hasher.init(_seed:)();
  SystemCoordinator.ParticipantState.Seat.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemCoordinator.ParticipantState.Seat()
{
  Hasher.init(_seed:)();
  SystemCoordinator.ParticipantState.Seat.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinator.ParticipantState.Seat()
{
  Hasher.init(_seed:)();
  SystemCoordinator.ParticipantState.Seat.hash(into:)();
  return Hasher._finalize()();
}

void SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  *a3 = *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x70))(&v47);
  v63 = v53;
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v57 = v47;
  v58 = v48;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(&v57) == 1)
  {
    v36 = 0u;
    v37 = 0u;
    *&v38 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0;
    *(a3 + 104) = xmmword_1AF00FCC0;
    LOBYTE(v33) = 1;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 1;
  }

  else
  {
    v8 = v66;
    if (v66)
    {
      v9 = *(&v65 + 1);
      v42 = v53;
      v43 = v54;
      v44 = v55;
      v45 = v56;
      v38 = v49;
      v39 = v50;
      v40 = v51;
      v41 = v52;
      v36 = v47;
      v37 = v48;
      outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(&v36, &v33);
      role #1 (for:inSeatNumber:) in SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v9, v8, &v33);
      outlined destroy of NSObject?(&v47, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }

    v36 = v33;
    v37 = v34;
    *&v38 = v35;
    v10 = *(&v60 + 1);
    v32 = v60;
    v11 = *(&v59 + 1);
    v31 = v59;
    v12 = *(&v58 + 1);
    v30 = v58;
    v13 = *(&v57 + 1);
    v29 = v57;
    outlined init with copy of URL?(&v36, a3 + 80, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    *(a3 + 16) = v29;
    *(a3 + 32) = v30;
    *(a3 + 48) = v31;
    *(a3 + 64) = v32;
    outlined destroy of NSObject?(&v47, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
    if (v65)
    {
      v14 = v32;
      v15 = v31;
      v16 = v30;
      v17 = v29;
    }

    else
    {
      v10 = *(&v64 + 1);
      v14 = v64;
      v11 = *(&v63 + 1);
      v15 = v63;
      v12 = *(&v62 + 1);
      v16 = v62;
      v13 = *(&v61 + 1);
      v17 = v61;
    }

    v46 = 0;
    *(a3 + 128) = v17;
    *(a3 + 136) = v13;
    *(a3 + 144) = v16;
    *(a3 + 152) = v12;
    *(a3 + 160) = v15;
    *(a3 + 168) = v11;
    *(a3 + 176) = v14;
    *(a3 + 184) = v10;
    *(a3 + 192) = 0;
  }

  outlined init with copy of URL?(&v36, &v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  v18 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v19 = v35;
    __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    v20 = (*(v19 + 16))(v18, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0(&v33);
    v23 = *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
    if (v23)
    {
      if (v20 == *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier) && v23 == v22)
      {

LABEL_20:
        v25 = v37;
        *(a3 + 200) = v36;
        *(a3 + 216) = v25;
        v26 = v38;
        goto LABEL_25;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    if (!*(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8))
    {
      goto LABEL_19;
    }
  }

  v27 = *(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
  if (v27)
  {
    role #1 (for:inSeatNumber:) in SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(*(a1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier), v27, &v33);
    outlined destroy of NSObject?(&v36, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  }

  else
  {
    outlined destroy of NSObject?(&v36, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);

    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  v28 = v34;
  *(a3 + 200) = v33;
  *(a3 + 216) = v28;
  v26 = v35;
LABEL_25:
  *(a3 + 232) = v26;
}

uint64_t role #1 (for:inSeatNumber:) in SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.systemCoordinator);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001AF01C7E0, &v12);
    _os_log_impl(&dword_1AEE80000, v7, v8, "%s: The provided role identifier does not match a role in the current template.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  a3[3] = &type metadata for GenericSpatialTemplateRole;
  a3[4] = lazy protocol witness table accessor for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole();
  *a3 = a1;
  a3[1] = a2;
}

uint64_t static GenericSpatialTemplateRole.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int GenericSpatialTemplateRole.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for SpatialTemplateRole.roleIdentifier.getter in conformance GenericSpatialTemplateRole()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SystemCoordinator.ParticipantStates.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v7 = Publisher.eraseToAnyPublisher()();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  v5 = lazy protocol witness table accessor for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>();
  MEMORY[0x1B2713BD0](&v7, v4, v5);
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t SystemCoordinator.ParticipantStates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMR);

  return AsyncPublisher.makeAsyncIterator()();
}

uint64_t SystemCoordinator.ParticipantStates.Iterator.init(baseIterator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SystemCoordinator.ParticipantStates.base.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t SystemCoordinator.ParticipantStates.Iterator.baseIterator.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SystemCoordinator.ParticipantStates.Iterator.next()(uint64_t a1)
{
  v3 = *(MEMORY[0x1E695BF28] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDB5C50](a1, v5);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance SystemCoordinator.ParticipantStates.Iterator(uint64_t a1)
{
  v3 = *(MEMORY[0x1E695BF28] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return MEMORY[0x1EEDB5C50](a1, v5);
}

uint64_t _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance SystemCoordinator.ParticipantStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();

  return outlined destroy of SystemCoordinator.ParticipantStates(v0);
}

uint64_t specialized static SystemCoordinator.ParticipantState.Seat.== infix(_:_:)(uint64_t a1, double *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = a2[6];
  v12 = a2[7];
  v18 = *a1;
  v19 = v4;
  *&v20[16] = v6;
  *&v21 = v7;
  *v20 = v5;
  *&v25.position.x = v8;
  *&v25.position.vector.f64[2] = v9;
  v25.rotation.vector.f64[2] = v11;
  v25.rotation.vector.f64[3] = v12;
  *v25.rotation.vector.f64 = v10;
  if (!SPPose3DEqualToPose(&v18, &v25))
  {
    goto LABEL_15;
  }

  outlined init with copy of URL?(a1 + 64, &v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v19 + 1))
  {
    outlined init with take of Transferable(&v18, &v25);
  }

  else
  {
    outlined destroy of NSObject?(&v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(&v25, 0, 40);
  }

  outlined init with copy of URL?((a2 + 8), &v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v19 + 1))
  {
    outlined init with take of Transferable(&v18, v23);
  }

  else
  {
    outlined destroy of NSObject?(&v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v23, 0, sizeof(v23));
    v24 = 0;
  }

  outlined init with copy of URL?(&v25, &v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(v23, &v20[8], &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v19 + 1))
  {
    outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v21 + 1))
    {
      outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_14;
  }

  outlined init with copy of URL?(&v18, v17, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v21 + 1))
  {
    outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v17);
LABEL_14:
    outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR);
LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

  v15[0] = *&v20[8];
  v15[1] = v21;
  v16 = v22;
  v13 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v17, v15);
  outlined destroy of AnySpatialTemplateRole(v15);
  outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v17);
  outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  return v13 & 1;
}

unint64_t specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(unsigned __int8 *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v42 = v2;
  v43 = v3;
  outlined init with copy of URL?((a1 + 200), &v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v34 + 1))
  {
    outlined init with take of Transferable(&v33, &v32);
  }

  else
  {
    outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(&v32, 0, 40);
  }

  outlined init with copy of URL?((a2 + 25), &v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v34 + 1))
  {
    outlined init with take of Transferable(&v33, &v25);
  }

  else
  {
    outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    v25 = 0u;
    v26 = 0u;
    *&v27 = 0;
  }

  outlined init with copy of URL?(&v32, &v33, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(&v25, &v35[8], &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v34 + 1))
  {
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v32, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v36 + 1))
    {
      outlined destroy of NSObject?(&v33, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      goto LABEL_15;
    }

LABEL_19:
    v8 = &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd;
    v9 = &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR;
LABEL_23:
    outlined destroy of NSObject?(&v33, v8, v9);
    return 0;
  }

  outlined init with copy of URL?(&v33, v24, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v36 + 1))
  {
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v32, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v24);
    goto LABEL_19;
  }

  v22[0] = *&v35[8];
  v22[1] = v36;
  v23 = v37;
  v7 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v24, v22);
  outlined destroy of AnySpatialTemplateRole(v22);
  outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(&v32, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v24);
  outlined destroy of NSObject?(&v33, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  outlined init with copy of URL?((a1 + 16), &v33, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  outlined init with copy of URL?((a2 + 2), v39, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  if (v38 == 1)
  {
    if (*(&v40 + 1) == 1)
    {
      outlined destroy of NSObject?(&v33, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  outlined init with copy of URL?(&v33, &v32, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  if (*(&v40 + 1) == 1)
  {
    outlined destroy of SystemCoordinator.ParticipantState.Seat(&v32);
LABEL_22:
    v8 = &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSg_AHtMd;
    v9 = &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSg_AHtMR;
    goto LABEL_23;
  }

  v29 = v39[4];
  v30 = v40;
  v31 = v41;
  v25 = v39[0];
  v26 = v39[1];
  v27 = v39[2];
  v28 = v39[3];
  v10 = specialized static SystemCoordinator.ParticipantState.Seat.== infix(_:_:)(&v32, &v25);
  outlined destroy of SystemCoordinator.ParticipantState.Seat(&v25);
  outlined destroy of SystemCoordinator.ParticipantState.Seat(&v32);
  outlined destroy of NSObject?(&v33, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v11 = a1[192];
  v12 = *(a2 + 192);
  result = v11 & v12;
  if ((v11 & 1) == 0 && (v12 & 1) == 0)
  {
    v14 = a2[22];
    v13 = a2[23];
    v16 = *(a2 + 9);
    v15 = *(a2 + 10);
    v17 = *(a2 + 8);
    v19 = *(a1 + 22);
    v18 = *(a1 + 23);
    v21 = *(a1 + 9);
    v20 = *(a1 + 10);
    v33 = *(a1 + 8);
    v34 = v21;
    *&v35[16] = v19;
    *&v36 = v18;
    *v35 = v20;
    *&v32.position.x = v17;
    *&v32.position.vector.f64[2] = v16;
    v32.rotation.vector.f64[2] = v14;
    v32.rotation.vector.f64[3] = v13;
    *v32.rotation.vector.f64 = v15;
    return SPPose3DEqualToPose(&v33, &v32);
  }

  return result;
}

uint64_t _s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat()
{
  result = lazy protocol witness table cache variable for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat;
  if (!lazy protocol witness table cache variable for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GenericSpatialTemplateRole(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole()
{
  result = lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator()
{
  result = lazy protocol witness table cache variable for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator;
  if (!lazy protocol witness table cache variable for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator)
  {
    type metadata accessor for SystemCoordinator.ParticipantStates.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy240_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinator.ParticipantState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 224);
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

uint64_t storeEnumTagSinglePayload for SystemCoordinator.ParticipantState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 224) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy104_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinator.ParticipantState.Seat(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for SystemCoordinator.ParticipantState.Seat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void type metadata completion function for SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  type metadata accessor for AsyncPublisher<AnyPublisher<SystemCoordinator.ParticipantState, Never>>(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncPublisher<AnyPublisher<SystemCoordinator.ParticipantState, Never>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
    v7 = lazy protocol witness table accessor for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of SystemCoordinator.ParticipantStates(uint64_t a1)
{
  v2 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t SPPose3DEqualToPose(SPPose3D *a1, SPPose3D *a2)
{
  v3 = vceqq_f64(*&a1->position.x, *&a2->position.x);
  if (((v3.i64[0] & v3.i64[1] & vceqq_f64(*&a1->position.vector.f64[2], *&a2->position.vector.f64[2]).u64[0] & 0x8000000000000000) != 0) == v2)
  {
    return 0;
  }

  v5 = *a1->rotation.vector.f64;
  v6 = *&a1->rotation.quaternion.vector.f64[2];
  v7 = *a2->rotation.vector.f64;
  v8 = *&a2->rotation.quaternion.vector.f64[2];
  v9 = vandq_s8(vceqq_f64(v5, v7), vceqq_f64(v6, v8));
  if ((vandq_s8(v9, vdupq_laneq_s64(v9, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v10 = vandq_s8(vceqq_f64(v5, vnegq_f64(v7)), vceqq_f64(v6, vnegq_f64(v8)));
  return vandq_s8(v10, vdupq_laneq_s64(v10, 1)).u64[0] >> 63;
}

uint64_t AttachmentLedgerTopic.attachmentsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v9 - v5;
  v9[1] = (*(*v0 + 392))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities18DownloadAttachment_pGMd, &_sSay15GroupActivities18DownloadAttachment_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<CurrentValueSubject<[Attachment], Never>, [DownloadAttachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v6, v1);
  return v7;
}

void *closure #1 in AttachmentLedgerTopic.attachmentsPublisher.getter@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized _arrayForceCast<A, B>(_:)(*a1);
  *a2 = result;
  return result;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1B2714B30](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Attachment();
        v15 = &protocol witness table for Attachment;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of Transferable(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Attachment();
        v15 = &protocol witness table for Attachment;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        outlined init with take of Transferable(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DownloadAttachmentTopic.attachmentsPublisher.getter in conformance AttachmentLedgerTopic()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v9 - v5;
  v9[1] = (*(**v0 + 392))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities18DownloadAttachment_pGMd, &_sSay15GroupActivities18DownloadAttachment_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<CurrentValueSubject<[Attachment], Never>, [DownloadAttachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t Attachment.assetSkeleton.getter(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Attachment.MMCSMetadata();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMR) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMd, &_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMR);
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Attachment.assetSkeleton.getter, 0, 0);
}

uint64_t Attachment.assetSkeleton.getter()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[4];
  Attachment.mmcsMetadata.getter();
  MEMORY[0x1B27145A0](v4);
  (*(v3 + 8))(v2, v4);
  v6 = *(MEMORY[0x1E69E87A8] + 4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = Attachment.assetSkeleton.getter;
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[8];

  return MEMORY[0x1EEE6DB90](v10, 0, 0, v9, v0 + 2);
}

{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = Attachment.assetSkeleton.getter;
  }

  else
  {
    v3 = Attachment.assetSkeleton.getter;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
LABEL_5:
    v20 = v0[14];
    v21 = v0[11];
    v23 = v0[7];
    v22 = v0[8];

    v24 = v0[1];
    goto LABEL_6;
  }

  v5 = v0[16];
  v6 = v0[3];
  (*(v3 + 32))(v0[7], v1, v2);
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for AssetSkeleton();
  v10 = Attachment.MMCSMetadata.assetSkeleton.getter();
  v12 = v11;
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AssetSkeleton and conformance AssetSkeleton, MEMORY[0x1E6994708]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v13 = v5;
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  if (v13)
  {
    v30 = v0[12];
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[5];
    outlined consume of Data._Representation(v10, v12);

    (*(v17 + 8))(v18, v19);
    (*(v15 + 8))(v14, v30);
    goto LABEL_5;
  }

  v26 = v0[7];
  v29 = v0[11];
  v31 = v0[8];
  v28 = v0[5];
  v27 = v0[6];
  outlined consume of Data._Representation(v10, v12);

  (*(v27 + 8))(v26, v28);
  (*(v15 + 8))(v14, v16);

  v24 = v0[1];
LABEL_6:

  return v24();
}

{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[2];
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

unint64_t lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors()
{
  result = lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors);
  }

  return result;
}

uint64_t Attachment.signal.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  type metadata accessor for Signal();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8790], v0);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in Attachment.signal.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in Attachment.signal.getter, v15);
}

uint64_t closure #1 in closure #1 in Attachment.signal.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy10CloudAsset6SignalVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy10CloudAsset6SignalVs5Error_p__GMR);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = type metadata accessor for Signal();
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v12 = *(v11 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v13 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v16 = type metadata accessor for Attachment.UpdatingBlob();
  v5[22] = v16;
  v17 = *(v16 - 8);
  v5[23] = v17;
  v18 = *(v17 + 64) + 15;
  v5[24] = swift_task_alloc();
  v19 = type metadata accessor for Attachment.MMCSMetadata();
  v5[25] = v19;
  v20 = *(v19 - 8);
  v5[26] = v20;
  v21 = *(v20 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMR) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMd, &_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMR);
  v5[30] = v23;
  v24 = *(v23 - 8);
  v5[31] = v24;
  v25 = *(v24 + 64) + 15;
  v5[32] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v5[33] = v26;
  v27 = *(v26 - 8);
  v5[34] = v27;
  v28 = *(v27 + 64) + 15;
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Attachment.signal.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in Attachment.signal.getter()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 48);
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 288) = JSONDecoder.init()();
  Attachment.mmcsMetadata.getter();
  MEMORY[0x1B27145A0](v4);
  (*(v3 + 8))(v2, v4);
  *(v0 + 312) = *MEMORY[0x1E6997498];
  v9 = *(MEMORY[0x1E69E87A8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in Attachment.signal.getter;
  v11 = *(v0 + 280);
  v12 = *(v0 + 264);
  v13 = *(v0 + 232);

  return MEMORY[0x1EEE6DB90](v13, 0, 0, v12, v0 + 16);
}

{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in Attachment.signal.getter;
  }

  else
  {
    v3 = closure #1 in closure #1 in Attachment.signal.getter;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_6:
    v29 = *(v0 + 280);
    v30 = *(v0 + 256);
    v32 = *(v0 + 224);
    v31 = *(v0 + 232);
    v33 = *(v0 + 216);
    v34 = *(v0 + 192);
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);
    v37 = *(v0 + 152);
    v38 = *(v0 + 128);
    v94 = *(v0 + 120);
    v98 = *(v0 + 96);
    v101 = *(v0 + 72);
    v105 = *(v0 + 64);

    v39 = *(v0 + 8);

    return v39();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  (*(v3 + 32))(*(v0 + 224), v1, v2);
  Attachment.MMCSMetadata.status.getter();
  if ((*(v8 + 88))(v6, v7) == v5)
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 288);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 128);
    v16 = *(v0 + 104);
    (*(*(v0 + 144) + 96))(v14, *(v0 + 136));
    (*(v12 + 32))(v11, v14, v13);
    v17 = Attachment.UpdatingBlob.data.getter();
    v19 = v18;
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type Signal and conformance Signal, MEMORY[0x1E6994728]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v9)
    {
      v20 = *(v0 + 272);
      v100 = *(v0 + 264);
      v104 = *(v0 + 280);
      v97 = *(v0 + 224);
      v22 = *(v0 + 200);
      v21 = *(v0 + 208);
      v23 = *(v0 + 184);
      v24 = *(v0 + 192);
      v25 = *(v0 + 176);
      outlined consume of Data._Representation(v17, v19);
      (*(v23 + 8))(v24, v25);
      (*(v21 + 8))(v97, v22);
      (*(v20 + 8))(v104, v100);
      v26 = *(v0 + 288);
      v27 = *(v0 + 56);
      *(v0 + 24) = v9;
      v28 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
      AsyncThrowingStream.Continuation.finish(throwing:)();

      goto LABEL_6;
    }

    v103 = *(v0 + 200);
    v107 = *(v0 + 224);
    v68 = *(v0 + 184);
    v99 = *(v0 + 192);
    v93 = *(v0 + 208);
    v96 = *(v0 + 176);
    v69 = *(v0 + 120);
    v70 = *(v0 + 128);
    v72 = *(v0 + 104);
    v71 = *(v0 + 112);
    v74 = *(v0 + 88);
    v73 = *(v0 + 96);
    v91 = *(v0 + 56);
    v92 = *(v0 + 80);
    outlined consume of Data._Representation(v17, v19);
    (*(v71 + 16))(v69, v70, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v74 + 8))(v73, v92);
    (*(v71 + 8))(v70, v72);
    (*(v68 + 8))(v99, v96);
    (*(v93 + 8))(v107, v103);
  }

  else
  {
    v41 = *(*(v0 + 144) + 8);
    v41(*(v0 + 168), *(v0 + 136));
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 216);
    v43 = *(v0 + 224);
    v44 = *(v0 + 200);
    v45 = *(v0 + 208);
    v46 = *(v0 + 48);
    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Log.attachmentLedgerTopic);
    (*(v45 + 16))(v42, v43, v44);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v106 = v49;
      v95 = v41;
      v50 = *(v0 + 216);
      v52 = *(v0 + 136);
      v51 = *(v0 + 144);
      v53 = *(v0 + 64);
      v54 = *(v0 + 72);
      v55 = *(v0 + 48);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 136315394;
      v102 = v57;
      *(v0 + 32) = v57;
      *(v0 + 40) = v55;
      type metadata accessor for Attachment();

      v58 = String.init<A>(reflecting:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, (v0 + 32));

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      Attachment.MMCSMetadata.status.getter();
      (*(v51 + 56))(v54, 0, 1, v52);
      outlined init with copy of URL?(v54, v53, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
      if ((*(v51 + 48))(v53, 1, v52) == 1)
      {
        v61 = 0xE300000000000000;
        v62 = 7104878;
      }

      else
      {
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v78 = *(v0 + 136);
        v77 = *(v0 + 144);
        (*(v77 + 32))(v75, *(v0 + 64), v78);
        (*(v77 + 16))(v76, v75, v78);
        v62 = String.init<A>(reflecting:)();
        v61 = v79;
        v95(v75, v78);
      }

      v81 = *(v0 + 216);
      v80 = *(v0 + 224);
      v83 = *(v0 + 200);
      v82 = *(v0 + 208);
      outlined destroy of NSObject?(*(v0 + 72), &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
      v84 = *(v82 + 8);
      v84(v81, v83);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, (v0 + 32));

      *(v56 + 14) = v85;
      _os_log_impl(&dword_1AEE80000, v48, v106, "%s's status doesn't have a signal blob, status: %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v102, -1, -1);
      MEMORY[0x1B2715BA0](v56, -1, -1);

      v84(v80, v83);
    }

    else
    {
      v64 = *(v0 + 216);
      v63 = *(v0 + 224);
      v65 = *(v0 + 200);
      v66 = *(v0 + 208);

      v67 = *(v66 + 8);
      v67(v64, v65);
      v67(v63, v65);
    }
  }

  v86 = *(MEMORY[0x1E69E87A8] + 4);
  v87 = swift_task_alloc();
  *(v0 + 296) = v87;
  *v87 = v0;
  v87[1] = closure #1 in closure #1 in Attachment.signal.getter;
  v88 = *(v0 + 280);
  v89 = *(v0 + 264);
  v90 = *(v0 + 232);

  return MEMORY[0x1EEE6DB90](v90, 0, 0, v89, v0 + 16);
}

{
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[2];
  v2 = v0[36];
  v3 = v0[7];
  v0[3] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v5 = v0[35];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  v10 = v0[24];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  v14 = v0[16];
  v17 = v0[15];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t Attachment.waitForUploadFinished()()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = type metadata accessor for Attachment.MMCSMetadata();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMR) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMd, &_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMR);
  v1[19] = v10;
  v11 = *(v10 - 8);
  v1[20] = v11;
  v12 = *(v11 + 64) + 15;
  v1[21] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v1[22] = v13;
  v14 = *(v13 - 8);
  v1[23] = v14;
  v15 = *(v14 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Attachment.waitForUploadFinished(), 0, 0);
}

{
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 40);
  Attachment.mmcsMetadata.getter();
  MEMORY[0x1B27145A0](v4);
  (*(v3 + 8))(v2, v4);
  *(v0 + 208) = *MEMORY[0x1E69974A0];
  v6 = *(MEMORY[0x1E69E87A8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = Attachment.waitForUploadFinished();
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = *(v0 + 144);

  return MEMORY[0x1EEE6DB90](v10, 0, 0, v9, v0 + 16);
}

{
  v2 = *(*v1 + 200);
  v5 = *v1;

  if (v0)
  {
    v3 = Attachment.waitForUploadFinished();
  }

  else
  {
    v3 = Attachment.waitForUploadFinished();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v78 = *(v0 + 56);

    v14 = *(v0 + 8);
LABEL_5:

    return v14();
  }

  v15 = *(v0 + 208);
  v16 = *(v0 + 104);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  (*(v3 + 32))(*(v0 + 136), v1, v2);
  Attachment.MMCSMetadata.status.getter();
  if ((*(v18 + 88))(v16, v17) == v15)
  {
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 144);
    v72 = *(v0 + 128);
    v24 = *(v0 + 104);
    v73 = *(v0 + 96);
    v75 = *(v0 + 88);
    v25 = *(v0 + 72);
    v26 = *(v0 + 80);
    v76 = *(v0 + 64);
    v79 = *(v0 + 56);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    (*(v20 + 8))(v19, v21);
    (*(v26 + 8))(v24, v25);

    v14 = *(v0 + 8);
    goto LABEL_5;
  }

  v28 = *(*(v0 + 80) + 8);
  v28(*(v0 + 104), *(v0 + 72));
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 128);
  v30 = *(v0 + 136);
  v31 = *(v0 + 112);
  v32 = *(v0 + 120);
  v33 = *(v0 + 40);
  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.attachmentLedgerTopic);
  (*(v32 + 16))(v29, v30, v31);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v80 = v36;
    v74 = v28;
    v37 = *(v0 + 128);
    v39 = *(v0 + 72);
    v38 = *(v0 + 80);
    v40 = *(v0 + 56);
    v41 = *(v0 + 64);
    v42 = *(v0 + 40);
    v43 = *(v0 + 48);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 136315394;
    v77 = v45;
    *(v0 + 24) = v45;
    *(v0 + 32) = v42;

    v46 = String.init<A>(reflecting:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, (v0 + 24));

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    Attachment.MMCSMetadata.status.getter();
    (*(v38 + 56))(v41, 0, 1, v39);
    outlined init with copy of URL?(v41, v40, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    if ((*(v38 + 48))(v40, 1, v39) == 1)
    {
      v49 = 0xE300000000000000;
      v50 = 7104878;
    }

    else
    {
      v57 = *(v0 + 88);
      v56 = *(v0 + 96);
      v59 = *(v0 + 72);
      v58 = *(v0 + 80);
      (*(v58 + 32))(v56, *(v0 + 56), v59);
      (*(v58 + 16))(v57, v56, v59);
      v50 = String.init<A>(reflecting:)();
      v49 = v60;
      v74(v56, v59);
    }

    v62 = *(v0 + 128);
    v61 = *(v0 + 136);
    v64 = *(v0 + 112);
    v63 = *(v0 + 120);
    outlined destroy of NSObject?(*(v0 + 64), &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    v65 = *(v63 + 8);
    v65(v62, v64);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, (v0 + 24));

    *(v44 + 14) = v66;
    _os_log_impl(&dword_1AEE80000, v35, v80, "%s's status is currently: %s, not finished.", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v77, -1, -1);
    MEMORY[0x1B2715BA0](v44, -1, -1);

    v65(v61, v64);
  }

  else
  {
    v52 = *(v0 + 128);
    v51 = *(v0 + 136);
    v53 = *(v0 + 112);
    v54 = *(v0 + 120);

    v55 = *(v54 + 8);
    v55(v52, v53);
    v55(v51, v53);
  }

  v67 = *(MEMORY[0x1E69E87A8] + 4);
  v68 = swift_task_alloc();
  *(v0 + 200) = v68;
  *v68 = v0;
  v68[1] = Attachment.waitForUploadFinished();
  v69 = *(v0 + 192);
  v70 = *(v0 + 176);
  v71 = *(v0 + 144);

  return MEMORY[0x1EEE6DB90](v71, 0, 0, v70, v0 + 16);
}

{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[2];
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = v0[7];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t protocol witness for DownloadAttachment.assetSkeleton.getter in conformance Attachment(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return Attachment.assetSkeleton.getter(a1);
}

uint64_t protocol witness for DownloadAttachment.signal.getter in conformance Attachment()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  v6 = *v0;
  type metadata accessor for Signal();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8790], v1);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t protocol witness for DownloadAttachment.waitForUploadFinished() in conformance Attachment()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return Attachment.waitForUploadFinished()();
}

uint64_t AttachmentDownloadTask.file.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for AttachmentDownloadTask.signalHandler : AttachmentDownloadTask(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t AttachmentDownloadTask.signalHandler.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t AttachmentDownloadTask.signalHandler.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Int AttachmentDownloadTask.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AttachmentDownloadTask.__allocating_init(topic:attachment:file:manager:)(uint64_t *a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized AttachmentDownloadTask.__allocating_init(topic:attachment:file:manager:)(v13, v20, a3, a4, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v22;
}

uint64_t AttachmentDownloadTask.init(topic:attachment:file:manager:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler) = 0;
  outlined init with take of Transferable(a1, v4 + 112);
  outlined init with take of Transferable(a2, v4 + 152);
  v9 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  outlined init with take of Transferable(a4, v4 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager);
  return v4;
}

uint64_t AttachmentDownloadTask.start()()
{
  v1[3] = v0;
  v2 = type metadata accessor for Asset();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for AssetSkeleton();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = type metadata accessor for TaskPriority();
  v1[15] = v9;
  v10 = *(v9 - 8);
  v1[16] = v10;
  v11 = *(v10 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentDownloadTask.start(), v0, 0);
}

{
  v28 = v0;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v2, static Log.downloadTask);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315394;
    v11 = AttachmentDownloadTask.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v27);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v6 + 8))(v5, v7);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s received download request with priority: %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = v0[3];
  v19 = v18[22];
  v20 = v18[23];
  __swift_project_boxed_opaque_existential_1(v18 + 19, v19);
  v21 = *(v20 + 16);
  v26 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = AttachmentDownloadTask.start();
  v24 = v0[14];

  return v26(v24, v19, v20);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = AttachmentDownloadTask.start();
  }

  else
  {
    v6 = AttachmentDownloadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v31 = v0;
  v1 = v0[18];
  v2 = *(v0[10] + 16);
  v2(v0[13], v0[14], v0[9]);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  if (v5)
  {
    v29 = v4;
    v10 = v0[7];
    v9 = v0[8];
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v11 = 136315138;
    v2(v9, v6, v8);
    (*(v7 + 56))(v9, 0, 1, v8);
    outlined init with copy of URL?(v9, v10, &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    if ((*(v7 + 48))(v10, 1, v8) == 1)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
    }

    else
    {
      v15 = v0[11];
      v16 = v0[12];
      v18 = v0[9];
      v17 = v0[10];
      (*(v17 + 32))(v16, v0[7], v18);
      v2(v15, v16, v18);
      v13 = String.init<A>(reflecting:)();
      v12 = v19;
      (*(v17 + 8))(v16, v18);
    }

    v20 = v0[13];
    v22 = v0[9];
    v21 = v0[10];
    outlined destroy of NSObject?(v0[8], &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    v14 = *(v21 + 8);
    v14(v20, v22);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v30);

    *(v11 + 4) = v23;
    _os_log_impl(&dword_1AEE80000, v3, v29, "Unpacked skeleton: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B2715BA0](v28, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  else
  {

    v14 = *(v7 + 8);
    v14(v6, v8);
  }

  v0[21] = v14;
  v24 = swift_task_alloc();
  v0[22] = v24;
  *v24 = v0;
  v24[1] = AttachmentDownloadTask.start();
  v25 = v0[14];
  v26 = v0[3];

  return AttachmentDownloadTask.start(asset:)(v25);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = AttachmentDownloadTask.start();
  }

  else
  {
    v6 = AttachmentDownloadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 80) + 8;
  (*(v0 + 168))(*(v0 + 112), *(v0 + 72));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

{
  v25 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[3];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    v11 = AttachmentDownloadTask.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[2] = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s Failed to download asset through skeleton %s, attempting directly through the asset.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = v0[14];
  v19 = v0[6];
  AssetSkeleton.asset.getter();
  v20 = swift_task_alloc();
  v0[24] = v20;
  *v20 = v0;
  v20[1] = AttachmentDownloadTask.start();
  v21 = v0[6];
  v22 = v0[3];

  return AttachmentDownloadTask.start(asset:)(v21);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 200) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = AttachmentDownloadTask.start();
  }

  else
  {
    v9 = AttachmentDownloadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{

  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 80) + 8;
  v8 = *(v0 + 48);
  (*(v0 + 168))(*(v0 + 112), *(v0 + 72));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  v1(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 136);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t AttachmentDownloadTask.description.getter()
{
  _StringGuts.grow(_:)(68);
  MEMORY[0x1B27141F0](0xD00000000000001DLL, 0x80000001AF01C800);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x3A6369706F74202CLL, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities23DownloadAttachmentTopic_pMd, &_s15GroupActivities23DownloadAttachmentTopic_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A656C6966202CLL, 0xE800000000000000);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v0);

  MEMORY[0x1B27141F0](0x686361747461202CLL, 0xEE00203A746E656DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18DownloadAttachment_pMd, &_s15GroupActivities18DownloadAttachment_pMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for SimultaneousTransferError();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v5 = *(v4 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v6 = type metadata accessor for Asset();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v2[38] = v10;
  v11 = *(v10 - 8);
  v2[39] = v11;
  v12 = *(v11 + 64) + 15;
  v2[40] = swift_task_alloc();
  v13 = type metadata accessor for AssetDownloadRequest();
  v2[41] = v13;
  v14 = *(v13 - 8);
  v2[42] = v14;
  v15 = *(v14 + 64) + 15;
  v2[43] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v17 = type metadata accessor for AssetSkeleton();
  v2[46] = v17;
  v18 = *(v17 - 8);
  v2[47] = v18;
  v19 = *(v18 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentDownloadTask.start(asset:), v1, 0);
}

{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for SimultaneousTransferError();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Credential() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v13 = type metadata accessor for AssetDownloadRequest();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  v19 = type metadata accessor for DownloadToken();
  v2[27] = v19;
  v20 = *(v19 - 8);
  v2[28] = v20;
  v21 = *(v20 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B0VSgMd, &_s10CloudAsset0B0VSgMR) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v24 = type metadata accessor for Asset();
  v2[34] = v24;
  v25 = *(v24 - 8);
  v2[35] = v25;
  v26 = *(v25 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentDownloadTask.start(asset:), v1, 0);
}

uint64_t AttachmentDownloadTask.start(asset:)()
{
  v53 = v0;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[28];
  v5 = v0[29];
  v6 = type metadata accessor for Logger();
  v0[51] = __swift_project_value_buffer(v6, static Log.downloadTask);
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[50];
  v13 = v0[46];
  v12 = v0[47];
  v50 = v7;
  if (v10)
  {
    v47 = v9;
    log = v8;
    v14 = v0[45];
    v45 = v0[44];
    v15 = v0[29];
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v16 = 136315394;
    v17 = AttachmentDownloadTask.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v52);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    outlined init with copy of URL?(v14, v45, &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    if ((*(v12 + 48))(v45, 1, v13) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v22 = v0[48];
      v23 = v0[49];
      v25 = v0[46];
      v24 = v0[47];
      (*(v24 + 32))(v23, v0[44], v25);
      v7(v22, v23, v25);
      v21 = String.init<A>(reflecting:)();
      v20 = v26;
      (*(v24 + 8))(v23, v25);
    }

    v27 = v0[50];
    v29 = v0[46];
    v28 = v0[47];
    outlined destroy of NSObject?(v0[45], &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    (*(v28 + 8))(v27, v29);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v52);

    *(v16 + 14) = v30;
    _os_log_impl(&dword_1AEE80000, log, v47, "%s Starting to attempt to download attachment through AssetSkeleton %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v46, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v31 = v0[49];
  v32 = v0[46];
  v33 = v0[43];
  v34 = v0[39];
  v35 = v0[40];
  v36 = v0[38];
  v38 = v0[28];
  v37 = v0[29];
  v39 = *(v37 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 32);
  loga = *(v37 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 24);
  __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager), loga);
  v50(v31, v38, v32);
  (*(v34 + 16))(v35, v37 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file, v36);
  AssetDownloadRequest.init(skeleton:fileURL:)();
  v40 = *(v39 + 32);
  v51 = (v40 + *v40);
  v41 = v40[1];
  v42 = swift_task_alloc();
  v0[52] = v42;
  *v42 = v0;
  v42[1] = AttachmentDownloadTask.start(asset:);
  v43 = v0[43];

  return (v51)(v0 + 7, v43, loga, v39);
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = v2[43];
  v6 = v2[42];
  v7 = v2[41];
  v8 = v2[29];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v9 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 232);
  outlined init with take of Transferable((v0 + 56), v0 + 16);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    v8 = AttachmentDownloadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v27);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Fetched AssetDownloadCoordinator", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 232);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of Transferable(v12 + 152, v0 + 96);
  outlined init with copy of Transferable(v0 + 16, v0 + 136);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  outlined init with take of Transferable((v0 + 96), (v15 + 4));
  v15[9] = v14;
  outlined init with take of Transferable((v0 + 136), (v15 + 10));
  v16 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in AttachmentDownloadTask.start(asset:), v15);
  v17 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  v18 = *(v12 + v17);
  *(v12 + v17) = v16;

  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  v21 = *(v20 + 8);
  v26 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 432) = v23;
  *v23 = v0;
  v23[1] = AttachmentDownloadTask.start(asset:);
  v24 = *(v0 + 288);

  return v26(v24, v19, v20);
}

{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v8 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = v2[29];
    v5 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v6 = v2[29];
    (*(v2[35] + 8))(v2[36], v2[34]);
    v5 = AttachmentDownloadTask.start(asset:);
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v25 = v0;
  v1 = v0[51];
  v2 = v0[29];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = AttachmentDownloadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s finished download", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = v0[49];
  v12 = v0[50];
  v13 = v0[48];
  v15 = v0[44];
  v14 = v0[45];
  v16 = v0[43];
  v17 = v0[40];
  v19 = v0[36];
  v18 = v0[37];
  v22 = v0[33];
  v23 = v0[32];
  $defer #1 () in AttachmentDownloadTask.start(asset:)(v0[29]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v20 = v0[1];

  return v20();
}

{
  v33 = v0;
  v1 = v0[53];
  v0[25] = v1;
  v2 = v0[33];
  v3 = v0[30];
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = v0[51];
    v6 = v0[29];
    (*(v0[31] + 8))(v0[33], v0[30]);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[29];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136315138;
      v12 = AttachmentDownloadTask.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v32);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1AEE80000, v7, v8, "%s caught SimultaneousTransferError", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    v15 = v0[53];
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }

  else
  {
    v17 = v0[53];
    swift_willThrow();
    v31 = v0[53];
  }

  v19 = v0[49];
  v18 = v0[50];
  v20 = v0[48];
  v22 = v0[44];
  v21 = v0[45];
  v23 = v0[43];
  v24 = v0[40];
  v26 = v0[36];
  v25 = v0[37];
  v27 = v0[33];
  v30 = v0[32];

  v28 = v0[1];

  return v28();
}

{
  v52 = v0;
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[29];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[55];
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v51[0] = v10;
    *v9 = 136315394;
    v11 = AttachmentDownloadTask.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v51);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[27] = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v51);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s Failed to finish downloading, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = v0[55];
  v19 = v0[32];
  v20 = v0[30];
  v0[26] = v18;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v22 = v0[51];
    v23 = v0[29];
    (*(v0[31] + 8))(v0[32], v0[30]);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[29];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51[0] = v28;
      *v27 = 136315138;
      v29 = AttachmentDownloadTask.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v51);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v24, v25, "%s caught SimultaneousTransferError", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B2715BA0](v28, -1, -1);
      MEMORY[0x1B2715BA0](v27, -1, -1);
    }

    v32 = v0[55];
    v33 = v0[29];
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    $defer #1 () in AttachmentDownloadTask.start(asset:)(v33);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v35 = v0[55];
    v36 = v0[29];
    swift_willThrow();
    $defer #1 () in AttachmentDownloadTask.start(asset:)(v36);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v50 = v0[55];
  }

  v38 = v0[49];
  v37 = v0[50];
  v39 = v0[48];
  v41 = v0[44];
  v40 = v0[45];
  v42 = v0[43];
  v43 = v0[40];
  v45 = v0[36];
  v44 = v0[37];
  v46 = v0[33];
  v49 = v0[32];

  v47 = v0[1];

  return v47();
}

{
  v50 = v0;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v6, static Log.downloadTask);
  v7 = *(v3 + 16);
  *(v0 + 328) = v7;
  *(v0 + 336) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v48 = v7;
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 312);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  if (v10)
  {
    v46 = v9;
    log = v8;
    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    v16 = *(v0 + 80);
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v17 = 136315394;
    v18 = AttachmentDownloadTask.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v49);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v48(v15, v11, v13);
    (*(v12 + 56))(v15, 0, 1, v13);
    outlined init with copy of URL?(v15, v14, &_s10CloudAsset0B0VSgMd, &_s10CloudAsset0B0VSgMR);
    if ((*(v12 + 48))(v14, 1, v13) == 1)
    {
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v23 = *(v0 + 296);
      v24 = *(v0 + 304);
      v26 = *(v0 + 272);
      v25 = *(v0 + 280);
      (*(v25 + 32))(v24, *(v0 + 256), v26);
      v48(v23, v24, v26);
      v22 = String.init<A>(reflecting:)();
      v21 = v27;
      (*(v25 + 8))(v24, v26);
    }

    v28 = *(v0 + 312);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    outlined destroy of NSObject?(*(v0 + 264), &_s10CloudAsset0B0VSgMd, &_s10CloudAsset0B0VSgMR);
    (*(v29 + 8))(v28, v30);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v49);

    *(v17 + 14) = v31;
    _os_log_impl(&dword_1AEE80000, log, v46, "%s Starting to attempt to download attachment directly from Asset %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v45, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v32 = *(v0 + 248);
  v33 = *(v0 + 80);
  v34 = type metadata accessor for TaskPriority();
  v35 = *(*(v34 - 8) + 56);
  v35(v32, 1, 1, v34);
  outlined init with copy of Transferable(v33 + 152, v0 + 16);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  outlined init with take of Transferable((v0 + 16), v36 + 32);
  v37 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in AttachmentDownloadTask.start(asset:), v36);
  *(v0 + 344) = v37;
  v35(v32, 1, 1, v34);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;

  *(v0 + 352) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #2 in AttachmentDownloadTask.start(asset:), v38);
  v39 = *(MEMORY[0x1E69E86A8] + 4);
  v40 = swift_task_alloc();
  *(v0 + 360) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 368) = v41;
  *v40 = v0;
  v40[1] = AttachmentDownloadTask.start(asset:);
  v42 = MEMORY[0x1E69E7288];
  v43 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v41, v37, v43, v41, v42);
}

{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v6 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v25 = v0;
  v1 = v0[40];
  v2 = v0[10];
  MEMORY[0x1B27144E0](v0[44], MEMORY[0x1E69E7CA8] + 8, v0[46], MEMORY[0x1E69E7288]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = AttachmentDownloadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Requesting downloadToken", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = v0[26];
  v12 = v0[10];
  v13 = v12[17];
  v14 = v12[18];
  __swift_project_boxed_opaque_existential_1(v12 + 14, v13);
  v15 = v12[22];
  v16 = v12[23];
  __swift_project_boxed_opaque_existential_1(v12 + 19, v15);
  (*(v16 + 8))(v15, v16);
  v17 = *(v14 + 16);
  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[48] = v19;
  *v19 = v0;
  v19[1] = AttachmentDownloadTask.start(asset:);
  v20 = v0[30];
  v21 = v0[26];

  return v23(v20, v21, v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = v2[26];
  v6 = v2[25];
  v7 = v2[24];
  v8 = v2[10];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v9 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v43 = v0;
  v1 = v0[40];
  v2 = v0[10];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315138;
    v8 = AttachmentDownloadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v42);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Received downloadToken, fetching Asset", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v31 = v0[41];
  v32 = v0[42];
  v11 = v0[38];
  v12 = v0[34];
  v13 = v0[29];
  v14 = v0[27];
  v15 = v0[28];
  v39 = v0[23];
  v17 = v0[19];
  v16 = v0[20];
  v30 = v0[18];
  v37 = v0[17];
  v33 = v0[30];
  v34 = v0[16];
  v35 = v0[15];
  v36 = v0[14];
  v18 = v0[9];
  v19 = v0[10];
  v41 = *(v19 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 24);
  v38 = *(v19 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 32);
  __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager), v41);
  v31(v11, v18, v12);
  (*(v17 + 16))(v16, v19 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file, v30);
  (*(v15 + 16))(v13, v33, v14);
  dispatch thunk of Token.accountID.getter();
  dispatch thunk of Token.token.getter();
  v20 = type metadata accessor for Credential.Builder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  dispatch thunk of Token.expirationDate.getter();
  Credential.Builder.setExpirationDate(_:)();

  (*(v35 + 8))(v34, v36);
  Credential.Builder.build()();

  v23 = *(v15 + 8);
  v0[50] = v23;
  v0[51] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v13, v14);
  AssetDownloadRequest.init(asset:fileURL:credential:)();
  v24 = *(v38 + 24);
  v40 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[52] = v26;
  *v26 = v0;
  v26[1] = AttachmentDownloadTask.start(asset:);
  v27 = v0[36];
  v28 = v0[23];

  return v40(v27, v28, v41, v38);
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = v2[23];
  v6 = v2[22];
  v7 = v2[21];
  v8 = v2[10];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v9 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v39 = v0;
  v1 = v0[40];
  v2 = v0[10];
  (*(v0[35] + 8))(v0[36], v0[34]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[50];
  v7 = v0[43];
  v8 = v0[44];
  v9 = v0[30];
  v10 = v0[27];
  if (v5)
  {
    v36 = v0[51];
    v11 = v0[10];
    v34 = v0[30];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    v14 = AttachmentDownloadTask.description.getter();
    v32 = v6;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v38);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s finished download", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);

    v32(v34, v10);
  }

  else
  {
    v17 = v0[43];

    v6(v9, v10);
  }

  v19 = v0[38];
  v18 = v0[39];
  v21 = v0[36];
  v20 = v0[37];
  v23 = v0[32];
  v22 = v0[33];
  v25 = v0[30];
  v24 = v0[31];
  v26 = v0[29];
  v27 = v0[26];
  v30 = v0[23];
  v31 = v0[20];
  v33 = v0[17];
  v35 = v0[16];
  v37 = v0[13];

  v28 = v0[1];

  return v28();
}

{
  v1 = v0[43];
  v2 = v0[44];

  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v12 = v0[26];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[47];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[43];
  v2 = v0[44];

  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v12 = v0[26];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[49];

  v13 = v0[1];

  return v13();
}

{
  v68 = v0;
  v1 = v0[53];
  v2 = v0[40];
  v3 = v0[10];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[53];
    v8 = v0[46];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67[0] = v11;
    *v10 = 136315394;
    v12 = AttachmentDownloadTask.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v67);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v0[8] = v7;
    v15 = v7;
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v67);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s Failed to finish downloading, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  v19 = v0[53];
  v20 = v0[46];
  v21 = v0[13];
  v22 = v0[11];
  v0[7] = v19;
  v23 = v19;
  if (swift_dynamicCast())
  {
    v24 = v0[40];
    v25 = v0[10];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[10];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67[0] = v30;
      *v29 = 136315138;
      v31 = AttachmentDownloadTask.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v67);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1AEE80000, v26, v27, "%s caught SimultaneousTransferError", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1B2715BA0](v30, -1, -1);
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    v34 = v0[53];
    v36 = v0[50];
    v35 = v0[51];
    v38 = v0[43];
    v37 = v0[44];
    v39 = v0[30];
    v40 = v0[27];
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();

    v36(v39, v40);
  }

  else
  {
    v42 = v0[53];
    v44 = v0[50];
    v43 = v0[51];
    v45 = v0[43];
    v46 = v0[44];
    v47 = v0[30];
    v48 = v0[27];
    swift_willThrow();

    v44(v47, v48);
    v66 = v0[53];
  }

  v50 = v0[38];
  v49 = v0[39];
  v52 = v0[36];
  v51 = v0[37];
  v54 = v0[32];
  v53 = v0[33];
  v56 = v0[30];
  v55 = v0[31];
  v57 = v0[29];
  v58 = v0[26];
  v61 = v0[23];
  v62 = v0[20];
  v63 = v0[17];
  v64 = v0[16];
  v65 = v0[13];

  v59 = v0[1];

  return v59();
}

uint64_t closure #1 in AttachmentDownloadTask.start(asset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = type metadata accessor for Signal();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset6SignalVSgMd, &_s10CloudAsset6SignalVSgMR) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy10CloudAsset6SignalVs5Error_pGMd, &_sScsy10CloudAsset6SignalVs5Error_pGMR);
  v6[20] = v11;
  v12 = *(v11 - 8);
  v6[21] = v12;
  v13 = *(v12 + 64) + 15;
  v6[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMR);
  v6[23] = v14;
  v15 = *(v14 - 8);
  v6[24] = v15;
  v16 = *(v15 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentDownloadTask.start(asset:), 0, 0);
}

uint64_t closure #1 in AttachmentDownloadTask.start(asset:)()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[13];
  v6 = v0[14];
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[26] = JSONDecoder.init()();
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  (*(v11 + 24))(v10, v11);
  MEMORY[0x1B27145A0](v4);
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v12 = *(MEMORY[0x1E69E87A8] + 4);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v14 = v0[25];
  v15 = v0[23];
  v16 = v0[19];

  return MEMORY[0x1EEE6DB90](v16, 0, 0, v15, v0 + 9);
}

{
  v2 = *(*v1 + 216);
  v5 = *v1;

  if (v0)
  {
    v3 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v3 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v38 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    (*(v0[24] + 8))(v0[25], v0[23]);

LABEL_12:
    v31 = v0[25];
    v32 = v0[22];
    v34 = v0[18];
    v33 = v0[19];

    v35 = v0[1];

    return v35();
  }

  v5 = v0[14];
  (*(v3 + 32))(v0[18], v1, v2);
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
    v25 = v0[25];
    v24 = v0[26];
    v26 = v0[23];
    v27 = v0[24];
    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[16];

    (*(v29 + 8))(v28, v30);
    (*(v27 + 8))(v25, v26);
    goto LABEL_12;
  }

  v7 = Strong;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v0[29] = __swift_project_value_buffer(v8, static Log.downloadTask);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v11 = 136315138;
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v13 = v0[8];
    v0[5] = v0[7];
    v0[6] = v13;
    MEMORY[0x1B27141F0](0xD00000000000001DLL, 0x80000001AF01C800);
    v0[12] = v7;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B27141F0](0x3A6369706F74202CLL, 0xE900000000000020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities23DownloadAttachmentTopic_pMd, &_s15GroupActivities23DownloadAttachmentTopic_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B27141F0](0x203A656C6966202CLL, 0xE800000000000000);
    type metadata accessor for URL();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B27141F0](v14);

    MEMORY[0x1B27141F0](0x686361747461202CLL, 0xEE00203A746E656DLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18DownloadAttachment_pMd, &_s15GroupActivities18DownloadAttachment_pMR);
    _print_unlocked<A, B>(_:_:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[5], v0[6], &v37);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v9, v10, "%s Received signal blob, sending over to coordinator.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  v16 = v0[15];
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v19 = *(v18 + 16);
  v36 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v22 = v0[18];

  return v36(v22, v17, v18);
}

{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v3 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[28];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E87A8] + 4);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[19];

  return MEMORY[0x1EEE6DB90](v9, 0, 0, v8, v0 + 9);
}

{
  v20 = v0;
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[9];
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.downloadTask);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v0[10] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Signal listener failed for: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];
  v16 = v0[18];
  v15 = v0[19];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

{
  v29 = v0;
  v1 = v0[31];
  v2 = v0[29];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[28];
    v8 = v0[17];
    v26 = v0[16];
    v27 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v0[11] = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v28);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to handle updated attachment, reason: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);

    (*(v8 + 8))(v27, v26);
  }

  else
  {
    v15 = v0[31];
    v16 = v0[28];
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[16];

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(MEMORY[0x1E69E87A8] + 4);
  v21 = swift_task_alloc();
  v0[27] = v21;
  *v21 = v0;
  v21[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v22 = v0[25];
  v23 = v0[23];
  v24 = v0[19];

  return MEMORY[0x1EEE6DB90](v24, 0, 0, v23, v0 + 9);
}

{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = closure #1 in AttachmentDownloadTask.start(asset:);

  return v8(v2, v3);
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t $defer #1 () in AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.downloadTask);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = AttachmentDownloadTask.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Cleaning up signalHandler", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (v11)
  {
    v12 = *(a1 + v10);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B27144E0](v11, MEMORY[0x1E69E7CA8] + 8, v13, MEMORY[0x1E69E7288]);

    v14 = *(a1 + v10);
  }

  *(a1 + v10) = 0;
}

uint64_t closure #2 in AttachmentDownloadTask.start(asset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in AttachmentDownloadTask.start(asset:), 0, 0);
}

uint64_t closure #2 in AttachmentDownloadTask.start(asset:)()
{
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = closure #2 in AttachmentDownloadTask.start(asset:);
  v3 = *(v0 + 40);

  return specialized Clock.sleep(for:tolerance:)(5000000000000000000, 0, 0, 0, 1);
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 56) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  else
  {
    v6 = closure #2 in AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1B27144E0](v2, MEMORY[0x1E69E7CA8] + 8, v3, MEMORY[0x1E69E7288]);

  v4 = v0[1];

  return v4();
}

uint64_t AttachmentDownloadTask.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  v1 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager));
  v3 = *(v0 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AttachmentDownloadTask.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  v1 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager));
  v3 = *(v0 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t specialized AttachmentDownloadTask.__allocating_init(topic:attachment:file:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a6;
  v29 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v25 = a7;
  v26 = a9;
  v16 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a7 - 8) + 32))(v16, a2, a7);
  v17 = type metadata accessor for AttachmentDownloadTask();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler) = 0;
  outlined init with take of Transferable(&v27, v20 + 112);
  outlined init with take of Transferable(&v24, v20 + 152);
  v21 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 32))(v20 + v21, a3, v22);
  outlined init with take of Transferable(a4, v20 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager);
  return v20;
}

uint64_t partial apply for closure #1 in AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentDownloadTask.start(asset:)(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentDownloadTask.start(asset:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #2 in AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in AttachmentDownloadTask.start(asset:)(a1, v4, v5, v6);
}

uint64_t dispatch thunk of DownloadAttachment.assetSkeleton.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of DownloadAttachment.waitForUploadFinished()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DownloadAttachmentTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t type metadata accessor for AttachmentDownloadTask()
{
  result = type metadata singleton initialization cache for AttachmentDownloadTask;
  if (!type metadata singleton initialization cache for AttachmentDownloadTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AttachmentDownloadTask()
{
  result = type metadata accessor for URL();
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

uint64_t dispatch thunk of AttachmentDownloadTask.start()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6();
}

uint64_t dispatch thunk of AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t partial apply for closure #1 in closure #1 in Attachment.signal.getter(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in Attachment.signal.getter(a1, v6, v7, v8, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _SpatialTemplateElementOutput.output.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v1, v5);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v5, a1);
  return outlined init with copy of AbsoluteSpatialTemplateOutput.Element(v5, &v4);
}

__n128 _SpatialTemplateElementOutput.init(output:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(a1, v6);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v6, v7);
  v3 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v8;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = result;
  return result;
}

__n128 SpatialTemplateSeatElement.position.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[1];
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateSeatElement.direction.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 32);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

__n128 SpatialTemplateSeatElement._output.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  outlined init with copy of URL?(v1 + 88, v25, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  v4 = v26;
  if (v26)
  {
    v5 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    SpatialTemplateRole.output.getter(v5, v23);
    v6 = *(&v23[0] + 1);
    v4 = *&v23[0];
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    outlined destroy of NSObject?(v25, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(v2 + 2);
  v9 = *(v2 + 3);
  v10 = *(v2 + 4);
  v28 = *(v2 + 80);
  v15[0] = v4;
  v15[1] = v6;
  v17 = v8;
  v18 = v9;
  v16 = v7;
  v19 = v10;
  v11 = v2[4];
  v20 = v2[3];
  v21 = v11;
  v22 = v28;
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v15, v23);
  v12 = v23[5];
  *(a1 + 64) = v23[4];
  *(a1 + 80) = v12;
  *(a1 + 96) = v24;
  v13 = v23[1];
  *a1 = v23[0];
  *(a1 + 16) = v13;
  result = v23[3];
  *(a1 + 32) = v23[2];
  *(a1 + 48) = result;
  return result;
}

double static SpatialTemplateElementPosition.app.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 static SpatialTemplateElementDirection.lookingAt(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1].n128_u64[0];
  v2 = a1[1].n128_u64[1];
  result = *a1;
  a2->n128_u64[0] = 0;
  a2[1] = result;
  a2[2].n128_u64[0] = v3;
  a2[2].n128_u64[1] = v2;
  a2[3].n128_u8[0] = 0;
  return result;
}

__n128 SpatialTemplateSeatElement.init(position:direction:role:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 3);
  v6 = *a2;
  v7 = *(a2 + 48);
  *(a4 + 16) = *(a1 + 2);
  *(a4 + 24) = v5;
  *a4 = v4;
  *(a4 + 32) = v6;
  v8 = *(a2 + 2);
  *(a4 + 48) = *(a2 + 1);
  *(a4 + 64) = v8;
  *(a4 + 80) = v7;
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 88) = *a3;
  *(a4 + 104) = v10;
  *(a4 + 120) = *(a3 + 32);
  return result;
}

BOOL static SpatialTemplateElementPosition.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}

uint64_t SpatialTemplateSeatElement.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  v4 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(v0 + 80);
  SPAngle.hash(into:)();
  if (v8)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v5);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  outlined init with copy of URL?((v0 + 11), &v15, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v16 + 1))
  {
    outlined init with take of Transferable(&v15, v18);
  }

  else
  {
    outlined destroy of NSObject?(&v15, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v18, 0, sizeof(v18));
    v19 = 0;
  }

  outlined init with copy of URL?(v18, &v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (*(&v16 + 1))
  {
    v12 = v15;
    v13 = v16;
    v14 = v17;
    Hasher._combine(_:)(1u);
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v10 = *(v9 + 8);
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of NSObject?(v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    return outlined destroy of AnySpatialTemplateRole(&v12);
  }

  else
  {
    Hasher._combine(_:)(0);
    return outlined destroy of NSObject?(v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  }
}

Swift::Int SpatialTemplateSeatElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialTemplateSeatElement.hash(into:)();
  return Hasher._finalize()();
}

__n128 protocol witness for SpatialTemplateElement.position.getter in conformance SpatialTemplateSeatElement@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[1];
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

__n128 protocol witness for SpatialTemplateElement.direction.getter in conformance SpatialTemplateSeatElement@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 32);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateSeatElement()
{
  Hasher.init(_seed:)();
  SpatialTemplateSeatElement.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateSeatElement()
{
  Hasher.init(_seed:)();
  SpatialTemplateSeatElement.hash(into:)();
  return Hasher._finalize()();
}

__n128 static SpatialTemplateElement<>.seat(position:direction:role:)@<Q0>(__int128 *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a2->n128_u64[0];
  v9 = a2[3].n128_i8[0];
  outlined init with copy of URL?(a3, a4 + 88, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *a4 = v12;
  *(a4 + 32) = v8;
  result = a2[1];
  v11 = a2[2];
  *(a4 + 48) = result;
  *(a4 + 64) = v11;
  *(a4 + 80) = v9;
  return result;
}

__n128 SpatialTemplateElementDirection.output.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *v1;
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

__n128 SpatialTemplateElementDirection.init(output:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *a1;
  result = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  *(a2 + 48) = v2;
  return result;
}

__n128 static SpatialTemplateElementDirection.lookingAt(_:)@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(&v8, v3, v4);
  v6 = v9;
  v5 = v10;
  result = v8;
  a2->n128_u64[0] = 0;
  a2[1] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v5;
  a2[3].n128_u8[0] = 0;
  return result;
}

_BYTE *static SpatialTemplateElementDirection.alignedWith(appAxis:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = 0;
  v3 = 2;
  if (v2)
  {
    v3 = 0;
  }

  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

double static SpatialTemplateElementDirection.+ infix(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    v5 = 0;
    v3 = *(a1 + 16);
    v6 = 0uLL;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 24);
  }

  result = *a1 + a3;
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v4;
  return result;
}

double SpatialTemplateElementDirection.rotatedBy(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 48);
  if (v4 == 1)
  {
    v5 = 0;
    v3 = *(v2 + 16);
    v6 = 0uLL;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 24);
  }

  result = *v2 + a2;
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  return result;
}

uint64_t SpatialTemplateElementDirection.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  SPAngle.hash(into:)();
  if (v5)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int SpatialTemplateElementDirection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v5)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateElementDirection()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v5)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpatialTemplateElementDirection()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  SPAngle.hash(into:)();
  if (v5)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateElementDirection()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v5)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int SpatialTemplateElementAxis.Storage.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int SpatialTemplateElementAxis.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

__n128 SpatialTemplateElementPosition.output.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[1];
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.init(output:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[1];
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2[1].n128_u64[1] = v3;
  *a2 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.offsetBy(x:z:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  SPVector3DMake(*v3 + a2, v3[1], v3[2] + a3, v7.n128_f64);
  result = v7;
  v6 = v9;
  a1[1].n128_u64[0] = v8;
  a1[1].n128_u64[1] = v6;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.offsetBy(x:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>)
{
  SPVector3DMake(*v2 + a2, v2[1], v2[2] + 0.0, v6.n128_f64);
  result = v6;
  v5 = v8;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u64[1] = v5;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.offsetBy(z:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>)
{
  SPVector3DMake(*v2 + 0.0, v2[1], v2[2] + a2, v6.n128_f64);
  result = v6;
  v5 = v8;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u64[1] = v5;
  *a1 = result;
  return result;
}

uint64_t SpatialTemplateElementPosition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MEMORY[0x1B2715040](0);
  return SPVector3D.hash(into:)();
}

Swift::Int SpatialTemplateElementPosition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateElementPosition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpatialTemplateElementPosition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MEMORY[0x1B2715040](0);
  return SPVector3D.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateElementPosition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SpatialTemplateElementPosition(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}