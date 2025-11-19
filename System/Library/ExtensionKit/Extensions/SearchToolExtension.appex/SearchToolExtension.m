unint64_t lazy protocol witness table accessor for type SearchToolExtension and conformance SearchToolExtension()
{
  result = lazy protocol witness table cache variable for type SearchToolExtension and conformance SearchToolExtension;
  if (!lazy protocol witness table cache variable for type SearchToolExtension and conformance SearchToolExtension)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolExtension and conformance SearchToolExtension);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolExtension and conformance SearchToolExtension;
  if (!lazy protocol witness table cache variable for type SearchToolExtension and conformance SearchToolExtension)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolExtension and conformance SearchToolExtension);
  }

  return result;
}

uint64_t protocol witness for AppExtension.configuration.getter in conformance SearchToolExtension(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolExtension and conformance SearchToolExtension();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  lazy protocol witness table accessor for type SearchToolExtension and conformance SearchToolExtension();
  static AppExtension.main()();
  return 0;
}

uint64_t one-time initialization function for title()
{
  v0 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v0, static DoNotUseThisExtensionIntent.title);
  __swift_project_value_buffer(v0, static DoNotUseThisExtensionIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t DoNotUseThisExtensionIntent.title.unsafeMutableAddressor()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return __swift_project_value_buffer(v0, static DoNotUseThisExtensionIntent.title);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static DoNotUseThisExtensionIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static DoNotUseThisExtensionIntent.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DoNotUseThisExtensionIntent.title.setter(uint64_t a1)
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static DoNotUseThisExtensionIntent.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DoNotUseThisExtensionIntent.title.modify())()
{
  if (one-time initialization token for title != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  __swift_project_value_buffer(v0, static DoNotUseThisExtensionIntent.title);
  swift_beginAccess();
  return static DoNotUseThisExtensionIntent.title.modify;
}

uint64_t key path getter for static DoNotUseThisExtensionIntent.title : DoNotUseThisExtensionIntent.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = DoNotUseThisExtensionIntent.title.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for LocalizedStringResource();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static DoNotUseThisExtensionIntent.title : DoNotUseThisExtensionIntent.Type(uint64_t a1)
{
  v2 = DoNotUseThisExtensionIntent.title.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for LocalizedStringResource();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static DoNotUseThisExtensionIntent.assistantOnly.setter(char a1)
{
  result = swift_beginAccess();
  static DoNotUseThisExtensionIntent.assistantOnly = a1;
  return result;
}

uint64_t key path getter for static DoNotUseThisExtensionIntent.assistantOnly : DoNotUseThisExtensionIntent.Type@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static DoNotUseThisExtensionIntent.assistantOnly;
  return result;
}

uint64_t key path setter for static DoNotUseThisExtensionIntent.assistantOnly : DoNotUseThisExtensionIntent.Type(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static DoNotUseThisExtensionIntent.assistantOnly = v1;
  return result;
}

uint64_t DoNotUseThisExtensionIntent.perform()()
{
  v21 = v0;
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.stextension);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_2(&_mh_execute_header, v5, v6, "SearchToolExtension testing log");
    OUTLINED_FUNCTION_1(v4);
  }

  type metadata accessor for ToolDatabase();
  ToolDatabase.__allocating_init()();
  ToolDatabase.actions.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    type metadata accessor for ToolDefinition();
    v11 = Array.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "SearchToolExtension actions: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_1(v10);
    OUTLINED_FUNCTION_1(v9);
  }

  v14 = v0[4];
  type metadata accessor for ToolDefinition();
  v15 = Array.description.getter();
  v17 = v16;

  v0[2] = v15;
  v0[3] = v17;
  lazy protocol witness table accessor for type String and conformance String();
  static IntentResult.result<A>(value:)();

  v18 = v0[1];

  return v18();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance DoNotUseThisExtensionIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static DoNotUseThisExtensionIntent.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance DoNotUseThisExtensionIntent(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AppIntent.perform() in conformance DoNotUseThisExtensionIntent;

  return DoNotUseThisExtensionIntent.perform()(a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance DoNotUseThisExtensionIntent()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance DoNotUseThisExtensionIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

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
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

        v9 = result + 32;
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

        v9 = v7 + 32;
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

  return &_swiftEmptyArrayStorage;
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

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent()
{
  result = lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent;
  if (!lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent;
  if (!lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent;
  if (!lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DoNotUseThisExtensionIntent and conformance DoNotUseThisExtensionIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntentResultContainer<String, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type IntentResultContainer<String, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type IntentResultContainer<String, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVySSs5NeverOA2EGMd, &_s10AppIntents21IntentResultContainerVySSs5NeverOA2EGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentResultContainer<String, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t one-time initialization function for searchComponents()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.searchComponents);
  __swift_project_value_buffer(v0, static Logging.searchComponents);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for memoryCreationQU()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.memoryCreationQU);
  __swift_project_value_buffer(v0, static Logging.memoryCreationQU);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for hallucination()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.hallucination);
  __swift_project_value_buffer(v0, static Logging.hallucination);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for answerResolution()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.answerResolution);
  __swift_project_value_buffer(v0, static Logging.answerResolution);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for interface(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for server()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.server);
  __swift_project_value_buffer(v0, static Logging.server);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for searchSignposter(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return OSSignposter.init(logger:)();
}

uint64_t Logging.stextension.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static Logging.interface.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}