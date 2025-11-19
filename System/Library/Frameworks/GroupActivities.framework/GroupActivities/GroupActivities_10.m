uint64_t specialized static SpatialTemplateSeatElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_38;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  v6 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (LOBYTE(v5) != LOBYTE(v4))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 80);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (*(a2 + 80))
    {
      goto LABEL_38;
    }

    v8 = *(a1 + 48);
    v9 = *(a2 + 48);
    v10 = v4 == v5 && *(a1 + 56) == *(a2 + 56);
    if (!v10 || *(a1 + 64) != *(a2 + 64))
    {
      goto LABEL_38;
    }
  }

  outlined init with copy of URL?(a1 + 88, &v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v19)
  {
    outlined init with take of Transferable(&v18, v25);
  }

  else
  {
    outlined destroy of NSObject?(&v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v25, 0, sizeof(v25));
    v26 = 0;
  }

  outlined init with copy of URL?(a2 + 88, &v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v19)
  {
    outlined init with take of Transferable(&v18, v23);
  }

  else
  {
    outlined destroy of NSObject?(&v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v23, 0, sizeof(v23));
    v24 = 0;
  }

  outlined init with copy of URL?(v25, &v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(v23, &v20, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!v19)
  {
    outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v21 + 1))
    {
      outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_37;
  }

  outlined init with copy of URL?(&v18, v17, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v21 + 1))
  {
    outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v17);
LABEL_37:
    outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR);
LABEL_38:
    v13 = 0;
    return v13 & 1;
  }

  v15[0] = v20;
  v15[1] = v21;
  v16 = v22;
  v13 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v17, v15);
  outlined destroy of AnySpatialTemplateRole(v15);
  outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v17);
  outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  return v13 & 1;
}

BOOL specialized static SpatialTemplateElementDirection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      v6 = *(a1 + 16);
      v7 = *(a2 + 16);
      v8 = v2 == v3 && *(a1 + 24) == *(a2 + 24);
      if (v8 && *(a1 + 32) == *(a2 + 32))
      {
        return 1;
      }
    }

    return 0;
  }

  if (LOBYTE(v3) != LOBYTE(v2))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 48);
  }

  return (v5 & 1) != 0;
}

void SPVector3DMake(double a1@<D0>, double a2@<D1>, double a3@<D2>, double *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

unint64_t instantiation function for generic protocol witness table for SpatialTemplateSeatElement(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement;
  if (!lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement;
  if (!lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition);
  }

  return result;
}

__n128 __swift_memcpy97_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _SpatialTemplateElementOutput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for _SpatialTemplateElementOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplateSeatElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t storeEnumTagSinglePayload for SpatialTemplateSeatElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_16(uint64_t a1, uint64_t a2)
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

uint64_t GroupSession.showNotice(_:)(uint64_t a1)
{
  v2 = v1;
  v56 = *v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for GroupSessionEvent();
  v62 = *(v17 - 8);
  v18 = *(v62 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.default);
  v55 = a1;
  outlined init with copy of GroupSessionEvent(a1, v23, type metadata accessor for GroupSessionEvent);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v51 = v26;
    v52 = v5;
    v53 = v4;
    v27 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v27 = 136315394;

    v28 = GroupSession.description.getter();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    outlined init with copy of GroupSessionEvent(v23, v16, type metadata accessor for GroupSessionEvent);
    v32 = v62;
    (*(v62 + 56))(v16, 0, 1, v17);
    outlined init with copy of URL?(v16, v14, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
    if ((*(v32 + 48))(v14, 1, v17) == 1)
    {
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v35 = v14;
      v36 = v61;
      outlined init with take of GroupSessionEvent(v35, v61, type metadata accessor for GroupSessionEvent);
      outlined init with copy of GroupSessionEvent(v36, v54, type metadata accessor for GroupSessionEvent);
      v34 = String.init<A>(reflecting:)();
      v33 = v37;
      outlined destroy of GroupSessionEvent(v36, type metadata accessor for GroupSessionEvent);
    }

    v5 = v52;
    outlined destroy of GroupSessionEvent?(v16);
    outlined destroy of GroupSessionEvent(v23, type metadata accessor for GroupSessionEvent);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, aBlock);

    *(v27 + 14) = v38;
    _os_log_impl(&dword_1AEE80000, v25, v51, "Application posted event on %s event: %s", v27, 0x16u);
    v39 = v50;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v39, -1, -1);
    MEMORY[0x1B2715BA0](v27, -1, -1);

    v4 = v53;
  }

  else
  {

    outlined destroy of GroupSessionEvent(v23, type metadata accessor for GroupSessionEvent);
  }

  v40 = *(v2 + *(*v2 + 296));
  v41 = v61;
  outlined init with copy of GroupSessionEvent(v55, v61, type metadata accessor for GroupSessionEvent);
  v42 = (*(v62 + 80) + 40) & ~*(v62 + 80);
  v43 = swift_allocObject();
  v44 = v56;
  v43[2] = *(v56 + 80);
  v43[3] = *(v44 + 88);
  v43[4] = v2;
  outlined init with take of GroupSessionEvent(v41, v43 + v42, type metadata accessor for GroupSessionEvent);
  aBlock[4] = partial apply for closure #1 in GroupSession.showNotice(_:);
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9;
  v45 = _Block_copy(aBlock);

  v46 = v57;
  static DispatchQoS.unspecified.getter();
  v63 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v47 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v46, v47, v45);
  _Block_release(v45);
  (*(v5 + 8))(v47, v4);
  (*(v58 + 8))(v46, v60);
}

uint64_t GroupSessionEvent.init(originator:avCommand:rate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v58 - v10;
  v12 = *MEMORY[0x1E69879B0];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
    goto LABEL_14;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_15:
    if (a3)
    {
      [a3 doubleValue];
      if (v31 <= 0.0)
      {
        if (one-time initialization token for pause != -1)
        {
          swift_once();
        }

        v32 = &static GroupSessionEvent.Action.pause;
      }

      else
      {
        if (one-time initialization token for play != -1)
        {
          swift_once();
        }

        v32 = &static GroupSessionEvent.Action.play;
      }

      v37 = *(v32 + 2);
      v38 = *(v32 + 3);
      v40 = *v32;
      v39 = *(v32 + 1);
      goto LABEL_28;
    }

    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.playback);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1AEE80000, v34, v35, "Failed to get rate for setRate command", v36, 2u);
      MEMORY[0x1B2715BA0](v36, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v19 = *MEMORY[0x1E69879B8];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
LABEL_14:

    goto LABEL_15;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_15;
  }

  v26 = *MEMORY[0x1E69879C0];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {

LABEL_32:
    if (one-time initialization token for seek != -1)
    {
      swift_once();
    }

    v39 = *(&static GroupSessionEvent.Action.seek + 1);
    v40 = static GroupSessionEvent.Action.seek;
    v37 = qword_1EB61AAE8;
    v38 = unk_1EB61AAF0;
    v47 = a3;
    a3 = a2;
    a2 = v47;
LABEL_28:

    v41 = type metadata accessor for URL();
    (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
    outlined init with take of GroupSessionEvent(a1, a4, type metadata accessor for Participant);
    v42 = type metadata accessor for GroupSessionEvent();
    v43 = (a4 + *(v42 + 20));
    *v43 = v40;
    v43[1] = v39;
    v43[2] = v37;
    v43[3] = v38;
    outlined init with take of URL?(v11, a4 + *(v42 + 24));
    return (*(*(v42 - 8) + 56))(a4, 0, 1, v42);
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v46)
  {
    goto LABEL_32;
  }

  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.playback);
  v49 = a2;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58 = v49;
    v59 = v53;
    *v52 = 136315138;
    type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand(0);
    v54 = v49;
    v55 = String.init<A>(reflecting:)();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v59);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_1AEE80000, v50, v51, "Unknown avCommand %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1B2715BA0](v53, -1, -1);
    MEMORY[0x1B2715BA0](v52, -1, -1);
  }

  else
  {
  }

LABEL_30:
  outlined destroy of GroupSessionEvent(a1, type metadata accessor for Participant);
  v45 = type metadata accessor for GroupSessionEvent();
  return (*(*(v45 - 8) + 56))(a4, 1, 1, v45);
}

uint64_t GroupSessionEvent.action.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupSessionEvent() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t GroupSessionEvent.init(originator:action:url:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of GroupSessionEvent(a1, a4, type metadata accessor for Participant);
  v7 = type metadata accessor for GroupSessionEvent();
  v8 = (a4 + *(v7 + 20));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = a4 + *(v7 + 24);

  return outlined init with take of URL?(a3, v10);
}

void one-time initialization function for play()
{
  static GroupSessionEvent.Action.play = 1uLL;
  qword_1EB61AAA8 = 0;
  unk_1EB61AAB0 = 0;
}

uint64_t GroupSessionEvent.Action.init(eventType:item:queueItemType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void one-time initialization function for pause()
{
  static GroupSessionEvent.Action.pause = 2uLL;
  qword_1EB61AAC8 = 0;
  unk_1EB61AAD0 = 0;
}

void one-time initialization function for seek()
{
  static GroupSessionEvent.Action.seek = 3uLL;
  qword_1EB61AAE8 = 0;
  unk_1EB61AAF0 = 0;
}

uint64_t static GroupSessionEvent.Action.skip(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 4;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = 0;
}

uint64_t GroupSessionEvent.Action.item.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static GroupSessionEvent.Action.QueueChange.Item.song(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 1;
}

uint64_t GroupSessionEvent.Action.QueueChange.Item.init(name:tuItemType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static GroupSessionEvent.Action.QueueChange.Item.container(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 2;
}

uint64_t GroupSessionEvent.Action.QueueChange.Item.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 GroupSessionEvent.Action.QueueChange.init(action:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t static GroupSessionEvent.Action.QueueChange.setUpNext(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  *a3 = a2;
  a3[1] = v4;
  a3[2] = v3;
  a3[3] = v5;
}

uint64_t GroupSessionEvent.Action.QueueChange.action.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void one-time initialization function for updatedQueue()
{
  static GroupSessionEvent.Action.updatedQueue = 0xBuLL;
  qword_1EB61AB08 = 0;
  unk_1EB61AB10 = 0;
}

uint64_t static GroupSessionEvent.Action.updatedQueue(_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

void one-time initialization function for start()
{
  static GroupSessionEvent.Action.start = 12;
  unk_1EB61AB20 = 0;
  qword_1EB61AB28 = 0;
  unk_1EB61AB30 = 0;
}

uint64_t static GroupSessionEvent.Action.react(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 7;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = 0;
}

uint64_t static GroupSessionEvent.Action.custom(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 99;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = 0;
}

void one-time initialization function for changeUpNext()
{
  static GroupSessionEvent.Action.changeUpNext = 8;
  unk_1EB61AB40 = 0;
  qword_1EB61AB48 = 0;
  unk_1EB61AB50 = 0;
}

uint64_t static GroupSessionEvent.Action.addQueueItem(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = 1;
  if (a1[2] != 1)
  {
    v4 = 2;
  }

  *a2 = 10;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v4;
}

uint64_t one-time initialization function for updateQueue()
{
  if (one-time initialization token for updatedQueue != -1)
  {
    swift_once();
  }

  static GroupSessionEvent.Action.updateQueue = static GroupSessionEvent.Action.updatedQueue;
  unk_1EB61AB68 = *&qword_1EB61AB08;
}

uint64_t static GroupSessionEvent.Action.play.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

void closure #1 in GroupSession.showNotice(_:)(uint64_t *a1, void *a2)
{
  v49 = a2;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44[-v8];
  v10 = type metadata accessor for GroupSessionEvent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v44[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44[-v17];
  GroupSession.state.getter();
  v51 = 1;
  v19 = *(v3 + 80);
  v20 = *(v3 + 88);
  v21 = static GroupSession.State.== infix(_:_:)(aBlock, &v51);
  outlined consume of GroupSession<A>.State<A>(aBlock[0]);
  if (v21)
  {
    v22 = GroupSession.hasPendingActivityUpdate.getter();
    v23 = *(*a1 + 288);
    swift_beginAccess();
    v24 = *(a1 + v23);
    v25 = XPCClient.queue.getter();

    v10 = type metadata accessor for GroupSessionEvent;
    outlined init with copy of GroupSessionEvent(v49, v18, type metadata accessor for GroupSessionEvent);
    v11 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v9 = swift_allocObject();
    v9[2] = v19;
    v9[3] = v20;
    v9[4] = a1;
    outlined init with take of GroupSessionEvent(v18, v9 + v11, type metadata accessor for GroupSessionEvent);
    *(v9 + v11 + v12) = v22;
    v18 = swift_allocObject();
    v18[2] = partial apply for closure #1 in closure #1 in GroupSession.showNotice(_:);
    v18[3] = v9;
    aBlock[4] = _sIg_Ieg_TRTA_0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_46;
    v16 = _Block_copy(aBlock);

    dispatch_sync(v25, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v46 = v18;
  v27 = v49;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Log.default);
  outlined init with copy of GroupSessionEvent(v27, v16, type metadata accessor for GroupSessionEvent);
  swift_retain_n();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v11;
    v32 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v32 = 136315394;
    outlined init with copy of GroupSessionEvent(v16, v9, type metadata accessor for GroupSessionEvent);
    (*(v11 + 56))(v9, 0, 1, v10);
    v33 = v48;
    outlined init with copy of URL?(v9, v48, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
    if ((*(v31 + 48))(v33, 1, v10) == 1)
    {
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v45 = v30;
      v36 = v46;
      outlined init with take of GroupSessionEvent(v33, v46, type metadata accessor for GroupSessionEvent);
      outlined init with copy of GroupSessionEvent(v36, v47, type metadata accessor for GroupSessionEvent);
      v35 = String.init<A>(reflecting:)();
      v34 = v37;
      LOBYTE(v30) = v45;
      outlined destroy of GroupSessionEvent(v36, type metadata accessor for GroupSessionEvent);
    }

    outlined destroy of GroupSessionEvent?(v9);
    outlined destroy of GroupSessionEvent(v16, type metadata accessor for GroupSessionEvent);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, aBlock);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    v39 = GroupSession.description.getter();
    v41 = v40;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, aBlock);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_1AEE80000, v29, v30, "Dropping event %s because session isn't joined %s", v32, 0x16u);
    v43 = v49;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v43, -1, -1);
    MEMORY[0x1B2715BA0](v32, -1, -1);
  }

  else
  {

    outlined destroy of GroupSessionEvent(v16, type metadata accessor for GroupSessionEvent);
  }
}

void closure #1 in closure #1 in GroupSession.showNotice(_:)(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in GroupSession.showNotice(_:)(void **a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = type metadata accessor for GroupSessionEvent();
  v12 = (a2 + *(v11 + 20));
  v13 = v12[1];
  if ((a3 & (*v12 == 12)) == 0)
  {
    v14 = *v12;
  }

  v15 = v12[2];
  v16 = *(a2 + *(type metadata accessor for Participant() + 24));
  v17 = v12[3];
  outlined init with copy of URL?(a2 + *(v11 + 24), v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  objc_allocWithZone(type metadata accessor for ActivitySessionEvent());

  v18 = ActivitySessionEvent.init(type:item:originatorID:queueItemType:url:)();
  [v10 postEventWithEvent_];
}

uint64_t GroupSessionEvent.activitySessionEvent(hasPendingActivityUpdate:)(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for GroupSessionEvent();
  v8 = (v1 + *(v7 + 20));
  v9 = v8[1];
  if ((a1 & (*v8 == 12)) == 0)
  {
    v10 = *v8;
  }

  v11 = v8[2];
  v12 = *(v1 + *(type metadata accessor for Participant() + 24));
  v13 = v8[3];
  outlined init with copy of URL?(v1 + *(v7 + 24), v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = objc_allocWithZone(type metadata accessor for ActivitySessionEvent());

  return ActivitySessionEvent.init(type:item:originatorID:queueItemType:url:)();
}

uint64_t GroupSession.Event.action.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of GroupSession<A>.Event.Action<A>(v4, v5);
}

uint64_t GroupSession.Event.init(originator:action:url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  outlined init with take of GroupSessionEvent(a1, a4, type metadata accessor for Participant);
  v8 = type metadata accessor for GroupSession.Event();
  v9 = (a4 + *(v8 + 36));
  *v9 = v6;
  v9[1] = v7;
  v10 = a4 + *(v8 + 40);

  return outlined init with take of URL?(a3, v10);
}

uint64_t GroupSession.postEvent(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for GroupSessionEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 80);
  v9 = *(v3 + 88);
  v10 = type metadata accessor for GroupSession.Event();
  v11 = type metadata accessor for Optional();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = *(v10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v37 - v18;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.default);
  v21 = *(v16 + 16);
  v21(v19, a1, v10);

  v22 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v41))
  {
    v23 = swift_slowAlloc();
    v39 = v7;
    v24 = v23;
    v38 = swift_slowAlloc();
    v44 = v38;
    *v24 = 136315394;

    v37 = v22;
    v25 = GroupSession.description.getter();
    v40 = a1;
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v44);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v21(v15, v19, v10);
    (*(v16 + 56))(v15, 0, 1, v10);
    v29 = >> prefix<A>(_:)(v15, v10);
    v31 = v30;
    (*(v42 + 8))(v15, v43);
    (*(v16 + 8))(v19, v10);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v44);

    *(v24 + 14) = v32;
    v33 = v37;
    _os_log_impl(&dword_1AEE80000, v37, v41, "Application posted deprecated event on %s event: %s", v24, 0x16u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v34, -1, -1);
    v35 = v24;
    v7 = v39;
    MEMORY[0x1B2715BA0](v35, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v19, v10);
  }

  GroupSession.Event.groupSessionEvent.getter(v10, v7);
  GroupSession.showNotice(_:)(v7);
  return outlined destroy of GroupSessionEvent(v7, type metadata accessor for GroupSessionEvent);
}

