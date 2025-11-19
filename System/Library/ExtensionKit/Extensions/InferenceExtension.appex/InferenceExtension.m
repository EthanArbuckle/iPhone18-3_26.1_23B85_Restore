double default argument 1 of UserEngagementFeature.init(engagements:metaData:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance BMStreamIdentifier(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance BMStreamIdentifier(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance BMStreamIdentifier@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BMStreamIdentifier@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BMStreamIdentifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance BMStreamIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BMStreamIdentifier and conformance BMStreamIdentifier(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier);
  v3 = lazy protocol witness table accessor for type BMStreamIdentifier and conformance BMStreamIdentifier(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance BMStreamIdentifier()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BMStreamIdentifier()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BMStreamIdentifier()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BMStreamIdentifier(uint64_t *a1, uint64_t *a2)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t dispatch thunk of SELFReporter.report(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of SELFReporter.report(event:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SELFReporter.report(event:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for BMStreamIdentifier()
{
  if (!lazy cache variable for type metadata for BMStreamIdentifier)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for BMStreamIdentifier);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BMStreamIdentifier and conformance BMStreamIdentifier(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BMStreamIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18InferenceExtension14TrajectoryTypeO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18InferenceExtension14TrajectoryTypeOSSGMd, &_ss18_DictionaryStorageCy18InferenceExtension14TrajectoryTypeOSSGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
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

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t UserAlignmentScoreReporter.report(event:)(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return _swift_task_switch(UserAlignmentScoreReporter.report(event:), v1, v3);
}

uint64_t UserAlignmentScoreReporter.reportWithMetaData(response:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = UserAlignmentScoreReporter.reportWithMetaData(response:data:);

  return (specialized UserAlignmentScoreReporter.reportWithMetaData(response:data:))(a1, a2, a5, a6);
}

uint64_t UserAlignmentScoreReporter.reportWithMetaData(response:data:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for SELFReporter.report(event:) in conformance UserAlignmentScoreReporter(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return _swift_task_switch(protocol witness for SELFReporter.report(event:) in conformance UserAlignmentScoreReporter, v1, v3);
}

void *specialized UserAlignmentScoreReporter.populateMetaData(result:data:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a3;
  v91 = a5;
  v84 = a2;
  v86 = a4;
  v87 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v83 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v83 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v83 - v22;
  v24 = __chkstk_darwin(v21);
  v85 = &v83 - v25;
  __chkstk_darwin(v24);
  v27 = &v83 - v26;
  v28 = [objc_allocWithZone(PSESchemaPSEClientEventMetadata) init];
  v29 = v28;
  v89 = v9;
  if (v28)
  {
    v30 = v28;
    v88 = v23;
    v31 = v30;
    UUID.init()();
    v32 = v17;
    v33 = v20;
    v34 = objc_allocWithZone(SISchemaUUID);
    v35 = v12;
    v36 = v29;
    v37 = v13;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v39 = [v34 initWithNSUUID:isa];

    v13 = v37;
    v29 = v36;
    v12 = v35;
    (*(v13 + 8))(v27, v35);
    [v31 setPseId:v39];

    v23 = v88;
    v20 = v33;
    v17 = v32;
    v9 = v89;
  }

  if (!v90)
  {
LABEL_6:
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.inference);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "#SELF Logging - Request ID not available in metadata", v43, 2u);
    }

    if (!v91)
    {
      goto LABEL_22;
    }

LABEL_20:
    UUID.init(uuidString:)();
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      outlined destroy of UUID?(v9);
      goto LABEL_22;
    }

    (*(v13 + 32))(v20, v9, v12);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.inference);
    (*(v13 + 16))(v17, v20, v12);
    v67 = Logger.logObject.getter();
    v68 = v17;
    v69 = v13;
    v70 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v92 = v72;
      *v71 = 136315138;
      v73 = UUID.uuidString.getter();
      v88 = v20;
      v75 = v74;
      v90 = v69;
      v76 = *(v69 + 8);
      v76(v68, v12);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v92);
      v20 = v88;

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v67, v70, "#SELF Logging - Setting Task ID %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);

      v78 = v76;

      if (!v29)
      {
LABEL_36:
        v78(v20, v12);
        if (!v29)
        {
          return v29;
        }

        goto LABEL_27;
      }
    }

    else
    {

      v78 = *(v69 + 8);
      v78(v68, v12);
      if (!v29)
      {
        goto LABEL_36;
      }
    }

    v79 = objc_allocWithZone(SISchemaUUID);
    v80 = v29;
    v81 = UUID._bridgeToObjectiveC()().super.isa;
    v82 = [v79 initWithNSUUID:v81];

    [v80 setTaskId:v82];
    goto LABEL_36;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
    goto LABEL_6;
  }

  v44 = v85;
  (*(v13 + 32))();
  if (v29)
  {
    v45 = objc_allocWithZone(SISchemaUUID);
    v88 = v23;
    v46 = v45;
    v47 = v29;
    v48 = UUID._bridgeToObjectiveC()().super.isa;
    v49 = [v46 initWithNSUUID:v48];

    [v47 setOriginalLastRequestId:v49];
    v23 = v88;
  }

  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.inference);
  (*(v13 + 16))(v23, v44, v12);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v90 = v13;
    v54 = v53;
    v83 = swift_slowAlloc();
    v92 = v83;
    *v54 = 136315138;
    v55 = UUID.uuidString.getter();
    v88 = v20;
    v57 = v56;
    v84 = *(v90 + 8);
    v84(v23, v12);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v92);
    v20 = v88;

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v51, v52, "#SELF Logging - Setting Last Request ID %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);

    v13 = v90;

    v84(v85, v12);
  }

  else
  {

    v59 = v23;
    v60 = *(v13 + 8);
    v60(v59, v12);
    v60(v85, v12);
  }

  v9 = v89;
  if (v91)
  {
    goto LABEL_20;
  }

LABEL_22:
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logger.inference);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "#SELF Logging - Task ID not available in metadata", v64, 2u);
  }

  if (v29)
  {
LABEL_27:
    [v29 setSiriEngagementTaskSuccess:dword_10002D71C[v87]];
    [v29 setTriggerOrigin:3];
  }

  return v29;
}

uint64_t specialized UserAlignmentScoreReporter.reportWithMetaData(response:data:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  *(v4 + 48) = a3;
  v6 = type metadata accessor for UUID();
  *(v4 + 24) = v6;
  v7 = *(v6 - 8);
  *(v4 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return _swift_task_switch(specialized UserAlignmentScoreReporter.reportWithMetaData(response:data:), v9, v11);
}

uint64_t specialized UserAlignmentScoreReporter.reportWithMetaData(response:data:)()
{
  v57 = v0;
  v1 = [objc_allocWithZone(PSESchemaPSEClientEvent) init];
  if (!v1)
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.inference);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "#SELF Logging - cannot create PSE event wrapper", v29, 2u);
    }

    goto LABEL_53;
  }

  v55 = v1;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.inference);
  v4 = v2[2];
  v53 = v2[1];
  v5 = v2[4];
  v49 = v2[3];

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v51 = v4;

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 16);
  if (!v8)
  {

    v13 = *v9;
    if (v13 > 1)
    {
      goto LABEL_18;
    }

LABEL_28:
    if (v13)
    {
      v45 = [objc_allocWithZone(PSESchemaPSEMediaSignalGenerated) init];
      if (v45)
      {
        v23 = v45;
        v24 = [objc_allocWithZone(PSESchemaPSECommonSignal) init];
        v25 = &selRef_setMediaSignalGenerated_;
        if (!v24)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v27 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v27, v42))
      {
        goto LABEL_52;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "#SELF Logging - cannot create Media/Music PSE schema";
    }

    else
    {
      v30 = [objc_allocWithZone(PSESchemaPSECallSignalGenerated) init];
      if (v30)
      {
        v23 = v30;
        v24 = [objc_allocWithZone(PSESchemaPSECommonSignal) init];
        v25 = &selRef_setCallSignalGenerated_;
        if (!v24)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v27 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v27, v42))
      {
        goto LABEL_52;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "#SELF Logging - cannot create PhoneCall PSE schema";
    }

    goto LABEL_51;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v56 = v11;
  *v10 = 136315138;
  v12 = 0xE90000000000006CLL;
  v13 = *v9;
  v14 = 0x6C61637472617473;
  v15 = 0xEB000000006D7261;
  v16 = 0x6C61657461657263;
  v17 = 0xE400000000000000;
  v18 = 1936744813;
  if (v13 != 3)
  {
    v18 = 0x726F707075736E75;
    v17 = 0xEB00000000646574;
  }

  if (v13 != 2)
  {
    v16 = v18;
    v15 = v17;
  }

  if (*v9)
  {
    v14 = 0x6964656D79616C70;
    v12 = 0xE900000000000061;
  }

  if (*v9 <= 1u)
  {
    v19 = v14;
  }

  else
  {
    v19 = v16;
  }

  if (*v9 <= 1u)
  {
    v20 = v12;
  }

  else
  {
    v20 = v15;
  }

  v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v56);

  *(v10 + 4) = v21;
  _os_log_impl(&_mh_execute_header, v6, v7, "Intent type: %s", v10, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v11);

  if (v13 <= 1)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (v13 == 2)
  {
    v31 = [objc_allocWithZone(PSESchemaPSEAlarmSignalGenerated) init];
    if (v31)
    {
      v23 = v31;
      v24 = [objc_allocWithZone(PSESchemaPSECommonSignal) init];
      v25 = &selRef_setAlarmSignalGenerated_;
      if (!v24)
      {
LABEL_37:
        v35 = *(v0 + 32);
        v34 = *(v0 + 40);
        v36 = *(v0 + 24);
        v37 = *(v0 + 48);
        [v23 setCommonSignal:v24];

        v38 = specialized UserAlignmentScoreReporter.populateMetaData(result:data:)(v37, v54, v52, v50, v5);
        [v55 setEventMetadata:v38];

        [v55 *v25];
        v39 = [objc_opt_self() sharedAnalytics];
        v27 = [v39 defaultMessageStream];

        UUID.init()();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v35 + 8))(v34, v36);
        [v27 emitMessage:v55 isolatedStreamUUID:isa];

        v41 = 1;
        goto LABEL_54;
      }

LABEL_34:
      v32 = *(v0 + 16);
      v33 = *(v32 + 40);
      if (*(v32 + 48))
      {
        v33 = 0.0;
      }

      [v24 setEventDonationTimeInSecondsSince2001:v33];
      goto LABEL_37;
    }

    v27 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v42))
    {
      goto LABEL_52;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "#SELF Logging - cannot create Alarm PSE schema";
    goto LABEL_51;
  }

  if (v13 == 3)
  {
    v22 = [objc_allocWithZone(PSESchemaPSEMapsSignalGenerated) init];
    if (v22)
    {
      v23 = v22;
      v24 = [objc_allocWithZone(PSESchemaPSECommonSignal) init];
      v25 = &selRef_setMapsSignalGenerated_;
      if (!v24)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v27 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v42))
    {
      goto LABEL_52;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "#SELF Logging - cannot create Geo/Maps PSE schema";
    goto LABEL_51;
  }

  v27 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "#SELF Logging - unsupported use case, not logging PSE schema";
LABEL_51:
    _os_log_impl(&_mh_execute_header, v27, v42, v44, v43, 2u);
  }

LABEL_52:

LABEL_53:
  v41 = 0;
LABEL_54:

  v46 = *(v0 + 40);

  v47 = *(v0 + 8);

  return v47(v41);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserAlignmentScoreEvaluator.__allocating_init()()
{
  v0 = swift_allocObject();
  UserAlignmentScoreEvaluator.init()();
  return v0;
}

void UserAlignmentScoreEvaluator.init()()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (v3)
  {
    v0[2] = v3;
    type metadata accessor for UserAlignmentScoreReporter();
    v0[4] = swift_allocObject();
    v4 = BMSiriPostSiriEngagementIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension20ObservabilityManagerCyAA20PSETrajectoryBuilderVGMd, &_s18InferenceExtension20ObservabilityManagerCyAA20PSETrajectoryBuilderVGMR);
    v5 = swift_allocObject();
    v5[2] = &outlined read-only object #0 of UserAlignmentScoreEvaluator.init();
    v5[3] = v3;
    v5[4] = v4;
    type metadata accessor for BiomeStreaming();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v5[5] = v6;
    v0[3] = v5;
    v7 = v3;
    v8 = v4;
    v9 = v7;
    v10 = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t UserAlignmentScoreEvaluator.evaluate(config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[33] = v5;
  v4[34] = v7;

  return _swift_task_switch(UserAlignmentScoreEvaluator.evaluate(config:), v5, v7);
}

