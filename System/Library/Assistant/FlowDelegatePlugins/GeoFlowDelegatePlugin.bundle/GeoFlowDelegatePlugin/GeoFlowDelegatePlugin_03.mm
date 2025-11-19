uint64_t getEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21GeoFlowDelegatePlugin0A7ContactVGMd, &_sSay21GeoFlowDelegatePlugin0A7ContactVGMR);
    lazy protocol witness table accessor for type GeoContact and conformance GeoContact(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GeoContact and conformance GeoContact(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GeoContact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContactHandleResolver.__allocating_init(contactService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t ContactHandleResolver.init(contactService:)(uint64_t a1)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t ContactHandleResolver.filterHandles(recipients:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(ContactHandleResolver.filterHandles(recipients:), 0, 0);
}

uint64_t ContactHandleResolver.filterHandles(recipients:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  *v3 = v0;
  v3[1] = ContactHandleResolver.filterHandles(recipients:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000000000C1730, partial apply for closure #1 in ContactHandleResolver.filterHandles(recipients:), v1, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = ContactHandleResolver.filterHandles(recipients:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = ContactHandleResolver.filterHandles(recipients:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t closure #1 in ContactHandleResolver.filterHandles(recipients:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*a2 + 112))(a3, partial apply for closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:), v12);
}

uint64_t closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:)(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void ContactHandleResolver.filterHandles(recipients:_:)(unint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v32 = a2;
    v33 = a3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  v32 = a2;
  v33 = a3;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = &_swiftEmptyArrayStorage;
  v7 = &MockShareETABaseFlow;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(a1 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = [v8 *&v7[50].flags];
    if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v6);
      }

      *(v6 + 2) = v17 + 1;
      v18 = &v6[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v7 = &MockShareETABaseFlow;
    }

    else
    {
    }

    ++v5;
  }

  while (v4 != v5);
LABEL_19:
  static os_log_type_t.default.getter();
  v21 = *(v34 + 16);
  os_log(_:dso:log:_:_:)();
  v22 = [objc_opt_self() sharedInstance];
  if (v22)
  {
    v23 = v22;
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v21, v24, "share ETA confirm ready", v25, 2u);
    }

    v26 = swift_allocObject();
    v26[2] = v34;
    v26[3] = v23;
    v26[4] = v6;
    v26[5] = v32;
    v26[6] = v33;
    v26[7] = a1;
    aBlock[4] = partial apply for specialized closure #1 in ContactHandleResolver.filterHandles(recipients:_:);
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_0;
    v27 = _Block_copy(aBlock);

    v28 = v23;

    [v28 performBlockAfterInitialSync:v27];
    _Block_release(v27);
  }

  else
  {

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RuntimeError();
    v29 = swift_allocObject();
    *(v29 + 16) = 0xD000000000000024;
    *(v29 + 24) = 0x80000000000C1780;
    lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
    v30 = swift_allocError();
    *v31 = v29;
    v32(v30, 1);
  }
}

uint64_t specialized closure #1 in ContactHandleResolver.filterHandles(recipients:_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static os_log_type_t.info.getter();
  v13 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_B89E0;
  *(v14 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripService, MSPSharedTripService_ptr);
  *(v14 + 64) = lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject();
  *(v14 + 32) = a3;
  v15 = a3;
  os_log(_:dso:log:_:_:)();

  v16 = *(a2 + 24);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a1;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v18 = *(*v16 + 144);

  v19 = a1;

  v18(a4, partial apply for closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:_:), v17);
}

uint64_t closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, unint64_t a6)
{
  v85 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v90 = &v83 - v13;
  static os_log_type_t.info.getter();
  v14 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_B89E0;
  v16 = Array.debugDescription.getter();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  os_log(_:dso:log:_:_:)();

  v19 = static os_log_type_t.default.getter();
  v89 = v14;
  v20 = os_log_type_enabled(v14, v19);
  v98 = a6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v100[0] = v22;
    *v21 = 136315138;
    v23 = a3;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v25;
    a6 = v98;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v100);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_0, v89, v19, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  if (*(a1 + 16))
  {
    v30 = specialized ContactHandleResolver.phoneDisambiguationCandidates(_:)(a1);
    isa = v31;
    v33 = *(v31 + 2);
    v84 = v30;
    if (v33)
    {
      v83 = a4;
      v99 = &_swiftEmptyArrayStorage;
      v88 = v33;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (a6 >> 62)
      {
        goto LABEL_60;
      }

      v96 = a6 & 0xFFFFFFFFFFFFFF8;
      for (i = *(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v35 = 0;
        v86 = isa;
        v87 = isa + 32;
        v97 = a6 & 0xC000000000000001;
        v36 = v88;
        while (1)
        {
          if (v35 == v36)
          {
            goto LABEL_58;
          }

          if (v35 >= *(isa + 2))
          {
            break;
          }

          v94 = v35;
          v40 = &v87[48 * v35];
          v41 = *v40;
          v42 = v40[1];
          v44 = v40[2];
          v43 = v40[3];
          v45 = v40[4];
          v46 = v40[5];
          v91 = v41;
          v100[0] = v41;
          v100[1] = v42;
          v100[2] = v44;
          v100[3] = v43;
          v100[4] = v45;
          v100[5] = v46;
          v93 = v46;
          v95 = v42;

          v92 = v44;
          isa = EnhancedMSPSharedTripContact.getPersonHandle()().super.isa;
          if (i)
          {
            v47 = 0;
            while (1)
            {
              if (v97)
              {
                v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v47 >= *(v96 + 16))
                {
                  goto LABEL_57;
                }

                v48 = *(a6 + 8 * v47 + 32);
              }

              v49 = v48;
              v50 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              v51 = [v48 personHandle];
              if (v51 && (v52 = v51, v53 = [v51 value], v52, v53))
              {
                v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v56 = v55;
              }

              else
              {
                v54 = 0;
                v56 = 0;
              }

              v57 = [(objc_class *)isa value];
              if (!v57)
              {
                break;
              }

              v58 = v57;
              v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              if (v56)
              {
                if (v61)
                {
                  if (v54 == v59 && v56 == v61)
                  {

LABEL_38:
                    a6 = v98;
                    goto LABEL_39;
                  }

                  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v62)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_16;
                }

LABEL_15:

LABEL_16:
                a6 = v98;
                goto LABEL_17;
              }

              a6 = v98;
              if (!v61)
              {
                goto LABEL_39;
              }

LABEL_17:
              ++v47;
              if (v50 == i)
              {
                goto LABEL_36;
              }
            }

            if (!v56)
            {
              goto LABEL_38;
            }

            goto LABEL_15;
          }

LABEL_36:
          v49 = 0;
LABEL_39:
          v63 = type metadata accessor for PersonNameComponents();
          v64 = *(v63 - 8);
          v65 = v90;
          (*(v64 + 56))(v90, 1, 1, v63);
          if (v49 && (v66 = [v49 contactIdentifier]) != 0)
          {
            v67 = v66;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;

            v65 = v90;
          }

          else
          {
            v69 = 0;
          }

          if ((*(v64 + 48))(v65, 1, v63) == 1)
          {
            v70 = 0;
          }

          else
          {
            v70 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            (*(v64 + 8))(v65, v63);
          }

          v71 = String._bridgeToObjectiveC()();
          if (v69)
          {
            v37 = String._bridgeToObjectiveC()();
          }

          else
          {
            v37 = 0;
          }

          v35 = v94 + 1;
          [objc_allocWithZone(INPerson) initWithPersonHandle:isa nameComponents:v70 displayName:v71 image:0 contactIdentifier:v37 customIdentifier:0];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v38 = v99[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v36 = v88;
          v39 = v89;
          isa = v86;
          if (v35 == v88)
          {

            v76 = v99;
            a4 = v83;
            goto LABEL_53;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        v96 = a6 & 0xFFFFFFFFFFFFFF8;
      }
    }

    v76 = &_swiftEmptyArrayStorage;
    v39 = v89;
LABEL_53:
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v99 = v79;
      *v78 = 67109378;
      *(v78 + 4) = v84 & 1;
      *(v78 + 8) = 2080;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v80 = Array.description.getter();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v99);

      *(v78 + 10) = v82;
      _os_log_impl(&dword_0, v39, v77, "disambiguation required %{BOOL}d disambiguation list %s", v78, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
    }

    a4(v76, 0);
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RuntimeError();
    v72 = swift_allocObject();
    *(v72 + 16) = 0xD00000000000001DLL;
    *(v72 + 24) = 0x80000000000C18B0;
    lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
    v73 = swift_allocError();
    *v74 = v72;
    a4(v73, 1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t GeoFlowDelegatePlugin.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GeoFlowDelegatePlugin.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver(uint64_t a1)
{
  v4 = *(**v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v8(a1);
}

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

unint64_t lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError()
{
  result = lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError;
  if (!lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError)
  {
    type metadata accessor for RuntimeError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError);
  }

  return result;
}

uint64_t sub_4AED4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology18TerminalIntentNodeVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology18TerminalIntentNodeVGMR, &type metadata accessor for TerminalIntentNode);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR, &type metadata accessor for DisplayHint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMR, &type metadata accessor for SemanticValue);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology10IntentNode_pMd, &_s12SiriOntology10IntentNode_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for MSPSharedTripService, MSPSharedTripService_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject);
  }

  return result;
}

uint64_t sub_4B488()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t specialized ContactHandleResolver.phoneDisambiguationCandidates(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v32 = *(a1 + 32);
    *&v33 = v11;
    *(&v33 + 1) = *(a1 + 56);
    *&v34 = v12;
    *(&v34 + 1) = *(a1 + 72);
    v13 = *(&v34 + 1);

    v14 = v11;
    LOBYTE(v11) = EnhancedMSPSharedTripContact.isPhoneNumber()();

    if (v11)
    {
      v15 = EnhancedMSPSharedTripContact.getCapabilityType()();
      v16 = (a1 + 72);
      v17 = &_swiftEmptyArrayStorage;
      do
      {
        v18 = *(v16 - 3);
        v19 = *(v16 - 1);
        v20 = *v16;
        v29 = *(v16 - 5);
        *&v30 = v18;
        *(&v30 + 1) = *(v16 - 2);
        *&v31 = v19;
        *(&v31 + 1) = *v16;
        if (v15 != EnhancedMSPSharedTripContact.getCapabilityType()() || v12 != v19)
        {
          break;
        }

        v21 = v20;

        v22 = v18;
        if (!EnhancedMSPSharedTripContact.isPhoneNumber()())
        {

          return *(v17 + 2) > 1uLL;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v17);
        }

        v16 += 6;
        *(v17 + 2) = v24 + 1;
        v25 = &v17[48 * v24];
        *(v25 + 3) = v30;
        *(v25 + 4) = v31;
        *(v25 + 2) = v29;
        --v2;
      }

      while (v2);
      return *(v17 + 2) > 1uLL;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
      v26 = swift_allocObject();
      v26[1] = xmmword_B89E0;
      v26[2] = v32;
      v26[3] = v33;
      v26[4] = v34;

      v27 = v14;
      v28 = v13;
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_B89E0;
    if (v2 == 1)
    {
      v4 = *(a1 + 40);
      v6 = *(a1 + 48);
      v5 = *(a1 + 56);
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      *(result + 32) = *(a1 + 32);
      *(result + 40) = v4;
      *(result + 48) = v6;
      *(result + 56) = v5;
      *(result + 64) = v7;
      *(result + 72) = v8;
      v9 = v8;

      v10 = v6;
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_4B8A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:)(uint64_t a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in ContactHandleResolver.filterHandles(recipients:)(a1, a2 & 1);
}

uint64_t static GeoFeatureManager.shouldEnableAltimeter.getter()
{
  v2[3] = &type metadata for SiriGeoFeature;
  v2[4] = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
  LOBYTE(v2[0]) = 1;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0 & 1;
}

uint64_t FSMFlow.on(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v10);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v49 - v17;
  v55 = *(a3 + 40);
  v56 = a3 + 40;
  v19 = v55(a2, a3);
  v20 = v13[2];
  v57 = v3;
  v54 = v20;
  v51 = v13 + 2;
  v20(v18, v3, a2);
  (*(v8 + 16))(v12, a1, v7);
  v50 = static os_log_type_t.default.getter();
  v52 = v19;
  v21 = os_log_type_enabled(v19, v50);
  v59 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v49 = a1;
    v23 = v22;
    v60 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = *(a3 + 16);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v13;
    v27 = a3;
    v29 = v28;
    v53 = v26[1];
    v53(v18, a2);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v29, &v60);
    a3 = v27;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v8 + 8))(v12, v7);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v60);

    *(v23 + 14) = v34;
    v35 = v52;
    _os_log_impl(&dword_0, v52, v50, "on %s input %s", v23, 0x16u);
    swift_arrayDestroy();

    a1 = v49;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
    v53 = v13[1];
    v53(v18, a2);
  }

  v36 = v57;
  v37 = (*(a3 + 48))(a1, a2, a3);
  v38 = v55(a2, a3);
  v39 = v58;
  v54(v58, v36, a2);
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315394;
    v43 = *(a3 + 16);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v53(v39, a2);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v60);

    *(v41 + 4) = v47;
    *(v41 + 12) = 1024;
    *(v41 + 14) = v37 & 1;
    _os_log_impl(&dword_0, v38, v40, "on exit %s return %{BOOL}d", v41, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {

    v53(v39, a2);
  }

  return v37 & 1;
}

uint64_t FSMFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(v13 + 40))(v14, v13);
  (*(v9 + 16))(v12, v4, a3);
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27[1] = a2;
    v27[2] = v4;
    v19 = v18;
    v28 = v18;
    *v17 = 136315138;
    v20 = *(a4 + 16);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v27[0] = a1;
    v23 = v22;
    (*(v9 + 8))(v12, a3);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v28);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v15, v16, "execute %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {

    (*(v9 + 8))(v12, a3);
  }

  v25 = *(a4 + 8);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t FSMFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v8 = *(a2 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v4[6] = swift_task_alloc();
  v10 = *(a3 + 56);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v4[7] = v12;
  *v12 = v4;
  v12[1] = FSMFlow.execute();

  return v14(a1, a2, a3);
}

uint64_t FSMFlow.execute()()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(FSMFlow.execute(), 0, 0);
}