double GroupSession.Event.groupSessionEvent.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of GroupSessionEvent(v2, a2, type metadata accessor for Participant);
  v11[2] = *(v2 + *(a1 + 36));
  GroupSession.Event.Action.groupSessionEventAction.getter(v11);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for GroupSessionEvent();
  outlined init with copy of URL?(v3 + v6, a2 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = (a2 + *(v7 + 20));
  result = *v11;
  v10 = v11[1];
  *v8 = v11[0];
  v8[1] = v10;
  return result;
}

uint64_t GroupSession.Event.Action.groupSessionEventAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  switch(v2)
  {
    case 0uLL:
      if (one-time initialization token for play != -1)
      {
        v8 = a1;
        swift_once();
        a1 = v8;
      }

      v4 = &static GroupSessionEvent.Action.play;
      goto LABEL_13;
    case 1uLL:
      if (one-time initialization token for pause != -1)
      {
        v7 = a1;
        swift_once();
        a1 = v7;
      }

      v4 = &static GroupSessionEvent.Action.pause;
      goto LABEL_13;
    case 2uLL:
      if (one-time initialization token for seek != -1)
      {
        v9 = a1;
        swift_once();
        a1 = v9;
      }

      v4 = &static GroupSessionEvent.Action.seek;
LABEL_13:
      v5 = v4[1];
      *a1 = *v4;
      *(a1 + 16) = v5;

      goto LABEL_15;
  }

  *a1 = 4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
LABEL_15:

  return outlined copy of GroupSession<A>.Event.Action<A>(v3, v2);
}

uint64_t GroupSession.Event.init(originator:localizedDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v10 - v6;

  v8 = type metadata accessor for URL();
  v10[0] = 0;
  v10[1] = 0;
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  return GroupSession.Event.init(originator:action:url:)(a1, v10, v7, a2);
}

uint64_t type metadata accessor for GroupSessionEvent()
{
  result = type metadata singleton initialization cache for GroupSessionEvent;
  if (!type metadata singleton initialization cache for GroupSessionEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void partial apply for closure #1 in GroupSession.showNotice(_:)()
{
  v1 = *(type metadata accessor for GroupSessionEvent() - 8);
  v2 = *(v0 + 32);
  v3 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  closure #1 in GroupSession.showNotice(_:)(v2, v3);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of GroupSessionEvent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of GroupSessionEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of GroupSessionEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of GroupSessionEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of GroupSession<A>.Event.Action<A>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void type metadata completion function for GroupSessionEvent()
{
  type metadata accessor for Participant();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t getEnumTagSinglePayload for GroupSessionEvent.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for GroupSessionEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata completion function for GroupSession.Event(uint64_t a1)
{
  type metadata accessor for Participant();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    type metadata accessor for GroupSession.Event.Action();
    if (v5 <= 0x3F)
    {
      type metadata accessor for URL?();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata instantiation function for GroupSession.Event.Action()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A7SessionC5EventV6ActionOyx__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for GroupSession.Event.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for GroupSession.Event.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for GroupSession.Event.Action(void *result, int a2)
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

void partial apply for closure #1 in closure #1 in GroupSession.showNotice(_:)()
{
  v1 = *(type metadata accessor for GroupSessionEvent() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + *(v1 + 64));

  closure #1 in closure #1 in GroupSession.showNotice(_:)(v2);
}

uint64_t key path getter for SystemCoordinatorClientConnection.serverDisconnectedCallback : SystemCoordinatorClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v4);
}

uint64_t key path setter for SystemCoordinatorClientConnection.serverDisconnectedCallback : SystemCoordinatorClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8);
}

uint64_t SystemCoordinatorClientConnection.serverDisconnectedCallback.getter()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v3;
}

uint64_t SystemCoordinatorClientConnection.serverDisconnectedCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6);
}

Swift::Void __swiftcall SystemCoordinatorClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2);
  }
}

uint64_t key path getter for SystemCoordinatorClientConnection.stateCallback : SystemCoordinatorClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ();
  a2[1] = v6;
}

uint64_t key path setter for SystemCoordinatorClientConnection.stateCallback : SystemCoordinatorClientConnection(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  v6[1] = v5;
}

uint64_t SystemCoordinatorClientConnection.stateCallback.getter()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SystemCoordinatorClientConnection.stateCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SystemCoordinatorClientConnection.updateState(_:)(uint64_t a1)
{
  v3 = v1 + direct field offset for SystemCoordinatorClientConnection.stateCallback;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);

  v5(a1);
}

void @objc SystemCoordinatorClientConnection.updateState(_:)(char *a1, uint64_t a2, void *a3)
{
  v5 = &a1[direct field offset for SystemCoordinatorClientConnection.stateCallback];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = a3;
  v9 = a1;

  v7(v8);
}

id SystemCoordinatorClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemCoordinatorClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[direct field offset for SystemCoordinatorClientConnection.stateCallback];
  *v3 = InternalParticipant.participant.modify;
  *(v3 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id @objc SystemCoordinatorClientConnection.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a1[direct field offset for SystemCoordinatorClientConnection.stateCallback];
  *v4 = InternalParticipant.participant.modify;
  *(v4 + 1) = 0;
  v6.receiver = a1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t SystemCoordinatorClientConnection.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback + 8);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback));
  v2 = *(v0 + direct field offset for SystemCoordinatorClientConnection.stateCallback + 8);
}

id SystemCoordinatorClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SystemCoordinatorClientConnection()
{
  result = type metadata singleton initialization cache for SystemCoordinatorClientConnection;
  if (!type metadata singleton initialization cache for SystemCoordinatorClientConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t @objc SystemCoordinatorClientConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback + 8);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(a1 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback));
  v3 = *(a1 + direct field offset for SystemCoordinatorClientConnection.stateCallback + 8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t protocol witness for SystemCoordinatorClient.serverDisconnectedCallback.getter in conformance SystemCoordinatorClientConnection()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v3;
}

uint64_t protocol witness for SystemCoordinatorClient.serverDisconnectedCallback.setter in conformance SystemCoordinatorClientConnection(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6);
}

uint64_t protocol witness for SystemCoordinatorClient.stateCallback.getter in conformance SystemCoordinatorClientConnection()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t protocol witness for SystemCoordinatorClient.stateCallback.setter in conformance SystemCoordinatorClientConnection(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

__SecTask *NSProcessInfo.stableAppIdentifier.getter()
{
  v1 = type metadata accessor for Entitlement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = SecTaskCreateFromSelf(0);
  if (!v6)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    v13 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1AEE80000, v14, v15, "Could not create task info for process: %@", v16, 0xCu);
      outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }

    return 0;
  }

  v7 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69974B0], v1);
  v8 = _sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSS_Tt0g5(v5);
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  if (v10)
  {

    return v8;
  }

  v19 = [objc_opt_self() mainBundle];
  v20 = MEMORY[0x1B2714130](0xD00000000000001BLL, 0x80000001AF01C900);
  v21 = [v19 objectForInfoDictionaryKey_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {
    outlined destroy of NSObject?(v24, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

__SecTask *_sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSS_Tt0g5(uint64_t a1)
{
  v2 = v1;
  error[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Entitlement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  error[0] = 0;
  v21 = Entitlement.rawValue.getter();
  v22 = MEMORY[0x1B2714130](v21);

  v23 = SecTaskCopyValueForEntitlement(v2, v22, error);

  v54 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  if (swift_dynamicCast())
  {
    result = v53;
  }

  else
  {
    v49 = v18;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    v50 = *(v12 + 16);
    v50(v20, a1, v11);
    v26 = v2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v48 = v28;
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *v29 = 136315650;
      v53 = v26;
      type metadata accessor for SecTaskRef(0);
      v30 = v26;
      v31 = String.init<A>(reflecting:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v54);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = v50;
      v50(v10, v20, v11);
      (*(v12 + 56))(v10, 0, 1, v11);
      outlined init with copy of Entitlement?(v10, v8);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {
        v35 = 0xE300000000000000;
        v36 = 7104878;
      }

      else
      {
        v37 = v49;
        (*(v12 + 32))(v49, v8, v11);
        v34(v51, v37, v11);
        v36 = String.init<A>(reflecting:)();
        v35 = v38;
        (*(v12 + 8))(v37, v11);
      }

      outlined destroy of NSObject?(v10, &_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
      (*(v12 + 8))(v20, v11);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v54);

      *(v29 + 14) = v39;
      *(v29 + 22) = 2080;
      swift_beginAccess();
      if (error[0])
      {
        v52 = error[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGMd, &_ss9UnmanagedVySo10CFErrorRefaGMR);
        v40 = String.init<A>(reflecting:)();
        v42 = v41;
        v43 = v48;
      }

      else
      {
        v42 = 0xE300000000000000;
        v43 = v48;
        v40 = 7104878;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v54);

      *(v29 + 24) = v44;
      _os_log_impl(&dword_1AEE80000, v27, v43, "Task %s couldn't find entitlement %s error %s", v29, 0x20u);
      v45 = v47;
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v45, -1, -1);
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v20, v11);
    }

    result = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSb_Tt0g5(uint64_t a1)
{
  v2 = v1;
  error[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Entitlement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  error[0] = 0;
  v21 = Entitlement.rawValue.getter();
  v22 = MEMORY[0x1B2714130](v21);

  v23 = SecTaskCopyValueForEntitlement(v2, v22, error);

  v53 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  if (swift_dynamicCast())
  {
    result = v54;
  }

  else
  {
    v49 = v18;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    v50 = *(v12 + 16);
    v50(v20, a1, v11);
    v26 = v2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v48 = v28;
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *v29 = 136315650;
      v53 = v26;
      type metadata accessor for SecTaskRef(0);
      v30 = v26;
      v31 = String.init<A>(reflecting:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v54);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = v50;
      v50(v10, v20, v11);
      (*(v12 + 56))(v10, 0, 1, v11);
      outlined init with copy of Entitlement?(v10, v8);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {
        v35 = 0xE300000000000000;
        v36 = 7104878;
      }

      else
      {
        v37 = v49;
        (*(v12 + 32))(v49, v8, v11);
        v34(v51, v37, v11);
        v36 = String.init<A>(reflecting:)();
        v35 = v38;
        (*(v12 + 8))(v37, v11);
      }

      outlined destroy of NSObject?(v10, &_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
      (*(v12 + 8))(v20, v11);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v54);

      *(v29 + 14) = v39;
      *(v29 + 22) = 2080;
      swift_beginAccess();
      if (error[0])
      {
        v52 = error[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGMd, &_ss9UnmanagedVySo10CFErrorRefaGMR);
        v40 = String.init<A>(reflecting:)();
        v42 = v41;
        v43 = v48;
      }

      else
      {
        v42 = 0xE300000000000000;
        v43 = v48;
        v40 = 7104878;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v54);

      *(v29 + 24) = v44;
      _os_log_impl(&dword_1AEE80000, v27, v43, "Task %s couldn't find entitlement %s error %s", v29, 0x20u);
      v45 = v47;
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v45, -1, -1);
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v20, v11);
    }

    result = 2;
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static Participants.only(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR);
  v4 = *(type metadata accessor for Participant() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AF00CA60;
  outlined init with copy of Participant(a1, v7 + v6);
  v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15GroupActivities11ParticipantV_Tt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of Participant(v7 + v6);
  result = swift_deallocClassInstance();
  *a2 = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for Participants(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Participants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t GroupSessionMessenger.Messages.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v26 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Publishers.PrefetchStrategy();
  v23 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupSessionMessenger.MessageStream();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for Publishers.Buffer();
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v31 = *v26;
  (*(v8 + 104))(v11, *MEMORY[0x1E695BD28], v7);
  v16 = v3;
  v17 = *(v3 + 104);
  v18 = v27;
  v17(v6, *MEMORY[0x1E695BD40], v27);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v16 + 8))(v6, v18);
  (*(v8 + 8))(v11, v23);

  swift_getWitnessTable();
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v25 + 8))(v15, v12);
  v30 = v19;
  type metadata accessor for GroupSessionMessenger.MessageContext();
  swift_getTupleTypeMetadata2();
  v20 = type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  result = _PublisherElements.init(_:)(&v30, v20, &v31);
  *v29 = v31;
  return result;
}

uint64_t GroupSessionMessenger.Messages.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *v2;
  v4 = *(a1 + 16);
  type metadata accessor for GroupSessionMessenger.MessageContext();
  swift_getTupleTypeMetadata2();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v5 = type metadata accessor for _PublisherElements();
  result = _PublisherElements.makeAsyncIterator()(v5);
  *a2 = result;
  return result;
}

uint64_t GroupSessionMessenger.Messages.Iterator.baseIterator.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GroupSessionMessenger.Messages.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  v7 = *(a2 + 16);
  type metadata accessor for GroupSessionMessenger.MessageContext();
  swift_getTupleTypeMetadata2();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v8 = type metadata accessor for _PublisherElements.Iterator();
  *v6 = v4;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return _PublisherElements.Iterator.next()(a1, v8);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionMessenger.Messages<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return GroupSessionMessenger.Messages.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSessionMessenger.Messages<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GroupSessionMessenger.Messages.makeAsyncIterator()(a1, a2);
  v3 = *v2;
}

uint64_t GroupSessionMessenger.send<A>(_:to:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  *(v4 + 16) = v4;
  *(v4 + 24) = GroupSessionMessenger.send<A>(_:to:);
  v8 = swift_continuation_init();
  closure #1 in GroupSessionMessenger.send<A>(_:to:)(v8, v3, a1, v7, a3);

  return MEMORY[0x1EEE6DEC8](v4 + 16);
}

uint64_t closure #1 in GroupSessionMessenger.send<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  GroupSessionMessenger.send<A>(_:to:completion:)(a3, &v10, partial apply for closure #1 in closure #1 in GroupSessionMessenger.send<A>(_:to:), v8, a5);
}

uint64_t GroupSessionMessenger.send(_:to:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v12 = v3;
  v6 = v3 + 16;
  v7 = *a3;
  *(v3 + 16) = v3;
  *(v3 + 24) = GroupSessionMessenger.send(_:to:);
  v8 = swift_continuation_init();
  v11 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  GroupSessionMessenger.send(_:to:completion:)(a1, a2, &v11, partial apply for closure #1 in closure #1 in GroupSessionMessenger.send(_:to:), v9);

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t GroupSessionMessenger.send(_:to:)()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t closure #1 in closure #1 in GroupSessionMessenger.send<A>(_:to:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v4 = swift_allocError();
    *v5 = a1;
    v6 = a1;

    return MEMORY[0x1EEE6DEE8](a2, v4);
  }

  else
  {

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t GroupSessionMessenger.messages(of:)@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Publishers.PrefetchStrategy();
  v19 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMd, &_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMR);
  v12 = *(v11 - 8);
  v20 = v11;
  v21 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  GroupSessionMessenger.receive(_:)(&v24);
  v23 = v24;
  (*(v7 + 104))(v10, *MEMORY[0x1E695BD28], v6);
  (*(v2 + 104))(v5, *MEMORY[0x1E695BD40], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type GroupSessionMessenger.MessageStream<Data> and conformance GroupSessionMessenger.MessageStream<A>, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMR);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v19);

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<GroupSessionMessenger.MessageStream<Data>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMd, &_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMR);
  v16 = v20;
  v17 = Publisher.eraseToAnyPublisher()();
  result = (*(v21 + 8))(v15, v16);
  *v22 = v17;
  return result;
}