uint64_t UserAlignmentScoreEvaluator.evaluate(config:)()
{
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.inference);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "TaskName asked to stop!", v4, 2u);
    }

    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(*(v0 + 256) + 24);
    v8 = **(v0 + 248);
    v9 = swift_task_alloc();
    *(v0 + 280) = v9;
    *v9 = v0;
    v9[1] = UserAlignmentScoreEvaluator.evaluate(config:);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);

    return specialized ObservabilityManager.buildUserJourney(maxRecords:)(v11, v10, v8);
  }
}

{
  v1 = v0[36];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = v0[36];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[38] = v2;
  v3 = v0[36];
  if (!v2)
  {
    v8 = v0[36];

    if (one-time initialization token for inference == -1)
    {
LABEL_10:
      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.inference);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "No user engagement feature formulated to infer user experience, existing", v12, 2u);
      }

      v7 = v0[1];
      goto LABEL_13;
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v4 = v0[37];
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v3 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v0[39] = v5;
  v0[40] = 1;
  static Task<>.checkCancellation()();
  if (v4)
  {
    v6 = v0[36];

    v7 = v0[1];
LABEL_13:

    return v7();
  }

  v14 = swift_task_alloc();
  v0[41] = v14;
  *v14 = v0;
  v14[1] = UserAlignmentScoreEvaluator.evaluate(config:);

  return UserEngagementFeature.formatEngagements()();
}

{
  v1 = v0[31];
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v0[44] = v3;
  type metadata accessor for InferenceEngine();
  inited = swift_initStackObject();
  v0[45] = inited;
  v5 = type metadata accessor for UserEngagementModelManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v8 = UserEngagementModelManager.init(systemPromptFromConfig:)(v2, v3);
  v0[46] = v8;
  *(inited + 32) = v8;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v9 = v0[43];
  v10 = v0[36];
  v11 = type metadata accessor for Logger();
  v0[47] = __swift_project_value_buffer(v11, static Logger.inference);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[40];
    v15 = v0[36];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v0[28] = v17;
    *v16 = 134218498;
    *(v16 + 4) = v14;
    *(v16 + 12) = 2048;
    if (v15 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      v20 = v0[36];
    }

    else
    {
      v18 = *((v0[36] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v0[42];
    v21 = v0[43];
    *(v16 + 14) = v18;

    *(v16 + 22) = 2080;
    *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v0 + 28);
    _os_log_impl(&_mh_execute_header, v12, v13, "Processing User Engagement Journey %ld/%ld: %s", v16, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v19 = v0[36];
  }

  v23 = swift_task_alloc();
  v0[48] = v23;
  *v23 = v0;
  v23[1] = UserAlignmentScoreEvaluator.evaluate(config:);
  v24 = v0[42];
  v25 = v0[43];
  v27 = v0[29];
  v26 = v0[30];

  return InferenceEngine.call(prompt:)(v27, v26, v24, v25);
}

{
  v1 = *(v0 + 312);
  *(v0 + 89) = *(v1 + 120);
  *(v0 + 416) = *(v1 + 128);
  *(v0 + 424) = *(v1 + 136);
  *(v0 + 432) = *(v1 + 144);
  *(v0 + 440) = *(v1 + 152);
  *(v0 + 448) = *(v1 + 160);
  *(v0 + 92) = *(v1 + 168);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(UserAlignmentScoreEvaluator.evaluate(config:), v3, v2);
}

{
  v1 = *(v0 + 400);
  if (v1)
  {
    v2 = *(v0 + 90);
    v3 = *(v0 + 376);
    v4 = *(v0 + 400);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    v7 = v2 >> 8;
    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 392);
      v9 = *(v0 + 320);
      v10 = swift_slowAlloc();
      *(v0 + 216) = swift_slowAlloc();
      *v10 = 134218754;
      *(v10 + 4) = v9;
      *(v10 + 12) = 2080;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v1, (v0 + 216));

      *(v10 + 14) = v11;
      *(v10 + 22) = 2080;
      if (v2)
      {
        if (v2 == 1)
        {
          v12 = 0x7365636375736E75;
        }

        else
        {
          v12 = 0xD000000000000012;
        }

        if (v2 == 1)
        {
          v13 = 0xEC0000006C756673;
        }

        else
        {
          v13 = 0x800000010002EF40;
        }
      }

      else
      {
        v13 = 0xEA00000000006C75;
        v12 = 0x6673736563637573;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, (v0 + 216));

      *(v10 + 24) = v31;
      *(v10 + 32) = 2080;
      v32 = 0xE600000000000000;
      v33 = 0x6D756964654DLL;
      if (v7 != 1)
      {
        v33 = 7827276;
        v32 = 0xE300000000000000;
      }

      if (v7)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1751607624;
      }

      if (v7)
      {
        v35 = v32;
      }

      else
      {
        v35 = 0xE400000000000000;
      }

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, (v0 + 216));

      *(v10 + 34) = v36;
      _os_log_impl(&_mh_execute_header, v5, v6, "\nOn-device User Engagement Inference Results for Feature %ld\n\n**Rationale**:  %s\n**Rating**:  %s\n**Confidence Score**:  %s\n========================================\n", v10, 0x2Au);
      swift_arrayDestroy();
    }

    v37 = *(v0 + 92);
    v38 = *(v0 + 448);
    v39 = *(v0 + 89);
    v40 = *(v0 + 256);
    *(v0 + 96) = *(v0 + 392);
    *(v0 + 104) = v1;
    *(v0 + 112) = v2;
    *(v0 + 120) = v39;
    v41 = *(v0 + 432);
    *(v0 + 128) = *(v0 + 416);
    *(v0 + 144) = v41;
    *(v0 + 160) = v38;
    *(v0 + 168) = v37;
    v42 = *(v0 + 96);
    v43 = *(v0 + 112);
    *(v0 + 73) = *(v0 + 153);
    v44 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v44;
    *(v0 + 16) = v42;
    *(v0 + 32) = v43;
    v45 = *(*v40 + 120);
    v53 = (v45 + *v45);
    v46 = v45[1];
    v47 = swift_task_alloc();
    *(v0 + 456) = v47;
    *v47 = v0;
    v47[1] = UserAlignmentScoreEvaluator.evaluate(config:);
    v48 = *(v0 + 256);
    v50 = *(v0 + 232);
    v49 = *(v0 + 240);

    return v53(v50, v49, v0 + 16);
  }

  v14 = *(v0 + 440);
  v15 = *(v0 + 424);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 312);

  if (*(v0 + 320) == *(v0 + 304))
  {
    v20 = *(v0 + 288);

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.inference);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "End of User Engagement Inference session.", v24, 2u);
    }

    v25 = *(v0 + 8);
    goto LABEL_22;
  }

  v26 = *(v0 + 408);
  v27 = *(v0 + 320);
  v28 = *(v0 + 288);
  if ((v28 & 0xC000000000000001) != 0)
  {
    v52 = *(v0 + 320);
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v29 = result;
  }

  else
  {
    if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_43:
      __break(1u);
      return result;
    }

    v29 = *(v28 + 8 * v27 + 32);
  }

  *(v0 + 312) = v29;
  *(v0 + 320) = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    goto LABEL_43;
  }

  static Task<>.checkCancellation()();
  if (v26)
  {
    v30 = *(v0 + 288);

    v25 = *(v0 + 8);
LABEL_22:

    return v25();
  }

  v51 = swift_task_alloc();
  *(v0 + 328) = v51;
  *v51 = v0;
  v51[1] = UserAlignmentScoreEvaluator.evaluate(config:);

  return UserEngagementFeature.formatEngagements()();
}

{
  if (*(v0 + 93))
  {
    v1 = *(v0 + 376);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 368);
    v6 = *(v0 + 352);
    v7 = *(v0 + 312);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "#SELF Logging - Emitted PSE SELF signals with UserAlignmentResult.", v8, 2u);
    }

    else
    {
    }
  }

  else
  {
    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    v11 = *(v0 + 312);
  }

  if (*(v0 + 320) == *(v0 + 304))
  {
    v13 = *(v0 + 288);

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.inference);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "End of User Engagement Inference session.", v17, 2u);
    }

    v18 = *(v0 + 8);
    goto LABEL_18;
  }

  v19 = *(v0 + 408);
  v20 = *(v0 + 320);
  v21 = *(v0 + 288);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v25 = *(v0 + 320);
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v22 = result;
  }

  else
  {
    if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v22 = *(v21 + 8 * v20 + 32);
  }

  *(v0 + 312) = v22;
  *(v0 + 320) = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  static Task<>.checkCancellation()();
  if (v19)
  {
    v23 = *(v0 + 288);

    v18 = *(v0 + 8);
LABEL_18:

    return v18();
  }

  v24 = swift_task_alloc();
  *(v0 + 328) = v24;
  *v24 = v0;
  v24[1] = UserAlignmentScoreEvaluator.evaluate(config:);

  return UserEngagementFeature.formatEngagements()();
}

{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[39];

  v4 = v0[51];
  v5 = v0[1];

  return v5();
}

uint64_t UserAlignmentScoreEvaluator.evaluate(config:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v5 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = v3[33];
    v9 = v3[34];

    return _swift_task_switch(UserAlignmentScoreEvaluator.evaluate(config:), v8, v9);
  }
}

uint64_t UserAlignmentScoreEvaluator.evaluate(config:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v9 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = a2;

  v6 = *(v3 + 272);
  v7 = *(v3 + 264);

  return _swift_task_switch(UserAlignmentScoreEvaluator.evaluate(config:), v7, v6);
}

uint64_t UserAlignmentScoreEvaluator.evaluate(config:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 384);
  v8 = *v4;
  *(v6 + 392) = a1;
  *(v6 + 400) = a2;
  *(v6 + 90) = a3;
  *(v6 + 408) = v3;

  v9 = *(v5 + 344);
  if (v3)
  {
    v10 = *(v6 + 288);

    v11 = *(v6 + 264);
    v12 = *(v6 + 272);
    v13 = UserAlignmentScoreEvaluator.evaluate(config:);
  }

  else
  {
    v14 = *(v6 + 312);

    v13 = UserAlignmentScoreEvaluator.evaluate(config:);
    v11 = v14;
    v12 = 0;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t UserAlignmentScoreEvaluator.evaluate(config:)(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 456);
  v8 = *v1;
  *(v3 + 93) = a1;

  outlined destroy of UserAlignmentModelResponseWithMetaData(v3 + 96);
  v5 = *(v2 + 272);
  v6 = *(v2 + 264);

  return _swift_task_switch(UserAlignmentScoreEvaluator.evaluate(config:), v6, v5);
}

uint64_t specialized ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[7] = v5;
  v4[8] = v7;

  return _swift_task_switch(specialized ObservabilityManager.buildUserJourney(maxRecords:), v5, v7);
}

uint64_t specialized ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v19 = v0;
  static Task<>.checkCancellation()();
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Logger.inference);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 32);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Build user engagement journey from %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = specialized ObservabilityManager.buildUserJourney(maxRecords:);
  v13 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];

  return specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:)(v16, v15, v13);
}

{
  v37 = v0;
  v1 = v0[11];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v35 = v0[11];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[11];
  v4 = v0[9];
  if (v2)
  {
    v5 = v0[6];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 134218242;
      if (v1 >> 62)
      {
        v18 = v0[11];
        if (v1 < 0)
        {
          v19 = v0[11];
        }

        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v0[11];
      v21 = v0[6];
      *(v8 + 4) = v10;

      *(v8 + 12) = 2080;
      v22 = *(v21 + 32);
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

      *(v8 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v6, v7, "Loaded %ld reference events from %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
      v17 = v0[11];
    }

    v26 = v0[11];
    v27 = v0[6];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
    v29 = swift_task_alloc();
    v0[12] = v29;
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18InferenceExtension21UserEngagementFeatureCGMd, &_sSay18InferenceExtension21UserEngagementFeatureCGMR);
    v31 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v32 = swift_task_alloc();
    v0[13] = v32;
    *v32 = v0;
    v32[1] = specialized ObservabilityManager.buildUserJourney(maxRecords:);
    v33 = v0[3];
    v34 = v0[4];
    v39 = v30;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v28, v30, v33, v34, &async function pointer to partial apply for specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), v29, v28);
  }

  else
  {
    v11 = v0[11];

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No PSE events found from PSE Biome stream, existing inference task", v14, 2u);
    }

    v15 = v0[1];

    return v15(&_swiftEmptyArrayStorage);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(specialized ObservabilityManager.buildUserJourney(maxRecords:), v6, v5);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t specialized ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);

    return _swift_task_switch(specialized ObservabilityManager.buildUserJourney(maxRecords:), v8, v9);
  }
}

uint64_t UserAlignmentScoreEvaluator.persist(response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = *(a3 + 72);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v6 = *(a3 + 40);
  *(v3 + 16) = *(a3 + 24);
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a3 + 56);
  v7 = *(a3 + 16);
  v8 = swift_task_alloc();
  *(v3 + 88) = v8;
  *v8 = v3;
  v8[1] = UserAlignmentScoreEvaluator.persist(response:);

  return specialized UserAlignmentScoreReporter.reportWithMetaData(response:data:)(a1, a2, v7, v3 + 16);
}