{
  v24 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = (*(v0[3] + 40))(v4);
  (*(v2 + 16))(v1, v3, v4);
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[5];
  v8 = v0[6];
  if (v7)
  {
    v10 = v0[2];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 16);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v9 + 8))(v8, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v23);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v5, v6, "execute return %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    v19 = v0[2];

    (*(v9 + 8))(v8, v19);
  }

  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t FSMFlow.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  strcpy(v13, " flowState: ");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  (*(a2 + 32))(a1, a2);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6C61567469786520;
  v10._object = 0xEC000000203A6575;
  String.append(_:)(v10);
  dispatch thunk of Flow.exitValue.getter();
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  return v13[0];
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  TrafficIncidentContinueInAppPunchoutStrategy.init(with:)(a1);
  return v2;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v3 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v3 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v3 + 32) = OS_os_log.init(subsystem:category:)();
  *(v3 + 16) = 1;
  *(v1 + 24) = v3;
  outlined init with take of CATType(a1, v1 + 32);
  return v1;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.requireUnlock(intentResolutionRecord:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  [static AssistantProperties.instance currentNavigationState];
  IsNavigating = AFNavigationStateIsNavigating();
  v2 = *(v0 + 16);
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (IsNavigating)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (IsNavigating)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "isNavigating returns %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  return IsNavigating ^ 1u;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = type metadata accessor for AceOutput();
  v3[35] = v4;
  v5 = *(v4 - 8);
  v3[36] = v5;
  v6 = *(v5 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  v3[44] = v8;
  v9 = *(v8 - 8);
  v3[45] = v9;
  v10 = *(v9 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:), 0, 0);
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  v36 = v0;
  v1 = v0[33];
  v2 = v0[34];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INReportIncidentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INReportIncidentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.app.getter();
  v3 = IntentResolutionRecord.intent.getter();
  v4 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v0[48] = v4;

  v5 = *(v2 + 16);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    v9 = v4;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v35);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "appLaunch command is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v15 = v0[33];
  v16 = v0[34];
  v17 = IntentResolutionRecord.intent.getter();
  v18 = specialized static TrafficIncidentUtils.isUpdateIntent(intent:)(v17);

  v19 = v16[3];
  if (v18)
  {
    v0[20] = type metadata accessor for TrafficIncident(0);
    v0[21] = &protocol witness table for TrafficIncident;
    __swift_allocate_boxed_opaque_existential_0(v0 + 17);
    swift_storeEnumTagMultiPayload();
    v20 = v16[7];
    v21 = v16[8];
    __swift_project_boxed_opaque_existential_1(v16 + 4, v20);
    v22 = (*(v21 + 80))(v20, v21);
    v0[49] = v22;
    v23 = *(*v19 + 112);
    v34 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    v0[50] = v25;
    *v25 = v0;
    v25[1] = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
    v26 = v0[47];
    v27 = v0 + 17;
  }

  else
  {
    v0[5] = type metadata accessor for TrafficIncident(0);
    v0[6] = &protocol witness table for TrafficIncident;
    __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    swift_storeEnumTagMultiPayload();
    v28 = v16[7];
    v29 = v16[8];
    __swift_project_boxed_opaque_existential_1(v16 + 4, v28);
    v22 = (*(v29 + 80))(v28, v29);
    v0[52] = v22;
    v30 = *(*v19 + 112);
    v34 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    v0[53] = v32;
    *v32 = v0;
    v32[1] = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
    v26 = v0[46];
    v27 = v0 + 2;
  }

  return v34(v26, v27, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v5 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v5 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v54 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 272);
  v4 = v3[7];
  v5 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
  (*(v5 + 32))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v0 + 216) = 0u;
  *(v7 + 16) = xmmword_B8FB0;
  *(v7 + 32) = v1;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  v8 = v1;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v9 = logObject;
  os_log(_:dso:log:_:_:)();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "sendCompletionViewOutputSuccess", v11, 2u);
  }

  v12 = *(v0 + 376);
  v13 = *(v0 + 344);
  v15 = *(v0 + 320);
  v14 = *(v0 + 328);
  v16 = *(v0 + 280);
  v17 = *(v0 + 288);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  v18 = static os_log_type_t.info.getter();
  v19 = *(v17 + 16);
  v19(v15, v14, v16);
  v20 = os_log_type_enabled(v9, v18);
  v21 = *(v0 + 320);
  if (v20)
  {
    v22 = *(v0 + 312);
    v52 = v18;
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53 = v26;
    *v25 = 136315138;
    v19(v22, v21, v24);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    (*(v23 + 8))(v21, v24);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v53);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v9, v52, "sendCompletionViewOutput dialog final output is: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    (*(*(v0 + 288) + 8))(*(v0 + 320), *(v0 + 280));
  }

  v31 = *(v0 + 376);
  v32 = *(v0 + 384);
  v33 = *(v0 + 352);
  v34 = *(v0 + 360);
  v35 = *(v0 + 344);
  v36 = *(v0 + 328);
  v37 = *(v0 + 280);
  v38 = *(v0 + 288);
  v39 = *(v0 + 256);
  v39[3] = v37;
  v39[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  (*(v38 + 32))(boxed_opaque_existential_0, v36, v37);

  outlined destroy of Mirror.DisplayStyle?(v0 + 216, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v35, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  (*(v34 + 8))(v31, v33);
  v42 = *(v0 + 368);
  v41 = *(v0 + 376);
  v44 = *(v0 + 336);
  v43 = *(v0 + 344);
  v46 = *(v0 + 320);
  v45 = *(v0 + 328);
  v48 = *(v0 + 304);
  v47 = *(v0 + 312);
  v49 = *(v0 + 296);

  v50 = *(v0 + 8);

  return v50();
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 416);
  v7 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v5 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = TrafficIncidentContinueInAppPunchoutStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v53 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = *(v0 + 272);
  v4 = v3[7];
  v5 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
  (*(v5 + 32))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v7 + 16) = xmmword_B8FB0;
  *(v7 + 32) = v1;
  *(v0 + 128) = 0;
  v8 = v1;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v9 = logObject;
  os_log(_:dso:log:_:_:)();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "sendCompletionViewOutputSuccess", v11, 2u);
  }

  v12 = *(v0 + 368);
  v13 = *(v0 + 336);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 280);
  v17 = *(v0 + 288);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  v18 = static os_log_type_t.info.getter();
  v19 = *(v17 + 16);
  v19(v15, v14, v16);
  if (os_log_type_enabled(v9, v18))
  {
    v20 = *(v0 + 312);
    v51 = v18;
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    v23 = *(v0 + 280);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v52 = v25;
    *v24 = 136315138;
    v19(v20, v22, v23);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    (*(v21 + 8))(v22, v23);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v52);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v9, v51, "sendCompletionViewOutput dialog final output is: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  }

  v30 = *(v0 + 384);
  v32 = *(v0 + 360);
  v31 = *(v0 + 368);
  v33 = *(v0 + 352);
  v34 = *(v0 + 336);
  v35 = *(v0 + 304);
  v36 = *(v0 + 280);
  v37 = *(v0 + 288);
  v38 = *(v0 + 256);
  v38[3] = v36;
  v38[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(v37 + 32))(boxed_opaque_existential_0, v35, v36);

  outlined destroy of Mirror.DisplayStyle?(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v34, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v32 + 8))(v31, v33);
  v41 = *(v0 + 368);
  v40 = *(v0 + 376);
  v43 = *(v0 + 336);
  v42 = *(v0 + 344);
  v45 = *(v0 + 320);
  v44 = *(v0 + 328);
  v47 = *(v0 + 304);
  v46 = *(v0 + 312);
  v48 = *(v0 + 296);

  v49 = *(v0 + 8);

  return v49();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v1 = *(v0 + 408);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 296);

  v11 = *(v0 + 8);

  return v11();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 432);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 296);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock(), 0, 0);
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock()()
{
  v1 = v0[23];
  static os_log_type_t.info.getter();
  v2 = v1[2];
  os_log(_:dso:log:_:_:)();
  v3 = v1[3];
  v0[5] = &type metadata for Common;
  v0[6] = &protocol witness table for Common;
  v0[2] = 1;
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = (*(v5 + 80))(v4, v5);
  v0[28] = v6;
  v7 = *(*v3 + 112);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock();
  v10 = v0[27];

  return (v12)(v10, v0 + 2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = TrafficIncidentContinueInAppPunchoutStrategy.makePromptForDeviceUnlock();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 32))(v7, v8);
  v9 = v6[7];
  v10 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v9);
  (*(v10 + 32))(v9, v10);
  v11 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v12 = type metadata accessor for NLContextUpdate();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = type metadata accessor for AceOutput();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v5[3] = v13;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v5);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 136, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[27];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v3 = v0[1];
  v4 = v0[30];

  return v3();
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t TrafficIncidentContinueInAppPunchoutStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:) in conformance TrafficIncidentContinueInAppPunchoutStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance TrafficIncidentContinueInAppPunchoutStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance TrafficIncidentContinueInAppPunchoutStrategy(uint64_t a1)
{
  v4 = *(**v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t lazy protocol witness table accessor for type TrafficIncidentContinueInAppPunchoutStrategy and conformance TrafficIncidentContinueInAppPunchoutStrategy(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AnswerAltitudeFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of AnswerAltitudeFlow.State(v1, *(v0 + 40));
  return v1;
}

uint64_t outlined copy of AnswerAltitudeFlow.State(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t AnswerAltitudeFlow.flowState.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  v6 = *(v2 + 40);
  *(v2 + 40) = a2;
  return outlined consume of AnswerAltitudeFlow.State(v5, v6);
}

uint64_t outlined consume of AnswerAltitudeFlow.State(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t AnswerAltitudeFlow.flowHelper.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 48));
  outlined init with take of CATType(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t AnswerAltitudeFlow.__allocating_init(with:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized AnswerAltitudeFlow.init(with:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t AnswerAltitudeFlow.init(with:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized AnswerAltitudeFlow.init(with:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t AnswerAltitudeFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 160))(v2);
}

uint64_t AnswerAltitudeFlow.onInput(input:)()
{
  static os_log_type_t.default.getter();
  v1 = *(v0 + 16);
  os_log(_:dso:log:_:_:)();
  return 1;
}

uint64_t AnswerAltitudeFlow.executeState()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(AnswerAltitudeFlow.executeState(), 0, 0);
}

uint64_t AnswerAltitudeFlow.executeState()()
{
  v64 = v0;
  v1 = (*(**(v0 + 112) + 112))();
  *(v0 + 120) = v1;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = v1;
      v4 = *(v0 + 112);
      v5 = static os_log_type_t.default.getter();
      v6 = *(v4 + 16);
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v63 = v8;
        *v7 = 136315138;
        *(v0 + 96) = v3;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v63);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_0, v6, v5, "AnswerAltitudeFlow execute request unsupported with err: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

      v12 = *(**(v0 + 112) + 208);
      v59 = (v12 + *v12);
      v13 = v12[1];
      v14 = swift_task_alloc();
      *(v0 + 152) = v14;
      *v14 = v0;
      v14[1] = AnswerAltitudeFlow.executeState();
      v15 = *(v0 + 104);
      v16 = *(v0 + 112);

      return v59(v15);
    }

    if (v1 <= 1)
    {
      if (v1)
      {
        v47 = *(v0 + 112);
        static os_log_type_t.info.getter();
        v48 = v47[2];
        os_log(_:dso:log:_:_:)();
        v49 = *(*v47 + 200);
        v62 = (v49 + *v49);
        v50 = v49[1];
        v51 = swift_task_alloc();
        *(v0 + 144) = v51;
        *v51 = v0;
        v51[1] = AnswerAltitudeFlow.executeState();
        v30 = *(v0 + 104);
        v52 = *(v0 + 112);
        v32 = v62;
      }

      else
      {
        v25 = *(v0 + 112);
        static os_log_type_t.info.getter();
        v26 = v25[2];
        os_log(_:dso:log:_:_:)();
        v27 = *(*v25 + 192);
        v61 = (v27 + *v27);
        v28 = v27[1];
        v29 = swift_task_alloc();
        *(v0 + 136) = v29;
        *v29 = v0;
        v29[1] = AnswerAltitudeFlow.executeState();
        v30 = *(v0 + 104);
        v31 = *(v0 + 112);
        v32 = v61;
      }

      return v32(v30);
    }

    if (v1 == 2)
    {
      v33 = *(v0 + 112);
      v34 = static os_log_type_t.default.getter();
      v35 = *(v33 + 16);
      if (os_log_type_enabled(v35, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v63 = v37;
        *v36 = 136315138;
        *(v0 + 80) = &type metadata for SiriGeoFeature;
        *(v0 + 88) = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
        *(v0 + 56) = 1;
        v38 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
        if (v38)
        {
          v39 = 1702195828;
        }

        else
        {
          v39 = 0x65736C6166;
        }

        if (v38)
        {
          v40 = 0xE400000000000000;
        }

        else
        {
          v40 = 0xE500000000000000;
        }

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v63);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_0, v35, v34, "Should answer altitude use the device's altimeter: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
      }

      *(v0 + 40) = &type metadata for SiriGeoFeature;
      *(v0 + 48) = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
      *(v0 + 16) = 1;
      v42 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      if (v42)
      {
        v43 = [objc_opt_self() isAbsoluteAltitudeAvailable];
        static os_log_type_t.info.getter();
        v44 = *(v0 + 104);
        v45 = *(v0 + 112);
        if (v43)
        {
          v46 = os_log(_:dso:log:_:_:)();
          (*(*v45 + 184))(v46);
LABEL_35:
          v58 = *(v0 + 8);

          return v58();
        }

        os_log(_:dso:log:_:_:)();
        (*(*v45 + 120))(0, 2);
      }

      else
      {
        v57 = *(v0 + 104);
        v56 = *(v0 + 112);
        static os_log_type_t.info.getter();
        os_log(_:dso:log:_:_:)();
        (*(*v56 + 120))(0, 2);
      }

      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_35;
    }

    v54 = *(v0 + 104);
    v53 = *(v0 + 112);
    static os_log_type_t.default.getter();
    v55 = *(v53 + 16);
    os_log(_:dso:log:_:_:)();
    static ExecuteResponse.complete()();
    goto LABEL_35;
  }

  v18 = *(**(v0 + 112) + 216);
  v60 = (v18 + *v18);
  v19 = v1;
  v20 = v18[1];
  v21 = swift_task_alloc();
  *(v0 + 128) = v21;
  *v21 = v0;
  v21[1] = AnswerAltitudeFlow.executeState();
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24.n128_u64[0] = v19;

  return v60(v22, v24);
}

{
  v1 = *(*v0 + 128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 136);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 144);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(AnswerAltitudeFlow.executeState(), 0, 0);
}

{
  outlined consume of AnswerAltitudeFlow.State(*(v0 + 120), 1);
  v1 = *(v0 + 8);

  return v1();
}

void AnswerAltitudeFlow.fetchAltitude()()
{
  v1 = [objc_allocWithZone(CMAltimeter) init];
  static os_log_type_t.info.getter();
  v2 = *(v0 + 16);
  os_log(_:dso:log:_:_:)();
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v7[4] = partial apply for closure #1 in AnswerAltitudeFlow.fetchAltitude();
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMAbsoluteAltitudeData?, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_1;
  v5 = _Block_copy(v7);

  v6 = v1;

  [v6 startAbsoluteAltitudeUpdatesToQueue:v3 withHandler:v5];
  _Block_release(v5);

  static ExecuteResponse.ongoing(requireInput:)();
}

id closure #1 in AnswerAltitudeFlow.fetchAltitude()(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    v6 = static os_log_type_t.info.getter();
    v7 = a3[2];
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v7, v6, "Error Fetching Altitude from CMAltimeter: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    (*(*a3 + 120))(0, 2);
  }

  else if (a1)
  {
    v13 = a1;
    v14 = static os_log_type_t.info.getter();
    v15 = a3[2];
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      [v13 altitude];
      *(v16 + 4) = v17;
      _os_log_impl(&dword_0, v15, v14, "Altimeter retrived value: %f", v16, 0xCu);
    }

    [v13 altitude];
    (*(*a3 + 120))(v18, 0);
  }

  else
  {
    static os_log_type_t.info.getter();
    v19 = a3[2];
    os_log(_:dso:log:_:_:)();
    (*(*a3 + 120))(0, 2);
  }

  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  return [a4 stopAbsoluteAltitudeUpdates];
}

void thunk for @escaping @callee_guaranteed (@guaranteed CMAbsoluteAltitudeData?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t AnswerAltitudeFlow.fetchLocationCheck()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(AnswerAltitudeFlow.fetchLocationCheck(), 0, 0);
}

uint64_t AnswerAltitudeFlow.fetchLocationCheck()()
{
  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    v1 = v0[3];
    v2 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
    v3 = *(type metadata accessor for CommonFlowGuard() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    *(swift_allocObject() + 16) = xmmword_B89E0;
    static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
    v6 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

    v0[2] = v6;
    type metadata accessor for GuardFlow();

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  else
  {
    v7 = v0[3];
    (*(*v0[4] + 120))(1, 2);
    static ExecuteResponse.ongoing(requireInput:)();
  }

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in AnswerAltitudeFlow.fetchLocationCheck()(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  static os_log_type_t.info.getter();
  v4 = a2[2];
  os_log(_:dso:log:_:_:)();
  if (v3 == 1)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v5 = 3;
  }

  else
  {
    static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)();
    v5 = 1;
  }

  return (*(*a2 + 120))(v5, 2);
}

uint64_t AnswerAltitudeFlow.fetchLocation()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(AnswerAltitudeFlow.fetchLocation(), 0, 0);
}

uint64_t AnswerAltitudeFlow.fetchLocation()()
{
  v5 = v0;
  v1 = *(v0 + 24);
  (*(**(v0 + 32) + 136))(v4);
  type metadata accessor for LocationFetchFlow();
  swift_allocObject();
  *(v0 + 16) = LocationFetchFlow.init(flowHelper:requiredAccess:)(v4, 2);
  lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, 255, type metadata accessor for LocationFetchFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in AnswerAltitudeFlow.fetchLocation()(uint64_t a1, void *a2)
{
  v3 = *a1;
  if (*(a1 + 8) > 1u)
  {
    *(a1 + 8);
LABEL_8:
    static os_log_type_t.info.getter();
    v15 = a2[2];
    os_log(_:dso:log:_:_:)();
    return (*(*a2 + 120))(3, 2);
  }

  if (*(a1 + 8))
  {
    goto LABEL_8;
  }

  v4 = static os_log_type_t.default.getter();
  v5 = a2[2];
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    [v3 verticalAccuracy];
    v8 = Double.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v4, "altitude accuracy: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  [v3 verticalAccuracy];
  if (v11 >= 0.0)
  {
    [v3 altitude];
    return (*(*a2 + 120))(v16, 0);
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v12 = swift_allocError();
    *v13 = 0xD00000000000001FLL;
    *(v13 + 8) = 0x80000000000C1D00;
    *(v13 + 16) = 2;
    return (*(*a2 + 120))(v12, 1);
  }
}

uint64_t AnswerAltitudeFlow.errorDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerAltitudeFlow.errorDialog(), 0, 0);
}

uint64_t AnswerAltitudeFlow.errorDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  v0[5] = &type metadata for Compass;
  v0[6] = &protocol witness table for Compass;
  v0[2] = 0;
  v3 = *(*v1 + 136);
  v4 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0x811000000000000;
  v0[30] = v3;
  v0[31] = v4;
  v3();
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[32] = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v8 = *(*v2 + 112);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = AnswerAltitudeFlow.errorDialog();
  v11 = v0[29];

  return (v13)(v11, v0 + 2, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = AnswerAltitudeFlow.errorDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = AnswerAltitudeFlow.errorDialog();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 240))();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 136), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static os_log_type_t.error.getter();
  v4 = v2[2];
  os_log(_:dso:log:_:_:)();
  v5 = *(*v2 + 120);
  swift_errorRetain();
  v5(v1, 1);
  static ExecuteResponse.complete()();

  v7 = v0[28];
  v6 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t AnswerAltitudeFlow.handle(altitude:)(uint64_t a1, double a2)
{
  *(v3 + 200) = v2;
  *(v3 + 192) = a2;
  *(v3 + 184) = a1;
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 208) = v4;
  v5 = *(v4 - 8);
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 + 64);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();

  return _swift_task_switch(AnswerAltitudeFlow.handle(altitude:), 0, 0);
}