uint64_t type metadata instantiation function for GroupSessionMessenger.Messages()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for GroupSessionMessenger.Messages.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int TopicManager.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t TopicManager.ServiceName.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x627553627550;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000010;
}

uint64_t TopicManager.conversationClientsByGroupUUID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TopicManager.ServiceName(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001AF01A370;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001AF01A370;
  }

  else
  {
    v6 = 0x80000001AF01A390;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x627553627550;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x80000001AF01A390;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x627553627550;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TopicManager.ServiceName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TopicManager.ServiceName()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TopicManager.ServiceName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TopicManager.ServiceName@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TopicManager.ServiceName.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TopicManager.ServiceName(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x80000001AF01A370;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001AF01A390;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x627553627550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TopicManager.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities12TopicManager_provider;
  swift_beginAccess();
  return outlined init with copy of Transferable(v1 + v3, a1);
}

uint64_t TopicManager.provider.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities12TopicManager_provider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of Transferable(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TopicManager.__allocating_init(provider:featureFlags:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  ObjectType = swift_getObjectType();
  v9 = specialized TopicManager.__allocating_init(provider:featureFlags:)(v7, a2, v2, v5, ObjectType, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t TopicManager.init(provider:featureFlags:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  ObjectType = swift_getObjectType();
  v13 = specialized TopicManager.init(provider:featureFlags:)(v10, a2, v2, v5, ObjectType, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

uint64_t closure #1 in TopicManager.init(provider:featureFlags:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  v4 = *a1;
  return Lock.withLock<A>(_:)();
}

uint64_t closure #1 in closure #1 in TopicManager.init(provider:featureFlags:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized _NativeDictionary.filter(_:)(v1, partial apply for closure #1 in closure #1 in closure #1 in TopicManager.init(provider:featureFlags:));

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

BOOL closure #1 in closure #1 in closure #1 in TopicManager.init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 8 * v5);
  v8 = [v7 state];
  v9 = v8 == 3;
  if (v8 == 3)
  {
    (*(*a2 + 184))(v7);
  }

  return v9;
}

void *TopicManager.conversationClient(groupUUID:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  Lock.assertOwned()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v15[0] + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v15[0] + 56) + 8 * v4);
  }

  else
  {
    type metadata accessor for TopicManager.ConversationClient();
    v6 = swift_allocObject();
    v6[2] = MEMORY[0x1E69E7CC8];
    v7 = objc_opt_self();

    v6[3] = [v7 weakObjectsHashTable];
    v6[4] = v3;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v8 = static Published.subscript.modify();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a1, isUniquelyReferenced_nonNull_native);
  *v10 = v14;
  v8(v15, 0);

  return v6;
}

void *TopicManager.ConversationClient.__allocating_init(lock:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x1E69E7CC8];
  v2[3] = [objc_opt_self() weakObjectsHashTable];
  v2[4] = a1;
  return v2;
}

uint64_t TopicManager.firstConversation(for:with:)(uint64_t a1, int a2)
{
  v3 = v2;
  v23 = a2;
  v22 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMR);
  v27 = *(v25 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v22 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMR);
  v26 = *(v24 - 8);
  v11 = *(v26 + 64);
  v12 = MEMORY[0x1EEE9AC00](v24);
  v14 = &v22 - v13;
  (*(*v2 + 192))(v29, v12);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v28 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
  (*(v5 + 16))(v7, v22, v4);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = v15 + v6;
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  (*(v5 + 32))(v17 + v15, v7, v4);
  *(v17 + v16) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  Publisher.compactMap<A>(_:)();

  __swift_destroy_boxed_opaque_existential_0(v29);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMR);
  v18 = v25;
  Publisher.first()();
  (*(v27 + 8))(v10, v18);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMR);
  v19 = v24;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v26 + 8))(v14, v19);
  return v20;
}

uint64_t closure #1 in TopicManager.firstConversation(for:with:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38TUConversationActivitySessionContainerCSgMd, &_sSo38TUConversationActivitySessionContainerCSgMR);
  return Lock.withLock<A>(_:)();
}

void closure #1 in closure #1 in TopicManager.firstConversation(for:with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v106) = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v92 - v18;
  if (!*(a1 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v21 & 1) == 0))
  {
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.topicManager);
    (*(v10 + 16))(v19, a2, v9);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v105 = v4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v108[0] = v28;
      *v27 = 136315138;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v9;
      v31 = a4;
      v33 = v32;
      (*(v10 + 8))(v19, v30);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v33, v108);
      a4 = v31;

      *(v27 + 4) = v34;
      _os_log_impl(&dword_1AEE80000, v24, v25, "No conversation exists for group=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B2715BA0](v28, -1, -1);
      MEMORY[0x1B2715BA0](v27, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v19, v9);
    }

    goto LABEL_17;
  }

  v104 = v10;
  v22 = *(*(a1 + 56) + 8 * v20);
  if ([v22 state] != 3 || !objc_msgSend(v22, sel_localParticipantIdentifier))
  {
    if (one-time initialization token for topicManager == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

  if (v106 && v106 == 1)
  {

    goto LABEL_18;
  }

  v97 = 0x80000001AF01A370;
  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_18;
  }

  v51 = [v22 virtualParticipants];
  v52 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v102 = v52;
  v53 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = v53;
  v105 = v4;
  v93 = v53;
  v94 = a4;
  if ((v53 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v5 = v108[0];
    v55 = v108[1];
    v56 = v108[2];
    a4 = v108[3];
    v57 = v108[4];
  }

  else
  {
    v58 = -1 << *(v53 + 32);
    v55 = v53 + 56;
    v59 = ~v58;
    v60 = -v58;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v57 = v61 & *(v54 + 56);

    v56 = v59;
    a4 = 0;
    v5 = v62;
  }

  v14 = v102;
  v92 = v56;
  v63 = (v56 + 64) >> 6;
  v95 = 0x80000001AF01A390;
  v96 = v63;
  v98 = v5;
  v99 = v55;
  v100 = a4;
  if (v5 < 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v64 = a4;
  v65 = v57;
  if (!v57)
  {
    while (1)
    {
      a4 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (a4 >= v63)
      {
        goto LABEL_50;
      }

      v65 = *(v55 + 8 * a4);
      ++v64;
      if (v65)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_69:
    swift_once();
LABEL_14:
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.topicManager);
    v36 = v104;
    (*(v104 + 16))(v14, a2, v9);
    v37 = v22;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v105 = v5;
      v41 = v40;
      v103 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v108[0] = v106;
      *v41 = 136315394;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v102) = v39;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = a4;
      v45 = v44;
      (*(v36 + 8))(v14, v9);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, v108);
      a4 = v43;

      *(v41 + 4) = v46;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v37;
      v47 = v103;
      *v103 = v37;
      v48 = v37;
      _os_log_impl(&dword_1AEE80000, v38, v102, "Conversation for group=%s is not yet established: %@", v41, 0x16u);
      outlined destroy of NSObject?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v47, -1, -1);
      v49 = v106;
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x1B2715BA0](v49, -1, -1);
      MEMORY[0x1B2715BA0](v41, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v14, v9);
    }

LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

LABEL_31:
  v101 = v57;
  v103 = ((v65 - 1) & v65);
  v66 = *(*(v5 + 48) + ((a4 << 9) | (8 * __clz(__rbit64(v65)))));
  if (v66)
  {
    while (1)
    {
      v68 = [v66 pluginName];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      if (v106)
      {
        v72 = v106 == 1 ? 0xD000000000000013 : 0xD000000000000010;
        v73 = v106 == 1 ? v97 : v95;
      }

      else
      {
        v73 = 0xE600000000000000;
        v72 = 0x627553627550;
      }

      if (v69 == v72 && v71 == v73)
      {
        break;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v75)
      {
        goto LABEL_63;
      }

      v14 = v102;
      v57 = v103;
      v5 = v98;
      v55 = v99;
      v63 = v96;
      v100 = a4;
      if ((v98 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v101 = v57;
      v67 = __CocoaSet.Iterator.next()();
      if (v67)
      {
        v107 = v67;
        swift_dynamicCast();
        v66 = v109;
        v103 = v101;
        if (v109)
        {
          continue;
        }
      }

      goto LABEL_50;
    }

LABEL_63:
    outlined consume of [UUID : Conversation].Iterator._Variant();

    goto LABEL_64;
  }

LABEL_50:
  outlined consume of [UUID : Conversation].Iterator._Variant();

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Log.topicManager);
  v77 = v104;
  (*(v104 + 16))(v17, a2, v9);
  v78 = v22;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v79, v80))
  {

    (*(v77 + 8))(v17, v9);
    v22 = 0;
LABEL_64:
    a4 = v94;
    goto LABEL_18;
  }

  v81 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  v103 = swift_slowAlloc();
  v109 = v103;
  *v81 = 136315650;
  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v82 = dispatch thunk of CustomStringConvertible.description.getter();
  v84 = v83;
  (*(v77 + 8))(v17, v9);
  v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v109);

  *(v81 + 4) = v85;
  *(v81 + 12) = 2080;
  if (v106)
  {
    if (v106 == 1)
    {
      v86 = 0xD000000000000013;
    }

    else
    {
      v86 = 0xD000000000000010;
    }

    if (v106 == 1)
    {
      v87 = v97;
    }

    else
    {
      v87 = v95;
    }
  }

  else
  {
    v87 = 0xE600000000000000;
    v86 = 0x627553627550;
  }

  v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v109);

  *(v81 + 14) = v88;
  *(v81 + 22) = 2112;
  *(v81 + 24) = v78;
  v89 = v102;
  *v102 = v78;
  v90 = v78;
  _os_log_impl(&dword_1AEE80000, v79, v80, "Conversation for group=%s is not yet ready to establish a (%s) plugin connection: %@", v81, 0x20u);
  outlined destroy of NSObject?(v89, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B2715BA0](v89, -1, -1);
  v91 = v103;
  swift_arrayDestroy();
  MEMORY[0x1B2715BA0](v91, -1, -1);
  MEMORY[0x1B2715BA0](v81, -1, -1);

  v22 = 0;
  a4 = v94;
LABEL_18:
  *a4 = v22;
}

uint64_t closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v23 = a2;
  v27 = a4;
  v25 = type metadata accessor for UUID();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = TopicManager.conversationClient(groupUUID:)(a1);
  v10 = swift_allocObject();
  v24 = v10;
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v25;
  (*(v7 + 16))(v9, a1, v25);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 2) = v12;
  *(v15 + 3) = v16;
  *(v15 + 4) = a3;
  (*(v7 + 32))(&v15[v14], v9, v13);
  v17 = type metadata accessor for AttachmentLedgerTopic(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();

  v20 = AttachmentLedgerTopic.init(name:retainRefOnStart:pluginGenerator:)(v16, a3, partial apply for closure #1 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:), v11, partial apply for closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:), v15);

  *v27 = v20;
  return result;
}

uint64_t closure #1 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = (*(*Strong + 216))(a2, a3);

  return v6;
}

uint64_t closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v43 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) sharePlayAttachmentLedgerEnabled])
    {
      v44 = (*(*v19 + 304))(a5, a3, v43, a1, *(a1 + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopic, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
      Publisher.map<A>(_:)();

      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<PluginAttachmentLedgerTopic, Error>, PluginAttachmentLedgerTopicProvider> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMR);
      v20 = Publisher.eraseToAnyPublisher()();

      (*(v14 + 8))(v17, v13);
    }

    else
    {
      if (one-time initialization token for topicManager != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.topicManager);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1AEE80000, v22, v23, "FeatureFlag is not enabled so we can't bootstrap a PluginAttachmentLedgerTopic", v24, 2u);
        MEMORY[0x1B2715BA0](v24, -1, -1);
      }

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = PassthroughSubject.init()();
      lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
      v29 = swift_allocError();
      *v30 = 0;
      v44 = v29;
      PassthroughSubject.send(completion:)();

      v44 = v28;
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<PluginAttachmentLedgerTopicProvider, Error> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR);
      v20 = Publisher.eraseToAnyPublisher()();
    }

    return v20;
  }

  else
  {
    v32 = v9;
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.topicManager);
    (*(v9 + 16))(v12, a5, v8);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136315394;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, v43, &v44);
      *(v36 + 12) = 2080;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v32 + 8))(v12, v8);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v44);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_1AEE80000, v34, v35, "TopicManager is no longer available, topic=%s, group=%s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v37, -1, -1);
      MEMORY[0x1B2715BA0](v36, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = type metadata accessor for PluginAttachmentLedgerTopic();
  a2[4] = lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic, MEMORY[0x1E6997690]);
  *a2 = v3;
}

uint64_t TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), const char *a5, void (*a6)(void))
{
  v10 = v6;
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.topicManager);

  v14 = Logger.logObject.getter();
  v15 = a4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a5;
    v18 = swift_slowAlloc();
    v22 = v18;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v22);
    _os_log_impl(&dword_1AEE80000, v14, v15, v17, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B2715BA0](v18, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  v19 = *(v10 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  MEMORY[0x1EEE9AC00](v20);
  a6(0);
  Lock.withLock<A>(_:)();
  return v22;
}

uint64_t closure #1 in TopicManager.createTopic(groupUUID:name:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v20 = a2;
  v21 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = TopicManager.conversationClient(groupUUID:)(a1);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  v13 = v20;
  *(v12 + 3) = v20;
  *(v12 + 4) = a3;
  (*(v7 + 32))(&v12[v11], &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = type metadata accessor for Topic();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  v18 = specialized Topic.init(name:delegate:pubSubTopicGenerator:)(v13, a3, v9, partial apply for closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:), v12, v17);

  *v21 = v18;
  return result;
}

uint64_t closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v48 = a4;
  v44 = a1;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v10 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMR);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v43 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*(*Strong + 192))(v53);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    v18 = v48;
    v45 = dispatch thunk of ActivitySessionContainerProvider.topicCategory(groupUUID:name:)();
    v52 = v45;
    v19 = v46;
    (*(v7 + 16))(v12, a5, v46);
    outlined init with copy of Topic.BootstrapPubSubTopicInfo(v44, v51);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v43 = v17;
    *(v22 + 16) = v17;
    (*(v7 + 32))(v22 + v20, v12, v19);
    v23 = (v22 + v21);
    *v23 = a3;
    v23[1] = v18;
    v24 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
    v25 = v51[3];
    v24[2] = v51[2];
    v24[3] = v25;
    v26 = v51[1];
    *v24 = v51[0];
    v24[1] = v26;

    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PubSubClient.TopicCategory, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PubSubTopic, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR);
    v27 = v47;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_destroy_boxed_opaque_existential_0(v53);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<AnyPublisher<PubSubTopic, Error>, Publishers.SetFailureType<AnyPublisher<PubSubClient.TopicCategory, Never>, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMR);
    v28 = v50;
    v29 = Publisher.eraseToAnyPublisher()();

    (*(v49 + 8))(v27, v28);
    return v29;
  }

  else
  {
    v31 = v7;
    v50 = a3;
    v32 = v48;
    v33 = v46;
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.topicManager);
    (*(v7 + 16))(v10, a5, v33);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v51[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v32, v51);
      *(v37 + 12) = 2080;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v31 + 8))(v10, v33);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v51);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_1AEE80000, v35, v36, "TopicManager is no longer available, topic=%s group=%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v38, -1, -1);
      MEMORY[0x1B2715BA0](v37, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v10, v33);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.topicManager);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v15);
    _os_log_impl(&dword_1AEE80000, v8, v9, "Creating UnreliableMessenger, topic=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  v12 = *(v4 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  MEMORY[0x1EEE9AC00](v13);
  type metadata accessor for UnreliableMessenger();
  Lock.withLock<A>(_:)();
  return v15;
}