uint64_t UserAlignmentScoreEvaluator.persist(response:)(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  v6 = *v1;

  if (v5)
  {
    v7 = *(v3 + 72);
    v8 = *(v3 + 80);
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v3 + 65) = a1 & 1;

  return _swift_task_switch(UserAlignmentScoreEvaluator.persist(response:), v9, v11);
}

uint64_t UserAlignmentScoreEvaluator.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t UserAlignmentScoreEvaluator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:), v5, v7);
}

uint64_t specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:)()
{
  static Task<>.checkCancellation()();
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Load PSE as reference events", v4, 2u);
  }

  v5 = v0[5];

  v6 = *(v5 + 40);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:);
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return _s18InferenceExtension14BiomeStreamingC04loadC19EventsFromBMLibrary9eventType10maxRecordsSayxGSgxm_SitYaSo11BMEventBaseCRbzSo11BMStoreDataRzlFSo24BMSiriPostSiriEngagementC_Tt0g5(v10, v8, v9);
}

{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    lazy protocol witness table accessor for type UserEngagementInferenceError and conformance UserEngagementInferenceError();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return _swift_task_switch(specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:), v5, v4);
}

uint64_t specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy18InferenceExtension21UserEngagementFeatureCSg_GMd, &_sScG8IteratorVy18InferenceExtension21UserEngagementFeatureCSg_GMR);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

uint64_t specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[12];
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v27 = v4[12];
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:
    v28 = v4[16];
    v29 = v4[11];
    v4[9] = &_swiftEmptyArrayStorage;
    v30 = *v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
    TaskGroup.makeAsyncIterator()();
    v4[19] = &_swiftEmptyArrayStorage;
    v31 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v32 = swift_task_alloc();
    v4[20] = v32;
    *v32 = v4;
    v32[1] = specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
    v33 = v4[16];
    a4 = v4[14];
    v6 = (v4 + 10);
    a2 = 0;
    a3 = 0;

    return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v35 = v4[12] + 32;
    v36 = *v4[11];
    v37 = v5 & 0xC000000000000001;
    v38 = v6;
    while (1)
    {
      if (v37)
      {
        v9 = v4[12];
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v35 + 8 * v7);
      }

      v11 = v10;
      v13 = v4[17];
      v12 = v4[18];
      v14 = v4[13];
      v15 = type metadata accessor for TaskPriority();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = v11;
      outlined init with copy of TaskPriority?(v12, v13);
      LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);

      v19 = v11;

      v20 = v4[17];
      if (v12 == 1)
      {
        outlined destroy of TaskPriority?(v4[17]);
        if (!*v18)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v16 + 8))(v20, v15);
        if (!*v18)
        {
LABEL_13:
          v22 = 0;
          v24 = 0;
          goto LABEL_14;
        }
      }

      v21 = v17[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      swift_unknownObjectRelease();
LABEL_14:
      v25 = swift_allocObject();
      *(v25 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
      *(v25 + 24) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
      v26 = (v24 | v22);
      if (v24 | v22)
      {
        v26 = v4 + 2;
        v4[2] = 0;
        v4[3] = 0;
        v4[4] = v22;
        v4[5] = v24;
      }

      ++v7;
      v8 = v4[18];
      v4[6] = 1;
      v4[7] = v26;
      v4[8] = v36;
      swift_task_create();

      outlined destroy of TaskPriority?(v8);
      if (v38 == v7)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
}

{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(a2, a3, a4);
}

uint64_t specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

{
  v1 = v0[10];
  if (v1 == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v8 = v0[19];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.inference);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[19];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (v13 >> 62)
      {
        v0[19];
        v25 = v14;
        v15 = _CocoaArrayWrapper.endIndex.getter();
        v14 = v25;
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v0[19];
      *(v14 + 4) = v15;
      v17 = v14;

      _os_log_impl(&_mh_execute_header, v10, v11, "Produced User Engagement contexturization for %ld events", v17, 0xCu);
    }

    else
    {
      v18 = v0[19];
    }

    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[16];

    v22 = v0[1];
    v23 = v0[19];

    return v22(v23);
  }

  else
  {
    if (v1)
    {
      v2 = v0 + 9;
      v3 = v0[10];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      outlined consume of UserEngagementFeature??(v1);
      v0[19] = v0[9];
    }

    v4 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
    v6 = v0[16];
    v7 = v0[14];

    return TaskGroup.Iterator.next(isolation:)(v0 + 10, 0, 0, v7);
  }
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
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
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return _swift_task_switch(specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
  v2 = *(v0 + 24);

  return specialized PSETrajectoryBuilder.build(event:with:)(0, 0, v2);
}

{
  **(v0 + 16) = *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

uint64_t dispatch thunk of UserAlignmentScoreEvaluator.evaluate(config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of SELFReporter.report(event:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of UserAlignmentScoreEvaluator.persist(response:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 8);
  v10 = *(a3 + 24);
  v11 = a3[8];
  v12 = *(a3 + 72);
  v13 = *(*v3 + 120);
  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v4 + 16) = v7;
  *(v4 + 96) = v15;
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  v16 = *(a3 + 3);
  *(v4 + 48) = *(a3 + 2);
  *(v4 + 64) = v16;
  *(v4 + 80) = v11;
  *(v4 + 88) = v12;
  *v15 = v4;
  v15[1] = dispatch thunk of UserAlignmentScoreEvaluator.persist(response:);

  return v18(a1, a2, v4 + 16);
}

uint64_t dispatch thunk of UserAlignmentScoreEvaluator.persist(response:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of SELFReporter.report(event:);

  return specialized closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(a1, a2, v7, v6);
}

uint64_t sub_100007C58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007E44()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5(a1, v5);
}

uint64_t outlined consume of UserEngagementFeature??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserEngagementInferenceError and conformance UserEngagementInferenceError()
{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceError and conformance UserEngagementInferenceError);
  }

  return result;
}

