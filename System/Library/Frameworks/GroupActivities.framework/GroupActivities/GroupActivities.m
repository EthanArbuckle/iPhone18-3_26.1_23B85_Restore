uint64_t type metadata accessor for AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GroupActivityMetadata()
{
  type metadata accessor for GroupActivityMetadata.ActivityType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGImageRef?(319, &lazy cache variable for type metadata for CGImageRef?, type metadata accessor for CGImageRef);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGImageRef?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for GroupActivityMetadata.ActivityType()
{
  result = type metadata accessor for GroupActivityDescription();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for CGImageRef?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for TUConversationActivityLifetimePolicy(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void type metadata accessor for Published<Set<Participant>>()
{
  if (!lazy cache variable for type metadata for Published<Set<Participant>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Set<Participant>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata instantiation function for GroupSession.State()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AEE82824()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDys6UInt64V15GroupActivities19InternalParticipantVGGMd, &_s15Synchronization5MutexVySDys6UInt64V15GroupActivities19InternalParticipantVGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void type metadata completion function for GroupSession(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  if (v3 <= 0x3F)
  {
    v21 = *(v2 - 8) + 64;
    v4 = type metadata accessor for UUID();
    if (v5 <= 0x3F)
    {
      v22 = *(v4 - 8) + 64;
      v6 = *(a1 + 80);
      v7 = *(a1 + 88);
      type metadata accessor for GroupSession.State();
      v8 = type metadata accessor for Published();
      if (v9 <= 0x3F)
      {
        v10 = *(v8 - 8) + 64;
        v11 = type metadata accessor for Published();
        if (v12 <= 0x3F)
        {
          v23 = *(v11 - 8) + 64;
          type metadata accessor for Published<Set<Participant>>();
          if (v14 <= 0x3F)
          {
            v24 = *(v13 - 8) + 64;
            v15 = type metadata accessor for GroupSession.Timestamps();
            if (v16 <= 0x3F)
            {
              v25 = *(v15 - 8) + 64;
              type metadata accessor for GroupSession.MessageQueue();
              v17 = type metadata accessor for Published();
              if (v18 <= 0x3F)
              {
                v26 = *(v17 - 8) + 64;
                type metadata accessor for SharePlayLatencyLogger.Interval?(319, &lazy cache variable for type metadata for SharePlayLatencyLogger.Interval?, MEMORY[0x1E6997558]);
                if (v20 <= 0x3F)
                {
                  v27 = *(v19 - 8) + 64;
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for Participant()
{
  result = type metadata singleton initialization cache for Participant;
  if (!type metadata singleton initialization cache for Participant)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Participant()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t specialized GroupStateObserver.init(conversationManagerClient:queue:)(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR);
  v56 = *(v58 - 8);
  v18 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR);
  v60 = *(v21 - 8);
  v61 = v21;
  v22 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v53 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR);
  v63 = *(v69 - 8);
  v24 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v26 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v53 - v30;
  v71 = a1;
  v32 = OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  LOBYTE(v70) = 0;
  Published.init(initialValue:)();
  v33 = *(v28 + 32);
  v64 = a3;
  v57 = v27;
  v33(a3 + v32, v31, v27);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.client);
  v35 = a2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_1AEE80000, v36, v37, "Initialized group state observer on queue: %@", v38, 0xCu);
    outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v39, -1, -1);
    MEMORY[0x1B2715BA0](v38, -1, -1);
  }

  type metadata accessor for ConversationManagerClient();
  v41 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();

  v70 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR);
  v70 = Publisher.eraseToAnyPublisher()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR);
  v42 = v55;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v54 + 8))(v17, v42);
  v70 = v35;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v44 = v62;
  (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v46 = v58;
  v45 = v59;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(v56 + 8))(v20, v46);
  v47 = v64;
  swift_beginAccess();
  v48 = v66;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR);
  v49 = v61;
  Publisher<>.assign(to:)();
  (*(v60 + 8))(v45, v49);
  v51 = v67;
  v50 = v68;
  (*(v67 + 16))(v65, v48, v68);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();

  (*(v51 + 8))(v48, v50);
  (*(v63 + 8))(v26, v69);
  return v47;
}

uint64_t type metadata accessor for GroupStateObserver()
{
  result = type metadata singleton initialization cache for GroupStateObserver;
  if (!type metadata singleton initialization cache for GroupStateObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GroupStateObserver()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
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

uint64_t GroupStateObserver.__allocating_init()()
{
  v1 = v0;
  type metadata accessor for OS_dispatch_queue();
  v2 = static OS_dispatch_queue.main.getter();
  type metadata accessor for ConversationManagerClient();
  v3 = static ConversationManagerClient.shared.getter();
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  v6 = swift_allocObject();
  v7 = specialized GroupStateObserver.init(conversationManagerClient:queue:)(v3, v2, v6);

  return v7;
}

uint64_t type metadata instantiation function for GroupSessionObserver()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double GroupSessionObserver.init(for:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v2 = static OS_dispatch_queue.main.getter();
  GroupSessionObserver.init(for:queue:)(v2, v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t GroupSessionObserver.init(for:queue:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Initialized observer for %s on queue: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static ConversationManager.shared;
  *a2 = v5;
  a2[1] = v15;
  a2[2] = &protocol witness table for ConversationManager;
  a2[3] = protocol witness for static GroupActivity._identifiable(by:staticIdentifier:) in conformance AnyGroupActivity;
  a2[4] = 0;
}

uint64_t sub_1AEE83B40()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGGMd, &_s15Synchronization5MutexVy14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t one-time initialization function for sessionUI(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

void type metadata completion function for GroupSession.Timestamps()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SharePlayLatencyLogger.Interval?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SharePlayLatencyLogger.Interval?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for GroupSession.MessageQueue()
{
  result = type metadata accessor for PubSubTopic.QueueState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for GroupSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for GroupSession.Sessions()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for GroupSession.Sessions.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double static GroupActivity.sessions()@<D0>(uint64_t a1@<X8>)
{
  GroupSessionObserver.init(for:)(v8);
  v6[0] = v8[0];
  v6[1] = v8[1];
  v7 = v9;
  v2 = type metadata accessor for GroupSessionObserver();
  swift_getWitnessTable();
  _PublisherElements.init(_:)(v6, v2, v10);
  v3 = v11;
  result = *v10;
  v5 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void closure #1 in GroupStateObserver.init(conversationManagerClient:queue:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * v11)));
    if ([v12 state] == 3)
    {
      v13 = [v12 capabilities];

      if ((v13 & 8) != 0)
      {
        v14 = 1;
LABEL_14:

        *a2 = v14;
        return;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void closure #2 in GroupStateObserver.init(conversationManagerClient:queue:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.client);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "Group session eligibility changed to new value: %{BOOL}d", v4, 8u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void one-time initialization function for shared()
{
  type metadata accessor for ConversationManagerClient();
  v0 = static ConversationManagerClient.shared.getter();
  type metadata accessor for ConversationManager();
  v1 = swift_allocObject();
  v2 = v0;
  v3 = specialized ConversationManager.init(client:)(v2, v1);

  static ConversationManager.shared = v3;
}

{
  v0 = [objc_allocWithZone(type metadata accessor for BackgroundSessionManagerClient()) init];
  type metadata accessor for BackgroundGroupSessionManager();
  v1 = swift_allocObject();
  v2 = specialized BackgroundGroupSessionManager.init(client:)(v0, v1);

  static BackgroundGroupSessionManager.shared = v2;
}

uint64_t specialized ConversationManager.init(client:)(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for ConversationManagerClient();
  v8 = MEMORY[0x1E69975E0];
  *&v6 = a1;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static AVAudioSessionAssertionManager.shared;
  *(a2 + 72) = type metadata accessor for AVAudioSessionAssertionManager();
  *(a2 + 80) = &protocol witness table for AVAudioSessionAssertionManager;
  *(a2 + 48) = v4;
  *(a2 + 88) = 0;
  *(a2 + 136) = 0;
  outlined init with take of Transferable(&v6, a2 + 96);

  return a2;
}

uint64_t outlined init with take of Transferable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for AVAudioSessionAssertionManager();
  v0 = swift_allocObject();
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = Lock.init()();
  v5 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = result;
  *(v0 + 24) = v5;
  static AVAudioSessionAssertionManager.shared = v0;
  return result;
}

{
  type metadata accessor for SystemCoordinatorTable();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  static SystemCoordinatorTable.shared = v0;
  return result;
}

{
  type metadata accessor for BackgroundAudioSessionAssertionManager();
  result = swift_initStaticObject();
  static BackgroundAudioSessionAssertionManager.shared = result;
  return result;
}

{
  type metadata accessor for StaticGroupActivityRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = Lock.init()();
  *(v0 + 24) = result;
  static StaticGroupActivityRegistry.shared = v0;
  return result;
}

void GroupSession.Sessions.makeAsyncIterator()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v11 = *v2;
  v10 = *(v2 + 8);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for GroupSessionObserver();
  v7 = v4;
  swift_unknownObjectRetain();

  swift_getWitnessTable();
  v8 = type metadata accessor for _PublisherElements();
  v9 = _PublisherElements.makeAsyncIterator()(v8);

  swift_unknownObjectRelease();

  *a2 = v9;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t type metadata completion function for _PublisherElements(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _PublisherElements.makeAsyncIterator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  return specialized _PublisherElements.Iterator.init(_:)();
}

uint64_t specialized _PublisherElements.Iterator.init(_:)()
{
  type metadata accessor for _PublisherElements.Iterator.Inner();
  v0 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  return v0;
}

uint64_t *_PublisherElements.Iterator.Inner.init()()
{
  v1 = *v0;
  v0[2] = swift_slowAlloc();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  v0[3] = Array.init()();
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  v0[8] = 0;
  v0[9] = static Subscribers.Demand.none.getter();
  *v0[2] = 0;
  return v0;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t GroupSessionObserver.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v126 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v125 = &v92 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMR);
  v101 = *(v102 - 8);
  v11 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v92 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMd, &_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMR);
  v105 = *(v107 - 8);
  v13 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMd, &_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMR);
  v111 = *(v15 - 8);
  v16 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v92 - v17;
  v18 = *(a2 + 24);
  v128 = *(a2 + 16);
  v129 = a2;
  v117 = v18;
  v19 = type metadata accessor for GroupSession();
  v20 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Filter<Publishers.FlatMap<Publishers.MergeMany<Just<GroupSession<AnyGroupActivity>>>, Publishers.HandleEvents<AnyPublisher<[GroupSession<AnyGroupActivity>], Never>>>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMd, &_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMR);
  v113 = v15;
  v106 = v19;
  v104 = v20;
  v21 = type metadata accessor for Publishers.CompactMap();
  v120 = *(v21 - 8);
  v22 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v92 - v23;
  WitnessTable = swift_getWitnessTable();
  v122 = v21;
  v108 = WitnessTable;
  v25 = type metadata accessor for Publishers.HandleEvents();
  v123 = *(v25 - 8);
  v26 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v92 - v27;
  v28 = type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v29 = swift_getWitnessTable();
  v30 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v124 = v25;
  *&v131 = v25;
  *(&v131 + 1) = v28;
  v115 = v28;
  v112 = v29;
  *&v132 = v29;
  *(&v132 + 1) = v30;
  v110 = v30;
  v119 = type metadata accessor for Publishers.ReceiveOn();
  v116 = *(v119 - 8);
  v31 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v92 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v95 = *(v33 - 8);
  v34 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v92 - v35;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities12ConversationCGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities12ConversationCGGMR);
  v96 = *(v99 - 8);
  v37 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v39 = &v92 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMR);
  v127 = *(v40 - 8);
  v41 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v92 - v42;
  v44 = v4[1];
  v131 = *v4;
  v132 = v44;
  v133 = *(v4 + 4);
  v45 = *(&v131 + 1);
  v46 = v44;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (v45 == static ConversationManager.shared)
  {
    type metadata accessor for ConversationManagerClient();
    v94 = static ConversationManagerClient.shared.getter();
    v130[0] = ConversationManagerClient.onActivitySessionsChanged.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    v93 = v40;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities12ConversationCGMd, &_sSay15GroupActivities12ConversationCGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
    Publisher.map<A>(_:)();
    (*(v95 + 8))(v36, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
    v49 = v99;
    Publishers.Map.map<A>(_:)();
    (*(v96 + 8))(v39, v49);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Publishers.HandleEvents<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>>, [GroupSession<AnyGroupActivity>]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMR);
    v50 = v93;
    v48 = Publisher.eraseToAnyPublisher()();

    (*(v127 + 8))(v43, v50);
  }

  else
  {
    v48 = (*(v46 + 24))(ObjectType, v46);
  }

  v130[5] = v48;
  v51 = swift_allocObject();
  v52 = v128;
  *(v51 + 16) = v128;
  *(v51 + 24) = a3;
  v53 = v52;
  v98 = a3;
  v54 = v117;
  *(v51 + 32) = v117;
  *(v51 + 40) = a4;
  v55 = v54;
  v97 = a4;
  v56 = v132;
  *(v51 + 48) = v131;
  *(v51 + 64) = v56;
  *(v51 + 80) = v133;
  v99 = v48;

  v57 = v129;
  v58 = *(v129 - 8);
  v96 = *(v58 + 16);
  v127 = v58 + 16;
  (v96)(v130, &v131, v129);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSession<AnyGroupActivity>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMR);
  v59 = v100;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  static Subscribers.Demand.unlimited.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMd, &_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<AnyPublisher<[GroupSession<AnyGroupActivity>], Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MergeMany<Just<GroupSession<AnyGroupActivity>>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMd, &_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMR);
  v60 = v103;
  v61 = v102;
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  (*(v101 + 8))(v59, v61);
  v62 = swift_allocObject();
  v63 = v98;
  *(v62 + 16) = v53;
  *(v62 + 24) = v63;
  v64 = v55;
  v65 = v97;
  *(v62 + 32) = v55;
  *(v62 + 40) = v65;
  v66 = v132;
  *(v62 + 48) = v131;
  *(v62 + 64) = v66;
  *(v62 + 80) = v133;
  v67 = v57;
  v68 = v96;
  (v96)(v130, &v131, v67);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.MergeMany<Just<GroupSession<AnyGroupActivity>>>, Publishers.HandleEvents<AnyPublisher<[GroupSession<AnyGroupActivity>], Never>>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMd, &_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMR);
  v69 = v109;
  v70 = v107;
  Publisher.filter(_:)();

  (*(v105 + 8))(v60, v70);
  v71 = v131;
  v72 = swift_allocObject();
  v73 = v128;
  *(v72 + 16) = v128;
  *(v72 + 24) = v63;
  v74 = v63;
  *(v72 + 32) = v64;
  *(v72 + 40) = v65;
  v75 = v65;
  v76 = v132;
  *(v72 + 48) = v131;
  *(v72 + 64) = v76;
  *(v72 + 80) = v133;
  *(v72 + 88) = v71;
  v77 = v71;
  v68(v130, &v131, v129);
  v78 = v77;
  v79 = v118;
  v80 = v113;
  Publisher.compactMap<A>(_:)();

  (*(v111 + 8))(v69, v80);
  v81 = swift_allocObject();
  v81[2] = v73;
  v81[3] = v74;
  v81[4] = v64;
  v81[5] = v75;
  v82 = swift_allocObject();
  v82[2] = v73;
  v82[3] = v74;
  v82[4] = v64;
  v82[5] = v75;
  v83 = swift_allocObject();
  v83[2] = v73;
  v83[3] = v74;
  v83[4] = v64;
  v83[5] = v75;
  v84 = v122;
  v85 = v121;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v120 + 8))(v79, v84);
  v130[0] = v78;
  v86 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v87 = v125;
  (*(*(v86 - 8) + 56))(v125, 1, 1, v86);
  v88 = v114;
  v89 = v124;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v87, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v123 + 8))(v85, v89);
  v90 = v119;
  Publishers.ReceiveOn.receive<A>(subscriber:)();

  return (*(v116 + 8))(v88, v90);
}