uint64_t closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v49 = a8;
  v47 = a5;
  v48 = a7;
  v46 = a6;
  v43 = a4;
  v41 = a3;
  v36 = a1;
  v45 = type metadata accessor for UUID();
  v42 = *(v45 - 8);
  v44 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UnreliableMessenger.Configuration();
  v39 = *(v53 - 8);
  v11 = v39;
  v12 = *(v39 + 64);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v15;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - v16;
  v33 = TopicManager.conversationClient(groupUUID:)(a1);
  [a2 egressMessagePayloadMaxSizeBytes];
  [a2 channelStreamMaxQueueSize];
  [a2 channelStreamMaxTries];
  v34 = a2;
  [a2 channelStreamRetryIntervalMillis];
  [a2 seqNumBufferSize];
  v38 = v17;
  UnreliableMessenger.Configuration.init(datagramPayloadMaxSizeBytes:outgoingQueueMaxSize:channelStreamMaxTries:channelStreamRetryInterval:seqNumBufferSize:)();
  v37 = type metadata accessor for UnreliableMessenger();
  (*(v11 + 16))(v15, v17, v53);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v18 = swift_allocObject();
  v32[1] = v18;
  v19 = v41;
  v18[2] = v33;
  v18[3] = v19;
  v20 = v43;
  v18[4] = v43;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v42;
  v23 = v40;
  v24 = v45;
  (*(v42 + 16))(v40, v36, v45);
  v25 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v26 = (v44 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v21;
  *(v27 + 3) = v19;
  *(v27 + 4) = v20;
  (*(v22 + 32))(&v27[v25], v23, v24);
  v28 = v34;
  *&v27[v26] = v34;
  swift_unknownObjectRetain();

  v29 = v28;
  swift_bridgeObjectRetain_n();
  v30 = UnreliableMessenger.__allocating_init(name:config:localParticipantID:delegate:dataCryptorProvider:retainRefOnStart:serviceProvider:)();
  (*(v39 + 8))(v38, v53);

  *v49 = v30;
  return result;
}

uint64_t closure #3 in closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = (*(*Strong + 264))(a4, a2, a3, a5);

    return v15;
  }

  else
  {
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.topicManager);
    (*(v10 + 16))(v13, a4, v9);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v26);
      *(v20 + 12) = 2080;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v10 + 8))(v13, v9);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v26);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1AEE80000, v18, v19, "Topic manager is no longer available, topic=%s group=%s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v21, -1, -1);
      MEMORY[0x1B2715BA0](v20, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v48 = a4;
  v45 = a3;
  v43 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMR);
  v50 = *(v52 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v43 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMR);
  v51 = *(v53 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMR);
  v46 = *(v16 - 8);
  v47 = v16;
  v17 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v43 - v18;
  v19 = *(v4 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  Lock.lock()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v54;
  if (!*(v54 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v22 & 1) == 0))
  {

    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    goto LABEL_10;
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  (*(*v23 + 152))(&v55, v24);

  if (!*(&v56 + 1))
  {
LABEL_10:
    outlined destroy of NSObject?(&v55, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMR);
    Lock.unlock()();
    v58[0] = (*(*v5 + 232))(a1, 1);
    (*(v8 + 16))(&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v34 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = v5;
    (*(v8 + 32))(v36 + v34, v10, v7);
    v37 = v48;
    *(v36 + v35) = v48;

    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34UnreliableMessengerServiceProvider_pMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<TUConversationActivitySessionContainer, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, UnreliableMessengerServiceProvider> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMR);
    v39 = v49;
    v40 = v52;
    Publisher.first()();
    (*(v50 + 8))(v13, v40);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, UnreliableMessengerServiceProvider>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMR);
    v41 = v53;
    v33 = Publisher.eraseToAnyPublisher()();
    (*(v51 + 8))(v39, v41);
    goto LABEL_11;
  }

  outlined init with take of Transferable(&v55, v58);
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.topicManager);
  v26 = v45;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v55 = v30;
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v26, &v55);
    _os_log_impl(&dword_1AEE80000, v27, v28, "Re-using existing UnreliableMessengerServiceProvider for topic=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B2715BA0](v30, -1, -1);
    MEMORY[0x1B2715BA0](v29, -1, -1);
  }

  Lock.unlock()();
  outlined init with copy of Transferable(v58, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34UnreliableMessengerServiceProvider_pMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pMR);
  v31 = v44;
  Just.init(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<UnreliableMessengerServiceProvider> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMR);
  v32 = v47;
  v33 = Publisher.eraseToAnyPublisher()();
  (*(v46 + 8))(v31, v32);
  __swift_destroy_boxed_opaque_existential_0(v58);
LABEL_11:
  Lock.assertNotOwned()();
  return v33;
}

uint64_t closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMR);
  return Lock.withLock<A>(_:)();
}

void closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25[2] && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(v25[7] + 8 * v5);

    MEMORY[0x1EEE9AC00](v8);
    (*(*v7 + 200))(partial apply for closure #1 in closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:));
    if (!v2)
    {

      return;
    }

    v9 = v2;
  }

  else
  {

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.topicManager);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1AEE80000, v11, v12, "Can't create UnreliableMessenger yet because there's no ConversationClient object", v13, 2u);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    v9 = swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.topicManager);
  v16 = v9;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v25);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1AEE80000, v17, v18, "Failed to create UnreliableMessenger due to error: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1B2715BA0](v20, -1, -1);
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  else
  {
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t closure #1 in closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*a1 + 296))(v14, a3, a4);
  result = (*(v11 + 8))(v14, v10);
  *(a5 + 40) = 1;
  return result;
}

uint64_t TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v88 = a7;
  v89 = a8;
  v90 = a6;
  v82 = a4;
  v83 = a5;
  v86 = a2;
  v87 = a3;
  v11 = type metadata accessor for PubSubClient.TopicCategory();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v74 = v13;
  v75 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMR);
  v72 = *(v73 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v19 = &v69 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMR);
  v78 = *(v80 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v69 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMR);
  v79 = *(v81 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v69 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v70 = &v69 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v69 = &v69 - v29;
  v30 = *(v8 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  Lock.lock()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = *&v91[0];
  if (!*(*&v91[0] + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v33 & 1) == 0))
  {

    goto LABEL_9;
  }

  v34 = *(*(v31 + 56) + 8 * v32);

  v36 = (*(*v34 + 160))(v35);

  if (!v36)
  {
LABEL_9:
    v71 = v30;
    Lock.unlock()();
    *&v91[0] = (*(*v9 + 232))(a1, 0);
    (*(v15 + 16))(&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
    v43 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v9;
    (*(v15 + 32))(v44 + v43, &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    type metadata accessor for PubSubClient();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<TUConversationActivitySessionContainer, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, PubSubClient> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMR);
    v45 = v76;
    v46 = v73;
    Publisher.first()();
    (*(v72 + 8))(v19, v46);
    v48 = v84;
    v47 = v85;
    v49 = v75;
    (*(v84 + 16))(v75, v82, v85);
    outlined init with copy of Transferable(v83, v91);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = (v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 47) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v87;
    *(v53 + 16) = v86;
    *(v53 + 24) = v54;
    (*(v48 + 32))(v53 + v50, v49, v47);
    outlined init with take of Transferable(v91, v53 + v51);
    v55 = (v53 + v52);
    v56 = v89;
    v57 = v88;
    *v55 = v90;
    v55[1] = v57;
    *(v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;

    swift_unknownObjectRetain();
    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, PubSubClient>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
    v58 = v77;
    v59 = v80;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v78 + 8))(v45, v59);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Future<PubSubTopic, Error>, Publishers.SetFailureType<Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, PubSubClient>>, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMR);
    v60 = v81;
    v61 = Publisher.eraseToAnyPublisher()();
    (*(v79 + 8))(v58, v60);
    goto LABEL_10;
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Log.topicManager);
  v38 = v87;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v91[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v38, v91);
    _os_log_impl(&dword_1AEE80000, v39, v40, "Creating PubSubTopic, topic=%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1B2715BA0](v42, -1, -1);
    MEMORY[0x1B2715BA0](v41, -1, -1);
  }

  Lock.unlock()();
  v63 = type metadata accessor for PubSubTopic.Configuration();
  v64 = v69;
  (*(*(v63 - 8) + 56))(v69, 1, 1, v63);
  v66 = v84;
  v65 = v85;
  v67 = v70;
  (*(v84 + 16))(v70, v82, v85);
  (*(v66 + 56))(v67, 0, 1, v65);
  outlined init with copy of Transferable(v83, v91);
  v68 = dispatch thunk of PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)();
  outlined destroy of NSObject?(v91, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  outlined destroy of NSObject?(v67, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  outlined destroy of NSObject?(v64, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  *&v91[0] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
  v61 = Publisher.eraseToAnyPublisher()();

LABEL_10:
  Lock.assertNotOwned()();
  return v61;
}

void closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v27[2] && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(v27[7] + 8 * v5);

    MEMORY[0x1EEE9AC00](v8);
    v9 = (*(*v7 + 192))(partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:));
    if (!v2)
    {
      v26 = v9;

      goto LABEL_17;
    }

    v10 = v2;
  }

  else
  {

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.topicManager);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Can't create PubSubClient yet because there's no ConversationClient object", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    v10 = swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.topicManager);
  v17 = v10;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1AEE80000, v18, v19, "Failed to create PubSubClient due to error: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {
  }

  v26 = 0;
LABEL_17:
  *a2 = v26;
}

uint64_t closure #2 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v37 = a4;
  v38 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v36 - v20;
  v36[2] = *a1;
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.topicManager);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36[0] = a7;
    v36[1] = a6;
    v26 = a8;
    v27 = v25;
    v28 = a2;
    v29 = swift_slowAlloc();
    v39[0] = v29;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, a3, v39);
    _os_log_impl(&dword_1AEE80000, v23, v24, "Creating PubSubTopic, topic=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B2715BA0](v29, -1, -1);
    v30 = v27;
    a8 = v26;
    MEMORY[0x1B2715BA0](v30, -1, -1);
  }

  v31 = type metadata accessor for PubSubTopic.Configuration();
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  v32 = type metadata accessor for PubSubClient.TopicCategory();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v17, v37, v32);
  (*(v33 + 56))(v17, 0, 1, v32);
  outlined init with copy of Transferable(v38, v39);
  v34 = dispatch thunk of PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)();
  outlined destroy of NSObject?(v39, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  result = outlined destroy of NSObject?(v21, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  *a8 = v34;
  return result;
}

NSObject *TopicManager.createPubSubClient(from:)(void *a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = a1;
  v54 = &v53 - v9;
  v10 = [a1 virtualParticipants];
  v11 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = v4;
  v59 = v2;
  v56 = v1;
  v57 = v5;
  v61 = v12;
  v62 = v11;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v13 = v66;
    v14 = v67;
    v15 = v68;
    v16 = v69;
    v17 = v70;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v13 = v12;
    v14 = v12 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v12 + 56);

    v16 = 0;
  }

  v60 = v15;
  if (v13 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v21 = v16;
  v22 = v17;
  v23 = v16;
  if (!v17)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v15 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v22 = *(v14 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_12:
  v24 = (v22 - 1) & v22;
  v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  if (!v25)
  {
LABEL_23:
    outlined consume of [UUID : Conversation].Iterator._Variant();

    if (one-time initialization token for topicManager == -1)
    {
LABEL_24:
      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Log.topicManager);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1AEE80000, v35, v36, "Tried to create PubSubClient on container without virtualParticipant", v37, 2u);
        MEMORY[0x1B2715BA0](v37, -1, -1);
      }

      lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
      return v35;
    }

LABEL_31:
    swift_once();
    goto LABEL_24;
  }

  while (1)
  {
    v63 = v17;
    v64 = v25;
    v27 = v13;
    v28 = [v25 pluginName];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v29 == 0x627553627550 && v31 == 0xE600000000000000)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_28;
    }

    v16 = v23;
    v17 = v24;
    v13 = v27;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v26 = __CocoaSet.Iterator.next()();
    if (v26)
    {
      v65 = v26;
      swift_dynamicCast();
      v25 = v71;
      v23 = v16;
      v24 = v17;
      if (v71)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

LABEL_28:
  outlined consume of [UUID : Conversation].Iterator._Variant();

  v39 = v53;
  v40 = [v53 UUID];
  v41 = v54;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = [v39 groupUUID];
  v43 = v55;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = [v39 localParticipantIdentifier];
  v45 = v64;
  v46 = [v64 identifier];
  v47 = [v39 virtualParticipantConfig];
  (*(*v56 + 288))(v41, v43, v44, v46, v47);
  v35 = v48;

  v49 = *(v57 + 8);
  v50 = v43;
  v51 = v58;
  v49(v50, v58);
  v49(v41, v51);

  return v35;
}

uint64_t TopicManager.createPubSubClient(conversationUUID:groupUUID:localParticipantID:virtualParticipantID:virtualParticipantConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v69 = a1;
  v70 = a4;
  v65 = a3;
  v7 = type metadata accessor for PluginEndpoint();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v61 - v11);
  v74 = type metadata accessor for PluginClient.Configuration();
  v67 = *(v74 - 8);
  v13 = *(v67 + 64);
  v14 = MEMORY[0x1EEE9AC00](v74);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v61 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.topicManager);
  v23 = *(v18 + 16);
  v64 = a2;
  v23(v21, a2, v17);
  v24 = a5;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v63 = v7;
    v28 = v27;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75[0] = v62;
    *v28 = 136315906;
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v18 + 8))(v21, v17);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v75);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2048;
    v33 = v65;
    *(v28 + 14) = v65;
    *(v28 + 22) = 2048;
    *(v28 + 24) = v70;
    *(v28 + 32) = 2112;
    *(v28 + 34) = v24;
    v34 = v61;
    *v61 = v24;
    v35 = v24;
    _os_log_impl(&dword_1AEE80000, v25, v26, "Creating PubSubClient for groupUUID=%s, localParticipantID=%llu, virtualParticipantID=%llu, virtualParticipantConfig=%@", v28, 0x2Au);
    outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v34, -1, -1);
    v36 = v62;
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1B2715BA0](v36, -1, -1);
    v37 = v28;
    v7 = v63;
    MEMORY[0x1B2715BA0](v37, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v21, v17);
    v33 = v65;
  }

  v38 = UUID.uuidString.getter();
  v40 = v39;
  v41 = [v24 idsAliasingSalt];
  if (v41)
  {
    v42 = v41;
    v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  *v12 = v38;
  v12[1] = v40;
  v12[2] = v70;
  v12[3] = v43;
  v12[4] = v45;
  v12[5] = v33;
  v46 = v72;
  (*(v72 + 104))(v12, *MEMORY[0x1E6997518], v7);
  v70 = [v24 connectionRetryIntervalMillis];
  (*(v46 + 16))(v71, v12, v7);
  [v24 connectionMaxAttempts];
  [v24 serverCertValidationEnabled];
  v47 = [v24 serverCertHostnameOverride];
  if (v47)
  {
    v48 = v47;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v49 = [v24 serverCertLeafMarkerOIDOverride];
  if (v49)
  {
    v50 = v7;
    v51 = v49;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v50;
  }

  v52 = v73;
  PluginClient.Configuration.init(endpoint:connectionMaxAttempts:connectionRetryInterval:serverCertValidationEnabled:serverCertHostname:serverCertLeafMarkerOID:)();
  (*(v72 + 8))(v12, v7);
  v53 = v67;
  v54 = (*(v67 + 16))(v66, v52, v74);
  v55 = *(*v68 + 192);
  v55(v75, v54);
  __swift_project_boxed_opaque_existential_1(v75, v76);
  dispatch thunk of ActivitySessionContainerProvider.pluginClientReporter.getter();
  UUID.uuidString.getter();
  v56 = type metadata accessor for PluginClient();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = PluginClient.init(config:queue:reporter:reporterTag:)();
  __swift_destroy_boxed_opaque_existential_0(v75);
  type metadata accessor for PubSubClient();

  [v24 rpcStreamMaxAttempts];
  [v24 rpcStreamRetryIntervalMillis];
  (v55)(v75);
  __swift_project_boxed_opaque_existential_1(v75, v76);
  dispatch thunk of ActivitySessionContainerProvider.pubSubTopicReporter.getter();
  UUID.uuidString.getter();
  PubSubClient.__allocating_init(pluginClient:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)();
  (*(v53 + 8))(v73, v74);
  __swift_destroy_boxed_opaque_existential_0(v75);
  return v59;
}

uint64_t TopicManager.createUnreliableMessengerService(conversationUUID:groupUUID:unreliableMessengerConfig:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for DatagramClient.Configuration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.topicManager);
  v18 = *(v13 + 16);
  v42 = a1;
  v18(v16, a1, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v7;
    v22 = v21;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v22 = 136315138;
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = a2;
    v24 = v6;
    v25 = a3;
    v27 = v26;
    (*(v13 + 8))(v16, v12);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v27, &v45);
    a3 = v25;
    v6 = v24;
    a2 = v40;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Creating DatagramClient for groupUUID=%s", v22, 0xCu);
    v29 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1B2715BA0](v29, -1, -1);
    v30 = v22;
    v7 = v41;
    MEMORY[0x1B2715BA0](v30, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v31 = v44;
  closure #1 in TopicManager.createUnreliableMessengerService(conversationUUID:groupUUID:unreliableMessengerConfig:)(v42, a2);
  (*(v7 + 16))(v43, v31, v6);
  v32 = type metadata accessor for DatagramClient();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = DatagramClient.init(config:queue:)();
  v36 = MEMORY[0x1E6997510];
  a3[3] = v32;
  a3[4] = v36;
  *a3 = v35;
  return (*(v7 + 8))(v31, v6);
}