InferenceExtension::UserAlignmentScore_Prompt::Version_optional __swiftcall UserAlignmentScore_Prompt.Version.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserAlignmentScore_Prompt.Version.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = InferenceExtension_UserAlignmentScore_Prompt_Version_v1_2_0;
  }

  else
  {
    v4.value = InferenceExtension_UserAlignmentScore_Prompt_Version_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t UserAlignmentScore_Prompt.Version.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x302E322E3176;
  }

  else
  {
    return 0x302E312E3176;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserAlignmentScore_Prompt.Version(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x302E322E3176;
  }

  else
  {
    v2 = 0x302E312E3176;
  }

  if (*a2)
  {
    v3 = 0x302E322E3176;
  }

  else
  {
    v3 = 0x302E312E3176;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserAlignmentScore_Prompt.Version()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserAlignmentScore_Prompt.Version()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserAlignmentScore_Prompt.Version()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UserAlignmentScore_Prompt.Version@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserAlignmentScore_Prompt.Version.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance UserAlignmentScore_Prompt.Version(uint64_t *a1@<X8>)
{
  v2 = 0x302E312E3176;
  if (*v1)
  {
    v2 = 0x302E322E3176;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

void __swiftcall UserAlignmentScore_Prompt.init(version:)(InferenceExtension::UserAlignmentScore_Prompt *__return_ptr retstr, InferenceExtension::UserAlignmentScore_Prompt::Version version)
{
  retstr->version = version & 1;
  retstr->system_v1._countAndFlagsBits = 0x1000000000000D7DLL;
  retstr->system_v1._object = 0x800000010002F120;
  retstr->system_v1_optimized._countAndFlagsBits = 0x1000000000001178;
  retstr->system_v1_optimized._object = 0x800000010002FEA0;
}

uint64_t UserAlignmentScore_Prompt.systemPrompt.getter()
{
  v1 = 8;
  if (*v0)
  {
    v1 = 24;
  }

  v2 = 16;
  if (*v0)
  {
    v2 = 32;
  }

  v3 = *&v0[v1];
  v4 = *&v0[v2];

  return v3;
}

uint64_t UserAlignmentScore_Prompt.system_v1.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UserAlignmentScore_Prompt.system_v1.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UserAlignmentScore_Prompt.system_v1_optimized.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t UserAlignmentScore_Prompt.system_v1_optimized.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type UserAlignmentScore_Prompt.Version and conformance UserAlignmentScore_Prompt.Version()
{
  result = lazy protocol witness table cache variable for type UserAlignmentScore_Prompt.Version and conformance UserAlignmentScore_Prompt.Version;
  if (!lazy protocol witness table cache variable for type UserAlignmentScore_Prompt.Version and conformance UserAlignmentScore_Prompt.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentScore_Prompt.Version and conformance UserAlignmentScore_Prompt.Version);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UserAlignmentScore_Prompt.Version] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UserAlignmentScore_Prompt.Version] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UserAlignmentScore_Prompt.Version] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18InferenceExtension25UserAlignmentScore_PromptV7VersionOGMd, &_sSay18InferenceExtension25UserAlignmentScore_PromptV7VersionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UserAlignmentScore_Prompt.Version] and conformance [A]);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UserAlignmentScore_Prompt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for UserAlignmentScore_Prompt(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserAlignmentScore_Prompt.Version(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserAlignmentScore_Prompt.Version(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UserAlignmentResult.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6673736563637573;
  }

  if (a1 == 1)
  {
    return 0x7365636375736E75;
  }

  return 0xD000000000000012;
}

uint64_t ConfidenceScore.description.getter(char a1)
{
  if (!a1)
  {
    return 1751607624;
  }

  if (a1 == 1)
  {
    return 0x6D756964654DLL;
  }

  return 7827276;
}

uint64_t static UserAlignmentResult.generationSchema.getter()
{
  v0 = lazy protocol witness table accessor for type UserAlignmentResult and conformance UserAlignmentResult();

  return GenerationSchema.init(type:description:anyOf:)(&type metadata for UserAlignmentResult, v0, 0, 0, &outlined read-only object #0 of static UserAlignmentResult.generationSchema.getter);
}

unint64_t lazy protocol witness table accessor for type UserAlignmentResult and conformance UserAlignmentResult()
{
  result = lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult;
  if (!lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult;
  if (!lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult;
  if (!lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult;
  if (!lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult;
  if (!lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult;
  if (!lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentResult and conformance UserAlignmentResult);
  }

  return result;
}

uint64_t UserAlignmentResult.generatedContent.getter(char a1)
{
  if (!a1)
  {
    return String.generatedContent.getter(0x6673736563637573, 0xEA00000000006C75);
  }

  if (a1 == 1)
  {
    return String.generatedContent.getter(0x7365636375736E75, 0xEC0000006C756673);
  }

  return String.generatedContent.getter(0xD000000000000012, 0x800000010002EF40);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserAlignmentResult()
{
  v1 = 0x7365636375736E75;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6673736563637573;
  }
}

uint64_t static ConfidenceScore.generationSchema.getter()
{
  v0 = lazy protocol witness table accessor for type ConfidenceScore and conformance ConfidenceScore();

  return GenerationSchema.init(type:description:anyOf:)(&type metadata for ConfidenceScore, v0, 0, 0, &outlined read-only object #0 of static ConfidenceScore.generationSchema.getter);
}

unint64_t lazy protocol witness table accessor for type ConfidenceScore and conformance ConfidenceScore()
{
  result = lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore;
  if (!lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore;
  if (!lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore;
  if (!lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore;
  if (!lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore;
  if (!lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore;
  if (!lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfidenceScore and conformance ConfidenceScore);
  }

  return result;
}

uint64_t ConfidenceScore.generatedContent.getter(char a1)
{
  if (!a1)
  {
    return String.generatedContent.getter(1751607624, 0xE400000000000000);
  }

  if (a1 == 1)
  {
    return String.generatedContent.getter(0x6D756964654DLL, 0xE600000000000000);
  }

  return String.generatedContent.getter(7827276, 0xE300000000000000);
}

Swift::Int TrajectoryType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserAlignmentResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserAlignmentResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConfidenceScore()
{
  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 7827276;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607624;
  }
}

uint64_t UserAlignmentModelResponse.rationale.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static UserAlignmentModelResponse.generationSchema.getter()
{
  v0 = lazy protocol witness table accessor for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16FoundationModels16GenerationSchemaV8PropertyVGMd, &_ss23_ContiguousArrayStorageCy16FoundationModels16GenerationSchemaV8PropertyVGMR);
  v1 = *(type metadata accessor for GenerationSchema.Property() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002D9B0;
  GenerationSchema.Property.init<A>(name:description:type:guides:)();
  lazy protocol witness table accessor for type UserAlignmentResult and conformance UserAlignmentResult();
  GenerationSchema.Property.init<A>(name:description:type:guides:)();
  lazy protocol witness table accessor for type ConfidenceScore and conformance ConfidenceScore();
  GenerationSchema.Property.init<A>(name:description:type:guides:)();

  return GenerationSchema.init(type:description:properties:)(&type metadata for UserAlignmentModelResponse, v0, 0xD000000000000021, 0x8000000100031020, v4);
}

unint64_t lazy protocol witness table accessor for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse()
{
  result = lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse;
  if (!lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse;
  if (!lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse;
  if (!lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse;
  if (!lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse;
  if (!lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse);
  }

  return result;
}

uint64_t UserAlignmentModelResponse.generatedContent.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels12GenerationIDVSgMd, &_s16FoundationModels12GenerationIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v39 = _swiftEmptyArrayStorage;
  v37 = &type metadata for String;
  v38 = &protocol witness table for String;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  *&v32 = 0x6C616E6F69746172;
  *(&v32 + 1) = 0xE900000000000065;
  outlined init with take of ConvertibleToGeneratedContent(&v36, &v33);
  swift_beginAccess();

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[7 * v12];
  v14 = v32;
  v15 = v33;
  v16 = v34;
  v13[10] = v35;
  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  *(v13 + 2) = v14;
  v39 = v10;
  v37 = &type metadata for UserAlignmentResult;
  v38 = lazy protocol witness table accessor for type UserAlignmentResult and conformance UserAlignmentResult();
  LOBYTE(v36) = a3;
  *&v32 = 0x746C75736572;
  *(&v32 + 1) = 0xE600000000000000;
  outlined init with take of ConvertibleToGeneratedContent(&v36, &v33);
  v18 = v10[2];
  v17 = v10[3];
  if (v18 >= v17 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
  }

  v10[2] = v18 + 1;
  v19 = &v10[7 * v18];
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v19[10] = v35;
  *(v19 + 3) = v21;
  *(v19 + 4) = v22;
  *(v19 + 2) = v20;
  v39 = v10;
  swift_endAccess();
  v37 = &type metadata for ConfidenceScore;
  v38 = lazy protocol witness table accessor for type ConfidenceScore and conformance ConfidenceScore();
  LOBYTE(v36) = HIBYTE(a3);
  *&v32 = 0x6E656469666E6F63;
  *(&v32 + 1) = 0xEA00000000006563;
  outlined init with take of ConvertibleToGeneratedContent(&v36, &v33);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 + 2, 1, v10);
  }

  v24 = v10[2];
  v23 = v10[3];
  if (v24 >= v23 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v10);
  }

  v10[2] = v24 + 1;
  v25 = &v10[7 * v24];
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v25[10] = v35;
  *(v25 + 3) = v27;
  *(v25 + 4) = v28;
  *(v25 + 2) = v26;
  *&v32 = specialized _arrayForceCast<A, B>(_:)(v10);
  v29 = type metadata accessor for GenerationID();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_16FoundationModels29ConvertibleToGeneratedContent_ptGMd, &_sSaySS_16FoundationModels29ConvertibleToGeneratedContent_ptGMR);
  type metadata accessor for GeneratedContent();
  lazy protocol witness table accessor for type [(String, ConvertibleToGeneratedContent)] and conformance [A]();
  GeneratedContent.init<A, B>(properties:id:uniquingKeysWith:)();
}

uint64_t outlined init with take of ConvertibleToGeneratedContent(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of (name: String, value: ConvertibleToGeneratedContent)(v4, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetMd, &_sSS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16FoundationModels29ConvertibleToGeneratedContent_ptMd, &_sSS_16FoundationModels29ConvertibleToGeneratedContent_ptMR);
      swift_dynamicCast();
      v17 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v17;
      }

      v2[2] = v6 + 1;
      v7 = &v2[7 * v6];
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v7[10] = v16;
      *(v7 + 3) = v9;
      *(v7 + 4) = v10;
      *(v7 + 2) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t UserAlignmentModelResponse.PartiallyGenerated.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UserAlignmentModelResponse.PartiallyGenerated.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for GenerationID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UserAlignmentModelResponse.PartiallyGenerated.rationale.getter()
{
  v1 = (v0 + *(type metadata accessor for UserAlignmentModelResponse.PartiallyGenerated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UserAlignmentModelResponse.PartiallyGenerated.rationale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UserAlignmentModelResponse.PartiallyGenerated() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UserAlignmentModelResponse.PartiallyGenerated.result.setter(char a1)
{
  result = type metadata accessor for UserAlignmentModelResponse.PartiallyGenerated();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t UserAlignmentModelResponse.PartiallyGenerated.confidence.setter(char a1)
{
  result = type metadata accessor for UserAlignmentModelResponse.PartiallyGenerated();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t UserAlignmentModelResponse.PartiallyGenerated.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels12GenerationIDVSgMd, &_s16FoundationModels12GenerationIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for GenerationID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserAlignmentModelResponse.PartiallyGenerated();
  v14 = (a2 + v13[5]);
  *v14 = 0;
  v14[1] = 0;
  v21 = v13[6];
  *(a2 + v21) = 3;
  v20 = v13[7];
  *(a2 + v20) = 3;
  GeneratedContent.id.getter();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    GenerationID.init()();
    if (v15(v7, 1, v8) != 1)
    {
      outlined destroy of GenerationID?(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  (*(v9 + 32))(a2, v12, v8);
  v16 = v23;
  GeneratedContent.value<A>(_:forProperty:)();
  if (v16)
  {
    v17 = type metadata accessor for GeneratedContent();
    (*(*(v17 - 8) + 8))(a1, v17);
    return outlined destroy of UserAlignmentModelResponse.PartiallyGenerated(a2);
  }

  else
  {
    *v14 = v22;
    lazy protocol witness table accessor for type UserAlignmentResult and conformance UserAlignmentResult();
    GeneratedContent.value<A>(_:forProperty:)();
    *(a2 + v21) = v22;
    lazy protocol witness table accessor for type ConfidenceScore and conformance ConfidenceScore();
    GeneratedContent.value<A>(_:forProperty:)();
    v19 = type metadata accessor for GeneratedContent();
    result = (*(*(v19 - 8) + 8))(a1, v19);
    *(a2 + v20) = v22;
  }

  return result;
}

uint64_t UserAlignmentModelResponseWithMetaData.response.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);

  return v1;
}

uint64_t UserAlignmentModelResponseWithMetaData.response.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v7 = a3 >> 8;
  v8 = *(v3 + 8);

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = v4;
  *(v3 + 17) = v7;
  return result;
}

uint64_t UserAlignmentModelResponseWithMetaData.metaData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  v4 = *(v1 + 56);
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 UserAlignmentModelResponseWithMetaData.metaData.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  v4 = *(v1 + 56);

  v5 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v5;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  *(v1 + 72) = *(a1 + 48);
  return result;
}

uint64_t UserAlignmentModelResponse.init(_:)(uint64_t a1)
{
  result = specialized UserAlignmentModelResponse.init(_:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for ConvertibleFromGeneratedContent.init(_:) in conformance UserAlignmentModelResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized UserAlignmentModelResponse.init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t protocol witness for InstructionsRepresentable.instructionsRepresentation.getter in conformance UserAlignmentModelResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse();

  return ConvertibleToGeneratedContent.instructionsRepresentation.getter(a1, v2);
}

uint64_t protocol witness for PromptRepresentable.promptRepresentation.getter in conformance UserAlignmentModelResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse();

  return ConvertibleToGeneratedContent.promptRepresentation.getter(a1, v2);
}

uint64_t protocol witness for ConvertibleFromGeneratedContent.init(_:) in conformance UserAlignmentResult@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UserAlignmentResult.init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for ConvertibleToGeneratedContent.generatedContent.getter in conformance UserAlignmentResult()
{
  if (!*v0)
  {
    return String.generatedContent.getter(0x6673736563637573, 0xEA00000000006C75);
  }

  if (*v0 == 1)
  {
    return String.generatedContent.getter(0x7365636375736E75, 0xEC0000006C756673);
  }

  return String.generatedContent.getter(0xD000000000000012, 0x800000010002EF40);
}

uint64_t protocol witness for InstructionsRepresentable.instructionsRepresentation.getter in conformance UserAlignmentResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserAlignmentResult and conformance UserAlignmentResult();

  return ConvertibleToGeneratedContent.instructionsRepresentation.getter(a1, v2);
}

uint64_t protocol witness for PromptRepresentable.promptRepresentation.getter in conformance UserAlignmentResult(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserAlignmentResult and conformance UserAlignmentResult();

  return ConvertibleToGeneratedContent.promptRepresentation.getter(a1, v2);
}

uint64_t protocol witness for ConvertibleFromGeneratedContent.init(_:) in conformance ConfidenceScore@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConfidenceScore.init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for ConvertibleToGeneratedContent.generatedContent.getter in conformance ConfidenceScore()
{
  if (!*v0)
  {
    return String.generatedContent.getter(1751607624, 0xE400000000000000);
  }

  if (*v0 == 1)
  {
    return String.generatedContent.getter(0x6D756964654DLL, 0xE600000000000000);
  }

  return String.generatedContent.getter(7827276, 0xE300000000000000);
}

uint64_t protocol witness for InstructionsRepresentable.instructionsRepresentation.getter in conformance ConfidenceScore(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConfidenceScore and conformance ConfidenceScore();

  return ConvertibleToGeneratedContent.instructionsRepresentation.getter(a1, v2);
}

uint64_t protocol witness for PromptRepresentable.promptRepresentation.getter in conformance ConfidenceScore(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConfidenceScore and conformance ConfidenceScore();

  return ConvertibleToGeneratedContent.promptRepresentation.getter(a1, v2);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetGMd, &_ss23_ContiguousArrayStorageCySS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetMd, &_sSS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18InferenceExtension14TrajectoryTypeO_SStGMd, &_ss23_ContiguousArrayStorageCy18InferenceExtension14TrajectoryTypeO_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension14TrajectoryTypeO_SStMd, &_s18InferenceExtension14TrajectoryTypeO_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_18InferenceExtension10PSEFeatureVtGMd, "J9");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for UserAlignmentModelResponse.PartiallyGenerated()
{
  result = type metadata singleton initialization cache for UserAlignmentModelResponse.PartiallyGenerated;
  if (!type metadata singleton initialization cache for UserAlignmentModelResponse.PartiallyGenerated)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of GenerationID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels12GenerationIDVSgMd, &_s16FoundationModels12GenerationIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of UserAlignmentModelResponse.PartiallyGenerated(uint64_t a1)
{
  v2 = type metadata accessor for UserAlignmentModelResponse.PartiallyGenerated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized UserAlignmentModelResponse.init(_:)(uint64_t a1)
{
  GeneratedContent.value<A>(_:forProperty:)();
  v3 = type metadata accessor for GeneratedContent();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v1;
}

uint64_t specialized UserAlignmentResult.init(_:)(uint64_t a1)
{
  GeneratedContent.value<A>(_:)();
  if (v1)
  {
    goto LABEL_2;
  }

  v5 = v14._countAndFlagsBits == 0x6673736563637573 && v14._object == 0xEA00000000006C75;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = type metadata accessor for GeneratedContent();
    (*(*(v6 - 8) + 8))(a1, v6);

    return 0;
  }

  else if (v14 == __PAIR128__(0xEC0000006C756673, 0x7365636375736E75) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = type metadata accessor for GeneratedContent();
    (*(*(v7 - 8) + 8))(a1, v7);

    return 1;
  }

  else
  {
    if (__PAIR128__(0x800000010002EF40, 0xD000000000000012) != v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v9 = type metadata accessor for LanguageModelSession.GenerationError();
      lazy protocol witness table accessor for type GenerationID and conformance GenerationID(&lazy protocol witness table cache variable for type LanguageModelSession.GenerationError and conformance LanguageModelSession.GenerationError, &type metadata accessor for LanguageModelSession.GenerationError);
      swift_allocError();
      v11 = v10;
      _StringGuts.grow(_:)(28);

      String.append(_:)(v14);

      v12._countAndFlagsBits = 0x20726F662022;
      v12._object = 0xE600000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 0xD000000000000013;
      v13._object = 0x800000010002DE70;
      String.append(_:)(v13);
      LanguageModelSession.GenerationError.Context.init(debugDescription:)();
      (*(*(v9 - 8) + 104))(v11, enum case for LanguageModelSession.GenerationError.decodingFailure(_:), v9);
      swift_willThrow();
LABEL_2:
      v3 = type metadata accessor for GeneratedContent();
      return (*(*(v3 - 8) + 8))(a1, v3);
    }

    v8 = type metadata accessor for GeneratedContent();
    (*(*(v8 - 8) + 8))(a1, v8);

    return 2;
  }
}

uint64_t specialized ConfidenceScore.init(_:)(uint64_t a1)
{
  GeneratedContent.value<A>(_:)();
  if (v1)
  {
    goto LABEL_2;
  }

  v5 = v14._countAndFlagsBits == 1751607624 && v14._object == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = type metadata accessor for GeneratedContent();
    (*(*(v6 - 8) + 8))(a1, v6);

    return 0;
  }

  else if (v14 == __PAIR128__(0xE600000000000000, 0x6D756964654DLL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = type metadata accessor for GeneratedContent();
    (*(*(v7 - 8) + 8))(a1, v7);

    return 1;
  }

  else
  {
    if (v14 != __PAIR128__(0xE300000000000000, 7827276) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v9 = type metadata accessor for LanguageModelSession.GenerationError();
      lazy protocol witness table accessor for type GenerationID and conformance GenerationID(&lazy protocol witness table cache variable for type LanguageModelSession.GenerationError and conformance LanguageModelSession.GenerationError, &type metadata accessor for LanguageModelSession.GenerationError);
      swift_allocError();
      v11 = v10;
      _StringGuts.grow(_:)(28);

      String.append(_:)(v14);

      v12._countAndFlagsBits = 0x20726F662022;
      v12._object = 0xE600000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 0x6E656469666E6F43;
      v13._object = 0xEF65726F63536563;
      String.append(_:)(v13);
      LanguageModelSession.GenerationError.Context.init(debugDescription:)();
      (*(*(v9 - 8) + 104))(v11, enum case for LanguageModelSession.GenerationError.decodingFailure(_:), v9);
      swift_willThrow();
LABEL_2:
      v3 = type metadata accessor for GeneratedContent();
      return (*(*(v3 - 8) + 8))(a1, v3);
    }

    v8 = type metadata accessor for GeneratedContent();
    (*(*(v8 - 8) + 8))(a1, v8);

    return 2;
  }
}

uint64_t getEnumTagSinglePayload for UserAlignmentResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserAlignmentResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserAlignmentModelResponse(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for UserAlignmentModelResponse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenerationID();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000B970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenerationID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void type metadata completion function for UserAlignmentModelResponse.PartiallyGenerated()
{
  type metadata accessor for GenerationID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for UserAlignmentResult?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for ConfidenceScore?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserAlignmentModelResponseWithMetaData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for UserAlignmentModelResponseWithMetaData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GenerationID and conformance GenerationID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of (name: String, value: ConvertibleToGeneratedContent)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetMd, &_sSS4name_16FoundationModels29ConvertibleToGeneratedContent_p5valuetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *InferenceEngine.__allocating_init(dynamicInstruction:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UserEngagementModelManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v4[4] = UserEngagementModelManager.init(systemPromptFromConfig:)(a1, a2);
  return v4;
}

uint64_t InferenceEngine.dynamicInstruction.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *InferenceEngine.init(dynamicInstruction:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v3[2] = a1;
  v3[3] = a2;
  v6 = type metadata accessor for UserEngagementModelManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v3[4] = UserEngagementModelManager.init(systemPromptFromConfig:)(a1, a2);
  return v3;
}

uint64_t InferenceEngine.call(prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v7 = type metadata accessor for LanguageModelSession.GenerationError.Context();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v10 = type metadata accessor for LanguageModelSession.GenerationError();
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = type metadata accessor for CancellationError();
  v5[26] = v13;
  v14 = *(v13 - 8);
  v5[27] = v14;
  v15 = *(v14 + 64) + 15;
  v5[28] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels17GenerationOptionsV12SamplingModeVSgMd, &_s16FoundationModels17GenerationOptionsV12SamplingModeVSgMR) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v17 = type metadata accessor for GenerationOptions();
  v5[30] = v17;
  v18 = *(v17 - 8);
  v5[31] = v18;
  v19 = *(v18 + 64) + 15;
  v5[32] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMd, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMR) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v21 = type metadata accessor for Locale();
  v5[35] = v21;
  v22 = *(v21 - 8);
  v5[36] = v22;
  v23 = *(v22 + 64) + 15;
  v5[37] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v24 = dispatch thunk of Actor.unownedExecutor.getter();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v5[38] = v24;
  v5[39] = v26;

  return _swift_task_switch(InferenceEngine.call(prompt:), v24, v26);
}

uint64_t InferenceEngine.call(prompt:)()
{
  v64 = v0;
  static Task<>.checkCancellation()();
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  static Locale.current.getter();
  v4 = SystemLanguageModel.supportsLocale(_:)();

  v5 = *(v2 + 8);
  v5(v1, v3);
  if (v4)
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[40] = __swift_project_value_buffer(v6, static Logger.inference);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[37];
      v58 = v0[35];
      v60 = v5;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v63[0] = v11;
      *v10 = 136315138;
      static Locale.current.getter();
      v12 = Locale.identifier.getter();
      v14 = v13;
      v60(v9, v58);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v63);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Supported locale: %s, starting user engagement inference", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v16 = *(v0[14] + 32);
    v0[41] = v16;
    v17 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession;
    swift_beginAccess();
    v18 = *(v16 + v17);
    v0[42] = v18;
    if (v18)
    {

      static Task<>.checkCancellation()();
      v33 = v0[32];
      v34 = v0[29];

      static GenerationOptions.SamplingMode.greedy.getter();
      v35 = type metadata accessor for GenerationOptions.SamplingMode();
      (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
      GenerationOptions.init(sampling:temperature:maximumResponseTokens:)();
      v36 = async function pointer to LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)[1];
      v37 = swift_task_alloc();
      v0[43] = v37;
      v38 = lazy protocol witness table accessor for type UserAlignmentModelResponse and conformance UserAlignmentModelResponse();
      *v37 = v0;
      v37[1] = InferenceEngine.call(prompt:);
      v39 = v0[34];
      v40 = v0[32];
      v41 = v0[12];
      v42 = v0[13];
      v43 = v0[10];
      v44 = v0[11];
      v66 = &type metadata for UserAlignmentModelResponse;
      v67 = v38;

      return LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(v39, v43, v44, v41, v42);
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "FoundationModels session is not initialized successfully, re-initializing session", v32, 2u);
    }

    UserEngagementModelManager.reinitializeSession()();
  }

  else
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.inference);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[37];
      v61 = v5;
      v23 = v0[35];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v63[0] = v25;
      *v24 = 136315138;
      static Locale.current.getter();
      v26 = Locale.identifier.getter();
      v28 = v27;
      v61(v22, v23);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v63);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unsupported locale: %s, skipping user engagement inference", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }

  v45 = v0[37];
  v46 = v0[33];
  v47 = v0[34];
  v48 = v0[32];
  v50 = v0[28];
  v49 = v0[29];
  v51 = v0[25];
  v53 = v0[21];
  v52 = v0[22];
  v54 = v0[20];
  v57 = v0[19];
  v59 = v0[18];
  v62 = v0[17];

  v55 = v0[1];

  return v55(0, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = v2[42];
  (*(v2[31] + 8))(v2[32], v2[30]);

  v6 = v2[39];
  v7 = v2[38];
  if (v0)
  {
    v8 = InferenceEngine.call(prompt:);
  }

  else
  {
    v8 = InferenceEngine.call(prompt:);
  }

  return _swift_task_switch(v8, v7, v6);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGMd, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGMR);
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 0, 1, v3);
  outlined init with copy of LanguageModelSession.Response<UserAlignmentModelResponse>?(v2, v1);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 336);
    v6 = *(v0 + 264);
    outlined destroy of NSObject?(*(v0 + 272), &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMd, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMR);

    outlined destroy of NSObject?(v6, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMd, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMR);
    v26 = 0;
    v27 = 0;
    v25 = 0;
  }

  else
  {
    v7 = *(v0 + 336);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    LanguageModelSession.Response.content.getter();

    outlined destroy of NSObject?(v8, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMd, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMR);
    v26 = *(v0 + 48);
    v27 = *(v0 + 40);
    v25 = *(v0 + 56);
    (*(v4 + 8))(v9, v3);
  }

  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 256);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 200);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v22 = *(v0 + 152);
  v23 = *(v0 + 144);
  v24 = *(v0 + 136);

  v20 = *(v0 + 8);

  return v20(v27, v26, v25);
}