uint64_t sub_1AEE85D90()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

void type metadata completion function for AnyGroupActivity()
{
  type metadata accessor for AnyGroupActivity.MetadataProvider(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AnyGroupActivity.MetadataProvider()
{
  type metadata accessor for GroupActivityMetadata(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Future<GroupActivityMetadata, Never>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Future<GroupActivityMetadata, Never>()
{
  if (!lazy cache variable for type metadata for Future<GroupActivityMetadata, Never>)
  {
    type metadata accessor for GroupActivityMetadata(255);
    v0 = type metadata accessor for Future();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Future<GroupActivityMetadata, Never>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for AnyGroupActivity(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for Conversation()
{
  result = type metadata singleton initialization cache for Conversation;
  if (!type metadata singleton initialization cache for Conversation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Conversation()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for Published<Conversation.State>(319, &lazy cache variable for type metadata for Published<Conversation.State>);
    if (v4 <= 0x3F)
    {
      v11 = *(v3 - 8) + 64;
      type metadata accessor for Published<Set<Participant>>(319, &lazy cache variable for type metadata for Published<Set<Participant>>, &_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        type metadata accessor for Published<Conversation.State>(319, &lazy cache variable for type metadata for Published<UInt64>);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          type metadata accessor for Published<Set<Participant>>(319, &lazy cache variable for type metadata for Published<[GroupSession<AnyGroupActivity>]>, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Conversation.State>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Published<Set<Participant>>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void closure #11 in GroupSessionObserver.receive<A>(subscriber:)()
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.client);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = Subscribers.Demand.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "Received request for next activity session with demand: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }
}

void closure #1 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.client);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    type metadata accessor for UUID();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v6 = Dictionary.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "Received updated conversation containers: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #2 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v56 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  v57 = *(v74 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v56 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  v58 = *(v72 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v56 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v59 = *(v70 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v56 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  v60 = *(v68 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v56 - v10;
  v66 = type metadata accessor for UUID();
  v11 = *(v66 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v56 - v15;
  v16 = *a1;
  v17 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v16 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = *(*(v16 + 56) + ((v23 << 9) | (8 * v24)));
        if ([v25 state] == 3 && objc_msgSend(v25, sel_localParticipantIdentifier))
        {
          a1 = &v76;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v26 = *(v76 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v22 = v23;
          if (!v20)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v22 = v23;
          if (!v20)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v23 = v22;
      }
    }
  }

  a1 = v76;
  v76 = v17;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  for (i = *(a1 + 16); ; i = __CocoaSet.count.getter())
  {
    v28 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v29 = 0;
    v62 = a1;
    v63 = a1 & 0xC000000000000001;
    v59 += 32;
    v60 += 32;
    v57 += 32;
    v58 += 32;
    v30 = v11 + 4;
    v61 = i;
    while (1)
    {
      if (v63)
      {
        v31 = MEMORY[0x1B2714B30](v29, a1);
      }

      else
      {
        if (v29 >= *(a1 + 16))
        {
          goto LABEL_36;
        }

        v31 = *(a1 + 8 * v29 + 32);
      }

      v11 = v31;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = [v31 UUID];
      v34 = v64;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = [v11 groupUUID];
      v36 = v65;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v35) = [v11 capabilities];
      v37 = type metadata accessor for Conversation();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      v40 = swift_allocObject();
      v41 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
      LOBYTE(v75) = 0;
      v42 = v67;
      Published.init(initialValue:)();
      (*v60)(v40 + v41, v42, v68);
      v43 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
      v75 = MEMORY[0x1E69E7CD0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
      v44 = v69;
      Published.init(initialValue:)();
      (*v59)(v40 + v43, v44, v70);
      v45 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
      v75 = 0;
      v46 = v71;
      Published.init(initialValue:)();
      (*v58)(v40 + v45, v46, v72);
      v47 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
      v75 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
      v48 = v73;
      Published.init(initialValue:)();
      (*v57)(v40 + v47, v48, v74);
      v49 = *v30;
      v50 = v66;
      (*v30)(v40 + OBJC_IVAR____TtC15GroupActivities12Conversation_id, v34, v66);
      v49(v40 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v36, v50);
      *(v40 + OBJC_IVAR____TtC15GroupActivities12Conversation_isEligibleForGroupSessions) = (v35 & 8) != 0;

      v51 = [v11 state];
      if (v51 >= 5)
      {
        v52 = 0;
      }

      else
      {
        v52 = v51;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v75) = v52;

      static Published.subscript.setter();
      v53 = [v11 localParticipantIdentifier];
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = v53;

      static Published.subscript.setter();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v54 = specialized InternalGroupSessionProvider.groupSessions(for:)(v11);
      swift_getKeyPath();
      swift_getKeyPath();
      v75 = v54;
      static Published.subscript.setter();

      MEMORY[0x1B27142A0]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v29;
      a1 = v62;
      if (v32 == v61)
      {
        v28 = v76;
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_33:

  *v56 = v28;
  return result;
}

unint64_t closure #3 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized Sequence.flatMap<A>(_:)(*a1);
  *a2 = result;
  return result;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B2714B30](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = (*(*v4 + 328))();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          __CocoaSet.count.getter();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_45;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GroupSession<AnyGroupActivity>] and conformance [A], &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
              v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B2714B30](v2, v26);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = specialized InternalGroupSessionProvider.groupSessions(for:)(isUniquelyReferenced_nonNull_bridgeObject);

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v9)
        {
LABEL_21:
          __CocoaSet.count.getter();
          goto LABEL_22;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v14 >> 1) - v13) < v33)
          {
            goto LABEL_44;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_46;
            }

            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GroupSession<AnyGroupActivity>] and conformance [A], &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
              v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          if (v33 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t partial apply for closure #4 in GroupSessionObserver.receive<A>(subscriber:)(unint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #4 in GroupSessionObserver.receive<A>(subscriber:)(a1, (v1 + 6));
}

uint64_t closure #4 in GroupSessionObserver.receive<A>(subscriber:)(unint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (one-time initialization token for client != -1)
  {
LABEL_30:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.client);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v45 = a2;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v55 = v13;
    *v12 = 136315138;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
    v15 = MEMORY[0x1B27142D0](v7, v14);
    a2 = v4;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v55);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v9, v10, "Received updated sessions: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (v7 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_32:
    v40 = *(v45 + 8);
    v39 = *(v45 + 16);
    ObjectType = swift_getObjectType();
    v42 = (*(v39 + 48))(ObjectType, v39);
    (*(*v42 + 152))(v18);
  }

  v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_32;
  }

LABEL_6:
  v20 = 0;
  v50 = v7 & 0xFFFFFFFFFFFFFF8;
  v51 = v7 & 0xC000000000000001;
  v52 = (v46 + 16);
  v48 = v7;
  v49 = (v46 + 8);
  v47 = v19;
  while (1)
  {
    if (v51)
    {
      v21 = MEMORY[0x1B2714B30](v20, v7);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v20 >= *(v50 + 16))
      {
        goto LABEL_27;
      }

      v21 = *(v7 + 8 * v20 + 32);

      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v53 = v22;
    v7 = *v52;
    v23 = v54;
    a2 = v4;
    (*v52)(v54, v21 + direct field offset for GroupSession.id, v4);
    v24 = *(v21 + *(*v21 + 408));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v18;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
    v28 = v18[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_28;
    }

    v31 = v26;
    if (v18[3] < v30)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v55;
      if (v26)
      {
        goto LABEL_7;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v18 = v55;
      if (v31)
      {
LABEL_7:
        *(v18[7] + 8 * v27) = v24;

        v4 = a2;
        (*v49)(v54, a2);
        goto LABEL_8;
      }
    }

LABEL_19:
    v18[(v27 >> 6) + 8] |= 1 << v27;
    v34 = v46;
    v35 = v54;
    v4 = a2;
    (v7)(v18[6] + *(v46 + 72) * v27, v54, a2);
    *(v18[7] + 8 * v27) = v24;

    (*(v34 + 8))(v35, a2);
    v36 = v18[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_29;
    }

    v18[2] = v38;
LABEL_8:
    ++v20;
    v7 = v48;
    if (v53 == v47)
    {
      goto LABEL_32;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
  if ((v31 & 1) == (v33 & 1))
  {
    v27 = v32;
    v18 = v55;
    if (v31)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of URL?(v10, v6, &_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t ConversationManager.groupSessionTable.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v2 = v0;
    type metadata accessor for GroupSessionTable();
    v1 = swift_allocObject();
    v3 = type metadata accessor for Lock();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v1 + 16) = Lock.init()();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v6 = *(v0 + 88);
    *(v2 + 88) = v1;
  }

  return v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMd, &_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of URL?(v10, v6, &_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMd, &_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of GroupSessionTable.Storage(&v6[v9], v8[7] + 24 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t GroupStateObserver.$isEligibleForGroupSession.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

Swift::Void __swiftcall GroupSessionTable.cleanUpIfNotPresent(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 16);

  Lock.withLock<A>(_:)();
}

uint64_t closure #1 in GroupSessionTable.cleanUpIfNotPresent(_:)(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for UUID();
  v5 = *(v64 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMR);
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v49 - v9;
  swift_beginAccess();
  v11 = *(a1 + 24);

  v13 = v5;
  v14 = specialized _NativeDictionary.filter(_:)(v12, a2);
  v50 = v2;

  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v59 = v14;
  v60 = v13 + 16;
  v56 = v13;
  v63 = (v13 + 8);

  v21 = 0;
  *&v22 = 136315138;
  v52 = v22;
  v51 = xmmword_1AF00EBD0;
  v54 = v19;
  v55 = v14 + 64;
  v53 = a1;
  v57 = v10;
  while (v18)
  {
    v23 = v61;
LABEL_13:
    v25 = __clz(__rbit64(v18)) | (v21 << 6);
    v26 = v59;
    v27 = *(v59 + 48);
    v62 = *(v56 + 72);
    v28 = *(v56 + 16);
    v28(v10, v27 + v62 * v25, v64);
    outlined init with copy of GroupSessionTable.Storage(*(v26 + 56) + 24 * v25, &v10[*(v58 + 48)]);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.default);
    v28(v23, v10, v64);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v65 = v33;
      *v32 = v52;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v23;
      v37 = v36;
      v38 = *v63;
      (*v63)(v35, v64);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v37, &v65);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_1AEE80000, v30, v31, "Session %s is no longer tracked. Cleaning up session.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v40 = v33;
      a1 = v53;
      MEMORY[0x1B2715BA0](v40, -1, -1);
      MEMORY[0x1B2715BA0](v32, -1, -1);
    }

    else
    {

      v41 = v23;
      v38 = *v63;
      (*v63)(v41, v64);
    }

    v15 = v55;
    swift_beginAccess();
    v42 = *(a1 + 24);
    v10 = v57;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
    if (v44)
    {
      v45 = v43;
      v46 = *(a1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a1 + 24);
      v67 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v48 = v67;
      }

      v38((*(v48 + 48) + v45 * v62), v64);
      outlined init with take of GroupSessionTable.Storage(*(v48 + 56) + 24 * v45, &v65);
      specialized _NativeDictionary._delete(at:)(v45, v48);
      *(a1 + 24) = v48;
    }

    else
    {
      v65 = v51;
      v66 = 0;
    }

    v18 &= v18 - 1;
    outlined destroy of NSObject?(&v65, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMd, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMR);
    swift_endAccess();
    result = outlined destroy of NSObject?(v10, &_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMR);
    v19 = v54;
  }

  v23 = v61;
  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
    }

    v18 = *(v15 + 8 * v24);
    ++v21;
    if (v18)
    {
      v21 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _PublisherElements.Iterator.Inner.receive(subscription:)(void *a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v16, v1 + 4, v7);
  v9 = v17;
  (*(v8 + 8))(v16, v7);
  if (v9)
  {
    os_unfair_lock_unlock(v4);
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = *(v10 + 8);
    return dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    outlined init with copy of Transferable(a1, v16);
    swift_beginAccess();
    (*(v8 + 40))(v1 + 4, v16, v7);
    swift_endAccess();
    swift_beginAccess();
    v13 = v1[9];
    v1[9] = static Subscribers.Demand.none.getter();
    os_unfair_lock_unlock(v4);
    v14 = static Subscribers.Demand.none.getter();
    static Subscribers.Demand.unlimited.getter();
    if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0 || (static Subscribers.Demand.unlimited.getter(), result = static Subscribers.Demand.== infix(_:_:)(), (result & 1) == 0))
    {
      static Subscribers.Demand.unlimited.getter();
      if ((static Subscribers.Demand.== infix(_:_:)() & 1) != 0 || (static Subscribers.Demand.unlimited.getter(), result = static Subscribers.Demand.== infix(_:_:)(), (result & 1) == 0) && v14 < v13)
      {
        v15 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        return dispatch thunk of Subscription.request(_:)();
      }
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J12mn14C7Storage33_64pqrstuvW7ALLVTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjPIsgnndzo_Tf1nc_n04_s15k14Activities0A12mn76C19cleanUpIfNotPresentyySDy10Foundation4UUIDVSiGFyyXEfU_SbAG_AC7Storage33_64pqrstuvW10ALLVtXEfU_SDyAJSiGTf1nnc_n(v13, v7, a1, a2);
      MEMORY[0x1B2715BA0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = specialized closure #1 in _NativeDictionary.filter(_:)((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K23SessionProviderObserverCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J23mnO4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s15k26Activities010BackgroundA14m35ManagerC15updateProviders3forySDy10w64UUIDVSo022TUConversationActivityD9ContainerCG_tFSbAH3key_AA0aD16nO15C5valuet_tXEfU_SDyAJSo022TUConversationActivityM9ContainerCGTf1nnc_n(v13, v7, a1, a2);
      MEMORY[0x1B2715BA0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = specialized closure #1 in _NativeDictionary.filter(_:)((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a2;
  v32 = a4;
  v27 = a1;
  v31 = type metadata accessor for UUID();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v31);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v34 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v30 = v5 + 16;
  v28 = 0;
  v29 = v5 + 8;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v34;
    v23 = v31;
    (*(v5 + 16))(v9, v34[6] + *(v5 + 72) * v21, v31);
    outlined init with copy of GroupSessionTable.Storage(v22[7] + 24 * v21, v33);
    LOBYTE(v22) = closure #1 in closure #1 in GroupSessionTable.cleanUpIfNotPresent(_:)(v9, v33, v32);
    outlined destroy of GroupSessionTable.Storage(v33);
    result = (*(v5 + 8))(v9, v23);
    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v34);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v34);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v47 = a2;
  v61 = a4;
  v48 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  v5 = *(*(v54 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v46 - v8;
  v58 = type metadata accessor for UUID();
  v9 = *(*(v58 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v58);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v13 = 0;
  v56 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v51 = v11 + 16;
  v52 = v11;
  v55 = (v11 + 8);
  v21 = v58;
  while (v19)
  {
    v25 = __clz(__rbit64(v19));
    v57 = (v19 - 1) & v19;
LABEL_12:
    v28 = v25 | (v13 << 6);
    v29 = v56;
    v30 = *(v52 + 16);
    v31 = v59;
    v30(v59, v56[6] + *(v52 + 72) * v28, v21);
    v32 = v29[7];
    v50 = v28;
    v33 = *(v32 + 8 * v28);
    v34 = v60;
    v30(v60, v31, v21);
    v35 = v54;
    *(v34 + *(v54 + 48)) = v33;
    v36 = v34;
    v37 = v53;
    outlined init with copy of URL?(v36, v53, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    v38 = *(v37 + *(v35 + 48));
    swift_retain_n();

    if (*(v61 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v40 & 1) != 0))
    {
      v41 = [*(*(v61 + 56) + 8 * v39) state];
      outlined destroy of NSObject?(v60, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      v42 = *v55;
      v43 = v37;
      v44 = v58;
      (*v55)(v43, v58);

      result = (v42)(v59, v44);
      v19 = v57;
      if (v41 == 4)
      {
        *(v48 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v48, v47, v49, v56, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
        }
      }
    }

    else
    {
      outlined destroy of NSObject?(v60, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      v22 = *v55;
      v23 = v37;
      v24 = v58;
      (*v55)(v23, v58);

      result = (v22)(v59, v24);
      v19 = v57;
    }
  }

  v26 = v13;
  while (1)
  {
    v13 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v48, v47, v49, v56, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
    }

    v27 = v15[v13];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v57 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator.Inner.State()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v44 = v50 + 16;
  v45 = result;
  v18 = v50 + 32;
  v19 = result + 64;
  v46 = a1;
  v42 = a4;
  v43 = a2;
  while (v16)
  {
    v20 = v18;
    v21 = v12;
    v22 = __clz(__rbit64(v16));
    v48 = (v16 - 1) & v16;
LABEL_16:
    v25 = v22 | (v17 << 6);
    v26 = a4[6];
    v28 = v50;
    v27 = v51;
    v49 = *(v50 + 72);
    v29 = v47;
    (*(v50 + 16))(v47, v26 + v49 * v25, v51);
    outlined init with copy of GroupSessionTable.Storage(a4[7] + 24 * v25, v53);
    v30 = *(v28 + 32);
    v12 = v21;
    v31 = v21;
    v18 = v20;
    v30(v31, v29, v27);
    outlined init with take of GroupSessionTable.Storage(v53, v52);
    v15 = v45;
    v32 = *(v45 + 40);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(v15 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      a1 = v46;
      a2 = v43;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v19 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    a1 = v46;
    a2 = v43;
LABEL_26:
    *(v19 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v30((*(v15 + 48) + v36 * v49), v12, v51);
    result = outlined init with take of GroupSessionTable.Storage(v52, *(v15 + 56) + 24 * v36);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v42;
    v16 = v48;
    if (!a3)
    {
      return v15;
    }
  }

  v23 = v17;
  while (1)
  {
    v17 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v24 = a1[v17];
    ++v23;
    if (v24)
    {
      v20 = v18;
      v21 = v12;
      v22 = __clz(__rbit64(v24));
      v48 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v8 = type metadata accessor for InternalParticipant();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v35 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v35 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v36;
    v25 = *(v37 + 72);
    outlined init with copy of InternalParticipant(v22 + v25 * v21, v36);
    outlined init with take of InternalParticipant(v24, v38);
    result = MEMORY[0x1B2715020](*(v14 + 40), v23);
    v26 = -1 << *(v14 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v14 + 48) + 8 * v29) = v23;
    result = outlined init with take of InternalParticipant(v38, *(v14 + 56) + v29 * v25);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v35;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOyx___G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

size_t closure #5 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = *a1;
  if (*a1 >> 62)
  {
    if (v12 < 0)
    {
      v22 = *a1;
    }

    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    goto LABEL_15;
  }

  v25 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v23[1] = a2;
    v14 = v25;
    if ((v12 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v13; ++i)
      {
        v24 = MEMORY[0x1B2714B30](i, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
        Just.init(_:)();
        v25 = v14;
        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v18 + 1;
        (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v11, v4);
      }
    }

    else
    {
      v19 = (v12 + 32);
      do
      {
        v24 = *v19;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
        Just.init(_:)();
        v25 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v21 + 1;
        (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v9, v4);
        ++v19;
        --v13;
      }

      while (v13);
    }

LABEL_15:
    v25 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<GroupSession<AnyGroupActivity>> and conformance Just<A>, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [Just<GroupSession<AnyGroupActivity>>] and conformance [A], &_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
    return Publishers.MergeMany.init<A>(_:)();
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Transferable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void partial apply for closure #10 in GroupSessionObserver.receive<A>(subscriber:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  closure #10 in GroupSessionObserver.receive<A>(subscriber:)();
}

void closure #10 in GroupSessionObserver.receive<A>(subscriber:)()
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.client);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = _typeName(_:qualified:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "Received cancel on observer for activity type: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }
}

uint64_t objectdestroy_42Tm()
{
  v1 = (type metadata accessor for Participant() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[5];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSession<A>.Sessions.Iterator(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance GroupSession<A>.Sessions.Iterator;

  return GroupSession.Sessions.Iterator.next()(a2);
}

uint64_t GroupSession.Sessions.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for GroupSessionObserver();
  swift_getWitnessTable();
  v6 = type metadata accessor for _PublisherElements.Iterator();
  *v3 = v1;
  v3[1] = GroupSession.Sessions.Iterator.next();

  return _PublisherElements.Iterator.next()(v1 + 16, v6);
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](_PublisherElements.Iterator.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *v2;
  v0[5] = *v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v1 + 16);
  v4[3] = *(v1 + 24);
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  *v5 = v0;
  v5[1] = _PublisherElements.Iterator.next();
  v7 = v0[2];

  return withTaskCancellationHandler<A>(handler:operation:)(v7, partial apply for closure #1 in _PublisherElements.Iterator.next(), v3, &async function pointer to partial apply for closure #2 in _PublisherElements.Iterator.next(), v4, v6);
}

uint64_t withTaskCancellationHandler<A>(handler:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return (withTaskCancellationHandler<A>(operation:onCancel:isolation:))(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(MEMORY[0x1E69E88F0] + 4);
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEE6DE18](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t closure #2 in _PublisherElements.Iterator.next()()
{
  *(v0 + 32) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = closure #2 in _PublisherElements.Iterator.next();
  v2 = *(v0 + 16);

  return _PublisherElements.Iterator.Inner.next()(v2);
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t partial apply for closure #2 in _PublisherElements.Iterator.next()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #2 in _PublisherElements.Iterator.next()(a1, v6);
}

uint64_t closure #2 in _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.Inner.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](_PublisherElements.Iterator.Inner.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.Inner.next()()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  *v2 = v0;
  v2[1] = _PublisherElements.Iterator.Inner.next();
  v6 = v0[2];
  v7 = v0[3];

  return (withUnsafeContinuation<A>(isolation:_:))(v6, 0, 0, partial apply for closure #1 in _PublisherElements.Iterator.Inner.next(), v7, v5);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](withUnsafeContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeContinuation<A>(isolation:_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = withUnsafeContinuation<A>(isolation:_:);
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

void closure #1 in _PublisherElements.Iterator.Inner.next()(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v12 = a2[2];
  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v13 - 8) + 16))(&v18, a2 + 4, v13);
  if (!v19)
  {
    v16[1] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    swift_beginAccess();
    v14 = a2[9];
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_8;
    }

    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_8:
      v15 = static Subscribers.Demand.unlimited.getter();
    }

    a2[9] = v15;
    swift_endAccess();
    os_unfair_lock_unlock(v12);
    return;
  }

  if (v19 == 1)
  {
    os_unfair_lock_unlock(v12);
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v11, v7);
    swift_continuation_resume();
  }

  else
  {
    outlined init with take of Transferable(&v18, v17);
    v16[4] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    os_unfair_lock_unlock(v12);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance BroadcastOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo42AVPlaybackCoordinatorPlaybackObjectCommandaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t _sSo12SPRotation3DawCP_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for AbsoluteSpatialTemplateOutput.Element.Position(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEE8A340()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8A380()
{
  MEMORY[0x1B2715C70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8A3B8()
{
  v1 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AEE8A4BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.state.getter();
  *a2 = v5;
  return result;
}

__n128 sub_1AEE8A51C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8A57C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.activeParticipants.getter();
  *a2 = result;
  return result;
}

void sub_1AEE8A5A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  GroupSession.activeParticipants.setter();
}

uint64_t sub_1AEE8A660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.internalState.getter();
  *a2 = v5;
  return result;
}

uint64_t sub_1AEE8A6C0()
{
  MEMORY[0x1B2715C70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8A6FC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8A734()
{
  v1 = (type metadata accessor for Participant() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v6 + 64);
  v11 = v2 | v8;
  v7(v0 + v3, v5);
  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = *(v0 + v3 + v1[9] + 8);

  v7(v0 + v9, v5);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1AEE8A8AC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AEE8A910()
{
  v1 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8A9D8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  outlined consume of Data._Representation(*(v0 + v6), *(v0 + v6 + 8));
  v10 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_1AEE8AAE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8AB18()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE8AB50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8AB8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1AEE8ABE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  specialized GroupSession.playbackSyncerLink.setter(v4);
}

uint64_t sub_1AEE8AC4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.receivedDataPublisher.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8AC9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.receivedAttachmentPublisher.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8ACEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.catchupNeededPublisher.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8AE9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 368);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1AEE8AF94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 200))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  a2[1] = result;
  return result;
}

__n128 sub_1AEE8B028(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AEE8B05C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEE8B110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8B164(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);

  return v3(v4);
}

uint64_t sub_1AEE8B1CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8B220(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);

  return v3(v4);
}

uint64_t sub_1AEE8B288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8B2DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);

  return v3(v4);
}

uint64_t sub_1AEE8B354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AEE8B450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AEE8B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1AEE8B624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Participant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1AEE8B6EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8B810()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8B8A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8B8EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8B924()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8B9C0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t outlined consume of Set<TUHandle>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AEE8BA0C()
{
  v1 = v0;
  v2 = type metadata accessor for AnyGroupActivity(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = (v0 + v4 + v2[5]);
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
  }

  else
  {
    v26 = v5;
    v27 = v0;
    v10 = type metadata accessor for GroupActivityDescription();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = type metadata accessor for GroupActivityMetadata(0);
    v12 = *&v8[v11[5] + 8];

    v13 = *&v8[v11[6] + 8];

    v14 = v11[8];
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    if (!v17(&v8[v14], 1, v15))
    {
      (*(v16 + 8))(&v8[v14], v15);
    }

    v18 = v11[11];
    if (!v17(&v8[v18], 1, v15))
    {
      (*(v16 + 8))(&v8[v18], v15);
    }

    v19 = &v8[v11[12]];
    v20 = *(v19 + 2);

    v21 = *(v19 + 4);

    v4 = (v3 + 16) & ~v3;
    v1 = v27;
    v5 = v26;
  }

  outlined consume of Data._Representation(*(v6 + v2[6]), *(v6 + v2[6] + 8));
  v22 = v2[7];
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 8))(v6 + v22, v23);
  v24 = *(v6 + v2[8] + 8);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8BCAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8BE80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEE8BFA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEE8C0C8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1AEE8C178()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1AEE8C228()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8C2BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8C2F4()
{
  v1 = v0;
  v2 = type metadata accessor for AnyGroupActivity(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;
  v7 = *(v1 + v4 + 8);

  v8 = (v1 + v4 + v2[5]);
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
  }

  else
  {
    v28 = v5;
    v29 = v1;
    v10 = type metadata accessor for GroupActivityDescription();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = type metadata accessor for GroupActivityMetadata(0);
    v12 = *&v8[v11[5] + 8];

    v13 = *&v8[v11[6] + 8];

    v14 = v11[8];
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    if (!v17(&v8[v14], 1, v15))
    {
      (*(v16 + 8))(&v8[v14], v15);
    }

    v18 = v11[11];
    if (!v17(&v8[v18], 1, v15))
    {
      (*(v16 + 8))(&v8[v18], v15);
    }

    v19 = &v8[v11[12]];
    v20 = *(v19 + 2);

    v21 = *(v19 + 4);

    v4 = (v3 + 16) & ~v3;
    v1 = v29;
    v5 = v28;
  }

  v22 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Data._Representation(*(v6 + v2[6]), *(v6 + v2[6] + 8));
  v23 = v2[7];
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 8))(v6 + v23, v24);
  v25 = *(v6 + v2[8] + 8);

  v26 = *(v1 + v22 + 8);

  return MEMORY[0x1EEE6BDD0](v1, v22 + 16, v3 | 7);
}

uint64_t sub_1AEE8C5AC()
{
  v1 = type metadata accessor for AnyGroupActivity(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = (v0 + v3 + v1[5]);
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
  }

  else
  {
    v27 = v4;
    v28 = (v2 + 48) & ~v2;
    v29 = v2;
    v11 = type metadata accessor for GroupActivityDescription();
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = type metadata accessor for GroupActivityMetadata(0);
    v13 = *&v9[v12[5] + 8];

    v14 = *&v9[v12[6] + 8];

    v15 = v12[8];
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(&v9[v15], 1, v16))
    {
      (*(v17 + 8))(&v9[v15], v16);
    }

    v19 = v12[11];
    if (!v18(&v9[v19], 1, v16))
    {
      (*(v17 + 8))(&v9[v19], v16);
    }

    v20 = &v9[v12[12]];
    v21 = *(v20 + 2);

    v22 = *(v20 + 4);

    v3 = v28;
    v2 = v29;
    v4 = v27;
  }

  outlined consume of Data._Representation(*(v7 + v1[6]), *(v7 + v1[6] + 8));
  v23 = v1[7];
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 8))(v7 + v23, v24);
  v25 = *(v7 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEE8C860()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8C8A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8C8F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEE8C958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8C9A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_1AEE8CA24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8CA94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8CB6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8CBAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8CBF4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE8CC3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8CC88(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEE8CCE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8CD2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 240);

  return v3(v4);
}

