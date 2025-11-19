Swift::Int protocol witness for Hashable.hashValue.getter in conformance OnDeviceExperience()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OnDeviceExperience()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OnDeviceExperience()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance OnDeviceExperience@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized OnDeviceExperience.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance OnDeviceExperience(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000041;
  v4 = 0x5445726577736E61;
  v5 = 0xEE00656475746974;
  v6 = 0x6C41726577736E61;
  v7 = 0xE800000000000000;
  v8 = 0x496D416572656877;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676976614E646E65;
    v3 = 0xED00006E6F697461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

GeoFlowDelegatePlugin::OnDeviceExperience __swiftcall UsoTask.getGeoTaskType()()
{
  if (UsoTask.baseEntityAsString.getter() == 0x4A5F6E6F6D6D6F63 && v0 == 0xEE0079656E72756FLL)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (UsoTask.verbString.getter() == 1886352499 && v2 == 0xE400000000000000)
  {

    return 1;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return 1;
  }

LABEL_10:
  if (UsoTask.answerETATask()())
  {
    return 0;
  }

  if (UsoTask.baseEntityAsString.getter() == 0x435F6E6F6D6D6F63 && v5 == 0xEE00737361706D6FLL)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (UsoTask.verbString.getter() == 0x74736575716572 && v7 == 0xE700000000000000)
  {

    return 2;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return 2;
  }

LABEL_21:
  if (UsoTask.baseEntityAsString.getter() == 0xD000000000000016 && 0x80000000000C2E20 == v9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 4;
    }
  }

  if (UsoTask.verbString.getter() == 0x736972616D6D7573 && v11 == 0xE900000000000065)
  {

    return 3;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 3;
  }

  return 4;
}

uint64_t UsoTask.answerETATask()()
{
  if (UsoTask.baseEntityAsString.getter() == 0x4A5F6E6F6D6D6F63 && v0 == 0xEE0079656E72756FLL)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  if (UsoTask.verbString.getter() == 0x74736575716572 && v2 == 0xE700000000000000)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v10, v9);
  if (!v9[3])
  {
    outlined destroy of Any?(v9);
    goto LABEL_16;
  }

  type metadata accessor for UsoTask_request_common_Journey();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    outlined destroy of Any?(v10);
    return 1;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();

  if (v9[0])
  {
    v4 = dispatch thunk of UsoEntity_common_Journey.dateTimeRange.getter();

    if (v4)
    {
      v5 = dispatch thunk of UsoEntity_common_DateTimeRange.end.getter();

      if (v5)
      {

        goto LABEL_16;
      }
    }
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (v9[0] && (v7 = dispatch thunk of UsoEntity_common_Journey.dateTimeRange.getter(), , v7))
  {
    v8 = dispatch thunk of UsoEntity_common_DateTimeRange.end.getter();

    outlined destroy of Any?(v10);
    if (v8)
    {

      return 1;
    }
  }

  else
  {

    outlined destroy of Any?(v10);
  }

  return 0;
}

uint64_t specialized static GeoParse.getUsoTask(usoParse:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  USOParse.userParse.getter();
  v10 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v1 + 8))(v4, v0);
  if (!*(v10 + 16))
  {
    goto LABEL_9;
  }

  (*(v6 + 16))(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  v11 = Siri_Nlu_External_UserDialogAct.getTasks()();
  (*(v6 + 8))(v9, v5);
  if (!(v11 >> 62))
  {
    result = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(v11 + 32);

LABEL_7:

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t specialized OnDeviceExperience.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OnDeviceExperience.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type OnDeviceExperience and conformance OnDeviceExperience()
{
  result = lazy protocol witness table cache variable for type OnDeviceExperience and conformance OnDeviceExperience;
  if (!lazy protocol witness table cache variable for type OnDeviceExperience and conformance OnDeviceExperience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnDeviceExperience and conformance OnDeviceExperience);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DeleteParkingHandleIntentStrategy.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t DeleteParkingHandleIntentStrategy.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

uint64_t DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo023INDeleteParkingLocationD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo023INDeleteParkingLocationD0CSo0ghiD8ResponseCGMR);
  v2 = IntentResolutionRecord.intentResponse.getter();
  v3 = [v2 code];

  if (v3 == &dword_0 + 3)
  {
    v4 = *(v0 + 72);
    v5 = v4[6];
    v6 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v5);
    v7 = type metadata accessor for DialogLocation.Builder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    DialogLocation.Builder.init()();
    v10 = dispatch thunk of DialogLocation.Builder.build()();

    *(v0 + 40) = &type metadata for DeleteParkingLocation;
    *(v0 + 48) = &protocol witness table for DeleteParkingLocation;
    *(v0 + 16) = v10;
    *(v0 + 24) = xmmword_BDAE0;
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v12 = *(v0 + 56);

    return FlowHelper.makeDialogOnlyOutput(model:)(v12, v0 + 16, v5, v6);
  }

  else
  {
    v14 = *(**(v0 + 72) + 120);
    v20 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    v19 = *(v0 + 56);

    return v20(v19, v17);
  }
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(DeleteParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[11];
  v2 = v0[1];

  return v2();
}

uint64_t DeleteParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(DeleteParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0, 0);
}

uint64_t DeleteParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v1 = v0[8];
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v0[5] = &type metadata for DeleteParkingLocation;
  v0[6] = &protocol witness table for DeleteParkingLocation;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v5 = v0[7];

  return FlowHelper.makeDialogOnlyOutput(model:)(v5, (v0 + 2), v3, v2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance DeleteParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeleteParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

unint64_t lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy()
{
  result = lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy)
  {
    type metadata accessor for DeleteParkingHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy);
  }

  return result;
}

uint64_t LocationSearchIntentBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  LocationSearchIntentBuilder.init()();
  return v0;
}

uint64_t LocationSearchIntentBuilder.noun.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.verb.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.incidentType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.confirmation.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 19) = a1;
  return result;
}

uint64_t LocationSearchIntentBuilder.appName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t LocationSearchIntentBuilder.appName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t LocationSearchIntentBuilder.firstName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t LocationSearchIntentBuilder.firstName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t LocationSearchIntentBuilder.fullName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t LocationSearchIntentBuilder.fullName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t LocationSearchIntentBuilder.relationship.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t LocationSearchIntentBuilder.relationship.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t LocationSearchIntentBuilder.fromLocationSearchNode(locationSearchNode:)()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  __chkstk_darwin(v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v38);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0[12];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchNoun.getter();
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + v19);
  }

  else
  {
    v21 = 8;
  }

  (*(v14 + 8))(v17, v13);
  (*(*v1 + 184))(v21);
  v22 = v1[11];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchVerb.getter();
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + v23);
  }

  else
  {
    v25 = 10;
  }

  (*(v9 + 8))(v12, v38);
  (*(*v1 + 208))(v25);
  v26 = v1[13];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchConfirmation.getter();
  if (*(v26 + 16))
  {
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v28 = v41;
    if (v29)
    {
      v30 = *(*(v26 + 56) + v27);
    }

    else
    {
      v30 = 3;
    }
  }

  else
  {
    v30 = 3;
    v28 = v41;
  }

  (*(v39 + 8))(v8, v40);
  (*(*v1 + 256))(v30);
  v31 = v1[14];
  Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchIncidentType.getter();
  if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v33 & 1) != 0))
  {
    v34 = *(*(v31 + 56) + v32);
  }

  else
  {
    v34 = 9;
  }

  (*(v42 + 8))(v28, v43);
  (*(*v1 + 232))(v34);
  v35 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.occupantFullName.getter();
  (*(*v1 + 328))(v35);
  v36 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personRelationship.getter();
  (*(*v1 + 352))(v36);
}

uint64_t LocationSearchIntentBuilder.withNoun(noun:)()
{
  (*(*v0 + 184))();
}

uint64_t LocationSearchIntentBuilder.withVerb(verb:)()
{
  (*(*v0 + 208))();
}

uint64_t LocationSearchIntentBuilder.withIncidentType(incidentType:)()
{
  (*(*v0 + 232))();
}

uint64_t LocationSearchIntentBuilder.withConfirmation(confirmation:)()
{
  (*(*v0 + 256))();
}

uint64_t LocationSearchIntentBuilder.withAppName(appName:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 280);

  v5(a1, a2);
}

uint64_t LocationSearchIntentBuilder.withFirstName(firstName:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 304);

  v5(a1, a2);
}

uint64_t LocationSearchIntentBuilder.withRelationship(relationship:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 352);

  v5(a1, a2);
}

uint64_t LocationSearchIntentBuilder.withFullName(fullName:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 328);

  v5(a1, a2);
}

void *LocationSearchIntentBuilder.buildOccupantNodes()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v73 = &v64 - v3;
  v4 = type metadata accessor for TerminalIntentNode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v72 = &v64 - v11;
  v12 = __chkstk_darwin(v10);
  v70 = &v64 - v13;
  v14 = __chkstk_darwin(v12);
  v69 = &v64 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v64 - v17;
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = type metadata accessor for TerminalElement.Value();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v71 = (&v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v68 = (&v64 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = &v64 - v29;
  v31 = (*(*v0 + 296))(v28);
  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

LABEL_9:
    v39 = &_swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v66 = v9;
  TerminalElement.SemanticValue.init(_:javaPojoName:)();
  (*(v22 + 104))(v30, enum case for TerminalElement.Value.semantic(_:), v21);
  v34 = *(v22 + 16);
  v35 = v22;
  v36 = v4;
  v37 = v5;
  v38 = v73;
  v34(v73, v30, v21);
  v65 = v35;
  (*(v35 + 56))(v38, 0, 1, v21);
  TerminalIntentNode.init(name:value:semanticTags:)();
  v67 = v37;
  (*(v37 + 16))(v18, v20, v36);
  v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, &_swiftEmptyArrayStorage);
  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v39);
  }

  v42 = v20;
  v43 = v36;
  v5 = v67;
  (*(v67 + 8))(v42, v36);
  v22 = v65;
  (*(v65 + 8))(v30, v21);
  v39[2] = v41 + 1;
  v4 = v43;
  v31 = (*(v5 + 32))(v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v41, v18, v43);
  v9 = v66;
LABEL_10:
  v44 = (*(*v0 + 320))(v31);
  if (v45)
  {
    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v47 = v68;
      *v68 = v44;
      v47[1] = v45;
      (*(v22 + 104))(v47, enum case for TerminalElement.Value.string(_:), v21);
      v48 = v5;
      v49 = v73;
      (*(v22 + 16))(v73, v47, v21);
      (*(v22 + 56))(v49, 0, 1, v21);
      v50 = v69;
      v5 = v48;
      TerminalIntentNode.init(name:value:semanticTags:)();
      (*(v48 + 16))(v70, v50, v4);
      v51 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v53 = v39[2];
      v52 = v39[3];
      if (v53 >= v52 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v39);
      }

      (*(v5 + 8))(v69, v4);
      (*(v22 + 8))(v68, v21);
      v39[2] = v53 + 1;
      v44 = (*(v5 + 32))(v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v53, v70, v4);
      v9 = v51;
    }

    else
    {
    }
  }

  v54 = (*(*v0 + 344))(v44);
  if (v55)
  {
    v56 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v56 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v57 = v71;
      *v71 = v54;
      v57[1] = v55;
      (*(v22 + 104))(v57, enum case for TerminalElement.Value.string(_:), v21);
      v58 = v5;
      v59 = v73;
      (*(v22 + 16))(v73, v57, v21);
      (*(v22 + 56))(v59, 0, 1, v21);
      v60 = v72;
      TerminalIntentNode.init(name:value:semanticTags:)();
      (*(v58 + 16))(v9, v60, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v62 = v39[2];
      v61 = v39[3];
      if (v62 >= v61 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v39);
      }

      (*(v58 + 8))(v72, v4);
      (*(v22 + 8))(v71, v21);
      v39[2] = v62 + 1;
      (*(v58 + 32))(v39 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v62, v9, v4);
    }

    else
    {
    }
  }

  return v39;
}

uint64_t LocationSearchIntentBuilder.build()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v155 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23MitigatorClassificationOSgMd, &_s12SiriOntology23MitigatorClassificationOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v154 = &v152 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology7NLStateVSgMd, &_s12SiriOntology7NLStateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v153 = &v152 - v8;
  v168 = type metadata accessor for NonTerminalIntentNode();
  v166 = *(v168 - 8);
  v9 = *(v166 + 8);
  v10 = __chkstk_darwin(v168);
  v163 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v162 = &v152 - v13;
  __chkstk_darwin(v12);
  v160 = (&v152 - v14);
  v15 = type metadata accessor for TerminalIntentNode();
  v164 = *(v15 - 8);
  v165 = v15;
  v16 = *(v164 + 64);
  v17 = __chkstk_darwin(v15);
  v161 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  *&v170 = &v152 - v20;
  __chkstk_darwin(v19);
  v22 = &v152 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v159 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v158 = (&v152 - v28);
  v29 = __chkstk_darwin(v27);
  v167 = &v152 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v152 - v32;
  v34 = (*(*v1 + 176))(v31);
  v35 = &_swiftEmptyArrayStorage;
  if (v34 != 8)
  {
    if (one-time initialization token for nounNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v36 = enum case for TerminalElement.Value.semantic(_:);
    v37 = type metadata accessor for TerminalElement.Value();
    v38 = *(v37 - 8);
    (*(v38 + 104))(v33, v36, v37);
    (*(v38 + 56))(v33, 0, 1, v37);
    v172 = v165;
    v173 = &protocol witness table for TerminalIntentNode;
    __swift_allocate_boxed_opaque_existential_0(&v171);
    TerminalIntentNode.init(name:value:semanticTags:)();
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, &_swiftEmptyArrayStorage);
    v174[0] = v39;
    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
      v174[0] = v35;
    }

    else
    {
      v35 = v39;
    }

    v42 = v172;
    v43 = v173;
    v44 = __swift_mutable_project_boxed_opaque_existential_1(&v171, v172);
    v45 = *(*(v42 - 8) + 64);
    __chkstk_darwin(v44);
    v47 = &v152 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v47);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v41, v47, v174, v42, v43);
    v34 = __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  }

  v49 = (*(*v2 + 200))(v34);
  if (v49 == 10)
  {
    v169 = v35;
  }

  else
  {
    v50 = v49;
    if (one-time initialization token for verbNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v50);
    v51 = v167;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v52 = enum case for TerminalElement.Value.semantic(_:);
    v53 = type metadata accessor for TerminalElement.Value();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v51, v52, v53);
    (*(v54 + 56))(v51, 0, 1, v53);
    TerminalIntentNode.init(name:value:semanticTags:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
    }

    v56 = v35[2];
    v55 = v35[3];
    v169 = v35;
    if (v56 >= v55 >> 1)
    {
      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v169);
    }

    v57 = v165;
    v172 = v165;
    v173 = &protocol witness table for TerminalIntentNode;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v171);
    v59 = v164;
    (*(v164 + 16))(boxed_opaque_existential_0, v22, v57);
    v60 = v169;
    v169[2] = v56 + 1;
    outlined init with take of CATType(&v171, &v60[5 * v56 + 4]);
    v49 = (*(v59 + 8))(v22, v57);
  }

  v61 = (*(*v2 + 248))(v49);
  v62 = v170;
  if (v61 != 3)
  {
    if (one-time initialization token for confirmationNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v63 = v158;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v64 = enum case for TerminalElement.Value.semantic(_:);
    v65 = type metadata accessor for TerminalElement.Value();
    v66 = *(v65 - 8);
    (*(v66 + 104))(v63, v64, v65);
    (*(v66 + 56))(v63, 0, 1, v65);
    v172 = v165;
    v173 = &protocol witness table for TerminalIntentNode;
    __swift_allocate_boxed_opaque_existential_0(&v171);
    TerminalIntentNode.init(name:value:semanticTags:)();
    v67 = v169;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v174[0] = v67;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
      v174[0] = v67;
    }

    v70 = v67[2];
    v69 = v67[3];
    v62 = v170;
    if (v70 >= v69 >> 1)
    {
      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v67);
      v174[0] = v169;
    }

    else
    {
      v169 = v67;
    }

    v71 = v172;
    v72 = v173;
    v73 = __swift_mutable_project_boxed_opaque_existential_1(&v171, v172);
    v74 = *(*(v71 - 8) + 64);
    __chkstk_darwin(v73);
    v76 = &v152 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v76);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v70, v76, v174, v71, v72);
    v61 = __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  }

  v78 = (*(*v2 + 224))(v61);
  if (v78 != 9)
  {
    if (one-time initialization token for incidentTypeNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v79 = v159;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v80 = enum case for TerminalElement.Value.semantic(_:);
    v81 = type metadata accessor for TerminalElement.Value();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v79, v80, v81);
    (*(v82 + 56))(v79, 0, 1, v81);
    v172 = v165;
    v173 = &protocol witness table for TerminalIntentNode;
    __swift_allocate_boxed_opaque_existential_0(&v171);
    TerminalIntentNode.init(name:value:semanticTags:)();
    v83 = v169;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v174[0] = v83;
    if ((v84 & 1) == 0)
    {
      v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83[2] + 1, 1, v83);
      v174[0] = v83;
    }

    v62 = v170;
    v86 = v83[2];
    v85 = v83[3];
    if (v86 >= v85 >> 1)
    {
      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v83);
      v174[0] = v169;
    }

    else
    {
      v169 = v83;
    }

    v87 = v172;
    v88 = v173;
    v89 = __swift_mutable_project_boxed_opaque_existential_1(&v171, v172);
    v90 = *(*(v87 - 8) + 64);
    __chkstk_darwin(v89);
    v92 = &v152 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v93 + 16))(v92);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v86, v92, v174, v87, v88);
    v78 = __swift_destroy_boxed_opaque_existential_0Tm(&v171);
  }

  (*(*v2 + 272))(v78);
  v94 = "ocation";
  if (v95)
  {
    if (one-time initialization token for appName != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v96 = v167;
    TerminalElement.SemanticValue.init(_:javaPojoName:)();
    v97 = enum case for TerminalElement.Value.semantic(_:);
    v98 = type metadata accessor for TerminalElement.Value();
    v99 = *(v98 - 8);
    (*(v99 + 104))(v96, v97, v98);
    (*(v99 + 56))(v96, 0, 1, v98);
    TerminalIntentNode.init(name:value:semanticTags:)();
    if (one-time initialization token for appNode != -1)
    {
      swift_once();
    }

    NonTerminalOntologyNode.name.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
    v100 = swift_allocObject();
    v94 = "ocation";
    *(v100 + 16) = xmmword_B89E0;
    v101 = v165;
    *(v100 + 56) = v165;
    *(v100 + 64) = &protocol witness table for TerminalIntentNode;
    v102 = __swift_allocate_boxed_opaque_existential_0((v100 + 32));
    (*(v164 + 16))(v102, v62, v101);
    v103 = v160;
    NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
    v104 = v169;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104[2] + 1, 1, v104);
    }

    v105 = v166;
    v107 = v104[2];
    v106 = v104[3];
    v169 = v104;
    if (v107 >= v106 >> 1)
    {
      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v169);
    }

    (*(v164 + 8))(v62, v165);
    v108 = v168;
    v172 = v168;
    v173 = &protocol witness table for NonTerminalIntentNode;
    v109 = __swift_allocate_boxed_opaque_existential_0(&v171);
    (*(v105 + 2))(v109, v103, v108);
    v110 = v169;
    v169[2] = v107 + 1;
    outlined init with take of CATType(&v171, &v110[5 * v107 + 4]);
    (*(v105 + 1))(v103, v108);
  }

  else
  {
    v105 = v166;
  }

  v111 = LocationSearchIntentBuilder.buildOccupantNodes()();
  v112 = v111[2];
  if (v112)
  {
    v160 = *(v164 + 16);
    v113 = (*(v164 + 80) + 32) & ~*(v164 + 80);
    v152 = v111;
    v114 = v111 + v113;
    v115 = *(v164 + 72);
    v164 += 16;
    v158 = (v164 + 16);
    v159 = v115;
    v156 = (v105 + 8);
    v170 = xmmword_B89E0;
    v116 = v169;
    v157 = (v105 + 16);
    do
    {
      v166 = v114;
      v167 = v112;
      v169 = v116;
      v117 = v161;
      v118 = v165;
      v160(v161);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
      v119 = swift_allocObject();
      *(v119 + 16) = v170;
      v120 = swift_allocObject();
      *(v120 + 16) = v170;
      v121 = swift_allocObject();
      *(v121 + 16) = v170;
      v122 = swift_allocObject();
      *(v122 + 16) = v170;
      v123 = swift_allocObject();
      v124 = v168;
      v125 = v123;
      *(v123 + 16) = v170;
      v126 = swift_allocObject();
      *(v126 + 16) = v170;
      *(v126 + 56) = v118;
      *(v126 + 64) = &protocol witness table for TerminalIntentNode;
      v127 = __swift_allocate_boxed_opaque_existential_0((v126 + 32));
      (*v158)(v127, v117, v118);
      v125[7] = v124;
      v125[8] = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0(v125 + 4);
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v122 + 56) = v124;
      *(v122 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v122 + 32));
      v128 = v124;
      v129 = v157;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v121 + 56) = v128;
      *(v121 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v121 + 32));
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v120 + 56) = v128;
      *(v120 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v120 + 32));
      v130 = v169;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      *(v119 + 56) = v128;
      *(v119 + 64) = &protocol witness table for NonTerminalIntentNode;
      __swift_allocate_boxed_opaque_existential_0((v119 + 32));
      v131 = v130;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      v132 = v162;
      NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
      v133 = *v129;
      v134 = v163;
      (*v129)(v163, v132, v128);
      v135 = v134;
      v136 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v131[2] + 1, 1, v131);
      }

      v138 = v131[2];
      v137 = v131[3];
      v169 = v131;
      if (v138 >= v137 >> 1)
      {
        v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v169);
      }

      v139 = *v156;
      v140 = v168;
      (*v156)(v136, v168);
      v172 = v140;
      v173 = &protocol witness table for NonTerminalIntentNode;
      v141 = __swift_allocate_boxed_opaque_existential_0(&v171);
      v133(v141, v135, v140);
      v142 = v169;
      v169[2] = v138 + 1;
      v116 = v142;
      outlined init with take of CATType(&v171, &v142[5 * v138 + 4]);
      v139(v135, v140);
      v114 = &v159[v166];
      v112 = v167 - 1;
    }

    while (v167 != &dword_0 + 1);

    v94 = "RetrieveParkingLocation" + 16;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, "ʞ");
  v143 = swift_allocObject();
  v170 = *(v94 + 158);
  *(v143 + 16) = v170;
  v144 = swift_allocObject();
  *(v144 + 16) = v170;
  v145 = swift_allocObject();
  *(v145 + 16) = v170;
  v146 = swift_allocObject();
  *(v146 + 16) = v170;
  v147 = swift_allocObject();
  *(v147 + 16) = v170;
  v148 = v168;
  *(v147 + 56) = v168;
  *(v147 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v147 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v146 + 56) = v148;
  *(v146 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v146 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v145 + 56) = v148;
  *(v145 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v145 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v144 + 56) = v148;
  *(v144 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v144 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v143 + 56) = v148;
  *(v143 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0((v143 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v172 = v148;
  v173 = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_0(&v171);
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v149 = type metadata accessor for NLState();
  (*(*(v149 - 8) + 56))(v153, 1, 1, v149);
  v150 = type metadata accessor for MitigatorClassification();
  (*(*(v150 - 8) + 56))(v154, 1, 1, v150);
  return NLIntent.init(rootNode:score:originalInput:allWordsMatched:primary:usingExplicitInput:intentRank:isNERBasedParse:intentID:nlState:mitigatorClassification:strippedVoiceTrigger:isInvalidVoiceTrigger:isSuggested:metaDomainActions:)();
}

void *LocationSearchIntentBuilder.deinit()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return v0;
}

uint64_t LocationSearchIntentBuilder.__deallocating_deinit()
{
  LocationSearchIntentBuilder.deinit();

  return swift_deallocClassInstance();
}

void *LocationSearchIntentBuilder.init()()
{
  *(v0 + 16) = 50924040;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_B7D70;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.unknown(_:);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 0;
  v10 = *(v1 + 48);
  v9(v5 + v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.share(_:), v8);
  *(v5 + v2 + v10) = 1;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.stopShare(_:), v8);
  *(v5 + 2 * v2 + v11) = 2;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.report(_:), v8);
  *(v5 + 3 * v2 + v12) = 3;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.confirmReport(_:), v8);
  *(v5 + 4 * v2 + v13) = 5;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.clearReport(_:), v8);
  *(v5 + 5 * v2 + v14) = 4;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62[11] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_B7D80;
  v20 = v19 + v18;
  v21 = *(v16 + 48);
  v22 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchNoun.unknown(_:);
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun();
  v24 = *(*(v23 - 8) + 104);
  v24(v20, v22, v23);
  *(v20 + v21) = 0;
  v25 = v20 + v17;
  v26 = *(v16 + 48);
  v24(v25, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchNoun.eta(_:), v23);
  *(v25 + v26) = 6;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62[12] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v31 = 2 * v29;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_B7D60;
  v33 = v32 + v30;
  v34 = *(v28 + 48);
  v35 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.yes(_:);
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation();
  v37 = *(*(v36 - 8) + 104);
  v37(v33, v35, v36);
  *(v33 + v34) = 0;
  v38 = v33 + v29;
  v39 = *(v28 + 48);
  v37(v38, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.no(_:), v36);
  *(v38 + v39) = 1;
  v40 = *(v28 + 48);
  v37(v33 + v31, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.cancel(_:), v36);
  *(v33 + v31 + v40) = 2;
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62[13] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0jK6IntentC0jklM5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0jK6IntentC0jklM5ValueOtGMR);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMR);
  v43 = *(*(v42 - 8) + 72);
  v44 = (*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_B7D90;
  v46 = v45 + v44;
  v47 = *(v42 + 48);
  v48 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.accident(_:);
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType();
  v50 = *(*(v49 - 8) + 104);
  v50(v46, v48, v49);
  *(v46 + v47) = 0;
  v51 = *(v42 + 48);
  v50(v46 + v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.hazard(_:), v49);
  *(v46 + v43 + v51) = 2;
  v52 = *(v42 + 48);
  v50(v46 + 2 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.incident(_:), v49);
  *(v46 + 2 * v43 + v52) = 1;
  v53 = *(v42 + 48);
  v50(v46 + 3 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.laneClosed(_:), v49);
  *(v46 + 3 * v43 + v53) = 5;
  v54 = *(v42 + 48);
  v50(v46 + 4 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.problem(_:), v49);
  *(v46 + 4 * v43 + v54) = 8;
  v55 = *(v42 + 48);
  v50(v46 + 5 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.redLightCamera(_:), v49);
  *(v46 + 5 * v43 + v55) = 7;
  v56 = *(v42 + 48);
  v50(v46 + 6 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.roadClosed(_:), v49);
  *(v46 + 6 * v43 + v56) = 6;
  v57 = 8 * v43;
  v58 = *(v42 + 48);
  v50(v46 + 7 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.roadwork(_:), v49);
  *(v46 + v57 - v43 + v58) = 4;
  v59 = *(v42 + 48);
  v50(v46 + 8 * v43, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.speedCheck(_:), v49);
  *(v46 + v57 + v59) = 3;
  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0iJ6IntentC0ijkL5ValueOTt0g5Tf4g_n(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = v62;
  v62[14] = v60;
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of CATType(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_804D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_8056C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_80600@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_80694@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_80730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_80784(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 280);

  return v4(v2, v3);
}

uint64_t sub_807F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_80848(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t sub_808B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_8090C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t sub_8097C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_809D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 352);

  return v4(v2, v3);
}

uint64_t LocationFetchFlow.__allocating_init(flowHelper:requiredAccess:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  LocationFetchFlow.init(flowHelper:requiredAccess:)(a1, a2);
  return v4;
}

void *LocationFetchFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  outlined copy of LocationFetchFlow.ExitValue(v1, *(v0 + 88));
  return v1;
}