{
  v145 = v0;
  v1 = v0[44];
  v0[8] = v1;
  v2 = v0 + 8;
  v3 = v0[28];
  v4 = v0[26];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = v0[40];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Task is cancelled when eliciting model response, exiting extension worker task", v8, 2u);
    }

    v9 = v0[42];
    v11 = v0[27];
    v10 = v0[28];
    v12 = v0[26];

    lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    goto LABEL_5;
  }

  v2 = v0 + 9;
  v26 = v0[25];
  v27 = v0[23];
  v28 = v0[8];

  v0[9] = v1;
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
    goto LABEL_29;
  }

  v29 = (*(v0[24] + 88))(v0[25], v0[23]);
  if (v29 != enum case for LanguageModelSession.GenerationError.exceededContextWindowSize(_:))
  {
    if (v29 == enum case for LanguageModelSession.GenerationError.assetsUnavailable(_:))
    {
      v137 = v0[40];
      v41 = v0[24];
      v40 = v0[25];
      v42 = v0[23];
      v43 = v0[17];
      v44 = v0[18];
      v46 = v0[15];
      v45 = v0[16];

      (*(v41 + 96))(v40, v42);
      (*(v45 + 32))(v44, v40, v46);
      (*(v45 + 16))(v43, v44, v46);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      v49 = os_log_type_enabled(v47, v48);
      v51 = v0[16];
      v50 = v0[17];
      v52 = v0[15];
      if (v49)
      {
        v53 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v144[0] = v138;
        *v53 = 136315138;
        v128 = LanguageModelSession.GenerationError.Context.debugDescription.getter();
        v55 = v54;
        v133 = v48;
        v56 = *(v51 + 8);
        v56(v50, v52);
        v57 = v56;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v55, v144);

        *(v53 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v47, v133, "Inference Error: assets unavailable, error: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v138);
      }

      else
      {

        v77 = *(v51 + 8);
        v77(v50, v52);
        v57 = v77;
      }

      v78 = v0[42];
      v79 = v0[18];
      v80 = v0[15];
      lazy protocol witness table accessor for type UserEngagementInferenceError and conformance UserEngagementInferenceError();
      swift_allocError();
      v82 = 2;
LABEL_21:
      *v81 = v82;
LABEL_27:
      swift_willThrow();

      v57(v79, v80);
LABEL_5:
      v13 = *v2;

      v14 = v0[37];
      v16 = v0[33];
      v15 = v0[34];
      v17 = v0[32];
      v19 = v0[28];
      v18 = v0[29];
      v20 = v0[25];
      v22 = v0[21];
      v21 = v0[22];
      v23 = v0[20];
      v126 = v0[19];
      v127 = v0[18];
      v132 = v0[17];

      v24 = v0[1];

      return v24();
    }

    if (v29 == enum case for LanguageModelSession.GenerationError.unsupportedLanguageOrLocale(_:))
    {
      v139 = v0[40];
      v60 = v0[24];
      v59 = v0[25];
      v61 = v0[23];
      v62 = v0[19];
      v63 = v0[20];
      v65 = v0[15];
      v64 = v0[16];

      (*(v60 + 96))(v59, v61);
      (*(v64 + 32))(v63, v59, v65);
      (*(v64 + 16))(v62, v63, v65);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v0[19];
      v70 = v0[15];
      v71 = v0[16];
      if (v68)
      {
        v72 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v144[0] = v140;
        *v72 = 136315138;
        v129 = LanguageModelSession.GenerationError.Context.debugDescription.getter();
        v74 = v73;
        v134 = v67;
        v75 = *(v71 + 8);
        v75(v69, v70);
        v57 = v75;
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v74, v144);

        *(v72 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v66, v134, "Inference Error: unsupported locale, error: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v140);
      }

      else
      {

        v101 = *(v71 + 8);
        v101(v69, v70);
        v57 = v101;
      }

      v102 = v0[42];
      v79 = v0[20];
      v80 = v0[15];
      lazy protocol witness table accessor for type UserEngagementInferenceError and conformance UserEngagementInferenceError();
      swift_allocError();
      *v103 = 0;
      goto LABEL_27;
    }

    if (v29 == enum case for LanguageModelSession.GenerationError.rateLimited(_:))
    {
      v141 = v0[40];
      v84 = v0[24];
      v83 = v0[25];
      v86 = v0[22];
      v85 = v0[23];
      v87 = v0[21];
      v89 = v0[15];
      v88 = v0[16];

      (*(v84 + 96))(v83, v85);
      (*(v88 + 32))(v86, v83, v89);
      (*(v88 + 16))(v87, v86, v89);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v0[21];
      v94 = v0[15];
      v95 = v0[16];
      if (v92)
      {
        v96 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v144[0] = v142;
        *v96 = 136315138;
        v130 = LanguageModelSession.GenerationError.Context.debugDescription.getter();
        v98 = v97;
        v135 = v91;
        v99 = *(v95 + 8);
        v99(v93, v94);
        v57 = v99;
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v98, v144);

        *(v96 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v90, v135, "Inference Error: Exceeded rate limit, error: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v142);
      }

      else
      {

        v124 = *(v95 + 8);
        v124(v93, v94);
        v57 = v124;
      }

      v125 = v0[42];
      v79 = v0[22];
      v80 = v0[15];
      lazy protocol witness table accessor for type UserEngagementInferenceError and conformance UserEngagementInferenceError();
      swift_allocError();
      v82 = 1;
      goto LABEL_21;
    }

    (*(v0[24] + 8))(v0[25], v0[23]);
LABEL_29:
    v104 = v0[40];
    v105 = v0[9];

    swift_errorRetain();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v108 = 138412290;
      swift_errorRetain();
      v110 = _swift_stdlib_bridgeErrorToNSError();
      *(v108 + 4) = v110;
      *v109 = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "Inference Error: %@", v108, 0xCu);
      outlined destroy of NSObject?(v109, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v112 = v0[41];
    v111 = v0[42];

    UserEngagementModelManager.reinitializeSession()();

    goto LABEL_32;
  }

  v30 = v0[40];

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Inference Error: Exceeded Context Window Size, re-initializing session", v33, 2u);
  }

  v35 = v0[41];
  v34 = v0[42];
  v37 = v0[24];
  v36 = v0[25];
  v38 = v0[23];

  UserEngagementModelManager.reinitializeSession()();

  (*(v37 + 8))(v36, v38);
  v39 = v0[9];

