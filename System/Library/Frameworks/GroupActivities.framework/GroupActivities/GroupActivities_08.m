uint64_t specialized closure #2 in _PublisherElements.Iterator.next()()
{
  *(v0 + 104) = **(v0 + 96);

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

{
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = specialized closure #2 in _PublisherElements.Iterator.next();
  v2 = swift_continuation_init();
  specialized closure #1 in _PublisherElements.Iterator.Inner.next()(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v3 = *v0;
  **(*v0 + 88) = *(*v0 + 80);
  v1 = *(v3 + 8);

  return v1();
}

{
  *(v0 + 104) = **(v0 + 96);

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

{
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = specialized closure #2 in _PublisherElements.Iterator.next();
  v2 = swift_continuation_init();
  specialized closure #1 in _PublisherElements.Iterator.Inner.next()(v2, v1, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0K0VGs5NeverOG___GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0K0VGs5NeverOG___GMR, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

char *specialized GroupSessionJournal.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  v10 = swift_allocObject();

  return specialized GroupSessionJournal.init(transportSession:)(a1, v10, a3, a4);
}

char *specialized GroupSessionJournal.init(transportSession:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMR);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  *(a2 + 4) = 0;
  v23 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal___attachments;
  v40[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMR);
  Published.init(initialValue:)();
  (*(v19 + 32))(&a2[v23], v22, v18);
  *&a2[OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal_cancellables] = MEMORY[0x1E69E7CD0];
  *(a2 + 2) = a1;
  *(a2 + 3) = a4;
  v40[0] = (*(a4 + 24))(v34, a4);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  v34 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  Publisher.map<A>(_:)();

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID], Never>, [GroupSessionJournal.Attachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMR);
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
  v40[0] = (*(v28 + 32))(ObjectType, v28);
  v30 = swift_allocObject();
  swift_weakInit();

  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #2 in GroupSessionJournal.init(transportSession:);
  *(v31 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(UUID, URL, Participant), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  GroupSessionJournal.attachments.getter(v40);

  return a2;
}

uint64_t outlined assign with take of GroupSessionJournal.Attachment.AttachmentSource(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors()
{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors);
  }

  return result;
}

uint64_t outlined destroy of GroupSessionJournal.Attachment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #1 in _PublisherElements.Iterator.next()()
{
  return specialized _PublisherElements.Iterator.Inner.cancel()(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GMR, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GSgMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GSgMR);
}

{
  return specialized closure #1 in _PublisherElements.Iterator.next()();
}

uint64_t partial apply for specialized closure #2 in _PublisherElements.Iterator.next()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

unint64_t lazy protocol witness table accessor for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator()
{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors()
{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors);
  }

  return result;
}

void type metadata completion function for GroupSessionJournal()
{
  type metadata accessor for Published<[GroupSessionJournal.Attachment]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[GroupSessionJournal.Attachment]>()
{
  if (!lazy cache variable for type metadata for Published<[GroupSessionJournal.Attachment]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[GroupSessionJournal.Attachment]>);
    }
  }
}

uint64_t type metadata completion function for GroupSessionJournal.Attachment()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for GroupSessionJournal.Attachment.AttachmentSource()
{
  type metadata accessor for (attachmentData: URL, developerMetadata: Data?)();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (attachmentData: URL, developerMetadata: Data?)()
{
  if (!lazy cache variable for type metadata for (attachmentData: URL, developerMetadata: Data?))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (attachmentData: URL, developerMetadata: Data?));
    }
  }
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t closure #2 in _PublisherElements.Iterator.next()specialized partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

uint64_t outlined assign with take of _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner.State(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized GroupSessionProvider.uuid.getter()
{
  (*(*v0 + 176))();
  static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();

  _s15GroupActivities0A15SessionProviderPAAE18providerIdentifierSSvgZAA07CKShareacD0CyAA21CollaborationActivityCG_Ttg5();

  MEMORY[0x1B27141F0]();

  type metadata accessor for UUID();
  static SharableObjectIdentifier.identifier<A>(ofType:with:)();
}

uint64_t _s15GroupActivities0A15SessionProviderPAAE18providerIdentifierSSvgZAA07CKShareacD0CyAA21CollaborationActivityCG_Ttg5()
{
  v0 = [objc_opt_self() processInfo];
  v1 = NSProcessInfo.stableAppIdentifier.getter();
  v3 = v2;

  if (v3)
  {
    goto LABEL_4;
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_4:
    MEMORY[0x1B27141F0](46, 0xE100000000000000);
    MEMORY[0x1B27141F0](0xD000000000000032, 0x80000001AF01C230);
    return v1;
  }

  _StringGuts.grow(_:)(147);
  MEMORY[0x1B27141F0](0xD000000000000090, 0x80000001AF01B4C0);
  MEMORY[0x1B27141F0](0xD000000000000032, 0x80000001AF01C230);
  MEMORY[0x1B27141F0](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized GroupSessionProvider.join()()
{
  *(v1 + 72) = v0;
  return MEMORY[0x1EEE6DFA0](specialized GroupSessionProvider.join(), 0, 0);
}

{
  v1 = **(v0 + 72);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for GroupSessionProviderTestingOverrides();
    __swift_project_value_buffer(v4, static GroupSessionProviderTestingOverrides.default);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
    Testable.wrappedValue.getter();
    v5 = *(v0 + 40);
    if (v5)
    {
      v6 = *(v0 + 48);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v5 = static BackgroundGroupSessionManager.shared;

      v6 = &protocol witness table for BackgroundGroupSessionManager;
    }

    *(v0 + 80) = v5;
    ObjectType = swift_getObjectType();
    v8 = v6[3];
    v12 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = specialized GroupSessionProvider.join();
    v11 = *(v0 + 72);

    return (v12)(v11, v3, ObjectType, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = specialized GroupSessionProvider.join();
  }

  else
  {
    v3 = specialized GroupSessionProvider.join();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[10];
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.groupSessionProvider);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Successfully started tracking GroupSessionProvider on join()", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = v0[9];

  (*(*v6 + 200))();
  v0[8] = 1;
  CurrentValueSubject.send(_:)();

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.groupSessionProvider);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to start tracking GroupSessionProvider on join()", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  (*(*v7 + 200))();
  *(v0 + 56) = v6;
  v8 = v6;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 56));
  swift_willThrow();
  v9 = *(v0 + 8);
  v10 = *(v0 + 96);

  return v9();
}

uint64_t specialized GroupSessionProvider.leave()()
{
  v1[9] = v0;
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized GroupSessionProvider.leave(), 0, 0);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GroupSessionProviderTestingOverrides();
  __swift_project_value_buffer(v1, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = static BackgroundGroupSessionManager.shared;

    v3 = &protocol witness table for BackgroundGroupSessionManager;
  }

  v0[13] = v2;
  v4 = v0[12];
  v5 = v0[9];
  ObjectType = swift_getObjectType();
  specialized GroupSessionProvider.uuid.getter();
  v7 = v3[4];
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = specialized GroupSessionProvider.leave();
  v10 = v0[12];

  return (v12)(v10, ObjectType, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = v2[13];
  (*(v2[11] + 8))(v2[12], v2[10]);
  swift_unknownObjectRelease();
  if (v0)
  {
    v6 = specialized GroupSessionProvider.leave();
  }

  else
  {
    v6 = specialized GroupSessionProvider.leave();
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully left GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[9];

  (*(*v6 + 200))();
  v0[8] = 0;
  CurrentValueSubject.send(_:)();

  v7 = v0[1];

  return v7();
}

{
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to leave GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  (*(*v7 + 200))();
  *(v0 + 56) = v5;
  v8 = v5;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 56));
  swift_willThrow();

  v9 = *(v0 + 8);
  v10 = *(v0 + 120);

  return v9();
}

uint64_t CollaborationActivity.activate()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x1EEE6DFA0](CollaborationActivity.activate(), 0, 0);
}

{
  v1 = v0[4];
  v2 = *(*v1 + 136);
  v3 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0x51B000000000000;
  v0[5] = v2;
  v0[6] = v3;
  if (v2())
  {

    v5 = v0[6];
    v6 = v0[4];
    v7 = (v0[5])(v4);
    v0[12] = v7;
    if (v7)
    {
      v8 = swift_task_alloc();
      v0[13] = v8;
      *v8 = v0;
      v8[1] = CollaborationActivity.activate();

      return specialized GroupSessionProvider.join()();
    }

    else
    {
      v15 = v0[1];

      return v15();
    }
  }

  else
  {
    v10 = v0[4];
    v0[7] = v10[2];
    v0[8] = v10[3];
    v11 = *(*v10 + 128);

    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = CollaborationActivity.activate();
    v14 = v0[4];

    return v16();
  }
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = [objc_opt_self() defaultContainer];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMd, &_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = specialized CKShareGroupSessionProvider.init(id:activity:share:container:)(v4, v3, v5, v1, v6);
  if (v2)
  {
    v11 = *(v0 + 8);
LABEL_3:

    return v11(0);
  }

  v13 = (*(**(v0 + 32) + 144))(v10);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = (*(v0 + 40))(v13);
  *(v0 + 96) = v16;
  if (!v16)
  {
    v11 = *(v0 + 8);
    goto LABEL_3;
  }

  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = CollaborationActivity.activate();

  return specialized GroupSessionProvider.join()();
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = CollaborationActivity.activate();
  }

  else
  {
    v3 = CollaborationActivity.activate();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 96) != 0;

  return v2(v3);
}

{
  v24 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136315394;
    v0[2] = v8;
    type metadata accessor for CollaborationActivity();

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[3] = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to active activity %s, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = v0[14];
  v19 = v0[12];
  swift_willThrow();

  v20 = v0[14];
  v21 = v0[1];

  return v21(0);
}

uint64_t CollaborationActivity.activate()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](CollaborationActivity.activate(), 0, 0);
  }
}

uint64_t specialized IdentifiableGroupActivity.uuid.getter()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 16);
  type metadata accessor for UUID();
  return static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
}

{
  type metadata accessor for UUID();
  return static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
}

char *specialized CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v93 = a3;
  v6 = v5;
  v94 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v90 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v90 - v17;
  v95[0] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v5 + 4) = CurrentValueSubject.init(_:)();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v95[0] = static PresenceSessionInfo.default;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  *(v5 + 12) = CurrentValueSubject.init(_:)();
  v25 = *(*v5 + 144);
  static TaskPriority.userInitiated.getter();
  v26 = type metadata accessor for TaskPriority();
  v27 = *(v26 - 8);
  v91 = *(v27 + 56);
  v92 = v26;
  v90[1] = v27 + 56;
  (v91)(v18, 0, 1);
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8650], v10);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *&v6[*(*v6 + 168)] = MEMORY[0x1E69E7CD0];
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *(v6 + 6) = v93;
  v28 = [a4 containerID];
  v29 = v28;
  if (!v28)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Log.ckShareGroupSessionProvider);
    v73 = a4;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_18;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v95[0] = v66;
    *v65 = 136315138;
    v96 = v73;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v74 = v73;
    v75 = String.init<A>(reflecting:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v95);

    *(v65 + 4) = v77;
    v71 = "Share %s doesn't have a containerID";
    goto LABEL_17;
  }

  v95[0] = CKShare.members.getter();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v6 + 5) = CurrentValueSubject.init(_:)();
  v33 = [a4 currentUserParticipant];
  if (v33)
  {
    v34 = v33;
    v35 = CKShareParticipant.handle.getter();

    if (v35)
    {
      v36 = [v35 normalizedValue];
      if (!v36)
      {
        v36 = [v35 value];
      }

      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v35;
      v39 = v38;
      v41 = v40;

      v42 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      *(v6 + 7) = v39;
      *(v6 + 8) = v41;
      *(v6 + 10) = &type metadata for AddressableMember;
      *(v6 + 11) = v42;
      v43 = v94;
      *&v6[*(*v6 + 152)] = v94;
      v44 = *(*v6 + 160);
      swift_beginAccess();
      v96 = a4;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v90[0] = a4;
      v94 = v43;
      Published.init(initialValue:)();
      swift_endAccess();
      v45 = v91;
      v46 = v92;
      v91(v18, 1, 1, v92);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v6;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), v47);
      v48 = *(*v6 + 168);
      swift_beginAccess();
      v49 = type metadata accessor for AnyCancellable();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();

      v52 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v96, v52);

      swift_endAccess();

      v45(v18, 1, 1, v46);
      v53 = swift_allocObject();
      v53[2] = 0;
      v53[3] = 0;
      v54 = v90[0];
      v53[4] = v6;
      v53[5] = v54;
      v55 = v94;
      v53[6] = v94;
      v56 = v54;
      v57 = v55;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), v53);
      swift_beginAccess();
      v58 = *(v49 + 48);
      v59 = *(v49 + 52);
      swift_allocObject();

      v60 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v96, v60);

      swift_endAccess();

      return v6;
    }
  }

  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.ckShareGroupSessionProvider);
  v62 = a4;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v95[0] = v66;
    *v65 = 136315138;
    v96 = v62;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v67 = v62;
    v68 = String.init<A>(reflecting:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v95);

    *(v65 + 4) = v70;
    v71 = "Share %s doesn't have a currentUserParticipant";