void LocationFetchFlow.exitValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 80) = a1;
  v6 = *(v2 + 88);
  *(v2 + 88) = a2;
  outlined consume of LocationFetchFlow.ExitValue(v5, v6);
}

uint64_t LocationFetchFlow.init(flowHelper:requiredAccess:)(__int128 *a1, char a2)
{
  v3 = v2;
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v3 + 16) = v6;
  *(v3 + 72) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for RuntimeError();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000019;
  *(v8 + 24) = 0x80000000000C0190;
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
  v9 = swift_allocError();
  *v10 = v8;
  *(v3 + 80) = v9;
  *(v3 + 88) = 2;
  outlined init with take of CATType(a1, v3 + 24);
  *(v3 + 64) = a2;
  return v3;
}

id outlined copy of LocationFetchFlow.ExitValue(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return swift_errorRetain();
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void outlined consume of LocationFetchFlow.ExitValue(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t LocationFetchFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 168))(v2, 0);
}

uint64_t sub_80DC8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t LocationFetchFlow.execute(completion:)()
{
  type metadata accessor for LocationFetchFlow();
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, v0, type metadata accessor for LocationFetchFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t LocationFetchFlow.execute()(uint64_t a1)
{
  v2[116] = v1;
  v2[115] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[117] = swift_task_alloc();
  v4 = type metadata accessor for AceOutput();
  v2[118] = v4;
  v5 = *(v4 - 8);
  v2[119] = v5;
  v2[120] = *(v5 + 64);
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v2[123] = v6;
  v7 = *(v6 - 8);
  v2[124] = v7;
  v8 = *(v7 + 64) + 15;
  v2[125] = swift_task_alloc();
  v9 = *(*(type metadata accessor for DeepLinkParams() - 8) + 64) + 15;
  v2[126] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

uint64_t LocationFetchFlow.execute()()
{
  v1 = [objc_allocWithZone(AFLocationService) init];
  v0[135] = v1;
  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    v2 = v0[135];
    v3 = **(&off_E3460 + *(v0[116] + 64));
    v0[2] = v0;
    v0[7] = v0 + 109;
    v0[3] = LocationFetchFlow.execute();
    v4 = swift_continuation_init();
    v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    v0[45] = &block_descriptor_3;
    v0[46] = v4;
    [v2 currentLocationWithAccuracy:v0 + 42 timeout:v3 completion:2.0];
    v5 = v0 + 2;
  }

  else
  {
    v6 = v0[134];
    v7 = v0[124];
    v8 = v0[123];
    v9 = *(v7 + 56);
    v0[136] = v9;
    v0[137] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v9(v6, 1, 1, v8);
    v0[10] = v0;
    v0[15] = v0 + 107;
    v0[11] = LocationFetchFlow.execute();
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMd, &_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMR);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization);
    v0[29] = &block_descriptor_2;
    v0[30] = v10;
    [v1 currentAuthorizationStyle:v0 + 26];
    v5 = v0 + 10;
  }

  return _swift_continuation_await(v5);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1104) = v2;
  if (v2)
  {
    v3 = LocationFetchFlow.execute();
  }

  else
  {
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 856);
  v2 = *(v0 + 864);
  v3 = *(*(v0 + 928) + 72);
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_0, v3, v4, "LocationService Auth level: %lu", v5, 0xCu);
  }

  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v26 = *(v0 + 1008);
        v27 = *(v0 + 928);
        (*(*v27 + 152))(0, 3);
        v28 = v27[6];
        v29 = v27[7];
        __swift_project_boxed_opaque_existential_1(v27 + 3, v28);
        (*(v29 + 32))(v28, v29);
        static LocationServicesViews.needSiriLocation.getter(v26);
        *(v0 + 1112) = DeepLinkParams.makeDeepLink(device:)((v0 + 800));
        outlined destroy of DeepLinkParams(v26);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 800));
        type metadata accessor for CATService();
        v30 = swift_allocObject();
        *(v0 + 1120) = v30;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        *(v30 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        type metadata accessor for OS_os_log();
        *(v30 + 32) = OS_os_log.init(subsystem:category:)();
        *(v30 + 16) = 0;
        *(v0 + 424) = &type metadata for LocationServices;
        *(v0 + 432) = &protocol witness table for LocationServices;
        *(v0 + 400) = 0;
        v11 = static DialogHelper.globals.getter();
        *(v0 + 1128) = v11;
        v32 = swift_task_alloc();
        *(v0 + 1136) = v32;
        *v32 = v0;
        v32[1] = LocationFetchFlow.execute();
        v13 = *(v0 + 1064);
        v14 = v0 + 400;
        goto LABEL_19;
      case 2:
LABEL_7:
        v6 = *(v0 + 928);
        lazy protocol witness table accessor for type Errors and conformance Errors();
        v7 = swift_allocError();
        *v8 = 0xD000000000000022;
        *(v8 + 8) = 0x80000000000C3120;
        *(v8 + 16) = 2;
        (*(*v6 + 152))(v7, 2);
        type metadata accessor for CATService();
        v9 = swift_allocObject();
        *(v0 + 1144) = v9;
        v10 = swift_getObjCClassFromMetadata();
        *(v9 + 24) = [objc_opt_self() bundleForClass:v10];
        type metadata accessor for OS_os_log();
        *(v9 + 32) = OS_os_log.init(subsystem:category:)();
        *(v9 + 16) = 0;
        *(v0 + 784) = &type metadata for LocationServices;
        *(v0 + 792) = &protocol witness table for LocationServices;
        *(v0 + 760) = 2;
        v11 = static DialogHelper.globals.getter();
        *(v0 + 1152) = v11;
        v12 = swift_task_alloc();
        *(v0 + 1160) = v12;
        *v12 = v0;
        v12[1] = LocationFetchFlow.execute();
        v13 = *(v0 + 1056);
        v14 = v0 + 760;
LABEL_19:

        return CATService.execute(model:globals:)(v13, v14, v11);
    }

LABEL_18:
    v40 = *(v0 + 928);
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v41 = swift_allocError();
    *v42 = 0xD000000000000019;
    *(v42 + 8) = 0x80000000000C3100;
    *(v42 + 16) = 1;
    (*(*v40 + 152))(v41, 2);
    type metadata accessor for CATService();
    v43 = swift_allocObject();
    *(v0 + 1208) = v43;
    v44 = swift_getObjCClassFromMetadata();
    *(v43 + 24) = [objc_opt_self() bundleForClass:v44];
    type metadata accessor for OS_os_log();
    *(v43 + 32) = OS_os_log.init(subsystem:category:)();
    *(v43 + 16) = 0;
    *(v0 + 664) = &type metadata for LocationServices;
    *(v0 + 672) = &protocol witness table for LocationServices;
    *(v0 + 640) = 2;
    v11 = static DialogHelper.globals.getter();
    *(v0 + 1216) = v11;
    v45 = swift_task_alloc();
    *(v0 + 1224) = v45;
    *v45 = v0;
    v45[1] = LocationFetchFlow.execute();
    v13 = *(v0 + 1040);
    v14 = v0 + 640;
    goto LABEL_19;
  }

  if ((v1 - 3) >= 2)
  {
    goto LABEL_18;
  }

  if (v2 == 1)
  {
    v15 = *(v0 + 1008);
    v16 = *(v0 + 928);
    v17 = v16[6];
    v18 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v17);
    (*(v18 + 32))(v17, v18);
    static LocationServicesViews.needPreciseLocation.getter(v15);
    *(v0 + 1176) = DeepLinkParams.makeDeepLink(device:)((v0 + 680));
    outlined destroy of DeepLinkParams(v15);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 680));
    v19 = v16[2];
    *(v0 + 744) = &type metadata for LocationServices;
    *(v0 + 752) = &protocol witness table for LocationServices;
    *(v0 + 720) = 1;
    v20 = static DialogHelper.globals.getter();
    *(v0 + 1184) = v20;
    v21 = *(*v19 + 112);
    v79 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 1192) = v23;
    *v23 = v0;
    v23[1] = LocationFetchFlow.execute();
    v24 = *(v0 + 1048);

    return v79(v24, v0 + 720, v20);
  }

  else
  {
    v33 = *(v0 + 1032);
    v34 = *(v0 + 992);
    v35 = *(v0 + 984);
    outlined init with copy of TemplatingResult?(*(v0 + 1072), v33);
    if ((*(v34 + 48))(v33, 1, v35) == 1)
    {
      v36 = *(v0 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v36, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v37 = *(v0 + 1080);
      v38 = **(&off_E3460 + *(*(v0 + 928) + 64));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 872;
      *(v0 + 24) = LocationFetchFlow.execute();
      v39 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v0 + 360) = &block_descriptor_3;
      *(v0 + 368) = v39;
      [v37 currentLocationWithAccuracy:v0 + 336 timeout:v38 completion:2.0];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v77 = *(v0 + 1080);
      v80 = *(v0 + 1072);
      v46 = *(v0 + 1000);
      v47 = *(v0 + 992);
      v48 = *(v0 + 976);
      v72 = *(v0 + 968);
      v73 = *(v0 + 960);
      v49 = *(v0 + 952);
      v71 = *(v0 + 944);
      v50 = *(v0 + 936);
      v51 = *(v0 + 928);
      v74 = *(v0 + 920);
      v75 = *(v0 + 984);
      (*(v47 + 32))(v46, *(v0 + 1032));
      v53 = v51[6];
      v52 = v51[7];
      __swift_project_boxed_opaque_existential_1(v51 + 3, v53);
      (*(v52 + 32))(v53, v52);
      v54 = type metadata accessor for NLContextUpdate();
      (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
      *(v0 + 512) = 0;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v50, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
      (*(v49 + 16))(v72, v48, v71);
      v55 = (*(v49 + 80) + 16) & ~*(v49 + 80);
      v56 = swift_allocObject();
      (*(v49 + 32))(v56 + v55, v72, v71);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      v57 = type metadata accessor for SimpleOutputFlowAsync();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();
      *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v49 + 8))(v48, v71);
      (*(v47 + 8))(v46, v75);
      outlined destroy of Mirror.DisplayStyle?(v80, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v60 = *(v0 + 1072);
      v61 = *(v0 + 1064);
      v62 = *(v0 + 1056);
      v63 = *(v0 + 1048);
      v64 = *(v0 + 1040);
      v65 = *(v0 + 1032);
      v66 = *(v0 + 1024);
      v67 = *(v0 + 1016);
      v68 = *(v0 + 1008);
      v69 = *(v0 + 1000);
      v76 = *(v0 + 976);
      v78 = *(v0 + 968);
      v81 = *(v0 + 936);

      v70 = *(v0 + 8);

      return v70();
    }
  }
}

{
  v2 = *v1;
  v3 = (*v1)[142];
  v10 = *v1;

  if (v0)
  {
    v4 = v2[141];
    v5 = v2[140];

    v6 = LocationFetchFlow.execute();
  }

  else
  {
    v7 = v2[141];
    v8 = v2[140];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 50);
    v6 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  (*(v0 + 1088))(v3, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v5);
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    v8 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v9 = *(v0 + 1080);
    v10 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v11 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v11;
    [v9 currentLocationWithAccuracy:v0 + 336 timeout:v10 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v45 = *(v0 + 1080);
    v47 = *(v0 + 1072);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 992);
    v14 = *(v0 + 968);
    v40 = v14;
    v41 = *(v0 + 960);
    v15 = *(v0 + 952);
    v38 = *(v0 + 976);
    v39 = *(v0 + 944);
    v16 = *(v0 + 936);
    v17 = *(v0 + 928);
    v42 = *(v0 + 920);
    v43 = *(v0 + 984);
    (*(v13 + 32))(v12, *(v0 + 1032));
    v19 = v17[6];
    v18 = v17[7];
    __swift_project_boxed_opaque_existential_1(v17 + 3, v19);
    (*(v18 + 32))(v19, v18);
    v20 = type metadata accessor for NLContextUpdate();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v16, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v15 + 16))(v40, v38, v39);
    v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v22 = swift_allocObject();
    (*(v15 + 32))(v22 + v21, v40, v39);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v23 = type metadata accessor for SimpleOutputFlowAsync();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v15 + 8))(v38, v39);
    (*(v13 + 8))(v12, v43);
    outlined destroy of Mirror.DisplayStyle?(v47, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v26 = *(v0 + 1072);
    v27 = *(v0 + 1064);
    v28 = *(v0 + 1056);
    v29 = *(v0 + 1048);
    v30 = *(v0 + 1040);
    v31 = *(v0 + 1032);
    v32 = *(v0 + 1024);
    v33 = *(v0 + 1016);
    v34 = *(v0 + 1008);
    v35 = *(v0 + 1000);
    v44 = *(v0 + 976);
    v46 = *(v0 + 968);
    v48 = *(v0 + 936);

    v36 = *(v0 + 8);

    return v36();
  }
}

{
  v2 = *v1;
  v3 = (*v1)[145];
  v10 = *v1;
  (*v1)[146] = v0;

  if (v0)
  {
    v4 = v2[144];
    v5 = v2[143];

    v6 = LocationFetchFlow.execute();
  }

  else
  {
    v7 = v2[144];
    v8 = v2[143];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 95);
    v6 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 984);
  outlined destroy of Mirror.DisplayStyle?(v3, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v2(v4, 0, 1, v5);
  outlined init with take of TemplatingResult?(v4, v3);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v6);
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    v9 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v9, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v10 = *(v0 + 1080);
    v11 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v12 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v12;
    [v10 currentLocationWithAccuracy:v0 + 336 timeout:v11 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v45 = *(v0 + 1080);
    v47 = *(v0 + 1072);
    v13 = *(v0 + 1000);
    v14 = *(v0 + 992);
    v15 = *(v0 + 976);
    v40 = *(v0 + 968);
    v41 = *(v0 + 960);
    v16 = *(v0 + 952);
    v39 = *(v0 + 944);
    v17 = *(v0 + 936);
    v18 = *(v0 + 928);
    v42 = *(v0 + 920);
    v43 = *(v0 + 984);
    (*(v14 + 32))(v13, *(v0 + 1032));
    v20 = v18[6];
    v19 = v18[7];
    __swift_project_boxed_opaque_existential_1(v18 + 3, v20);
    (*(v19 + 32))(v20, v19);
    v21 = type metadata accessor for NLContextUpdate();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v17, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v16 + 16))(v40, v15, v39);
    v22 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v23 = swift_allocObject();
    (*(v16 + 32))(v23 + v22, v40, v39);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v24 = type metadata accessor for SimpleOutputFlowAsync();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v16 + 8))(v15, v39);
    (*(v14 + 8))(v13, v43);
    outlined destroy of Mirror.DisplayStyle?(v47, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v27 = *(v0 + 1072);
    v28 = *(v0 + 1064);
    v29 = *(v0 + 1056);
    v30 = *(v0 + 1048);
    v31 = *(v0 + 1040);
    v32 = *(v0 + 1032);
    v33 = *(v0 + 1024);
    v34 = *(v0 + 1016);
    v35 = *(v0 + 1008);
    v36 = *(v0 + 1000);
    v44 = *(v0 + 976);
    v46 = *(v0 + 968);
    v48 = *(v0 + 936);

    v37 = *(v0 + 8);

    return v37();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1192);
  v7 = *v1;
  *(*v1 + 1200) = v0;

  v4 = *(v2 + 1184);

  if (v0)
  {
    v5 = LocationFetchFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 720));
    v5 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 984);
  outlined destroy of Mirror.DisplayStyle?(v3, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v2(v4, 0, 1, v5);
  outlined init with take of TemplatingResult?(v4, v3);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v7);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    v10 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v10, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v11 = *(v0 + 1080);
    v12 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v13 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v13;
    [v11 currentLocationWithAccuracy:v0 + 336 timeout:v12 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v47 = *(v0 + 1080);
    v49 = *(v0 + 1072);
    v14 = *(v0 + 1000);
    v15 = *(v0 + 992);
    v16 = *(v0 + 968);
    v42 = v16;
    v43 = *(v0 + 960);
    v17 = *(v0 + 952);
    v40 = *(v0 + 976);
    v41 = *(v0 + 944);
    v18 = *(v0 + 936);
    v19 = *(v0 + 928);
    v44 = *(v0 + 920);
    v45 = *(v0 + 984);
    (*(v15 + 32))(v14, *(v0 + 1032));
    v21 = v19[6];
    v20 = v19[7];
    __swift_project_boxed_opaque_existential_1(v19 + 3, v21);
    (*(v20 + 32))(v21, v20);
    v22 = type metadata accessor for NLContextUpdate();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v17 + 16))(v42, v40, v41);
    v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v24 = swift_allocObject();
    (*(v17 + 32))(v24 + v23, v42, v41);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v25 = type metadata accessor for SimpleOutputFlowAsync();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v17 + 8))(v40, v41);
    (*(v15 + 8))(v14, v45);
    outlined destroy of Mirror.DisplayStyle?(v49, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v28 = *(v0 + 1072);
    v29 = *(v0 + 1064);
    v30 = *(v0 + 1056);
    v31 = *(v0 + 1048);
    v32 = *(v0 + 1040);
    v33 = *(v0 + 1032);
    v34 = *(v0 + 1024);
    v35 = *(v0 + 1016);
    v36 = *(v0 + 1008);
    v37 = *(v0 + 1000);
    v46 = *(v0 + 976);
    v48 = *(v0 + 968);
    v50 = *(v0 + 936);

    v38 = *(v0 + 8);

    return v38();
  }
}