uint64_t sub_1AEE8CD80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8CDD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 408);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEE8CE40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8CE94(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 432);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEE8CF00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8CF54(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 456);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEE8CFC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8D01C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEE8D0A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8D0DC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8D114()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8D1D8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  outlined consume of Data._Representation(*(v0 + 4), *(v0 + 5));
  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8D2D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEE8D310()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8D348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

double sub_1AEE8D4D8@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1AEE8D52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8D5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8D620()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

__n128 sub_1AEE8D6BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8D6F4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEE8D7C8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v8, 1, v11))
  {
    (*(v12 + 8))(v0 + v8, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1AEE8D964()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8D9A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8D9F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

__n128 sub_1AEE8DA68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8DA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8DAC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t sub_1AEE8DB20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8DB6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t sub_1AEE8DBCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8DC18(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);

  return v3(v4);
}

uint64_t sub_1AEE8DC84()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8DCC0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8DD60()
{
  v1 = v0;
  v2 = type metadata accessor for AnyGroupActivity(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = (v0 + v4 + v2[5]);
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
  }

  else
  {
    v26 = v5;
    v27 = v0;
    v10 = type metadata accessor for GroupActivityDescription();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = type metadata accessor for GroupActivityMetadata(0);
    v12 = *&v8[v11[5] + 8];

    v13 = *&v8[v11[6] + 8];

    v14 = v11[8];
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    if (!v17(&v8[v14], 1, v15))
    {
      (*(v16 + 8))(&v8[v14], v15);
    }

    v18 = v11[11];
    if (!v17(&v8[v18], 1, v15))
    {
      (*(v16 + 8))(&v8[v18], v15);
    }

    v19 = &v8[v11[12]];
    v20 = *(v19 + 2);

    v21 = *(v19 + 4);

    v4 = (v3 + 16) & ~v3;
    v1 = v27;
    v5 = v26;
  }

  outlined consume of Data._Representation(*(v6 + v2[6]), *(v6 + v2[6] + 8));
  v22 = v2[7];
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 8))(v6 + v22, v23);
  v24 = *(v6 + v2[8] + 8);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8E008()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8E040()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8E154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E1A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);

  return v3(v4);
}