LABEL_17:
    _os_log_impl(&dword_1AEE80000, v63, v64, v71, v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x1B2715BA0](v66, -1, -1);
    MEMORY[0x1B2715BA0](v65, -1, -1);
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMd, &_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CollaborationActivity>.Errors and conformance CKShareGroupSessionProvider<A>.Errors, &_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMd, &_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMR);
  swift_allocError();
  *v78 = 0;
  swift_willThrow();

  v79 = *(v6 + 3);

  v80 = *(v6 + 4);

  if (v29)
  {
    v81 = *(v6 + 5);
  }

  v82 = *(v6 + 6);

  v83 = *(v6 + 12);

  v84 = *(*v6 + 144);
  v85 = type metadata accessor for AsyncSerialQueue();
  (*(*(v85 - 8) + 8))(&v6[v84], v85);
  v86 = *&v6[*(*v6 + 168)];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMd, &_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMR);
  v87 = *(*v6 + 48);
  v88 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMR);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  (*(**(v0 + 32) + 344))();
  v8 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  MEMORY[0x1B2713ED0](v4, v8);
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  v10 = *(v0 + 104);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
}

{
  v40 = v0;
  v1 = v0[15];
  if (v1)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v2 = v0[4];
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[4];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315394;
      v11 = (*(*v8 + 408))();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v39);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      v0[3] = v4;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v15 = v4;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v39);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_1AEE80000, v5, v6, "%s Saw an updated CKShare: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v10, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }

    else
    {
    }

    (*(*v0[4] + 224))(v19);
    v0[2] = CKShare.members.getter();
    CurrentValueSubject.send(_:)();

    v32 = swift_task_alloc();
    v0[14] = v32;
    *v32 = v0;
    v32[1] = specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);
    v33 = v0[13];

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v20 = v0[4];
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.ckShareGroupSessionProvider);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[4];
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v28 = (*(*v25 + 408))();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v39);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v22, v23, "%s Stopped listening for updated CKShares", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B2715BA0](v27, -1, -1);
      MEMORY[0x1B2715BA0](v26, -1, -1);
    }

    else
    {
    }

    v35 = v0[13];
    v36 = v0[10];
    v37 = v0[7];

    v38 = v0[1];

    return v38();
  }
}

uint64_t specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  if (!v1)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
  }

  return result;
}

uint64_t specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for AsyncSerialQueue();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySo7CKShareCs5Error_pGMd, &_sScsySo7CKShareCs5Error_pGMR);
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVySo7CKShareCs5Error_p_GMd, &_sScs8IteratorVySo7CKShareCs5Error_p_GMR);
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v39 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v4, static Log.ckShareGroupSessionProvider);

  v5 = v2;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[9];
    v37 = v0[10];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v11 = 136315650;
    v13 = (*(*v10 + 408))();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v38);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v0[6] = v9;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v17 = v9;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v38);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    v0[7] = v37;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKContainer, 0x1E695B888);
    v21 = v37;
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v38);

    *(v11 + 24) = v24;
    _os_log_impl(&dword_1AEE80000, v7, v8, "%s Starting task to listen for CKShare updates on share: %s, container: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  else
  {
    v10 = v0[8];
  }

  v0[21] = v10;
  v25 = v0[19];
  v27 = v0[15];
  v26 = v0[16];
  v28 = v0[14];
  v29 = v0[9];
  v30 = v0[10];
  type metadata accessor for ShareChangeObserver();
  swift_allocObject();
  v31 = ShareChangeObserver.init(share:container:)(v29, v30);
  v0[22] = v31;
  (*(*v31 + 128))();
  MEMORY[0x1B27145A0](v28);
  (*(v27 + 8))(v26, v28);
  v32 = *(MEMORY[0x1E69E87A8] + 4);
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  v34 = v0[19];
  v35 = v0[17];

  return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v35, v0 + 3);
}

{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {
    v3 = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  else
  {
    v3 = specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v44 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[8];

    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[21];
      v8 = v0[8];
      v9 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v9 = 136315650;
      v10 = (*(*v8 + 408))();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v43);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v0[4] = v4;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v14 = v4;
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v43);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2080;
      v18 = [v14 participants];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v0[5] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CKShareParticipantCGMd, &_sSaySo18CKShareParticipantCGMR);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v43);

      *(v9 + 24) = v22;
      _os_log_impl(&dword_1AEE80000, v5, v6, "%s Saw share %s updated with participants: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v42, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }

    else
    {
      v30 = v0[8];
    }

    v31 = v0[21];
    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[11];
    v35 = v0[8];
    (*(*v35 + 272))(v23);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v4;

    v37 = v4;
    AsyncSerialQueue.perform(_:)();

    (*(v33 + 8))(v32, v34);
    v38 = *(MEMORY[0x1E69E87A8] + 4);
    v39 = swift_task_alloc();
    v0[23] = v39;
    *v39 = v0;
    v39[1] = specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
    v40 = v0[19];
    v41 = v0[17];

    return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v41, v0 + 3);
  }

  else
  {
    v24 = v0[22];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v25 = v0[19];
    v26 = v0[16];
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

uint64_t CollaborationActivity.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CollaborationActivity.fetchShare.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare + 8);

  return v1;
}

uint64_t CollaborationActivity.share.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](CollaborationActivity.share.getter, 0, 0);
}

{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = CollaborationActivity.share.getter;

  return v6();
}

uint64_t CollaborationActivity.share.getter(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t CollaborationActivity.groupSessionProvider.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CollaborationActivity.groupSessionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CollaborationActivity.__allocating_init(id:metadata:container:fetchShare:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    v21 = v16;
    swift_once();
    v16 = v21;
  }

  *(v16 + v17) = static BackgroundGroupSessionManager.shared;
  *(v16 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;
  v18 = v16;
  outlined init with take of GroupActivityMetadata(a3, v16 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
  *(v18 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = a4;
  v19 = (v18 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
  *v19 = a5;
  v19[1] = a6;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  return v18;
}

uint64_t CollaborationActivity.init(id:metadata:container:fetchShare:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v6 + v13) = static BackgroundGroupSessionManager.shared;
  *(v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;
  outlined init with take of GroupActivityMetadata(a3, v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
  *(v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = a4;
  v14 = (v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
  *v14 = a5;
  v14[1] = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return v6;
}

uint64_t CollaborationActivity.__allocating_init(id:metadata:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  CollaborationActivity.init(id:metadata:share:)(a1, a2, a3, a4);
  return v11;
}

id CollaborationActivity.init(id:metadata:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v4 + v9) = static BackgroundGroupSessionManager.shared;
  *(v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;

  result = [a4 containerID];
  if (result)
  {
    v11 = result;
    v12 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID_];

    outlined init with take of GroupActivityMetadata(a3, v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
    *(v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = v12;
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    v14 = (v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
    *v14 = &async function pointer to partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:);
    v14[1] = v13;
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in CollaborationActivity.init(id:metadata:share:)(void *a1)
{
  v4 = *(v1 + 8);
  v2 = a1;

  return v4(v2);
}

uint64_t CollaborationActivity.updateShare(_:)()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CollaborationActivity.updateShare(_:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager);
  specialized IdentifiableGroupActivity.uuid.getter();

  return MEMORY[0x1EEE6DFA0](CollaborationActivity.updateShare(_:), v2, 0);
}

{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  specialized BackgroundGroupSessionManager.updateShare(_:activityID:)();
  v0[6] = 0;
  (*(v2 + 8))(v1, v3);
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

Swift::Int CollaborationActivity.CollaborationActivityError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t CollaborationActivity.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 0x656E6961746E6F63;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CollaborationActivity.CodingKeys()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x656E6961746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CollaborationActivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CollaborationActivity.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CollaborationActivity.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CollaborationActivity.init(from:)(a1);
  return v5;
}

void *CollaborationActivity.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = type metadata accessor for GroupActivityMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMR);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    v32 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
    swift_once();
    v13 = v32;
  }

  v35 = v13;
  v36 = a1;
  *(v3 + v13) = static BackgroundGroupSessionManager.shared;
  *(v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();

  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v37) = 0;
    lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(&lazy protocol witness table cache variable for type GroupActivityMetadata and conformance GroupActivityMetadata, type metadata accessor for GroupActivityMetadata);
    v16 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata;
    outlined init with take of GroupActivityMetadata(v8, v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
    LOBYTE(v37) = 1;
    v3[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v3[3] = v24;
    v39 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKContainerSetupInfo, 0x1E695B8B8);
    v25 = v37;
    v26 = v38;
    v28 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    outlined consume of Data._Representation(v25, v26);
    if (v28)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerSetupInfo_];

      (*(v33 + 8))(v12, v16);
      *(v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = v29;
      v30 = (v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
      *v30 = &async function pointer to closure #1 in CollaborationActivity.init(from:);
      v30[1] = 0;
      v21 = v36;
      goto LABEL_6;
    }

    lazy protocol witness table accessor for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
    (*(v33 + 8))(v12, v16);
    v27 = v3[3];

    outlined destroy of GroupActivityMetadata(v3 + v23);
  }

  v15 = v36;
  v17 = *(v3 + v35);

  v18 = *(v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider);

  type metadata accessor for CollaborationActivity();
  v19 = *(*v3 + 48);
  v20 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  v21 = v15;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v3;
}

uint64_t closure #1 in CollaborationActivity.init(from:)()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in CollaborationActivity.init(from:), 0, 0);
}

{
  lazy protocol witness table accessor for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t CollaborationActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  type metadata accessor for GroupActivityMetadata(0);
  lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(&lazy protocol witness table cache variable for type GroupActivityMetadata and conformance GroupActivityMetadata, type metadata accessor for GroupActivityMetadata);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = objc_opt_self();
    v15 = [*(v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) setupInfo];
    v24 = 0;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v24];

    v17 = v24;
    if (v16)
    {
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v24 = v18;
      v25 = v20;
      v23[7] = 2;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of Data._Representation(v24, v25);
    }

    else
    {
      v21 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  result = (*(v6 + 8))(v9, v5);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CollaborationActivity.deactivate()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x1EEE6DFA0](CollaborationActivity.deactivate(), 0, 0);
}

{
  v1 = (*(**(v0 + 32) + 136))();
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = CollaborationActivity.deactivate();

    return specialized GroupSessionProvider.leave()();
  }

  else
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.ckShareGroupSessionProvider);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1AEE80000, v5, v6, "deactivate called on legacy API, but activate() was never called.", v7, 2u);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = CollaborationActivity.deactivate();
  }

  else
  {
    v3 = CollaborationActivity.deactivate();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

{
  v24 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136315394;
    v0[2] = v8;
    type metadata accessor for CollaborationActivity();

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[3] = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to leave activity %s, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = v0[7];
  v19 = v0[5];
  swift_willThrow();

  v20 = v0[1];
  v21 = v0[7];

  return v20();
}

uint64_t CollaborationActivity.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of GroupActivityMetadata(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);

  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare + 8);

  v3 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager);

  v4 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider);

  return v0;
}