{
  v2 = *v1;
  v3 = (*v1)[153];
  v10 = *v1;

  if (v0)
  {
    v4 = v2[152];
    v5 = v2[151];

    v6 = LocationFetchFlow.execute();
  }

  else
  {
    v7 = v2[152];
    v8 = v2[151];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 80);
    v6 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1040);
  (*(v0 + 1088))(v3, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v4);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v8 = *(v0 + 1080);
    v9 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v10 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v10;
    [v8 currentLocationWithAccuracy:v0 + 336 timeout:v9 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v43 = *(v0 + 1080);
    v45 = *(v0 + 1072);
    v11 = *(v0 + 1000);
    v12 = *(v0 + 992);
    v13 = *(v0 + 976);
    v38 = *(v0 + 968);
    v39 = *(v0 + 960);
    v14 = *(v0 + 952);
    v37 = *(v0 + 944);
    v15 = *(v0 + 936);
    v16 = *(v0 + 928);
    v40 = *(v0 + 920);
    v41 = *(v0 + 984);
    (*(v12 + 32))(v11, *(v0 + 1032));
    v18 = v16[6];
    v17 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v18);
    (*(v17 + 32))(v18, v17);
    v19 = type metadata accessor for NLContextUpdate();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v14 + 16))(v38, v13, v37);
    v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v21 = swift_allocObject();
    (*(v14 + 32))(v21 + v20, v38, v37);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v22 = type metadata accessor for SimpleOutputFlowAsync();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v14 + 8))(v13, v37);
    (*(v12 + 8))(v11, v41);
    outlined destroy of Mirror.DisplayStyle?(v45, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v25 = *(v0 + 1072);
    v26 = *(v0 + 1064);
    v27 = *(v0 + 1056);
    v28 = *(v0 + 1048);
    v29 = *(v0 + 1040);
    v30 = *(v0 + 1032);
    v31 = *(v0 + 1024);
    v32 = *(v0 + 1016);
    v33 = *(v0 + 1008);
    v34 = *(v0 + 1000);
    v42 = *(v0 + 976);
    v44 = *(v0 + 968);
    v46 = *(v0 + 936);

    v35 = *(v0 + 8);

    return v35();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1232) = v2;
  if (v2)
  {
    v3 = LocationFetchFlow.execute();
  }

  else
  {
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[116];
  v2 = v0[109];
  v0[155] = v2;
  v3 = *(v1 + 72);
  v0[156] = v3;
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_0, v3, v4, "location info: %@", v5, 0xCu);
    outlined destroy of Mirror.DisplayStyle?(v6, &_sSo8NSObjectCSgMd, ",p");
  }

  v8 = v0[116];
  [v2 horizontalAccuracy];
  v10 = v9;
  v11 = **(&off_E3480 + *(v8 + 64));
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v3, v12);
  if (v10 <= v11)
  {
    if (v13)
    {
      v19 = v0[116];
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      [v2 horizontalAccuracy];
      *(v20 + 4) = v21;
      *(v20 + 12) = 2048;
      *(v20 + 14) = round(**(&off_E3480 + *(v19 + 64)));
      _os_log_impl(&dword_0, v3, v12, "horizontal accuracy is within required access threshold: %f <= %f", v20, 0x16u);
    }

    v22 = *(*v0[116] + 152);
    v23 = v0[155];
    v24 = v0[135];
    v25 = v0[115];
    v26 = v2;
    v22(v2, 0);
    static ExecuteResponse.complete()();

    v27 = v0[134];
    v28 = v0[133];
    v29 = v0[132];
    v30 = v0[131];
    v31 = v0[130];
    v32 = v0[129];
    v33 = v0[128];
    v34 = v0[127];
    v35 = v0[126];
    v36 = v0[125];
    v39 = v0[122];
    v40 = v0[121];
    v41 = v0[117];

    v37 = v0[1];

    return v37();
  }

  else
  {
    if (v13)
    {
      v14 = v0[116];
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      [v2 horizontalAccuracy];
      *(v15 + 4) = v16;
      *(v15 + 12) = 2048;
      *(v15 + 14) = round(**(&off_E3480 + *(v14 + 64)));
      _os_log_impl(&dword_0, v3, v12, "horizontal accuracy is too high, we cannot reliably use this location value: %f > %f", v15, 0x16u);
    }

    v17 = v0[135];
    v0[18] = v0;
    v0[23] = v0 + 105;
    v0[19] = LocationFetchFlow.execute();
    v18 = swift_continuation_init();
    v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMd, &_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMR);
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization);
    v0[37] = &block_descriptor_7;
    v0[38] = v18;
    [v17 currentAuthorizationStyle:v0 + 34];

    return _swift_continuation_await(v0 + 18);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1256) = v2;
  if (v2)
  {
    v3 = LocationFetchFlow.execute();
  }

  else
  {
    v3 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 848);
  if (v1 == 1)
  {
    v7 = *(v0 + 1248);
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 1248);
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v9, v8, "precise location is not enabled", v10, 2u);
    }

    v11 = *(v0 + 1240);
    v12 = *(**(v0 + 928) + 152);
    v13 = *(v0 + 1080);
    v14 = *(v0 + 920);
    v15 = v11;
    v12(v11, 1);
    static ExecuteResponse.complete()();

    v16 = *(v0 + 1072);
    v17 = *(v0 + 1064);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 1048);
    v20 = *(v0 + 1040);
    v21 = *(v0 + 1032);
    v22 = *(v0 + 1024);
    v23 = *(v0 + 1016);
    v24 = *(v0 + 1008);
    v25 = *(v0 + 1000);
    v34 = *(v0 + 976);
    v35 = *(v0 + 968);
    v36 = *(v0 + 936);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    if (v1)
    {
      v28 = *(v0 + 1248);
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = *(v0 + 1248);
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_0, v30, v29, "unknown location accuracy level, support for it has not been implemented", v31, 2u);
      }

      v5 = swift_task_alloc();
      *(v0 + 1272) = v5;
      *v5 = v0;
      v6 = LocationFetchFlow.execute();
    }

    else
    {
      v2 = *(v0 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v3 = swift_allocError();
      *v4 = 0xD00000000000002ALL;
      *(v4 + 8) = 0x80000000000C30B0;
      *(v4 + 16) = 2;
      (*(*v2 + 152))(v3, 2);
      v5 = swift_task_alloc();
      *(v0 + 1264) = v5;
      *v5 = v0;
      v6 = LocationFetchFlow.execute();
    }

    v5[1] = v6;
    v32 = *(v0 + 928);
    v33 = *(v0 + 920);

    return LocationFetchFlow.unknownLocationOutput()(v33);
  }
}

{
  v1 = *(*v0 + 1264);
  v3 = *v0;

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 1080);

  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 1024);
  v9 = *(v0 + 1016);
  v10 = *(v0 + 1008);
  v11 = *(v0 + 1000);
  v14 = *(v0 + 976);
  v15 = *(v0 + 968);
  v16 = *(v0 + 936);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[157];
  v2 = v0[156];
  swift_willThrow();

  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[156];
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v4, v3, "location accuracy level is inaccessible", v5, 2u);
  }

  v6 = v0[116];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v7 = swift_allocError();
  *v8 = 0xD000000000000038;
  *(v8 + 8) = 0x80000000000C3010;
  *(v8 + 16) = 0;
  v9 = *(*v6 + 152);
  v10 = v0[155];
  v11 = v0[135];
  v12 = v0[116];
  v13 = v0[115];
  v9(v7, 2);
  static ExecuteResponse.complete()();

  v14 = v0[134];
  v15 = v0[133];
  v16 = v0[132];
  v17 = v0[131];
  v18 = v0[130];
  v19 = v0[129];
  v20 = v0[128];
  v21 = v0[127];
  v22 = v0[126];
  v23 = v0[125];
  v26 = v0[122];
  v27 = v0[121];
  v28 = v0[117];

  v24 = v0[1];

  return v24();
}

{
  v1 = *(*v0 + 1272);
  v3 = *v0;

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

{
  v1 = v0[154];
  v2 = v0[116];
  swift_willThrow();

  v3 = *(v2 + 72);
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Location Service could not get requested accuracy within timeout", v5, 2u);
  }

  v6 = v0[116];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v7 = swift_allocError();
  *v8 = 0xD000000000000021;
  *(v8 + 8) = 0x80000000000C3080;
  *(v8 + 16) = 2;
  (*(*v6 + 152))(v7, 2);
  v9 = swift_task_alloc();
  v0[160] = v9;
  *v9 = v0;
  v9[1] = LocationFetchFlow.execute();
  v10 = v0[116];
  v11 = v0[115];

  return LocationFetchFlow.unknownLocationOutput()(v11);
}

{
  v1 = *(*v0 + 1280);
  v3 = *v0;

  return _swift_task_switch(LocationFetchFlow.execute(), 0, 0);
}

{

  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1016);
  v9 = *(v0 + 1008);
  v10 = *(v0 + 1000);
  v13 = *(v0 + 976);
  v14 = *(v0 + 968);
  v15 = *(v0 + 936);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  v3 = (*v1)[165];
  v10 = *v1;

  if (v0)
  {
    v4 = v2[164];
    v5 = v2[163];

    v6 = LocationFetchFlow.execute();
  }

  else
  {
    v7 = v2[164];
    v8 = v2[163];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 70);
    v6 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 928);
  (*(v0 + 1088))(v4, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v4, v3);
  v7 = v6[6];
  v8 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v7);
  (*(v8 + 32))(v7, v8);
  static LocationServicesViews.needSiriLocation.getter(v5);
  DeepLinkParams.makeDeepLink(device:)((v0 + 600));

  outlined destroy of DeepLinkParams(v5);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 600));
  v9 = *(v0 + 888);

  v10 = *(v0 + 1032);
  v11 = *(v0 + 992);
  v12 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v10);
  if ((*(v11 + 48))(v10, 1, v12) == 1)
  {
    v13 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v13, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v14 = *(v0 + 1080);
    v15 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v16 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v16;
    [v14 currentLocationWithAccuracy:v0 + 336 timeout:v15 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v50 = *(v0 + 1080);
    v52 = *(v0 + 1072);
    v17 = *(v0 + 1000);
    v18 = *(v0 + 992);
    v19 = *(v0 + 968);
    v45 = v19;
    v46 = *(v0 + 960);
    v20 = *(v0 + 952);
    v43 = *(v0 + 976);
    v44 = *(v0 + 944);
    v21 = *(v0 + 936);
    v22 = *(v0 + 928);
    v47 = *(v0 + 920);
    v48 = *(v0 + 984);
    (*(v18 + 32))(v17, *(v0 + 1032));
    v24 = v22[6];
    v23 = v22[7];
    __swift_project_boxed_opaque_existential_1(v22 + 3, v24);
    (*(v23 + 32))(v24, v23);
    v25 = type metadata accessor for NLContextUpdate();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v21, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v20 + 16))(v45, v43, v44);
    v26 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v27 = swift_allocObject();
    (*(v20 + 32))(v27 + v26, v45, v44);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v28 = type metadata accessor for SimpleOutputFlowAsync();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v20 + 8))(v43, v44);
    (*(v18 + 8))(v17, v48);
    outlined destroy of Mirror.DisplayStyle?(v52, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v31 = *(v0 + 1072);
    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1048);
    v35 = *(v0 + 1040);
    v36 = *(v0 + 1032);
    v37 = *(v0 + 1024);
    v38 = *(v0 + 1016);
    v39 = *(v0 + 1008);
    v40 = *(v0 + 1000);
    v49 = *(v0 + 976);
    v51 = *(v0 + 968);
    v53 = *(v0 + 936);

    v41 = *(v0 + 8);

    return v41();
  }
}

{
  v2 = *v1;
  v3 = (*v1)[168];
  v10 = *v1;

  if (v0)
  {
    v4 = v2[167];
    v5 = v2[166];

    v6 = LocationFetchFlow.execute();
  }

  else
  {
    v7 = v2[167];
    v8 = v2[166];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 65);
    v6 = LocationFetchFlow.execute();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = *(v0 + 1072);

  outlined destroy of Mirror.DisplayStyle?(v1, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1016);
  (*(v0 + 1088))(v4, 0, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v4, v3);
  v5 = *(v0 + 1288);
  v6 = *(v0 + 888);

  v7 = *(v0 + 1032);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v7);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    v10 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v10, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v11 = *(v0 + 1080);
    v12 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v13 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v13;
    [v11 currentLocationWithAccuracy:v0 + 336 timeout:v12 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v47 = *(v0 + 1080);
    v49 = *(v0 + 1072);
    v14 = *(v0 + 1000);
    v15 = *(v0 + 992);
    v16 = *(v0 + 968);
    v42 = v16;
    v43 = *(v0 + 960);
    v17 = *(v0 + 952);
    v40 = *(v0 + 976);
    v41 = *(v0 + 944);
    v18 = *(v0 + 936);
    v19 = *(v0 + 928);
    v44 = *(v0 + 920);
    v45 = *(v0 + 984);
    (*(v15 + 32))(v14, *(v0 + 1032));
    v21 = v19[6];
    v20 = v19[7];
    __swift_project_boxed_opaque_existential_1(v19 + 3, v21);
    (*(v20 + 32))(v21, v20);
    v22 = type metadata accessor for NLContextUpdate();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v17 + 16))(v42, v40, v41);
    v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v24 = swift_allocObject();
    (*(v17 + 32))(v24 + v23, v42, v41);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v25 = type metadata accessor for SimpleOutputFlowAsync();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v17 + 8))(v40, v41);
    (*(v15 + 8))(v14, v45);
    outlined destroy of Mirror.DisplayStyle?(v49, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v28 = *(v0 + 1072);
    v29 = *(v0 + 1064);
    v30 = *(v0 + 1056);
    v31 = *(v0 + 1048);
    v32 = *(v0 + 1040);
    v33 = *(v0 + 1032);
    v34 = *(v0 + 1024);
    v35 = *(v0 + 1016);
    v36 = *(v0 + 1008);
    v37 = *(v0 + 1000);
    v46 = *(v0 + 976);
    v48 = *(v0 + 968);
    v50 = *(v0 + 936);

    v38 = *(v0 + 8);

    return v38();
  }
}

{
  v1 = *(v0 + 1104);
  swift_willThrow();
  v2 = *(v0 + 1104);
  *(v0 + 1288) = &_swiftEmptyArrayStorage;
  *(v0 + 888) = v2;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 928);
  if (v3)
  {

    v5 = *(v0 + 880);
    *(v0 + 1296) = v5;
    v6 = static os_log_type_t.error.getter();
    v7 = v4[9];
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v5;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_0, v7, v6, "AFLocationServiceError: %@", v8, 0xCu);
      outlined destroy of Mirror.DisplayStyle?(v9, &_sSo8NSObjectCSgMd, ",p");
    }

    *(v0 + 904) = v5;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, 255, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 912) == 5)
    {

      type metadata accessor for CATService();
      v12 = swift_allocObject();
      *(v0 + 1304) = v12;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      type metadata accessor for OS_os_log();
      *(v12 + 32) = OS_os_log.init(subsystem:category:)();
      *(v12 + 16) = 0;
      *(v0 + 584) = &type metadata for LocationServices;
      *(v0 + 592) = &protocol witness table for LocationServices;
      *(v0 + 560) = 0;
      v14 = static DialogHelper.globals.getter();
      *(v0 + 1312) = v14;
      v15 = swift_task_alloc();
      *(v0 + 1320) = v15;
      *v15 = v0;
      v15[1] = LocationFetchFlow.execute();
      v16 = *(v0 + 1024);
      v17 = v0 + 560;
    }

    else
    {
      v28 = *(v0 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v29 = swift_allocError();
      *v30 = 0xD00000000000001FLL;
      *(v30 + 8) = 0x80000000000C30E0;
      *(v30 + 16) = 2;
      (*(*v28 + 152))(v29, 2);
      type metadata accessor for CATService();
      v31 = swift_allocObject();
      *(v0 + 1328) = v31;
      v32 = swift_getObjCClassFromMetadata();
      *(v31 + 24) = [objc_opt_self() bundleForClass:v32];
      type metadata accessor for OS_os_log();
      *(v31 + 32) = OS_os_log.init(subsystem:category:)();
      *(v31 + 16) = 0;
      *(v0 + 544) = &type metadata for LocationServices;
      *(v0 + 552) = &protocol witness table for LocationServices;
      *(v0 + 520) = 2;
      v14 = static DialogHelper.globals.getter();
      *(v0 + 1336) = v14;
      v33 = swift_task_alloc();
      *(v0 + 1344) = v33;
      *v33 = v0;
      v33[1] = LocationFetchFlow.execute();
      v16 = *(v0 + 1016);
      v17 = v0 + 520;
    }

    return CATService.execute(model:globals:)(v16, v17, v14);
  }

  else
  {
    v18 = *(v0 + 888);

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v19 = swift_allocError();
    *v20 = 0xD000000000000038;
    *(v20 + 8) = 0x80000000000C3010;
    *(v20 + 16) = 0;
    (*(*v4 + 152))(v19, 2);

    v21 = *(v0 + 1032);
    v22 = *(v0 + 992);
    v23 = *(v0 + 984);
    outlined init with copy of TemplatingResult?(*(v0 + 1072), v21);
    if ((*(v22 + 48))(v21, 1, v23) == 1)
    {
      v24 = *(v0 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v24, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v25 = *(v0 + 1080);
      v26 = **(&off_E3460 + *(*(v0 + 928) + 64));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 872;
      *(v0 + 24) = LocationFetchFlow.execute();
      v27 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v0 + 360) = &block_descriptor_3;
      *(v0 + 368) = v27;
      [v25 currentLocationWithAccuracy:v0 + 336 timeout:v26 completion:2.0];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v66 = *(v0 + 1080);
      v68 = *(v0 + 1072);
      v34 = *(v0 + 1000);
      v35 = *(v0 + 992);
      v36 = *(v0 + 976);
      v61 = *(v0 + 968);
      v62 = *(v0 + 960);
      v37 = *(v0 + 952);
      v60 = *(v0 + 944);
      v38 = *(v0 + 936);
      v39 = *(v0 + 928);
      v63 = *(v0 + 920);
      v64 = *(v0 + 984);
      (*(v35 + 32))(v34, *(v0 + 1032));
      v41 = v39[6];
      v40 = v39[7];
      __swift_project_boxed_opaque_existential_1(v39 + 3, v41);
      (*(v40 + 32))(v41, v40);
      v42 = type metadata accessor for NLContextUpdate();
      (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
      *(v0 + 512) = 0;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v38, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
      (*(v37 + 16))(v61, v36, v60);
      v43 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v44 = swift_allocObject();
      (*(v37 + 32))(v44 + v43, v61, v60);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      v45 = type metadata accessor for SimpleOutputFlowAsync();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v37 + 8))(v36, v60);
      (*(v35 + 8))(v34, v64);
      outlined destroy of Mirror.DisplayStyle?(v68, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v48 = *(v0 + 1072);
      v49 = *(v0 + 1064);
      v50 = *(v0 + 1056);
      v51 = *(v0 + 1048);
      v52 = *(v0 + 1040);
      v53 = *(v0 + 1032);
      v54 = *(v0 + 1024);
      v55 = *(v0 + 1016);
      v56 = *(v0 + 1008);
      v57 = *(v0 + 1000);
      v65 = *(v0 + 976);
      v67 = *(v0 + 968);
      v69 = *(v0 + 936);

      v58 = *(v0 + 8);

      return v58();
    }
  }
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 400));
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  (*(v0 + 1088))(v3, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v5);
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    v8 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v9 = *(v0 + 1080);
    v10 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v11 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v11;
    [v9 currentLocationWithAccuracy:v0 + 336 timeout:v10 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v45 = *(v0 + 1080);
    v47 = *(v0 + 1072);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 992);
    v14 = *(v0 + 968);
    v40 = v14;
    v41 = *(v0 + 960);
    v15 = *(v0 + 952);
    v38 = *(v0 + 976);
    v39 = *(v0 + 944);
    v16 = *(v0 + 936);
    v17 = *(v0 + 928);
    v42 = *(v0 + 920);
    v43 = *(v0 + 984);
    (*(v13 + 32))(v12, *(v0 + 1032));
    v19 = v17[6];
    v18 = v17[7];
    __swift_project_boxed_opaque_existential_1(v17 + 3, v19);
    (*(v18 + 32))(v19, v18);
    v20 = type metadata accessor for NLContextUpdate();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v16, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v15 + 16))(v40, v38, v39);
    v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v22 = swift_allocObject();
    (*(v15 + 32))(v22 + v21, v40, v39);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v23 = type metadata accessor for SimpleOutputFlowAsync();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v15 + 8))(v38, v39);
    (*(v13 + 8))(v12, v43);
    outlined destroy of Mirror.DisplayStyle?(v47, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v26 = *(v0 + 1072);
    v27 = *(v0 + 1064);
    v28 = *(v0 + 1056);
    v29 = *(v0 + 1048);
    v30 = *(v0 + 1040);
    v31 = *(v0 + 1032);
    v32 = *(v0 + 1024);
    v33 = *(v0 + 1016);
    v34 = *(v0 + 1008);
    v35 = *(v0 + 1000);
    v44 = *(v0 + 976);
    v46 = *(v0 + 968);
    v48 = *(v0 + 936);

    v36 = *(v0 + 8);

    return v36();
  }
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 640));
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1040);
  (*(v0 + 1088))(v3, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v3, v2);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v4);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v7 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v8 = *(v0 + 1080);
    v9 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v10 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v10;
    [v8 currentLocationWithAccuracy:v0 + 336 timeout:v9 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v43 = *(v0 + 1080);
    v45 = *(v0 + 1072);
    v11 = *(v0 + 1000);
    v12 = *(v0 + 992);
    v13 = *(v0 + 976);
    v38 = *(v0 + 968);
    v39 = *(v0 + 960);
    v14 = *(v0 + 952);
    v37 = *(v0 + 944);
    v15 = *(v0 + 936);
    v16 = *(v0 + 928);
    v40 = *(v0 + 920);
    v41 = *(v0 + 984);
    (*(v12 + 32))(v11, *(v0 + 1032));
    v18 = v16[6];
    v17 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v18);
    (*(v17 + 32))(v18, v17);
    v19 = type metadata accessor for NLContextUpdate();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v14 + 16))(v38, v13, v37);
    v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v21 = swift_allocObject();
    (*(v14 + 32))(v21 + v20, v38, v37);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v22 = type metadata accessor for SimpleOutputFlowAsync();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v14 + 8))(v13, v37);
    (*(v12 + 8))(v11, v41);
    outlined destroy of Mirror.DisplayStyle?(v45, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v25 = *(v0 + 1072);
    v26 = *(v0 + 1064);
    v27 = *(v0 + 1056);
    v28 = *(v0 + 1048);
    v29 = *(v0 + 1040);
    v30 = *(v0 + 1032);
    v31 = *(v0 + 1024);
    v32 = *(v0 + 1016);
    v33 = *(v0 + 1008);
    v34 = *(v0 + 1000);
    v42 = *(v0 + 976);
    v44 = *(v0 + 968);
    v46 = *(v0 + 936);

    v35 = *(v0 + 8);

    return v35();
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 760));
  v1 = *(v0 + 1168);
  *(v0 + 1288) = &_swiftEmptyArrayStorage;
  *(v0 + 888) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 928);
  if (v2)
  {

    v4 = *(v0 + 880);
    *(v0 + 1296) = v4;
    v5 = static os_log_type_t.error.getter();
    v6 = v3[9];
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_0, v6, v5, "AFLocationServiceError: %@", v7, 0xCu);
      outlined destroy of Mirror.DisplayStyle?(v8, &_sSo8NSObjectCSgMd, ",p");
    }

    *(v0 + 904) = v4;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, 255, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 912) == 5)
    {

      type metadata accessor for CATService();
      v11 = swift_allocObject();
      *(v0 + 1304) = v11;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      type metadata accessor for OS_os_log();
      *(v11 + 32) = OS_os_log.init(subsystem:category:)();
      *(v11 + 16) = 0;
      *(v0 + 584) = &type metadata for LocationServices;
      *(v0 + 592) = &protocol witness table for LocationServices;
      *(v0 + 560) = 0;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1312) = v13;
      v14 = swift_task_alloc();
      *(v0 + 1320) = v14;
      *v14 = v0;
      v14[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1024);
      v16 = v0 + 560;
    }

    else
    {
      v27 = *(v0 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v28 = swift_allocError();
      *v29 = 0xD00000000000001FLL;
      *(v29 + 8) = 0x80000000000C30E0;
      *(v29 + 16) = 2;
      (*(*v27 + 152))(v28, 2);
      type metadata accessor for CATService();
      v30 = swift_allocObject();
      *(v0 + 1328) = v30;
      v31 = swift_getObjCClassFromMetadata();
      *(v30 + 24) = [objc_opt_self() bundleForClass:v31];
      type metadata accessor for OS_os_log();
      *(v30 + 32) = OS_os_log.init(subsystem:category:)();
      *(v30 + 16) = 0;
      *(v0 + 544) = &type metadata for LocationServices;
      *(v0 + 552) = &protocol witness table for LocationServices;
      *(v0 + 520) = 2;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1336) = v13;
      v32 = swift_task_alloc();
      *(v0 + 1344) = v32;
      *v32 = v0;
      v32[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1016);
      v16 = v0 + 520;
    }

    return CATService.execute(model:globals:)(v15, v16, v13);
  }

  else
  {
    v17 = *(v0 + 888);

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v18 = swift_allocError();
    *v19 = 0xD000000000000038;
    *(v19 + 8) = 0x80000000000C3010;
    *(v19 + 16) = 0;
    (*(*v3 + 152))(v18, 2);

    v20 = *(v0 + 1032);
    v21 = *(v0 + 992);
    v22 = *(v0 + 984);
    outlined init with copy of TemplatingResult?(*(v0 + 1072), v20);
    if ((*(v21 + 48))(v20, 1, v22) == 1)
    {
      v23 = *(v0 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v23, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v24 = *(v0 + 1080);
      v25 = **(&off_E3460 + *(*(v0 + 928) + 64));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 872;
      *(v0 + 24) = LocationFetchFlow.execute();
      v26 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v0 + 360) = &block_descriptor_3;
      *(v0 + 368) = v26;
      [v24 currentLocationWithAccuracy:v0 + 336 timeout:v25 completion:2.0];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v65 = *(v0 + 1080);
      v67 = *(v0 + 1072);
      v33 = *(v0 + 1000);
      v34 = *(v0 + 992);
      v35 = *(v0 + 976);
      v60 = *(v0 + 968);
      v61 = *(v0 + 960);
      v36 = *(v0 + 952);
      v59 = *(v0 + 944);
      v37 = *(v0 + 936);
      v38 = *(v0 + 928);
      v62 = *(v0 + 920);
      v63 = *(v0 + 984);
      (*(v34 + 32))(v33, *(v0 + 1032));
      v40 = v38[6];
      v39 = v38[7];
      __swift_project_boxed_opaque_existential_1(v38 + 3, v40);
      (*(v39 + 32))(v40, v39);
      v41 = type metadata accessor for NLContextUpdate();
      (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
      *(v0 + 512) = 0;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
      (*(v36 + 16))(v60, v35, v59);
      v42 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v43 = swift_allocObject();
      (*(v36 + 32))(v43 + v42, v60, v59);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      v44 = type metadata accessor for SimpleOutputFlowAsync();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v36 + 8))(v35, v59);
      (*(v34 + 8))(v33, v63);
      outlined destroy of Mirror.DisplayStyle?(v67, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v47 = *(v0 + 1072);
      v48 = *(v0 + 1064);
      v49 = *(v0 + 1056);
      v50 = *(v0 + 1048);
      v51 = *(v0 + 1040);
      v52 = *(v0 + 1032);
      v53 = *(v0 + 1024);
      v54 = *(v0 + 1016);
      v55 = *(v0 + 1008);
      v56 = *(v0 + 1000);
      v64 = *(v0 + 976);
      v66 = *(v0 + 968);
      v68 = *(v0 + 936);

      v57 = *(v0 + 8);

      return v57();
    }
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 720));
  v1 = *(v0 + 1200);
  *(v0 + 1288) = *(v0 + 1176);
  *(v0 + 888) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 928);
  if (v2)
  {

    v4 = *(v0 + 880);
    *(v0 + 1296) = v4;
    v5 = static os_log_type_t.error.getter();
    v6 = v3[9];
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_0, v6, v5, "AFLocationServiceError: %@", v7, 0xCu);
      outlined destroy of Mirror.DisplayStyle?(v8, &_sSo8NSObjectCSgMd, ",p");
    }

    *(v0 + 904) = v4;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, 255, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 912) == 5)
    {

      type metadata accessor for CATService();
      v11 = swift_allocObject();
      *(v0 + 1304) = v11;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      type metadata accessor for OS_os_log();
      *(v11 + 32) = OS_os_log.init(subsystem:category:)();
      *(v11 + 16) = 0;
      *(v0 + 584) = &type metadata for LocationServices;
      *(v0 + 592) = &protocol witness table for LocationServices;
      *(v0 + 560) = 0;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1312) = v13;
      v14 = swift_task_alloc();
      *(v0 + 1320) = v14;
      *v14 = v0;
      v14[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1024);
      v16 = v0 + 560;
    }

    else
    {
      v27 = *(v0 + 928);
      lazy protocol witness table accessor for type Errors and conformance Errors();
      v28 = swift_allocError();
      *v29 = 0xD00000000000001FLL;
      *(v29 + 8) = 0x80000000000C30E0;
      *(v29 + 16) = 2;
      (*(*v27 + 152))(v28, 2);
      type metadata accessor for CATService();
      v30 = swift_allocObject();
      *(v0 + 1328) = v30;
      v31 = swift_getObjCClassFromMetadata();
      *(v30 + 24) = [objc_opt_self() bundleForClass:v31];
      type metadata accessor for OS_os_log();
      *(v30 + 32) = OS_os_log.init(subsystem:category:)();
      *(v30 + 16) = 0;
      *(v0 + 544) = &type metadata for LocationServices;
      *(v0 + 552) = &protocol witness table for LocationServices;
      *(v0 + 520) = 2;
      v13 = static DialogHelper.globals.getter();
      *(v0 + 1336) = v13;
      v32 = swift_task_alloc();
      *(v0 + 1344) = v32;
      *v32 = v0;
      v32[1] = LocationFetchFlow.execute();
      v15 = *(v0 + 1016);
      v16 = v0 + 520;
    }

    return CATService.execute(model:globals:)(v15, v16, v13);
  }

  else
  {
    v17 = *(v0 + 888);

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v18 = swift_allocError();
    *v19 = 0xD000000000000038;
    *(v19 + 8) = 0x80000000000C3010;
    *(v19 + 16) = 0;
    (*(*v3 + 152))(v18, 2);

    v20 = *(v0 + 1032);
    v21 = *(v0 + 992);
    v22 = *(v0 + 984);
    outlined init with copy of TemplatingResult?(*(v0 + 1072), v20);
    if ((*(v21 + 48))(v20, 1, v22) == 1)
    {
      v23 = *(v0 + 1032);
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

      outlined destroy of Mirror.DisplayStyle?(v23, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v24 = *(v0 + 1080);
      v25 = **(&off_E3460 + *(*(v0 + 928) + 64));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 872;
      *(v0 + 24) = LocationFetchFlow.execute();
      v26 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
      *(v0 + 360) = &block_descriptor_3;
      *(v0 + 368) = v26;
      [v24 currentLocationWithAccuracy:v0 + 336 timeout:v25 completion:2.0];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v66 = *(v0 + 1080);
      v68 = *(v0 + 1072);
      v33 = *(v0 + 1000);
      v34 = *(v0 + 992);
      v35 = *(v0 + 968);
      v61 = v35;
      v62 = *(v0 + 960);
      v36 = *(v0 + 952);
      v59 = *(v0 + 976);
      v60 = *(v0 + 944);
      v37 = *(v0 + 936);
      v38 = *(v0 + 928);
      v63 = *(v0 + 920);
      v64 = *(v0 + 984);
      (*(v34 + 32))(v33, *(v0 + 1032));
      v40 = v38[6];
      v39 = v38[7];
      __swift_project_boxed_opaque_existential_1(v38 + 3, v40);
      (*(v39 + 32))(v40, v39);
      v41 = type metadata accessor for NLContextUpdate();
      (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
      *(v0 + 512) = 0;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

      outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      outlined destroy of Mirror.DisplayStyle?(v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
      (*(v36 + 16))(v61, v59, v60);
      v42 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v43 = swift_allocObject();
      (*(v36 + 32))(v43 + v42, v61, v60);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      v44 = type metadata accessor for SimpleOutputFlowAsync();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
      static ExecuteResponse.complete<A>(next:)();

      (*(v36 + 8))(v59, v60);
      (*(v34 + 8))(v33, v64);
      outlined destroy of Mirror.DisplayStyle?(v68, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
      v47 = *(v0 + 1072);
      v48 = *(v0 + 1064);
      v49 = *(v0 + 1056);
      v50 = *(v0 + 1048);
      v51 = *(v0 + 1040);
      v52 = *(v0 + 1032);
      v53 = *(v0 + 1024);
      v54 = *(v0 + 1016);
      v55 = *(v0 + 1008);
      v56 = *(v0 + 1000);
      v65 = *(v0 + 976);
      v67 = *(v0 + 968);
      v69 = *(v0 + 936);

      v57 = *(v0 + 8);

      return v57();
    }
  }
}

{
  outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 560));
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 928);
  (*(v0 + 1088))(v4, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v4, v3);
  v7 = v6[6];
  v8 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v7);
  (*(v8 + 32))(v7, v8);
  static LocationServicesViews.needSiriLocation.getter(v5);
  DeepLinkParams.makeDeepLink(device:)((v0 + 600));

  outlined destroy of DeepLinkParams(v5);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 600));
  v9 = *(v0 + 888);

  v10 = *(v0 + 1032);
  v11 = *(v0 + 992);
  v12 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v10);
  if ((*(v11 + 48))(v10, 1, v12) == 1)
  {
    v13 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v13, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v14 = *(v0 + 1080);
    v15 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v16 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v16;
    [v14 currentLocationWithAccuracy:v0 + 336 timeout:v15 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v50 = *(v0 + 1080);
    v52 = *(v0 + 1072);
    v17 = *(v0 + 1000);
    v18 = *(v0 + 992);
    v19 = *(v0 + 968);
    v45 = v19;
    v46 = *(v0 + 960);
    v20 = *(v0 + 952);
    v43 = *(v0 + 976);
    v44 = *(v0 + 944);
    v21 = *(v0 + 936);
    v22 = *(v0 + 928);
    v47 = *(v0 + 920);
    v48 = *(v0 + 984);
    (*(v18 + 32))(v17, *(v0 + 1032));
    v24 = v22[6];
    v23 = v22[7];
    __swift_project_boxed_opaque_existential_1(v22 + 3, v24);
    (*(v23 + 32))(v24, v23);
    v25 = type metadata accessor for NLContextUpdate();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v21, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v20 + 16))(v45, v43, v44);
    v26 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v27 = swift_allocObject();
    (*(v20 + 32))(v27 + v26, v45, v44);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v28 = type metadata accessor for SimpleOutputFlowAsync();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v20 + 8))(v43, v44);
    (*(v18 + 8))(v17, v48);
    outlined destroy of Mirror.DisplayStyle?(v52, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v31 = *(v0 + 1072);
    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1048);
    v35 = *(v0 + 1040);
    v36 = *(v0 + 1032);
    v37 = *(v0 + 1024);
    v38 = *(v0 + 1016);
    v39 = *(v0 + 1008);
    v40 = *(v0 + 1000);
    v49 = *(v0 + 976);
    v51 = *(v0 + 968);
    v53 = *(v0 + 936);

    v41 = *(v0 + 8);

    return v41();
  }
}