uint64_t sub_1AEE8E204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1AEE8E260(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *(**a2 + 408);

  return v6(*&v2, v5, v4, v3);
}

uint64_t sub_1AEE8E2E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 12)
  {
    v14 = *(a1 + a3[6] + 8) >> 60;
    if (((4 * v14) & 0xC) != 0)
    {
      return 16 - ((4 * v14) & 0xC | (v14 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = type metadata accessor for URL();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1AEE8E46C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for SymmetricKey();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 12)
  {
    v15 = (a1 + a4[6]);
    *v15 = 0;
    v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[8];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_1AEE8E5EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8E62C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8E670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8E6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8E764(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DataRepresentation();

  return swift_getWitnessTable();
}

uint64_t sub_1AEE8E7B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E86C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E8BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E90C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E958(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);

  return v3(v4);
}

void *sub_1AEE8E9AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 248))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1AEE8EA08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 256);

  return v3(&v5);
}

uint64_t sub_1AEE8EA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8EAC8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 288);

  return v3(v4);
}

uint64_t sub_1AEE8EB24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8EB78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 312);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEE8EBE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8EC38(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 336);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEE8EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AEE8ED58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AEE8EE14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8EE5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8EF58()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8EF90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8F090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

__n128 sub_1AEE8F14C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8F158()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8F198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE8F1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8F234(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_1AEE8F2A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F2F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t sub_1AEE8F354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F3A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);

  return v3(v4);
}