uint64_t CollaborationActivity.__deallocating_deinit()
{
  v1 = v0[3];

  outlined destroy of GroupActivityMetadata(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);

  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare + 8);

  v3 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager);

  v4 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity()
{
  v2 = *(**v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity;

  return v6();
}

uint64_t protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance CollaborationActivity(uint64_t a1)
{
  outlined init with copy of GroupActivityMetadata(*v1 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t protocol witness for Identifiable.id.getter in conformance CollaborationActivity@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CollaborationActivity@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static CollaborationActivity.== infix(_:_:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  specialized IdentifiableGroupActivity.uuid.getter();
  specialized IdentifiableGroupActivity.uuid.getter();
  v8 = static UUID.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CollaborationActivity(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *a1;
  v13 = *a2;
  specialized IdentifiableGroupActivity.uuid.getter();
  specialized IdentifiableGroupActivity.uuid.getter();
  LOBYTE(v13) = static UUID.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  return v13 & 1;
}

uint64_t CKUserIdentity.loggingIdentity.getter()
{
  v1 = [v0 lookupInfo];
  if (!v1)
  {
    return 0x6E776F6E6B6E75;
  }

  v2 = v1;
  v3 = [v1 emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v2 phoneNumber];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (!v7)
    {
      if (v12)
      {

        return v10;
      }

      goto LABEL_11;
    }

LABEL_10:

    return v5;
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_11:

  return 0x6E776F6E6B6E75;
}

uint64_t type metadata accessor for CollaborationActivity()
{
  result = type metadata singleton initialization cache for CollaborationActivity;
  if (!type metadata singleton initialization cache for CollaborationActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of GroupActivityMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GroupActivityMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:);

  return closure #1 in CollaborationActivity.init(id:metadata:share:)(v2);
}

uint64_t specialized CollaborationActivity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED00006F666E4972)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of GroupActivityMetadata(uint64_t a1)
{
  v2 = type metadata accessor for GroupActivityMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError()
{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CollaborationActivity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(&lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, type metadata accessor for CollaborationActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CollaborationActivity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for CollaborationActivity(a1, a2, a3, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, &protocol conformance descriptor for CollaborationActivity, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity);
}

{
  return instantiation function for generic protocol witness table for CollaborationActivity(a1, a2, a3, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, &protocol conformance descriptor for CollaborationActivity, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity);
}

uint64_t instantiation function for generic protocol witness table for CollaborationActivity(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(a4, type metadata accessor for CollaborationActivity);
  result = lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(a6, type metadata accessor for CollaborationActivity);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of CollaborationGroupActivity.share.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v9(a1, a2);
}

uint64_t type metadata completion function for CollaborationActivity()
{
  result = type metadata accessor for GroupActivityMetadata(319);
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

uint64_t dispatch thunk of CollaborationActivity.share.getter()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:);

  return v6();
}

uint64_t dispatch thunk of CollaborationActivity.updateShare(_:)(uint64_t a1)
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

uint64_t dispatch thunk of CollaborationActivity.deactivate()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v6();
}

uint64_t partial apply for specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6);
}

uint64_t partial apply for specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for specialized closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(v2, v3);
}

uint64_t one-time initialization function for _groupActivity()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType._groupActivity);
  __swift_project_value_buffer(v4, static UTType._groupActivity);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t static UTType._groupActivity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType._groupActivity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v26 = a1;
    v13 = a4;
    v14 = v5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v11, v12, "Async registerGroupActivity called for type %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2715BA0](v16, -1, -1);
    v20 = v15;
    v5 = v14;
    a4 = v13;
    a1 = v26;
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for UTType();
  __swift_project_value_buffer(v21, static UTType._groupActivity);
  v22 = UTType.identifier.getter();
  v23 = MEMORY[0x1B2714130](v22);

  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a1;
  v24[5] = a2;
  aBlock[4] = partial apply for closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?, @unowned @thick Swift.AnyObject.Type?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);

  [v5 registerItemForTypeIdentifier:v23 loadHandler:v25];
  _Block_release(v25);
}

uint64_t closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a1;
  v19[9] = a2;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(a1);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:), v19);
}

uint64_t closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v20;
  v8[4] = a6;
  v8[5] = a7;
  v11 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v8[8] = v11;
  v8[9] = *(v11 + 64);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[13] = v14;
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v8[14] = v16;
  *v16 = v8;
  v16[1] = closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);

  return v18(v14);
}

uint64_t closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);
  }

  else
  {
    v3 = closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v42 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  GroupActivity.eraseToAnyGroupActivity()(*(v0 + 48), *(v0 + 56), *(v0 + 88));
  if (v1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 48));
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 48);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41[0] = v9;
      *v8 = 136315394;
      v10 = _typeName(_:qualified:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v41);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v0 + 16) = v1;
      v13 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v41);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Activity conversion failed for type %s, error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    v17 = *(v0 + 32);
    if (v17)
    {
      v18 = *(v0 + 40);
      v19 = v1;
      v17(0, v1);
    }
  }

  else
  {
    v20 = *(v0 + 96);
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 40);
    v39 = *(v0 + 48);
    v40 = *(v0 + 104);
    v26 = *(v0 + 32);
    outlined init with copy of AnyGroupActivity(v22, v21);
    v27 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v28 = swift_allocObject();
    outlined init with take of AnyGroupActivity(v21, v28 + v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    *(v0 + 24) = Future.init(_:)();
    v32 = swift_allocObject();
    *(v32 + 16) = v26;
    *(v32 + 24) = v25;
    v33 = swift_allocObject();
    *(v33 + 16) = v26;
    *(v33 + 24) = v25;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v26);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v26);
    lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>();
    Publisher.sinkOnce(_:onError:)();

    outlined destroy of AnyGroupActivity(v22);
    (*(v20 + 8))(v40, v39);
  }

  v34 = *(v0 + 104);
  v35 = *(v0 + 80);
  v36 = *(v0 + 88);

  v37 = *(v0 + 8);

  return v37();
}

{
  v25 = v0;
  v1 = v0[15];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v0[2] = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Activity conversion failed for type %s, error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v16 = v0[4];
  if (v16)
  {
    v17 = v0[5];
    v18 = v1;
    v16(0, v1);
  }

  v19 = v0[13];
  v20 = v0[10];
  v21 = v0[11];

  v22 = v0[1];

  return v22();
}

void closure #2 in closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(void **a1, void (*a2)(void, void *))
{
  v3 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Failed to convert from AnyGroupActivity to TUConversationActivity, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  if (a2)
  {
    a2(0, v3);
  }
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSecureCoding?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void NSItemProvider.registerGroupActivity<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v45 = v14;
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  v18 = *(v11 + 16);
  v18(v16, a1, a2);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v44 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v40 = a1;
    v23 = v22;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v23 = 136315138;
    v18(v10, v16, a2);
    (*(v11 + 56))(v10, 0, 1, a2);
    v24 = >> prefix<A>(_:)(v10, a2);
    v41 = a3;
    v25 = v24;
    v27 = v26;
    (*(v42 + 8))(v10, v43);
    (*(v11 + 8))(v16, a2);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, aBlock);

    *(v23 + 4) = v28;
    a3 = v41;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Synchronous registerGroupActivity called for activity %s", v23, 0xCu);
    v29 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1B2715BA0](v29, -1, -1);
    v30 = v23;
    a1 = v40;
    MEMORY[0x1B2715BA0](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, a2);
  }

  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for UTType();
  __swift_project_value_buffer(v31, static UTType._groupActivity);
  v32 = UTType.identifier.getter();
  v33 = MEMORY[0x1B2714130](v32);

  v34 = v46;
  v44(v46, a1, a2);
  v35 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = a3;
  (*(v11 + 32))(v36 + v35, v34, a2);
  aBlock[4] = partial apply for closure #1 in NSItemProvider.registerGroupActivity<A>(_:);
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?, @unowned @thick Swift.AnyObject.Type?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_6_0;
  v37 = _Block_copy(aBlock);

  [v47 registerItemForTypeIdentifier:v33 loadHandler:v37];
  _Block_release(v37);
}

uint64_t closure #1 in NSItemProvider.registerGroupActivity<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a1;
  v35 = a2;
  v9 = type metadata accessor for Optional();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31[2] = v31 - v12;
  v13 = *(*(a6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = type metadata accessor for AnyGroupActivity(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v31 - v19;
  GroupActivity.eraseToAnyGroupActivity()(a6, a7, (v31 - v19));
  outlined init with copy of AnyGroupActivity(v20, v18);
  v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v22 = swift_allocObject();
  outlined init with take of AnyGroupActivity(v18, v22 + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v36 = Future.init(_:)();
  v26 = swift_allocObject();
  v28 = v34;
  v27 = v35;
  *(v26 + 16) = v34;
  *(v26 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v28);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v28);
  lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>();
  Publisher.sinkOnce(_:onError:)();

  return outlined destroy of AnyGroupActivity(v20);
}

id NSItemProvider.loadGroupActivity(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() progressWithTotalUnitCount_];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v2;
  v11[7] = v9;

  v12 = v2;
  v13 = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in NSItemProvider.loadGroupActivity(completionHandler:), v11);

  return v13;
}

uint64_t closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in NSItemProvider.loadGroupActivity(completionHandler:), 0, 0);
}

uint64_t closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = type metadata accessor for TUConversationActivity();
  *v4 = v0;
  v4[1] = closure #1 in NSItemProvider.loadGroupActivity(completionHandler:);

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001AF01C2B0, closure #1 in NSItemProvider.loadGroupActivity()partial apply, v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = closure #1 in NSItemProvider.loadGroupActivity(completionHandler:);
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = closure #1 in NSItemProvider.loadGroupActivity(completionHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 96);
  AnyGroupActivity.init(tuConversationActivity:)(*(v0 + 16), *(v0 + 72));
  if (v1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.default);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      *(v0 + 24) = v1;
      v8 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v9 = String.init<A>(reflecting:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v26);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to load GroupActivity, error %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B2715BA0](v7, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    v12 = *(v0 + 64);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = type metadata accessor for AnyGroupActivity(0);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = v1;
    v14(v12, v1);

    outlined destroy of AnyGroupActivity?(v12);
  }

  else
  {
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = type metadata accessor for AnyGroupActivity(0);
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
    v20(v17, 0);
    outlined destroy of AnyGroupActivity?(v17);
    [v18 setCompletedUnitCount_];
  }

  v23 = *(v0 + 64);
  v22 = *(v0 + 72);

  v24 = *(v0 + 8);

  return v24();
}

{
  v23 = v0;
  v1 = v0[10];

  v2 = v0[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v0[3] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to load GroupActivity, error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v13 = v0[8];
  v15 = v0[4];
  v14 = v0[5];
  v16 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = v2;
  v15(v13, v2);

  outlined destroy of AnyGroupActivity?(v13);
  v19 = v0[8];
  v18 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t NSItemProvider.loadGroupActivity()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](NSItemProvider.loadGroupActivity(), 0, 0);
}

uint64_t NSItemProvider.loadGroupActivity()()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = type metadata accessor for TUConversationActivity();
  *v4 = v0;
  v4[1] = NSItemProvider.loadGroupActivity();

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001AF01C2B0, partial apply for closure #1 in NSItemProvider.loadGroupActivity(), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = NSItemProvider.loadGroupActivity();
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = NSItemProvider.loadGroupActivity();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 56);
  AnyGroupActivity.init(tuConversationActivity:)(*(v0 + 16), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](NSItemProvider.loadGroupActivity(), 0, 0);
}

{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  *v4 = v0;
  v4[1] = NSItemProvider.loadGroupActivity();

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001AF01C2B0, partial apply for closure #1 in NSItemProvider.loadGroupActivity(), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = NSItemProvider.loadGroupActivity();
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)(uint64_t a1)
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
  v10[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined destroy of AnyGroupActivity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *partial apply for closure #2 in closure #1 in NSItemProvider.registerGroupActivity<A>(_:)(void *result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(0, *result);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(a1, v6, v7, v8, v9, v11, v10, v4);
}

void *partial apply for closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(_:)(void *result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(*result, 0);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t CodingUserInfoKey.typedPayloadDecoderMap.unsafeMutableAddressor()
{
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v0, static CodingUserInfoKey.typedPayloadDecoderMap);
}