{
  v1 = *(v0 + 1072);

  outlined destroy of Mirror.DisplayStyle?(v1, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 520));
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1016);
  (*(v0 + 1088))(v4, 1, 1, *(v0 + 984));
  outlined init with take of TemplatingResult?(v4, v3);
  v5 = *(v0 + 1288);
  v6 = *(v0 + 888);

  v7 = *(v0 + 1032);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  outlined init with copy of TemplatingResult?(*(v0 + 1072), v7);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    v10 = *(v0 + 1032);
    outlined destroy of Mirror.DisplayStyle?(*(v0 + 1072), &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);

    outlined destroy of Mirror.DisplayStyle?(v10, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v11 = *(v0 + 1080);
    v12 = **(&off_E3460 + *(*(v0 + 928) + 64));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 872;
    *(v0 + 24) = LocationFetchFlow.execute();
    v13 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 360) = &block_descriptor_3;
    *(v0 + 368) = v13;
    [v11 currentLocationWithAccuracy:v0 + 336 timeout:v12 completion:2.0];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v47 = *(v0 + 1080);
    v49 = *(v0 + 1072);
    v14 = *(v0 + 1000);
    v15 = *(v0 + 992);
    v16 = *(v0 + 968);
    v42 = v16;
    v43 = *(v0 + 960);
    v17 = *(v0 + 952);
    v40 = *(v0 + 976);
    v41 = *(v0 + 944);
    v18 = *(v0 + 936);
    v19 = *(v0 + 928);
    v44 = *(v0 + 920);
    v45 = *(v0 + 984);
    (*(v15 + 32))(v14, *(v0 + 1032));
    v21 = v19[6];
    v20 = v19[7];
    __swift_project_boxed_opaque_existential_1(v19 + 3, v21);
    (*(v20 + 32))(v21, v20);
    v22 = type metadata accessor for NLContextUpdate();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();

    outlined destroy of Mirror.DisplayStyle?(v0 + 480, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
    (*(v17 + 16))(v42, v40, v41);
    v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v24 = swift_allocObject();
    (*(v17 + 32))(v24 + v23, v42, v41);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v25 = type metadata accessor for SimpleOutputFlowAsync();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    *(v0 + 896) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v17 + 8))(v40, v41);
    (*(v15 + 8))(v14, v45);
    outlined destroy of Mirror.DisplayStyle?(v49, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
    v28 = *(v0 + 1072);
    v29 = *(v0 + 1064);
    v30 = *(v0 + 1056);
    v31 = *(v0 + 1048);
    v32 = *(v0 + 1040);
    v33 = *(v0 + 1032);
    v34 = *(v0 + 1024);
    v35 = *(v0 + 1016);
    v36 = *(v0 + 1008);
    v37 = *(v0 + 1000);
    v46 = *(v0 + 976);
    v48 = *(v0 + 968);
    v50 = *(v0 + 936);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t closure #1 in LocationFetchFlow.execute()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in LocationFetchFlow.execute(), 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t LocationFetchFlow.unknownLocationOutput()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for AceOutput();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v2[23] = *(v5 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v2[27] = v7;
  v8 = *(v7 - 8);
  v2[28] = v8;
  v9 = *(v8 + 64) + 15;
  v2[29] = swift_task_alloc();

  return _swift_task_switch(LocationFetchFlow.unknownLocationOutput(), 0, 0);
}

uint64_t LocationFetchFlow.unknownLocationOutput()()
{
  type metadata accessor for CATService();
  v1 = swift_allocObject();
  *(v0 + 240) = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v1 + 32) = OS_os_log.init(subsystem:category:)();
  *(v1 + 16) = 0;
  *(v0 + 40) = &type metadata for LocationServices;
  *(v0 + 48) = &protocol witness table for LocationServices;
  *(v0 + 16) = 2;
  v3 = static DialogHelper.globals.getter();
  *(v0 + 248) = v3;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = LocationFetchFlow.unknownLocationOutput();
  v5 = *(v0 + 208);

  return CATService.execute(model:globals:)(v5, v0 + 16, v3);
}

{
  v2 = *v1;
  v3 = (*v1)[32];
  v11 = *v1;

  if (v0)
  {
    v6 = v2 + 30;
    v4 = v2[30];
    v5 = v6[1];

    v7 = LocationFetchFlow.unknownLocationOutput();
  }

  else
  {
    v8 = v2[30];
    v9 = v2[31];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v7 = LocationFetchFlow.unknownLocationOutput();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v25 = *(v0 + 192);
  v26 = *(v0 + 184);
  v7 = *(v0 + 160);
  v24 = *(v0 + 168);
  v8 = *(v0 + 152);
  v27 = v4;
  (*(v1 + 56))(v3, 0, 1, v4);
  (*(v1 + 32))(v2, v3, v4);
  v10 = v8[6];
  v9 = v8[7];
  __swift_project_boxed_opaque_existential_1(v8 + 3, v10);
  (*(v9 + 32))(v10, v9);
  v11 = type metadata accessor for NLContextUpdate();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v6 + 16))(v25, v5, v24);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v25, v24);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v14 = type metadata accessor for SimpleOutputFlowAsync();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 136) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  (*(v6 + 8))(v5, v24);
  (*(v1 + 8))(v2, v27);
  v17 = *(v0 + 232);
  v18 = *(v0 + 200);
  v19 = *(v0 + 208);
  v20 = *(v0 + 192);
  v21 = *(v0 + 160);

  v22 = *(v0 + 8);

  return v22();
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[18];
  v5 = v0[19];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  (*(v2 + 56))(v3, 1, 1, v1);
  outlined destroy of Mirror.DisplayStyle?(v3, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  static os_log_type_t.error.getter();
  v6 = *(v5 + 72);
  os_log(_:dso:log:_:_:)();
  static ExecuteResponse.complete()();
  v7 = v0[29];
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[24];
  v11 = v0[20];

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in LocationFetchFlow.unknownLocationOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in LocationFetchFlow.unknownLocationOutput(), 0, 0);
}

uint64_t closure #1 in LocationFetchFlow.unknownLocationOutput()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for AceOutput();
  v1[3] = v3;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  v5 = v0[1];

  return v5();
}

uint64_t LocationFetchFlow.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  outlined consume of LocationFetchFlow.ExitValue(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t LocationFetchFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  outlined consume of LocationFetchFlow.ExitValue(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance LocationFetchFlow(uint64_t a1)
{
  v4 = *(**v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance LocationFetchFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 144))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t outlined init with copy of TemplatingResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t partial apply for closure #1 in LocationFetchFlow.execute()(uint64_t a1)
{
  v4 = *(type metadata accessor for AceOutput() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in LocationFetchFlow.execute()(a1, v1 + v5);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined init with take of TemplatingResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LocationAccessLevelFor and conformance LocationAccessLevelFor()
{
  result = lazy protocol witness table cache variable for type LocationAccessLevelFor and conformance LocationAccessLevelFor;
  if (!lazy protocol witness table cache variable for type LocationAccessLevelFor and conformance LocationAccessLevelFor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationAccessLevelFor and conformance LocationAccessLevelFor);
  }

  return result;
}

uint64_t sub_8A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_8A4B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *(a1 + 8);
  outlined copy of LocationFetchFlow.ExitValue(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin013LocationFetchB0C9ExitValueO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for LocationFetchFlow.ExitValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for LocationFetchFlow.ExitValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for LocationFetchFlow.ExitValue(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for AceOutput();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in LocationFetchFlow.unknownLocationOutput()(uint64_t a1)
{
  v4 = *(type metadata accessor for AceOutput() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in LocationFetchFlow.unknownLocationOutput()(a1, v1 + v5);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.__allocating_init(isPommes:with:)(char a1, __int128 *a2)
{
  v4 = swift_allocObject();
  TrafficIncidentNeedsDisambiguationStrategy.init(isPommes:with:)(a1, a2);
  return v4;
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.init(isPommes:with:)(char a1, __int128 *a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v5 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v5 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v5 + 32) = OS_os_log.init(subsystem:category:)();
  *(v5 + 16) = 1;
  *(v2 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_B7D60;
  if (one-time initialization token for incidentTypeNode != -1)
  {
    swift_once();
  }

  *(v7 + 32) = specialized OntologyNode.javaClassName.getter();
  *(v7 + 40) = v8;
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  *(v7 + 48) = specialized OntologyNode.javaClassName.getter();
  *(v7 + 56) = v9;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v7 + 64) = specialized OntologyNode.javaClassName.getter();
  *(v7 + 72) = v10;
  *(v2 + 80) = v7;
  *(v2 + 64) = a1 & 1;
  outlined init with take of CATType(a2, v2 + 24);
  return v2;
}

void TrafficIncidentNeedsDisambiguationStrategy.actionForInput(_:resolveRecord:)(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = type metadata accessor for Parse.DirectInvocation();
  v69 = *(v1 - 8);
  v70 = v1;
  v2 = *(v69 + 64);
  __chkstk_darwin(v1);
  v68 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = (&v67 - v10);
  __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = type metadata accessor for NLIntent();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v67 - v19;
  Input.parse.getter();
  v21 = *(v5 + 88);
  if (v21(v13, v4) == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v5 + 96))(v13, v4);
    v22 = v72;
    v23 = *(v72 + 32);
    v23(v20, v13, v14);
    static os_log_type_t.info.getter();
    isa = isa[2].isa;
    os_log(_:dso:log:_:_:)();
    v24 = v20;
    (*(v22 + 16))(v18, v20, v14);
    v25 = type metadata accessor for LocationSearchIntent();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v28 = swift_allocObject();
    v29 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    v30 = v22;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v28 + v29) = static LocationSearchIntent.domainNode;
    v23((v28 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v18, v14);
    v75 = v28;
    v31 = one-time initialization token for confirmationNode;

    if (v31 != -1)
    {
      swift_once();
    }

    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, 255, type metadata accessor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();

    v32 = v24;
    if (v76 > 1u)
    {
      v33 = isa;
      if (v76 == 2)
      {

        goto LABEL_18;
      }
    }

    else
    {
      v33 = isa;
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
LABEL_18:
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_0, v33, v51, "Traffic incident cancelation from NLv3IntentOnly parse.", v52, 2u);
        }

        static ActionForInput.cancel()();
LABEL_24:
        (*(v30 + 8))(v32, v14);
        return;
      }
    }

    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v33, v53, "Traffic incident handling NLv3IntentOnly parse.", v54, 2u);
    }

    static ActionForInput.handle()();
    goto LABEL_24;
  }

  v34 = isa;
  v35 = *(v5 + 8);
  v35(v13, v4);
  Input.parse.getter();
  if (v21(v11, v4) == enum case for Parse.pommesResponse(_:))
  {
    (*(v5 + 96))(v11, v4);
    v36 = *v11;
    static os_log_type_t.info.getter();
    v37 = v34[2].isa;
    os_log(_:dso:log:_:_:)();
    v38 = type metadata accessor for LocationSearchIntent();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = v36;
    v42 = LocationSearchIntent.init(from:)(v41);
    v43 = (*(*v42 + 152))(v42);

    if (v43 > 1u)
    {
      if (v43 == 2)
      {

LABEL_36:
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_0, v37, v63, "Traffic incident cancelation from POMMES parse.", v64, 2u);
        }

        static ActionForInput.cancel()();
LABEL_42:

        return;
      }
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v62)
      {
        goto LABEL_36;
      }
    }

    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v37, v65, "Traffic incident handling POMMES parse.", v66, 2u);
    }

    static ActionForInput.handle()();
    goto LABEL_42;
  }

  v35(v11, v4);
  v44 = v71;
  Input.parse.getter();
  if (v21(v44, v4) == enum case for Parse.directInvocation(_:))
  {
    (*(v5 + 96))(v44, v4);
    v45 = v44;
    v47 = v68;
    v46 = v69;
    v48 = v70;
    (*(v69 + 32))(v68, v45, v70);
    if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000033 && 0x80000000000BFC60 == v49)
    {

LABEL_32:
      v59 = v34[2].isa;
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_0, v59, v60, "TrafficIncidentBaseFlow onInput returns true for directInvocation.", v61, 2u);
      }

      static ActionForInput.handle()();
      (*(v46 + 8))(v47, v48);
      return;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      goto LABEL_32;
    }

    (*(v46 + 8))(v47, v48);
  }

  else
  {
    v35(v44, v4);
  }

  v55 = v34[2].isa;
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "SiriGeo currently doesn't support parse type.", v57, 2u);
  }

  static ActionForInput.ignore()();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v25 = v0;
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v2 = ParameterResolutionRecord.result.getter();
  v3 = [v2 disambiguationItems];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized _arrayConditionalCast<A, B>(_:)(v4);

  v6 = v0[4];
  if (v5)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMR);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = BasicDisambiguationItemContainer.init(_:_:)();
    v11 = *(v6 + 16);
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      v0[2] = v10;

      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "makeDisambiguationItemContainer with container: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    v18 = v0[1];

    return v18(v10);
  }

  else
  {
    static os_log_type_t.error.getter();
    v20 = *(v6 + 16);
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RuntimeError();
    v21 = swift_allocObject();
    *(v21 + 16) = 0xD000000000000044;
    *(v21 + 24) = 0x80000000000C3240;
    _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
    swift_allocError();
    *v22 = v21;
    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for AceOutput();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v2[25] = v7;
  v8 = *(v7 - 8);
  v2[26] = v8;
  v9 = *(v8 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:)()
{
  v1 = *(v0[18] + 16);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "makeFlowCancelledResponse", v3, 2u);
  }

  v4 = v0[18];
  v5 = v4[9];
  v0[5] = &type metadata for Common;
  v0[6] = &protocol witness table for Common;
  v0[2] = 0;
  v6 = v4[6];
  v7 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v6);
  v8 = (*(v7 + 80))(v6, v7);
  v0[28] = v8;
  v9 = *(*v5 + 112);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:);
  v12 = v0[27];

  return (v14)(v12, v0 + 2, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = TrafficIncidentNeedsDisambiguationStrategy.makeFlowCancelledResponse(app:intent:parameterName:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v46 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  (*(v4 + 32))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v0 + 96) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v6 = logObject;
  os_log(_:dso:log:_:_:)();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "sendCompletionViewOutputSuccess", v8, 2u);
  }

  v9 = *(v0 + 216);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 176);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15 = static os_log_type_t.info.getter();
  v16 = *(v14 + 16);
  v16(v12, v11, v13);
  v17 = os_log_type_enabled(v6, v15);
  v18 = *(v0 + 176);
  if (v17)
  {
    v44 = v15;
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    v21 = *(v0 + 152);
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v22 = 136315138;
    v16(v20, v18, v21);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v19 + 8))(v18, v21);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v45);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v6, v44, "sendCompletionViewOutput dialog final output is: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
  }

  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v31 = *(v0 + 184);
  v32 = *(v0 + 152);
  v33 = *(v0 + 160);
  v34 = *(v0 + 136);
  v34[3] = v32;
  v34[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
  (*(v33 + 32))(boxed_opaque_existential_0, v31, v32);
  outlined destroy of Mirror.DisplayStyle?(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v30, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v28 + 8))(v27, v29);
  v36 = *(v0 + 216);
  v37 = *(v0 + 184);
  v38 = *(v0 + 192);
  v40 = *(v0 + 168);
  v39 = *(v0 + 176);

  v41 = *(v0 + 8);

  return v41();
}