LABEL_32:
  v113 = v0[37];
  v114 = v0[33];
  v115 = v0[34];
  v116 = v0[32];
  v118 = v0[28];
  v117 = v0[29];
  v119 = v0[25];
  v121 = v0[21];
  v120 = v0[22];
  v122 = v0[20];
  v131 = v0[19];
  v136 = v0[18];
  v143 = v0[17];

  v123 = v0[1];

  return v123(0, 0, 0);
}

uint64_t InferenceEngine.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t InferenceEngine.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t outlined init with copy of LanguageModelSession.Response<UserAlignmentModelResponse>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMd, &_s16FoundationModels20LanguageModelSessionC8ResponseVy_18InferenceExtension013UserAlignmentdF0VGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t dispatch thunk of InferenceEngine.call(prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 104);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of InferenceEngine.call(prompt:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InferenceEngine.call(prompt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t UserEngagementModelManager.__allocating_init(systemPromptFromConfig:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  UserEngagementModelManager.init(systemPromptFromConfig:)(a1, a2);
  return v7;
}

Swift::Void __swiftcall UserEngagementModelManager.reinitializeSession()()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_systemPromptFromConfig + 8);
  v19[1] = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_systemPromptFromConfig);
  v19[2] = v7;

  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v3 + 8))(v6, v2);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.inference);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Use system prompt from the configuration during session reinitialization.", v15, 2u);
    }
  }

  type metadata accessor for LanguageModelSession();
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  v16 = LanguageModelSession.__allocating_init(model:tools:instructions:)();
  v17 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession;
  swift_beginAccess();
  v18 = *(v1 + v17);
  *(v1 + v17) = v16;
}

uint64_t UserEngagementModelManager.inferenceOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceOptions;
  v4 = type metadata accessor for GenerationOptions();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserEngagementModelManager.systemPromptFromConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_systemPromptFromConfig);
  v2 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_systemPromptFromConfig + 8);

  return v1;
}

uint64_t UserEngagementModelManager.inferenceSession.getter()
{
  v1 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t UserEngagementModelManager.inferenceSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t UserEngagementModelManager.init(systemPromptFromConfig:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v72 = a1;
  v4 = type metadata accessor for SystemLanguageModel.Availability.UnavailableReason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v65 - v10;
  __chkstk_darwin(v9);
  v70 = &v65 - v11;
  v12 = type metadata accessor for CharacterSet();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SystemLanguageModel.Availability();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16FoundationModels17GenerationOptionsV12SamplingModeVSgMd, &_s16FoundationModels17GenerationOptionsV12SamplingModeVSgMR);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22 - 8);
  v25 = &v65 - v24;
  static GenerationOptions.SamplingMode.greedy.getter();
  v26 = type metadata accessor for GenerationOptions.SamplingMode();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  GenerationOptions.init(sampling:temperature:maximumResponseTokens:)();
  v27 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceModel;
  type metadata accessor for SystemLanguageModel();
  *(v3 + v27) = static SystemLanguageModel.default.getter();
  *(v3 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession) = 0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.inference);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Initializing FoundationModels session...", v31, 2u);
  }

  v32 = (v3 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_systemPromptFromConfig);
  v33 = v71;
  *v32 = v72;
  v32[1] = v33;
  v34 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceModel;
  v35 = v33;
  v36 = *(v3 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceModel);

  v37 = v73;
  SystemLanguageModel.availability.getter();

  outlined init with copy of SystemLanguageModel.Availability(v37, v20);
  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "FoundationModels session initialized successfully. Model is ready to use.", v40, 2u);
    }

    v74[0] = v72;
    v74[1] = v35;
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v41 = StringProtocol.trimmingCharacters(in:)();
    v43 = v42;
    (*(v67 + 8))(v15, v68);

    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Using system prompt from the configuration.", v47, 2u);
      }
    }

    else
    {
    }

    type metadata accessor for LanguageModelSession();
    v60 = *(v3 + v34);

    v61 = LanguageModelSession.__allocating_init(model:tools:instructions:)();
    outlined destroy of SystemLanguageModel.Availability(v73);
    v62 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession;
    swift_beginAccess();
    v63 = *(v3 + v62);
    *(v3 + v62) = v61;
  }

  else
  {

    v48 = v70;
    (*(v5 + 32))(v70, v20, v4);
    v49 = *(v5 + 16);
    v50 = v69;
    v49(v69, v48, v4);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74[0] = v72;
      *v53 = 136315138;
      v49(v66, v50, v4);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      v57 = *(v5 + 8);
      v57(v50, v4);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v74);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "FoundationModels: The model is unavailable. Reason: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);

      v57(v70, v4);
    }

    else
    {

      v59 = *(v5 + 8);
      v59(v50, v4);
      v59(v48, v4);
    }

    outlined destroy of SystemLanguageModel.Availability(v73);
  }

  return v3;
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

uint64_t UserEngagementModelManager.deinit()
{
  v1 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceOptions;
  v2 = type metadata accessor for GenerationOptions();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceModel);

  v4 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_systemPromptFromConfig + 8);

  v5 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession);

  return v0;
}