uint64_t one-time initialization function for typedPayloadDecoderMap()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v4, static CodingUserInfoKey.typedPayloadDecoderMap);
  v5 = __swift_project_value_buffer(v4, static CodingUserInfoKey.typedPayloadDecoderMap);
  CodingUserInfoKey.init(rawValue:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.typedPayloadDecoderMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.typedPayloadDecoderMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *TypedPayloadDecoder.decode(fromDecodingContainer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    __break(1u);
  }

  else
  {
    a4[3] = a1;
    a4[4] = a2;
    a4[5] = a3;
    __swift_allocate_boxed_opaque_existential_1(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v4)
    {
      return __swift_deallocate_boxed_opaque_existential_2(a4);
    }
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_2(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1B2715BA0);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type BroadcastOptions and conformance BroadcastOptions()
{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

double AnySpatialTemplateRole.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    outlined init with take of Transferable(a1, v5);
    outlined init with take of Transferable(v5, v6);
    result = *v6;
    v4 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v7;
  }

  else
  {
    outlined destroy of SpatialTemplateRole?(a1);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t outlined destroy of SpatialTemplateRole?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnySpatialTemplateRole.hash(into:)()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int AnySpatialTemplateRole.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnySpatialTemplateRole()
{
  Hasher.init(_seed:)();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnySpatialTemplateRole()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnySpatialTemplateRole()
{
  Hasher.init(_seed:)();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static AnySpatialTemplateRole.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Transferable(a1, v34);
  outlined init with copy of Transferable(a2, v31);
  v3 = v35;
  v4 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = v32;
  v9 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v14 = v35;
  v15 = v36;
  v16 = __swift_project_boxed_opaque_existential_1(v34, v35);
  v17 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v29[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v20 = *(v15 + 8);
  AnyHashable.init<A>(_:)();
  v21 = v32;
  v22 = v33;
  v23 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  (*(v26 + 16))(&v29[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v27 = *(v22 + 8);
  AnyHashable.init<A>(_:)();
  v13 = MEMORY[0x1B2714A90](v30, v29);
  outlined destroy of AnyHashable(v29);
  outlined destroy of AnyHashable(v30);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole()
{
  result = lazy protocol witness table cache variable for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole);
  }

  return result;
}

uint64_t GroupSessionProviderObserver.groupSessionService.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t GroupSessionProviderObserver.groupSessionService.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*GroupSessionProviderObserver.groupSessionService.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PresenceGroupSessionProviderObserver.groupSessionService.modify;
}

uint64_t GroupSessionProviderObserver.provider.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t GroupSessionProviderObserver.membershipObserver.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t GroupSessionProviderObserver.membershipObserver.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t GroupSessionProviderObserver.unknownParticipants.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t GroupSessionProviderObserver.unknownParticipants.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *GroupSessionProviderObserver.__allocating_init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x1E69E7CD0];
  v7[6] = 0;
  v7[7] = v8;
  v7[4] = a1;
  v7[5] = a2;
  swift_beginAccess();
  v7[3] = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v7;
}

void *GroupSessionProviderObserver.init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x1E69E7CD0];
  v4[6] = 0;
  v4[7] = v8;
  v4[4] = a1;
  v4[5] = a2;
  swift_beginAccess();
  v4[3] = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

Swift::Void __swiftcall GroupSessionProviderObserver.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v9;
  if (one-time initialization token for groupSessionProviderObserver != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.groupSessionProviderObserver);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41 = v6;
    v14 = v5;
    v15 = v13;
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136315138;
    v45 = *(v1 + 32);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v46);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v11, v12, "ProviderObserver for %s started", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2715BA0](v16, -1, -1);
    v20 = v15;
    v5 = v14;
    v6 = v41;
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  if ((*(*v1 + 136))())
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136315138;
      v45 = *(v1 + 32);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v46);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v21, v22, "ProviderObserver for %s already started.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B2715BA0](v24, -1, -1);
      MEMORY[0x1B2715BA0](v23, -1, -1);
    }
  }

  else
  {
    v28 = *(v1 + 32);
    v29 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    *&v45 = (*(v29 + 72))(ObjectType, v29);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
    v32 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
    v33 = v44;
    MEMORY[0x1B2713ED0](v31, v32);

    v34 = type metadata accessor for TaskPriority();
    v35 = v43;
    (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = v42;
    (*(v6 + 16))(v42, v33, v5);
    v38 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    (*(v6 + 32))(v39 + v38, v37, v5);
    *(v39 + ((v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
    v40 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in GroupSessionProviderObserver.start(), v39);
    (*(*v1 + 144))(v40);
    (*(v6 + 8))(v44, v5);
  }
}

uint64_t closure #1 in GroupSessionProviderObserver.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for UUID();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMR);
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in GroupSessionProviderObserver.start(), 0, 0);
}

uint64_t closure #1 in GroupSessionProviderObserver.start()()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Set<AddressableMember>, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMR);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = closure #1 in GroupSessionProviderObserver.start();
  v7 = v0[23];
  v8 = v0[21];

  return MEMORY[0x1EEE6D8C8](v0 + 8, v8, v4);
}

{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = closure #1 in GroupSessionProviderObserver.start();
  }

  else
  {
    v3 = closure #1 in GroupSessionProviderObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 208) = *(v0 + 64);
  return MEMORY[0x1EEE6DFA0](closure #1 in GroupSessionProviderObserver.start(), 0, 0);
}

{
  v1 = v0[26];
  if (v1)
  {
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v2 = v0[16];
    v3 = type metadata accessor for Logger();
    v0[27] = __swift_project_value_buffer(v3, static Log.groupSessionProviderObserver);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[16];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v0[12] = v8;
      *v7 = 136315394;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v0[14] = Strong;
        type metadata accessor for GroupSessionProviderObserver();
        v10 = String.init<A>(reflecting:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v0 + 12);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2080;
      v0[13] = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v0 + 12);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_1AEE80000, v4, v5, "%s received updated members: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v17 = v0[16];
    v18 = swift_weakLoadStrong();
    v0[28] = v18;
    if (v18)
    {
      v19 = v18;
      v20 = (*(*v18 + 112))(v18);
      v0[29] = v20;
      if (v20)
      {
        v22 = v0[20];
        v0[30] = v21;
        v23 = v21;
        ObjectType = swift_getObjectType();
        v0[31] = ObjectType;
        v26 = *(v19 + 32);
        v25 = *(v19 + 40);
        v27 = swift_getObjectType();
        GroupSessionProvider.uuid.getter(v27, v25, v22);
        v28 = *(v23 + 40);
        v37 = (v28 + *v28);
        v29 = v28[1];
        v30 = swift_task_alloc();
        v0[32] = v30;
        *v30 = v0;
        v30[1] = closure #1 in GroupSessionProviderObserver.start();
        v31 = v0[20];

        return v37(v31, v1, ObjectType, v23);
      }

      (*(v0[22] + 8))(v0[23], v0[21]);
    }

    else
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
    }
  }

  else
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
  }

  v33 = v0[23];
  v34 = v0[19];
  v35 = v0[20];

  v36 = v0[1];

  return v36();
}

{
  *(v0 + 72) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[26];
  v6 = v2[20];
  v7 = v2[18];
  v8 = v2[17];
  if (v0)
  {
    v9 = *(v7 + 8);
    v2[34] = v9;
    v2[35] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);

    v10 = closure #1 in GroupSessionProviderObserver.start();
  }

  else
  {
    v11 = v2[26];

    (*(v7 + 8))(v6, v8);
    v10 = closure #1 in GroupSessionProviderObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[29];

  swift_unknownObjectRelease();
  v3 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Set<AddressableMember>, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMR);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = closure #1 in GroupSessionProviderObserver.start();
  v6 = v0[23];
  v7 = v0[21];

  return MEMORY[0x1EEE6D8C8](v0 + 8, v7, v3);
}

{
  v28 = v0;
  v1 = v0[33];
  v2 = v0[27];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v0[11] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to update members for reason: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[28];
  v16 = v0[19];
  v17 = *(v15 + 32);
  v18 = *(v15 + 40);
  ObjectType = swift_getObjectType();
  GroupSessionProvider.uuid.getter(ObjectType, v18, v16);
  v20 = *(v13 + 32);
  v26 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[36] = v22;
  *v22 = v0;
  v22[1] = closure #1 in GroupSessionProviderObserver.start();
  v23 = v0[31];
  v24 = v0[19];

  return v26(v24, v23, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;

  v5 = v2[35];
  v6 = v2[34];
  v7 = v2[19];
  v8 = v2[17];
  if (v0)
  {

    v6(v7, v8);
    v9 = closure #1 in GroupSessionProviderObserver.start();
  }

  else
  {
    v6(v7, v8);
    v9 = closure #1 in GroupSessionProviderObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

{
  v1 = *(v0 + 264);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v15 = *(v0 + 152);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  (*(v9 + 64))(ObjectType, v9);
  *(v0 + 80) = v1;
  v11 = v1;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 80));
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v5, v7);

  v12 = *(v0 + 8);
  v13 = *(v0 + 264);

  return v12();
}

uint64_t GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:), 0, 0);
}

uint64_t GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:)()
{
  *(v0 + 128) = *(*(v0 + 152) + 32);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMR);
  if (!swift_dynamicCast())
  {
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    outlined destroy of ErrorRecoveryGroupSessionProvider?(v0 + 56);
LABEL_9:
    v15 = *(v0 + 8);

    return v15();
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v26 = (v0 + 16);
  v3 = outlined init with take of Transferable((v0 + 56), v0 + 16);
  v4 = *(*v1 + 160);
  v5 = v4(v3);
  v6 = *(*v1 + 176);

  v7 = v6(v0 + 96);
  specialized Set.formUnion<A>(_:)(v2);
  v8 = v7(v0 + 96, 0);
  v9 = v4(v8);
  v10 = _sSh2eeoiySbShyxG_ABtFZ15GroupActivities17AddressableMemberV_Tt1g5(v5, v9);

  if (v10)
  {
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.groupSessionProviderObserver);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "No change in unknown participants", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v26);
    goto LABEL_9;
  }

  if (one-time initialization token for groupSessionProviderObserver != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.groupSessionProviderObserver);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1AEE80000, v18, v19, "Detected a difference in unknown participants, fetching membership update.", v20, 2u);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(v26, v21);
  v23 = *(v22 + 8);
  v27 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 160) = v25;
  *v25 = v0;
  v25[1] = GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:);

  return v27(v21, v22);
}

{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[21];

  return v1();
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *GroupSessionProviderObserver.deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?((v0 + 2));
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t GroupSessionProviderObserver.__deallocating_deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?((v0 + 2));
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in GroupSessionProviderObserver.start()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in GroupSessionProviderObserver.start()(a1, v6, v7, v1 + v5, v8);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ15GroupActivities17AddressableMemberV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ErrorRecoveryGroupSessionProvider?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:)(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t GroupSession.MessageQueue.init(queueState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t GroupSession.MessageQueue.queueState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PubSubTopic.QueueState();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupSession.MessageQueue.count<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = static Encodable.messageIdentifier.getter(a3);
  v5 = v4;
  v6 = PubSubTopic.QueueState.messages.getter();
  if (!*(v6 + 16))
  {

    goto LABEL_5;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v6 + 56) + 8 * v7);
LABEL_6:

  return v10;
}