{
  v1 = v0[30];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];

  v8 = v0[1];

  return v8();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a1;
  v5[16] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INReportIncidentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INReportIncidentD0CGMR);
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for Parse.DirectInvocation();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v12 = type metadata accessor for NLIntent();
  v5[26] = v12;
  v13 = *(v12 - 8);
  v5[27] = v13;
  v14 = *(v13 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v15 = type metadata accessor for Parse();
  v5[30] = v15;
  v16 = *(v15 - 8);
  v5[31] = v16;
  v17 = *(v16 + 64) + 15;
  v5[32] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  v135 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 128);
  Input.parse.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v6 = *(v0 + 256);
    v7 = *(v0 + 232);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    (*(*(v0 + 248) + 96))(v6, *(v0 + 240));
    log = *(v9 + 32);
    (log)(v7, v6, v10);
    (*(v9 + 16))(v8, v7, v10);
    v11 = type metadata accessor for LocationSearchIntent();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v15 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);
    v19 = static LocationSearchIntent.domainNode;
    v20 = *(*(v0 + 216) + 8);

    v20(v16, v18);
    *(v14 + v15) = v19;
    (log)(v14 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v17, v18);
    v21 = v14;
    goto LABEL_5;
  }

  if (v5 == enum case for Parse.directInvocation(_:))
  {
    v57 = *(v0 + 256);
    v59 = *(v0 + 192);
    v58 = *(v0 + 200);
    v61 = *(v0 + 176);
    v60 = *(v0 + 184);
    v62 = *(v0 + 144);
    (*(*(v0 + 248) + 96))(v57, *(v0 + 240));
    (*(v60 + 32))(v58, v57, v61);
    v63 = static os_log_type_t.default.getter();
    v64 = *(v62 + 16);
    (*(v60 + 16))(v59, v58, v61);
    v65 = os_log_type_enabled(v64, v63);
    v66 = *(v0 + 192);
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v133[0] = v68;
      *v67 = 136315138;
      result = Parse.DirectInvocation.userData.getter();
      if (!result)
      {
        goto LABEL_35;
      }

      v70 = result;
      if (*(result + 16) && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656469636E49, 0xEC00000065707954), (v72 & 1) != 0))
      {
        outlined init with copy of Any(*(v70 + 56) + 32 * v71, v0 + 80);
      }

      else
      {

        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      v89 = *(v0 + 184);
      v88 = *(v0 + 192);
      v90 = *(v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v91 = String.init<A>(describing:)();
      v93 = v92;
      v94 = v90;
      v83 = *(v89 + 8);
      v83(v88, v94);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v133);

      *(v67 + 4) = v95;
      _os_log_impl(&dword_0, v64, v63, "recieved directInvocation: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
    }

    else
    {
      v83 = *(*(v0 + 184) + 8);
      v83(*(v0 + 192), *(v0 + 176));
    }

    v96 = *(v0 + 200);
    result = Parse.DirectInvocation.userData.getter();
    if (result)
    {
      v97 = result;
      if (*(result + 16))
      {
        v98 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656469636E49, 0xEC00000065707954);
        if (v99)
        {
          outlined init with copy of Any(*(v97 + 56) + 32 * v98, v0 + 48);

          outlined init with take of Any((v0 + 48), (v0 + 16));
          swift_dynamicCast();
          v100 = *(v0 + 112);
          v101 = objc_allocWithZone(INSupportedTrafficIncidentType);
          v102 = *(v0 + 200);
          v104 = *(v0 + 176);
          v103 = *(v0 + 184);
          if ((v100 - 1) >= 3)
          {
            v116 = [v101 initWithType:0 localizedDisplayString:0];
            static os_log_type_t.error.getter();
            os_log(_:dso:log:_:_:)();
            type metadata accessor for RuntimeError();
            v117 = swift_allocObject();
            *(v117 + 16) = 0xD00000000000002FLL;
            *(v117 + 24) = 0x80000000000C3340;
            _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
            swift_allocError();
            *v118 = v117;
            swift_willThrow();

            v83(v102, v104);
          }

          else
          {
            v106 = *(v0 + 160);
            v105 = *(v0 + 168);
            v107 = *(v0 + 152);
            logb = *(v0 + 176);
            v108 = *(v0 + 136);
            v127 = *(v0 + 120);
            v109 = [v101 initWithType:v100 localizedDisplayString:0];
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            v129 = v83;
            v126 = v102;
            v110 = v109;
            isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
            v112 = ParameterResolutionRecord.intent.getter();
            v113 = [v112 userLocation];

            v114 = [objc_allocWithZone(INReportIncidentIntent) initWithIncidentType:v110 startTime:0 isClear:isa userLocation:v113 additionalDetails:0];
            v134 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
            v133[0] = v110;
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
            v115 = v114;
            IntentPromptAnswer.init(answeredValue:updatedIntent:)();
            static DisambiguationResult.chosenItem(_:)();

            (*(v106 + 8))(v105, v107);
            v129(v126, logb);
          }

          goto LABEL_30;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v74 = *(v0 + 248);
  v73 = *(v0 + 256);
  v75 = *(v0 + 240);
  if (v5 == enum case for Parse.pommesResponse(_:))
  {
    (*(v74 + 96))(*(v0 + 256), *(v0 + 240));
    v76 = *v73;
    v77 = type metadata accessor for LocationSearchIntent();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v21 = LocationSearchIntent.init(from:)(v76);
LABEL_5:
    v22 = *(v0 + 144);

    v24 = specialized static TrafficIncidentUtils.convertIncidentTypeFromNLIntent(locationSearchIntent:)(v23);

    if (v24)
    {
      v25 = *(v22 + 16);
      v26 = static os_log_type_t.default.getter();
      loga = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v133[0] = v28;
        *v27 = 136315138;
        v29 = v24;
        v30 = [v29 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v133);

        *(v27 + 4) = v34;
        v25 = loga;
        _os_log_impl(&dword_0, loga, v26, "parseDisambiguationResult updated supportedIncidentType is %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
      }

      v35 = *(v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
      v36 = ParameterResolutionRecord.intent.getter();
      v37 = [v36 userLocation];

      v38 = [v37 location];
      v39 = specialized static TrafficIncidentUtils.makeSiriKitIntentWithUserLocation(locationSearchIntent:userLocation:)(v21, v38);

      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v25, v40))
      {
        v41 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v133[0] = v128;
        *v41 = 136315138;
        v42 = v39;
        v43 = [v42 description];
        v44 = v24;
        v45 = v39;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = v46;
        v39 = v45;
        v24 = v44;
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, v133);

        *(v41 + 4) = v50;
        _os_log_impl(&dword_0, loga, v40, "parseDisambiguationResult - updated sirikit intent: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v128);
      }

      v52 = *(v0 + 160);
      v51 = *(v0 + 168);
      v53 = *(v0 + 152);
      v54 = *(v0 + 120);
      v134 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
      v133[0] = v24;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
      v55 = v24;
      v56 = v39;
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      static DisambiguationResult.chosenItem(_:)();

      (*(v52 + 8))(v51, v53);
    }

    else
    {
      static os_log_type_t.error.getter();
      v80 = *(v22 + 16);
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v81 = swift_allocObject();
      *(v81 + 16) = 0xD000000000000038;
      *(v81 + 24) = 0x80000000000C3370;
      _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
      swift_allocError();
      *v82 = v81;
      swift_willThrow();
    }

    goto LABEL_30;
  }

  v84 = *(v0 + 144);
  static os_log_type_t.error.getter();
  v85 = *(v84 + 16);
  os_log(_:dso:log:_:_:)();
  type metadata accessor for RuntimeError();
  v86 = swift_allocObject();
  *(v86 + 16) = 0xD00000000000002FLL;
  *(v86 + 24) = 0x80000000000C3290;
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
  swift_allocError();
  *v87 = v86;
  swift_willThrow();
  (*(v74 + 8))(v73, v75);
LABEL_30:
  v119 = *(v0 + 256);
  v120 = *(v0 + 224);
  v121 = *(v0 + 232);
  v123 = *(v0 + 192);
  v122 = *(v0 + 200);
  v124 = *(v0 + 168);

  v125 = *(v0 + 8);

  return v125();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = type metadata accessor for TrafficIncident(0);
  v4[52] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[53] = swift_task_alloc();
  v7 = type metadata accessor for PommesContext.Source();
  v4[54] = v7;
  v8 = *(v7 - 8);
  v4[55] = v8;
  v9 = *(v8 + 64) + 15;
  v4[56] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v4[57] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v12 = type metadata accessor for NLContextUpdate();
  v4[59] = v12;
  v13 = *(v12 - 8);
  v4[60] = v13;
  v14 = *(v13 + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v15 = type metadata accessor for ImageSize();
  v4[63] = v15;
  v16 = *(v15 - 8);
  v4[64] = v16;
  v17 = *(v16 + 64) + 15;
  v4[65] = swift_task_alloc();
  v18 = type metadata accessor for Locale();
  v4[66] = v18;
  v19 = *(v18 - 8);
  v4[67] = v19;
  v20 = *(v19 + 64) + 15;
  v4[68] = swift_task_alloc();
  v21 = type metadata accessor for ParameterIdentifier();
  v4[69] = v21;
  v22 = *(v21 - 8);
  v4[70] = v22;
  v23 = *(v22 + 64) + 15;
  v4[71] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v4[72] = v24;
  v25 = *(v24 - 8);
  v4[73] = v25;
  v26 = *(v25 + 64) + 15;
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  v148 = v0;
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v142 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v7 = v0[50];
  v6 = v0[51];
  v8 = static os_log_type_t.info.getter();
  v9 = *(v6 + 16);
  v0[78] = v9;
  v10 = *(v4 + 16);
  v10(v1, v7, v5);
  v10(v2, v7, v5);
  v10(v3, v7, v5);
  v10(v142, v7, v5);
  v137 = v8;
  if (os_log_type_enabled(v9, v8))
  {
    v11 = v0[77];
    v135 = v0[75];
    v136 = v0[74];
    v12 = v0[73];
    v13 = v0[72];
    loga = v9;
    v143 = v0;
    v14 = v0[71];
    v132 = v0[76];
    v133 = v0[70];
    v134 = v0[69];
    v15 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *v15 = 136315906;
    v16 = v13;
    v17 = ParameterResolutionRecord.intent.getter();
    v18 = [v17 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = *(v12 + 8);
    v22(v11, v16);
    v131 = v22;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v146);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    ParameterResolutionRecord.parameter.getter();
    v24 = ParameterIdentifier.name.getter();
    v26 = v25;
    v27 = *(v133 + 8);
    v27(v14, v134);
    v22(v132, v16);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v146);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2080;
    v29 = v16;
    ParameterResolutionRecord.parameter.getter();
    v30 = ParameterIdentifier.multicardinalIndex.getter();
    LOBYTE(v26) = v31;
    v0 = v143;
    v27(v14, v134);
    v143[46] = v30;
    *(v143 + 376) = v26 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v131(v135, v29);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v146);

    *(v15 + 24) = v35;
    *(v15 + 32) = 2080;
    v36 = ParameterResolutionRecord.result.getter();
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v131(v136, v29);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v146);

    *(v15 + 34) = v41;
    v9 = loga;
    _os_log_impl(&dword_0, loga, v137, "inputs: %s, %s,\n%s, %s", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v42 = v0[77];
    v43 = v0[76];
    v44 = v0[75];
    v45 = v0[72];
    v46 = *(v0[73] + 8);
    v46(v0[74], v45);
    v46(v44, v45);
    v46(v43, v45);
    v46(v42, v45);
  }

  v47 = v0[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMR);
  v48 = PaginatedItemContainer.items.getter();
  if (v48 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v50 = v0[49];
    if (!i)
    {
      v146 = 0;
      v147 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      v72._countAndFlagsBits = 0xD000000000000045;
      v72._object = 0x80000000000C3450;
      String.append(_:)(v72);
      PaginatedItemContainer.items.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
      v73 = Array.description.getter();
      v75 = v74;

      v76._countAndFlagsBits = v73;
      v76._object = v75;
      String.append(_:)(v76);

      v78 = v146;
      v77 = v147;
      goto LABEL_28;
    }

    v51 = v0[49];
    v52 = PaginatedItemContainer.items.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v146 = v55;
      *v54 = 136315138;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSupportedTrafficIncidentType, INSupportedTrafficIncidentType_ptr);
      v56 = Array.description.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v146);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_0, v9, v53, "list of supportedIncidentTypes for disambiguation: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
    }

    v146 = &_swiftEmptyArrayStorage;
    if (v52 >> 62)
    {
      break;
    }

    v59 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
    if (!v59)
    {
      goto LABEL_35;
    }

LABEL_11:
    log = v9;
    v144 = v0;
    v60 = 0;
    v9 = (v52 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v60 >= *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v61 = *(v52 + 8 * v60 + 32);
      }

      v62 = v61;
      v0 = (v60 + 1);
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v63 = [v61 localizedDisplayString];
      if (v63)
      {
        v64 = v63;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = v65 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = 0;
        v67 = 0xE000000000000000;
      }

      v69 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v69 = v68;
      }

      if (v69)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v70 = v146[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v60;
      if (v0 == v59)
      {
        v0 = v144;
        v71 = v146;
        v9 = log;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v59 = _CocoaArrayWrapper.endIndex.getter();
  if (v59)
  {
    goto LABEL_11;
  }

LABEL_35:
  v71 = &_swiftEmptyArrayStorage;
LABEL_36:
  v0[79] = v71;
  v92 = v0[68];
  v93 = v0[67];
  v94 = v0[66];

  static Device.current.getter();
  v95 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(v71);
  v96 = *(v93 + 8);
  v0[80] = v96;
  v0[81] = (v93 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96(v92, v94);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v146 = v99;
    *v98 = 136315138;
    type metadata accessor for SiriKitDisambiguationItem();
    v100 = Array.description.getter();
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v146);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_0, v9, v97, "makePromptForDisambiguation incidentType disambiguationItems are: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
  }

  static Device.current.getter();
  v103 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v104 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (v104)
  {
    v105 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();

LABEL_45:
    v0[82] = v105;
    v114 = v105;
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v146 = v117;
      *v116 = 136315138;
      v118 = v114;
      v119 = [v118 description];
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, &v146);

      *(v116 + 4) = v123;
      _os_log_impl(&dword_0, v9, v115, "disambiguation snippet is: %s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v117);
    }

    else
    {
    }

    v124 = v0[68];
    v125 = v0[51];
    static Device.current.getter();
    v126 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v127 = *(v125 + 80);
    v128 = swift_task_alloc();
    v0[83] = v128;
    *v128 = v0;
    v128[1] = TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v129 = v0[68];
    v130 = v0[62];

    return TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)(v130, v129, v127, v71, 1);
  }

  static Device.current.getter();
  v106 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v107 = dispatch thunk of DeviceState.isPad.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  if (v107)
  {
    v108 = v0[65];
    v109 = v0[63];
    v110 = v0[64];
    (*(v110 + 104))(v108, enum case for ImageSize.default(_:), v109);
    v111 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPad(disambiguationItems:deviceIsLocked:imageSize:)();
LABEL_44:
    v105 = v111;

    (*(v110 + 8))(v108, v109);
    goto LABEL_45;
  }

  static Device.current.getter();
  v112 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v113 = dispatch thunk of DeviceState.isPhone.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  if (v113)
  {
    v108 = v0[65];
    v109 = v0[63];
    v110 = v0[64];
    (*(v110 + 104))(v108, enum case for ImageSize.default(_:), v109);
    v111 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    goto LABEL_44;
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)();
  v77 = 0x80000000000C0F80;
  v78 = 0xD000000000000012;
LABEL_28:
  type metadata accessor for RuntimeError();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v77;
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
  swift_allocError();
  *v80 = v79;
  swift_willThrow();
  v81 = v0[77];
  v82 = v0[76];
  v83 = v0[75];
  v84 = v0[74];
  v85 = v0[71];
  v86 = v0[68];
  v87 = v0[65];
  v89 = v0[61];
  v88 = v0[62];
  v138 = v0[58];
  logb = v0[56];
  v145 = v0[53];

  v90 = v0[1];

  return v90();
}

{
  v1 = *v0;
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);
  v4 = *(*v0 + 640);
  v5 = *(*v0 + 632);
  v6 = *(*v0 + 544);
  v7 = *(*v0 + 528);
  v9 = *v0;

  v4(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, 0);
}

{
  v43 = v0;
  if (*(v0[51] + 64) == 1)
  {
    v1 = v0[78];
    v2 = v0[62];
    v3 = v0[58];
    (*(v0[55] + 104))(v0[56], enum case for PommesContext.Source.pluginDefined(_:), v0[54]);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v4 = type metadata accessor for PommesContext();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    NLContextUpdate.pommesContext.setter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v5))
    {
      v6 = v0[78];
      v7 = v0[62];
      v9 = v0[57];
      v8 = v0[58];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42 = v11;
      *v10 = 136315138;
      swift_beginAccess();
      NLContextUpdate.pommesContext.getter();
      swift_endAccess();
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v42);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v6, v5, "updated nl context with pommesContext: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }
  }

  v15 = v0[78];
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[78];
    v19 = v0[61];
    v18 = v0[62];
    v20 = v0[59];
    v21 = v0[60];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = v23;
    *v22 = 136315138;
    swift_beginAccess();
    (*(v21 + 16))(v19, v18, v20);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v42);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v17, v16, "makePromptForDisambiguation nlContextUpdate is: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  v27 = v0[62];
  v29 = v0[52];
  v28 = v0[53];
  v30 = v0[51];
  v31 = enum case for BehaviorAfterSpeaking.listen(_:);
  v32 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v32 - 8) + 104))(v28, v31, v32);
  swift_storeEnumTagMultiPayload();
  v0[35] = v29;
  v0[36] = &protocol witness table for TrafficIncident;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
  outlined init with copy of TrafficIncident(v28, boxed_opaque_existential_0);
  swift_beginAccess();
  v34 = *(*v30 + 168);
  v41 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  v0[84] = v36;
  *v36 = v0;
  v36[1] = TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v37 = v0[62];
  v38 = v0[51];
  v39 = v0[49];

  return v41(v0 + 27, v0 + 32, v39, v37);
}

{
  v1 = *v0;
  v2 = *(*v0 + 672);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 256));

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, 0);
}

{
  v1 = *(v0 + 656);
  if (*(v0 + 240))
  {
    v2 = *(v0 + 616);
    v3 = *(v0 + 608);
    v4 = *(v0 + 600);
    v26 = *(v0 + 592);
    v27 = *(v0 + 568);
    v28 = *(v0 + 544);
    v29 = *(v0 + 520);
    v5 = *(v0 + 496);
    v6 = *(v0 + 472);
    v7 = *(v0 + 480);
    v30 = *(v0 + 488);
    v32 = *(v0 + 464);
    v34 = *(v0 + 448);
    v8 = *(v0 + 384);
    outlined destroy of TrafficIncident(*(v0 + 424));

    outlined init with take of CATType((v0 + 216), v8);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v10 = *(v0 + 496);
    v12 = *(v0 + 472);
    v11 = *(v0 + 480);
    v13 = *(v0 + 424);
    outlined destroy of Mirror.DisplayStyle?(v0 + 216, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    lazy protocol witness table accessor for type Errors and conformance Errors();
    swift_allocError();
    *v14 = 0xD00000000000002BLL;
    *(v14 + 8) = 0x80000000000C3420;
    *(v14 + 16) = 0;
    swift_willThrow();

    outlined destroy of TrafficIncident(v13);
    (*(v11 + 8))(v10, v12);
    v15 = *(v0 + 616);
    v16 = *(v0 + 608);
    v17 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 568);
    v20 = *(v0 + 544);
    v21 = *(v0 + 520);
    v23 = *(v0 + 488);
    v22 = *(v0 + 496);
    v24 = *(v0 + 464);
    v31 = *(v0 + 448);
    v33 = *(v0 + 424);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for ResponseType();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v11 = type metadata accessor for OutputGenerationManifest();
  v5[17] = v11;
  v12 = *(v11 - 8);
  v5[18] = v12;
  v13 = *(v12 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:), 0, 0);
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)()
{
  v1 = v0[11];
  v2 = v1[9];
  v0[20] = v2;
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v5 = (*(v4 + 80))(v3, v4);
  v0[21] = v5;
  v6 = *(*v2 + 152);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
  v9 = v0[8];

  return v11(v9, v5);
}

{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return _swift_task_switch(TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:), 0, 0);
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[11];
  v2 = v0[7];
  static os_log_type_t.default.getter();
  v3 = *(v1 + 16);
  os_log(_:dso:log:_:_:)();
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v4 = v0[19];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *v2;
  *(*v2 + 184) = a1;

  v6 = *(v3 + 168);
  if (v1)
  {

    v7 = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
  }

  else
  {

    v7 = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
  }

  return _swift_task_switch(v7, 0, 0);
}