uint64_t sub_1AEE8F400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F44C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);

  return v3(v4);
}

uint64_t sub_1AEE8F510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F688(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);

  return v3(v4);
}

uint64_t sub_1AEE8F6F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8F774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8F84C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(v4 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v5(v0 + v7, AssociatedTypeWitness);
  v5(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v8, v6 | 7);
}

uint64_t sub_1AEE8F97C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8F9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8FA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8FA98()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8FAEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8FB2C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8FC28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8FC74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t sub_1AEE8FCC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8FD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8FDB4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8FDEC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1AEE8FE78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8FE84()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8FEC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8FF04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8FF60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEE8FFBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE90004@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = GroupSessionJournal.attachments.getter(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1AEE90040(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
}

uint64_t sub_1AEE90088(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for GroupSessionJournal.Attachment(0) + 20);

  return swift_weakAssign();
}

uint64_t sub_1AEE900D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AEE901C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AEE902C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE902FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE9033C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE90374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE903C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_1AEE90414()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE90454()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE904A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE904E4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE9051C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEE9059C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE905F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE9062C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  if (v0[8])
  {
    v3 = v0[9];
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEE9068C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE906C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE907A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE907F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEE90858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE908A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_1AEE908F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE90944(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_1AEE90998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE90A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE90A84()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE90ADC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE90B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE90B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE90C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = GroupSessionAttachmentManager.attachments.getter(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1AEE90C70(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
}

uint64_t sub_1AEE90CB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for GroupSessionAttachmentManager.Attachment(0) + 20);

  return swift_weakAssign();
}

uint64_t sub_1AEE90D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) != a2)
  {
    return (~*(a1 + *(a3 + 24) + 8) & 0x3000000000000000) == 0;
  }

  v8 = *(v7 + 48);

  return v8(a1, a2, v6);
}