uint64_t GroupSession.MessageQueue.totalCount.getter()
{
  result = PubSubTopic.QueueState.messages.getter();
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = *(*(result + 56) + ((v7 << 9) | (8 * v8)));
    v10 = __OFADD__(v2, v9);
    v2 += v9;
    if (v10)
    {
      __break(1u);
LABEL_13:

      return v2;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      goto LABEL_13;
    }

    v5 = *(result + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t GroupSession.MessageQueue.hash(into:)()
{
  type metadata accessor for PubSubTopic.QueueState();
  lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GroupSession.MessageQueue.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for PubSubTopic.QueueState();
  lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSession<A>.MessageQueue()
{
  Hasher.init(_seed:)();
  GroupSession.MessageQueue.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState;
  if (!lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState)
  {
    type metadata accessor for PubSubTopic.QueueState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState);
  }

  return result;
}

void specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUConversationActivitySession();
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, type metadata accessor for TUConversationActivitySession);
    Set.Iterator.init(_cocoa:)();
    v5 = v23[1];
    v6 = v23[2];
    v7 = v23[3];
    v8 = v23[4];
    v9 = v23[5];
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  while (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (v22 = v18, type metadata accessor for TUConversationActivitySession(), swift_dynamicCast(), v17 = v23[0], v15 = v8, v16 = v9, !v23[0]))
    {
LABEL_23:
      outlined consume of [UUID : Conversation].Iterator._Variant();
      return;
    }

LABEL_19:
    v23[0] = v17;
    a1(&v22, v23);
    if (v4)
    {

      outlined consume of [UUID : Conversation].Iterator._Variant();

      return;
    }

    if (v22)
    {
      MEMORY[0x1B27142A0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v8 = v15;
    v9 = v16;
    v5 = v21;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t InternalGroupSessionProvider.groupSessions(for:)(void *a1, id a2, uint64_t a3)
{
  v6 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v7 = [a1 activitySessions];
  type metadata accessor for TUConversationActivitySession();
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, type metadata accessor for TUConversationActivitySession);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = 0;
  v48 = v3;
  v45 = v6;
  v46 = a3;
  v44 = a2;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E69E7CD0];
    v51 = MEMORY[0x1E69E7CD0];
    a2 = __CocoaSet.makeIterator()();
    v11 = __CocoaSet.Iterator.next()();
    if (v11)
    {
      v6 = MEMORY[0x1E69E7C98];
      a3 = -1;
      do
      {
        v49 = v11;
        swift_dynamicCast();
        if ([v50 state] && objc_msgSend(v50, sel_state) != 1)
        {
        }

        else
        {
          v8 = v50;
          v12 = *(v10 + 16);
          if (*(v10 + 24) <= v12)
          {
            specialized _NativeSet.resize(capacity:)(v12 + 1, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMd, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMR);
          }

          v10 = v51;
          v3 = v50;
          v13 = NSObject._rawHashValue(seed:)(*(v51 + 40));
          v14 = v51 + 56;
          v15 = -1 << *(v51 + 32);
          v16 = v13 & ~v15;
          v17 = v16 >> 6;
          if (((-1 << v16) & ~*(v51 + 56 + 8 * (v16 >> 6))) != 0)
          {
            v18 = __clz(__rbit64((-1 << v16) & ~*(v51 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v19 = 0;
            v20 = (63 - v15) >> 6;
            do
            {
              if (++v17 == v20 && (v19 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v21 = v17 == v20;
              if (v17 == v20)
              {
                v17 = 0;
              }

              v19 |= v21;
              v22 = *(v14 + 8 * v17);
            }

            while (v22 == -1);
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          }

          *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          *(*(v10 + 48) + 8 * v18) = v8;
          ++*(v10 + 16);
        }

        v11 = __CocoaSet.Iterator.next()();
      }

      while (v11);
    }

LABEL_41:
    v3 = v48;
    v6 = v45;
    a3 = v46;
    a2 = v44;
    goto LABEL_42;
  }

  v24 = *(v8 + 32);
  v10 = ((1 << v24) + 63) >> 6;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v41[1] = v41;
    v42 = v10;
    MEMORY[0x1EEE9AC00](v9);
    v3 = v41 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v3, v25);
    v43 = 0;
    v6 = 0;
    a3 = v8 + 56;
    v26 = 1 << *(v8 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v10 = v27 & *(v8 + 56);
    v28 = (v26 + 63) >> 6;
    while (v10)
    {
      v29 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_33:
      v32 = v29 | (v6 << 6);
      v33 = v8;
      v34 = *(*(v8 + 48) + 8 * v32);
      if ([v34 state])
      {
        a2 = [v34 state];

        v8 = v33;
        if (a2 == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {

        v8 = v33;
LABEL_37:
        *&v3[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
LABEL_40:
          v23 = specialized _NativeSet.extractSubset(using:count:)(v3, v42, v43, v8);
          v10 = v23;
          goto LABEL_41;
        }
      }
    }

    v30 = v6;
    while (1)
    {
      v6 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v6 >= v28)
      {
        goto LABEL_40;
      }

      v31 = *(a3 + 8 * v6);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v10 = (v31 - 1) & v31;
        goto LABEL_33;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v40 = swift_slowAlloc();
  v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v40, v10, v8, closure #1 in InternalGroupSessionProvider.groupSessions(for:));

  v23 = MEMORY[0x1B2715BA0](v40, -1, -1);
LABEL_42:
  MEMORY[0x1EEE9AC00](v23);
  v41[-4] = a2;
  v41[-3] = a3;
  v41[-2] = v6;
  v41[-1] = v3;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in InternalGroupSessionProvider.groupSessions(for:), &v41[-6], v10);
  v37 = v36;

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

uint64_t closure #2 in InternalGroupSessionProvider.groupSessions(for:)@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v40 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v13 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a2 initiator];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 value];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v18;
    v36 = v17;
  }

  else
  {
    v35 = 0xE000000000000000;
    v36 = 0;
  }

  v34 = [a2 localParticipantIdentifier];
  v19 = [a2 localMember];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 handle];

    v22 = [v21 value];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = [a2 unreliableMessengerConfig];
  v27 = (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(v39, a3, a4);
  v28 = (*(a4 + 16))(a3, a4);
  v29 = v37;
  v30 = [v37 activity];
  v31 = [v30 requiresParticipantTranslation];

  v32 = v38;
  result = specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(v29, v12, v36, v35, v34, v23, v25, v26, v27, v39, v28 & 1, v31);
  if (v32)
  {

    result = 0;
  }

  *v40 = result;
  return result;
}

unint64_t type metadata accessor for TUConversationActivitySession()
{
  result = lazy cache variable for type metadata for TUConversationActivitySession;
  if (!lazy cache variable for type metadata for TUConversationActivitySession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivitySession);
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = MEMORY[0x1B2715020](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMd, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v41 + 72);
      outlined init with take of PresenceSessionInfo.Participant(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for PresenceSessionInfo.Participant);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v26 = v42;
      v27 = &v7[*(v42 + 20)];
      v28 = *v27;
      v29 = *(v27 + 1);
      String.hash(into:)();
      Hasher._combine(_:)(v7[*(v26 + 24)]);
      result = Hasher._finalize()();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of PresenceSessionInfo.Participant(v7, *(v11 + 48) + v19 * v24, type metadata accessor for PresenceSessionInfo.Participant);
      ++*(v11 + 16);
      v8 = v40;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v8 + 32);
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    v2 = v39;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for UTType();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
  v11 = static _SetStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v9 + 16))
  {
    v45 = v2;
    v13 = 0;
    v14 = *(v9 + 56);
    v46 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v19 = v11 + 56;
    v47 = v18;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_17:
      v25 = *(v9 + 48);
      v48 = *(v5 + 72);
      outlined init with take of PresenceSessionInfo.Participant(v25 + v48 * (v21 | (v13 << 6)), v8, type metadata accessor for Participant);
      v26 = *(v12 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v27 = &v8[v4[5]];
      v28 = *v27;
      v29 = *(v27 + 1);
      String.hash(into:)();
      MEMORY[0x1B2715070](*&v8[v4[6]]);
      v30 = &v8[v4[7]];
      if (*(v30 + 1))
      {
        v31 = v8;
        v32 = v5;
        v33 = v12;
        v34 = v4;
        v35 = v9;
        v36 = *v30;
        Hasher._combine(_:)(1u);
        v9 = v35;
        v4 = v34;
        v12 = v33;
        v5 = v32;
        v8 = v31;
        v18 = v47;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v8[v4[8]]);
      Hasher._combine(_:)(v8[v4[9]]);
      result = Hasher._finalize()();
      v37 = -1 << *(v12 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v19 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v19 + 8 * v39);
          if (v43 != -1)
          {
            v20 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v38) & ~*(v19 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      outlined init with take of PresenceSessionInfo.Participant(v8, *(v12 + 48) + v20 * v48, type metadata accessor for Participant);
      ++*(v12 + 16);
      v17 = v49;
    }

    v22 = v13;
    result = v46;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v46[v13];
      ++v22;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    v44 = 1 << *(v9 + 32);
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    v2 = v45;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo29TUConversationActivitySessionCGMd, &_ss11_SetStorageCySo29TUConversationActivitySessionCGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of InternalGroupSessionProvider.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of InternalGroupSessionProvider.end(activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.start(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t dispatch thunk of GroupSessionServiceProvider.start(presenceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.leave(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.prewarm()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2);
}

uint64_t dispatch thunk of GroupSessionServiceProvider.start(presenceSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v11(a1, a2, a3);
}

uint64_t lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PresentationSpatialTemplate.customOutput.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of SpatialTemplateConfiguration(v1 + 8, &v12);
  v15[0] = v12;
  v15[1] = v13;
  v16 = v14;
  v3 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(v15, *(&v13 + 1));
    v5 = (*(v4 + 16))(v3, v4);
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v15);
    if (v5 == 0x65746E6573657270 && v7 == 0xE900000000000072)
    {

      v11 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v9 & 1;
    }
  }

  else
  {
    result = outlined destroy of SpatialTemplateRole?(v15);
    v11 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v11;
  *(a1 + 24) = 1;
  return result;
}

uint64_t PresentationSpatialTemplate.Role.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PresentationSpatialTemplate.Role.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationSpatialTemplate.Role()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationSpatialTemplate.Role()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PresentationSpatialTemplate.Role@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PresentationSpatialTemplate.Role, *a1);

  *a2 = v3 != 0;
  return result;
}

Swift::Int PresentationSpatialTemplate.PresenterRoleBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

unint64_t PresentationSpatialTemplate.init(presenterRoleBehavior:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v4 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    v4 = &type metadata for PresentationSpatialTemplate.Role;
    result = lazy protocol witness table accessor for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role();
  }

  a2[4] = v4;
  a2[5] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role()
{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role);
  }

  return result;
}

Swift::Int PresentationSpatialTemplate.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationSpatialTemplate()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationSpatialTemplate()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static SpatialTemplatePreference.presentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = word_1EB61A5B0;
  v4 = HIBYTE(word_1EB61A5B0);
  *a1 = static SpatialTemplatePreference.presentation;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return result;
}

uint64_t static SpatialTemplatePreference.presentation.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static SpatialTemplatePreference.presentation = v1;
  LOBYTE(word_1EB61A5B0) = v2;
  HIBYTE(word_1EB61A5B0) = v3;
  return result;
}

uint64_t (*static SpatialTemplatePreference.presentation.modify())()
{
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.modify;
}

unint64_t lazy protocol witness table accessor for type [PresentationSpatialTemplate.Role] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PresentationSpatialTemplate.Role] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PresentationSpatialTemplate.Role] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities27PresentationSpatialTemplateV4RoleOGMd, &_sSay15GroupActivities27PresentationSpatialTemplateV4RoleOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PresentationSpatialTemplate.Role] and conformance [A]);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PresentationSpatialTemplate.Role(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PresentationSpatialTemplate.Role and conformance PresentationSpatialTemplate.Role();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior()
{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate.PresenterRoleBehavior and conformance PresentationSpatialTemplate.PresenterRoleBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate()
{
  result = lazy protocol witness table cache variable for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate;
  if (!lazy protocol witness table cache variable for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSpatialTemplate and conformance PresentationSpatialTemplate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSpatialTemplate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for PresentationSpatialTemplate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CGImageRef.thumbnailImageData(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Thumb = CGImageCreateThumb();
  if (!Thumb)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.default);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1AEE80000, v43, v44, "Error creating thumbnail image", v45, 2u);
      MEMORY[0x1B2715BA0](v45, -1, -1);
    }

    return 0;
  }

  v10 = Thumb;
  v11 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  static UTType.jpeg.getter();
  v12 = UTType.identifier.getter();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v15 = MEMORY[0x1B2714130](v12, v14);

  v16 = CGImageDestinationCreateWithData(v11, v15, 1uLL, 0);
  if (!v16)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Log.default);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1AEE80000, v47, v48, "Error creating thumbnail image destination ref", v49, 2u);
      MEMORY[0x1B2715BA0](v49, -1, -1);
    }

    goto LABEL_29;
  }

  v17 = v16;
  CGImageDestinationAddImage(v16, v10, 0);
  if (!CGImageDestinationFinalize(v17))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Log.default);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1AEE80000, v51, v52, "Error finalizing thumbnail image", v53, 2u);
      MEMORY[0x1B2715BA0](v53, -1, -1);
    }