uint64_t AnswerAltitudeFlow.handle(altitude:)()
{
  v1 = v0[25];
  v2 = v0[24];
  static os_log_type_t.default.getter();
  v0[31] = v1[2];
  os_log(_:dso:log:_:_:)();
  v3 = v1[3];
  v4 = AnswerAltitudeFlow.convert(altitudeMeters:)();
  v0[5] = &type metadata for Compass;
  v0[6] = &protocol witness table for Compass;
  v0[2] = v4;
  v5 = *(*v1 + 136);
  v6 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0x811000000000000;
  v0[32] = v5;
  v0[33] = v6;
  v5();
  v7 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
  v9 = (*(v8 + 80))(v7, v8);
  v0[34] = v9;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v10 = *(*v3 + 112);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[35] = v12;
  *v12 = v0;
  v12[1] = AnswerAltitudeFlow.handle(altitude:);
  v13 = v0[30];

  return (v15)(v13, v0 + 2, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v5 = AnswerAltitudeFlow.handle(altitude:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = AnswerAltitudeFlow.handle(altitude:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  (*(v0 + 256))();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 136), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 232);
  v17 = *(v0 + 240);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[25];
  v4 = v0[23];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)();
  v5 = *(*v3 + 120);
  swift_errorRetain();
  v5(v1, 1);
  static ExecuteResponse.ongoing(requireInput:)();

  v7 = v0[29];
  v6 = v0[30];

  v8 = v0[1];

  return v8();
}

uint64_t AnswerAltitudeFlow.convert(altitudeMeters:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v67 = &v61 - v3;
  v4 = type metadata accessor for Locale.MeasurementSystem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v61 - v10;
  v64 = type metadata accessor for Locale();
  v63 = *(v64 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v64);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v68 = *(v70 - 8);
  v14 = *(v68 + 64);
  __chkstk_darwin(v70);
  v16 = &v61 - v15;
  v17 = objc_opt_self();
  v18 = [v17 meters];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSUnitLength, NSUnitLength_ptr);
  v69 = v16;
  Measurement.init(value:unit:)();
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 valueForKey:v20];

  v66 = v11;
  v65 = v9;
  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76[0] = v74;
  v76[1] = v75;
  v22 = static os_log_type_t.default.getter();
  v23 = *(v0 + 16);
  outlined init with copy of Any?(v76, &v74);
  v71 = v23;
  if (os_log_type_enabled(v23, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v73 = v25;
    *v24 = 136315138;
    outlined init with copy of Any?(&v74, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v26 = v5;
    v27 = String.init<A>(describing:)();
    v29 = v28;
    outlined destroy of Mirror.DisplayStyle?(&v74, &_sypSgMd, &_sypSgMR);
    v30 = v27;
    v5 = v26;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v73);
    v32 = v71;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_0, v32, v22, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    outlined destroy of Mirror.DisplayStyle?(&v74, &_sypSgMd, &_sypSgMR);
  }

  v33 = v69;
  v34 = v70;
  outlined init with copy of Any?(v76, &v74);
  if (!*(&v75 + 1))
  {
    outlined destroy of Mirror.DisplayStyle?(&v74, &_sypSgMd, &_sypSgMR);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v41 = v62;
    static Locale.current.getter();
    v42 = v66;
    Locale.measurementSystem.getter();
    (*(v63 + 8))(v41, v64);
    v43 = v65;
    static Locale.MeasurementSystem.us.getter();
    lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type Locale.MeasurementSystem and conformance Locale.MeasurementSystem, 255, &type metadata accessor for Locale.MeasurementSystem);
    LOBYTE(v41) = dispatch thunk of static Equatable.== infix(_:_:)();
    v44 = *(v5 + 8);
    v44(v43, v4);
    if (v41)
    {
      v44(v42, v4);
    }

    else
    {
      static Locale.MeasurementSystem.uk.getter();
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44(v43, v4);
      v44(v42, v4);
      if ((v45 & 1) == 0)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        v34 = v70;
        goto LABEL_23;
      }
    }

    v46 = [v17 feet];
    v34 = v70;
    goto LABEL_22;
  }

  v66 = v17;
  v36 = v72[0];
  v35 = v72[1];
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v74 = v39;
    *v38 = 136315138;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v74);

    *(v38 + 4) = v40;
    v33 = v69;
    _os_log_impl(&dword_0, v71, v37, "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  if (v36 == 0x736568636E49 && v35 == 0xE600000000000000)
  {

LABEL_21:
    v46 = [v66 feet];
LABEL_22:
    Measurement<>.convert(to:)();

    goto LABEL_23;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
    goto LABEL_21;
  }

LABEL_23:
  Measurement.value.getter();
  Measurement.value.setter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v72[0] = v50;
    *v49 = 136315138;
    swift_beginAccess();
    Measurement.value.getter();
    swift_endAccess();
    v51 = Double.description.getter();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v72);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_0, v71, v48, "altitude: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v54 = type metadata accessor for DialogLength.Builder();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  DialogLength.Builder.init()();
  swift_beginAccess();
  Measurement.value.getter();
  swift_endAccess();
  dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

  v57 = v67;
  String.toSpeakableString.getter();

  v58 = type metadata accessor for SpeakableString();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();

  outlined destroy of Mirror.DisplayStyle?(v57, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v59 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

  outlined destroy of Mirror.DisplayStyle?(v76, &_sypSgMd, &_sypSgMR);
  (*(v68 + 8))(v33, v34);
  return v59;
}

uint64_t AnswerAltitudeFlow.deinit()
{
  v1 = *(v0 + 24);

  outlined consume of AnswerAltitudeFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  return v0;
}

uint64_t AnswerAltitudeFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  outlined consume of AnswerAltitudeFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance AnswerAltitudeFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance AnswerAltitudeFlow(uint64_t a1)
{
  v4 = *(**v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnswerAltitudeFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerAltitudeFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized AnswerAltitudeFlow.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v8 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v8 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v8 + 32) = OS_os_log.init(subsystem:category:)();
  *(v8 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 32) = 2;
  *(a2 + 40) = 2;
  outlined init with copy of DeviceState(v12, a2 + 48);
  static os_log_type_t.default.getter();
  v10 = *(a2 + 16);
  os_log(_:dso:log:_:_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return a2;
}

uint64_t sub_52500()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_52560()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t instantiation function for generic protocol witness table for AnswerAltitudeFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type AnswerAltitudeFlow and conformance AnswerAltitudeFlow, a2, type metadata accessor for AnswerAltitudeFlow);
  result = lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(&lazy protocol witness table cache variable for type AnswerAltitudeFlow and conformance AnswerAltitudeFlow, v3, type metadata accessor for AnswerAltitudeFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_5267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_526CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  v4 = *(a1 + 8);
  outlined copy of AnswerAltitudeFlow.State(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin014AnswerAltitudeB0C5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for AnswerAltitudeFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AnswerAltitudeFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AnswerAltitudeFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type LocationFetchFlow and conformance LocationFetchFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t ContactResolutionFlowError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return 0x696C616974696E69;
      }

      if (a2 == 1)
      {
        return 0x61707563634F6F6ELL;
      }
    }

    else if (a2 != 2)
    {
      if (a2 == 3)
      {
        return 0x6F636552656E6F6ELL;
      }

      else
      {
        return 1701736302;
      }
    }

    return 0x6361746E6F436F6ELL;
  }

  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        return 0xD000000000000017;
      case 9:
        return 0xD000000000000014;
      case 10:
        return 0xD000000000000013;
    }

    return 0x6361746E6F436F6ELL;
  }

  if (a2 == 5 || a2 == 6)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t ContactResolutionFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(v1, *(v0 + 32), *(v0 + 40), outlined copy of ContactResolutionOutput, outlined copy of ContactResolutionFlowError);
  return v1;
}

id outlined copy of ContactResolutionOutput(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t outlined copy of ContactResolutionFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t ContactResolutionFlow.exitValue.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(v7, v8, v9, outlined consume of ContactResolutionOutput, outlined consume of ContactResolutionFlowError);
}

uint64_t outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void), uint64_t (*a5)(void))
{
  if (a3)
  {
    return a5();
  }

  else
  {
    return a4(a1, a2 & 1);
  }
}

void outlined consume of ContactResolutionOutput(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of ContactResolutionFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t key path setter for ContactResolutionFlow.flowState : <A, B>ContactResolutionFlow<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v13[0] = *(a3 + a4 - 32);
  v13[1] = v6;
  v7 = type metadata accessor for ContactResolutionFlow.State();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1);
  return (*(**a2 + 216))(v10);
}

uint64_t ContactResolutionFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v5 = type metadata accessor for ContactResolutionFlow.State();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t ContactResolutionFlow.flowState.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v5 = type metadata accessor for ContactResolutionFlow.State();
  (*(*(v5 - 8) + 40))(v1 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*ContactResolutionFlow.flowState.modify())()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return ShareETAPromptForContactStrategy.locationSearchIntent.modify;
}

uint64_t ContactResolutionFlow.contactResolverConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  v4 = type metadata accessor for ContactResolverConfig();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *ContactResolutionFlow.__allocating_init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  v19 = specialized ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v19;
}

uint64_t *ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = specialized ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t ContactResolutionFlow.onInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v7 = *(v0 + 16);
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
LABEL_5:
      (*(v2 + 8))(v5, v1);
      return 1;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "ContactResolutionFlow onInput returns true.";
LABEL_4:
    _os_log_impl(&dword_0, v7, v8, v10, v9, 2u);

    goto LABEL_5;
  }

  if (v6 == enum case for Parse.pommesResponse(_:))
  {
    (*(v2 + 8))(v5, v1);
    v12 = *(v0 + 16);
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "ContactResolutionFlow onInput returns true for POMMES.", v14, 2u);
    }

    return 1;
  }

  v15 = enum case for Parse.uso(_:);
  v7 = *(v0 + 16);
  v16 = v6;
  v8 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v7, v8);
  if (v16 == v15)
  {
    if (!v17)
    {
      goto LABEL_5;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "ContactResolutionFlow onInput returns true for USO parse.";
    goto LABEL_4;
  }

  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v7, v8, "SiriGeo currently doesn't support parse type.", v18, 2u);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

uint64_t ContactResolutionFlow.executeState()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = *v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR) - 8) + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v5 = type metadata accessor for ContactQuery();
  *(v2 + 104) = v5;
  v6 = *(v5 - 8);
  *(v2 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v8 = type metadata accessor for SiriKitContactResolver();
  *(v2 + 128) = v8;
  v9 = *(v8 - 8);
  *(v2 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v11 = type metadata accessor for OccupantIntentNode();
  *(v2 + 160) = v11;
  v12 = *(v11 - 8);
  *(v2 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v14 = v3[10];
  *(v2 + 208) = v14;
  v15 = v3[11];
  *(v2 + 216) = v15;
  v16 = v3[12];
  *(v2 + 224) = v16;
  v17 = v3[13];
  *(v2 + 232) = v17;
  *&v18 = v14;
  *(&v18 + 1) = v15;
  *&v19 = v16;
  *(&v19 + 1) = v17;
  *(v2 + 32) = v19;
  *(v2 + 16) = v18;
  v20 = type metadata accessor for ContactResolutionFlow.State();
  *(v2 + 240) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();

  return _swift_task_switch(ContactResolutionFlow.executeState(), 0, 0);
}

uint64_t ContactResolutionFlow.executeState()()
{
  v239 = v0;
  v2 = v0;
  v3 = *(v0 + 240);
  v4 = *(v0 + 272);
  (*(**(v0 + 80) + 208))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v20 = *(v0 + 272);
        v21 = *(v0 + 80);
        v22 = *v20;
        if (*(v21 + *(*v21 + 136)))
        {
          LOBYTE(v232) = *(v20 + 8);
          v106 = v0;
          if (v22 >> 62)
          {
            goto LABEL_114;
          }

          v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
          goto LABEL_10;
        }

        v123 = *(v0 + 72);
        (*(*v21 + 192))(v22, 1, 0);
        static ExecuteResponse.complete()();
      }

      else
      {
        v79 = *(v0 + 72);
        static ExecuteResponse.complete()();
      }

      goto LABEL_129;
    }

    v55 = *(v0 + 272);
    v56 = *(v0 + 80);
    v57 = *(v55 + 8);

    v58 = *v56;
    if (!*(v56 + *(*v56 + 144)))
    {
      v93 = *(v0 + 72);
      v92 = *(v0 + 80);
      v94 = *(v58 + 192);
      v95 = v57;
      v94(v57, 0, 0);
      static ExecuteResponse.complete()();

      goto LABEL_129;
    }

    v59 = *(v0 + 232);
    v60 = *(v2 + 216);
    v61 = *(v2 + 80);
    v233 = *(v2 + 72);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for PromptForConfirmationFlowAsync();
    *(v2 + 56) = v57;
    v62 = (v61 + *(v58 + 152));
    v63 = v62[3];
    v64 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v65 = *(v64 + 104);
    swift_unknownObjectRetain_n();
    v66 = v57;
    v65(v238, v63, v64);
    *(v2 + 64) = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
    v67 = swift_allocObject();
    *(v67 + 16) = v61;
    *(v67 + 24) = v66;
    v68 = v66;

    swift_getWitnessTable();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    swift_unknownObjectRelease();

LABEL_36:

    goto LABEL_129;
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = *(v0 + 272);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    v34 = *(v2 + 112);
    v35 = *(v2 + 80);
    (*(*(v2 + 168) + 32))(*(v2 + 200), v29, *(v2 + 160));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v36 = *(v34 + 72);
    v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_B89E0;
    OccupantIntentNode.asContactQuery.getter();
    v11 = *(v35 + 16);
    v38 = *(v32 + 16);
    v38(v31, v30, v33);
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v11, v39);
    v41 = *(v2 + 192);
    v232 = v38;
    if (v40)
    {
      v42 = *(v2 + 184);
      log = v11;
      v43 = v2;
      v46 = v2 + 160;
      v45 = *(v2 + 160);
      v44 = *(v46 + 8);
      v225 = *(v43 + 104);
      v47 = swift_slowAlloc();
      v238[0] = swift_slowAlloc();
      *v47 = 136315394;
      v38(v42, v41, v45);
      v1 = String.init<A>(describing:)();
      v49 = v48;
      v50 = v45;
      v2 = v43;
      v236 = *(v44 + 8);
      v236(v41, v50);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v49, v238);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = Array.description.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v238);

      *(v47 + 14) = v54;
      v11 = log;
      _os_log_impl(&dword_0, log, v39, "occupant node %s contactQuery %s", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v236 = *(*(v2 + 168) + 8);
      v236(v41, *(v2 + 160));
    }

    v106 = *(v2 + 80);
    (*(*(v2 + 136) + 16))(*(v2 + 152), v106 + *(*v106 + 176), *(v2 + 128));
    v87 = *(*v106 + 168);
    v14 = SiriKitContactResolver.resolve(queries:config:)();
    (*(*(v2 + 136) + 8))(*(v2 + 152), *(v2 + 128));

    v109 = static os_log_type_t.default.getter();
    v74 = v14 >> 62;
    if (!os_log_type_enabled(v11, v109))
    {
      goto LABEL_52;
    }

    v106 = swift_slowAlloc();
    *v106 = 134217984;
    if (v74)
    {
      goto LABEL_142;
    }

    v96 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 80);
    v13 = *(v2 + 120);
    v236 = **(v2 + 272);
    INPerson.toContactQueryGeo()();
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v15(v6, v12 + *(*v12 + 176), v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v16 = *(v10 + 72);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_B89E0;
    (*(v10 + 16))(v18 + v17, v9, v11);
    v19 = *(*v12 + 168);
    v1 = SiriKitContactResolver.resolve(queries:config:)();
    v106 = v2;
    v107 = *(v2 + 80);
    (*(*(v2 + 136) + 8))(*(v2 + 144), *(v2 + 128));

    v108 = static os_log_type_t.default.getter();
    v109 = *(v107 + 16);
    v74 = v1 >> 62;
    if (os_log_type_enabled(v109, v108))
    {

      v110 = swift_slowAlloc();
      *v110 = 134217984;
      if (v74)
      {
        v111 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v111 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      }

      *(v110 + 4) = v111;

      _os_log_impl(&dword_0, v109, v108, "number of persons resolved %ld", v110, 0xCu);
    }

    if (v74)
    {
LABEL_136:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_64;
      }
    }

    else if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_64:
      if ((v1 & 0xC000000000000001) != 0)
      {
        v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          while (1)
          {
            __break(1u);
LABEL_142:
            v96 = _CocoaArrayWrapper.endIndex.getter();
LABEL_51:
            *(v106 + 4) = v96;

            _os_log_impl(&dword_0, v11, v109, "number of persons resolved %ld", v106, 0xCu);

LABEL_52:
            if (v74)
            {
LABEL_134:
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_135:
                __break(1u);
                goto LABEL_136;
              }
            }

            else if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_135;
            }

            if ((v14 & 0xC000000000000001) != 0)
            {
              goto LABEL_138;
            }

            if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
            {
              v97 = *(v14 + 32);
              goto LABEL_57;
            }

            __break(1u);
          }
        }

        v112 = *(v1 + 32);
      }

      v113 = v112;
      v2 = v106;
      v114 = *(v106 + 256);
      v115 = *(v106 + 240);
      v116 = *(v106 + 160);
      v117 = *(v106 + 168);
      v118 = *(v106 + 112);
      logc = *(v106 + 104);
      v234 = *(v106 + 120);
      v121 = v106 + 72;
      v119 = *(v106 + 72);
      v120 = *(v121 + 8);

      v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMd, &_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMR) + 48);
      *v114 = v113;
      (*(v117 + 56))(&v114[v122], 1, 1, v116);
      swift_storeEnumTagMultiPayload();
      (*(*v120 + 216))(v114);
      static ExecuteResponse.ongoing(requireInput:)();

      (*(v118 + 8))(v234, logc);
      goto LABEL_129;
    }

    __break(1u);