uint64_t sub_1AEE90DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (-a2 & 3) << 60;
  }

  return result;
}

uint64_t sub_1AEE90E7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE90EB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE90EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AEE90FAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AEE910B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE910F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AEE91140()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEE91180()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE911C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1AEE91220()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE912F8()
{
  v1 = (type metadata accessor for GroupSessionEvent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for Participant();
  v8 = *(v0 + v3 + *(v7 + 20) + 8);

  v9 = *(v0 + v3 + *(v7 + 28) + 8);

  v10 = *(v0 + v3 + v1[7] + 16);

  v11 = v1[8];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v0 + v3 + v11, v12);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEE91494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AEE915D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Participant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AEE91718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483644)
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 3;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AEE91858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Participant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483644)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 + 2);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AEE9198C()
{
  v1 = (type metadata accessor for GroupSessionEvent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for Participant();
  v8 = *(v0 + v3 + *(v7 + 20) + 8);

  v9 = *(v0 + v3 + *(v7 + 28) + 8);

  v10 = *(v0 + v3 + v1[7] + 16);

  v11 = v1[8];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v0 + v3 + v11, v12);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1AEE91B4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s15GroupActivities14CPParticipantsOwug_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AEE91BC4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1AEE91C94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE91D6C()
{
  v1 = type metadata accessor for PubSubClient.TopicCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  v9 = *(v0 + v6);
  swift_unknownObjectRelease();
  v10 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1AEE91E70()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEE91F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE91FF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE92044(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_1AEE920B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE920F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE921D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v6));
  v9 = *(v0 + v6 + 40);
  swift_unknownObjectRelease();
  v10 = *(v0 + v6 + 56);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 64, v3 | 7);
}

uint64_t sub_1AEE922EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE92338(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t sub_1AEE9238C()
{
  MEMORY[0x1B2715C70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE923CC()
{
  v1 = (type metadata accessor for LinkManager.Attachment(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v18 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v5 + 8);
  v10(&v0[v3], v4);
  outlined consume of LinkManager.Attachment.Source(*&v0[v3 + v1[8]], *&v0[v3 + 8 + v1[8]], v0[v3 + 16 + v1[8]]);
  v11 = v1[9];
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(&v0[v3 + v11], v12);
  if (*&v0[v3 + v1[10]] >= 3uLL)
  {
  }

  v13 = (v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v6 + 8) & ~v6;
  v15 = *&v0[v13];

  v10(&v0[v14], v4);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v17, v2 | v6 | 7);
}

uint64_t sub_1AEE925B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE92614(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x100);

  return v3(v4);
}

uint64_t sub_1AEE92680@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE926E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x120);

  return v3(v4);
}

uint64_t sub_1AEE92750@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE927B4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x138);

  return v3(v4);
}

uint64_t sub_1AEE92820@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE92884(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x170);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_1AEE928F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEE929E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 3;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1AEE92AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 + 2);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AEE92C00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE92C6C()
{
  v1 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
  v9 = v1[5];
  v10 = type metadata accessor for SymmetricKey();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  outlined consume of Data._Representation(*(v7 + v1[6]), *(v7 + v1[6] + 8));
  v11 = (v0 + v3 + v1[7]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v11, v12);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[8];
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(v7 + v14, v15);
  outlined consume of Data._Representation(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  outlined consume of Data._Representation(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  __swift_destroy_boxed_opaque_existential_0((v0 + v13));

  return MEMORY[0x1EEE6BDD0](v0, v13 + 40, v2 | 7);
}

uint64_t sub_1AEE92E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  return outlined init with copy of Transferable(v3 + v4, a2);
}

uint64_t sub_1AEE92F08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE92F40()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEE92FAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SystemCoordinator.remoteParticipantStates.getter();
  *a2 = result;
  return result;
}

void sub_1AEE92FD8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  SystemCoordinator.configuration.getter();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  *(a2 + 10) = v7;
  *(a2 + 11) = v8;
}

uint64_t sub_1AEE93038()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE93100()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93138()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93188()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE931C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93208()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE9326C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE93338()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE93418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_1AEE93468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_1AEE934B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

uint64_t sub_1AEE93508@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = BackgroundGroupSessionManager.topicManager.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93534(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 152);
  *(*a2 + 152) = *a1;
}

uint64_t sub_1AEE93578@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = BackgroundGroupSessionManager.groupSessionTable.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE935A4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 216);
  *(*a2 + 216) = *a1;
}

uint64_t sub_1AEE93604()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE936D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _s15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOs0I3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1AEE93758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE937AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 432);

  return v3(v4);
}

uint64_t sub_1AEE93858()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93890()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE938C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93954(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Topic.topic.setter(v4);
}

uint64_t sub_1AEE93998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE939EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 408);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_1AEE93AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93B4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 576);

  return v3(v4);
}

uint64_t _s15GroupActivities0A23ActivityAssociationKindVSHAASH4hash4intoys6HasherVz_tFTW_0()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1B2715040](0);

  return String.hash(into:)();
}

uint64_t sub_1AEE93C88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93CC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE93CF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93D44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t sub_1AEE93DA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93E60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEE93ED8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

void *sub_1AEE93F50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1AEE93FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE94000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE94058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE942B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE9431C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE943A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE9443C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE94488(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);

  return v3(v4);
}

uint64_t sub_1AEE9457C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE945D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 272);

  return v3(v4);
}