LABEL_29:
    return 0;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.default);
  v19 = v11;
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_13;
  }

  v56 = v22;
  v57 = v21;
  v23 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v58 = a1;
  v59 = v55;
  *v23 = 136315650;
  v24 = String.init<A>(reflecting:)();
  v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v59);

  *(v23 + 4) = v26;
  *(v23 + 12) = 2080;
  v27 = NSData.startIndex.getter();
  v28 = NSData.endIndex.getter();
  v29 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v27 < v29 || result < v27)
  {
    __break(1u);
  }

  else
  {
    v31 = NSData.startIndex.getter();
    result = NSData.endIndex.getter();
    if (v28 >= v31 && result >= v28)
    {
      if (!__OFSUB__(v28, v27))
      {
        v58 = v28 - v27;
        v32 = String.init<A>(reflecting:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v59);

        *(v23 + 14) = v34;
        *(v23 + 22) = 2080;
        v58 = v20;
        type metadata accessor for CGImageRef(0);
        v35 = v20;
        v36 = String.init<A>(reflecting:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v59);

        *(v23 + 24) = v38;
        v21 = v57;
        _os_log_impl(&dword_1AEE80000, v57, v56, "Generated image preview of size %s  %s bytes for %s", v23, 0x20u);
        v39 = v55;
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v39, -1, -1);
        MEMORY[0x1B2715BA0](v23, -1, -1);
LABEL_13:

        v40 = v19;
        v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v41;
      }

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

CGImageRef specialized static CGImageRef.thumbnailImage(from:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = CGDataProviderCreateWithCFData(isa);

  if (v1)
  {
    v2 = CGImageCreateWithJPEGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to create CGDataProvider from dataBlob", v6, 2u);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

void GroupSessionMessenger.receive<A>(_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v24 = a4;
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  type metadata accessor for GroupSessionMessenger.MessageContext();
  v21[2] = swift_getTupleTypeMetadata2();
  v21[1] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  v8 = type metadata accessor for Publishers.CompactMap();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v21[0] = swift_getWitnessTable();
  v12 = type metadata accessor for Publishers.HandleEvents();
  v22 = *(v12 - 8);
  v13 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  v25 = static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(*(v4 + 16), *(v4 + 24), a1, a1, a2, a3);
  v16 = *(v4 + 40);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = v16;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = partial apply for closure #1 in GroupSessionMessenger.receive<A>(_:);
  v18[6] = v17;
  Publisher.compactMap<A>(_:)();

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v23 + 8))(v11, v8);
  swift_getWitnessTable();
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v22 + 8))(v15, v12);
  GroupSessionMessenger.MessageStream.init(outputStream:)(v20, v24);
}

uint64_t type metadata accessor for GroupSessionMessenger.MessageContext()
{
  result = type metadata singleton initialization cache for GroupSessionMessenger.MessageContext;
  if (!type metadata singleton initialization cache for GroupSessionMessenger.MessageContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GroupSessionMessenger.send<A>(_:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v51[3] = v14;
  v51[4] = v15;
  v46 = v16;
  v51[5] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  v18 = *(v8 + 16);
  v18(boxed_opaque_existential_1, a1, a5);
  v52 = 1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);
  v18(v11, a1, a5);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = a4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v49 = v24;
    *v23 = 136315394;
    swift_getDynamicType();
    v25 = _typeName(_:qualified:)();
    v27 = v26;
    (*(v8 + 8))(v11, a5);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v49);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v48 = v13;

    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v49);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_1AEE80000, v20, v21, "Sending message: %s to: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v24, -1, -1);
    v32 = v23;
    a4 = v44;
    MEMORY[0x1B2715BA0](v32, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, a5);
  }

  v33 = static Encodable.messageIdentifier.getter(a5);
  v35 = v34;
  v36 = v47;
  v37 = *(v47 + 40);
  MEMORY[0x1EEE9AC00](v33);
  tryLog<A>(_:_:function:line:)();
  v38 = v50;
  if (v50 >> 60 == 15)
  {
  }

  else
  {
    v39 = v49;
    v40 = *(v36 + 16);
    v41 = *(v36 + 24);
    v49 = v13;
    ObjectType = swift_getObjectType();
    LOBYTE(v48) = v37;
    (*(v41 + 16))(v39, v38, &v49, v33, v35, &v48, v45, a4, ObjectType, v41);

    outlined consume of Data?(v39, v38);
  }

  return outlined destroy of GroupSessionMessenger.MessageWrapper(v51);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities14PlaybackSyncerC7MessageV_s5NeverOAH_AD0C16SessionMessengerC0G7ContextVtTB5@<X0>(void (*a1)(_BYTE *)@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 == 4)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
    return (*(*(v7 - 8) + 56))(a5, 1, 1, v7);
  }

  else
  {
    v11[0] = a2;
    v12 = a3;
    v13 = a4;
    outlined copy of Data._Representation(a3, a4);
    a1(v11);
    if (v5)
    {
      result = outlined consume of Data._Representation(v12, v13);
      __break(1u);
    }

    else
    {
      outlined consume of Data._Representation(v12, v13);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
      return (*(*(v10 - 8) + 56))(a5, 0, 1, v10);
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities0C16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_s5NeverOAI_AF0G7ContextVAD15SendReliabilityOtTg5@<X0>(void (*a1)(_OWORD *)@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of URL?(v2, v11, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMR);
  if (v12 == 255)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else
  {
    v9[0] = v11[0];
    v9[1] = v11[1];
    v9[2] = v11[2];
    v10 = v12;
    a1(v9);
    if (v3)
    {
      result = outlined destroy of GroupSessionMessenger.MessageWrapper(v9);
      __break(1u);
    }

    else
    {
      outlined destroy of GroupSessionMessenger.MessageWrapper(v9);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
      return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    }
  }

  return result;
}

uint64_t GroupSessionMessenger.__allocating_init<A>(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GroupSessionMessenger.init<A>(session:)(a1);
  return v2;
}

uint64_t GroupSessionMessenger.init<A>(session:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v2 + 32) = v7;
  *(v2 + 16) = a1;
  *(v2 + 24) = &protocol witness table for GroupSession<A>;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t GroupSessionMessenger.__allocating_init<A>(session:deliveryMode:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  GroupSessionMessenger.init<A>(session:deliveryMode:)(a1, a2);
  return v4;
}

uint64_t GroupSessionMessenger.init<A>(session:deliveryMode:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = type metadata accessor for PropertyListEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v3 + 32) = v9;
  *(v3 + 16) = a1;
  *(v3 + 24) = &protocol witness table for GroupSession<A>;
  *(v3 + 40) = v5;
  return v3;
}

uint64_t GroupSessionMessenger.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v4 + 24) = a2;
  *(v4 + 32) = v8;
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  return v4;
}

uint64_t GroupSessionMessenger.init(transportSession:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PropertyListEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  *(v3 + 24) = a2;
  *(v3 + 32) = v9;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  return v3;
}

uint64_t GroupSessionMessenger.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t GroupSessionMessenger.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t GroupSessionMessenger.MessageWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v11 = v17;
    v20 = v16;
    v21 = v17;
    v12 = v18;
    v22 = v18;
    v13 = v19;
    v23 = v19;
    *a2 = v16;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupSessionMessenger.MessageWrapper.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupSessionMessenger.MessageWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupSessionMessenger.MessageWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance GroupSessionMessenger.MessageWrapper(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupSessionMessenger.MessageType.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 116;
  }

  else
  {
    v2 = 100;
  }

  if (*a2)
  {
    v3 = 116;
  }

  else
  {
    v3 = 100;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GroupSessionMessenger.MessageType.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupSessionMessenger.MessageType.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 100;
  if (*v1)
  {
    v2 = 116;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  if (*v0)
  {
    return 116;
  }

  else
  {
    return 100;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupSessionMessenger.MessageType.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupSessionMessenger.MessageType.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupSessionMessenger.MessageType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroupSessionMessenger.MessageType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = *(KeyedDecodingContainer.allKeys.getter() + 16);

    if (v11 == 1)
    {
      v12 = KeyedDecodingContainer.allKeys.getter();
      if (*(v12 + 16))
      {
        v13 = *(v12 + 32);

        if (v13)
        {
          v14 = 1;
          v27 = 1;
          lazy protocol witness table accessor for type TypedPayloadBox and conformance TypedPayloadBox();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v6 + 8))(v9, v5);
          v24 = 1;
          v15 = v23[0];
          v25 = v23[1];
          v26 = v23[2];
LABEL_11:
          v20 = v25;
          v21 = v26;
          *a2 = v15;
          *(a2 + 16) = v20;
          *(a2 + 32) = v21;
          *(a2 + 48) = v14;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }
      }

      else
      {
      }

      v28 = 0;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v9, v5);
      v14 = 0;
      v15 = v23[0];
      v27 = 0;
      goto LABEL_11;
    }

    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v18 = &type metadata for GroupSessionMessenger.MessageType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t GroupSessionMessenger.MessageType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities0D16SessionMessengerC11MessageType33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLO10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of GroupSessionMessenger.MessageType(v2, v15);
  if (v16)
  {
    v14[0] = v15[0];
    v14[1] = v15[1];
    v14[2] = v15[2];
    v13 = 1;
    lazy protocol witness table accessor for type TypedPayloadBox and conformance TypedPayloadBox();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined destroy of TypedPayloadBox(v14);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v11 = v15[0];
    v14[0] = v15[0];
    v13 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    return outlined consume of Data._Representation(v11, *(&v11 + 1));
  }
}

void _s15GroupActivities0A16SessionMessengerC13MessageStreamV06outputF0AEy_xG7Combine12AnyPublisherVyx_AC0E7ContextVts5NeverOG_tcfCAA14PlaybackSyncerC0E0V_Tt1g5Tm(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v13);
    _os_log_impl(&dword_1AEE80000, v9, v10, "Creating message stream for message type: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  *a4 = a1;
}

void GroupSessionMessenger.MessageStream.init(outputStream:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Creating message stream for message type: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  *a2 = a1;
}

uint64_t GroupSessionMessenger.MessageStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  type metadata accessor for GroupSessionMessenger.MessageContext();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = MEMORY[0x1E69E73E0];

  return MEMORY[0x1EEDB5BC8](a1, v8, TupleTypeMetadata2, v11, a3, a4);
}

uint64_t implicit closure #1 in GroupSessionMessenger.send(messageWrapper:to:messageTypeIdentifier:deliveryMode:completion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper();

  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v2)
  {
    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

uint64_t GroupSessionMessenger.send(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v39[0] = a1;
  v39[1] = a2;
  v40 = 0;
  outlined copy of Data._Representation(a1, a2);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);
  outlined copy of Data._Representation(a1, a2);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    result = swift_slowAlloc();
    v17 = result;
    v37 = result;
    *v15 = 134218242;
    v18 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v19 = 0;
        goto LABEL_15;
      }

      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v19 = BYTE6(a2);
LABEL_15:
      *(v15 + 4) = v19;
      outlined consume of Data._Representation(a1, a2);
      *(v15 + 12) = 2080;
      v36 = v11;

      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Sending raw data of length: %ld to: %s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
      goto LABEL_16;
    }

    LODWORD(v19) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v19 = v19;
    goto LABEL_15;
  }

  outlined consume of Data._Representation(a1, a2);
LABEL_16:

  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v26 = (*(v26 + 8))(MEMORY[0x1E6969080], v26);
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v29 = 0xEF617461442E6E6FLL;
    v27 = 0x697461646E756F46;
  }

  v30 = *(v6 + 40);
  MEMORY[0x1EEE9AC00](v26);
  tryLog<A>(_:_:function:line:)();
  v31 = v38;
  if (v38 >> 60 == 15)
  {
  }

  else
  {
    v32 = v37;
    v34 = *(v6 + 16);
    v33 = *(v6 + 24);
    v37 = v11;
    ObjectType = swift_getObjectType();
    LOBYTE(v36) = v30;
    (*(v33 + 16))(v32, v31, &v37, v27, v29, &v36, a4, a5, ObjectType, v33);

    outlined consume of Data?(v32, v31);
  }

  return outlined destroy of GroupSessionMessenger.MessageWrapper(v39);
}