LABEL_138:
    v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_57:
    v98 = v97;
    v99 = *(v2 + 264);
    v100 = *(v2 + 240);
    v101 = *(v2 + 200);
    v102 = *(v2 + 160);
    v103 = *(v2 + 168);
    v104 = *(v2 + 80);
    logb = *(v2 + 72);

    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMd, &_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMR) + 48);
    *v99 = v98;
    v232(&v99[v105], v101, v102);
    (*(v103 + 56))(&v99[v105], 0, 1, v102);
    swift_storeEnumTagMultiPayload();
    (*(*v104 + 216))(v99);
    static ExecuteResponse.ongoing(requireInput:)();
    v236(v101, v102);
    goto LABEL_129;
  }

  v69 = *(v0 + 272);
  v70 = *(v2 + 96);
  v106 = *v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMd, &_sSo8INPersonC_12SiriOntology18OccupantIntentNodeVSgtMR);
  outlined init with take of OccupantIntentNode?(v69 + *(v71 + 48), v70);
  v72 = [v106 scoredAlternatives];
  if (!v72)
  {
LABEL_117:
    v195 = *(v2 + 160);
    v196 = *(v2 + 168);
    v197 = *(v2 + 88);
    outlined init with copy of Mirror.DisplayStyle?(*(v2 + 96), v197, &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    if ((*(v196 + 48))(v197, 1, v195) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(*(v2 + 88), &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    }

    else
    {
      (*(*(v2 + 168) + 32))(*(v2 + 176), *(v2 + 88), *(v2 + 160));
      v198 = OccupantIntentNode.relationship.getter();
      v200 = *(v2 + 168);
      v201 = *(v2 + 176);
      v202 = *(v2 + 160);
      if (v199)
      {
        v203 = v199;
      }

      else
      {
        v203 = 3;
      }

      v204 = *(v2 + 80);
      if (v199)
      {
        v205 = v198;
      }

      else
      {
        v205 = 0;
      }

      static os_log_type_t.default.getter();
      v206 = v204[2];
      os_log(_:dso:log:_:_:)();
      (*(*v204 + 192))(v205, v203, 1);
      (*(v200 + 8))(v201, v202);
    }

    v207 = *(v2 + 240);
    v208 = *(v2 + 248);
    v176 = *(v2 + 96);
    v210 = *(v2 + 72);
    v209 = *(v2 + 80);
    swift_storeEnumTagMultiPayload();
    (*(*v209 + 216))(v208);
    static ExecuteResponse.complete()();

LABEL_127:
    v188 = v176;
    goto LABEL_128;
  }

  v73 = v72;
  v236 = v106;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = v2;
  if (v22 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
    if (v74)
    {
      goto LABEL_26;
    }

    goto LABEL_116;
  }

  v74 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  if (!v74)
  {
LABEL_116:

    goto LABEL_117;
  }

LABEL_26:
  v232 = (v22 >> 62);
  v75 = 0;
  LOBYTE(v109) = 0;
  v76 = (v22 & 0xC000000000000001);
  v2 = v22 & 0xFFFFFFFFFFFFFF8;
  v11 = "scoredAlternative %s";
  do
  {
    if (v76)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v75 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_113;
      }

      v77 = *(v22 + 8 * v75 + 32);
    }

    v14 = v77;
    v106 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      while (1)
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
        swift_unknownObjectRetain();
        if (!v23)
        {
          break;
        }

        v24 = 0;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_112;
            }

            v25 = *(v22 + 8 * v24 + 32);
          }

          v26 = v25;
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          v28 = *(v106 + 80);
          v238[0] = v25;
          closure #2 in ContactResolutionFlow.executeState()(v238, v28, "disambiguation candidate %s");

          ++v24;
          if (v27 == v23)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
      }

LABEL_35:
      v80 = *(v106 + 208);
      v81 = *(v106 + 80);
      v226 = *(v106 + 224);
      loga = *(v106 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMR);
      v82 = (v81 + *(*v81 + 152));
      v84 = v82[3];
      v83 = v82[4];
      __swift_project_boxed_opaque_existential_1(v82, v84);
      v85 = *(v83 + 104);
      swift_unknownObjectRetain();
      v85(v238, v84, v83);
      v2 = v106;
      *(v106 + 48) = PromptForDisambiguationFlowAsync.__allocating_init<A>(items:strategy:outputPublisher:)();
      v86 = swift_allocObject();
      *(v86 + 16) = v81;
      *(v86 + 24) = v232;
      lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCySo8INPersonCAEGMR);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      swift_unknownObjectRelease();
      goto LABEL_36;
    }

    v78 = *(v1 + 80);
    v238[0] = v77;
    closure #2 in ContactResolutionFlow.executeState()(v238, v78, "scoredAlternative %s");

    ++v75;
  }

  while (v106 != v74);
  if (v76)
  {
    v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_134;
    }

    v88 = *(v22 + 32);
  }

  v89 = v88;
  v90 = [v88 recommendation];

  if (v90 == &dword_0 + 2)
  {
    if (v232)
    {
      v91 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v91 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    }

    v2 = v1;
    if (v91)
    {
      v238[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v91 < 0)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v130 = 0;
      do
      {
        if (v76)
        {
          v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v131 = *(v22 + 8 * v130 + 32);
        }

        v132 = v131;
        ++v130;
        v133 = [v131 person];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v134 = *(v238[0] + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v91 != v130);

      v11 = v238[0];
    }

    else
    {

      v11 = &_swiftEmptyArrayStorage;
    }

    v182 = *(v1 + 80);
    LOBYTE(v22) = static os_log_type_t.default.getter();
    v91 = *(v182 + 16);
    v76 = v236;
    if (!os_log_type_enabled(v91, v22))
    {
LABEL_105:
      v184 = *(v2 + 240);
      v185 = *(v2 + 248);
      v146 = *(v2 + 96);
      v187 = *(v2 + 72);
      v186 = *(v2 + 80);
      *v185 = v11;
      *(v185 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      (*(*v186 + 216))(v185);
      static ExecuteResponse.ongoing(requireInput:)();

      goto LABEL_106;
    }

    v75 = swift_slowAlloc();
    *v75 = 134217984;
    if (!(v11 >> 62))
    {
      v183 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
LABEL_104:
      *(v75 + 4) = v183;

      _os_log_impl(&dword_0, v91, v22, "needs disambigaution %ld", v75, 0xCu);

      goto LABEL_105;
    }

LABEL_146:
    v183 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_104;
  }

  if (v90 == &dword_0 + 1)
  {
    if (v76)
    {
      v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v124 = *(v22 + 32);
    }

    v158 = v124;
    v2 = v1;
    v159 = *(v1 + 80);

    v160 = [v158 person];

    v161 = static os_log_type_t.default.getter();
    v162 = *(v159 + 16);
    if (os_log_type_enabled(v162, v161))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v238[0] = v164;
      *v163 = 136315138;
      v165 = v160;
      v166 = v160;
      v167 = [v165 description];
      v168 = v2;
      v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v171 = v170;

      v160 = v166;
      v172 = v169;
      v2 = v168;
      v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v171, v238);

      *(v163 + 4) = v173;
      _os_log_impl(&dword_0, v162, v161, "needs confirmation %s", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v164);
    }

    v174 = *(v2 + 240);
    v175 = *(v2 + 248);
    v176 = *(v2 + 96);
    v178 = *(v2 + 72);
    v177 = *(v2 + 80);
    *v175 = v236;
    v175[1] = v160;
    swift_storeEnumTagMultiPayload();
    v179 = *(*v177 + 216);
    v180 = v236;
    v181 = v160;
    v179(v175);
    static ExecuteResponse.ongoing(requireInput:)();

    goto LABEL_127;
  }

  if (v90)
  {
    v2 = v1;
    v125 = *(v1 + 240);
    v126 = *(v1 + 248);
    v127 = *(v1 + 96);
    v129 = *(v1 + 72);
    v128 = *(v1 + 80);

    swift_storeEnumTagMultiPayload();
    (*(*v128 + 216))(v126);
    (*(*v128 + 192))(0, 4, 1);
    static ExecuteResponse.complete()();

    goto LABEL_109;
  }

  if (v232)
  {
    v91 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v91 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  }

  v135 = &_swiftEmptyArrayStorage;
  v2 = v1;
  if (!v91)
  {
    goto LABEL_92;
  }

  v238[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v91 < 0)
  {
    goto LABEL_145;
  }

  v136 = 0;
  do
  {
    if (v76)
    {
      v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v137 = *(v22 + 8 * v136 + 32);
    }

    v138 = v137;
    ++v136;
    v139 = [v137 person];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v140 = *(v238[0] + 2);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v91 != v136);
  v135 = v238[0];
LABEL_92:
  specialized ContactResolutionFlow.handleDisambiguationCase(_:)(v22);
  v142 = v141;

  v143 = v236;
  if (v142)
  {
    v144 = *(v2 + 240);
    v145 = *(v2 + 248);
    v146 = *(v2 + 96);
    v148 = *(v2 + 72);
    v147 = *(v2 + 80);
    *v145 = v135;
    *(v145 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    (*(*v147 + 216))(v145);
    static ExecuteResponse.ongoing(requireInput:)();

LABEL_106:
    v188 = v146;
    goto LABEL_128;
  }

  v149 = *(v2 + 80);
  v150 = static os_log_type_t.default.getter();
  v151 = *(v149 + 16);
  if (os_log_type_enabled(v151, v150))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v238[0] = v153;
    *v152 = 136315138;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v154 = Array.description.getter();
    v156 = v155;

    v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, v238);
    v143 = v236;

    *(v152 + 4) = v157;
    _os_log_impl(&dword_0, v151, v150, "Confident %s", v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v153);
  }

  else
  {
  }

  v190 = *(v2 + 240);
  v189 = *(v2 + 248);
  v127 = *(v2 + 96);
  v192 = *(v2 + 72);
  v191 = *(v2 + 80);
  v193 = *(*v191 + 192);
  v194 = v143;
  v193(v143, 0, 0);
  swift_storeEnumTagMultiPayload();
  (*(*v191 + 216))(v189);
  static ExecuteResponse.complete()();

LABEL_109:
  v188 = v127;
LABEL_128:
  outlined destroy of Mirror.DisplayStyle?(v188, &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
LABEL_129:
  v212 = *(v2 + 264);
  v211 = *(v2 + 272);
  v214 = *(v2 + 248);
  v213 = *(v2 + 256);
  v216 = *(v2 + 192);
  v215 = *(v2 + 200);
  v218 = *(v2 + 176);
  v217 = *(v2 + 184);
  v219 = v2;
  v222 = v2 + 144;
  v221 = *(v2 + 144);
  v220 = *(v222 + 8);
  logd = v219[15];
  v235 = v219[12];
  v237 = v219[11];

  v223 = v219[1];

  return v223();
}

uint64_t closure #1 in ContactResolutionFlow.executeState()(uint64_t a1, void *a2, void *a3)
{
  v66 = a3;
  v5 = *a2;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v72 = &v64 - v9;
  v10 = type metadata accessor for ConfirmationResponse();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  v12 = __chkstk_darwin(v10);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v64 - v14;
  v15 = *(v5 + 104);
  v16 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v18 = *(v74 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v73 = &v64 - v19;
  *&v20 = *(v6 + 96);
  *&v21 = *(v6 + 80);
  v70 = v16;
  v71 = v15;
  *(&v21 + 1) = v16;
  *(&v20 + 1) = v15;
  v81[1] = v20;
  v81[0] = v21;
  v22 = type metadata accessor for ContactResolutionFlow.State();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v76 = &v64 - v24;
  v25 = type metadata accessor for PromptResult();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v77 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v64 - v30;
  v32 = static os_log_type_t.info.getter();
  v33 = a2[2];
  v34 = *(v26 + 16);
  v78 = a1;
  v75 = v34;
  v34(v31, a1, v25);
  v69 = v33;
  if (os_log_type_enabled(v33, v32))
  {
    v35 = swift_slowAlloc();
    v65 = AssociatedTypeWitness;
    v36 = v35;
    v37 = swift_slowAlloc();
    *&v81[0] = v37;
    *v36 = 136315138;
    swift_getWitnessTable();
    v38 = specialized String.init<A>(describing:)();
    v64 = v22;
    v39 = v38;
    v41 = v40;
    v42 = v31;
    v43 = *(v26 + 8);
    v43(v42, v25);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v81);

    *(v36 + 4) = v44;
    _os_log_impl(&dword_0, v69, v32, "PromptForConfirmation childCompletion %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);

    AssociatedTypeWitness = v65;
  }

  else
  {
    v45 = v31;
    v43 = *(v26 + 8);
    v43(v45, v25);
  }

  v46 = v76;
  swift_storeEnumTagMultiPayload();
  (*(*a2 + 216))(v46);
  v47 = v77;
  v75(v77, v78, v25);
  v48 = (*(v26 + 88))(v47, v25);
  if (v48 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v26 + 96))(v47, v25);
    v50 = v73;
    v49 = v74;
    (*(v74 + 32))(v73, v47, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v51 = v72;
    dispatch thunk of ConfirmationResponseProviding.confirmationResponse.getter();
    if ((*(v79 + 48))(v51, 1, v80) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v51, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      (*(*a2 + 192))(0, 5, 1);
      return (*(v49 + 8))(v50, AssociatedTypeWitness);
    }

    else
    {
      v55 = v79;
      v56 = v80;
      v57 = v68;
      (*(v79 + 32))(v68, v51, v80);
      v58 = v67;
      (*(v55 + 16))(v67, v57, v56);
      if ((*(v55 + 88))(v58, v56) == enum case for ConfirmationResponse.confirmed(_:))
      {
        v59 = *(*a2 + 192);
        v60 = v66;
        v61 = v66;
        v59(v60, 0, 0);
        (*(v79 + 8))(v57, v80);
        return (*(v49 + 8))(v50, AssociatedTypeWitness);
      }

      else
      {
        (*(*a2 + 192))(0, 6, 1);
        v62 = v80;
        v63 = *(v79 + 8);
        v63(v57, v80);
        (*(v49 + 8))(v50, AssociatedTypeWitness);
        return (v63)(v58, v62);
      }
    }
  }

  else
  {
    v53 = *(*a2 + 192);
    if (v48 == enum case for PromptResult.cancelled<A>(_:) || v48 == enum case for PromptResult.unanswered<A>(_:))
    {
      return v53(0, 7, 1);
    }

    else
    {
      v53(0, 4, 1);
      return (v43)(v47, v25);
    }
  }
}

void closure #3 in ContactResolutionFlow.executeState()(uint64_t a1, void *a2, int a3)
{
  v43 = a3;
  v5 = *(*a2 + 96);
  v46[0] = *(*a2 + 80);
  v46[1] = v5;
  v44 = type metadata accessor for ContactResolutionFlow.State();
  v6 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v8 = (&v36 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySo8INPersonCGMd, &_s11SiriKitFlow12PromptResultOySo8INPersonCGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = static os_log_type_t.info.getter();
  v18 = a2[2];
  v45 = *(v10 + 16);
  v45(v16, a1, v9);
  v41 = v17;
  v42 = v18;
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v37 = v19;
    v38 = swift_slowAlloc();
    *&v46[0] = v38;
    *v19 = 136315138;
    lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptResult<INPerson> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo8INPersonCGMd, &_s11SiriKitFlow12PromptResultOySo8INPersonCGMR);
    v20 = v8;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = *(v10 + 8);
    v39 = a1;
    v40 = v24;
    v24(v16, v9);
    v25 = v21;
    v8 = v20;
    a1 = v39;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v23, v46);

    v27 = v37;
    *(v37 + 1) = v26;
    _os_log_impl(&dword_0, v42, v41, "prompt output %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }

  else
  {
    v40 = *(v10 + 8);
    v40(v16, v9);
  }

  v45(v14, a1, v9);
  v28 = (*(v10 + 88))(v14, v9);
  if (v28 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v10 + 96))(v14, v9);
    v29 = *v14;
    if (v43)
    {
      swift_storeEnumTagMultiPayload();
      (*(*a2 + 216))(v8);
      v30 = *(*a2 + 192);
      v31 = v29;
      v30(v29, 0, 0);
    }

    else
    {
      *v8 = v29;
      swift_storeEnumTagMultiPayload();
      v35 = *(*a2 + 216);
      v31 = v29;
      v35(v8);
    }
  }

  else
  {
    v32 = v28;
    v33 = enum case for PromptResult.cancelled<A>(_:);
    swift_storeEnumTagMultiPayload();
    (*(*a2 + 216))(v8);
    v34 = *(*a2 + 192);
    if (v32 == v33)
    {
      v34(0, 8, 1);
    }

    else
    {
      v34(0, 3, 1);
      v40(v14, v9);
    }
  }
}