uint64_t sub_1AEE9462C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE946C0()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE94710@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a2 = *(a1 + *(result + 52));
  return result;
}

uint64_t sub_1AEE94748(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(a2 + *(result + 52)) = v3;
  return result;
}

uint64_t sub_1AEE9478C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GroupActivityMetadata(0) + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1AEE947DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GroupActivityMetadata(0) + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1AEE9482C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a2 = *(a1 + *(result + 36));
  return result;
}

uint64_t sub_1AEE94864(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_1AEE94898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a2 = *(a1 + *(result + 56)) == 1;
  return result;
}

uint64_t sub_1AEE948D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  v5 = 1;
  if (v3 != 1)
  {
    v5 = 2;
  }

  *(a2 + *(result + 56)) = v5;
  return result;
}

uint64_t sub_1AEE94918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AEE94A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AEE94B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityDescription();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE94BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityDescription();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t storeEnumTagSinglePayload for audit_token_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *destructiveInjectEnumTag for GroupSession.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1B2715020](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

id lpLog()
{
  if (lpLog_once != -1)
  {
    lpLog_cold_1();
  }

  v1 = lpLog_log;

  return v1;
}

uint64_t __lpLog_block_invoke()
{
  lpLog_log = os_log_create("com.apple.groupactivities", "LinkPresentationSupport");

  return MEMORY[0x1EEE66BB8]();
}

id SystemCoordinatorHost.currentState.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id key path getter for SystemCoordinatorHost.currentState : SystemCoordinatorHost@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for SystemCoordinatorHost.currentState : SystemCoordinatorHost(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  SystemCoordinatorHost.currentState.didset();
}

void SystemCoordinatorHost.currentState.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  SystemCoordinatorHost.currentState.didset();
}

void SystemCoordinatorHost.currentState.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v10 = *(v0 + v9);
    type metadata accessor for SystemCoordinatorState();
    v11 = v10;
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      v13 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
      swift_beginAccess();
      v14 = *(v1 + v13);
      if (v14)
      {
        v15 = v14;
        XPCHostConnection.clientObject.getter();

        v16 = v18[1];
        v17 = *(v1 + v9);
        [v16 updateState_];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void (*SystemCoordinatorHost.currentState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return SystemCoordinatorHost.currentState.modify;
}

void SystemCoordinatorHost.currentState.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  v11 = v3[4];
  if (a2)
  {
    v12 = v9;
    SystemCoordinatorHost.currentState.didset();

    v10 = *v5;
  }

  else
  {
    SystemCoordinatorHost.currentState.didset();
  }

  free(v3);
}

uint64_t SystemCoordinatorHost.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for SystemCoordinatorHost.delegate : SystemCoordinatorHost@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for SystemCoordinatorHost.delegate : SystemCoordinatorHost(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t SystemCoordinatorHost.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t SystemCoordinatorHost.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SystemCoordinatorHost.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SystemCoordinatorHost.delegate.modify;
}

void SystemCoordinatorHost.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *SystemCoordinatorHost.connection.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id key path getter for SystemCoordinatorHost.connection : SystemCoordinatorHost@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for SystemCoordinatorHost.connection : SystemCoordinatorHost(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = v2;
  if (v5)
  {
    v7 = v5;
    dispatch thunk of XPCHostConnection.destroyConnection()();

    v8 = *(v3 + v4);
  }

  else
  {
    v8 = 0;
  }

  *(v3 + v4) = v2;
}

void SystemCoordinatorHost.connection.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    dispatch thunk of XPCHostConnection.destroyConnection()();

    v5 = *(v2 + v4);
  }

  *(v2 + v4) = a1;
}

void (*SystemCoordinatorHost.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return SystemCoordinatorHost.connection.modify;
}

void SystemCoordinatorHost.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  if (a2)
  {
    v8 = v3;
    if (v7)
    {
      v9 = v7;
      dispatch thunk of XPCHostConnection.destroyConnection()();

      v10 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v10 = 0;
    }

    *(v6 + v5) = v3;

    v12 = *v4;
  }

  else
  {
    if (v7)
    {
      v11 = v7;
      dispatch thunk of XPCHostConnection.destroyConnection()();

      v12 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v12 = 0;
    }

    *(v6 + v5) = v3;
  }

  free(v2);
}

objc_class *SystemCoordinatorHost.__allocating_init(uuid:queue:configurationUpdatesRateLimit:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(a1, a2, a3);

  return v8;
}

objc_class *SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(a1, a2, a3);

  return v4;
}

uint64_t specialized Publisher.dynamicThrottle<A>(for:after:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v86 = a1;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMd, &_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMR);
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v79 = v60 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMd, &_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMR);
  v80 = *(v78 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMd, &_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMR);
  v13 = *(v12 - 8);
  v75 = v12;
  v76 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v73 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = v60 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMd, &_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMR);
  v70 = *(v69 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = v60 - v19;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v61 = *(v20 - 8);
  v21 = *(v61 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v64 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v63 = v60 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v60 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMd, &_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMR);
  v74 = *(v88 - 8);
  v28 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v83 = v60 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v60 - v32;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMR);
  v71 = *(v87 - 8);
  v34 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v84 = v60 - v35;
  v90 = v3;
  v91 = a3;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<SystemCoordinatorConfiguration, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR);
  v85 = Publisher.share()();
  v89 = v85;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMR);
  v66 = type metadata accessor for OS_dispatch_queue();
  v62 = MEMORY[0x1E695BDD0];
  v60[0] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMR);
  v65 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  Publisher.measureInterval<A>(using:options:)();
  outlined destroy of NSObject?(v33, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride, MEMORY[0x1E69E8060]);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v27[*(v24 + 36)] = 0;
  v37 = v61;
  v38 = *(v61 + 16);
  v39 = v63;
  v38(v63, v86, v20);
  v40 = v64;
  v38(v64, v68, v20);
  v41 = *(v37 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = (v21 + v41 + v42) & ~v41;
  v44 = swift_allocObject();
  v45 = *(v37 + 32);
  v45(v44 + v42, v39, v20);
  v45(v44 + v43, v40, v20);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue> and conformance Publishers.MeasureInterval<A, B>, &_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMR);
  Publisher.scan<A>(_:_:)();

  outlined destroy of NSObject?(v27, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  v89 = v85;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>> and conformance Publishers.Scan<A, B>, &_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMd, &_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMR);
  v46 = v67;
  Publisher.zip<A>(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>> and conformance Publishers.Zip<A, B>, &_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMd, &_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMR);
  v47 = v69;
  v48 = Publisher.share()();
  (*(v70 + 8))(v46, v47);
  v89 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMd, &_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMR);
  type metadata accessor for SystemCoordinatorConfiguration();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMd, &_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMR);
  v49 = v72;
  Publisher.compactMap<A>(_:)();
  v89 = v48;
  v50 = v73;
  Publisher.compactMap<A>(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMd, &_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMR);
  v51 = v77;
  v52 = v75;
  Publisher.throttle<A>(for:scheduler:latest:)();
  v53 = *(v76 + 8);
  v53(v50, v52);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Throttle<Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration>, OS_dispatch_queue> and conformance Publishers.Throttle<A, B>, &_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMd, &_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMR);
  v54 = v79;
  v55 = v51;
  v56 = v78;
  Publisher.merge<A>(with:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Merge<Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration>, Publishers.Throttle<Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration>, OS_dispatch_queue>> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMd, &_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMR);
  v57 = v81;
  v58 = Publisher.eraseToAnyPublisher()();

  (*(v82 + 8))(v54, v57);
  (*(v80 + 8))(v55, v56);
  v53(v49, v52);
  (*(v74 + 8))(v83, v88);
  (*(v71 + 8))(v84, v87);
  return v58;
}

void closure #1 in SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for systemCoordinator != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.systemCoordinator);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      type metadata accessor for SystemCoordinatorConfiguration();
      v10 = v5;
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Updated configuration to %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    v14 = &v3[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 1);
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(v3, v5, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id SystemCoordinatorHost.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall SystemCoordinatorHost.invalidate()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = v0 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(v0, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

id SystemCoordinatorHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void closure #1 in SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:)(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = a2;
  if (v5)
  {
    v7 = v5;
    dispatch thunk of XPCHostConnection.destroyConnection()();

    v8 = *(a1 + v4);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + v4) = a2;
}

void SystemCoordinatorHost.provideCurrentState(_:)(void (*a1)(void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v11 = *(v1 + v10);
    a1();
  }

  else
  {
    __break(1u);
  }
}

id default argument 6 of LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6997708]);

  return [v0 init];
}

uint64_t default argument 0 of SystemCoordinatorConfiguration._SpatialTemplatePreference.init(_:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619638;
  v2 = HIBYTE(word_1EB619638);
  *a1 = static SpatialTemplatePreference.none;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t (*default argument 2 of GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:)(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return partial apply for closure #1 in default argument 2 of GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:);
}

uint64_t specialized closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E8060];
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride, MEMORY[0x1E69E8060]);
  v11 = dispatch thunk of static Comparable.< infix(_:_:)();
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride, v10);
  if (v11)
  {
    v12 = a1;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) != 0 && (v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR) + 36), (*(v12 + *v13) & 1) == 0))
    {
      result = (*(v6 + 32))(a3, v9, v5);
      v15 = 0;
    }

    else
    {
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      (*(v6 + 8))(v9, v5);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
      v13 = (result + 36);
      v15 = 1;
    }
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
    v15 = 0;
    v13 = (result + 36);
  }

  *(a3 + *v13) = v15;
  return result;
}