char *TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:)()
{
  v73 = v0;
  v1 = (*(**(v0 + 160) + 136))(*(v0 + 64));
  if (v3)
  {
    outlined consume of Result<String, Error>(v1, v2, 1);
    v62 = 0xE000000000000000;
    v63 = 0;
  }

  else
  {
    v62 = v2;
    v63 = v1;
  }

  v4 = *(v0 + 88);
  v5 = static os_log_type_t.default.getter();
  log = *(v4 + 16);
  if (os_log_type_enabled(log, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v72 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v72);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, log, v5, "RF: dialogResult success %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v15 = *(v0 + 152);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  v18 = *(v0 + 104);
  v19 = *(v0 + 112);
  v20 = *(v0 + 96);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v65 = v0;
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.responseViewId.setter();
  v23 = type metadata accessor for NLContextUpdate();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v16, v21, v23);
  (*(v24 + 56))(v16, 0, 1, v23);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v18 + 104))(v19, enum case for ResponseType.disambiguation(_:), v20);
  OutputGenerationManifest.responseType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo30INSupportedTrafficIncidentTypeCGMR);
  v25 = PaginatedItemContainer.items.getter();
  v26 = v25 >> 62;
  if (v25 >> 62)
  {
    goto LABEL_30;
  }

  v27 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  v28 = v65;
  if (v27)
  {
    while (1)
    {
      v29 = v25;
      v72 = &_swiftEmptyArrayStorage;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        break;
      }

      v31 = v72;
      if (v26)
      {
        v66 = v29 & 0xFFFFFFFFFFFFFF8;
        v25 = _CocoaArrayWrapper.endIndex.getter();
        v32 = v29;
      }

      else
      {
        v32 = v29;
        v66 = v29 & 0xFFFFFFFFFFFFFF8;
        v25 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
      }

      v33 = 0;
      v34 = &MockShareETABaseFlow;
      v69 = v32 & 0xC000000000000001;
      v70 = v25 & ~(v25 >> 63);
      v67 = v27;
      v68 = v32;
      while (v70 != v33)
      {
        if (v69)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v66 + 16))
          {
            goto LABEL_29;
          }

          v35 = *(v32 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = [v35 v34[49].weak_ivar_lyt];
        if (v37)
        {
          v38 = v37;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;
        }

        else
        {
          v39 = 0;
          v41 = 0;
        }

        v42 = [v36 v34[49].weak_ivar_lyt];
        if (v42)
        {
          v43 = v42;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v26 = 0;
          v45 = 0xE000000000000000;
        }

        v46 = [v36 type];

        v72 = v31;
        v48 = v31[2];
        v47 = v31[3];
        if (v48 >= v47 >> 1)
        {
          v25 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v31 = v72;
        }

        v31[2] = v48 + 1;
        v49 = &v31[6 * v48];
        v49[4] = v33;
        v49[5] = v39;
        v49[6] = v41;
        v49[7] = v26;
        v49[8] = v45;
        v49[9] = v46;
        ++v33;
        v32 = v68;
        v34 = &MockShareETABaseFlow;
        if (v67 == v33)
        {

          v28 = v65;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v50 = v25;
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v50;
      v28 = v65;
      if (!v27)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    v31 = &_swiftEmptyArrayStorage;
LABEL_32:
    v51 = v28[23];
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v52 = type metadata accessor for ResponseFactory();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    v28[24] = ResponseFactory.init()();
    v28[5] = &type metadata for GeoDataModels;
    v28[6] = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
    v55 = swift_allocObject();
    v28[2] = v55;
    *(v55 + 16) = v63;
    *(v55 + 24) = v62;
    *(v55 + 32) = v31;
    *(v55 + 96) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v56 = swift_allocObject();
    v28[25] = v56;
    *(v56 + 16) = xmmword_B8FB0;
    *(v56 + 32) = v51;
    v57 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
    v71 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:);
    v58 = v51;
    v59 = swift_task_alloc();
    v28[26] = v59;
    *v59 = v28;
    v59[1] = TrafficIncidentNeedsDisambiguationStrategy.disambiguateIncidentsRF(dialog:paginatedItems:nlContext:);
    v60 = v28[19];
    v61 = v28[7];

    return (v71)(v61, v28 + 2, v56, v60);
  }

  return result;
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t TrafficIncidentNeedsDisambiguationStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v5, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(**v2 + 136);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShareETAPromptForContactStrategy;

  return v9(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v5, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance TrafficIncidentNeedsDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  *v15 = v7;
  v15[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t outlined init with copy of TrafficIncident(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncident(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TrafficIncident(uint64_t a1)
{
  v2 = type metadata accessor for TrafficIncident(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_90150()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_2(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>()
{
  result = lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>;
  if (!lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo30INSupportedTrafficIncidentTypeCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INSupportedTrafficIncidentType> and conformance BasicDisambiguationItemContainer<A>);
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.geoClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  __chkstk_darwin(v1);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
  (*(v10 + 8))(v13, v9);
  v19 = Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.components.getter();
  (*(v5 + 8))(v8, v4);
  if (*(v19 + 16))
  {
    (*(v15 + 16))(v18, v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);

    v20 = v25;
    Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
    (*(v15 + 8))(v18, v14);
    v21 = v28;
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.geoClientComponent.getter();
    (*(v26 + 8))(v20, v27);
    v22 = 0;
  }

  else
  {

    v22 = 1;
    v21 = v28;
  }

  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  return (*(*(v23 - 8) + 56))(v21, v22, 1, v23);
}

uint64_t ShareETABaseFlow.__allocating_init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v10 = OS_os_log.init(subsystem:category:)();
  *(v9 + 16) = v10;
  type metadata accessor for CATService();
  v11 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v11 + 32) = OS_os_log.init(subsystem:category:)();
  *(v11 + 16) = 0;
  *(v9 + 24) = v11;
  *(v9 + 88) = 0;
  *(v9 + 112) = 0;
  static os_log_type_t.info.getter();
  v13 = v10;
  os_log(_:dso:log:_:_:)();

  *(v9 + 32) = a1;
  *(v9 + 40) = 0;
  *(v9 + 41) = a2;
  outlined init with take of CATType(a3, v9 + 48);
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  return v9;
}

uint64_t one-time initialization function for kShareETAAuthenticationPolicy()
{
  v0 = type metadata accessor for UnlockDevicePolicy();
  __swift_allocate_value_buffer(v0, kShareETAAuthenticationPolicy);
  __swift_project_value_buffer(v0, kShareETAAuthenticationPolicy);
  return static UnlockDevicePolicy.default.getter();
}

uint64_t ShareETABaseFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of ShareETABaseFlow.State(v1, *(v0 + 40));
  return v1;
}

uint64_t ShareETABaseFlow.flowState.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  v6 = *(v2 + 40);
  *(v2 + 40) = a2;
  return outlined consume of ShareETABaseFlow.State(v5, v6);
}

uint64_t ShareETABaseFlow.directInvocation.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t ShareETABaseFlow.checkNavigation.getter()
{
  swift_beginAccess();
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t ShareETABaseFlow.checkNavigation.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ShareETABaseFlow.isPOMMES.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t ShareETABaseFlow.isUSO.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 113) = a1;
  return result;
}

uint64_t ShareETABaseFlow.init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v5 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v11 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v11 + 32) = OS_os_log.init(subsystem:category:)();
  *(v11 + 16) = 0;
  *(v5 + 24) = v11;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  static os_log_type_t.info.getter();
  v13 = *(v5 + 16);
  os_log(_:dso:log:_:_:)();

  *(v5 + 32) = a1;
  *(v5 + 40) = 0;
  *(v5 + 41) = a2;
  outlined init with take of CATType(a3, v5 + 48);
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return v5;
}

uint64_t outlined copy of ShareETABaseFlow.State(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t outlined consume of ShareETABaseFlow.State(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
  }

  return result;
}

uint64_t ShareETABaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  __chkstk_darwin(v2);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v66 = &v62 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v62 - v13;
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  v17 = type metadata accessor for Parse.DirectInvocation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  Input.parse.getter();
  v22 = *(v6 + 88);
  if (v22(v16, v5) == enum case for Parse.directInvocation(_:))
  {
    (*(v6 + 96))(v16, v5);
    (*(v18 + 32))(v21, v16, v17);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002CLL && 0x80000000000BFC00 == v23)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        (*(v18 + 8))(v21, v17);
        goto LABEL_9;
      }
    }

    v40 = v68;
    (*(*v68 + 208))(1);
    v41 = v40[2];
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "ShareETABaseFlow onInput returns true for directInvocation parse", v43, 2u);
    }

    (*(v18 + 8))(v21, v17);
    return 1;
  }

  (*(v6 + 8))(v16, v5);
LABEL_9:
  v26 = v67;
  Input.parse.getter();
  v27 = v22(v14, v5);
  v28 = enum case for Parse.NLv3IntentOnly(_:);
  v29 = *(v6 + 8);
  v29(v14, v5);
  if (v27 == v28)
  {
    v30 = v68[2];
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "ShareETABaseFlow onInput returns true for NLv3IntentOnly parse";
LABEL_15:
      _os_log_impl(&dword_0, v30, v31, v33, v32, 2u);

      return 1;
    }

    return 1;
  }

  v34 = v66;
  Input.parse.getter();
  v35 = v22(v34, v5);
  v36 = enum case for Parse.pommesResponse(_:);
  v29(v34, v5);
  if (v35 == v36)
  {
    v37 = v68;
    (*(*v68 + 256))(1);
    v30 = v37[2];
    v31 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v30, v31);
    result = 1;
    if (v38)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "ShareETABaseFlow onInput returns true for pommesResponse parse";
      goto LABEL_15;
    }
  }

  else
  {
    v44 = v65;
    Input.parse.getter();
    v45 = v22(v44, v5);
    v46 = enum case for Parse.uso(_:);
    v29(v44, v5);
    v47 = v68;
    v48 = v68[2];
    if (v45 == v46)
    {
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_0, v48, v49, "ShareETABaseFlow onInput returns true for USO parse", v50, 2u);
      }

      (*(*v47 + 280))(1);
      return 1;
    }

    else
    {
      v51 = v62;
      v52 = v63;
      v53 = v64;
      (*(v63 + 16))(v62, v26, v64);
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v69 = v56;
        *v55 = 136315138;
        v57 = v51;
        v58 = Input.description.getter();
        v60 = v59;
        (*(v52 + 8))(v57, v53);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v69);

        *(v55 + 4) = v61;
        _os_log_impl(&dword_0, v48, v54, "SiriGeo currently doesn't support parse type: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
      }

      else
      {
        (*(v52 + 8))(v51, v53);
      }

      return 0;
    }
  }

  return result;
}

uint64_t ShareETABaseFlow.executeState()(uint64_t a1)
{
  v2[198] = v1;
  v2[197] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMR) - 8) + 64) + 15;
  v2[199] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMR) - 8) + 64) + 15;
  v2[200] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v2[201] = v5;
  v6 = *(v5 - 8);
  v2[202] = v6;
  v2[203] = *(v6 + 64);
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[208] = swift_task_alloc();
  v8 = type metadata accessor for ActivityType();
  v2[209] = v8;
  v9 = *(v8 - 8);
  v2[210] = v9;
  v10 = *(v9 + 64) + 15;
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v11 = type metadata accessor for ShareETA(0);
  v2[214] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[215] = swift_task_alloc();
  v13 = type metadata accessor for RecommenderType();
  v2[216] = v13;
  v14 = *(v13 - 8);
  v2[217] = v14;
  v15 = *(v14 + 64) + 15;
  v2[218] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR) - 8) + 64) + 15;
  v2[219] = swift_task_alloc();
  v17 = type metadata accessor for SearchSuggestedContacts();
  v2[220] = v17;
  v18 = *(v17 - 8);
  v2[221] = v18;
  v19 = *(v18 + 64) + 15;
  v2[222] = swift_task_alloc();
  v20 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v2[223] = swift_task_alloc();
  v21 = *(*(type metadata accessor for ContactResolverDomain() - 8) + 64) + 15;
  v2[224] = swift_task_alloc();
  v22 = type metadata accessor for SiriKitContactResolver();
  v2[225] = v22;
  v23 = *(v22 - 8);
  v2[226] = v23;
  v24 = *(v23 + 64) + 15;
  v2[227] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR) - 8) + 64) + 15;
  v2[228] = swift_task_alloc();
  v26 = type metadata accessor for OccupantIntentNode();
  v2[229] = v26;
  v27 = *(v26 - 8);
  v2[230] = v27;
  v28 = *(v27 + 64) + 15;
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();

  return _swift_task_switch(ShareETABaseFlow.executeState(), 0, 0);
}

id ShareETABaseFlow.executeState()()
{
  v355 = boxed_opaque_existential_0;
  v1 = boxed_opaque_existential_0;
  v2 = boxed_opaque_existential_0[198];
  static os_log_type_t.info.getter();
  v3 = *(v2 + 16);
  v4 = os_log(_:dso:log:_:_:)();
  v5 = (*(*v2 + 152))(v4);
  v7 = v5;
  boxed_opaque_existential_0[233] = v5;
  if (v6 > 1u)
  {
    if (v6 == 2)
    {
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v354[0] = v20;
        *v19 = 136315138;
        boxed_opaque_existential_0[190] = v7;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
        v21 = String.init<A>(describing:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v354);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_0, v3, v18, "ShareETABaseFlow contactResolved %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
      }

      if (*(boxed_opaque_existential_0[198] + 41) == 1)
      {
        v24 = specialized ShareETABaseFlow.makeSkeletonINPerson(inpersons:)(v7);
        outlined consume of ShareETABaseFlow.State(v7, 2u);
        if (v24)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v25.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v25.super.isa = 0;
        }

        v147 = boxed_opaque_existential_0[200];
        v148 = boxed_opaque_existential_0[198];
        v149 = boxed_opaque_existential_0[197];
        v150 = [objc_allocWithZone(INStopShareETAIntent) initWithRecipients:v25.super.isa];

        v151 = *(*v148 + 248);
        v152 = v150;
        v153 = v151();
        v154 = type metadata accessor for StopShareETAFlowDelegate(0);
        v155 = *(v154 + 48);
        v156 = *(v154 + 52);
        swift_allocObject();
        specialized StopShareETAFlowDelegate.init(stopShareETAIntent:isPOMMES:)(v152, v153 & 1);

        v157 = type metadata accessor for App();
        v158 = *(v157 + 48);
        v159 = *(v157 + 52);
        swift_allocObject();
        App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGMR);
        (*(*(v160 - 8) + 56))(v147, 1, 1, v160);
        lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type StopShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for StopShareETAFlowDelegate);
        v161 = RCHFlowDelegate.makeRCHFlow(app:intent:producers:)();

        outlined destroy of Mirror.DisplayStyle?(v147, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo20INStopShareETAIntentCSo0fgH8ResponseCGSgMR);
        *(v1 + 1536) = v161;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMR);
        lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type RCHFlow<RCHDelegateToRCHFlowStrategyAdapter<StopShareETAFlowDelegate>> and conformance RCHFlow<A>, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin016StopShareETAFlowJ0CGGMR);
        static ExecuteResponse.complete<A>(next:childCompletion:)();

        goto LABEL_56;
      }

      if (!v7 || (outlined copy of ShareETABaseFlow.State(v7, 2u), specialized ShareETABaseFlow.missingContactInformation(persons:)(v7), v40 = v39, outlined consume of ShareETABaseFlow.State(v7, 2u), (v40 & 1) == 0))
      {
        v61 = specialized ShareETABaseFlow.makeSkeletonINPerson(inpersons:)(v7);
        outlined consume of ShareETABaseFlow.State(v7, 2u);
        if (v61)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v62.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v62.super.isa = 0;
        }

        v350 = [objc_allocWithZone(INShareETAIntent) initWithRecipients:v62.super.isa];

        v162 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v3, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v354[0] = v164;
          *v163 = 136315138;
          v165 = v350;
          v166 = [v165 description];
          v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v169 = v168;

          v170 = v167;
          v1 = boxed_opaque_existential_0;
          v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v169, v354);

          *(v163 + 4) = v171;
          _os_log_impl(&dword_0, v3, v162, "Converted Sirikit Intent %s", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v164);
        }

        v172 = static os_log_type_t.info.getter();
        v173 = os_log_type_enabled(v3, v172);
        if (v173)
        {
          v174 = *(v1 + 1584);

          v175 = swift_slowAlloc();
          *v175 = 67109120;
          *(v175 + 4) = (*(*v174 + 248))() & 1;

          _os_log_impl(&dword_0, v3, v172, "is POMMES ShareETA .complete? %{BOOL}d", v175, 8u);
        }

        v176 = *(v1 + 1592);
        v177 = *(v1 + 1584);
        v343 = *(v1 + 1576);
        v178 = (*(*v177 + 248))(v173);
        v179 = (*(*v177 + 272))();
        static Device.current.getter();
        v180 = type metadata accessor for ShareETAFlowDelegate(0);
        v181 = *(v180 + 48);
        v182 = *(v180 + 52);
        v183 = v1;
        v184 = swift_allocObject();
        v185 = direct field offset for ShareETAFlowDelegate.logObject;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
        *(v184 + v185) = OS_os_log.init(subsystem:category:)();
        v186 = direct field offset for ShareETAFlowDelegate.isPOMMES;
        *(v184 + direct field offset for ShareETAFlowDelegate.isPOMMES) = 0;
        v187 = direct field offset for ShareETAFlowDelegate.isUSO;
        *(v184 + direct field offset for ShareETAFlowDelegate.isUSO) = 0;
        *(v184 + direct field offset for ShareETAFlowDelegate.disambiguationState) = 0;
        outlined init with copy of DeviceState(v183 + 192, v184 + direct field offset for ShareETAFlowDelegate.currentDeviceState);
        swift_beginAccess();
        *(v184 + v186) = v178 & 1;
        swift_beginAccess();
        *(v184 + v187) = v179 & 1;
        v1 = v183;
        BaseRCHFlowDelegate.init()();
        __swift_destroy_boxed_opaque_existential_0Tm((v183 + 192));
        v188 = type metadata accessor for App();
        v189 = *(v188 + 48);
        v190 = *(v188 + 52);
        swift_allocObject();
        App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGMR);
        (*(*(v191 - 8) + 56))(v176, 1, 1, v191);
        lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for ShareETAFlowDelegate);
        v192 = RCHFlowDelegate.makeRCHFlow(app:intent:producers:)();

        outlined destroy of Mirror.DisplayStyle?(v176, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo16INShareETAIntentCSo0fG8ResponseCGSgMR);
        *(v183 + 1560) = v192;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMR);
        lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type RCHFlow<RCHDelegateToRCHFlowStrategyAdapter<ShareETAFlowDelegate>> and conformance RCHFlow<A>, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMd, &_s11SiriKitFlow7RCHFlowCyAA013RCHDelegateToD15StrategyAdapterCy03GeoC14DelegatePlugin012ShareETAFlowJ0CGGMR);
        static ExecuteResponse.complete<A>(next:childCompletion:)();

        goto LABEL_56;
      }

      v41 = boxed_opaque_existential_0[211];
      v42 = boxed_opaque_existential_0[210];
      v43 = *(v1 + 1672);
      static SiriKitEventSender.current.getter();
      v339 = *(v1 + 344);
      v334 = __swift_project_boxed_opaque_existential_1((v1 + 312), *(v1 + 336));
      (*(v42 + 104))(v41, enum case for ActivityType.failed(_:), v43);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
      result = [swift_getObjCClassFromMetadata() typeName];
      if (result)
      {
        v44 = result;
        v320 = *(v1 + 1688);
        v45 = *(v1 + 1664);
        v324 = *(v1 + 1584);
        v329 = *(v1 + 1712);
        type metadata accessor for SiriKitEvent();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = enum case for SiriKitReliabilityCodes.contactNotFoundFromConverter(_:);
        v47 = type metadata accessor for SiriKitReliabilityCodes();
        v48 = *(v47 - 8);
        (*(v48 + 104))(v45, v46, v47);
        (*(v48 + 56))(v45, 0, 1, v47);
        SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        __swift_destroy_boxed_opaque_existential_0Tm((v1 + 312));
        v49 = *(v324 + 24);
        *(v1 + 376) = v329;
        *(v1 + 384) = &protocol witness table for ShareETA;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 352));
        v340 = v7 & 0xC000000000000001;
        v347 = v49;
        if ((v7 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_81;
          }

          v50 = *(v7 + 32);
        }

        v51 = *(v1 + 1784);
        type metadata accessor for DialogPerson();
        static Device.current.getter();
        v52 = *(v1 + 424);
        __swift_project_boxed_opaque_existential_1((v1 + 392), *(v1 + 416));
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_0Tm((v1 + 392));
        v53 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();
        if (v53)
        {
          v54 = v53;
          outlined consume of ShareETABaseFlow.State(v7, 2u);
        }

        else
        {
          if (v340)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v282 = *(v7 + 32);
          }

          v283 = *(v1 + 1784);
          outlined consume of ShareETABaseFlow.State(v7, 2u);
          static Device.current.getter();
          v284 = *(v1 + 464);
          __swift_project_boxed_opaque_existential_1((v1 + 432), *(v1 + 456));
          dispatch thunk of DeviceState.siriLocale.getter();
          v54 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
          __swift_destroy_boxed_opaque_existential_0Tm((v1 + 432));
        }

        v285 = *(v1 + 1712);
        v286 = *(v1 + 1584);
        *boxed_opaque_existential_0 = v54;
        v287 = swift_storeEnumTagMultiPayload();
        v288 = *(*v286 + 176);
        v289 = *v286 + 176;
        *(v1 + 1984) = v288;
        *(v1 + 1992) = v289 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
        v288(v287);
        v290 = *(v1 + 496);
        v291 = *(v1 + 504);
        __swift_project_boxed_opaque_existential_1((v1 + 472), v290);
        v292 = (*(v291 + 80))(v290, v291);
        *(v1 + 2000) = v292;
        __swift_destroy_boxed_opaque_existential_0Tm((v1 + 472));
        v293 = *(*v347 + 112);
        v346 = v293 + *v293;
        v294 = v293[1];
        v295 = swift_task_alloc();
        *(v1 + 2008) = v295;
        *v295 = v1;
        v295[1] = ShareETABaseFlow.executeState();
        v253 = *(v1 + 1632);
        v254 = v1 + 352;
        v255 = v292;
        v281 = v346;
        goto LABEL_76;
      }

      __break(1u);
      goto LABEL_83;
    }

    if (v6 == 3)
    {
      boxed_opaque_existential_0[189] = v5;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v55 = boxed_opaque_existential_0[197];
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        v56 = type metadata accessor for SimpleOutputFlowAsync();
        v57 = *(v56 + 48);
        v58 = *(v56 + 52);
        swift_allocObject();
        boxed_opaque_existential_0[187] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
        goto LABEL_33;
      }

      v8 = boxed_opaque_existential_0[180];
      boxed_opaque_existential_0[235] = v8;
      v9 = boxed_opaque_existential_0[181];
      boxed_opaque_existential_0[236] = v9;
      if (v9 <= 0xA)
      {
        if (((1 << v9) & 0x630) != 0)
        {
          goto LABEL_67;
        }

        if (((1 << v9) & 0x180) != 0)
        {
          v10 = boxed_opaque_existential_0[197];
          static OutputPublisherFactory.makeOutputPublisherAsync()();
          v11 = type metadata accessor for SimpleOutputFlowAsync();
          v12 = *(v11 + 48);
          v13 = *(v11 + 52);
          swift_allocObject();
          boxed_opaque_existential_0[185] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
LABEL_33:
          static ExecuteResponse.complete<A>(next:)();
          outlined consume of ShareETABaseFlow.State(v7, 3u);
LABEL_56:

          goto LABEL_57;
        }

        if (v9 == 6)
        {
          v205 = boxed_opaque_existential_0[215];
          v206 = boxed_opaque_existential_0[214];
          v207 = boxed_opaque_existential_0[198];
          LOBYTE(v340) = (*(*v207 + 248))();
          v334 = (*(*v207 + 200))();
          v347 = *(*v207 + 176);
          v347();
          v208 = enum case for BehaviorAfterSpeaking.listen(_:);
          v209 = type metadata accessor for BehaviorAfterSpeaking();
          (*(*(v209 - 8) + 104))(v205, v208, v209);
          swift_storeEnumTagMultiPayload();
          v210 = type metadata accessor for ShareETAPromptForContactStrategy();
          v211 = *(v210 + 48);
          v212 = *(v210 + 52);
          v2 = swift_allocObject();
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
          *(v2 + 16) = OS_os_log.init(subsystem:category:)();
          type metadata accessor for CATService();
          v213 = swift_allocObject();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          *(v213 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          *(v213 + 32) = OS_os_log.init(subsystem:category:)();
          *(v213 + 16) = 0;
          *(v2 + 24) = v213;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v1 = swift_allocObject();
          *(v1 + 16) = xmmword_B7D60;
          v215 = type metadata accessor for AddressOntologyNode.OccupantNode();
          v216 = *(v215 + 48);
          v217 = *(v215 + 52);
          swift_allocObject();
          AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
          v218 = specialized OntologyNode.javaClassName.getter();
          v220 = v219;

          *(v1 + 32) = v218;
          *(v1 + 40) = v220;
          static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
          v221 = specialized OntologyNode.javaClassName.getter();
          v223 = v222;

          *(v1 + 48) = v221;
          *(v1 + 56) = v223;
          if (one-time initialization token for confirmationNode == -1)
          {
LABEL_62:
            v224 = boxed_opaque_existential_0[215];
            v225 = boxed_opaque_existential_0[198];
            v226 = boxed_opaque_existential_0[197];
            *(v1 + 64) = specialized OntologyNode.javaClassName.getter();
            *(v1 + 72) = v227;
            *(v2 + 32) = v1;
            *(v2 + 40) = 0;
            *(v2 + 48) = 0;
            *(v2 + 96) = 0;
            swift_beginAccess();
            *(v2 + 96) = v340 & 1;
            swift_beginAccess();
            *(v2 + 48) = v334 & 1;
            outlined init with take of CATType((boxed_opaque_existential_0 + 119), v2 + 56);
            outlined init with take of ShareETA(v224, v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);

            (v347)(v228);
            v229 = boxed_opaque_existential_0[137];
            v230 = boxed_opaque_existential_0[138];
            __swift_project_boxed_opaque_existential_1(boxed_opaque_existential_0 + 134, v229);
            (*(v230 + 104))(v354, v229, v230);
            __swift_destroy_boxed_opaque_existential_0Tm(boxed_opaque_existential_0 + 134);
            v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);
            v232 = *(v231 + 48);
            v233 = *(v231 + 52);
            swift_allocObject();
            lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETAPromptForContactStrategy and conformance ShareETAPromptForContactStrategy, 255, type metadata accessor for ShareETAPromptForContactStrategy);
            boxed_opaque_existential_0[183] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
            lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<LocationSearchIntent> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);

            static ExecuteResponse.ongoing<A>(next:childCompletion:)();

            outlined consume of ShareETABaseFlow.State(v7, 3u);
LABEL_41:

            v1 = boxed_opaque_existential_0;
            goto LABEL_57;
          }