uint64_t closure #1 in TopicManager.createUnreliableMessengerService(conversationUUID:groupUUID:unreliableMessengerConfig:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DatagramEndpoint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v20 - v9);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = [a2 idsAliasingSalt];
  if (v14)
  {
    v21 = a2;
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    a2 = v21;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  *v10 = v11;
  v10[1] = v13;
  v10[2] = v16;
  v10[3] = v18;
  (*(v4 + 104))(v10, *MEMORY[0x1E6997528], v3);
  (*(v4 + 16))(v8, v10, v3);
  [a2 establishChannelMaxAttempts];
  [a2 establishChannelRetryIntervalMillis];
  [a2 egressMessagePayloadMaxSizeBytes];
  DatagramClient.Configuration.init(endpoint:establishChannelMaxAttempts:establishChannelRetryInterval:egressMessagePayloadMaxSizeBytes:)();
  return (*(v4 + 8))(v10, v3);
}

uint64_t TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v54 = a3;
  v55 = a5;
  v52 = a4;
  v53 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMR);
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMR);
  v48 = *(v50 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v44 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMR);
  v49 = *(v51 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v44 - v19;
  v56 = *(v5 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  Lock.lock()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = *&v57[0];
  if (!*(*&v57[0] + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v22 & 1) == 0))
  {

    goto LABEL_10;
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  v25 = (*(*v23 + 168))(v24);

  if (!v25)
  {
LABEL_10:
    Lock.unlock()();
    *&v57[0] = (*(*v6 + 232))(a1, 2);
    (*(v9 + 16))(&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v35 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v6;
    (*(v9 + 32))(v36 + v35, &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    type metadata accessor for AttachmentLedgerClient();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<TUConversationActivitySessionContainer, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, AttachmentLedgerClient> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMR);
    v37 = v46;
    Publisher.first()();
    (*(v45 + 8))(v14, v37);
    outlined init with copy of Transferable(v52, v57);
    v38 = swift_allocObject();
    v39 = v54;
    v38[2] = v53;
    v38[3] = v39;
    outlined init with take of Transferable(v57, (v38 + 4));
    v38[9] = v55;

    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, AttachmentLedgerClient>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PluginAttachmentLedgerTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
    v40 = v47;
    v41 = v50;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v48 + 8))(v17, v41);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Future<PluginAttachmentLedgerTopic, Error>, Publishers.SetFailureType<Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, AttachmentLedgerClient>>, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMR);
    v42 = v51;
    v34 = Publisher.eraseToAnyPublisher()();
    (*(v49 + 8))(v40, v42);
    goto LABEL_11;
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.topicManager);
  v27 = v54;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v53;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v57[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v27, v57);
    _os_log_impl(&dword_1AEE80000, v28, v29, "Creating PluginAttachmentLedgerTopic, topic=%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1B2715BA0](v33, -1, -1);
    MEMORY[0x1B2715BA0](v32, -1, -1);
  }

  Lock.unlock()();
  *&v57[0] = dispatch thunk of AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PluginAttachmentLedgerTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
  v34 = Publisher.eraseToAnyPublisher()();

LABEL_11:
  Lock.assertNotOwned()();
  return v34;
}

uint64_t closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return Lock.withLock<A>(_:)();
}

void closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v27[2] && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(v27[7] + 8 * v5);

    MEMORY[0x1EEE9AC00](v8);
    v9 = (*(*v7 + 208))(partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:));
    if (!v2)
    {
      v26 = v9;

      goto LABEL_17;
    }

    v10 = v2;
  }

  else
  {

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.topicManager);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Can't create AttachmentLedgerClient yet because there's no ConversationClient object", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    v10 = swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.topicManager);
  v17 = v10;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1AEE80000, v18, v19, "Failed to create AttachmentLedgerClient due to error: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {
  }

  v26 = 0;
LABEL_17:
  *a2 = v26;
}

uint64_t closure #2 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.topicManager);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v14);
    _os_log_impl(&dword_1AEE80000, v9, v10, "Creating PluginAttachmentLedgerTopic, topic=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  result = dispatch thunk of AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)();
  *a4 = result;
  return result;
}

uint64_t TopicManager.createAttachmentLedgerClient(from:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttachmentLedgerClient.Config();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for UUID();
  v75 = *(v76 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for PluginClient.Configuration();
  v77 = *(v82 - 8);
  v9 = *(v77 + 64);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v73 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v72 - v12;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for topicManager == -1)
  {
    goto LABEL_2;
  }

LABEL_39:
  swift_once();
LABEL_2:
  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Log.topicManager);
  v18 = a1;
  v84 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Creating AttachmentLedgerClient for container: %@", v21, 0xCu);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v22, -1, -1);
    MEMORY[0x1B2715BA0](v21, -1, -1);
  }

  v24 = [v18 virtualParticipants];
  v25 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  a1 = lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = v2;
  v83 = v18;
  v86 = v26;
  v87 = v25;
  if ((v26 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v27 = v91[5];
    v2 = v91[6];
    v28 = v91[7];
    v29 = v91[8];
    v30 = v91[9];
  }

  else
  {
    v31 = -1 << *(v26 + 32);
    v27 = v26;
    v2 = v26 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v26 + 56);

    v29 = 0;
  }

  v85 = v28;
  v89 = 0x80000001AF01A390;
  if (v27 < 0)
  {
LABEL_11:
    v34 = __CocoaSet.Iterator.next()();
    if (v34)
    {
      v91[12] = v34;
      swift_dynamicCast();
      v35 = v91[0];
      v36 = v29;
      v37 = v30;
      if (v91[0])
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    outlined consume of [UUID : Conversation].Iterator._Variant();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1AEE80000, v46, v47, "Tried to create AttachmentLedgerClient on container without a corresponding virtualParticipant", v48, 2u);
      MEMORY[0x1B2715BA0](v48, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
  }

  else
  {
    while (1)
    {
      v38 = v29;
      v39 = v30;
      v36 = v29;
      if (!v30)
      {
        while (1)
        {
          v36 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v36 >= ((v28 + 64) >> 6))
          {
            goto LABEL_26;
          }

          v39 = *(v2 + 8 * v36);
          ++v38;
          if (v39)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_18:
      v37 = (v39 - 1) & v39;
      v35 = *(*(v27 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v39)))));
      if (!v35)
      {
        goto LABEL_26;
      }

LABEL_19:
      v88 = v30;
      a1 = v27;
      v90 = v35;
      v40 = [v35 pluginName];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v41 == 0xD000000000000010 && v89 == v43)
      {
        break;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {
        goto LABEL_31;
      }

      v29 = v36;
      v30 = v37;
      v27 = a1;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_31:
    outlined consume of [UUID : Conversation].Iterator._Variant();

    v51 = v83;
    v52 = [v83 virtualParticipantConfig];
    v53 = [v52 idsAliasingSalt];

    if (v53)
    {
      v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      static String.Encoding.utf8.getter();
      v57 = String.init(data:encoding:)();
      if (v58)
      {
        v59 = v81;
        v88 = v58;
        v89 = v57;
        closure #2 in TopicManager.createAttachmentLedgerClient(from:)(v51, v90, v54, v56, v81);
        v60 = v77;
        v61 = (*(v77 + 16))(v73, v59, v82);
        (*(*v72 + 192))(v91, v61);
        __swift_project_boxed_opaque_existential_1(v91, v91[3]);
        dispatch thunk of ActivitySessionContainerProvider.pluginClientReporter.getter();
        v62 = [v51 UUID];
        v63 = v74;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.uuidString.getter();
        (*(v75 + 8))(v63, v76);
        v64 = type metadata accessor for PluginClient();
        v65 = *(v64 + 48);
        v66 = *(v64 + 52);
        swift_allocObject();
        PluginClient.init(config:queue:reporter:reporterTag:)();
        __swift_destroy_boxed_opaque_existential_0(v91);
        type metadata accessor for AttachmentLedgerClient();
        v67 = [v51 virtualParticipantConfig];
        [v67 rpcStreamMaxAttempts];

        v68 = [v51 virtualParticipantConfig];
        [v68 rpcStreamRetryIntervalMillis];

        AttachmentLedgerClient.Config.init(participantIDSalt:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:)();
        [v51 localParticipantIdentifier];
        v47 = AttachmentLedgerClient.__allocating_init(client:config:localParticipantID:)();

        outlined consume of Data._Representation(v54, v56);
        (*(v60 + 8))(v81, v82);
        return v47;
      }

      outlined consume of Data._Representation(v54, v56);
    }

    v69 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v69, v47))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1AEE80000, v69, v47, "Failed to find aliasingSalt from virtualParticipantConfig. Can't create AttachmentLedgerClient without the salt.", v70, 2u);
      MEMORY[0x1B2715BA0](v70, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    swift_allocError();
    *v71 = 2;
    swift_willThrow();
  }

  return v47;
}

uint64_t closure #2 in TopicManager.createAttachmentLedgerClient(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v40 = a5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PluginEndpoint();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v36 - v17);
  v19 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v7 + 8))(v10, v6);
  v23 = [v37 identifier];
  v24 = [a1 localParticipantIdentifier];
  *v18 = v20;
  v18[1] = v22;
  v18[2] = v23;
  v26 = v38;
  v25 = v39;
  v18[3] = v38;
  v18[4] = v25;
  v18[5] = v24;
  (*(v12 + 104))(v18, *MEMORY[0x1E6997518], v11);
  outlined copy of Data._Representation(v26, v25);
  v27 = [a1 virtualParticipantConfig];
  v36[1] = [v27 connectionRetryIntervalMillis];

  v37 = v16;
  v38 = v12;
  v28 = *(v12 + 16);
  v39 = v11;
  v28(v16, v18, v11);
  v29 = [a1 virtualParticipantConfig];
  [v29 connectionMaxAttempts];

  v30 = [a1 virtualParticipantConfig];
  [v30 serverCertValidationEnabled];

  v31 = [a1 virtualParticipantConfig];
  v32 = [v31 serverCertHostnameOverride];

  if (v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v33 = [a1 virtualParticipantConfig];
  v34 = [v33 serverCertLeafMarkerOIDOverride];

  if (v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  PluginClient.Configuration.init(endpoint:connectionMaxAttempts:connectionRetryInterval:serverCertValidationEnabled:serverCertHostname:serverCertLeafMarkerOID:)();
  return (*(v38 + 8))(v18, v39);
}

uint64_t TopicManager.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider));
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TopicManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider));
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags);
  swift_unknownObjectRelease();
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id TopicManager.ConversationClient.activeSubscriptions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void TopicManager.ConversationClient.activeSubscriptions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t TopicManager.ConversationClient.unreliableMessagingService.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  outlined init with copy of TopicManager.ConversationClient.Service(*(v4 + 56) + 48 * v5, &v7);

  v9 = v7;
  v10[0] = *v8;
  *(v10 + 9) = *&v8[9];
  outlined init with copy of TopicManager.ConversationClient.Service(&v9, &v7);
  if (v8[24] == 1)
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v9);
    return outlined init with take of Transferable(&v7, a1);
  }

  else
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v7);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TopicManager.ConversationClient.pubSubClient.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  if ((v3 & 1) == 0)
  {

    return 0;
  }

  outlined init with copy of TopicManager.ConversationClient.Service(*(v1 + 56) + 48 * v2, &v5);

  v7 = v5;
  v8[0] = *v6;
  *(v8 + 9) = *&v6[9];
  outlined init with copy of TopicManager.ConversationClient.Service(&v7, &v5);
  if (v6[24])
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v5);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v7);
    return v5;
  }

  return result;
}

uint64_t TopicManager.ConversationClient.attachmentLedgerClient.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(2);
  if ((v3 & 1) == 0)
  {

    return 0;
  }

  outlined init with copy of TopicManager.ConversationClient.Service(*(v1 + 56) + 48 * v2, &v5);

  v7 = v5;
  v8[0] = *v6;
  *(v8 + 9) = *&v6[9];
  outlined init with copy of TopicManager.ConversationClient.Service(&v7, &v5);
  if (v6[24] == 2)
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v7);
    return v5;
  }

  else
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v5);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *TopicManager.ConversationClient.init(lock:)(uint64_t a1)
{
  v1[2] = MEMORY[0x1E69E7CC8];
  v1[3] = [objc_opt_self() weakObjectsHashTable];
  v1[4] = a1;
  return v1;
}

uint64_t TopicManager.ConversationClient.deinit()
{
  if ((*(*v0 + 160))())
  {
    dispatch thunk of PubSubClient.close()();
  }

  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t TopicManager.ConversationClient.__deallocating_deinit()
{
  if ((*(*v0 + 160))())
  {
    dispatch thunk of PubSubClient.close()();
  }

  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void TopicManager.ConversationClient.update(with:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  Lock.assertOwned()();
  v5 = [a1 virtualParticipants];
  v6 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = v46[1];
    v8 = v46[2];
    v9 = v46[3];
    v10 = v46[4];
    v11 = v46[5];
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);
  }

  v15 = (v9 + 64) >> 6;
  v44 = v7;
  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v20 = v46[0], v18 = v10, v19 = v11, !v46[0]))
    {
LABEL_31:
      outlined consume of [UUID : Conversation].Iterator._Variant();
      return;
    }

LABEL_20:
    v45 = v19;
    v21 = [v20 pluginName];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    v26 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TopicManager.ConversationClient.update(with:), v25);

    if (v26 == 2)
    {
      if ((*(*v2 + 168))(v27))
      {
        [a1 localParticipantIdentifier];
        dispatch thunk of AttachmentLedgerClient.updateVirtualParticipant(_:localParticipantID:)();
LABEL_8:
      }

LABEL_9:

      goto LABEL_10;
    }

    if (!v26)
    {
      if ((*(*v2 + 160))(v27))
      {
        [a1 localParticipantIdentifier];
        dispatch thunk of PubSubClient.updateVirtualParticipant(_:localParticipantID:)();
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.topicManager);
    v29 = v20;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46[0] = v40;
      *v32 = 136315138;
      v42 = a1;
      v33 = [v29 pluginName];
      v41 = v29;
      v34 = v6;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v2;
      v37 = v36;

      v38 = v35;
      v6 = v34;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v46);
      v2 = v43;

      *(v32 + 4) = v39;
      a1 = v42;
      _os_log_impl(&dword_1AEE80000, v30, v31, "Virtual participant pluginName: %s unknown", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B2715BA0](v40, -1, -1);
      MEMORY[0x1B2715BA0](v32, -1, -1);
    }

    else
    {
    }

LABEL_10:
    v10 = v18;
    v7 = v44;
    v11 = v45;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_31;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *TopicManager.ConversationClient.service(generator:)(void *(*a1)(void *__return_ptr))
{
  v3 = v1;
  v5 = *(v1 + 32);
  Lock.assertOwned()();
  result = (*(*v3 + 160))();
  if (!result)
  {
    result = a1(v11);
    if (!v2)
    {
      outlined init with copy of TopicManager.ConversationClient.Service(v11, v9);
      if (v10)
      {
        outlined destroy of TopicManager.ConversationClient.Service(v9);
        lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
        swift_allocError();
        *v7 = 0;
        swift_willThrow();
        return outlined destroy of TopicManager.ConversationClient.Service(v11);
      }

      else
      {
        v8 = v9[0];
        outlined init with copy of TopicManager.ConversationClient.Service(v11, v9);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v9, 0);
        swift_endAccess();
        outlined destroy of TopicManager.ConversationClient.Service(v11);
        return v8;
      }
    }
  }

  return result;
}