uint64_t UserEngagementModelManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceOptions;
  v2 = type metadata accessor for GenerationOptions();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceModel);

  v4 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_systemPromptFromConfig + 8);

  v5 = *(v0 + OBJC_IVAR____TtC18InferenceExtension26UserEngagementModelManager_inferenceSession);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t outlined init with copy of SystemLanguageModel.Availability(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemLanguageModel.Availability();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SystemLanguageModel.Availability(uint64_t a1)
{
  v2 = type metadata accessor for SystemLanguageModel.Availability();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for UserEngagementModelManager()
{
  result = type metadata singleton initialization cache for UserEngagementModelManager;
  if (!type metadata singleton initialization cache for UserEngagementModelManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UserEngagementModelManager()
{
  result = type metadata accessor for GenerationOptions();
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

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[2];
          if (v13 >= *(v12 - 1))
          {
            break;
          }

          v14 = v12[3];
          v15 = *(v12 + 32);
          *(v12 + 1) = *(v12 - 1);
          v12[4] = v12[1];
          *(v12 - 1) = v13;
          *v12 = v14;
          *(v12 + 8) = v15;
          v12 -= 3;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3;
    v8 = result - a3;
LABEL_6:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      outlined init with copy of (key: String, value: Any)(v10, v20);
      v11 = v10 - 3;
      outlined init with copy of (key: String, value: Any)((v10 - 3), v19);
      if (v20[0] == v19[0] && v20[1] == v19[1])
      {
        outlined destroy of (key: String, value: Any)(v19);
        result = outlined destroy of (key: String, value: Any)(v20);
LABEL_5:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of (key: String, value: Any)(v19);
      result = outlined destroy of (key: String, value: Any)(v20);
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = v10[1];
      v14 = v10[2];
      v16 = *v10;
      v17 = *(v10 - 2);
      *v10 = *v11;
      v10[1] = v17;
      v10[2] = *(v10 - 1);
      *v11 = v16;
      *(v10 - 2) = v15;
      v10 -= 3;
      v11[2] = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_104:
    v7 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v109 = v8;
      v92 = *(v8 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v8[16 * v92];
          v94 = *&v8[16 * v92 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v93), (*a3 + 48 * *&v8[16 * v92 + 16]), (*a3 + 48 * v94), v7);
          if (v5)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v92 - 2 >= *(v8 + 2))
          {
            goto LABEL_130;
          }

          v95 = &v8[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v109 = v8;
          result = specialized Array.remove(at:)(v92 - 1);
          v8 = v109;
          v92 = *(v109 + 2);
          if (v92 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      outlined init with copy of (key: String, value: Any)(*a3 + 48 * v7, &v107);
      outlined init with copy of (key: String, value: Any)(v10 + 48 * v9, &v105);
      v11 = v107 == v105 && v108 == v106;
      v97 = v5;
      if (v11)
      {
        v102 = 0;
      }

      else
      {
        v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      outlined destroy of (key: String, value: Any)(&v105);
      result = outlined destroy of (key: String, value: Any)(&v107);
      v12 = v9 + 2;
      v99 = v9;
      v5 = 48 * v9;
      v13 = v10 + 48 * v9 + 96;
      v14 = v5 + 48;
      do
      {
        v16 = v12;
        v17 = v7;
        v18 = v14;
        if (v12 >= v6)
        {
          break;
        }

        outlined init with copy of (key: String, value: Any)(v13, &v107);
        outlined init with copy of (key: String, value: Any)(v13 - 48, &v105);
        v19 = v107 == v105 && v108 == v106;
        v15 = v19 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of (key: String, value: Any)(&v105);
        result = outlined destroy of (key: String, value: Any)(&v107);
        v12 = (v16 + 1);
        v13 += 48;
        ++v7;
        v14 = v18 + 48;
      }

      while (((v102 ^ v15) & 1) == 0);
      if (v102)
      {
        v9 = v99;
        if (v16 < v99)
        {
          goto LABEL_133;
        }

        if (v99 < v16)
        {
          v20 = v99;
          do
          {
            if (v20 != v17)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v23 = (v22 + v5);
              v24 = (v22 + v18);
              v25 = *v23;
              v26 = v23[1];
              v27 = v23[2];
              v29 = v24[1];
              v28 = v24[2];
              *v23 = *v24;
              v23[1] = v29;
              v23[2] = v28;
              v24[1] = v26;
              v24[2] = v27;
              *v24 = v25;
            }

            ++v20;
            v18 -= 48;
            v5 += 48;
          }

          while (v20 < v17--);
        }

        v7 = v16;
        v5 = v97;
      }

      else
      {
        v7 = v16;
        v5 = v97;
        v9 = v99;
      }
    }

    v30 = a3[1];
    if (v7 < v30)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_141;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_73:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_87:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_94:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v89), (*a3 + 48 * *&v8[16 * v50 + 32]), (*a3 + 48 * v90), v49);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v109 = v8;
        result = specialized Array.remove(at:)(v50);
        v8 = v109;
        v47 = *(v109 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v31 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v31 >= v30)
  {
    v31 = a3[1];
  }

  if (v31 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v31)
  {
    goto LABEL_53;
  }

  v98 = v5;
  v100 = v9;
  v32 = *a3;
  v33 = *a3 + 48 * v7;
  v34 = v9 - v7;
  v103 = v31;
LABEL_42:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    outlined init with copy of (key: String, value: Any)(v36, &v107);
    v37 = v36 - 3;
    outlined init with copy of (key: String, value: Any)((v36 - 3), &v105);
    if (v107 == v105 && v108 == v106)
    {
      outlined destroy of (key: String, value: Any)(&v105);
      outlined destroy of (key: String, value: Any)(&v107);
LABEL_41:
      ++v7;
      v33 += 48;
      --v34;
      if (v7 == v103)
      {
        v7 = v103;
        v5 = v98;
        v9 = v100;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined destroy of (key: String, value: Any)(&v105);
    result = outlined destroy of (key: String, value: Any)(&v107);
    if ((v39 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v32)
    {
      break;
    }

    v41 = v36[1];
    v40 = v36[2];
    v42 = *v36;
    v43 = *(v36 - 2);
    *v36 = *v37;
    v36[1] = v43;
    v36[2] = *(v36 - 1);
    *v37 = v42;
    *(v36 - 2) = v41;
    v36 -= 3;
    v37[2] = v40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 3;
      v12 = v14;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v13;
        v17 = v13[3];
        v13 += 3;
        ++v15;
        if (v9 < v12 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = *(v21 + 16);
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 24);
    if (v33 >= *v32)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    *(v32 + 24) = *v32;
    *(v32 + 40) = *(v32 + 16);
    *v32 = v33;
    *(v32 + 8) = v34;
    *(v32 + 16) = v35;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[48 * v11] <= a4)
    {
      memmove(a4, __src, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_43:
      v18 = v6;
    }

    else
    {
      do
      {
        v18 = v6 - 48;
        v19 = v12 - 48;
        v5 -= 48;
        while (1)
        {
          outlined init with copy of (key: String, value: Any)(v19, &v32);
          outlined init with copy of (key: String, value: Any)((v6 - 48), &v30);
          v22 = v32 == v30 && v33 == v31;
          v23 = v22 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined destroy of (key: String, value: Any)(&v30);
          outlined destroy of (key: String, value: Any)(&v32);
          if (v23)
          {
            break;
          }

          if (v5 + 48 != v19 + 48)
          {
            v24 = *v19;
            v25 = *(v19 + 2);
            *(v5 + 1) = *(v19 + 1);
            *(v5 + 2) = v25;
            *v5 = v24;
          }

          v20 = v19 - 48;
          v5 -= 48;
          v21 = v19 > v4;
          v19 -= 48;
          if (!v21)
          {
            v12 = v20 + 48;
            goto LABEL_43;
          }
        }

        if (v5 + 48 != v6)
        {
          v26 = *v18;
          v27 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v27;
          *v5 = v26;
        }

        v12 = v19 + 48;
        if (v19 + 48 <= v4)
        {
          break;
        }

        v6 -= 48;
      }

      while (v18 > v7);
      v12 = v19 + 48;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      while (1)
      {
        outlined init with copy of (key: String, value: Any)(v6, &v32);
        outlined init with copy of (key: String, value: Any)(v4, &v30);
        v13 = v32 == v30 && v33 == v31;
        if (v13)
        {
          break;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of (key: String, value: Any)(&v30);
        outlined destroy of (key: String, value: Any)(&v32);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }

        v15 = v6;
        v13 = v7 == v6;
        v6 += 48;
        if (!v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      outlined destroy of (key: String, value: Any)(&v30);
      outlined destroy of (key: String, value: Any)(&v32);
LABEL_16:
      v15 = v4;
      v13 = v7 == v4;
      v4 += 48;
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_17:
      v16 = *v15;
      v17 = *(v15 + 2);
      *(v7 + 1) = *(v15 + 1);
      *(v7 + 2) = v17;
      *v7 = v16;
      goto LABEL_18;
    }

LABEL_20:
    v18 = v7;
  }

  v28 = (v12 - v4) / 48;
  if (v18 != v4 || v18 >= &v4[48 * v28])
  {
    memmove(v18, v4, 48 * v28);
  }

  return 1;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      outlined init with copy of Any(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized static FeatureUtil.prettyPrintEngagements(engagements:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    if (one-time initialization token for inference != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_47;
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_yp5valuet_Tt1g5(v1, 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v88, v3 + 2, v1, a1);

  outlined consume of [String : Any].Iterator._Variant();
  if (v4 != v1)
  {
    goto LABEL_57;
  }

  v88._countAndFlagsBits = v3;
  specialized MutableCollection<>.sort(by:)(&v88);
  v5 = 0;
  v67 = v88._countAndFlagsBits + 32;
  countAndFlagsBits = v88._countAndFlagsBits;
  v6 = *(v88._countAndFlagsBits + 16);
  v66 = v6;
  while (1)
  {
    if (v5 == v6)
    {
      v86 = 0u;
      v87 = 0u;
      v5 = v6;
      v85 = 0;
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      if (v5 >= *(countAndFlagsBits + 16))
      {
        goto LABEL_56;
      }

      outlined init with copy of (key: String, value: Any)(v67 + 48 * v5++, &v85);
    }

    v88 = v85;
    v89[0] = v86;
    v89[1] = v87;
    object = v85._object;
    if (!v85._object)
    {

      return v90;
    }

    v18 = v88._countAndFlagsBits;
    outlined init with take of Any(v89, v84);
    outlined init with copy of Any(v84, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    if (swift_dynamicCast())
    {
      v80 = 91;
      v81 = 0xE100000000000000;
      v19 = *(v75 + 16);
      if (v19)
      {
        v69 = object;
        v20 = v5;
        v82 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v21 = v82;
        v22 = v75 + 32;
        do
        {
          outlined init with copy of Any(v22, &v85);
          outlined init with copy of Any(&v85, &v76);
          v23 = String.init<A>(describing:)();
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_0(&v85._countAndFlagsBits);
          v82 = v21;
          v27 = v21[2];
          v26 = v21[3];
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            v21 = v82;
          }

          v21[2] = v27 + 1;
          v28 = &v21[2 * v27];
          v28[4] = v23;
          v28[5] = v25;
          v22 += 32;
          --v19;
        }

        while (v19);

        v5 = v20;
        v6 = v66;
        object = v69;
      }

      else
      {

        v21 = &_swiftEmptyArrayStorage;
      }

      v85._countAndFlagsBits = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v7 = BidirectionalCollection<>.joined(separator:)();
      v9 = v8;

      v10._countAndFlagsBits = v7;
      v10._object = v9;
      String.append(_:)(v10);

      v11._countAndFlagsBits = 93;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = v80;
      v13 = v81;
      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v76 = 34;
        v77 = 0xE100000000000000;
        String.append(_:)(v85);

        v53._countAndFlagsBits = 34;
        v53._object = 0xE100000000000000;
        String.append(_:)(v53);
        v12 = v76;
        v13 = v77;
      }

      else
      {
        outlined init with copy of Any(v84, &v85);
        v12 = String.init<A>(describing:)();
        v13 = v55;
      }

      goto LABEL_5;
    }

    v70 = object;
    v71 = v18;
    v29 = v82;
    v80 = 123;
    v81 = 0xE100000000000000;
    v30 = v82[2];
    if (v30)
    {
      break;
    }

    v54 = &_swiftEmptyArrayStorage;
LABEL_44:
    v85._countAndFlagsBits = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v56 = BidirectionalCollection<>.joined(separator:)();
    v58 = v57;

    v59._countAndFlagsBits = v56;
    v59._object = v58;
    String.append(_:)(v59);

    v60._countAndFlagsBits = 125;
    v60._object = 0xE100000000000000;
    String.append(_:)(v60);
    v12 = v80;
    v13 = v81;
    object = v70;
    v18 = v71;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v83);
    v85._countAndFlagsBits = v18;
    v85._object = object;
    v14._countAndFlagsBits = 8250;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = v12;
    v15._object = v13;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 10;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    String.append(_:)(v85);

    __swift_destroy_boxed_opaque_existential_0(v84);
  }

  v79 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
  v31 = v79;
  v32 = -1 << *(v29 + 32);
  v74 = v29 + 8;
  v33 = _HashTable.startBucket.getter();
  v34 = 0;
  v72 = v30;
  while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << *(v29 + 32))
  {
    v36 = v33 >> 6;
    if ((v74[v33 >> 6] & (1 << v33)) == 0)
    {
      goto LABEL_51;
    }

    v73 = *(v29 + 9);
    v37 = (v29[6] + 16 * v33);
    v38 = *v37;
    v39 = v37[1];
    outlined init with copy of Any(v29[7] + 32 * v33, &v86);
    v76 = v38;
    v77 = v39;
    outlined init with take of Any(&v86, &v78);
    v75 = 0;

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 8250;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);
    _print_unlocked<A, B>(_:_:)();
    outlined destroy of (key: String, value: Any)(&v76);
    v42 = v31;
    v79 = v31;
    v43 = v31[2];
    v44 = v42[3];
    if (v43 >= v44 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v43 + 1, 1);
      v42 = v79;
    }

    v42[2] = v43 + 1;
    v45 = &v42[2 * v43];
    *(v45 + 4) = 0;
    *(v45 + 5) = 0xE000000000000000;
    v35 = 1 << *(v29 + 32);
    if (v33 >= v35)
    {
      goto LABEL_52;
    }

    v46 = v74[v36];
    if ((v46 & (1 << v33)) == 0)
    {
      goto LABEL_53;
    }

    if (v73 != *(v29 + 9))
    {
      goto LABEL_54;
    }

    v31 = v42;
    v47 = v46 & (-2 << (v33 & 0x3F));
    if (v47)
    {
      v35 = __clz(__rbit64(v47)) | v33 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v48 = v36 << 6;
      v49 = v36 + 1;
      v50 = &v29[v36 + 9];
      while (v49 < (v35 + 63) >> 6)
      {
        v52 = *v50++;
        v51 = v52;
        v48 += 64;
        ++v49;
        if (v52)
        {
          outlined consume of [String : Any].Index._Variant(v33, v73, 0);
          v35 = __clz(__rbit64(v51)) + v48;
          goto LABEL_23;
        }
      }

      outlined consume of [String : Any].Index._Variant(v33, v73, 0);
    }

LABEL_23:
    ++v34;
    v33 = v35;
    if (v34 == v72)
    {

      v6 = v66;
      v54 = v31;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  swift_once();
LABEL_47:
  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logger.inference);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "No engagement data to print", v65, 2u);
  }

  return 0;
}

uint64_t outlined init with copy of (key: String, value: Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (key: String, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

InferenceExtension::PSEFeature __swiftcall PSEFeature.init(engagements:isSiriActionResult:)(InferenceExtension::PSEFeature engagements, Swift::Bool isSiriActionResult)
{
  v2 = isSiriActionResult;
  engagements.isSiriActionResult = v2;
  return engagements;
}

Swift::Void __swiftcall PSEFeature.printEngagements()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002E0F0;
  v3 = specialized static FeatureUtil.prettyPrintEngagements(engagements:)(v1);
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  print(_:separator:terminator:)();
}

uint64_t PSEFeatureTemplate.domain.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.action.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.isDonatedBySiri.setter(char a1)
{
  result = type metadata accessor for PSEFeatureTemplate();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.entityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.entityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.entityType.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.entityType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.mediaTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.mediaTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.mediaArtist.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.mediaArtist.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.mediaAlbum.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.mediaAlbum.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.mediaPlayDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.mediaPlayDuration.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.mediaContentDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PSEFeatureTemplate.mediaContentDuration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PSEFeatureTemplate();
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PSEFeatureTemplate.navigationType.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.navigationType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.poi.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.poi.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.contactValues.getter()
{
  v1 = *(v0 + *(type metadata accessor for PSEFeatureTemplate() + 68));
}

uint64_t PSEFeatureTemplate.contactValues.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PSEFeatureTemplate() + 68);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.contactDisplayNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for PSEFeatureTemplate() + 72));
}

uint64_t PSEFeatureTemplate.contactDisplayNames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PSEFeatureTemplate() + 72);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.contactFirstNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for PSEFeatureTemplate() + 76));
}

uint64_t PSEFeatureTemplate.contactFirstNames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PSEFeatureTemplate() + 76);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.contactLastNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for PSEFeatureTemplate() + 80));
}

uint64_t PSEFeatureTemplate.contactLastNames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PSEFeatureTemplate() + 80);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.appBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.appBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.appLaunchReason.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.appLaunchReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 88));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.isFirstPartyApp.setter(char a1)
{
  result = type metadata accessor for PSEFeatureTemplate();
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.accessoryUniqueIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 96));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.accessoryUniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 96));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.serviceType.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.serviceType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 100));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.characteristicType.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 104));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.characteristicType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 104));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *PSEFeatureTemplate.accessoryStateNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for PSEFeatureTemplate() + 108));
  v2 = v1;
  return v1;
}

void PSEFeatureTemplate.accessoryStateNumber.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PSEFeatureTemplate() + 108);

  *(v1 + v3) = a1;
}

uint64_t PSEFeatureTemplate.roomUniqueIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 112));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.roomUniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 112));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.zoneUniqueIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for PSEFeatureTemplate() + 116));
}

uint64_t PSEFeatureTemplate.zoneUniqueIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PSEFeatureTemplate() + 116);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.contactDisplayName.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 120));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.contactDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 120));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.label.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 124));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 124));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.callDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for PSEFeatureTemplate() + 128));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PSEFeatureTemplate.callDuration.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PSEFeatureTemplate() + 128));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PSEFeatureTemplate.signalData.getter()
{
  v1 = *(v0 + *(type metadata accessor for PSEFeatureTemplate() + 132));
}