LABEL_81:
          swift_once();
          goto LABEL_62;
        }
      }

      if (v9 >= 2)
      {
        if (v9 - 2 >= 2)
        {
          v258 = boxed_opaque_existential_0[213];
          v259 = boxed_opaque_existential_0[210];
          v260 = *(v1 + 1672);
          v261 = type metadata accessor for DialogPerson.Builder();
          v262 = *(v261 + 48);
          v263 = *(v261 + 52);
          swift_allocObject();

          DialogPerson.Builder.init()();
          dispatch thunk of DialogPerson.Builder.withRelated(_:)();

          dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();

          dispatch thunk of DialogPerson.Builder.withGivenName(print:speak:)();

          v353 = dispatch thunk of DialogPerson.Builder.build()();
          *(v1 + 1896) = v353;

          static SiriKitEventSender.current.getter();
          v338 = *(v1 + 1064);
          __swift_project_boxed_opaque_existential_1((v1 + 1032), *(v1 + 1056));
          (*(v259 + 104))(v258, enum case for ActivityType.failed(_:), v260);
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
          result = [swift_getObjCClassFromMetadata() typeName];
          if (result)
          {
            v264 = result;
            v323 = *(v1 + 1704);
            v328 = *(v1 + 1712);
            v265 = *(v1 + 1664);
            v266 = *(v1 + 1584);
            type metadata accessor for SiriKitEvent();
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v267 = enum case for SiriKitReliabilityCodes.relationshipNotFoundFromSkeletonContact(_:);
            v268 = type metadata accessor for SiriKitReliabilityCodes();
            v269 = *(v268 - 8);
            (*(v269 + 104))(v265, v267, v268);
            (*(v269 + 56))(v265, 0, 1, v268);
            v270 = swift_allocObject();
            *(v270 + 16) = v8;
            *(v270 + 24) = v9;
            SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
            dispatch thunk of SiriKitEventSending.send(_:)();

            __swift_destroy_boxed_opaque_existential_0Tm((v1 + 1032));
            v271 = v266[3];
            *(v1 + 1016) = v328;
            *(v1 + 1024) = &protocol witness table for ShareETA;
            *__swift_allocate_boxed_opaque_existential_0((v1 + 992)) = v353;
            swift_storeEnumTagMultiPayload();
            v272 = *(*v266 + 176);
            v273 = *v266 + 176;
            *(v1 + 1904) = v272;
            *(v1 + 1912) = v273 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;

            v272(v274);
            v275 = *(v1 + 936);
            v276 = *(v1 + 944);
            __swift_project_boxed_opaque_existential_1((v1 + 912), v275);
            v277 = (*(v276 + 80))(v275, v276);
            *(v1 + 1920) = v277;
            __swift_destroy_boxed_opaque_existential_0Tm((v1 + 912));
            v278 = *(*v271 + 112);
            v352 = (v278 + *v278);
            v279 = v278[1];
            v280 = swift_task_alloc();
            *(v1 + 1928) = v280;
            *v280 = v1;
            v280[1] = ShareETABaseFlow.executeState();
            v253 = *(v1 + 1656);
            v254 = v1 + 992;
            v255 = v277;
            goto LABEL_72;
          }

LABEL_84:
          __break(1u);
          return result;
        }

        v234 = boxed_opaque_existential_0[212];
        v235 = boxed_opaque_existential_0[210];
        v236 = *(v1 + 1672);
        static SiriKitEventSender.current.getter();
        v345 = *(v1 + 1184);
        __swift_project_boxed_opaque_existential_1((v1 + 1152), *(v1 + 1176));
        (*(v235 + 104))(v234, enum case for ActivityType.failed(_:), v236);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
        result = [swift_getObjCClassFromMetadata() typeName];
        if (result)
        {
          v237 = result;
          v327 = *(v1 + 1696);
          v333 = *(v1 + 1712);
          v238 = *(v1 + 1664);
          v239 = *(v1 + 1584);
          outlined consume of ContactResolutionFlowError(v8, v9);
          type metadata accessor for SiriKitEvent();
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v240 = enum case for SiriKitReliabilityCodes.contactNotFoundFromConverter(_:);
          v241 = type metadata accessor for SiriKitReliabilityCodes();
          v242 = *(v241 - 8);
          (*(v242 + 104))(v238, v240, v241);
          (*(v242 + 56))(v238, 0, 1, v241);
          SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
          dispatch thunk of SiriKitEventSending.send(_:)();

          __swift_destroy_boxed_opaque_existential_0Tm((v1 + 1152));
          v243 = v239[3];
          *(v1 + 1216) = v333;
          *(v1 + 1224) = &protocol witness table for ShareETA;
          __swift_allocate_boxed_opaque_existential_0((v1 + 1192));
          v244 = swift_storeEnumTagMultiPayload();
          v245 = *(*v239 + 176);
          v246 = *v239 + 176;
          *(v1 + 1944) = v245;
          *(v1 + 1952) = v246 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
          v245(v244);
          v247 = *(v1 + 256);
          v248 = *(v1 + 264);
          __swift_project_boxed_opaque_existential_1((v1 + 232), v247);
          v249 = (*(v248 + 80))(v247, v248);
          *(v1 + 1960) = v249;
          __swift_destroy_boxed_opaque_existential_0Tm((v1 + 232));
          v250 = *(*v243 + 112);
          v352 = (v250 + *v250);
          v251 = v250[1];
          v252 = swift_task_alloc();
          *(v1 + 1968) = v252;
          *v252 = v1;
          v252[1] = ShareETABaseFlow.executeState();
          v253 = *(v1 + 1640);
          v254 = v1 + 1192;
          v255 = v249;
LABEL_72:
          v281 = v352;
LABEL_76:

          return v281(v253, v254, v255);
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_67:
      v256 = boxed_opaque_existential_0[197];
      type metadata accessor for UnsupportedRequestFlow();
      v257 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v257 + 16) = OS_os_log.init(subsystem:category:)();
      boxed_opaque_existential_0[186] = v257;
      lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
      static ExecuteResponse.complete<A>(next:)();
      outlined consume of ContactResolutionFlowError(v8, v9);
      outlined consume of ShareETABaseFlow.State(v7, 3u);
      goto LABEL_56;
    }

    v26 = boxed_opaque_existential_0[197];
    static ExecuteResponse.complete()();
LABEL_57:
    v193 = *(v1 + 1856);
    v194 = *(v1 + 1848);
    v195 = v1;
    v196 = *(v1 + 1824);
    v197 = v195[227];
    v198 = v195[224];
    v199 = v195[223];
    v200 = v195[222];
    v201 = v195[219];
    v202 = v195[218];
    v203 = v195[215];
    v313 = v195[213];
    v314 = v195[212];
    v317 = v195[211];
    v319 = v195[208];
    v322 = v195[207];
    v326 = v195[206];
    v332 = v195[205];
    v337 = v195[204];
    v344 = v195[200];
    v351 = v195[199];

    v204 = v195[1];

    return v204();
  }

  if (v6)
  {
    static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v3, v27);
    if (v28)
    {
      v29 = boxed_opaque_existential_0[198];

      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = (*(*v29 + 248))() & 1;

      _os_log_impl(&dword_0, v3, v27, "Is POMMES ShareETA request? : %{BOOL}d", v30, 8u);
    }

    v31 = boxed_opaque_existential_0[230];
    v32 = *(v1 + 1832);
    v33 = *(v1 + 1824);
    (*(*v7 + 208))(v28);
    if ((*(v31 + 48))(v33, 1, v32) != 1)
    {
      v335 = v1 + 632;
      v59 = *(v1 + 1584);
      v60 = (*(*(v1 + 1840) + 32))(*(v1 + 1856), *(v1 + 1824), *(v1 + 1832));
      if (*(v59 + 41) == 1)
      {
        v341 = 0;
        v348 = 0;
        v298 = INStopShareETAIntent_ptr;
      }

      else
      {
        v97 = *(v1 + 1856);
        v98 = *(v1 + 1584);
        v342 = *(*v98 + 248);
        v311 = (v342)(v60);
        v315 = *(*v98 + 272);
        v309 = v315();
        v307 = OccupantIntentNode.asINPerson.getter();
        static Device.current.getter();
        v99 = type metadata accessor for GeoRCHFlowFactoryImpl();
        v100 = swift_allocObject();
        *(v1 + 80) = v99;
        *(v1 + 88) = &protocol witness table for GeoRCHFlowFactoryImpl;
        *(v1 + 56) = v100;
        *(v1 + 96) = static DialogHelper.globals.getter();
        static AceService.currentAsync.getter();
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for CATService();
        v101 = swift_allocObject();
        v102 = swift_getObjCClassFromMetadata();
        v103 = objc_opt_self();
        *(v101 + 24) = [v103 bundleForClass:v102];
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
        v330 = v1;
        *(v101 + 32) = OS_os_log.init(subsystem:category:)();
        *(v101 + 16) = 0;
        *(v1 + 184) = v101;
        v104 = swift_allocObject();
        *(v104 + 24) = [v103 bundleForClass:v102];
        *(v104 + 32) = OS_os_log.init(subsystem:category:)();
        *(v104 + 16) = 1;
        type metadata accessor for ShareETAContactDisambiguationStrategy();
        v105 = swift_allocObject();
        *(v1 + 696) = &type metadata for FlowHelperImpl;
        *(v1 + 704) = &protocol witness table for FlowHelperImpl;
        v106 = swift_allocObject();
        *(v1 + 672) = v106;
        outlined init with copy of FlowHelperImpl(v1 + 16, v106 + 16);
        *(v105 + 16) = OS_os_log.init(subsystem:category:)();
        *(v105 + 81) = 0;
        *(v105 + 88) = &_swiftEmptyArrayStorage;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_B7D70;
        if (one-time initialization token for referenceNode != -1)
        {
          swift_once();
        }

        v348 = v105;
        *(v107 + 32) = specialized OntologyNode.javaClassName.getter();
        *(v107 + 40) = v108;
        if (one-time initialization token for confirmationNode != -1)
        {
          swift_once();
        }

        v109 = *(v1 + 1584);
        *(v107 + 48) = specialized OntologyNode.javaClassName.getter();
        *(v107 + 56) = v110;
        v111 = type metadata accessor for AddressOntologyNode.PersonPlaceNode();
        v112 = *(v111 + 48);
        v113 = *(v111 + 52);
        swift_allocObject();
        AddressOntologyNode.PersonPlaceNode.init(name:multicardinal:)();
        v114 = specialized OntologyNode.javaClassName.getter();
        v116 = v115;

        *(v107 + 64) = v114;
        *(v107 + 72) = v116;
        v117 = type metadata accessor for AddressOntologyNode.OccupantNode();
        v118 = *(v117 + 48);
        v119 = *(v117 + 52);
        swift_allocObject();
        AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
        v120 = specialized OntologyNode.javaClassName.getter();
        v122 = v121;

        *(v107 + 80) = v120;
        *(v107 + 88) = v122;
        v1 = v330;
        static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
        v123 = specialized OntologyNode.javaClassName.getter();
        v125 = v124;

        *(v107 + 96) = v123;
        *(v107 + 104) = v125;
        type metadata accessor for PersonOntologyNode();
        static PersonOntologyNode.personFullNameNode.getter();
        v126 = specialized OntologyNode.javaClassName.getter();
        v128 = v127;

        *(v107 + 112) = v126;
        *(v107 + 120) = v128;
        *(v348 + 96) = v107;
        *(v348 + 80) = v311 & 1;
        swift_beginAccess();
        *(v348 + 81) = v309 & 1;
        *(v348 + 72) = v307;
        outlined init with take of CATType((v330 + 672), v348 + 32);
        *(v348 + 24) = v104;
        v129 = outlined destroy of FlowHelperImpl(v330 + 16);
        v130 = (v342)(v129);
        v131 = v315();
        type metadata accessor for ShareETAContactConfirmationStrategy();
        swift_allocObject();
        v341 = ShareETAContactConfirmationStrategy.init(isPOMMES:isUSO:)(v130 & 1, v131 & 1);
        v298 = INShareETAIntent_ptr;
      }

      v331 = *(v1 + 1856);
      v316 = *(v1 + 1848);
      v132 = *(v1 + 1840);
      v297 = *(v1 + 1832);
      v318 = *(v1 + 1816);
      v325 = *(v1 + 1808);
      v299 = *(v1 + 1800);
      v300 = *(v1 + 1792);
      v301 = *(v1 + 1784);
      v302 = *(v1 + 1768);
      v303 = *(v1 + 1776);
      v304 = *(v1 + 1760);
      v305 = *(v1 + 1752);
      v306 = *(v1 + 1736);
      v308 = *(v1 + 1744);
      v310 = *(v1 + 1728);
      v321 = *(v1 + 1584);
      v312 = *(v1 + 1576);
      *(v335 + 32) = 0;
      *v335 = 0u;
      *(v335 + 16) = 0u;
      type metadata accessor for ContactService();
      swift_allocObject();
      v133 = ContactService.init()();
      v134 = type metadata accessor for ContactHandleResolver();
      v135 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v135 + 16) = OS_os_log.init(subsystem:category:)();
      *(v135 + 24) = v133;
      outlined destroy of Mirror.DisplayStyle?(v335, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
      *(v1 + 632) = v135;
      *(v1 + 656) = v134;
      *(v1 + 664) = &protocol witness table for ContactHandleResolver;
      v136 = [objc_allocWithZone(*v298) init];
      v137 = [v136 typeName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v296 = *(v132 + 16);
      v296(v316, v331, v297);
      v138 = *(*v321 + 176);

      v138(v139);
      outlined init with copy of HandleFilterProtocolAsync?(v335, v1 + 272);
      SiriKitContactResolver.init()();
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMd, &_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMR);
      v141 = *(v140 + 48);
      v142 = *(v140 + 52);
      v143 = swift_allocObject();
      *(v143 + 16) = OS_os_log.init(subsystem:category:)();
      *(v143 + 24) = 0u;
      *(v143 + 40) = 1;
      (*(v325 + 16))(v143 + *(*v143 + 176), v318, v299);
      *(v143 + *(*v143 + 136)) = v348;
      *(v143 + *(*v143 + 144)) = v341;
      v296(v143 + *(*v143 + 128), v316, v297);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin017ContactResolutionB0C5StateOyAA37ShareETAContactDisambiguationStrategyCAA0hi12ConfirmationK0C_GMd, &_s21GeoFlowDelegatePlugin017ContactResolutionB0C5StateOyAA37ShareETAContactDisambiguationStrategyCAA0hi12ConfirmationK0C_GMR);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of DeviceState(v1 + 512, v143 + *(*v143 + 152));
      outlined init with copy of HandleFilterProtocolAsync?(v1 + 272, v143 + *(*v143 + 160));
      static ContactResolverDomain.all.getter();
      static Locale.current.getter();
      (*(v302 + 104))(v303, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v304);
      static ContactHandleTypePreference.preferPhone.getter();
      v144 = type metadata accessor for ContactHandleTypePreference();
      (*(*(v144 - 8) + 56))(v305, 0, 1, v144);
      (*(v306 + 104))(v308, enum case for RecommenderType.mlRecommender(_:), v310);
      v145 = *(*v143 + 168);
      ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)();
      (*(v325 + 8))(v318, v299);
      outlined destroy of Mirror.DisplayStyle?(v1 + 272, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 512));
      v146 = *(v132 + 8);
      v146(v316, v297);
      *(v1 + 1568) = v143;
      lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type ContactResolutionFlow<ShareETAContactDisambiguationStrategy, ShareETAContactConfirmationStrategy> and conformance ContactResolutionFlow<A, B>, &_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMd, &_s21GeoFlowDelegatePlugin017ContactResolutionB0CyAA37ShareETAContactDisambiguationStrategyCAA0gh12ConfirmationJ0CGMR);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      outlined consume of ShareETABaseFlow.State(v7, 1u);

      outlined destroy of Mirror.DisplayStyle?(v335, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
      v146(v331, v297);
      goto LABEL_56;
    }

    v34 = *(v1 + 1584);
    v35 = outlined destroy of Mirror.DisplayStyle?(*(v1 + 1824), &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    v36 = *v34;
    if (*(v34 + 41) != 1)
    {
      v63 = *(v1 + 1720);
      v64 = *(v1 + 1712);
      v65 = *(v1 + 1584);
      v336 = (*(v36 + 248))(v35);
      v66 = (*(*v65 + 200))();
      v349 = *(*v65 + 176);
      v349();
      outlined init with copy of DeviceState(v1 + 792, v1 + 752);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMd, &_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMR) + 48);
      v68 = v66 & 1;
      *v63 = v66 & 1;
      v69 = enum case for BehaviorAfterSpeaking.listen(_:);
      v70 = type metadata accessor for BehaviorAfterSpeaking();
      (*(*(v70 - 8) + 104))(&v63[v67], v69, v70);
      swift_storeEnumTagMultiPayload();
      v71 = type metadata accessor for ShareETAPromptForContactStrategy();
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      v74 = swift_allocObject();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      *(v74 + 16) = OS_os_log.init(subsystem:category:)();
      type metadata accessor for CATService();
      v75 = swift_allocObject();
      v76 = swift_getObjCClassFromMetadata();
      *(v75 + 24) = [objc_opt_self() bundleForClass:v76];
      *(v75 + 32) = OS_os_log.init(subsystem:category:)();
      *(v75 + 16) = 0;
      *(v74 + 24) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_B7D60;
      v78 = type metadata accessor for AddressOntologyNode.OccupantNode();
      v79 = *(v78 + 48);
      v80 = *(v78 + 52);
      swift_allocObject();
      AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
      v81 = specialized OntologyNode.javaClassName.getter();
      boxed_opaque_existential_0 = v1;
      v83 = v82;

      *(v77 + 32) = v81;
      *(v77 + 40) = v83;
      static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
      v84 = specialized OntologyNode.javaClassName.getter();
      v86 = v85;

      *(v77 + 48) = v84;
      *(v77 + 56) = v86;
      if (one-time initialization token for confirmationNode != -1)
      {
        swift_once();
      }

      v87 = boxed_opaque_existential_0[215];
      v88 = boxed_opaque_existential_0[198];
      v89 = boxed_opaque_existential_0[197];
      *(v77 + 64) = specialized OntologyNode.javaClassName.getter();
      *(v77 + 72) = v90;
      __swift_destroy_boxed_opaque_existential_0Tm(boxed_opaque_existential_0 + 99);
      *(v74 + 32) = v77;
      *(v74 + 40) = 0;
      *(v74 + 48) = 0;
      *(v74 + 96) = 0;
      swift_beginAccess();
      *(v74 + 96) = v336 & 1;
      swift_beginAccess();
      *(v74 + 48) = v68;
      outlined init with take of CATType(boxed_opaque_existential_0 + 47, v74 + 56);
      outlined init with take of ShareETA(v87, v74 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);

      (v349)(v91);
      v92 = boxed_opaque_existential_0[92];
      v93 = boxed_opaque_existential_0[93];
      __swift_project_boxed_opaque_existential_1(boxed_opaque_existential_0 + 89, v92);
      (*(v93 + 104))(v354, v92, v93);
      __swift_destroy_boxed_opaque_existential_0Tm(boxed_opaque_existential_0 + 89);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);
      v95 = *(v94 + 48);
      v96 = *(v94 + 52);
      swift_allocObject();
      lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETAPromptForContactStrategy and conformance ShareETAPromptForContactStrategy, 255, type metadata accessor for ShareETAPromptForContactStrategy);
      boxed_opaque_existential_0[191] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
      lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<LocationSearchIntent> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of ShareETABaseFlow.State(v7, 1u);

      goto LABEL_41;
    }

    v37 = *(v1 + 1584);
    v38 = *(v1 + 1576);
    (*(v36 + 160))(0, 2);
    static ExecuteResponse.ongoing(requireInput:)();
    outlined consume of ShareETABaseFlow.State(v7, 1u);
    goto LABEL_57;
  }

  v14 = swift_task_alloc();
  boxed_opaque_existential_0[234] = v14;
  *v14 = boxed_opaque_existential_0;
  v14[1] = ShareETABaseFlow.executeState();
  v15 = boxed_opaque_existential_0[198];
  v16 = boxed_opaque_existential_0[197];

  return ShareETABaseFlow.preChecks(intent:)(v16, v7);
}

uint64_t ShareETABaseFlow.executeState()()
{
  v1 = *(*v0 + 1872);
  v3 = *v0;

  return _swift_task_switch(ShareETABaseFlow.executeState(), 0, 0);
}

{
  outlined consume of ShareETABaseFlow.State(v0[233], 0);
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[228];
  v4 = v0[227];
  v5 = v0[224];
  v6 = v0[223];
  v7 = v0[222];
  v8 = v0[219];
  v9 = v0[218];
  v10 = v0[215];
  v13 = v0[213];
  v14 = v0[212];
  v15 = v0[211];
  v16 = v0[208];
  v17 = v0[207];
  v18 = v0[206];
  v19 = v0[205];
  v20 = v0[204];
  v21 = v0[200];
  v22 = v0[199];

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1928);
  v4 = *(*v1 + 1920);
  v7 = *v1;
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v5 = ShareETABaseFlow.executeState();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 992));
    v5 = ShareETABaseFlow.executeState();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 1912);
  v37 = *(v0 + 1888);
  v39 = *(v0 + 1896);
  v35 = *(v0 + 1880);
  v41 = *(v0 + 1864);
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1616);
  v6 = *(v0 + 1608);
  v7 = *(v0 + 1584);
  v8 = *(v0 + 1576);
  (*(v0 + 1904))();
  v9 = *(v0 + 896);
  v10 = *(v0 + 904);
  __swift_project_boxed_opaque_existential_1((v0 + 872), v9);
  (*(v10 + 104))(v43, v9, v10);
  (*(v5 + 16))(v3, v2, v6);
  outlined init with copy of DeviceState(v0 + 872, v0 + 832);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v3, v6);
  outlined init with take of CATType((v0 + 832), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 872));
  *(v0 + 1504) = v16;
  static ExecuteResponse.complete<A>(next:)();
  outlined consume of ContactResolutionFlowError(v35, v37);

  outlined consume of ShareETABaseFlow.State(v41, 3u);

  (*(v5 + 8))(v2, v6);
  v17 = *(v0 + 1856);
  v18 = *(v0 + 1848);
  v19 = *(v0 + 1824);
  v20 = *(v0 + 1816);
  v21 = *(v0 + 1792);
  v22 = *(v0 + 1784);
  v23 = *(v0 + 1776);
  v24 = *(v0 + 1752);
  v25 = *(v0 + 1744);
  v26 = *(v0 + 1720);
  v29 = *(v0 + 1704);
  v30 = *(v0 + 1696);
  v31 = *(v0 + 1688);
  v32 = *(v0 + 1664);
  v33 = *(v0 + 1656);
  v34 = *(v0 + 1648);
  v36 = *(v0 + 1640);
  v38 = *(v0 + 1632);
  v40 = *(v0 + 1600);
  v42 = *(v0 + 1592);

  v27 = *(v0 + 8);

  return v27();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1968);
  v4 = *(*v1 + 1960);
  v7 = *v1;
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v5 = ShareETABaseFlow.executeState();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 1192));
    v5 = ShareETABaseFlow.executeState();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v41 = v0;
  v1 = *(v0 + 1952);
  v38 = *(v0 + 1864);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1640);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1616);
  v6 = *(v0 + 1608);
  v7 = *(v0 + 1584);
  v8 = *(v0 + 1576);
  (*(v0 + 1944))();
  v9 = *(v0 + 1256);
  v10 = *(v0 + 1264);
  __swift_project_boxed_opaque_existential_1((v0 + 1232), v9);
  (*(v10 + 104))(v40, v9, v10);
  (*(v5 + 16))(v2, v3, v6);
  outlined init with copy of DeviceState(v0 + 1232, v0 + 1112);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v6);
  outlined init with take of CATType((v0 + 1112), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1232));
  *(v0 + 1472) = v16;
  static ExecuteResponse.complete<A>(next:)();
  outlined consume of ShareETABaseFlow.State(v38, 3u);

  (*(v5 + 8))(v3, v6);
  v17 = *(v0 + 1856);
  v18 = *(v0 + 1848);
  v19 = *(v0 + 1824);
  v20 = *(v0 + 1816);
  v21 = *(v0 + 1792);
  v22 = *(v0 + 1784);
  v23 = *(v0 + 1776);
  v24 = *(v0 + 1752);
  v25 = *(v0 + 1744);
  v26 = *(v0 + 1720);
  v29 = *(v0 + 1704);
  v30 = *(v0 + 1696);
  v31 = *(v0 + 1688);
  v32 = *(v0 + 1664);
  v33 = *(v0 + 1656);
  v34 = *(v0 + 1648);
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1632);
  v37 = *(v0 + 1600);
  v39 = *(v0 + 1592);

  v27 = *(v0 + 8);

  return v27();
}