uint64_t closure #2 in ContactResolutionFlow.executeState()(void **a1, uint64_t a2, char *a3)
{
  v5 = *a1;
  v6 = static os_log_type_t.info.getter();
  v7 = *(a2 + 16);
  result = os_log_type_enabled(v7, v6);
  if (result)
  {
    format = a3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v7, v6, format, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return result;
}

uint64_t *ContactResolutionFlow.deinit()
{
  v1 = *v0;

  outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(v0[3], v0[4], *(v0 + 40), outlined consume of ContactResolutionOutput, outlined consume of ContactResolutionFlowError);
  v2 = *(*v0 + 128);
  v11 = *(v1 + 80);
  v12 = *(v1 + 96);
  v3 = type metadata accessor for ContactResolutionFlow.State();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + *(*v0 + 136));
  swift_unknownObjectRelease();
  v5 = *(v0 + *(*v0 + 144));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 152)));
  outlined destroy of Mirror.DisplayStyle?(v0 + *(*v0 + 160), &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  v6 = *(*v0 + 168);
  v7 = type metadata accessor for ContactResolverConfig();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 176);
  v9 = type metadata accessor for SiriKitContactResolver();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t ContactResolutionFlow.__deallocating_deinit()
{
  ContactResolutionFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance ContactResolutionFlow<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance ContactResolutionFlow<A1, B1>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance ContactResolutionFlow<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance ContactResolutionFlow<A1, B1>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ContactResolutionFlow<A, B>@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 184))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactResolutionFlow<A1, B1>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void specialized ContactResolutionFlow.handleDisambiguationCase(_:)(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v3 > 1)
  {
    while (2)
    {
      v4 = 0;
      v5 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v3 == v4)
        {
          if (v5)
          {
            goto LABEL_46;
          }

          if (!*(v2 + 16))
          {
            __break(1u);
            return;
          }

          v9 = *(a1 + 32);
LABEL_15:
          v10 = v9;
          v11 = [v9 person];

          v12 = [v11 contactIdentifier];
          if (v12)
          {
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;

            if (!v3)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v27 = 0;
            v14 = 0;
            if (!v3)
            {
LABEL_34:

              return;
            }
          }

          v15 = 0;
          v28 = v5;
          while (1)
          {
            if (v5)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v15 >= *(v2 + 16))
              {
                __break(1u);
LABEL_46:
                v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                goto LABEL_15;
              }

              v16 = *(a1 + 8 * v15 + 32);
            }

            v17 = v16;
            v18 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_42;
            }

            v19 = v2;
            v20 = [v16 person];
            v21 = [v20 contactIdentifier];

            if (v21)
            {
              v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v24 = v23;

              if (!v14)
              {

                return;
              }

              if (v22 == v27 && v14 == v24)
              {
              }

              else
              {
                v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v26 & 1) == 0)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {

              if (v14)
              {
                swift_bridgeObjectRelease_n();
                return;
              }
            }

            ++v15;
            v2 = v19;
            v5 = v28;
            if (v18 == v3)
            {
              goto LABEL_34;
            }
          }
        }

        if (v5)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_41;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v6 recommendation];

        ++v4;
        if (v8)
        {
          return;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

      break;
    }
  }
}

uint64_t *specialized ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a7;
  v60 = a8;
  v49 = a6;
  v53 = a5;
  v45 = a4;
  v61 = a1;
  v13 = *v8;
  v14 = type metadata accessor for RecommenderType();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  __chkstk_darwin(v14);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v52 = &v42 - v19;
  v20 = type metadata accessor for SearchSuggestedContacts();
  v50 = *(v20 - 8);
  v51 = v20;
  v21 = *(v50 + 64);
  __chkstk_darwin(v20);
  v48 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Locale();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v46 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ContactResolverDomain();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v28 = type metadata accessor for ContactResolverConfig();
  v54 = *(v28 - 8);
  v55 = v28;
  v29 = *(v54 + 64);
  __chkstk_darwin(v28);
  v47 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v8[2] = OS_os_log.init(subsystem:category:)();
  *(v8 + 3) = 0u;
  *(v8 + 40) = 1;
  v31 = *(*v8 + 176);
  v44 = type metadata accessor for SiriKitContactResolver();
  v32 = *(v44 - 8);
  (*(v32 + 16))(v8 + v31, a4, v44);
  *(v8 + *(*v8 + 136)) = a2;
  *(v8 + *(*v8 + 144)) = a3;
  v33 = *(*v8 + 128);
  v43 = type metadata accessor for OccupantIntentNode();
  v34 = *(v43 - 8);
  (*(v34 + 16))(v8 + v33, v61, v43);
  v35 = *(v13 + 96);
  v62 = *(v13 + 80);
  v63 = v35;
  type metadata accessor for ContactResolutionFlow.State();
  swift_storeEnumTagMultiPayload();
  v36 = v53;
  outlined init with copy of DeviceState(v53, v9 + *(*v9 + 152));
  v37 = v49;
  outlined init with copy of Mirror.DisplayStyle?(v49, v9 + *(*v9 + 160), &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  static ContactResolverDomain.all.getter();
  static Locale.current.getter();
  (*(v50 + 104))(v48, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v51);
  v38 = v52;
  static ContactHandleTypePreference.preferPhone.getter();
  v39 = type metadata accessor for ContactHandleTypePreference();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  (*(v57 + 104))(v56, enum case for RecommenderType.mlRecommender(_:), v58);
  v40 = v47;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)();
  outlined destroy of Mirror.DisplayStyle?(v37, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  (*(v32 + 8))(v45, v44);
  (*(v34 + 8))(v61, v43);
  (*(v54 + 32))(v9 + *(*v9 + 168), v40, v55);
  return v8;
}

uint64_t outlined init with take of OccupantIntentNode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_56E90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_56ED4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t instantiation function for generic protocol witness table for ContactResolutionFlow<A, B>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_56F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_56FD0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(**a2 + 192);
  outlined copy of Result<ContactResolutionOutput, ContactResolutionFlowError>(*a1, v3, v4, outlined copy of ContactResolutionOutput, outlined copy of ContactResolutionFlowError);
  return v5(v2, v3, v4);
}

__n128 sub_5707C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin017ContactResolutionB5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ContactResolutionFlowError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 16))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContactResolutionFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 10;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ContactResolutionFlowError(void *result, int a2)
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

uint64_t type metadata completion function for ContactResolutionFlow(uint64_t a1)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 96);
  result = type metadata accessor for ContactResolutionFlow.State();
  if (v2 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = type metadata accessor for ContactResolverConfig();
    if (v3 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = type metadata accessor for SiriKitContactResolver();
      if (v4 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void type metadata completion function for ContactResolutionFlow.State()
{
  type metadata accessor for OccupantIntentNode();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (INPerson, OccupantIntentNode?)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (parentContact: INPerson, confirmationCandidate: INPerson)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ([INPerson], Bool)();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (INPerson, OccupantIntentNode?)()
{
  if (!lazy cache variable for type metadata for (INPerson, OccupantIntentNode?))
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (INPerson, OccupantIntentNode?));
    }
  }
}

void type metadata accessor for (parentContact: INPerson, confirmationCandidate: INPerson)()
{
  if (!lazy cache variable for type metadata for (parentContact: INPerson, confirmationCandidate: INPerson))
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (parentContact: INPerson, confirmationCandidate: INPerson));
    }
  }
}

void type metadata accessor for ([INPerson], Bool)()
{
  if (!lazy cache variable for type metadata for ([INPerson], Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([INPerson], Bool));
    }
  }
}

uint64_t lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t PommesResponse.firstGeoExperience.getter()
{
  v0 = dispatch thunk of PommesResponse.experiences.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      type metadata accessor for GeoExperience();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;

        return v8;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void *StopShareETAFlowDelegate.stopShareETAIntent.getter()
{
  v1 = direct field offset for StopShareETAFlowDelegate.stopShareETAIntent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void StopShareETAFlowDelegate.stopShareETAIntent.setter(uint64_t a1)
{
  v3 = direct field offset for StopShareETAFlowDelegate.stopShareETAIntent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t StopShareETAFlowDelegate.isPOMMES.getter()
{
  v1 = direct field offset for StopShareETAFlowDelegate.isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StopShareETAFlowDelegate.isPOMMES.setter(char a1)
{
  v3 = direct field offset for StopShareETAFlowDelegate.isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StopShareETAFlowDelegate.__allocating_init(stopShareETAIntent:isPOMMES:)(void *a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(a1, a2);

  return v7;
}

uint64_t StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(void *a1, char a2)
{
  v3 = specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(a1, a2);

  return v3;
}

uint64_t StopShareETAFlowDelegate.__allocating_init(deviceState:isPOMMES:)(uint64_t *a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return StopShareETAFlowDelegate.init(deviceState:isPOMMES:)(a1, a2);
}

uint64_t StopShareETAFlowDelegate.init(deviceState:isPOMMES:)(uint64_t *a1, char a2)
{
  v5 = direct field offset for StopShareETAFlowDelegate.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + v5) = OS_os_log.init(subsystem:category:)();
  *(v2 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent) = 0;
  outlined init with copy of DeviceState(a1, v2 + direct field offset for StopShareETAFlowDelegate.currentDeviceState);
  *(v2 + direct field offset for StopShareETAFlowDelegate.isPOMMES) = a2;
  v6 = BaseRCHFlowDelegate.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t StopShareETAFlowDelegate.makeUnsupportedValueBehavior(app:intent:parameterName:intentResolutionResult:)@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{
  v5 = *(v2 + direct field offset for StopShareETAFlowDelegate.logObject);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    [a1 unsupportedReason];
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "makeUnsupportedValueBehavior with result %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v12 = enum case for UnsupportedValueBehavior.dialogAndStop(_:);
  v13 = type metadata accessor for UnsupportedValueBehavior();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

uint64_t StopShareETAFlowDelegate.makeAppResolution()()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + direct field offset for StopShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo20INStopShareETAIntentCGMd, &_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo20INStopShareETAIntentCGMR);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return AppResolutionService.init()();
}

uint64_t StopShareETAFlowDelegate.makeDialogTemplating()()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + direct field offset for StopShareETAFlowDelegate.logObject);
  v2 = os_log(_:dso:log:_:_:)();
  (*(*v0 + class metadata base offset for StopShareETAFlowDelegate + 32))(v7, v2);
  v3 = type metadata accessor for StopShareETATemplatingService(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return StopShareETATemplatingService.init(deviceState:)(v7);
}

uint64_t StopShareETATemplatingService.__allocating_init(deviceState:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return StopShareETATemplatingService.init(deviceState:)(a1);
}

BOOL StopShareETAFlowDelegate.shouldConfirmIntentWithUser(intent:intentResponse:)(void *a1, void *a2)
{
  static os_log_type_t.info.getter();
  v5 = *(v2 + direct field offset for StopShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)();
  v6 = [a1 recipients];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));

    if (v9)
    {
      v10 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v5, v10);
      if (!result)
      {
        return result;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v5, v10, "specific contact in intent", v12, 2u);

      return 0;
    }
  }

  v13 = [a2 recipients];
  if (!v13)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    return 0;
  }

  v14 = v13;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  }

  if (v16 < 2)
  {
    return 0;
  }

  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v5, v17, "stop sharing ETA - recipients should confirm with user", v18, 2u);
  }

  return 1;
}

uint64_t StopShareETAFlowDelegate.makeConfirmationStateFromParse(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for NLIntent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  static os_log_type_t.info.getter();
  v18 = *(v2 + direct field offset for StopShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)();
  (*(v6 + 16))(v9, a1, v5);
  v19 = (*(v6 + 88))(v9, v5);
  if (v19 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v6 + 96))(v9, v5);
  }

  else
  {
    if (v19 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      if (v19 != enum case for Parse.pommesResponse(_:))
      {
        v39 = enum case for SiriKitConfirmationState.unset(_:);
        v40 = type metadata accessor for SiriKitConfirmationState();
        (*(*(v40 - 8) + 104))(a2, v39, v40);
        return (*(v6 + 8))(v9, v5);
      }

      (*(v6 + 96))(v9, v5);
      v32 = *v9;
      v33 = type metadata accessor for LocationSearchIntent();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = v32;
      v37 = LocationSearchIntent.init(from:)(v36);
      v38 = (*(*v37 + 152))(v37);

      v29 = type metadata accessor for SiriKitConfirmationState();
      v30 = *(*(v29 - 8) + 104);
      if (v38 <= 1u)
      {
        if (!v38)
        {
          goto LABEL_11;
        }

LABEL_17:
        v31 = &enum case for SiriKitConfirmationState.rejected(_:);
        return v30(a2, *v31, v29);
      }

      if (v38 == 2)
      {
LABEL_13:
        v31 = &enum case for SiriKitConfirmationState.cancelled(_:);
        return v30(a2, *v31, v29);
      }

LABEL_20:
      v31 = &enum case for SiriKitConfirmationState.unset(_:);
      return v30(a2, *v31, v29);
    }

    (*(v6 + 96))(v9, v5);
    v20 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48));
  }

  v21 = *(v11 + 32);
  v21(v17, v9, v10);
  v21(v15, v17, v10);
  v22 = type metadata accessor for LocationSearchIntent();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v25 + v26) = static LocationSearchIntent.domainNode;
  v21((v25 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v15, v10);
  v42 = v25;
  v27 = one-time initialization token for confirmationNode;

  if (v27 != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent();
  IntentNodeTraversable.value<A>(forNode:)();

  v28 = v43;
  v29 = type metadata accessor for SiriKitConfirmationState();
  v30 = *(*(v29 - 8) + 104);
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (v28)
  {
    goto LABEL_17;
  }

LABEL_11:
  v31 = &enum case for SiriKitConfirmationState.confirmed(_:);
  return v30(a2, *v31, v29);
}

uint64_t StopShareETAFlowDelegate.makeNLContextProvider()()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + direct field offset for StopShareETAFlowDelegate.logObject);
  v2 = os_log(_:dso:log:_:_:)();
  v3 = (*(*v0 + class metadata base offset for StopShareETAFlowDelegate + 80))(v2);
  v4 = type metadata accessor for StopShareETAContextProvider(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = direct field offset for StopShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v7 + v8) = OS_os_log.init(subsystem:category:)();
  *(v7 + direct field offset for StopShareETAContextProvider.isPOMMES) = v3 & 1;
  return DefaultNLContextProvider.init()();
}

uint64_t StopShareETAContextProvider.__allocating_init(isPOMMES:)(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = direct field offset for StopShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v5 + v6) = OS_os_log.init(subsystem:category:)();
  *(v5 + direct field offset for StopShareETAContextProvider.isPOMMES) = a1;
  return DefaultNLContextProvider.init()();
}

void StopShareETAFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETAFlowDelegate.currentDeviceState));

  v1 = *(v0 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent);
}

uint64_t StopShareETAFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETAFlowDelegate.currentDeviceState));

  return v0;
}

uint64_t StopShareETAFlowDelegate.__deallocating_deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  v1 = direct field offset for StopShareETAFlowDelegate.currentDeviceState;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));

  v3 = *(v0 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent);

  return swift_deallocClassInstance();
}

uint64_t StopShareETAContextProvider.isPOMMES.getter()
{
  v1 = direct field offset for StopShareETAContextProvider.isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StopShareETAContextProvider.isPOMMES.setter(char a1)
{
  v3 = direct field offset for StopShareETAContextProvider.isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StopShareETAContextProvider.init(isPOMMES:)(char a1)
{
  v3 = direct field offset for StopShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v1 + v3) = OS_os_log.init(subsystem:category:)();
  *(v1 + direct field offset for StopShareETAContextProvider.isPOMMES) = a1;

  return DefaultNLContextProvider.init()();
}

uint64_t StopShareETAContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v34 = type metadata accessor for PommesContext.Source();
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v33 = &v29 - v13;
  v14 = type metadata accessor for NLContextUpdate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + direct field offset for StopShareETAContextProvider.logObject);
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30 = v15;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "makeContextForHandleIntent", v21, 2u);
    v15 = v30;
  }

  v22 = NLContextUpdate.init()();
  if ((*(*v3 + class metadata base offset for StopShareETAContextProvider + 16))(v22))
  {
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v19, v23, "makeContextForHandleIntent adding pommesContext", v24, 2u);
    }

    (*(v32 + 104))(v31, enum case for PommesContext.Source.pluginDefined(_:), v34);
    v25 = v33;
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v26 = type metadata accessor for PommesContext();
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
    NLContextUpdate.pommesContext.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_B8FB0;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INStopShareETAIntent, INStopShareETAIntent_ptr);
  *(v27 + 32) = static ConversationStateAttachmentUtils.makeAttachmentToClearSlotResolutionState<A>(intent:)();
  NLContextUpdate.conversationStateAttachments.setter();
  (*(v15 + 16))(v8, v18, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  a3(v8);
  outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v15 + 8))(v18, v14);
}

uint64_t StopShareETAContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v32 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v31 = type metadata accessor for PommesContext.Source();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for NLContextUpdate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  v23 = *(v4 + direct field offset for StopShareETAContextProvider.logObject);
  os_log(_:dso:log:_:_:)();
  v24 = NLContextUpdate.init()();
  if ((*(*v4 + class metadata base offset for StopShareETAContextProvider + 16))(v24))
  {
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v30 = a3;
      *v26 = 0;
      _os_log_impl(&dword_0, v23, v25, "makeContextForConfirmIntent adding pommesContext", v26, 2u);
      a3 = v30;
    }

    (*(v10 + 104))(v13, enum case for PommesContext.Source.pluginDefined(_:), v31);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v27 = type metadata accessor for PommesContext();
    (*(*(v27 - 8) + 56))(v17, 0, 1, v27);
    NLContextUpdate.pommesContext.setter();
  }

  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  (*(v19 + 16))(v9, v22, v18);
  (*(v19 + 56))(v9, 0, 1, v18);
  a3(v9);
  outlined destroy of Mirror.DisplayStyle?(v9, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v19 + 8))(v22, v18);
}