uint64_t _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZAA14PlaybackSyncerC0E0V_Tt0t1g5(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v73 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v78 = *(v12 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v16 = static GroupSessionMessenger.MessageStreamStore.lock;
  Lock.lock()();
  ObjectType = swift_getObjectType();
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v19 & 1) != 0))
  {
    v20 = v17[7] + 24 * v18;
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
    swift_endAccess();
    v23 = swift_conformsToProtocol2();
    v24 = a1;
    if (v23)
    {
      v25 = *(v23 + 8);

      v26 = v25();
      v28 = v27;
    }

    else
    {
      v26 = 0xD000000000000026;
      v28 = 0x80000001AF01AC20;
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
    v87 = v59;
    v88 = &protocol witness table for TypedPayloadDecoder<A>;
    v60 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
    v85 = v60;
    if (v59)
    {
      v61 = v60;
      outlined init with take of Transferable(&v86, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v61;
      __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v28, isUniquelyReferenced_nonNull_native, &v82);

      __swift_destroy_boxed_opaque_existential_0(v83);
      v63 = v82;
    }

    else
    {
      outlined destroy of NSObject?(&v86, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(v26, v28, v83);

      outlined destroy of NSObject?(v83, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      v63 = v85;
    }

    PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v63);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Log.default);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v86 = v68;
      *v67 = 136315138;
      v83[0] = v24;
      v69 = String.init<A>(reflecting:)();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v86);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_1AEE80000, v65, v66, "Returning stored message stream for session %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x1B2715BA0](v68, -1, -1);
      MEMORY[0x1B2715BA0](v67, -1, -1);
    }
  }

  else
  {
    v76 = v7;
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.default);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v77 = v16;
    v74 = v11;
    v75 = v8;
    v73 = v4;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v86 = v34;
      *v33 = 136315138;
      v83[0] = a1;
      v35 = String.init<A>(reflecting:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v86);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1AEE80000, v30, v31, "Creating new message stream for session %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1B2715BA0](v34, -1, -1);
      MEMORY[0x1B2715BA0](v33, -1, -1);
    }

    v38 = type metadata accessor for PropertyListDecoder();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = PropertyListDecoder.init()();
    if (one-time initialization token for typedPayloadDecoderMap != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v12, static CodingUserInfoKey.typedPayloadDecoderMap);
    (*(v78 + 16))(v15, v42, v12);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    *&v86 = MEMORY[0x1E69E7CC8];
    v43 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(&v86, v15);
    v43(v83, 0);
    v44 = swift_conformsToProtocol2();
    if (v44)
    {
      v45 = (*(v44 + 8))(&type metadata for PlaybackSyncer.Message, v44);
      v47 = v46;
    }

    else
    {
      v45 = 0xD000000000000026;
      v47 = 0x80000001AF01AC20;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
    v87 = v48;
    v88 = &protocol witness table for TypedPayloadDecoder<A>;
    v49 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
    v85 = v49;
    if (v48)
    {
      v50 = v49;
      outlined init with take of Transferable(&v86, v83);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v50;
      __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v47, v51, &v82);

      __swift_destroy_boxed_opaque_existential_0(v83);
      v52 = v82;
    }

    else
    {
      outlined destroy of NSObject?(&v86, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(v45, v47, v83);

      outlined destroy of NSObject?(v83, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
      v52 = v85;
    }

    PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v52);
    *&v86 = (*(v80 + 8))(ObjectType);
    v53 = swift_allocObject();
    *(v53 + 16) = closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)partial apply;
    *(v53 + 24) = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(Data, Participant, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    v54 = v81;
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
    v55 = Publisher.share()();
    (*(v73 + 8))(v54, v3);
    *&v86 = v55;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = a1;
    *(swift_allocObject() + 16) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    v56 = v74;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
    v57 = v76;
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v75 + 8))(v56, v57);
    swift_beginAccess();

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = static GroupSessionMessenger.MessageStreamStore.contents;
    static GroupSessionMessenger.MessageStreamStore.contents = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v41, v21, a1, v58);
    static GroupSessionMessenger.MessageStreamStore.contents = v83[0];
    swift_endAccess();
  }

  Lock.unlock()();
  return v21;
}

uint64_t _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZ10Foundation4DataV_Tt0t1g5(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
  v65 = *(v3 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  Lock.lock()();
  ObjectType = swift_getObjectType();
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
  {
    v19 = v16[7] + 24 * v17;
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
    swift_endAccess();
    v22 = one-time initialization token for default;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.default);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = a1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v67[0] = v28;
      *v27 = 136315138;
      v66 = v26;
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v67);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v24, v25, "Returning stored message stream for session %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B2715BA0](v28, -1, -1);
      MEMORY[0x1B2715BA0](v27, -1, -1);
    }
  }

  else
  {
    v59 = v7;
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.default);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v60 = v6;
    v61 = a1;
    v57 = v3;
    v58 = v10;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67[0] = v37;
      *v36 = 136315138;
      v66 = a1;
      v38 = String.init<A>(reflecting:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v67);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1AEE80000, v33, v34, "Creating new message stream for session %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B2715BA0](v37, -1, -1);
      MEMORY[0x1B2715BA0](v36, -1, -1);
    }

    v41 = type metadata accessor for PropertyListDecoder();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = PropertyListDecoder.init()();
    if (one-time initialization token for typedPayloadDecoderMap != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v11, static CodingUserInfoKey.typedPayloadDecoderMap);
    (*(v12 + 16))(v15, v45, v11);
    v67[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    v67[0] = MEMORY[0x1E69E7CC8];
    v46 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(v67, v15);
    v46(&v66, 0);
    v47 = v61;
    v67[0] = (*(v63 + 8))(ObjectType);
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:);
    *(v48 + 24) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(Data, Participant, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    v49 = v64;
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
    v50 = v57;
    v51 = Publisher.share()();
    (*(v65 + 8))(v49, v50);
    v67[0] = v51;
    *(swift_allocObject() + 16) = v47;
    *(swift_allocObject() + 16) = v47;
    *(swift_allocObject() + 16) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    v52 = v58;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
    v53 = v60;
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v59 + 8))(v52, v53);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = static GroupSessionMessenger.MessageStreamStore.contents;
    static GroupSessionMessenger.MessageStreamStore.contents = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v44, v20, v47, isUniquelyReferenced_nonNull_native);
    static GroupSessionMessenger.MessageStreamStore.contents = v66;
    swift_endAccess();
  }

  Lock.unlock()();
  return v20;
}

uint64_t static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = a5;
  v101 = a6;
  v99 = a4;
  v105 = a3;
  v103 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94 - v14;
  v16 = type metadata accessor for CodingUserInfoKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v106 = static GroupSessionMessenger.MessageStreamStore.lock;
  Lock.lock()();
  ObjectType = swift_getObjectType();
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v23 & 1) != 0))
  {
    v24 = v21[7] + 24 * v22;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    swift_endAccess();
    v27 = MEMORY[0x1E6969080];

    if (v105 != v27)
    {
      v28 = v99;
      v29 = v101;
      v30 = static Encodable.messageIdentifier.getter(v99);
      v32 = v31;
      TypedPayloadDecoder.init()(v28, v100, v29);
      v33 = type metadata accessor for TypedPayloadDecoder();
      v112 = v33;
      v113 = &protocol witness table for TypedPayloadDecoder<A>;
      v34 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
      v110 = v34;
      if (v33)
      {
        v35 = v34;
        outlined init with take of Transferable(&v111, v108);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v35;
        v37 = v109;
        v38 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
        v39 = *(*(v37 - 8) + 64);
        MEMORY[0x1EEE9AC00](v38);
        v41 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v42 + 16))(v41);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v30, v32, isUniquelyReferenced_nonNull_native, &v107, v33, &protocol witness table for TypedPayloadDecoder<A>);

        __swift_destroy_boxed_opaque_existential_0(v108);
        v43 = v107;
      }

      else
      {
        outlined destroy of NSObject?(&v111, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        specialized Dictionary._Variant.removeValue(forKey:)(v30, v32, v108);

        outlined destroy of NSObject?(v108, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        v43 = v110;
      }

      PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v43);
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Log.default);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v111 = v89;
      *v88 = 136315138;
      v108[0] = a1;
      v90 = String.init<A>(reflecting:)();
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v111);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_1AEE80000, v86, v87, "Returning stored message stream for session %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x1B2715BA0](v89, -1, -1);
      MEMORY[0x1B2715BA0](v88, -1, -1);
    }
  }

  else
  {
    v94 = v8;
    v44 = v7;
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.default);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v98 = a1;
    v97 = v11;
    v96 = v12;
    v95 = v15;
    if (v48)
    {
      v49 = a1;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v111 = v51;
      *v50 = 136315138;
      v108[0] = v49;
      v52 = String.init<A>(reflecting:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v111);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1AEE80000, v46, v47, "Creating new message stream for session %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1B2715BA0](v51, -1, -1);
      MEMORY[0x1B2715BA0](v50, -1, -1);
    }

    v55 = v44;
    v56 = type metadata accessor for PropertyListDecoder();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    v59 = PropertyListDecoder.init()();
    if (one-time initialization token for typedPayloadDecoderMap != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v16, static CodingUserInfoKey.typedPayloadDecoderMap);
    (*(v17 + 16))(v20, v60, v16);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    *&v111 = MEMORY[0x1E69E7CC8];
    v61 = dispatch thunk of PropertyListDecoder.userInfo.modify();
    specialized Dictionary.subscript.setter(&v111, v20);
    v61(v108, 0);
    if (v105 != MEMORY[0x1E6969080])
    {
      v62 = v99;
      v63 = v101;
      v64 = static Encodable.messageIdentifier.getter(v99);
      v66 = v65;
      TypedPayloadDecoder.init()(v62, v100, v63);
      v67 = type metadata accessor for TypedPayloadDecoder();
      v112 = v67;
      v113 = &protocol witness table for TypedPayloadDecoder<A>;
      v68 = PropertyListDecoder.messageDecodersByMessageIdentifier.getter();
      v110 = v68;
      if (v67)
      {
        v69 = v68;
        outlined init with take of Transferable(&v111, v108);
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v69;
        v71 = v109;
        v72 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
        v73 = *(*(v71 - 8) + 64);
        MEMORY[0x1EEE9AC00](v72);
        v75 = &v94 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v76 + 16))(v75);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v64, v66, v70, &v107, v67, &protocol witness table for TypedPayloadDecoder<A>);

        __swift_destroy_boxed_opaque_existential_0(v108);
        v77 = v107;
      }

      else
      {
        outlined destroy of NSObject?(&v111, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        specialized Dictionary._Variant.removeValue(forKey:)(v64, v66, v108);

        outlined destroy of NSObject?(v108, &_s15GroupActivities20TypedPayloadDecoding_pSgMd, &_s15GroupActivities20TypedPayloadDecoding_pSgMR);
        v77 = v110;
      }

      PropertyListDecoder.messageDecodersByMessageIdentifier.setter(v77);
    }

    v78 = v98;
    *&v111 = (*(v103 + 8))(ObjectType);
    v79 = swift_allocObject();
    *(v79 + 16) = closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)partial apply;
    *(v79 + 24) = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(Data, Participant, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
    v80 = v104;
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAK15SendReliabilityOts5NeverOGAK0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AT0Q7ContextVAOtGMR);
    v81 = Publisher.share()();
    (*(v94 + 8))(v80, v55);
    *&v111 = v81;
    *(swift_allocObject() + 16) = v78;
    *(swift_allocObject() + 16) = v78;
    *(swift_allocObject() + 16) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAM15SendReliabilityOts5NeverOGAM0J16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AV0R7ContextVAQtGGMR);
    v82 = v95;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<AnyPublisher<(Data, Participant, SendReliability), Never>, (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AA12AnyPublisherVy10Foundation4DataV_15GroupActivities11ParticipantVAO15SendReliabilityOts5NeverOGAO0L16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AX0T7ContextVAStGGGMR);
    v83 = v97;
    v26 = Publisher.eraseToAnyPublisher()();
    (*(v96 + 8))(v82, v83);
    swift_beginAccess();

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v108[0] = static GroupSessionMessenger.MessageStreamStore.contents;
    static GroupSessionMessenger.MessageStreamStore.contents = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v59, v26, v78, v84);
    static GroupSessionMessenger.MessageStreamStore.contents = v108[0];
    swift_endAccess();
  }

  Lock.unlock()();
  return v26;
}