{
  v3 = v1;
  v5 = *(v1 + 32);
  Lock.assertOwned()();
  result = (*(*v3 + 168))();
  if (!result)
  {
    result = a1(v11);
    if (!v2)
    {
      outlined init with copy of TopicManager.ConversationClient.Service(v11, v9);
      if (v10 == 2)
      {
        v7 = v9[0];
        outlined init with copy of TopicManager.ConversationClient.Service(v11, v9);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v9, 2);
        swift_endAccess();
        outlined destroy of TopicManager.ConversationClient.Service(v11);
        return v7;
      }

      else
      {
        outlined destroy of TopicManager.ConversationClient.Service(v9);
        lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
        swift_allocError();
        *v8 = 0;
        swift_willThrow();
        return outlined destroy of TopicManager.ConversationClient.Service(v11);
      }
    }
  }

  return result;
}

void *TopicManager.ConversationClient.service(generator:)@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = *(v2 + 32);
  Lock.assertOwned()();
  (*(*v4 + 152))(&v13);
  if (v14)
  {
    return outlined init with take of Transferable(&v13, a2);
  }

  v9 = outlined destroy of NSObject?(&v13, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMR);
  result = a1(&v13, v9);
  if (!v3)
  {
    outlined init with copy of TopicManager.ConversationClient.Service(&v13, v11);
    if (v12 == 1)
    {
      outlined init with take of Transferable(v11, a2);
      outlined init with copy of TopicManager.ConversationClient.Service(&v13, v11);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v11, 1);
      swift_endAccess();
    }

    else
    {
      outlined destroy of TopicManager.ConversationClient.Service(v11);
      lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
    }

    return outlined destroy of TopicManager.ConversationClient.Service(&v13);
  }

  return result;
}

uint64_t TopicManager.ConversationClient.subscription(for:)()
{
  v1 = *(v0 + 32);
  type metadata accessor for TopicManager.Subscription();
  Lock.withLock<A>(_:)();
  return v3;
}

void closure #1 in TopicManager.ConversationClient.subscription(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for TopicManager.Subscription();
  v8 = swift_allocObject();
  swift_weakInit();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_weakAssign();
  v9 = *(*a3 + 128);

  v11 = v9(v10);
  [v11 addObject_];

  *a4 = v8;
}

uint64_t TopicManager.Subscription.__allocating_init(topicName:conversationClient:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_weakAssign();

  return v4;
}

uint64_t closure #1 in TopicManager.ConversationClient.refreshActiveSubscriptions()(void *a1)
{
  v2 = (*(*a1 + 128))();
  v3 = [v2 allObjects];

  type metadata accessor for TopicManager.Subscription();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v9 = __CocoaSet.count.getter();

    if (v9)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5)
    {
      return result;
    }
  }

  if ((*(*a1 + 160))(result))
  {
    dispatch thunk of PubSubClient.close()();
  }

  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities12TopicManagerC11ServiceNameO_AE18ConversationClientC0G0OTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v8 = a1[2];
  a1[2] = v7;
}

uint64_t TopicManager.Subscription.topicName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TopicManager.Subscription.topicName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t TopicManager.Subscription.init(topicName:conversationClient:)(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_weakAssign();

  return v2;
}

uint64_t TopicManager.Subscription.deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 224))(Strong);
  }

  v2 = *(v0 + 24);

  swift_weakDestroy();
  return v0;
}

uint64_t TopicManager.Subscription.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 224))(Strong);
  }

  v2 = *(v0 + 24);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t key path getter for TopicManager.conversationClientsByGroupUUID : TopicManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for TopicManager.conversationClientsByGroupUUID : TopicManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k12Activities12mn3C18oP4CTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n04_s10x7UUIDV15kzmn3C18oP34CSbIgngd_AcHSbs5Error_pIegnndzo_TRAjOSbIgngd_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
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

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized TopicManager.init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - v14 + 8;
  v26[3] = a4;
  v26[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v18 = MEMORY[0x1E69E7CC0];
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities12TopicManagerC18ConversationClientCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
  Published.init(initialValue:)();
  (*(v12 + 32))(a3 + v17, v15, v11);
  if (v18 >> 62 && __CocoaSet.count.getter())
  {
    v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_cancellables) = v19;
  v20 = OBJC_IVAR____TtC15GroupActivities12TopicManager_lock;
  v21 = type metadata accessor for Lock();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(a3 + v20) = Lock.init()();
  outlined init with copy of Transferable(v26, a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider);
  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) = a2;
  v25 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v26);
  return a3;
}

uint64_t specialized TopicManager.__allocating_init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TopicManager();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a4);
  return specialized TopicManager.init(provider:featureFlags:)(v14, a2, v18, a4, a5, a6);
}

unint64_t specialized TopicManager.ServiceName.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TopicManager.ServiceName.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for closure #1 in TopicManager.firstConversation(for:with:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + *(v3 + 64));
  v5 = *(v1 + 16);

  return closure #1 in TopicManager.firstConversation(for:with:)(a1, v5);
}

uint64_t partial apply for closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  return closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(a1, v5);
}

uint64_t partial apply for closure #2 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for PubSubClient.TopicCategory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = (v2 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v2 + v9);

  return closure #2 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(a1, v10, v11, v2 + v6, v2 + v7, v13, v14, a2);
}

unint64_t lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors()
{
  result = lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors;
  if (!lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors;
  if (!lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_7Tm()
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

unint64_t lazy protocol witness table accessor for type TopicManager.ServiceName and conformance TopicManager.ServiceName()
{
  result = lazy protocol witness table cache variable for type TopicManager.ServiceName and conformance TopicManager.ServiceName;
  if (!lazy protocol witness table cache variable for type TopicManager.ServiceName and conformance TopicManager.ServiceName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicManager.ServiceName and conformance TopicManager.ServiceName);
  }

  return result;
}

uint64_t type metadata accessor for TopicManager()
{
  result = type metadata singleton initialization cache for TopicManager;
  if (!type metadata singleton initialization cache for TopicManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TopicManager()
{
  type metadata accessor for Published<[UUID : TopicManager.ConversationClient]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of TopicManager.ConversationClient.service(generator:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TopicManager.ConversationClient.Service(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TopicManager.ConversationClient.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TopicManager.ConversationClient.Service(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TopicManager.init(provider:featureFlags:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in closure #1 in TopicManager.init(provider:featureFlags:)();
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = type metadata accessor for UUID();
  v5 = *(*(v34 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v34);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  v9 = 0;
  v36 = a3;
  v10 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30 = v7 + 8;
  v31 = v7 + 16;
  v15 = v32;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = v36;
    v22 = v33;
    v21 = v34;
    (*(v33 + 16))(v15, v36[6] + *(v33 + 72) * v19, v34);
    v23 = v19;
    v24 = *(v20[7] + 8 * v19);

    LOBYTE(v19) = v35(v15, v24);

    result = (*(v22 + 8))(v15, v21);
    v13 = v37;
    if (v19)
    {
      *(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v36);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v36);
    }

    v18 = *(v29 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k12Activities12mn3C18oP4CTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n04_s10x7UUIDV15kzmn3C18oP34CSbIgngd_AcHSbs5Error_pIegnndzo_TRAjOSbIgngd_Tf1nnc_n(v11, v6, v4, a2);
  result = MEMORY[0x1B2715BA0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void partial apply for closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)(v1[3], a1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(**(v1 + 16) + 312))(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 40) = 2;
  }

  return result;
}

void partial apply for closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(v1[3], a1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(**(v1 + 16) + 280))(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 40) = 0;
  }

  return result;
}

void partial apply for closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(v1[3], a1);
}

uint64_t partial apply for closure #3 in closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return closure #3 in closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)(v3, v4, v6, v0 + v2, v5);
}

uint64_t partial apply for closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)(a1, v4, v5, v6, v7);
}

uint64_t specialized Topic.init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v56 = a5;
  v53 = a2;
  v54 = a3;
  v52 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v41 - v9;
  v10 = type metadata accessor for PubSubTopic.QueueState();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v41 - v17;
  *(a6 + 16) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  *(a6 + 40) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMR);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMR) - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1AF013F80;
  LOBYTE(v57) = 3;
  v58 = 0;
  lazy protocol witness table accessor for type Topic.State and conformance Topic.State();
  lazy protocol witness table accessor for type Topic.Event and conformance Topic.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v57) = 0;
  v58 = 258;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v57) = 0;
  v58 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v57) = 0;
  v58 = 769;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v57) = 1;
  v58 = 513;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v57) = 1;
  v58 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v57) = 2;
  v58 = 770;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v57) = 3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities5TopicC0C0OAF5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities5TopicC0C0OAF5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLOGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(a6 + 48) = StateMachine.init(initialState:transitions:)();
  *(a6 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 72) = 0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0;
  v25 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v57 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  v26 = v42;
  Published.init(initialValue:)();
  (*(v43 + 32))(a6 + v25, v26, v44);
  v27 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v28 = v45;
  PubSubTopic.QueueState.init()();
  v29 = v47;
  v30 = v48;
  (*(v47 + 16))(v46, v28, v48);
  v31 = v49;
  Published.init(initialValue:)();
  (*(v29 + 8))(v28, v30);
  (*(v50 + 32))(a6 + v27, v31, v51);
  v32 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler);
  *v33 = 0;
  v33[1] = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark) = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages) = MEMORY[0x1E69E7CC0];
  v34 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock;
  v35 = type metadata accessor for Lock();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *(a6 + v34) = Lock.init()();
  v38 = v53;
  *(a6 + 80) = v52;
  *(a6 + 88) = v38;
  *(a6 + 64) = &protocol witness table for TopicManager.ConversationClient;
  swift_unknownObjectWeakAssign();
  v39 = v56;
  *(a6 + 24) = v55;
  *(a6 + 32) = v39;
  return a6;
}