uint64_t StopShareETAContextProvider.deinit()
{
  v0 = DefaultNLContextProvider.deinit();

  return v0;
}

uint64_t StopShareETAContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StopShareETAFlowDelegate.currentDeviceState.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v4));
  outlined init with take of GeoRCHFlowFactory(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t StopShareETATemplatingService.init(deviceState:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v28 = &v27 - v6;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = direct field offset for StopShareETATemplatingService.catService;
  type metadata accessor for CATService();
  v13 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v13 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v13 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + v12) = v13;
  *(v13 + 16) = 0;
  v15 = direct field offset for StopShareETATemplatingService.logObject;
  v16 = OS_os_log.init(subsystem:category:)();
  *(v2 + v15) = v16;
  v17 = v16;
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "initializing", v19, 2u);
  }

  outlined init with copy of DeviceState(a1, v2 + direct field offset for StopShareETATemplatingService.device);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v21 = Locale.identifier.getter();
  v23 = v22;
  (*(v8 + 8))(v11, v7);
  v31 = v21;
  v32 = v23;
  v29 = 45;
  v30 = 0xE100000000000000;
  v33 = 95;
  v34 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  static Device.current.getter();
  v24 = type metadata accessor for DucTemplatingLocalContext();
  (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21INIntentSlotValueTypeV_SSTt0gq5Tf4g_n(&_swiftEmptyArrayStorage);
  static AceService.current.getter();
  v25 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v25;
}

uint64_t StopShareETATemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v39 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v38 - v14);
  v16 = type metadata accessor for Locale();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = *(v9 + direct field offset for StopShareETATemplatingService.logObject);
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "makeParameterValueUnsupportedDialog", v20, 2u);
  }

  if ([a4 resolutionResultCode] != &dword_0 + 1)
  {
LABEL_16:
    v23 = *(v9 + direct field offset for StopShareETATemplatingService.catService);
    v42 = type metadata accessor for ShareETA(0);
    v43 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v41) = 1;
    goto LABEL_17;
  }

  v21 = [a4 unsupportedReason];
  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_B89E0;
  *(v22 + 56) = &type metadata for Int;
  *(v22 + 64) = &protocol witness table for Int;
  *(v22 + 32) = v21;
  os_log(_:dso:log:_:_:)();

  if ((v21 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v23 = *(v9 + direct field offset for StopShareETATemplatingService.catService);
    v42 = type metadata accessor for ShareETA(0);
    v43 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v41);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v35 = static DialogHelper.globals.getter();
    (*(*v23 + 120))(v41, v35, v39, a9);

    return __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  v24 = [a5 recipients];
  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = v24;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  result = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_20:

LABEL_21:
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError();
    v36 = swift_allocError();
    *v37 = 0xD000000000000020;
    v37[1] = 0x80000000000C2100;
    *v15 = v36;
    swift_storeEnumTagMultiPayload();
    v39(v15);
    return outlined destroy of Mirror.DisplayStyle?(v15, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

LABEL_9:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v29 = v28;

    if (v21 == 1 || v21 == 4)
    {
      v30 = *(v9 + direct field offset for StopShareETATemplatingService.catService);
      v42 = type metadata accessor for ShareETA(0);
      v43 = &protocol witness table for ShareETA;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
      type metadata accessor for DialogPerson();
      v32 = v29;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v33 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      *boxed_opaque_existential_0 = v33;
      swift_storeEnumTagMultiPayload();
      v34 = static DialogHelper.globals.getter();
      (*(*v30 + 120))(v41, v34, v39, a9);

      return __swift_destroy_boxed_opaque_existential_0Tm(v41);
    }

    goto LABEL_16;
  }

  if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
  {
    v28 = *(v26 + 32);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t StopShareETATemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v30[-1] - v11);
  v13 = [a2 recipients];
  if (v13 && ((v14 = v13, type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr), v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v14, v15 >> 62) ? (v16 = _CocoaArrayWrapper.endIndex.getter()) : (v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8))), , v16))
  {
    static os_log_type_t.error.getter();
    v17 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError();
    v18 = swift_allocError();
    *v19 = 0xD000000000000043;
    v19[1] = 0x80000000000C2180;
    *v12 = v18;
    swift_storeEnumTagMultiPayload();
    a4(v12);
    return outlined destroy of Mirror.DisplayStyle?(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    v21 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "stop sharing ETA - makeIntentConfirmationDialog", v23, 2u);
    }

    v24 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v30[3] = type metadata accessor for ShareETA(0);
    v30[4] = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
    v26 = enum case for BehaviorAfterSpeaking.listen(_:);
    v27 = type metadata accessor for BehaviorAfterSpeaking();
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_0, v26, v27);
    swift_storeEnumTagMultiPayload();
    v28 = static DialogHelper.globals.getter();
    (*(*v24 + 120))(v30, v28, a4, a5);

    return __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }
}

uint64_t StopShareETATemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "makeFailureHandlingIntentDialog", v11, 2u);
  }

  if (a3 && ((v12 = [a3 code], v12 == (&dword_C + 3)) || v12 == (&dword_C + 1) || v12 == &dword_C))
  {
    v13 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v16);
  }

  else
  {
    v13 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v16) = 1;
  }

  swift_storeEnumTagMultiPayload();
  v14 = static DialogHelper.globals.getter();
  (*(*v13 + 120))(v16, v14, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void StopShareETATemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v50 - v11);
  v13 = type metadata accessor for Locale();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "stop sharing ETA - makeIntentHandledDialog", v17, 2u);
  }

  if (!a3)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError();
    v38 = swift_allocError();
    *v39 = 0xD000000000000015;
    v39[1] = 0x80000000000C1360;
    *v12 = v38;
    swift_storeEnumTagMultiPayload();
    a4(v12);
    outlined destroy of Mirror.DisplayStyle?(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return;
  }

  v18 = a3;
  v19 = [v18 recipients];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = v18;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

      v22 = *(v21 + 32);
    }

    v23 = v22;
    v52 = a5;

    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = a4;
      v27 = v26;
      v55[0] = v26;
      *v25 = 136315138;
      v28 = [v23 displayName];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v55);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_0, v15, v24, "stop sharing ETA - stop sharing ETA to %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      a4 = v51;
    }

    v33 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v56 = type metadata accessor for ShareETA(0);
    v57 = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
    type metadata accessor for DialogPerson();
    v35 = v23;
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v36 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    *boxed_opaque_existential_0 = 1;
    boxed_opaque_existential_0[1] = v36;
    boxed_opaque_existential_0[2] = 0;
    swift_storeEnumTagMultiPayload();
    v37 = static DialogHelper.globals.getter();
    (*(*v33 + 120))(v55, v37, a4, v52);
  }

  else
  {
    v40 = a5;
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v15, v41, "recipients nil - stop sharing ETA for all", v42, 2u);
    }

    v43 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
    v56 = type metadata accessor for ShareETA(0);
    v57 = &protocol witness table for ShareETA;
    v44 = __swift_allocate_boxed_opaque_existential_0(v55);
    v45 = type metadata accessor for DialogPerson.Builder();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    DialogPerson.Builder.init()();
    v48 = dispatch thunk of DialogPerson.Builder.build()();

    *v44 = 1;
    v44[1] = v48;
    v44[2] = 0;
    swift_storeEnumTagMultiPayload();
    v49 = static DialogHelper.globals.getter();
    (*(*v43 + 120))(v55, v49, a4, v40);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v55);
}

uint64_t StopShareETATemplatingService.makeIntentConfirmationCancelledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + direct field offset for StopShareETATemplatingService.logObject);
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "makeIntentConfirmationCancelledDialog", v10, 2u);
  }

  v11 = *(v5 + direct field offset for StopShareETATemplatingService.catService);
  v15[3] = type metadata accessor for ShareETA(0);
  v15[4] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  *boxed_opaque_existential_0 = 1;
  boxed_opaque_existential_0[1] = 0;
  swift_storeEnumTagMultiPayload();
  v13 = static DialogHelper.globals.getter();
  (*(*v11 + 120))(v15, v13, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t StopShareETATemplatingService.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for StopShareETATemplatingService.catService);

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETATemplatingService.device));
}

uint64_t StopShareETATemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();
  v1 = *(v0 + direct field offset for StopShareETATemplatingService.catService);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETATemplatingService.device));
  return v0;
}

uint64_t StopShareETATemplatingService.__deallocating_deinit()
{
  v0 = DucTemplatingService.deinit();
  v1 = *(v0 + direct field offset for StopShareETATemplatingService.catService);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for StopShareETATemplatingService.device));

  return swift_deallocClassInstance();
}

uint64_t specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(void *a1, char a2)
{
  v3 = v2;
  v6 = direct field offset for StopShareETAFlowDelegate.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + v6) = OS_os_log.init(subsystem:category:)();
  v7 = direct field offset for StopShareETAFlowDelegate.stopShareETAIntent;
  *(v3 + direct field offset for StopShareETAFlowDelegate.stopShareETAIntent) = 0;
  swift_beginAccess();
  *(v3 + v7) = a1;
  v8 = a1;
  static Device.current.getter();
  outlined init with take of GeoRCHFlowFactory(&v10, v3 + direct field offset for StopShareETAFlowDelegate.currentDeviceState);
  *(v3 + direct field offset for StopShareETAFlowDelegate.isPOMMES) = a2;
  return BaseRCHFlowDelegate.init()();
}

unint64_t lazy protocol witness table accessor for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError()
{
  result = lazy protocol witness table cache variable for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError;
  if (!lazy protocol witness table cache variable for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopShareETATemplatingService.StopShareETATemplatingServiceError and conformance StopShareETATemplatingService.StopShareETATemplatingServiceError);
  }

  return result;
}

uint64_t sub_5AEC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for StopShareETAFlowDelegate + 56))();
  *a2 = result;
  return result;
}

uint64_t sub_5AF2C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *(**a2 + class metadata base offset for StopShareETAFlowDelegate + 64);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_5AFA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for StopShareETAFlowDelegate + 80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_5B070@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for StopShareETAContextProvider + 16))();
  *a2 = result & 1;
  return result;
}

uint64_t GeoAppResolutionService.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return AppResolutionService.init()();
}

uint64_t GeoAppResolutionService.resolveApp(intent:appResolutionState:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, _ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v14 - v6);
  v8 = type metadata accessor for App();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *v7 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  v11 = enum case for AppResolutionResult.selected(_:);
  v12 = type metadata accessor for AppResolutionResult();
  (*(*(v12 - 8) + 104))(v7, v11, v12);
  swift_storeEnumTagMultiPayload();
  a3(v7);
  return outlined destroy of Result<AppResolutionResult, Error>(v7);
}

uint64_t outlined destroy of Result<AppResolutionResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMd, _ss6ResultOy17SiriAppResolution0cdA0Os5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GeoAppResolutionService.__deallocating_deinit()
{
  AppResolutionService.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 6386789;
  if (a1 != 6)
  {
    v5 = 0x6574756F72;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x63696666617274;
  if (a1 != 4)
  {
    v7 = 0x746E656469636E69;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65636E6174736964;
  if (a1 != 2)
  {
    v9 = 0x6F69746365726964;
    v8 = 0xEA0000000000736ELL;
  }

  v10 = 0x6E6F697461727564;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 7958113;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE300000000000000;
        if (v11 != 6386789)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6574756F72)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x63696666617274)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x746E656469636E69)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x65636E6174736964)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA0000000000736ELL;
      if (v11 != 0x6F69746365726964)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6E6F697461727564)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7958113)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t FlowSelector.FlowSelectorKey.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(a2);
  String.hash(into:)();

  String.hash(into:)();
}

uint64_t static FlowSelector.FlowSelectorKey.== infix(_:_:)(__int16 a1, __int16 a2)
{
  v3 = HIBYTE(a1);
  v4 = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(a1);
  v6 = v5;
  if (v4 == LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(a2) && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return specialized == infix<A>(_:_:)(v3, HIBYTE(a2));
}

Swift::Int FlowSelector.FlowSelectorKey.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  FlowSelector.FlowSelectorKey.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowSelector.FlowSelectorKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FlowSelector.FlowSelectorKey.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowSelector.FlowSelectorKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FlowSelector.FlowSelectorKey.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowSelector.FlowSelectorKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a2;
  v5 = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(*a1);
  v7 = v6;
  if (v5 == LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v4) && v7 == v8)
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

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t FlowSelector.__allocating_init(with:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized FlowSelector.init(with:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t FlowSelector.init(with:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized FlowSelector.init(with:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t closure #1 in FlowSelector.init(with:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of DeviceState(a2, v8);
  v2 = type metadata accessor for TrafficIncidentBaseFlow(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v8[0] = TrafficIncidentBaseFlow.init(with:flowHelper:)(v5, v8);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow);
  v6 = Flow.eraseToAnyFlow()();

  return v6;
}

uint64_t closure #2 in FlowSelector.init(with:)(uint64_t a1, uint64_t a2, char a3)
{
  outlined init with copy of DeviceState(a2, v11);
  type metadata accessor for ShareETABaseFlow();
  v5 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v5 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v5 + 24) = v6;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  static os_log_type_t.info.getter();
  v8 = *(v5 + 16);
  os_log(_:dso:log:_:_:)();

  *(v5 + 32) = a1;
  *(v5 + 40) = 0;
  *(v5 + 41) = a3;
  outlined init with take of CATType(v11, v5 + 48);
  *(v5 + 96) = &type metadata for AssistantProperties;
  *(v5 + 104) = &protocol witness table for AssistantProperties;
  *&v11[0] = v5;
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ShareETABaseFlow and conformance ShareETABaseFlow, type metadata accessor for ShareETABaseFlow);

  v9 = Flow.eraseToAnyFlow()();

  return v9;
}

uint64_t closure #4 in FlowSelector.init(with:)(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 184))(a1) == 9)
  {
    return 0;
  }

  outlined init with copy of DeviceState(a2, v9);
  v4 = type metadata accessor for TrafficIncidentBaseFlow(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v9[0] = TrafficIncidentBaseFlow.init(with:flowHelper:)(v7, v9);
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow);
  v8 = Flow.eraseToAnyFlow()();

  return v8;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed LocationSearchIntent) -> (@out AnyFlow?)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t FlowSelector.chooseFlow(nlIntent:)(uint64_t a1)
{
  v3 = type metadata accessor for NLIntent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v68 - v9;
  v11 = static os_log_type_t.info.getter();
  v71 = v1;
  v12 = *(v1 + 16);
  v13 = *(v4 + 16);
  v13(v10, a1, v3);
  v14 = os_log_type_enabled(v12, v11);
  v72 = v12;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v70 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v69 = a1;
    v18 = v17;
    v75 = v17;
    *v16 = 136315138;
    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent);
    v68 = v13;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v4 + 8))(v10, v3);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v75);

    *(v16 + 4) = v22;
    v13 = v68;
    _os_log_impl(&dword_0, v72, v11, "chooseFlow - receives NL intent: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    a1 = v69;

    v8 = v70;
  }

  else
  {
    (*(v4 + 8))(v10, v3);
  }

  v13(v8, a1, v3);
  v23 = type metadata accessor for LocationSearchIntent();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v26 + v27) = static LocationSearchIntent.domainNode;
  (*(v4 + 32))(v26 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v8, v3);

  v28 = static os_log_type_t.default.getter();
  v29 = v72;
  if (os_log_type_enabled(v72, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v74 = v26;
    v75 = v31;
    *v30 = 136315394;
    if (one-time initialization token for verbNode != -1)
    {
      swift_once();
    }

    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    v32 = v73;
    if (v73 == 10)
    {
      v32 = 0;
    }

    LOBYTE(v74) = v32;
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v75);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v74 = v26;
    if (one-time initialization token for nounNode != -1)
    {
      swift_once();
    }

    IntentNodeTraversable.value<A>(forNode:)();
    v36 = v73;
    if (v73 == 8)
    {
      v36 = 0;
    }

    LOBYTE(v74) = v36;
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v75);

    *(v30 + 14) = v39;
    v29 = v72;
    _os_log_impl(&dword_0, v72, v28, "chooseFlow - receives NL intent with Verb: %s, Noun: %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  v75 = v26;
  if (one-time initialization token for verbNode != -1)
  {
    swift_once();
  }

  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v74 == 10)
  {
    v40 = 0;
  }

  else
  {
    v40 = v74;
  }

  v75 = v26;
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v74 == 8)
  {
    v41 = 0;
  }

  else
  {
    v41 = v74;
  }

  v42 = *(v71 + 24);
  if (*(v42 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v40 | (v41 << 8)), (v44 & 1) != 0))
  {
    v45 = *(v42 + 56) + 16 * v43;
    v46 = *v45;
    v47 = *(v45 + 8);
    v75 = v26;

    v46(&v74, &v75);

    return v74;
  }

  else
  {
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v49))
    {
      v50 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v50 = 136315650;
      v51 = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v40);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v75);

      v54 = 0xE300000000000000;
      *(v50 + 4) = v53;
      v55 = 7958113;
      *(v50 + 12) = 2080;
      v56 = 0xE300000000000000;
      v57 = 6386789;
      if (v41 != 6)
      {
        v57 = 0x6574756F72;
        v56 = 0xE500000000000000;
      }

      v58 = 0xE700000000000000;
      v59 = 0x63696666617274;
      if (v41 != 4)
      {
        v59 = 0x746E656469636E69;
        v58 = 0xE800000000000000;
      }

      if (v41 <= 5)
      {
        v57 = v59;
        v56 = v58;
      }

      v60 = 0xE800000000000000;
      v61 = 0x65636E6174736964;
      if (v41 != 2)
      {
        v61 = 0x6F69746365726964;
        v60 = 0xEA0000000000736ELL;
      }

      if (v41)
      {
        v55 = 0x6E6F697461727564;
        v54 = 0xE800000000000000;
      }

      if (v41 > 1)
      {
        v55 = v61;
        v54 = v60;
      }

      if (v41 <= 3)
      {
        v62 = v55;
      }

      else
      {
        v62 = v57;
      }

      if (v41 <= 3)
      {
        v63 = v54;
      }

      else
      {
        v63 = v56;
      }

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v75);

      *(v50 + 14) = v64;
      *(v50 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0CSg03GeoC14DelegatePlugin20LocationSearchIntentCcMd, &_s11SiriKitFlow03AnyC0CSg03GeoC14DelegatePlugin20LocationSearchIntentCcMR);
      lazy protocol witness table accessor for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey();
      v65 = Dictionary.description.getter();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v75);

      *(v50 + 24) = v67;
      _os_log_impl(&dword_0, v29, v49, "chooseFlow no flow found for (%s, %s) current dictionary %s", v50, 0x20u);
      swift_arrayDestroy();
    }

    return 0;
  }
}