uint64_t default argument 1 of AVAudioSessionAssertion.init(id:manager:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static AVAudioSessionAssertionManager.shared;
  a1[3] = type metadata accessor for AVAudioSessionAssertionManager();
  a1[4] = &protocol witness table for AVAudioSessionAssertionManager;
  *a1 = v2;
}

uint64_t default argument 3 of AttachmentDownloadTask.init(topic:attachment:file:manager:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1B2714130](v2);

  *a1 = v3;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance SPAxis@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TUConversationActivityLifetimePolicy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TUConversationActivityLifetimePolicy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AVPlaybackCoordinatorPlaybackObjectCommand(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey and conformance AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey, type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey and conformance AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey, type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinatorPlaybackObjectCommand(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorPlaybackObjectCommand and conformance AVPlaybackCoordinatorPlaybackObjectCommand, type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorPlaybackObjectCommand and conformance AVPlaybackCoordinatorPlaybackObjectCommand, type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinationTransportControlStateKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinationParticipantStateKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AVPlaybackCoordinatorPlaybackObjectCommand@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1B2714130](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CIImageRepresentationOption(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CGImageRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CGImageRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGImageRef()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSURLResourceKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1B2714210](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSURLResourceKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

int *specialized thunk for @escaping @callee_guaranteed (@in_guaranteed PublishRate<A1>, @in_guaranteed A.Publisher.Output) -> (@out A.Publisher.Output?)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  if (*(a1 + result[9]))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMR) + 48));
    result = v5;
  }

  *a2 = v5;
  return result;
}

{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  if (*(a1 + result[9]) == 1)
  {
    v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMR) + 48));
    result = v5;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

objc_class *specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v75 = a3;
  v78 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = v64 - v8;
  v76 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v76 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v79 = *(v77 - 8);
  v13 = *(v79 + 64);
  v14 = MEMORY[0x1EEE9AC00](v77);
  v68 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMR);
  v18 = *(v17 - 8);
  v73 = v17;
  v74 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v71 = v64 - v20;
  v21 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  v22 = type metadata accessor for SystemCoordinatorState.ParticipantState();
  v23 = objc_allocWithZone(v22);
  v23[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = 0;
  v23[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = 0;
  v24 = &v23[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v24 = 0;
  v24[1] = 0;
  *&v23[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v84.receiver = v23;
  v84.super_class = v22;
  v25 = objc_msgSendSuper2(&v84, sel_init);
  v26 = type metadata accessor for SystemCoordinatorState();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v25;
  v27[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = 3;
  *&v27[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v27[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v83.receiver = v27;
  v83.super_class = v26;
  *&v4[v21] = objc_msgSendSuper2(&v83, sel_init);
  v28 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubject;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *&v4[v28] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubscription] = 0;
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection] = 0;
  v32 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v69 = v33;
  v70 = v34;
  (*(v34 + 16))(&v4[v32], v78, v33);
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue] = a2;
  v35 = objc_opt_self();
  v65 = a2;
  v36 = [v35 anonymousListener];
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener] = v36;
  v37 = [v36 endpoint];
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_endpoint] = v37;
  v82.receiver = v4;
  v82.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v82, sel_init);
  v39 = *&v38[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubject];
  v40 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  v42 = v9 + 16;
  v41 = *(v9 + 16);
  v44 = v75;
  v43 = v76;
  v45 = v12;
  v41(v12, v75 + *(v40 + 20), v76);
  v64[1] = v42;
  ObjectType = v38;

  v46 = v67;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v47 = v44;
  v41(v45, v44 + *(v40 + 24), v43);
  v48 = v68;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v49 = v46;
  v50 = v65;
  v51 = specialized Publisher.dynamicThrottle<A>(for:after:scheduler:)(v46, v48, v65);

  v52 = *(v79 + 8);
  v79 += 8;
  v53 = v77;
  v52(v48, v77);
  v52(v49, v53);
  v81 = v51;
  v41(v45, v47, v76);
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v80 = v50;
  v54 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v55 = v72;
  (*(*(v54 - 8) + 56))(v72, 1, 1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinatorConfiguration, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR);
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  v56 = v71;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of NSObject?(v55, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v52(v49, v77);

  swift_allocObject();
  v57 = ObjectType;
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Debounce<AnyPublisher<SystemCoordinatorConfiguration, Never>, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMR);
  v58 = v73;
  v59 = Publisher<>.sink(receiveValue:)();

  (*(v74 + 8))(v56, v58);
  v60 = *(v57 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubscription);
  *(v57 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubscription) = v59;

  v61 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener;
  v62 = *(v57 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener);
  [v62 setDelegate_];

  [*(v57 + v61) resume];
  outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v75);
  (*(v70 + 8))(v78, v69);
  return v57;
}

BOOL specialized SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.systemCoordinator);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_1AEE80000, v14, v15, "Asked to accept new connection from %@", v16, 0xCu);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v17, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  v19 = *&v2[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue];
  v20 = objc_allocWithZone(type metadata accessor for SystemCoordinatorHostConnection());
  swift_unknownObjectWeakInit();
  v21 = v13;
  v19;
  v22 = XPCHostConnection.init(connection:queue:)();
  if (v22)
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    *(v23 + 24) = v22;
    aBlock[4] = partial apply for closure #1 in SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v24 = _Block_copy(aBlock);
    v25 = v2;
    v26 = v22;
    static DispatchQoS.unspecified.getter();
    v37 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v27 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v11, v7, v24);
    _Block_release(v24);

    (*(v35 + 8))(v7, v27);
    (*(v33 + 8))(v11, v34);
  }

  else
  {
    v28 = v21;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109120;
      *(v31 + 4) = [v28 processIdentifier];

      _os_log_impl(&dword_1AEE80000, v29, v30, "SystemCoordinatorHostConnection could not be created; rejecting connection from PID %d.", v31, 8u);
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    else
    {
    }
  }

  return v22 != 0;
}

uint64_t type metadata accessor for SystemCoordinatorHost()
{
  result = type metadata singleton initialization cache for SystemCoordinatorHost;
  if (!type metadata singleton initialization cache for SystemCoordinatorHost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SystemCoordinatorHost()
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SPAngle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SPAngle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SPPose3D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SPPose3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(uint64_t a1)
{
  v2 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride() - 8);
  v6 = v2 + ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 80) + 16) & ~*(v5 + 80))) & ~*(v5 + 80));

  return specialized closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)(a1, v6, a2);
}

void EquatableSpatialTemplatePreference.spatialTemplatePreference.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t EquatableSpatialTemplatePreference.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  return result;
}

uint64_t static EquatableSpatialTemplatePreference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EquatableSpatialTemplatePreference(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == *(a2 + 9))
  {
    v2 = *(a2 + 8);
    if (*(a1 + 8))
    {
      if (*(a2 + 8))
      {
        return 1;
      }
    }

    else
    {
      if (*a1 != *a2)
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EquatableSpatialTemplatePreference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 10))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EquatableSpatialTemplatePreference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 4;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Int GroupSessionErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance Capabilities(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance Capabilities@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance Capabilities@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Capabilities@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t ActivityExternalParticipant.displayName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ActivityExternalParticipant.init(identifier:displayName:info:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  result = outlined init with take of Transferable(a4, a6 + 24);
  *(a6 + 64) = v7;
  return result;
}

void ActivityExternalParticipant.init(externalParticipant:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = MEMORY[0x1B27150D0]();

  *a2 = v5;
  v6 = [a1 displayName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  v10 = [a1 info];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(a2 + 48) = MEMORY[0x1E6969080];
  *(a2 + 56) = lazy protocol witness table accessor for type Data and conformance Data();
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  v14 = [a1 status];
  if (v14 >= 3)
  {
    type metadata accessor for TUExternalParticipantStatus(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    *(a2 + 64) = v14;
  }
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

Swift::Int ActivityExternalParticipant.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715070](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityExternalParticipant()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715070](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityExternalParticipant()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715070](*v0);
  return Hasher._finalize()();
}

GroupActivities::ActivityExternalParticipantStatus_optional __swiftcall ActivityExternalParticipantStatus.init(rawValue:)(Swift::UInt64 rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupSessionErrors(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSessionErrors(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t specialized GroupSession.playbackSyncerLink.setter(uint64_t a1)
{
  v3 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {

    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = *(**(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456);

  v5(0, 0);
  v6 = *(v1 + v3);
  if (v6)
  {
LABEL_3:
    v7 = *(**(v6 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456);

    v7(v8, &protocol witness table for GroupSession<A>);
  }

LABEL_4:
}

{
  v3 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  GroupSession.playbackSyncerLink.didset(v4);
}

uint64_t GroupSession.playbackSyncerLink.setter(uint64_t a1)
{
  specialized GroupSession.playbackSyncerLink.setter(a1);
}

uint64_t GroupSession.playbackSyncerLink.didset(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    (*(**(a1 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456))(0, 0);
  }

  v3 = direct field offset for GroupSession.playbackSyncerLink;
  result = swift_beginAccess();
  v5 = *(v2 + v3);
  if (v5)
  {
    v6 = *(**(v5 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456);

    v6(v7, &protocol witness table for GroupSession<A>);
  }

  return result;
}