unint64_t lazy protocol witness table accessor for type Topic.State and conformance Topic.State()
{
  result = lazy protocol witness table cache variable for type Topic.State and conformance Topic.State;
  if (!lazy protocol witness table cache variable for type Topic.State and conformance Topic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.State and conformance Topic.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Topic.State and conformance Topic.State;
  if (!lazy protocol witness table cache variable for type Topic.State and conformance Topic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.State and conformance Topic.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Topic.Event and conformance Topic.Event()
{
  result = lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event;
  if (!lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event;
  if (!lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = (*(**(v2 + 16) + 272))(v2 + v6, *(v2 + v7), *(v2 + v7 + 8), a1, v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 40), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 48), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 56));
  *a2 = result;
  return result;
}

uint64_t objectdestroy_62Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in TopicManager.init(provider:featureFlags:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  return Lock.withLock<A>(_:)();
}

id SystemCoordinatorState.__allocating_init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:)(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *a2;
  *&v7[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v7[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v8;
  *&v7[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v7[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SystemCoordinatorState.__allocating_init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:remoteParticipantStates:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *a2;
  *&v9[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v9[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v10;
  *&v9[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v9[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id SystemCoordinatorState.ParticipantState.__allocating_init(isSpatial:isSpatialInitiator:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v6 = &v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SystemCoordinatorState.__allocating_init(localParticipantState:groupImmersionStyle:)(uint64_t a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  *&v5[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v5[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v6;
  *&v5[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v5[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SystemCoordinatorState.init(localParticipantState:groupImmersionStyle:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *&v2[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v2[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v3;
  *&v2[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v2[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SystemCoordinatorState();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SystemCoordinatorState.init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  *&v3[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v3[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v4;
  *&v3[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v3[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SystemCoordinatorState();
  return objc_msgSendSuper2(&v6, sel_init);
}

id SystemCoordinatorState.init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:remoteParticipantStates:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *&v4[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v4[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v5;
  *&v4[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v4[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for SystemCoordinatorState();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t SystemCoordinatorState.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of URL?(a1, v14, &_sypSgMd, &_sypSgMR);
  if (!v15)
  {
    outlined destroy of NSObject?(v14, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  type metadata accessor for SystemCoordinatorState();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v11 = 0;
    return v11 & 1;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
  v4 = *&v13[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState];
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
  v7 = v13[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle];
  if (v6 == 3)
  {
    if (v7 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v7 == 3 || v6 != v7)
  {
    goto LABEL_12;
  }

  if (*(v2 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount) != *&v13[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount])
  {
LABEL_12:

    goto LABEL_13;
  }

  v8 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  v9 = *&v13[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates];

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantG0CTt1g5(v8, v9);
  v11 = v10;

  return v11 & 1;
}

Swift::Int SystemCoordinatorState.hash.getter()
{
  v1 = v0;
  Hasher.init()();
  v2 = *(v0 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
  NSObject.hash(into:)();
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
  if (v3 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1B2715040](v3 + 1);
  }

  MEMORY[0x1B2715040](*(v1 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount));
  specialized Dictionary<>.hash(into:)(v5, *(v1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates));
  return Hasher.finalize()();
}

Swift::Void __swiftcall SystemCoordinatorState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
  v4 = MEMORY[0x1B2714130](0xD000000000000015, 0x80000001AF01B120);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
  if (v5 != 3)
  {
    v6 = MEMORY[0x1B2714130](0xD000000000000013, 0x80000001AF01CB50);
    [(objc_class *)with.super.isa encodeInteger:v5 + 1 forKey:v6];
  }

  v7 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount);
  v8 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01CB10);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  type metadata accessor for SystemCoordinatorState.ParticipantState();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v11 = MEMORY[0x1B2714130](0xD000000000000017, 0x80000001AF01CB30);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v11];
}

uint64_t SystemCoordinatorState.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for SystemCoordinatorState.ParticipantState();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v4)
  {

    type metadata accessor for SystemCoordinatorState();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v4;
  v5 = v4;
  v6 = MEMORY[0x1B2714130](0xD000000000000013, 0x80000001AF01CB50);
  v7 = [a1 decodeIntegerForKey_];

  v8 = 0x2010003u >> (8 * v7);
  if (v7 >= 4)
  {
    LOBYTE(v8) = 3;
  }

  v2[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v8;
  v9 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01CB10);
  v10 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = v10;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v11 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (!v11)
  {
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

LABEL_37:
    *&v2[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = v13;
    v58.receiver = v2;
    v58.super_class = type metadata accessor for SystemCoordinatorState();
    v18 = objc_msgSendSuper2(&v58, sel_init);

    return v18;
  }

  v12 = v11;
  v52 = v5;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v53 = v2;
  v54 = a1;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v19 = -1 << *(v12 + 32);
    v15 = ~v19;
    v14 = v12 + 64;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v16 = v21 & *(v12 + 64);
    v17 = v12;
  }

  v22 = 0;
  v51 = v15;
  v23 = (v15 + 64) >> 6;
  v55 = v17;
  v56 = v23;
  while ((v17 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (swift_dynamicCast(), v32 = v57, swift_dynamicCast(), v33 = v57, v28 = v22, v29 = v16, !v57))
    {
LABEL_36:

      outlined consume of [UUID : Conversation].Iterator._Variant();

      v2 = v53;
      a1 = v54;
      goto LABEL_37;
    }

LABEL_25:
    v34 = v14;
    v35 = v32;
    v36 = [v32 unsignedLongLongValue];
    v37 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v13;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
    v41 = v13[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_40;
    }

    v44 = v39;
    if (v13[3] >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v39)
        {
          goto LABEL_14;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v44)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_42;
      }

      v40 = v45;
      if (v44)
      {
LABEL_14:
        v24 = v13[7];
        v25 = *(v24 + 8 * v40);
        *(v24 + 8 * v40) = v37;

        goto LABEL_15;
      }
    }

    v13[(v40 >> 6) + 8] |= 1 << v40;
    *(v13[6] + 8 * v40) = v36;
    *(v13[7] + 8 * v40) = v37;

    v47 = v13[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_41;
    }

    v13[2] = v49;
LABEL_15:
    v22 = v28;
    v23 = v56;
    v16 = v29;
    v14 = v34;
    v17 = v55;
  }

  v26 = v22;
  v27 = v16;
  v28 = v22;
  if (v16)
  {
LABEL_21:
    v29 = (v27 - 1) & v27;
    v30 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
    v31 = *(*(v17 + 56) + v30);
    v32 = *(*(v17 + 48) + v30);
    v33 = v31;
    if (!v32)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      goto LABEL_36;
    }

    v27 = *(v14 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

GroupActivities::SystemCoordinatorState::GroupImmersionStyle_optional __swiftcall SystemCoordinatorState.GroupImmersionStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SystemCoordinatorState.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(134);
  MEMORY[0x1B27141F0](0xD00000000000002DLL, 0x80000001AF01CB70);
  v2 = [*(v0 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B27141F0](v3, v5);

  MEMORY[0x1B27141F0](0xD000000000000016, 0x80000001AF01CBA0);
  if (*(v1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle) == 3)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v13 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
    v7 = String.init<A>(reflecting:)();
    v6 = v8;
  }

  MEMORY[0x1B27141F0](v7, v6);

  MEMORY[0x1B27141F0](0xD000000000000020, 0x80000001AF01CBC0);
  v14 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v9);

  MEMORY[0x1B27141F0](0xD00000000000001ALL, 0x80000001AF01CBF0);
  v10 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  type metadata accessor for SystemCoordinatorState.ParticipantState();
  v11 = Dictionary.description.getter();
  MEMORY[0x1B27141F0](v11);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t SystemCoordinatorState.ParticipantState.roleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier);
  v2 = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);

  return v1;
}

double SystemCoordinatorState.ParticipantState.seat.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat);
  if (v3)
  {
    v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68));
    v5 = v4[1];
    v26[0] = *v4;
    v26[1] = v5;
    v6 = v4[5];
    v8 = v4[2];
    v7 = v4[3];
    v26[4] = v4[4];
    v26[5] = v6;
    v26[2] = v8;
    v26[3] = v7;
    v9 = v4[9];
    v11 = v4[6];
    v10 = v4[7];
    v26[8] = v4[8];
    v26[9] = v9;
    v26[6] = v11;
    v26[7] = v10;
    memmove(&__dst, v4, 0xA0uLL);
    InternalParticipant.participant.modify(&__dst, v12, v13);
    v14 = v34;
    a1[6] = v33;
    a1[7] = v14;
    v15 = v36;
    a1[8] = v35;
    a1[9] = v15;
    v16 = v30;
    a1[2] = v29;
    a1[3] = v16;
    v17 = v32;
    a1[4] = v31;
    a1[5] = v17;
    v18 = v28;
    *a1 = __dst;
    a1[1] = v18;
    outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v26, &v25);
  }

  else
  {
    _s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOi0_(&__dst);
    v20 = v34;
    a1[6] = v33;
    a1[7] = v20;
    v21 = v36;
    a1[8] = v35;
    a1[9] = v21;
    v22 = v30;
    a1[2] = v29;
    a1[3] = v22;
    v23 = v32;
    a1[4] = v31;
    a1[5] = v23;
    result = *&__dst;
    v24 = v28;
    *a1 = __dst;
    a1[1] = v24;
  }

  return result;
}

id SystemCoordinatorState.ParticipantState.init(isSpatial:isSpatialInitiator:)(char a1, char a2)
{
  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v3 = &v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v3 = 0;
  v3[1] = 0;
  *&v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SystemCoordinatorState.ParticipantState.__allocating_init(isSpatial:isSpatialInitiator:roleIdentifier:seat:)(char a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = v5;
  v13 = objc_allocWithZone(v7);
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v14 = a5[7];
  v26[6] = a5[6];
  v26[7] = v14;
  v15 = a5[9];
  v26[8] = a5[8];
  v26[9] = v15;
  v16 = a5[3];
  v26[2] = a5[2];
  v26[3] = v16;
  v17 = a5[5];
  v26[4] = a5[4];
  v26[5] = v17;
  v18 = *a5;
  v19 = a5[1];
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v26[0] = v18;
  v26[1] = v19;
  v20 = &v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v20 = a3;
  v20[1] = a4;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
  v22 = specialized XPCWrapper.init(_:)(v26);
  if (v6)
  {
    v23 = v20[1];

    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v22;
    v25.receiver = v13;
    v25.super_class = v7;
    return objc_msgSendSuper2(&v25, sel_init);
  }
}

{
  v7 = v5;
  v13 = objc_allocWithZone(v7);
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v14 = &v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v14 = a3;
  v14[1] = a4;
  v15 = a5[1];
  v26 = *a5;
  v27 = v15;
  v16 = a5[5];
  v30 = a5[4];
  v31 = v16;
  v17 = a5[3];
  v28 = a5[2];
  v29 = v17;
  v18 = a5[9];
  v34 = a5[8];
  v35 = v18;
  v19 = a5[7];
  v32 = a5[6];
  v33 = v19;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(&v26) == 1)
  {
    v20 = 0;
  }

  else
  {
    v25[6] = v32;
    v25[7] = v33;
    v25[8] = v34;
    v25[9] = v35;
    v25[2] = v28;
    v25[3] = v29;
    v25[4] = v30;
    v25[5] = v31;
    v25[0] = v26;
    v25[1] = v27;
    v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
    v20 = specialized XPCWrapper.init(_:)(v25);
    if (v6)
    {
      v22 = v14[1];

      return swift_deallocPartialClassInstance();
    }
  }

  *&v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v20;
  v24.receiver = v13;
  v24.super_class = v7;
  return objc_msgSendSuper2(&v24, sel_init);
}

id SystemCoordinatorState.ParticipantState.init(isSpatial:isSpatialInitiator:roleIdentifier:seat:)(char a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v7 = a5[7];
  v19[6] = a5[6];
  v19[7] = v7;
  v8 = a5[9];
  v19[8] = a5[8];
  v19[9] = v8;
  v9 = a5[3];
  v19[2] = a5[2];
  v19[3] = v9;
  v10 = a5[5];
  v19[4] = a5[4];
  v19[5] = v10;
  v11 = *a5;
  v12 = a5[1];
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v19[0] = v11;
  v19[1] = v12;
  v13 = &v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v13 = a3;
  v13[1] = a4;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
  v15 = specialized XPCWrapper.init(_:)(v19);
  if (v6)
  {
    v16 = v13[1];

    type metadata accessor for SystemCoordinatorState.ParticipantState();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v15;
    v18.receiver = v5;
    v18.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
    return objc_msgSendSuper2(&v18, sel_init);
  }
}

{
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v7 = a5[7];
  v26 = a5[6];
  v27 = v7;
  v8 = a5[9];
  v28 = a5[8];
  v29 = v8;
  v9 = a5[3];
  v22 = a5[2];
  v23 = v9;
  v10 = a5[5];
  v24 = a5[4];
  v25 = v10;
  v11 = *a5;
  v12 = a5[1];
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v20 = v11;
  v21 = v12;
  v13 = &v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v13 = a3;
  v13[1] = a4;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(&v20) == 1)
  {
    v14 = 0;
  }

  else
  {
    v19[6] = v26;
    v19[7] = v27;
    v19[8] = v28;
    v19[9] = v29;
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    v19[5] = v25;
    v19[0] = v20;
    v19[1] = v21;
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
    v14 = specialized XPCWrapper.init(_:)(v19);
    if (v6)
    {
      v16 = v13[1];

      type metadata accessor for SystemCoordinatorState.ParticipantState();
      return swift_deallocPartialClassInstance();
    }
  }

  *&v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v14;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
  return objc_msgSendSuper2(&v18, sel_init);
}

__n128 SystemCoordinatorState.ParticipantState.Seat.pose.getter@<Q0>(uint64_t a1@<X8>)
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

__n128 SystemCoordinatorState.ParticipantState.Seat.assignedParticipantPose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 32) = *(v1 + 96);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 128);
  result = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = result;
  return result;
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.roleIdentifier.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

double SystemCoordinatorState.ParticipantState.Seat.init(pose:roleIdentifier:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  v5 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v5;
  result = 0.0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 1;
  *(a4 + 136) = a2;
  *(a4 + 144) = a3;
  *(a4 + 152) = -1;
  return result;
}

double SystemCoordinatorState.ParticipantState.Seat.init(number:pose:roleIdentifier:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2[1];
  *a5 = *a2;
  *(a5 + 16) = v5;
  v6 = a2[3];
  *(a5 + 32) = a2[2];
  *(a5 + 48) = v6;
  result = 0.0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 1;
  *(a5 + 136) = a3;
  *(a5 + 144) = a4;
  *(a5 + 152) = a1;
  return result;
}

__n128 SystemCoordinatorState.ParticipantState.Seat.init(number:pose:assignedParticipantPose:roleIdentifier:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a2[1];
  *a6 = *a2;
  *(a6 + 16) = v6;
  v7 = a2[3];
  *(a6 + 32) = a2[2];
  *(a6 + 48) = v7;
  *(a6 + 136) = a4;
  *(a6 + 144) = a5;
  *(a6 + 152) = a1;
  v8 = *(a3 + 48);
  *(a6 + 96) = *(a3 + 32);
  *(a6 + 112) = v8;
  *(a6 + 128) = *(a3 + 64);
  result = *(a3 + 16);
  *(a6 + 64) = *a3;
  *(a6 + 80) = result;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys()
{
  v1 = 1702063984;
  v2 = 0x6E656449656C6F72;
  if (*v0 != 2)
  {
    v2 = 0x7265626D756ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SystemCoordinatorState.ParticipantState.Seat.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = v1[1];
  v19 = *v1;
  v18 = v8;
  v20 = v1[2];
  v9 = *(v1 + 6);
  v10 = *(v1 + 7);
  v11 = v1[7];
  v29 = v1[6];
  v30 = v11;
  v31 = *(v1 + 128);
  v12 = v1[5];
  v27 = v1[4];
  v28 = v12;
  v13 = *(v1 + 18);
  v17[3] = *(v1 + 17);
  v17[2] = v13;
  v17[1] = *(v1 + 19);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v19;
  v23 = v18;
  *&v25 = v9;
  *(&v25 + 1) = v10;
  v24 = v20;
  v32 = 0;
  type metadata accessor for SPPose3D(0);
  lazy protocol witness table accessor for type SPPose3D and conformance SPPose3D(&lazy protocol witness table cache variable for type SPPose3D and conformance SPPose3D);
  v15 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v24 = v29;
  v25 = v30;
  v26 = v31;
  v22 = v27;
  v23 = v28;
  v32 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v22) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v22) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.hash(into:)()
{
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v17 = v0[3];
  v1 = *(v0 + 9);
  v3 = *(v0 + 10);
  v2 = *(v0 + 11);
  v4 = *(v0 + 13);
  v10 = *(v0 + 12);
  v11 = *(v0 + 8);
  v5 = *(v0 + 14);
  v6 = *(v0 + 15);
  v7 = *(v0 + 128);
  v8 = *(v0 + 18);
  v12 = *(v0 + 17);
  v13 = *(v0 + 19);
  SPPose3D.hash(into:)();
  if (v7 != 1)
  {
    Hasher._combine(_:)(1u);
    SPPose3D.hash(into:)();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return MEMORY[0x1B2715040](v13);
  }

  Hasher._combine(_:)(0);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return MEMORY[0x1B2715040](v13);
}

Swift::Int SystemCoordinatorState.ParticipantState.Seat.hashValue.getter()
{
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v17 = v0[3];
  v1 = *(v0 + 9);
  v3 = *(v0 + 10);
  v2 = *(v0 + 11);
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  v7 = *(v0 + 14);
  v6 = *(v0 + 15);
  v8 = *(v0 + 128);
  v9 = *(v0 + 18);
  v11 = *(v0 + 8);
  v12 = *(v0 + 17);
  v13 = *(v0 + 19);
  Hasher.init(_seed:)();
  SPPose3D.hash(into:)();
  if (v8 != 1)
  {
    Hasher._combine(_:)(1u);
    SPPose3D.hash(into:)();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  MEMORY[0x1B2715040](v13);
  return Hasher._finalize()();
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMR);
  v5 = *(v79 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v8 = &v29 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = a2;
  v39 = v5;
  type metadata accessor for SPPose3D(0);
  LOBYTE(v40) = 0;
  lazy protocol witness table accessor for type SPPose3D and conformance SPPose3D(&lazy protocol witness table cache variable for type SPPose3D and conformance SPPose3D);
  v10 = v79;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v52;
  v37 = v53;
  v35 = v50;
  v34 = v56;
  v11 = v54;
  v32 = v51;
  v33 = v55;
  v67 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v11;
  v12 = v36;
  v13 = v37;
  v76 = v70;
  v77 = v71;
  v78 = v72;
  v74 = v68;
  v75 = v69;
  LOBYTE(v50) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v30 = v14;
  v66 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v39 + 8))(v8, v10);
  v18 = v13;
  *&v41 = v12;
  *(&v41 + 1) = v13;
  v19 = v12;
  v20 = v32;
  *&v40 = v35;
  *(&v40 + 1) = v32;
  v43 = v34;
  v21 = v30;
  *&v42 = v31;
  *(&v42 + 1) = v33;
  LOBYTE(v48) = v78;
  v46 = v76;
  v47 = v77;
  v44 = v74;
  v45 = v75;
  *(&v48 + 1) = *v73;
  DWORD1(v48) = *&v73[3];
  *(&v48 + 1) = v30;
  *&v49 = v16;
  *(&v49 + 1) = v17;
  v22 = v34;
  v79 = v16;
  v23 = v38;
  v38[2] = v42;
  v23[3] = v22;
  v24 = v49;
  v23[8] = v48;
  v23[9] = v24;
  v25 = v41;
  *v23 = v40;
  v23[1] = v25;
  v26 = v45;
  v23[4] = v44;
  v23[5] = v26;
  v27 = v47;
  v23[6] = v46;
  v23[7] = v27;
  outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(&v40, &v50);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v52 = v19;
  v53 = v18;
  v50 = v35;
  v51 = v20;
  v56 = v34;
  v54 = v31;
  v55 = v33;
  v59 = v76;
  v60 = v77;
  v61 = v78;
  v57 = v74;
  v58 = v75;
  *v62 = *v73;
  *&v62[3] = *&v73[3];
  v63 = v21;
  v64 = v79;
  v65 = v17;
  return outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v50);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinatorState.ParticipantState.Seat()
{
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v17 = v0[3];
  v1 = *(v0 + 9);
  v3 = *(v0 + 10);
  v2 = *(v0 + 11);
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  v7 = *(v0 + 14);
  v6 = *(v0 + 15);
  v8 = *(v0 + 128);
  v9 = *(v0 + 18);
  v11 = *(v0 + 8);
  v12 = *(v0 + 17);
  v13 = *(v0 + 19);
  Hasher.init(_seed:)();
  SPPose3D.hash(into:)();
  if (v8 != 1)
  {
    Hasher._combine(_:)(1u);
    SPPose3D.hash(into:)();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  MEMORY[0x1B2715040](v13);
  return Hasher._finalize()();
}

uint64_t SystemCoordinatorState.ParticipantState.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of URL?(a1, __src, &_sypSgMd, &_sypSgMR);
  if (!*(&__src[1] + 1))
  {
    v3 = &_sypSgMd;
    v4 = &_sypSgMR;
    v5 = __src;
    goto LABEL_7;
  }

  type metadata accessor for SystemCoordinatorState.ParticipantState();
  if (swift_dynamicCast())
  {
    v2 = *&__dst[0];
    if (*(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial) != *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial) || *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator) != *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator))
    {
      goto LABEL_5;
    }

    v8 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
    v9 = *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_5;
      }

      v10 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier) == *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier) && v8 == v9;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (v9)
    {
LABEL_5:

      goto LABEL_8;
    }

    v11 = MEMORY[0x1E69E7D40];
    v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(&v47);
    (*((*v11 & **&__dst[0]) + 0x70))(v57, v12);
    __src[6] = v53;
    __src[7] = v54;
    __src[8] = v55;
    __src[9] = v56;
    __src[2] = v49;
    __src[3] = v50;
    __src[4] = v51;
    __src[5] = v52;
    __src[0] = v47;
    __src[1] = v48;
    __src[16] = v57[6];
    __src[17] = v57[7];
    __src[18] = v57[8];
    __src[19] = v57[9];
    __src[12] = v57[2];
    __src[13] = v57[3];
    __src[14] = v57[4];
    __src[15] = v57[5];
    __src[10] = v57[0];
    __src[11] = v57[1];
    v58[6] = v53;
    v58[7] = v54;
    v58[8] = v55;
    v58[9] = v56;
    v58[2] = v49;
    v58[3] = v50;
    v58[4] = v51;
    v58[5] = v52;
    v58[0] = v47;
    v58[1] = v48;
    if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(v58) == 1)
    {

      __dst[6] = __src[16];
      __dst[7] = __src[17];
      __dst[8] = __src[18];
      __dst[9] = __src[19];
      __dst[2] = __src[12];
      __dst[3] = __src[13];
      __dst[4] = __src[14];
      __dst[5] = __src[15];
      __dst[0] = __src[10];
      __dst[1] = __src[11];
      if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(__dst) == 1)
      {
        v41 = __src[6];
        v42 = __src[7];
        v43 = __src[8];
        v44 = __src[9];
        v37 = __src[2];
        v38 = __src[3];
        v39 = __src[4];
        v40 = __src[5];
        v35 = __src[0];
        v36 = __src[1];
        outlined destroy of NSObject?(&v35, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        v6 = 1;
        return v6 & 1;
      }
    }

    else
    {
      v41 = __src[6];
      v42 = __src[7];
      v43 = __src[8];
      v44 = __src[9];
      v37 = __src[2];
      v38 = __src[3];
      v39 = __src[4];
      v40 = __src[5];
      v35 = __src[0];
      v36 = __src[1];
      v31 = __src[6];
      v32 = __src[7];
      v33 = __src[8];
      v34 = __src[9];
      v27 = __src[2];
      v28 = __src[3];
      v29 = __src[4];
      v30 = __src[5];
      v25 = __src[0];
      v26 = __src[1];
      __dst[6] = __src[16];
      __dst[7] = __src[17];
      __dst[8] = __src[18];
      __dst[9] = __src[19];
      __dst[2] = __src[12];
      __dst[3] = __src[13];
      __dst[4] = __src[14];
      __dst[5] = __src[15];
      __dst[0] = __src[10];
      __dst[1] = __src[11];
      if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(__dst) != 1)
      {
        v21 = __src[16];
        v22 = __src[17];
        v23 = __src[18];
        v24 = __src[19];
        v17 = __src[12];
        v18 = __src[13];
        v19 = __src[14];
        v20 = __src[15];
        v15 = __src[10];
        v16 = __src[11];
        outlined init with copy of URL?(&v47, v14, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined init with copy of URL?(v57, v14, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined init with copy of URL?(&v35, v14, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        v6 = specialized static SystemCoordinatorState.ParticipantState.Seat.== infix(_:_:)(&v25, &v15);

        outlined destroy of NSObject?(v57, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined destroy of NSObject?(&v47, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        v13[6] = v21;
        v13[7] = v22;
        v13[8] = v23;
        v13[9] = v24;
        v13[2] = v17;
        v13[3] = v18;
        v13[4] = v19;
        v13[5] = v20;
        v13[0] = v15;
        v13[1] = v16;
        outlined destroy of SystemCoordinatorState.ParticipantState.Seat(v13);
        v14[6] = v31;
        v14[7] = v32;
        v14[8] = v33;
        v14[9] = v34;
        v14[2] = v27;
        v14[3] = v28;
        v14[4] = v29;
        v14[5] = v30;
        v14[0] = v25;
        v14[1] = v26;
        outlined destroy of SystemCoordinatorState.ParticipantState.Seat(v14);
        v21 = __src[6];
        v22 = __src[7];
        v23 = __src[8];
        v24 = __src[9];
        v17 = __src[2];
        v18 = __src[3];
        v19 = __src[4];
        v20 = __src[5];
        v15 = __src[0];
        v16 = __src[1];
        outlined destroy of NSObject?(&v15, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        return v6 & 1;
      }

      outlined init with copy of URL?(&v35, &v15, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);

      v21 = __src[6];
      v22 = __src[7];
      v23 = __src[8];
      v24 = __src[9];
      v17 = __src[2];
      v18 = __src[3];
      v19 = __src[4];
      v20 = __src[5];
      v15 = __src[0];
      v16 = __src[1];
      outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v15);
    }

    memcpy(__dst, __src, sizeof(__dst));
    v3 = &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSg_AHtMd;
    v4 = &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSg_AHtMR;
    v5 = __dst;
LABEL_7:
    outlined destroy of NSObject?(v5, v3, v4);
  }

LABEL_8:
  v6 = 0;
  return v6 & 1;
}

uint64_t @objc SystemCoordinatorState.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of NSObject?(v10, &_sypSgMd, &_sypSgMR);
  return v8 & 1;
}

Swift::Int SystemCoordinatorState.ParticipantState.hash.getter()
{
  Hasher.init()();
  Hasher._combine(_:)(*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial));
  Hasher._combine(_:)(*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator));
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8))
  {
    v1 = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier);
    Hasher._combine(_:)(1u);
    v2 = String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(&v12, v2);
  v22[6] = v18;
  v22[7] = v19;
  v22[8] = v20;
  v22[9] = v21;
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = v16;
  v22[5] = v17;
  v22[0] = v12;
  v22[1] = v13;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(v22) != 1)
  {
    v10[2] = v14;
    v10[3] = v15;
    v10[6] = v18;
    v10[7] = v19;
    v10[8] = v20;
    v11 = v21;
    v10[4] = v16;
    v10[5] = v17;
    v10[0] = v12;
    v10[1] = v13;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
    v22[15] = v12;
    v22[16] = v13;
    v22[18] = v15;
    v22[17] = v14;
    Hasher._combine(_:)(1u);
    outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v10, v9);
    SPPose3D.hash(into:)();
    if (v7)
    {
      Hasher._combine(_:)(0);
      if (v11)
      {
LABEL_8:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
LABEL_11:
        MEMORY[0x1B2715040](*(&v11 + 1));
        outlined destroy of NSObject?(&v12, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined destroy of NSObject?(&v12, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        return Hasher.finalize()();
      }
    }

    else
    {
      v9[1] = v4;
      v9[0] = v3;
      v9[3] = v6;
      v9[2] = v5;
      Hasher._combine(_:)(1u);
      SPPose3D.hash(into:)();
      if (v11)
      {
        goto LABEL_8;
      }
    }

    Hasher._combine(_:)(0);
    goto LABEL_11;
  }

  Hasher._combine(_:)(0);
  return Hasher.finalize()();
}

Swift::Void __swiftcall SystemCoordinatorState.ParticipantState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial);
  v4 = MEMORY[0x1B2714130](0x6169746170537369, 0xE90000000000006CLL);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator);
  v6 = MEMORY[0x1B2714130](0xD000000000000012, 0x80000001AF01CC40);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8))
  {
    v7 = MEMORY[0x1B2714130](*(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier));
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1B2714130](0x6E656449656C6F72, 0xEE00726569666974);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat);
  v10 = MEMORY[0x1B2714130](1952540019, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

id SystemCoordinatorState.ParticipantState.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SystemCoordinatorState.ParticipantState.init(coder:)(a1);

  return v4;
}