uint64_t FlowSelector.chooseFlow(pommesResponse:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = PommesResponse.firstGeoExperience.getter();
  if (v9)
  {
    v10 = v9;
    v11 = static os_log_type_t.info.getter();
    v12 = v2[2];
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v25 = v12;
      v14 = v13;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v14 = 136315138;
      v15 = a1;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v4;
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v27);
      v4 = v26;

      *(v14 + 4) = v20;
      _os_log_impl(&dword_0, v25, v11, "chooseFlow - receives POMMES response: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    GeoExperience.geoClientComponent.getter();
    v21 = (*(*v2 + 128))(v8);

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    static os_log_type_t.error.getter();
    v22 = v1[2];
    os_log(_:dso:log:_:_:)();
    return 0;
  }

  return v21;
}

uint64_t FlowSelector.chooseFlow(geoClientComponent:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType();
  isa = v0[-1].isa;
  v95 = v0;
  v1 = *(isa + 8);
  __chkstk_darwin(v0);
  v93 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  v5 = __chkstk_darwin(v3);
  v90 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v88 - v7;
  v9 = type metadata accessor for NLIntent();
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = *(v98 + 64);
  __chkstk_darwin(v9);
  v97 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v96 = *(v101 - 8);
  v12 = *(v96 + 64);
  v13 = __chkstk_darwin(v101);
  v89 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v88 - v16;
  __chkstk_darwin(v15);
  v100 = &v88 - v18;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoExperienceType();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v88 - v25;
  (*(v20 + 104))(&v88 - v25, enum case for Apple_Parsec_Siri_V2alpha_GeoExperienceType.geoExperienceWhereAmI(_:), v19);
  Apple_Parsec_Siri_V2alpha_GeoClientComponent.experienceType.getter();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoExperienceType and conformance Apple_Parsec_Siri_V2alpha_GeoExperienceType, &type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoExperienceType);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v20 + 8);
  v28(v24, v19);
  v28(v26, v19);
  if (v27)
  {
    static Device.current.getter();
    v29 = type metadata accessor for GeoRCHFlowFactoryImpl();
    v30 = swift_allocObject();
    v106 = v29;
    v107 = &protocol witness table for GeoRCHFlowFactoryImpl;
    v105 = v30;
    v108 = static DialogHelper.globals.getter();
    static AceService.currentAsync.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for CATService();
    v31 = swift_allocObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v31 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    type metadata accessor for OS_os_log();
    *(v31 + 32) = OS_os_log.init(subsystem:category:)();
    *(v31 + 16) = 0;
    v109 = v31;
    type metadata accessor for WhereAmIFlow();
    v33 = swift_allocObject();
    outlined init with copy of FlowHelperImpl(v104, v103);
    v34 = specialized WhereAmIFlow.init(with:)(v103, v33);
    outlined destroy of FlowHelperImpl(v104);
    *&v104[0] = v34;
    v35 = &lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow;
    v36 = type metadata accessor for WhereAmIFlow;
LABEL_3:
    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(v35, v36);
    v37 = Flow.eraseToAnyFlow()();

    return v37;
  }

  if ((Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter() & 1) == 0)
  {
    if ((Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasParkingLocationAction.getter() & 1) == 0)
    {
      return 0;
    }

    Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter();
    Apple_Parsec_Siri_V2alpha_ParkingLocationAction.note.getter();
    v51 = v92;
    v52 = *(v91 + 8);
    v52(v8, v92);
    v53 = v90;
    Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter();
    v54 = v93;
    Apple_Parsec_Siri_V2alpha_ParkingLocationAction.parkingLocationActionType.getter();
    v52(v53, v51);
    v56 = isa;
    v55 = v95;
    v57 = (*(isa + 11))(v54, v95);
    if (v57 == enum case for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.save(_:))
    {
      v58 = objc_allocWithZone(INSaveParkingLocationIntent);
      v59 = String._bridgeToObjectiveC()();

      v60 = [v58 initWithParkingLocation:0 parkingNote:v59];

      outlined init with copy of DeviceState((v102 + 4), v104);
      v61 = type metadata accessor for SaveParkingLocationBaseFlow(0);
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      v64 = swift_allocObject();
      type metadata accessor for OS_os_log();
      v65 = v60;
      *(v64 + 16) = OS_os_log.init(subsystem:category:)();
      *(v64 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES) = 0;
      outlined init with take of CATType(v104, v64 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper);
      *(v64 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState) = v65;
      type metadata accessor for SaveParkingLocationBaseFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *&v104[0] = v64;
      v66 = &lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow;
      v67 = type metadata accessor for SaveParkingLocationBaseFlow;
    }

    else if (v57 == enum case for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.retrieve(_:))
    {

      v73 = [objc_allocWithZone(INRetrieveParkingLocationIntent) init];
      outlined init with copy of DeviceState((v102 + 4), v104);
      ParkingLocationBaseFlow = type metadata accessor for RetrieveParkingLocationBaseFlow(0);
      v75 = *(ParkingLocationBaseFlow + 48);
      v76 = *(ParkingLocationBaseFlow + 52);
      v77 = swift_allocObject();
      type metadata accessor for OS_os_log();
      v65 = v73;
      *(v77 + 16) = OS_os_log.init(subsystem:category:)();
      *(v77 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES) = 0;
      outlined init with take of CATType(v104, v77 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper);
      *(v77 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState) = v65;
      type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *&v104[0] = v77;
      v66 = &lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow;
      v67 = type metadata accessor for RetrieveParkingLocationBaseFlow;
    }

    else
    {
      v78 = enum case for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.delete(_:);
      v79 = v57;

      if (v79 != v78)
      {
        static os_log_type_t.error.getter();
        v86 = v102[2];
        os_log(_:dso:log:_:_:)();
        (*(v56 + 1))(v54, v55);
        type metadata accessor for UnsupportedRequestFlow();
        v87 = swift_allocObject();
        type metadata accessor for OS_os_log();
        *(v87 + 16) = OS_os_log.init(subsystem:category:)();
        *&v104[0] = v87;
        v35 = &lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow;
        v36 = type metadata accessor for UnsupportedRequestFlow;
        goto LABEL_3;
      }

      v80 = [objc_allocWithZone(INDeleteParkingLocationIntent) init];
      outlined init with copy of DeviceState((v102 + 4), v104);
      v81 = type metadata accessor for DeleteParkingLocationBaseFlow(0);
      v82 = *(v81 + 48);
      v83 = *(v81 + 52);
      v84 = swift_allocObject();
      type metadata accessor for OS_os_log();
      v65 = v80;
      *(v84 + 16) = OS_os_log.init(subsystem:category:)();
      *(v84 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES) = 0;
      outlined init with take of CATType(v104, v84 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper);
      *(v84 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState) = v65;
      type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *&v104[0] = v84;
      v66 = &lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow;
      v67 = type metadata accessor for DeleteParkingLocationBaseFlow;
    }

    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(v66, v67);
    v37 = Flow.eraseToAnyFlow()();

    return v37;
  }

  v38 = v100;
  Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
  v39 = static os_log_type_t.info.getter();
  v40 = v101;
  v41 = v102[2];
  v42 = v96;
  v43 = *(v96 + 16);
  v43(v17, v38, v101);
  v95 = v41;
  if (os_log_type_enabled(v41, v39))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v104[0] = v45;
    *v44 = 136315138;
    v43(v89, v17, v40);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    v49 = *(v42 + 8);
    v49(v17, v101);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v104);

    *(v44 + 4) = v50;
    v40 = v101;
    _os_log_impl(&dword_0, v95, v39, "chooseFlow - receives POMMES intent: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {
    v49 = *(v42 + 8);
    v49(v17, v40);
  }

  type metadata accessor for LocationSearchIntentBuilder();
  swift_allocObject();
  v68 = *LocationSearchIntentBuilder.init()();
  v69 = v100;
  v70 = (*(v68 + 376))(v100);

  v72 = v97;
  (*(*v70 + 456))(v71);

  v37 = (*(*v102 + 112))(v72);
  (*(v98 + 8))(v72, v99);
  v49(v69, v40);
  return v37;
}

uint64_t FlowSelector.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t FlowSelector.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t specialized WhereAmIFlow.init(with:)(_OWORD *a1, uint64_t a2)
{
  v12[3] = &type metadata for FlowHelperImpl;
  v12[4] = &protocol witness table for FlowHelperImpl;
  v4 = swift_allocObject();
  v12[0] = v4;
  v5 = a1[9];
  *(v4 + 144) = a1[8];
  *(v4 + 160) = v5;
  *(v4 + 176) = a1[10];
  v6 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v6;
  v7 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v7;
  v8 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  v9 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v9;
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  outlined init with copy of DeviceState(v12, a2 + 40);
  *(a2 + 80) = *(v4 + 184);

  static os_log_type_t.default.getter();
  v10 = *(a2 + 16);
  os_log(_:dso:log:_:_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return a2;
}

uint64_t specialized FlowSelector.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v75);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  v60 = a2;
  outlined init with copy of DeviceState(&v75, v73);
  v8 = swift_allocObject();
  outlined init with take of CATType(v73, v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in FlowSelector.init(with:);
  *(v9 + 24) = v8;
  v74[0] = &outlined read-only object #0 of specialized FlowSelector.init(with:);
  v74[1] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v74[2] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?);
  v74[3] = v9;
  outlined init with copy of DeviceState(&v75, v72);
  v10 = swift_allocObject();
  outlined init with take of CATType(v72, v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #2 in FlowSelector.init(with:);
  *(v11 + 24) = v10;
  v74[4] = &outlined read-only object #1 of specialized FlowSelector.init(with:);
  v74[5] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v74[6] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v74[7] = v11;
  outlined init with copy of DeviceState(&v75, v71);
  v12 = swift_allocObject();
  outlined init with take of CATType(v71, v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #3 in FlowSelector.init(with:);
  *(v13 + 24) = v12;
  v74[8] = &outlined read-only object #2 of specialized FlowSelector.init(with:);
  v74[9] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v74[10] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v74[11] = v13;
  outlined init with copy of DeviceState(&v75, v70);
  v14 = swift_allocObject();
  outlined init with take of CATType(v70, v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #4 in FlowSelector.init(with:);
  *(v15 + 24) = v14;
  v74[12] = &outlined read-only object #3 of specialized FlowSelector.init(with:);
  v74[13] = &outlined read-only object #4 of specialized FlowSelector.init(with:);
  v74[14] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v74[15] = v15;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV_07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v17 = 0;
  while (1)
  {
    v61 = v17;
    v18 = &v74[4 * v17];
    v19 = *v18;
    v20 = v18[1];
    v22 = v18[2];
    v21 = v18[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    v64 = *(v19 + 16);
    if (v64)
    {
      break;
    }

LABEL_41:
    v17 = v61 + 1;
    if (v61 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMd, &_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMR);
      swift_arrayDestroy();
      *(v60 + 24) = v16;
      outlined init with take of CATType(&v75, v60 + 32);
      return v60;
    }
  }

  v63 = v19 + 32;
  v67 = v20 + 32;
  v68 = *(v20 + 16);
  swift_bridgeObjectRetain_n();

  v24 = 0;
  v62 = v19;
  v66 = v20;
  while (v24 < *(v19 + 16))
  {
    if (v68)
    {
      v65 = v24;
      v69 = *(v63 + v24);

      v25 = 0;
      while (1)
      {
        if (v25 >= *(v20 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v28 = *(v67 + v25);
        v29 = swift_allocObject();
        *(v29 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed LocationSearchIntent) -> (@out AnyFlow?);
        *(v29 + 24) = v23;
        v30 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v16;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v69 | (v28 << 8));
        v34 = *(v16 + 16);
        v35 = (v32 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_44;
        }

        v37 = v32;
        if (*(v16 + 24) >= v36)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v23 = v30;
            if (v32)
            {
              goto LABEL_9;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMd, &_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMR);
            v59 = static _DictionaryStorage.copy(original:)();
            if (*(v16 + 16))
            {
              v45 = (v59 + 64);
              v46 = ((1 << *(v59 + 32)) + 63) >> 6;
              if (v59 != v16 || v45 >= v16 + 64 + 8 * v46)
              {
                memmove(v45, (v16 + 64), 8 * v46);
              }

              v47 = 0;
              *(v59 + 16) = *(v16 + 16);
              v48 = 1 << *(v16 + 32);
              v49 = *(v16 + 64);
              if (v48 < 64)
              {
                v50 = ~(-1 << v48);
              }

              else
              {
                v50 = -1;
              }

              v51 = v50 & v49;
              v52 = (v48 + 63) >> 6;
              if ((v50 & v49) != 0)
              {
                do
                {
                  v53 = __clz(__rbit64(v51));
                  v51 &= v51 - 1;
LABEL_35:
                  v56 = v53 | (v47 << 6);
                  v57 = *(*(v16 + 56) + 16 * v56);
                  *(*(v59 + 48) + 2 * v56) = *(*(v16 + 48) + 2 * v56);
                  *(*(v59 + 56) + 16 * v56) = v57;
                }

                while (v51);
              }

              v54 = v47;
              while (1)
              {
                v47 = v54 + 1;
                if (__OFADD__(v54, 1))
                {
                  goto LABEL_47;
                }

                if (v47 >= v52)
                {
                  break;
                }

                v55 = *(v16 + 64 + 8 * v47);
                ++v54;
                if (v55)
                {
                  v53 = __clz(__rbit64(v55));
                  v51 = (v55 - 1) & v55;
                  goto LABEL_35;
                }
              }
            }

            v16 = v59;
            v23 = v30;
            if (v37)
            {
LABEL_9:
              v26 = (*(v16 + 56) + 16 * v33);
              v27 = v26[1];
              *v26 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
              v26[1] = v29;

              goto LABEL_10;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
          v16 = *&v70[0];
          v38 = specialized __RawDictionaryStorage.find<A>(_:)(v69 | (v28 << 8));
          if ((v37 & 1) != (v39 & 1))
          {
            goto LABEL_48;
          }

          v33 = v38;
          v23 = v30;
          if (v37)
          {
            goto LABEL_9;
          }
        }

        *(v16 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v40 = (*(v16 + 48) + 2 * v33);
        *v40 = v69;
        v40[1] = v28;
        v41 = (*(v16 + 56) + 16 * v33);
        *v41 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
        v41[1] = v29;
        v42 = *(v16 + 16);
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_45;
        }

        *(v16 + 16) = v44;
LABEL_10:
        ++v25;
        v20 = v66;
        if (v25 == v68)
        {

          v19 = v62;
          v24 = v65;
          break;
        }
      }
    }

    if (++v24 == v64)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey()
{
  result = lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey;
  if (!lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey;
  if (!lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowSelector.FlowSelectorKey and conformance FlowSelector.FlowSelectorKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowSelector.FlowSelectorKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowSelector.FlowSelectorKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5E68C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_5E6F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5E734()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed LocationSearchIntent) -> (@out AnyFlow?)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t RuntimeError.__allocating_init(message:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t RuntimeError.init(message:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t RuntimeError.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t RuntimeError.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t static RuntimeError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RuntimeError(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for Errors(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for Errors(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t RetrieveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized RetrieveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t key path setter for RetrieveParkingLocationBaseFlow.flowState : RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  v5 = *(*(ParkingLocationBase - 8) + 64);
  __chkstk_darwin(ParkingLocationBase - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RetrieveParkingLocationBaseFlow.State(a1, v7);
  return (*(**a2 + 120))(v7);
}

uint64_t RetrieveParkingLocationBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of RetrieveParkingLocationBaseFlow.State(v1 + v3, a1);
}

uint64_t RetrieveParkingLocationBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of RetrieveParkingLocationBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t RetrieveParkingLocationBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t RetrieveParkingLocationBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t RetrieveParkingLocationBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RetrieveParkingLocationBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t RetrieveParkingLocationBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  v4 = *(*(ParkingLocationBase - 8) + 64);
  v5 = __chkstk_darwin(ParkingLocationBase);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *v7;
      *(a1 + 8) = 0;
      v9 = enum case for RCHFlowResult.error<A, B>(_:);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v10 - 8) + 104))(a1, v9, v10);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v16 - 8) + 32))(a1, v7, v16);
    }
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v12 = swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    *a1 = v12;
    *(a1 + 8) = 0;
    v14 = enum case for RCHFlowResult.error<A, B>(_:);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return outlined destroy of RetrieveParkingLocationBaseFlow.State(v7);
  }
}

uint64_t RetrieveParkingLocationBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v10 + 96))(v13, v9);
    v15 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];

    v16 = v2[2];
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "RetrieveParkingLocationBaseFlow onInput returns true for NLv3IntentPlusServerConversion.", v18, 2u);
    }

    v19 = type metadata accessor for NLIntent();
    (*(*(v19 - 8) + 8))(v13, v19);
    return 1;
  }

  else if (v14 == enum case for Parse.pommesResponse(_:))
  {
    (*(v10 + 8))(v13, v9);
    (*(*v2 + 168))(1);
    v21 = v2[2];
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    result = 1;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v21, v22, "RetrieveParkingLocationBaseFlow onInput returns true for Pommes response.", v24, 2u);

      return 1;
    }
  }

  else
  {
    v25 = v2[2];
    (*(v5 + 16))(v8, a1, v4);
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = v25;
      v28 = v27;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v28 = 136315138;
      v29 = Input.description.getter();
      v31 = v30;
      (*(v5 + 8))(v8, v4);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v35, v26, "SiriGeo currently doesn't support parse type: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    (*(v10 + 8))(v13, v9);
    return 0;
  }

  return result;
}