{
  v2 = *v1;
  v3 = *(*v1 + 2008);
  v4 = *(*v1 + 2000);
  v7 = *v1;
  *(*v1 + 2016) = v0;

  if (v0)
  {
    v5 = ShareETABaseFlow.executeState();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 352));
    v5 = ShareETABaseFlow.executeState();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v40 = v0;
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1616);
  v6 = *(v0 + 1608);
  v7 = *(v0 + 1584);
  v8 = *(v0 + 1576);
  (*(v0 + 1984))();
  v9 = *(v0 + 576);
  v10 = *(v0 + 584);
  __swift_project_boxed_opaque_existential_1((v0 + 552), v9);
  (*(v10 + 104))(v39, v9, v10);
  (*(v5 + 16))(v2, v3, v6);
  outlined init with copy of DeviceState(v0 + 552, v0 + 592);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v6);
  outlined init with take of CATType((v0 + 592), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 552));
  *(v0 + 1544) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v5 + 8))(v3, v6);
  v17 = *(v0 + 1856);
  v18 = *(v0 + 1848);
  v19 = *(v0 + 1824);
  v20 = *(v0 + 1816);
  v21 = *(v0 + 1792);
  v22 = *(v0 + 1784);
  v23 = *(v0 + 1776);
  v24 = *(v0 + 1752);
  v25 = *(v0 + 1744);
  v26 = *(v0 + 1720);
  v29 = *(v0 + 1704);
  v30 = *(v0 + 1696);
  v31 = *(v0 + 1688);
  v32 = *(v0 + 1664);
  v33 = *(v0 + 1656);
  v34 = *(v0 + 1648);
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1632);
  v37 = *(v0 + 1600);
  v38 = *(v0 + 1592);

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[237];
  v2 = v0[236];
  v3 = v0[235];

  outlined consume of ContactResolutionFlowError(v3, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 124);
  v4 = v0[242];
  v5 = v0[233];
  v6 = v0[197];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v7 = type metadata accessor for SimpleOutputFlowAsync();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[182] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  outlined consume of ShareETABaseFlow.State(v5, 3u);

  v10 = v0[232];
  v11 = v0[231];
  v12 = v0[228];
  v13 = v0[227];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[222];
  v17 = v0[219];
  v18 = v0[218];
  v19 = v0[215];
  v22 = v0[213];
  v23 = v0[212];
  v24 = v0[211];
  v25 = v0[208];
  v26 = v0[207];
  v27 = v0[206];
  v28 = v0[205];
  v29 = v0[204];
  v30 = v0[200];
  v31 = v0[199];

  v20 = v0[1];

  return v20();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 149);
  v1 = v0[247];
  v2 = v0[233];
  v3 = v0[197];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v4 = type metadata accessor for SimpleOutputFlowAsync();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[182] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  outlined consume of ShareETABaseFlow.State(v2, 3u);

  v7 = v0[232];
  v8 = v0[231];
  v9 = v0[228];
  v10 = v0[227];
  v11 = v0[224];
  v12 = v0[223];
  v13 = v0[222];
  v14 = v0[219];
  v15 = v0[218];
  v16 = v0[215];
  v19 = v0[213];
  v20 = v0[212];
  v21 = v0[211];
  v22 = v0[208];
  v23 = v0[207];
  v24 = v0[206];
  v25 = v0[205];
  v26 = v0[204];
  v27 = v0[200];
  v28 = v0[199];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[252];
  v2 = v0[197];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v3 = type metadata accessor for SimpleOutputFlowAsync();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[194] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v6 = v0[232];
  v7 = v0[231];
  v8 = v0[228];
  v9 = v0[227];
  v10 = v0[224];
  v11 = v0[223];
  v12 = v0[222];
  v13 = v0[219];
  v14 = v0[218];
  v15 = v0[215];
  v18 = v0[213];
  v19 = v0[212];
  v20 = v0[211];
  v21 = v0[208];
  v22 = v0[207];
  v23 = v0[206];
  v24 = v0[205];
  v25 = v0[204];
  v26 = v0[200];
  v27 = v0[199];

  v16 = v0[1];

  return v16();
}

uint64_t closure #2 in ShareETABaseFlow.executeState()(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    outlined copy of ContactResolutionFlowError(*a1, v4);
    v5 = static os_log_type_t.error.getter();
    v6 = a2[2];
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      outlined copy of ContactResolutionFlowError(v3, v4);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v6, v5, "Contact Resolution Failed: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    lazy protocol witness table accessor for type ContactResolutionFlowError and conformance ContactResolutionFlowError();
    v12 = swift_allocError();
    *v13 = v3;
    v13[1] = v4;
    return (*(*a2 + 160))(v12, 3);
  }

  else if (v4)
  {
    v15 = *(*a2 + 160);
    outlined copy of ContactResolutionOutput(*a1, 1);
    return v15(v3, 2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_B8FB0;
    *(v16 + 32) = v3;
    v17 = *(*a2 + 160);
    outlined copy of ContactResolutionOutput(v3, 0);
    return v17(v16, 2);
  }
}

uint64_t closure #1 in ShareETABaseFlow.executeState()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy03GeoC14DelegatePlugin20LocationSearchIntentCGMd, &_s11SiriKitFlow12PromptResultOy03GeoC14DelegatePlugin20LocationSearchIntentCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v21 - v7);
  (*(v5 + 16))(&v21 - v7, a1, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == enum case for PromptResult.answered<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = *v8;
    v11 = *(*a2 + 160);

    v11(v12, 1);
  }

  else if (result == enum case for PromptResult.error<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v13 = *v8;
    v14 = static os_log_type_t.error.getter();
    v15 = a2[2];
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v13;
      v22 = v17;
      *v16 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v15, v14, "PromptForValueFlow error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    (*(*a2 + 160))(0, 4);
  }

  else if (result == enum case for PromptResult.cancelled<A>(_:))
  {
    return (*(*a2 + 160))(0, 4);
  }

  else if (result != enum case for PromptResult.unanswered<A>(_:))
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t closure #6 in ShareETABaseFlow.executeState()()
{
  v1 = *(v0 + 16);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #9 in ShareETABaseFlow.executeState()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = static os_log_type_t.default.getter();
  result = os_log_type_enabled(v2, v3);
  if (result)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "Completed ShareETA RCH", v5, 2u);
  }

  return result;
}

uint64_t ShareETABaseFlow.preChecks(intent:)(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  v4 = type metadata accessor for UnlockDevicePolicy();
  v3[110] = v4;
  v5 = *(v4 - 8);
  v3[111] = v5;
  v6 = *(v5 + 64) + 15;
  v3[112] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[113] = v7;
  v8 = *(v7 - 8);
  v3[114] = v8;
  v3[115] = *(v8 + 64);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();

  return _swift_task_switch(ShareETABaseFlow.preChecks(intent:), 0, 0);
}

uint64_t ShareETABaseFlow.preChecks(intent:)()
{
  v88 = v0;
  if ((*(**(v0 + 872) + 328))())
  {
    (*(**(v0 + 872) + 224))();
    if ((*(v1 + 8))())
    {
      v2 = *(v0 + 872);
      type metadata accessor for MapsService();
      v3 = *(v2 + 16);
      v4 = static MapsService.shareETAConfigurationCheck(_:)();
      if (v4 == 2)
      {
        (*(**(v0 + 872) + 176))();
        v5 = *(v0 + 440);
        v6 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1((v0 + 416), v5);
        (*(v6 + 32))(v5, v6);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
        v7 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
        if (one-time initialization token for kShareETAAuthenticationPolicy != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 880), kShareETAAuthenticationPolicy);
        v8 = dispatch thunk of DeviceState.isAuthenticated(for:)();
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 456));
        if (v8)
        {
          v9 = *(v0 + 864);
          v10 = *(v0 + 856);
          v11 = *(**(v0 + 872) + 160);

          v11(v12, 1);
          static ExecuteResponse.ongoing(requireInput:)();
        }

        else
        {
          v58 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v3, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&dword_0, v3, v58, "share eta requires device unlocked", v59, 2u);
          }

          v60 = *(v0 + 896);
          v61 = *(v0 + 888);
          v62 = *(v0 + 880);
          v63 = *(v0 + 872);
          v64 = *(v0 + 864);
          v65 = *(v0 + 856);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
          v66 = *(type metadata accessor for CommonFlowGuard() - 8);
          v67 = *(v66 + 72);
          v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          *(swift_allocObject() + 16) = xmmword_B89E0;
          static UnlockDevicePolicy.requiringDeviceUnlock.getter();
          static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
          (*(v61 + 8))(v60, v62);
          v69 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

          *(v0 + 832) = v69;
          v70 = swift_allocObject();
          *(v70 + 16) = v63;
          *(v70 + 24) = v64;
          type metadata accessor for GuardFlow();

          static ExecuteResponse.ongoing<A>(next:childCompletion:)();
        }

        v71 = *(v0 + 960);
        v72 = *(v0 + 952);
        v73 = *(v0 + 944);
        v74 = *(v0 + 936);
        v75 = *(v0 + 928);
        v76 = *(v0 + 896);

        v77 = *(v0 + 8);

        return v77();
      }

      v41 = v4;
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v87 = v44;
        *v43 = 136315138;
        *(v0 + 1128) = v41 & 1;
        v45 = String.init<A>(describing:)();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v87);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_0, v3, v42, "share eta configuration check error %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
      }

      v48 = *(v0 + 872);
      v49 = v48[3];
      if (v41)
      {
        *(v0 + 520) = type metadata accessor for ShareETA(0);
        *(v0 + 528) = &protocol witness table for ShareETA;
        __swift_allocate_boxed_opaque_existential_0((v0 + 496));
        v50 = swift_storeEnumTagMultiPayload();
        v51 = *(*v48 + 176);
        v52 = *v48 + 176;
        *(v0 + 1088) = v51;
        *(v0 + 1096) = v52 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
        v51(v50);
        v53 = *(v0 + 560);
        v54 = *(v0 + 568);
        __swift_project_boxed_opaque_existential_1((v0 + 536), v53);
        v24 = (*(v54 + 80))(v53, v54);
        *(v0 + 1104) = v24;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
        v55 = *(*v49 + 112);
        v86 = (v55 + *v55);
        v56 = v55[1];
        v57 = swift_task_alloc();
        *(v0 + 1112) = v57;
        *v57 = v0;
        v57[1] = ShareETABaseFlow.preChecks(intent:);
        v28 = *(v0 + 928);
        v29 = v0 + 496;
      }

      else
      {
        *(v0 + 680) = type metadata accessor for ShareETA(0);
        *(v0 + 688) = &protocol witness table for ShareETA;
        __swift_allocate_boxed_opaque_existential_0((v0 + 656));
        v78 = swift_storeEnumTagMultiPayload();
        v79 = *(*v48 + 176);
        v80 = *v48 + 176;
        *(v0 + 1048) = v79;
        *(v0 + 1056) = v80 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
        v79(v78);
        v81 = *(v0 + 720);
        v82 = *(v0 + 728);
        __swift_project_boxed_opaque_existential_1((v0 + 696), v81);
        v24 = (*(v82 + 80))(v81, v82);
        *(v0 + 1064) = v24;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 696));
        v83 = *(*v49 + 112);
        v86 = (v83 + *v83);
        v84 = v83[1];
        v85 = swift_task_alloc();
        *(v0 + 1072) = v85;
        *v85 = v0;
        v85[1] = ShareETABaseFlow.preChecks(intent:);
        v28 = *(v0 + 936);
        v29 = v0 + 656;
      }
    }

    else
    {
      v30 = *(v0 + 872);
      v31 = v30[3];
      *(v0 + 280) = type metadata accessor for ShareETA(0);
      *(v0 + 288) = &protocol witness table for ShareETA;
      __swift_allocate_boxed_opaque_existential_0((v0 + 256));
      v32 = swift_storeEnumTagMultiPayload();
      v33 = *(*v30 + 176);
      v34 = *v30 + 176;
      *(v0 + 1008) = v33;
      *(v0 + 1016) = v34 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
      v33(v32);
      v35 = *(v0 + 320);
      v36 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v35);
      v24 = (*(v36 + 80))(v35, v36);
      *(v0 + 1024) = v24;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
      v37 = *(*v31 + 112);
      v86 = (v37 + *v37);
      v38 = v37[1];
      v39 = swift_task_alloc();
      *(v0 + 1032) = v39;
      *v39 = v0;
      v39[1] = ShareETABaseFlow.preChecks(intent:);
      v28 = *(v0 + 944);
      v29 = v0 + 256;
    }
  }

  else
  {
    v13 = *(v0 + 872);
    v14 = v13[3];
    *(v0 + 40) = type metadata accessor for ShareETA(0);
    *(v0 + 48) = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    v16 = *(*v13 + 176);
    v17 = *v13 + 176;
    *(v0 + 968) = v16;
    *(v0 + 976) = v17 & 0xFFFFFFFFFFFFLL | 0x55F0000000000000;
    v16();
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v18);
    (*(v19 + 32))(v18, v19);
    v20 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    *boxed_opaque_existential_0 = DeviceState.deviceType.getter();
    v21 = swift_storeEnumTagMultiPayload();
    (v16)(v21);
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v22);
    v24 = (*(v23 + 80))(v22, v23);
    *(v0 + 984) = v24;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    v25 = *(*v14 + 112);
    v86 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 992) = v27;
    *v27 = v0;
    v27[1] = ShareETABaseFlow.preChecks(intent:);
    v28 = *(v0 + 960);
    v29 = v0 + 16;
  }

  return v86(v28, v29, v24);
}

{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v4 = *(*v1 + 984);
  v7 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 976);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 872);
  v8 = *(v0 + 856);
  (*(v0 + 968))();
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v9);
  (*(v10 + 104))(v25, v9, v10);
  (*(v5 + 16))(v3, v2, v6);
  outlined init with copy of DeviceState(v0 + 176, v0 + 216);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v3, v6);
  outlined init with take of CATType((v0 + 216), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  *(v0 + 816) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v5 + 8))(v2, v6);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 896);

  v23 = *(v0 + 8);

  return v23();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v4 = *(*v1 + 1024);
  v7 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 256));
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 872);
  v8 = *(v0 + 856);
  (*(v0 + 1008))();
  v9 = *(v0 + 360);
  v10 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v9);
  (*(v10 + 104))(v25, v9, v10);
  (*(v5 + 16))(v2, v3, v6);
  outlined init with copy of DeviceState(v0 + 336, v0 + 376);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v6);
  outlined init with take of CATType((v0 + 376), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
  *(v0 + 824) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v5 + 8))(v3, v6);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 896);

  v23 = *(v0 + 8);

  return v23();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v4 = *(*v1 + 1064);
  v7 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 656));
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 872);
  v8 = *(v0 + 856);
  (*(v0 + 1048))();
  v9 = *(v0 + 760);
  v10 = *(v0 + 768);
  __swift_project_boxed_opaque_existential_1((v0 + 736), v9);
  (*(v10 + 104))(v25, v9, v10);
  (*(v5 + 16))(v2, v3, v6);
  outlined init with copy of DeviceState(v0 + 736, v0 + 776);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v6);
  outlined init with take of CATType((v0 + 776), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 736));
  *(v0 + 848) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v5 + 8))(v3, v6);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 896);

  v23 = *(v0 + 8);

  return v23();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1112);
  v4 = *(*v1 + 1104);
  v7 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 496));
    v5 = ShareETABaseFlow.preChecks(intent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 872);
  v8 = *(v0 + 856);
  (*(v0 + 1088))();
  v9 = *(v0 + 600);
  v10 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v9);
  (*(v10 + 104))(v25, v9, v10);
  (*(v5 + 16))(v2, v3, v6);
  outlined init with copy of DeviceState(v0 + 576, v0 + 616);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v6);
  outlined init with take of CATType((v0 + 616), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 576));
  *(v0 + 840) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v5 + 8))(v3, v6);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 944);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 896);

  v23 = *(v0 + 8);

  return v23();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[125];
  v2 = v0[109];
  v3 = v0[107];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v4 = swift_allocError();
  *v5 = 0xD000000000000013;
  *(v5 + 8) = 0x80000000000C35E0;
  *(v5 + 16) = 0;
  (*(*v2 + 160))(v4, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[112];

  v12 = v0[1];

  return v12();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v1 = v0[130];
  v2 = v0[109];
  v3 = v0[107];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v4 = swift_allocError();
  *v5 = 0xD000000000000013;
  *(v5 + 8) = 0x80000000000C35E0;
  *(v5 + 16) = 0;
  (*(*v2 + 160))(v4, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[112];

  v12 = v0[1];

  return v12();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 82);
  v1 = v0[135];
  v2 = v0[109];
  v3 = v0[107];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v4 = swift_allocError();
  *v5 = 0xD000000000000013;
  *(v5 + 8) = 0x80000000000C35E0;
  *(v5 + 16) = 0;
  (*(*v2 + 160))(v4, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[112];

  v12 = v0[1];

  return v12();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 62);
  v1 = v0[140];
  v2 = v0[109];
  v3 = v0[107];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v4 = swift_allocError();
  *v5 = 0xD000000000000013;
  *(v5 + 8) = 0x80000000000C35E0;
  *(v5 + 16) = 0;
  (*(*v2 + 160))(v4, 3);
  static ExecuteResponse.ongoing(requireInput:)();

  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[112];

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in ShareETABaseFlow.preChecks(intent:)(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[2];
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 == 1)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v4, v5, "unlock flow error", v7, 2u);
    }

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v8 = swift_allocError();
    *v9 = 0xD000000000000011;
    *(v9 + 8) = 0x80000000000C3600;
    *(v9 + 16) = 0;
    return (*(*a2 + 160))(v8, 3);
  }

  else
  {
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v4, v5, "successfully unlocked the device", v11, 2u);
    }

    v12 = *(*a2 + 160);

    return v12(v13, 1);
  }
}

uint64_t ShareETABaseFlow.isDeviceSupported()()
{
  v1 = *(*v0 + 176);
  v1(v26);
  v2 = v27;
  v3 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v3 + 32))(v24, v2, v3);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  v4 = dispatch thunk of DeviceState.isXRDevice.getter();
  v5 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    (v1)(v26, v5);
    v7 = v27;
    v8 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v8 + 32))(v24, v7, v8);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    if (dispatch thunk of DeviceState.isPhone.getter())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v6 = 1;
    }

    else
    {
      v1(v21);
      v9 = v22;
      v10 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v10 + 32))(v20, v9, v10);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v11 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v12 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      if (v11)
      {
        goto LABEL_7;
      }

      (v1)(v26, v12);
      v13 = v27;
      v14 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v14 + 32))(v24, v13, v14);
      __swift_project_boxed_opaque_existential_1(v24, v25);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      v15 = dispatch thunk of DeviceState.isCarPlay.getter();
      v16 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      if (v15)
      {
LABEL_7:
        v6 = 1;
      }

      else
      {
        (v1)(v26, v16);
        v17 = v27;
        v18 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v18 + 32))(v24, v17, v18);
        __swift_project_boxed_opaque_existential_1(v24, v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        v6 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }
    }
  }

  return v6 & 1;
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance ShareETABaseFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance ShareETABaseFlow(uint64_t a1)
{
  v4 = *(**v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShareETABaseFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShareETABaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t MockShareETABaseFlow.__allocating_init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  outlined init with copy of DeviceState(a3, v16);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v10 = OS_os_log.init(subsystem:category:)();
  *(v9 + 16) = v10;
  type metadata accessor for CATService();
  v11 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v11 + 32) = OS_os_log.init(subsystem:category:)();
  *(v11 + 16) = 0;
  *(v9 + 24) = v11;
  *(v9 + 88) = 0;
  *(v9 + 112) = 0;
  static os_log_type_t.info.getter();
  v13 = v10;
  os_log(_:dso:log:_:_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  *(v9 + 32) = a1;
  *(v9 + 40) = 0;
  *(v9 + 41) = a2;
  outlined init with take of CATType(v16, v9 + 48);
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  return v9;
}

uint64_t MockShareETABaseFlow.init(with:stopSharing:flowHelper:checkNavigation:)(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of DeviceState(a3, v15);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v5 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v11 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v11 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v11 + 32) = OS_os_log.init(subsystem:category:)();
  *(v11 + 16) = 0;
  *(v5 + 24) = v11;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  static os_log_type_t.info.getter();
  v13 = *(v5 + 16);
  os_log(_:dso:log:_:_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  *(v5 + 32) = a1;
  *(v5 + 40) = 0;
  *(v5 + 41) = a2;
  outlined init with take of CATType(v15, v5 + 48);
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return v5;
}

uint64_t ShareETABaseFlow.deinit()
{
  v1 = *(v0 + 24);

  outlined consume of ShareETABaseFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  return v0;
}

uint64_t ShareETABaseFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  outlined consume of ShareETABaseFlow.State(*(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return swift_deallocClassInstance();
}

unint64_t specialized ShareETABaseFlow.makeSkeletonINPerson(inpersons:)(unint64_t a1)
{
  if (!a1)
  {
    return a1;
  }

  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9 < 0)
    {
      __break(1u);
    }

    v2 = v9;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

    return a1;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  v3 = a1 & 0xC000000000000001;

  v4 = 0;
  do
  {
    if (v3)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    [v7 setIsMe:0];

    if (v3)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    [v5 setSourceAppBundleIdentifier:0];
  }

  while (v2 != v4);
  return a1;
}

void specialized ShareETABaseFlow.missingContactInformation(persons:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_30:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = a1 & 0xC000000000000001;
      v5 = &selRef_currentLocationWithAccuracy_timeout_completion_;
      v18 = v2;
      do
      {
        if (v4)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v6 = *(a1 + 32 + 8 * v3);
        }

        v7 = v6;
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_29;
        }

        v9 = [v6 v5[3]];
        if (v9)
        {
          v10 = v9;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v11 >> 62)
          {
            v12 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
          }

          for (i = 0; ; ++i)
          {
            if (v12 == i)
            {

              v4 = a1 & 0xC000000000000001;
              v2 = v18;
              v5 = &selRef_currentLocationWithAccuracy_timeout_completion_;
              goto LABEL_22;
            }

            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_28;
              }

              v14 = *(v11 + 8 * i + 32);
            }

            v15 = v14;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v16 = INPerson.hasUsefulHandleValue.getter();

            if (v16)
            {

              return;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_22:
        v17 = INPerson.hasUsefulHandleValue.getter();
      }

      while ((v17 & 1) == 0 && v3 != v2);
    }
  }
}