id SystemCoordinatorState.ParticipantState.init(coder:)(void *a1)
{
  v2 = specialized SystemCoordinatorState.ParticipantState.init(coder:)(a1);

  return v2;
}

id @objc SystemCoordinatorState.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1B2714130](v5, v7);

  return v8;
}

uint64_t SystemCoordinatorState.ParticipantState.description.getter()
{
  v1 = 7104878;
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(81);
  v27 = v26[0];
  MEMORY[0x1B27141F0](0xD00000000000001BLL, 0x80000001AF01CC60);
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v2, v3);

  MEMORY[0x1B27141F0](0xD000000000000015, 0x80000001AF01CC80);
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v4, v5);

  MEMORY[0x1B27141F0](0xD000000000000011, 0x80000001AF01CCA0);
  v6 = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
  if (v6)
  {
    *&v26[0] = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier);
    *(&v26[0] + 1) = v6;

    v7 = String.init<A>(reflecting:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1B27141F0](v7, v9);

  v10 = MEMORY[0x1B27141F0](0x3D74616573202CLL, 0xE700000000000000);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(&v16, v10);
  v26[6] = v22;
  v26[7] = v23;
  v26[8] = v24;
  v26[9] = v25;
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v26[5] = v21;
  v26[0] = v16;
  v26[1] = v17;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(v26) == 1)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v15[6] = v22;
    v15[7] = v23;
    v15[8] = v24;
    v15[9] = v25;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[5] = v21;
    v15[0] = v16;
    v15[1] = v17;
    v14[16] = v22;
    v14[17] = v23;
    v14[18] = v24;
    v14[19] = v25;
    v14[12] = v18;
    v14[13] = v19;
    v14[14] = v20;
    v14[15] = v21;
    v14[10] = v16;
    v14[11] = v17;
    outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v15, v14);
    v1 = String.init<A>(reflecting:)();
    v11 = v12;
  }

  MEMORY[0x1B27141F0](v1, v11);

  outlined destroy of NSObject?(&v16, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return v27;
}

id SystemCoordinatorState.ParticipantState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemCoordinatorState.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t SystemCoordinatorState.GroupImmersionStyle.description.getter()
{
  v1 = 1819047270;
  if (*v0 != 1)
  {
    v1 = 0x73736572676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646578696DLL;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemCoordinatorState.GroupImmersionStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinatorState.GroupImmersionStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorState.GroupImmersionStyle()
{
  v1 = 1819047270;
  if (*v0 != 1)
  {
    v1 = 0x73736572676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646578696DLL;
  }
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v14 = *(*(a2 + 56) + v13);
    v7 &= v7 - 1;
    v18 = a1[2];
    v19 = a1[3];
    v20 = *(a1 + 8);
    v16 = *a1;
    v17 = a1[1];
    MEMORY[0x1B2715070](*(*(a2 + 48) + v13));
    v15 = v14;
    NSObject.hash(into:)();

    result = Hasher._finalize()();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1B2715040](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double _s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[8] = 0u;
  a1[9] = xmmword_1AF00FCC0;
  return result;
}

unint64_t specialized static SystemCoordinatorState.ParticipantState.Seat.== infix(_:_:)(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v31 = *(a1 + 72);
  v29 = *(a1 + 80);
  v27 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 64);
  v30 = *(a1 + 104);
  v28 = *(a1 + 112);
  v6 = *(a1 + 128);
  v23 = *(a1 + 136);
  v35 = *(a1 + 144);
  v25 = *(a1 + 152);
  v26 = *(a1 + 120);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  v15 = a2[10];
  v14 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v19 = a2[14];
  v18 = a2[15];
  v20 = *(a2 + 128);
  v22 = *(a2 + 17);
  v34 = *(a2 + 18);
  v24 = *(a2 + 19);
  *&v37.position.x = *a1;
  *&v37.position.vector.f64[2] = v2;
  v37.rotation.vector.f64[2] = v4;
  v37.rotation.vector.f64[3] = v5;
  *v37.rotation.vector.f64 = v3;
  *&v36.position.x = v7;
  *&v36.position.vector.f64[2] = v8;
  v36.rotation.vector.f64[2] = v10;
  v36.rotation.vector.f64[3] = v11;
  *v36.rotation.vector.f64 = v9;
  result = SPPose3DEqualToPose(&v37, &v36);
  if (result)
  {
    if (v6)
    {
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v20)
      {
        return 0;
      }

      v37.position.z = v29;
      v37.position.vector.f64[3] = v27;
      v37.position.x = v33;
      v37.position.y = v31;
      v37.rotation.vector.f64[2] = v28;
      v37.rotation.vector.f64[3] = v26;
      v37.rotation.vector.f64[0] = v32;
      v37.rotation.vector.f64[1] = v30;
      v36.position.z = v15;
      v36.position.vector.f64[3] = v14;
      v36.position.x = v12;
      v36.position.y = v13;
      v36.rotation.vector.f64[2] = v19;
      v36.rotation.vector.f64[3] = v18;
      v36.rotation.vector.f64[0] = v16;
      v36.rotation.vector.f64[1] = v17;
      result = SPPose3DEqualToPose(&v37, &v36);
      if (!result)
      {
        return result;
      }
    }

    if (v35)
    {
      if (!v34 || (v23 != v22 || v35 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      return v25 == v24;
    }

    if (!v34)
    {
      return v25 == v24;
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SPPose3D and conformance SPPose3D(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SPPose3D(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of URL?(v10, v6, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for InternalParticipant();
      result = _s15GroupActivities11ParticipantVWObTm_1(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for InternalParticipant);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_15GroupActivities0C16SessionMessengerC18MessageStreamStoreO7Storage33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMd, &_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v5;
    *(v10 + 8) = v7;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 2;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v17 = *v9;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities20TypedPayloadDecoding_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, &v13, &_sSS_15GroupActivities20TypedPayloadDecoding_ptMd, &_sSS_15GroupActivities20TypedPayloadDecoding_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Transferable(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities11ParticipantV_AC17SystemCoordinatorC0E5StateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMd, &_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMd, &_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of URL?(v10, v6, &_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMd, &_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Participant();
      result = _s15GroupActivities11ParticipantVWObTm_1(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Participant);
      v17 = (v8[7] + 240 * v14);
      v19 = *(v9 + 13);
      v18 = *(v9 + 14);
      v20 = *(v9 + 12);
      v17[11] = *(v9 + 11);
      v17[12] = v20;
      v17[13] = v19;
      v17[14] = v18;
      v22 = *(v9 + 9);
      v21 = *(v9 + 10);
      v23 = *(v9 + 8);
      v17[7] = *(v9 + 7);
      v17[8] = v23;
      v17[9] = v22;
      v17[10] = v21;
      v25 = *(v9 + 5);
      v24 = *(v9 + 6);
      v26 = *(v9 + 4);
      v17[3] = *(v9 + 3);
      v17[4] = v26;
      v17[5] = v25;
      v17[6] = v24;
      v28 = *(v9 + 1);
      v27 = *(v9 + 2);
      *v17 = *v9;
      v17[1] = v28;
      v17[2] = v27;
      v29 = v8[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_10;
      }

      v8[2] = v31;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27CIImageRepresentationOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo27CIImageRepresentationOptionaypGMd, &_ss18_DictionaryStorageCySo27CIImageRepresentationOptionaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, &v11, &_sSo27CIImageRepresentationOptiona_yptMd, &_sSo27CIImageRepresentationOptiona_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities31SpatialTemplatePreferenceOutputVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    v4 = (a1 + 48);
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 + 8);
      v9 = v4[2];
      v10 = v4[3];
      v11 = v4[4];
      v12 = *(v4 + 40);

      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v9, v10, v11, v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 48 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 8;
      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities25SpatialTemplatePreferenceVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMd, &_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 57); ; i += 32)
    {
      v5 = *(i - 25);
      v6 = *(i - 17);
      v7 = *(i - 9);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 16 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 9) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of URL?(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities12TopicManagerC11ServiceNameO_AE18ConversationClientC0G0OTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMd, &_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, v14, &_s15GroupActivities12TopicManagerC11ServiceNameO_AC18ConversationClientC0E0OtMd, &_s15GroupActivities12TopicManagerC11ServiceNameO_AC18ConversationClientC0E0OtMR);
      v5 = v14[0];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v16[0];
      *(v8 + 25) = *(v16 + 9);
      *v8 = v9;
      v8[1] = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
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

uint64_t specialized SystemCoordinatorState.ParticipantState.Seat.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702063984 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001AF01CD90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656449656C6F72 && a2 == 0xEE00726569666974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id specialized SystemCoordinatorState.ParticipantState.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1B2714130](0x6169746170537369, 0xE90000000000006CLL);
  v5 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = v5;
  v6 = MEMORY[0x1B2714130](0xD000000000000012, 0x80000001AF01CC40);
  v7 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v13 = v10;
  v13[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR);
  *&v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = NSCoder.decodeObject<A>(of:forKey:)();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle);
  }

  return result;
}

uint64_t dispatch thunk of SystemCoordinatorState.ParticipantState.__allocating_init(isSpatial:isSpatialInitiator:roleIdentifier:seat:)()
{
  return (*(v0 + 128))();
}

{
  return (*(v0 + 136))();
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinatorState.ParticipantState.Seat(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t storeEnumTagSinglePayload for SystemCoordinatorState.ParticipantState.Seat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t _s15GroupActivities11ParticipantVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Signposts.groupSession.unsafeMutableAddressor()
{
  if (one-time initialization token for groupSession != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static Signposts.groupSession);
}

uint64_t one-time initialization function for groupSession()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Signposts.groupSession);
  __swift_project_value_buffer(v0, static Signposts.groupSession);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t static Signposts.groupSession.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for groupSession != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static Signposts.groupSession);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}