uint64_t RetrieveParkingLocationBaseFlow.executeState()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  v2[10] = ParkingLocationBase;
  v7 = *(*(ParkingLocationBase - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(RetrieveParkingLocationBaseFlow.executeState(), 0, 0);
}

uint64_t RetrieveParkingLocationBaseFlow.executeState()()
{
  v58 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  (*(**(v0 + 32) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 88);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 32);
      v6 = *v4;
      v7 = static os_log_type_t.error.getter();
      v8 = *(v5 + 16);
      if (os_log_type_enabled(v8, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v57 = v10;
        *v9 = 136315138;
        *(v0 + 16) = v6;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v11 = String.init<A>(describing:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v57);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_0, v8, v7, "RetrieveParkingLocationBaseFlow execute requestUnsupported with error %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
      }

      v14 = *(v0 + 24);
      static ExecuteResponse.complete()();
    }

    else
    {
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      v28 = *(v0 + 40);
      v29 = *(v0 + 48);
      v30 = *(v0 + 32);
      (*(v29 + 32))(v26, v4, v28);
      v31 = static os_log_type_t.info.getter();
      v32 = *(v30 + 16);
      v33 = *(v29 + 16);
      v33(v27, v26, v28);
      v34 = os_log_type_enabled(v32, v31);
      v35 = *(v0 + 64);
      if (v34)
      {
        v56 = v31;
        v36 = *(v0 + 48);
        v37 = *(v0 + 56);
        v38 = *(v0 + 40);
        v39 = swift_slowAlloc();
        log = v32;
        v40 = swift_slowAlloc();
        v57 = v40;
        *v39 = 136315138;
        v33(v37, v35, v38);
        v41 = String.init<A>(describing:)();
        v43 = v42;
        v44 = *(v36 + 8);
        v44(v35, v38);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v57);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_0, log, v56, "RetrieveParkingLocationBaseFlow execute rchComplete with result %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
      }

      else
      {
        v44 = *(*(v0 + 48) + 8);
        v44(*(v0 + 64), *(v0 + 40));
      }

      v46 = *(v0 + 72);
      v47 = *(v0 + 40);
      v48 = *(v0 + 24);
      static ExecuteResponse.complete()();
      v44(v46, v47);
    }

    v49 = *(v0 + 88);
    v50 = *(v0 + 64);
    v51 = *(v0 + 72);
    v52 = *(v0 + 56);

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v15 = *(v0 + 32);
    v16 = *v4;
    *(v0 + 96) = *v4;
    v17 = *(v15 + 16);
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "RetrieveParkingLocationBaseFlow execute state handle.", v19, 2u);
    }

    v20 = *(**(v0 + 32) + 216);
    v55 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 104) = v22;
    *v22 = v0;
    v22[1] = DeleteParkingLocationBaseFlow.executeState();
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);

    return v55(v23, v16);
  }
}

uint64_t RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo31INRetrieveParkingLocationIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo31INRetrieveParkingLocationIntentCSo0ghiJ8ResponseCGMR);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:), 0, 0);
}

uint64_t RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:)()
{
  v1 = *(*(v0 + 168) + 16);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "RetrieveParkingLocationBaseFlow makeRCHflow.", v3, 2u);
  }

  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v26 = *(v0 + 160);
  v27 = *(v0 + 152);
  v28 = *(v0 + 184);
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INRetrieveParkingLocationIntentResponse, INRetrieveParkingLocationIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v7 = type metadata accessor for App();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v25 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v24 = v5;
  v22 = v4;
  v10 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v23 = *(*v6 + 136);
  (v23)(v10);
  type metadata accessor for RetrieveParkingHandleIntentStrategy();
  v11 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v11 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v0 + 16), v11 + 24);
  *(v11 + 64) = 0;
  *(v0 + 136) = v11;
  lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy, type metadata accessor for RetrieveParkingHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  v13 = swift_allocObject();
  *(v13 + 16) = OS_os_log.init(subsystem:category:)();
  v23();
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
  (*(v14 + 56))(v15, v14);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v16);
  *(v0 + 144) = v13;
  v18 = *(v17 + 8);
  ParkingHandleIntentStrategy = lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingBaseRCHStrategy and conformance RetrieveParkingBaseRCHStrategy, type metadata accessor for RetrieveParkingBaseRCHStrategy);
  v18(v0 + 144, v22, v25, v26, ParkingBaseRCHStrategy, ParkingHandleIntentStrategy, v16, v17);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v28 + 8))(v22, v24);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in RetrieveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  v5 = *(*(ParkingLocationBase - 8) + 64);
  __chkstk_darwin(ParkingLocationBase);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo31INRetrieveParkingLocationIntentCSo0fghI8ResponseCGMR);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v7);
}

uint64_t RetrieveParkingLocationBaseFlow.deinit()
{
  outlined destroy of RetrieveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper));
  return v0;
}

uint64_t RetrieveParkingLocationBaseFlow.__deallocating_deinit()
{
  outlined destroy of RetrieveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance RetrieveParkingLocationBaseFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance RetrieveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RetrieveParkingLocationBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a3 + 16) = OS_os_log.init(subsystem:category:)();
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v11, a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper);
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t specialized RetrieveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ParkingLocationBaseFlow = type metadata accessor for RetrieveParkingLocationBaseFlow(0);
  v14 = *(ParkingLocationBaseFlow + 48);
  v15 = *(ParkingLocationBaseFlow + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return specialized RetrieveParkingLocationBaseFlow.init(flowHelper:intent:)(v12, a2, v16, a4, a5);
}

uint64_t outlined init with copy of RetrieveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  (*(*(ParkingLocationBase - 8) + 16))(a2, a1, ParkingLocationBase);
  return a2;
}

uint64_t outlined assign with take of RetrieveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  (*(*(ParkingLocationBase - 8) + 40))(a2, a1, ParkingLocationBase);
  return a2;
}

uint64_t outlined destroy of RetrieveParkingLocationBaseFlow.State(uint64_t a1)
{
  ParkingLocationBase = type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  (*(*(ParkingLocationBase - 8) + 8))(a1, ParkingLocationBase);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for RetrieveParkingLocationBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow, type metadata accessor for RetrieveParkingLocationBaseFlow);
  result = lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow, type metadata accessor for RetrieveParkingLocationBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_60D4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for RetrieveParkingLocationBaseFlow()
{
  result = type metadata accessor for RetrieveParkingLocationBaseFlow.State(319);
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

void type metadata completion function for RetrieveParkingLocationBaseFlow.State()
{
  type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntent_ptr);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>()
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INRetrieveParkingLocationIntentResponse, INRetrieveParkingLocationIntentResponse_ptr);
    v0 = type metadata accessor for RCHFlowResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RCHFlowResult<INRetrieveParkingLocationIntent, INRetrieveParkingLocationIntentResponse>);
    }
  }
}

unint64_t EndNavigationFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of EndNavigationFlow.State(v1);
  return v1;
}

unint64_t outlined copy of EndNavigationFlow.State(unint64_t result)
{
  if (result >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t EndNavigationFlow.flowState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  return outlined consume of EndNavigationFlow.State(v3);
}

unint64_t outlined consume of EndNavigationFlow.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t EndNavigationFlow.checkNavigation.getter()
{
  swift_beginAccess();
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t EndNavigationFlow.checkNavigation.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void *EndNavigationFlow.__allocating_init(with:checkNavigation:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized EndNavigationFlow.init(with:checkNavigation:)(v12, a2, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v14;
}

void *EndNavigationFlow.init(with:checkNavigation:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized EndNavigationFlow.init(with:checkNavigation:)(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v14;
}

uint64_t EndNavigationFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 192))(v2, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties);
}

uint64_t EndNavigationFlow.executeState()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(EndNavigationFlow.executeState(), 0, 0);
}

uint64_t EndNavigationFlow.executeState()()
{
  v33 = v0;
  v1 = (*(**(v0 + 40) + 120))();
  v2 = *(v0 + 40);
  switch(v1)
  {
    case 0:
      v14 = *(*v2 + 216);
      v31 = (v14 + *v14);
      v15 = v14[1];
      v16 = swift_task_alloc();
      *(v0 + 48) = v16;
      *v16 = v0;
      v16[1] = AnswerETAFlow.executeState();
      v6 = *(v0 + 32);
      v17 = *(v0 + 40);
      v8 = v31;

      return v8(v6);
    case 1:
      v10 = *(*v2 + 240);
      v30 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 56) = v12;
      *v12 = v0;
      v12[1] = EndNavigationFlow.executeState();
      v13 = *(v0 + 40);

      return v30();
    case 2:
      v3 = *(*v2 + 232);
      v29 = (v3 + *v3);
      v4 = v3[1];
      v5 = swift_task_alloc();
      *(v0 + 72) = v5;
      *v5 = v0;
      v5[1] = AnswerETAFlow.executeState();
      v6 = *(v0 + 32);
      v7 = *(v0 + 40);
      v8 = v29;

      return v8(v6);
    default:
      v18 = v1;
      v19 = static os_log_type_t.default.getter();
      v20 = v2[2];
      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v32 = v22;
        *v21 = 136315138;
        *(v0 + 24) = v18;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v32);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_0, v20, v19, "EndNavigationFlow execute request unsupported with err: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
      }

      v26 = *(v0 + 32);
      type metadata accessor for UnsupportedRequestFlow();
      v27 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v27 + 16) = OS_os_log.init(subsystem:category:)();
      *(v0 + 16) = v27;
      lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
      static ExecuteResponse.complete<A>(next:)();
      outlined consume of EndNavigationFlow.State(v18);

      v28 = *(v0 + 8);

      return v28();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v5 = *(*v3 + 208);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v4;
  v7[1] = AnswerETAFlow.executeState();
  v8 = v1[5];
  v9 = v1[4];

  return v11(v9);
}

uint64_t EndNavigationFlow.preChecks()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(EndNavigationFlow.preChecks(), 0, 0);
}

uint64_t EndNavigationFlow.preChecks()()
{
  (*(**(v0 + 192) + 168))();
  if ((*(v1 + 8))())
  {
    v2 = *(v0 + 184);
    (*(**(v0 + 192) + 128))(1);
    static ExecuteResponse.ongoing(requireInput:)();
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 192);
    v8 = v7[3];
    *(v0 + 40) = &type metadata for NavigationControl;
    *(v0 + 48) = &protocol witness table for NavigationControl;
    *(v0 + 16) = 0;
    v9 = *(*v7 + 144);
    v10 = (*v7 + 144) & 0xFFFFFFFFFFFFLL | 0x722A000000000000;
    *(v0 + 240) = v9;
    *(v0 + 248) = v10;
    v9();
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
    v13 = (*(v12 + 80))(v11, v12);
    *(v0 + 256) = v13;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v14 = *(*v8 + 112);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 264) = v16;
    *v16 = v0;
    v16[1] = EndNavigationFlow.preChecks();
    v17 = *(v0 + 232);

    return v18(v17, v0 + 16, v13);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = EndNavigationFlow.preChecks();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = EndNavigationFlow.preChecks();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 240))();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 136), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static os_log_type_t.error.getter();
  v4 = v2[2];
  os_log(_:dso:log:_:_:)();
  v5 = *(*v2 + 128);
  swift_errorRetain();
  v5(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v7 = v0[28];
  v6 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t EndNavigationFlow.handleDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(EndNavigationFlow.handleDialog(), 0, 0);
}

uint64_t EndNavigationFlow.handleDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  v0[5] = &type metadata for NavigationControl;
  v0[6] = &protocol witness table for NavigationControl;
  v0[2] = 2;
  v3 = *(*v1 + 144);
  v4 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x722A000000000000;
  v0[30] = v3;
  v0[31] = v4;
  v3();
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[32] = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v8 = *(*v2 + 112);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = EndNavigationFlow.handleDialog();
  v11 = v0[29];

  return (v13)(v11, v0 + 2, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = EndNavigationFlow.handleDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = EndNavigationFlow.handleDialog();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 240))();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 136), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static os_log_type_t.error.getter();
  v4 = v2[2];
  os_log(_:dso:log:_:_:)();
  v5 = *(*v2 + 128);
  swift_errorRetain();
  v5(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v7 = v0[28];
  v6 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t EndNavigationFlow.endNavigation()()
{
  *(v1 + 104) = v0;
  return _swift_task_switch(EndNavigationFlow.endNavigation(), 0, 0);
}

{
  v1 = v0[13];
  v2 = [objc_allocWithZone(SALocalSearchNavigationEnd) init];
  v0[14] = v2;
  (*(*v1 + 144))();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v8 = v0;
  v8[1] = EndNavigationFlow.endNavigation();

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v5, v9, v6);
}

{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  if (v2)
  {
    static os_log_type_t.default.getter();
    v6 = v4[2];
    v7 = 2;
    os_log(_:dso:log:_:_:)();
    v8 = v5;
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v7 = swift_allocError();
    *v9 = xmmword_B9350;
    *(v9 + 16) = 3;
    v8 = v3;
    v3 = v5;
  }

  (*(*v4 + 128))(v7);

  v10 = v0[1];

  return v10();
}

{
  v16 = v0;
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = static os_log_type_t.error.getter();
  v3 = *(v1 + 16);
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v0[12] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v2, "Ace Command submission failed with error: %s ", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[17];
  v11 = v0[14];
  v12 = *(*v0[13] + 128);
  swift_errorRetain();
  v12(v10);

  v13 = v0[1];

  return v13();
}

uint64_t EndNavigationFlow.endNavigation()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = EndNavigationFlow.endNavigation();
  }

  else
  {
    v5 = EndNavigationFlow.endNavigation();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t EndNavigationFlow.deinit()
{
  v1 = *(v0 + 24);

  outlined consume of EndNavigationFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  return v0;
}

uint64_t EndNavigationFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  outlined consume of EndNavigationFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance EndNavigationFlow@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 120))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance EndNavigationFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance EndNavigationFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EndNavigationFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EndNavigationFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

void *specialized EndNavigationFlow.init(with:checkNavigation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  a4[2] = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v12 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v12 + 32) = OS_os_log.init(subsystem:category:)();
  *(v12 + 16) = 0;
  a4[3] = v12;
  a4[4] = 0;
  a4[10] = a2;
  a4[11] = a3;
  outlined init with copy of DeviceState(v16, (a4 + 5));
  static os_log_type_t.default.getter();
  v14 = a4[2];
  os_log(_:dso:log:_:_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return a4;
}

uint64_t sub_63524()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t instantiation function for generic protocol witness table for EndNavigationFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(&lazy protocol witness table cache variable for type EndNavigationFlow and conformance EndNavigationFlow, a2, type metadata accessor for EndNavigationFlow);
  result = lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(&lazy protocol witness table cache variable for type EndNavigationFlow and conformance EndNavigationFlow, v3, type metadata accessor for EndNavigationFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_63678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_636C4(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  outlined copy of EndNavigationFlow.State(*a1);
  return v3(v2);
}

uint64_t sub_637C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin013EndNavigationB0C5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StandardMapData.CodingKeys()
{
  v1 = 0x656475746974616CLL;
  if (*v0 != 1)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StandardMapData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized StandardMapData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StandardMapData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

void protocol witness for Decodable.init(from:) in conformance StandardMapData(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = specialized StandardMapData.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StandardMapData(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return StandardMapData.encode(to:)(a1);
}

uint64_t StandardMapData.makeAppPunchout(idiom:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = VRXIdiom.isWatchOS.getter();
  v10 = StandardMapData.makePunchoutURI(includeLabel:)((v9 & 1) == 0, a4, a5, a1, a2);

  return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)(v10);
}