uint64_t PSEFeatureTemplate.signalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PSEFeatureTemplate() + 132);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PSEFeatureTemplate.init(donatedTimestamp:domain:action:isDonatedBySiri:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(a7, 1, 1, v9);
  v12 = type metadata accessor for PSEFeatureTemplate();
  v13 = v12[6];
  v14 = (a7 + v12[5]);
  v15 = (a7 + v12[8]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a7 + v12[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a7 + v12[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a7 + v12[11]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a7 + v12[12]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a7 + v12[13]);
  *v20 = 0;
  v20[1] = 0;
  v21 = a7 + v12[14];
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (a7 + v12[15]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a7 + v12[16]);
  *v23 = 0;
  v23[1] = 0;
  *(a7 + v12[17]) = 0;
  *(a7 + v12[18]) = 0;
  *(a7 + v12[19]) = 0;
  *(a7 + v12[20]) = 0;
  v24 = (a7 + v12[21]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a7 + v12[22]);
  *v25 = 0;
  v25[1] = 0;
  *(a7 + v12[23]) = 2;
  v26 = (a7 + v13);
  v27 = (a7 + v12[24]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a7 + v12[25]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (a7 + v12[26]);
  *v29 = 0;
  v29[1] = 0;
  *(a7 + v12[27]) = 0;
  v30 = (a7 + v12[28]);
  *v30 = 0;
  v30[1] = 0;
  *(a7 + v12[29]) = 0;
  v31 = (a7 + v12[30]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (a7 + v12[31]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a7 + v12[32]);
  *v33 = 0;
  v33[1] = 0;
  v34 = v12[33];
  *(a7 + v34) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  outlined destroy of NSObject?(a7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v10 + 32))(a7, a1, v9);
  result = (v11)(a7, 0, 1, v9);
  *v14 = a2;
  v14[1] = a3;
  *v26 = a4;
  v26[1] = a5;
  *(a7 + v12[7]) = a6;
  return result;
}

Swift::Void __swiftcall PSEFeatureTemplate.setAlarmProperties(alarmIdentifier:)(Swift::String alarmIdentifier)
{
  object = alarmIdentifier._object;
  countAndFlagsBits = alarmIdentifier._countAndFlagsBits;
  v4 = (v1 + *(type metadata accessor for PSEFeatureTemplate() + 32));
  v5 = v4[1];

  *v4 = countAndFlagsBits;
  v4[1] = object;
}

Swift::Void __swiftcall PSEFeatureTemplate.setMediaProperties(title:artist:album:playDuration:)(Swift::String_optional title, Swift::String_optional artist, Swift::String_optional album, Swift::String_optional playDuration)
{
  object = playDuration.value._object;
  countAndFlagsBits = album.value._countAndFlagsBits;
  v21 = playDuration.value._countAndFlagsBits;
  v6 = album.value._object;
  v7 = artist.value._object;
  v8 = artist.value._countAndFlagsBits;
  v9 = title.value._object;
  v10 = title.value._countAndFlagsBits;
  v11 = type metadata accessor for PSEFeatureTemplate();
  v12 = (v4 + v11[10]);
  v13 = v12[1];

  *v12 = v10;
  v12[1] = v9;
  v14 = (v4 + v11[11]);
  v15 = v14[1];

  *v14 = v8;
  v14[1] = v7;
  v16 = (v4 + v11[12]);
  v17 = v16[1];

  *v16 = countAndFlagsBits;
  v16[1] = v6;
  v18 = (v4 + v11[13]);
  v19 = v18[1];

  *v18 = v21;
  v18[1] = object;
}

Swift::Void __swiftcall PSEFeatureTemplate.setCallProperties(duration:contactDisplayName:label:)(Swift::String_optional duration, Swift::String_optional contactDisplayName, Swift::String_optional label)
{
  object = label.value._object;
  countAndFlagsBits = label.value._countAndFlagsBits;
  v6 = contactDisplayName.value._object;
  v7 = contactDisplayName.value._countAndFlagsBits;
  v8 = duration.value._object;
  v9 = duration.value._countAndFlagsBits;
  v10 = type metadata accessor for PSEFeatureTemplate();
  v11 = (v3 + v10[32]);
  v12 = v11[1];

  *v11 = v9;
  v11[1] = v8;
  v13 = (v3 + v10[30]);
  v14 = v13[1];

  *v13 = v7;
  v13[1] = v6;
  v15 = (v3 + v10[31]);
  v16 = v15[1];

  *v15 = countAndFlagsBits;
  v15[1] = object;
}

Swift::Void __swiftcall PSEFeatureTemplate.setNavigationProperties(navigationType:poi:)(Swift::String_optional navigationType, Swift::String_optional poi)
{
  object = poi.value._object;
  countAndFlagsBits = poi.value._countAndFlagsBits;
  v5 = navigationType.value._object;
  v6 = navigationType.value._countAndFlagsBits;
  v7 = type metadata accessor for PSEFeatureTemplate();
  v8 = (v2 + *(v7 + 60));
  v9 = v8[1];

  *v8 = v6;
  v8[1] = v5;
  v10 = (v2 + *(v7 + 64));
  v11 = v10[1];

  *v10 = countAndFlagsBits;
  v10[1] = object;
}

uint64_t PSEFeatureTemplate.addSignalData(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any(a3, v7);
  v5 = *(type metadata accessor for PSEFeatureTemplate() + 132);

  return specialized Dictionary.subscript.setter(v7, a1, a2);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of NSObject?(v10, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

uint64_t static PSEFeatureTemplate.containsKey(_:in:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 key];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return 1;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          return 1;
        }
      }

      else
      {
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

unint64_t PSEFeatureTemplate.toDictionary()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v87 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  outlined init with copy of Date?(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of NSObject?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v91 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v90);
    (*(v7 + 16))(boxed_opaque_existential_0, v10, v6);
    outlined init with take of Any(&v90, v89);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x695420746E657645, 0xEF706D617473656DLL, isUniquelyReferenced_nonNull_native);
    (*(v7 + 8))(v10, v6);
    v11 = v88;
  }

  v14 = type metadata accessor for PSEFeatureTemplate();
  v15 = (v1 + v14[5]);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v91 = &type metadata for String;
    *&v90 = v17;
    *(&v90 + 1) = v16;
    outlined init with take of Any(&v90, v89);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 7368769, 0xE300000000000000, v18);
    v11 = v88;
  }

  v19 = (v1 + v14[6]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v91 = &type metadata for String;
    *&v90 = v21;
    *(&v90 + 1) = v20;
    outlined init with take of Any(&v90, v89);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x6E6F69746341, 0xE600000000000000, v22);
    v11 = v88;
  }

  v23 = (v1 + v14[8]);
  v24 = v23[1];
  if (v24)
  {
    v25 = *v23;
    v91 = &type metadata for String;
    *&v90 = v25;
    *(&v90 + 1) = v24;
    outlined init with take of Any(&v90, v89);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000011, 0x80000001000312E0, v26);
    v11 = v88;
  }

  v27 = (v1 + v14[9]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v91 = &type metadata for String;
    *&v90 = v29;
    *(&v90 + 1) = v28;
    outlined init with take of Any(&v90, v89);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x7954797469746E65, 0xEA00000000006570, v30);
    v11 = v88;
  }

  v31 = (v1 + v14[10]);
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    v91 = &type metadata for String;
    *&v90 = v33;
    *(&v90 + 1) = v32;
    outlined init with take of Any(&v90, v89);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x656C746954, 0xE500000000000000, v34);
    v11 = v88;
  }

  v35 = (v1 + v14[11]);
  v36 = v35[1];
  if (v36)
  {
    v37 = *v35;
    v91 = &type metadata for String;
    *&v90 = v37;
    *(&v90 + 1) = v36;
    outlined init with take of Any(&v90, v89);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x747369747241, 0xE600000000000000, v38);
    v11 = v88;
  }

  v39 = (v1 + v14[12]);
  v40 = v39[1];
  if (v40)
  {
    v41 = *v39;
    v91 = &type metadata for String;
    *&v90 = v41;
    *(&v90 + 1) = v40;
    outlined init with take of Any(&v90, v89);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x6D75626C41, 0xE500000000000000, v42);
    v11 = v88;
  }

  v43 = (v1 + v14[13]);
  v44 = v43[1];
  if (v44)
  {
    v45 = *v43;
    v91 = &type metadata for String;
    *&v90 = v45;
    *(&v90 + 1) = v44;
    outlined init with take of Any(&v90, v89);

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x7275442079616C50, 0xED00006E6F697461, v46);
    v11 = v88;
  }

  v47 = v1 + v14[14];
  if ((*(v47 + 8) & 1) == 0)
  {
    v48 = *v47;
    v91 = &type metadata for Double;
    *&v90 = v48;
    outlined init with take of Any(&v90, v89);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000014, 0x80000001000312C0, v49);
    v11 = v88;
  }

  v50 = *(v1 + v14[17]);
  if (v50)
  {
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *&v90 = v50;
    outlined init with take of Any(&v90, v89);

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x56746361746E6F63, 0xED00007365756C61, v51);
    v11 = v88;
  }

  v52 = *(v1 + v14[18]);
  if (v52)
  {
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *&v90 = v52;
    outlined init with take of Any(&v90, v89);

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000013, 0x80000001000312A0, v53);
    v11 = v88;
  }

  v54 = *(v1 + v14[19]);
  if (v54)
  {
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *&v90 = v54;
    outlined init with take of Any(&v90, v89);

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000011, 0x8000000100031280, v55);
    v11 = v88;
  }

  v56 = *(v1 + v14[20]);
  if (v56)
  {
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *&v90 = v56;
    outlined init with take of Any(&v90, v89);

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000010, 0x8000000100031260, v57);
    v11 = v88;
  }

  v58 = (v1 + v14[21]);
  v59 = v58[1];
  if (v59)
  {
    v60 = *v58;
    v91 = &type metadata for String;
    *&v90 = v60;
    *(&v90 + 1) = v59;
    outlined init with take of Any(&v90, v89);

    v61 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x6C646E7542707061, 0xEB00000000644965, v61);
    v11 = v88;
  }

  v62 = (v1 + v14[22]);
  v63 = v62[1];
  if (v63)
  {
    v64 = *v62;
    v91 = &type metadata for String;
    *&v90 = v64;
    *(&v90 + 1) = v63;
    outlined init with take of Any(&v90, v89);

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x636E75614C707061, 0xEF6E6F7361655268, v65);
    v11 = v88;
  }

  v66 = *(v1 + v14[23]);
  if (v66 != 2)
  {
    v91 = &type metadata for Bool;
    LOBYTE(v90) = v66 & 1;
    outlined init with take of Any(&v90, v89);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x5074737269467369, 0xEF70704179747261, v67);
    v11 = v88;
  }

  v68 = (v1 + v14[32]);
  v69 = v68[1];
  if (v69)
  {
    v70 = *v68;
    v91 = &type metadata for String;
    *&v90 = v70;
    *(&v90 + 1) = v69;
    outlined init with take of Any(&v90, v89);

    v71 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x727544206C6C6143, 0xED00006E6F697461, v71);
    v11 = v88;
  }

  v72 = (v1 + v14[30]);
  v73 = v72[1];
  if (v73)
  {
    v74 = *v72;
    v91 = &type metadata for String;
    *&v90 = v74;
    *(&v90 + 1) = v73;
    outlined init with take of Any(&v90, v89);
    swift_bridgeObjectRetain_n();
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000014, 0x8000000100031240, v75);
    v76 = v88;
    v91 = &type metadata for String;
    *&v90 = v74;
    *(&v90 + 1) = v73;
    outlined init with take of Any(&v90, v89);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v76;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x6C6562614CLL, 0xE500000000000000, v77);
    v11 = v88;
  }

  v78 = (v1 + v14[15]);
  v79 = v78[1];
  if (v79)
  {
    v80 = *v78;
    v91 = &type metadata for String;
    *&v90 = v80;
    *(&v90 + 1) = v79;
    outlined init with take of Any(&v90, v89);

    v81 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0x697461676976614ELL, 0xEF65707954206E6FLL, v81);
    v11 = v88;
  }

  v82 = (v1 + v14[16]);
  v83 = v82[1];
  if (v83)
  {
    v84 = *v82;
    v91 = &type metadata for String;
    *&v90 = v84;
    *(&v90 + 1) = v83;
    outlined init with take of Any(&v90, v89);

    v85 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD000000000000011, 0x8000000100031220, v85);
    return v88;
  }

  return v11;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PSEFeatureTemplate()
{
  result = type metadata singleton initialization cache for PSEFeatureTemplate;
  if (!type metadata singleton initialization cache for PSEFeatureTemplate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static PSEFeatureTemplate.extractValue(from:forKey:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_22:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = [v8 key];
    if (!v11)
    {
      goto LABEL_4;
    }

    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == a2 && v15 == a3)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_18;
    }

LABEL_4:

    if (v10 == v6)
    {
      return 0;
    }
  }

LABEL_18:
  v18 = [v9 value];

  if (!v18)
  {
    return 0;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v19;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PSEFeature(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for PSEFeature(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100013FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 132));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000140C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 132)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for PSEFeatureTemplate()
{
  type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String]?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date?(319, &lazy cache variable for type metadata for NSNumber?, type metadata accessor for NSNumber);
            if (v5 <= 0x3F)
            {
              type metadata accessor for [String : Any]();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}