uint64_t closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a2;
  v14 = a4 & 1;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  if (*a3 == v14)
  {
    outlined init with copy of GroupSessionMessenger.MessageType(a1, v30);
    if (v31)
    {
      v32[0] = v30[0];
      v32[1] = v30[1];
      v32[2] = v30[2];
      v23 = TypedPayloadBox.unbox<A>(as:)(a5, v19);
      MEMORY[0x1EEE9AC00](v23);
      *(&v28 - 4) = a5;
      *(&v28 - 3) = a6;
      v24 = v29;
      *(&v28 - 2) = a7;
      *(&v28 - 1) = v24;
      type metadata accessor for GroupSessionMessenger.MessageContext();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:), (&v28 - 6), MEMORY[0x1E69E73E0], TupleTypeMetadata2, v26, a8);
      (*(v16 + 8))(v19, v15);
      return outlined destroy of TypedPayloadBox(v32);
    }

    else
    {
      outlined destroy of GroupSessionMessenger.MessageType(v30);
      type metadata accessor for GroupSessionMessenger.MessageContext();
      v27 = swift_getTupleTypeMetadata2();
      return (*(*(v27 - 8) + 56))(a8, 1, 1, v27);
    }
  }

  else
  {
    type metadata accessor for GroupSessionMessenger.MessageContext();
    v20 = swift_getTupleTypeMetadata2();
    v21 = *(*(v20 - 8) + 56);

    return v21(a8, 1, 1, v20);
  }
}

uint64_t closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for GroupSessionMessenger.MessageContext();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  return _s15GroupActivities11ParticipantVWOcTm_0(a2, a4 + v8, type metadata accessor for GroupSessionMessenger.MessageContext);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed GroupSessionMessenger.MessageWrapper, @in_guaranteed GroupSessionMessenger.MessageContext, @in_guaranteed SendReliability) -> (@out (A, GroupSessionMessenger.MessageContext)?)(uint64_t a1)
{
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
  return v4(a1, a1 + *(v5 + 48), a1 + *(v5 + 64));
}

void closure #2 in GroupSessionMessenger.receive<A>(_:)(uint64_t a1)
{
  type metadata accessor for GroupSessionMessenger.MessageContext();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(TupleTypeMetadata2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v6 = &v16 - v5;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  (*(v3 + 16))(v6, a1, TupleTypeMetadata2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getDynamicType();
    v12 = _typeName(_:qualified:)();
    v14 = v13;
    (*(v3 + 8))(v6, TupleTypeMetadata2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Receiving message: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, TupleTypeMetadata2);
  }
}

void partial apply for closure #2 in GroupSessionMessenger.receive<A>(_:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  closure #2 in GroupSessionMessenger.receive<A>(_:)(a1);
}

void GroupSessionMessenger.receive(_:)(void *a1@<X8>)
{
  v18 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMR);
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMR);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v19 = _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZ10Foundation4DataV_Tt0t1g5(*(v1 + 16), *(v1 + 24));
  v10 = *(v1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in GroupSessionMessenger.receive(_:);
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (Data, GroupSessionMessenger.MessageContext)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOG10Foundation4DataV_AOtGMR);
  v13 = v16;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v2 + 8))(v5, v13);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (Data, GroupSessionMessenger.MessageContext)>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOG10Foundation4DataV_AQtGGMR);
  v14 = v17;
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v9, v14);
  _s15GroupActivities0A16SessionMessengerC13MessageStreamV06outputF0AEy_xG7Combine12AnyPublisherVyx_AC0E7ContextVts5NeverOG_tcfCAA14PlaybackSyncerC0E0V_Tt1g5Tm(v15, 1635017028, 0xE400000000000000, v18);
}

uint64_t closure #1 in GroupSessionMessenger.receive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (*a3 == (a4 & 1))
  {
    outlined init with copy of GroupSessionMessenger.MessageType(a1, v15);
    if (v16 == 1)
    {
      outlined destroy of GroupSessionMessenger.MessageType(v15);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
      return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
    }

    else
    {
      v11 = v15[0];
      v12 = v15[1];
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
      v14 = *(v13 + 48);
      *a5 = v11;
      a5[1] = v12;
      _s15GroupActivities11ParticipantVWOcTm_0(a2, a5 + v14, type metadata accessor for GroupSessionMessenger.MessageContext);
      return (*(*(v13 - 8) + 56))(a5, 0, 1, v13);
    }
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
    v7 = *(*(v6 - 8) + 56);

    return v7(a5, 1, 1, v6);
  }
}

void closure #2 in GroupSessionMessenger.receive(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  outlined init with copy of URL?(a1, v8, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v10, v11))
  {
    outlined destroy of NSObject?(v8, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
LABEL_16:

    return;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  outlined init with copy of URL?(v8, v6, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
  v13 = *v6;
  v14 = v6[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      outlined consume of Data._Representation(v13, v14);
      v17 = 0;
      goto LABEL_15;
    }

    v19 = *(v13 + 16);
    v18 = *(v13 + 24);
    v13 = outlined consume of Data._Representation(v13, v14);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = v6[1];
    outlined consume of Data._Representation(v13, v14);
    v17 = BYTE6(v16);
LABEL_15:
    outlined destroy of GroupSessionMessenger.MessageContext(v6 + *(v2 + 48));
    outlined destroy of NSObject?(v8, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMd, &_s10Foundation4DataV_15GroupActivities0C16SessionMessengerC14MessageContextVtMR);
    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Receiving raw data of length: %ld", v12, 0xCu);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    goto LABEL_16;
  }

  v21 = HIDWORD(v13);
  v22 = v13;
  outlined consume of Data._Representation(v13, v14);
  if (!__OFSUB__(v21, v22))
  {
    v17 = v21 - v22;
    goto LABEL_15;
  }

  __break(1u);
}

void *one-time initialization function for contents()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_15GroupActivities0C16SessionMessengerC18MessageStreamStoreO7Storage33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static GroupSessionMessenger.MessageStreamStore.contents = result;
  return result;
}

uint64_t static GroupSessionMessenger.MessageStreamStore.contentsCount.getter()
{
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  Lock.withLock<A>(_:)();
  return v1;
}

uint64_t *GroupSessionMessenger.MessageStreamStore.lock.unsafeMutableAddressor()
{
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  return &static GroupSessionMessenger.MessageStreamStore.lock;
}

uint64_t closure #1 in static GroupSessionMessenger.MessageStreamStore.contentsCount.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = *(static GroupSessionMessenger.MessageStreamStore.contents + 2);
  return result;
}

uint64_t one-time initialization function for lock()
{
  v0 = type metadata accessor for Lock();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = Lock.init()();
  static GroupSessionMessenger.MessageStreamStore.lock = result;
  return result;
}

uint64_t static GroupSessionMessenger.MessageStreamStore.lock.getter()
{
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }
}

unint64_t PropertyListDecoder.messageDecodersByMessageIdentifier.getter()
{
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();
  v1 = __swift_project_value_buffer(v0, static CodingUserInfoKey.typedPayloadDecoderMap);
  v2 = dispatch thunk of PropertyListDecoder.userInfo.getter();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities20TypedPayloadDecoding_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

uint64_t PropertyListDecoder.messageDecodersByMessageIdentifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities20TypedPayloadDecoding_pMd, &_s15GroupActivities20TypedPayloadDecoding_pMR);
    v15 = Dictionary.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Registering new typed payload decoding map: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2715BA0](v14, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, static CodingUserInfoKey.typedPayloadDecoderMap);
  (*(v5 + 16))(v8, v18, v4);
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
  v23[0] = a1;
  v19 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  specialized Dictionary.subscript.setter(v23, v8);
  return v19(v22, 0);
}

uint64_t receiveCompletionOrCancel #1 <A>() in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x1EEE9AC00](a1);
  return Lock.withLock<A>(_:)();
}

uint64_t closure #1 in receiveCompletionOrCancel #1 <A>() in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t *a1)
{
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = specialized Dictionary.subscript.modify(v20, a1);
  if (v2[1])
  {
    if (__OFSUB__(*v2, 1))
    {
      __break(1u);
LABEL_17:
      swift_once();
LABEL_11:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Log.default);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20[0] = v16;
        *v15 = 136315138;
        v20[4] = a1;
        v17 = String.init<A>(reflecting:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v20);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1AEE80000, v13, v14, "Removing stored message stream for session %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x1B2715BA0](v16, -1, -1);
        MEMORY[0x1B2715BA0](v15, -1, -1);
      }

      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, 0, 0, a1);
      return swift_endAccess();
    }

    --*v2;
    (v3)(v20, 0);
  }

  else
  {
    (v3)(v20, 0);
  }

  swift_endAccess();
  swift_beginAccess();
  v4 = static GroupSessionMessenger.MessageStreamStore.contents;
  if (*(static GroupSessionMessenger.MessageStreamStore.contents + 2))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = (v4[7] + 24 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];

      swift_endAccess();
      result = outlined consume of GroupSessionMessenger.MessageStreamStore.Storage?(v8, v9);
      if (v8)
      {
        return result;
      }

      if (one-time initialization token for default == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  return swift_endAccess();
}

uint64_t closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)@<X0>(char *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *a1;
  tryLog<A>(_:_:function:line:)();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities0C16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_s5NeverOAI_AF0G7ContextVAD15SendReliabilityOtTg5(partial apply for closure #1 in closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:), a2);
  return outlined destroy of NSObject?(v5, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVSgMR);
}

uint64_t closure #1 in closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  outlined init with copy of GroupSessionMessenger.MessageWrapper(a1, a4);
  result = _s15GroupActivities11ParticipantVWOcTm_0(a2, a4 + v9, type metadata accessor for Participant);
  *(a4 + v10) = a3 & 1;
  return result;
}

uint64_t closure #2 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  return Lock.withLock<A>(_:)();
}

uint64_t (*closure #1 in closure #2 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1))()
{
  if (one-time initialization token for contents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = specialized Dictionary.subscript.modify(v4, a1);
  if (!v3[1])
  {
    (result)(v4, 0);
    return swift_endAccess();
  }

  if (!__OFADD__(*v3, 1))
  {
    ++*v3;
    (result)(v4, 0);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  return Lock.withLock<A>(_:)();
}

uint64_t outlined assign with take of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.DeliveryMode and conformance GroupSessionMessenger.DeliveryMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageReliability and conformance GroupSessionMessenger.MessageReliability);
  }

  return result;
}

uint64_t type metadata completion function for GroupSessionMessenger.MessageContext()
{
  result = type metadata accessor for Participant();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for GroupSessionMessenger.MessageStream()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionMessenger.MessageWrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for GroupSessionMessenger.MessageWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType.CodingKeys and conformance GroupSessionMessenger.MessageType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypedPayloadBox and conformance TypedPayloadBox()
{
  result = lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox and conformance TypedPayloadBox);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper.CodingKeys and conformance GroupSessionMessenger.MessageWrapper.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageType and conformance GroupSessionMessenger.MessageType);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
  v24 = v8;
  v25 = &protocol witness table for TypedPayloadDecoder<A>;
  v9 = *a4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return outlined init with take of Transferable(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v20 = *a4;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  __swift_mutable_project_boxed_opaque_existential_1(&v23, v8);
  specialized _NativeDictionary._insert(at:key:value:)(v11, a1, a2, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return outlined init with take of Transferable(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
  v26 = *a5;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  specialized _NativeDictionary._insert(at:key:value:)(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v36);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = outlined init with take of Transferable(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t outlined destroy of GroupSessionMessenger.MessageContext(uint64_t a1)
{
  v2 = type metadata accessor for GroupSessionMessenger.MessageContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15GroupActivities11ParticipantVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for implicit closure #1 in closure #1 in static GroupSessionMessenger.MessageStreamStore.messageStream<A>(for:messageType:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper();
  return dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.MessageWrapper and conformance GroupSessionMessenger.MessageWrapper);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:)(a1, v2[5], v2[2], a2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @in_guaranteed Participant, @in_guaranteed SendReliability) -> (@out (GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability)?)(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
  return v4(v5, v6, &a1[*(v7 + 48)], &a1[*(v7 + 64)]);
}

uint64_t getEnumTagSinglePayload for GroupSessionMessenger.MessageStreamStore.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionMessenger.MessageStreamStore.Storage(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GroupSessionMessenger.MessageType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GroupSessionMessenger.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t destructiveInjectEnumTag for GroupSessionMessenger.MessageType(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<CKShare>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TQ0_()
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

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TY2_;
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

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5TY1_;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}