uint64_t sub_994F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_99528()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t outlined init with copy of HandleFilterProtocolAsync?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMd, &_s21GeoFlowDelegatePlugin25HandleFilterProtocolAsync_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for ShareETABaseFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETABaseFlow and conformance ShareETABaseFlow, a2, type metadata accessor for ShareETABaseFlow);
  result = lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(&lazy protocol witness table cache variable for type ShareETABaseFlow and conformance ShareETABaseFlow, v3, type metadata accessor for ShareETABaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type ShareETAFlowDelegate and conformance BaseRCHFlowDelegate<A, B>(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_996F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_99740(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *(a1 + 8);
  outlined copy of ShareETABaseFlow.State(*a1, v4);
  return v3(v2, v4);
}

uint64_t sub_99850@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_998E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_99984@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_99A24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin012ShareETABaseB0C5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t getEnumTagSinglePayload for ShareETABaseFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShareETABaseFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for ShareETABaseFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_99BC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type ContactResolutionFlowError and conformance ContactResolutionFlowError()
{
  result = lazy protocol witness table cache variable for type ContactResolutionFlowError and conformance ContactResolutionFlowError;
  if (!lazy protocol witness table cache variable for type ContactResolutionFlowError and conformance ContactResolutionFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactResolutionFlowError and conformance ContactResolutionFlowError);
  }

  return result;
}

uint64_t LocalSearchIntent.LocalSearchCategory.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x797265636F7267;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t *LocalSearchIntent.domainNode.unsafeMutableAddressor()
{
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  return &static LocalSearchIntent.domainNode;
}

uint64_t *LocalSearchIntent.categoryNode.unsafeMutableAddressor()
{
  if (one-time initialization token for categoryNode != -1)
  {
    swift_once();
  }

  return &static LocalSearchIntent.categoryNode;
}

GeoFlowDelegatePlugin::LocalSearchIntent::LocalSearchCategory_optional __swiftcall LocalSearchIntent.LocalSearchCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalSearchIntent.LocalSearchCategory.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_LocalSearchIntent_LocalSearchCategory_grocery;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_LocalSearchIntent_LocalSearchCategory_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocalSearchIntent.LocalSearchCategory(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x797265636F7267;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = 0x80000000000BFD10;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x797265636F7267;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0x80000000000BFD10;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalSearchIntent.LocalSearchCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocalSearchIntent.LocalSearchCategory()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalSearchIntent.LocalSearchCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocalSearchIntent.LocalSearchCategory@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalSearchIntent.LocalSearchCategory.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance LocalSearchIntent.LocalSearchCategory(unint64_t *a1@<X8>)
{
  v2 = 0x80000000000BFD10;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x797265636F7267;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t LocalSearchIntent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v4 = type metadata accessor for NLIntent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t one-time initialization function for categoryNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocalSearchIntent.categoryNode = result;
  return result;
}

uint64_t LocalSearchIntent.domainOntologyNode.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t LocalSearchIntent.domainOntologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LocalSearchIntent.__allocating_init(from:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  *(v5 + v6) = static LocalSearchIntent.domainNode;
  v7 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v8 = v5;
  v9 = type metadata accessor for NLIntent();
  (*(*(v9 - 8) + 32))(v8 + v7, a1, v9);

  return v8;
}

uint64_t LocalSearchIntent.init(from:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v1 + v3) = static LocalSearchIntent.domainNode;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);

  return v1;
}

uint64_t LocalSearchIntent.category.getter()
{
  if (one-time initialization token for categoryNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocalSearchIntent();
  lazy protocol witness table accessor for type LocalSearchIntent and conformance LocalSearchIntent(&lazy protocol witness table cache variable for type LocalSearchIntent and conformance LocalSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  return v1;
}

uint64_t type metadata accessor for LocalSearchIntent()
{
  result = type metadata singleton initialization cache for LocalSearchIntent;
  if (!type metadata singleton initialization cache for LocalSearchIntent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocalSearchIntent.occupant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for NonTerminalIntentNode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v24 = v1;
  v15 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  type metadata accessor for LocalSearchIntent();
  lazy protocol witness table accessor for type LocalSearchIntent and conformance LocalSearchIntent(&lazy protocol witness table cache variable for type LocalSearchIntent and conformance LocalSearchIntent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NonTerminalIntentNode?(v6);
    v18 = 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v12, v14, v7);
    v19 = *(v15 + 48);
    v20 = *(v15 + 52);
    swift_allocObject();
    AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
    OccupantIntentNode.init(intentNode:ontologyNode:)();
    (*(v8 + 8))(v14, v7);
    v18 = 0;
  }

  v21 = type metadata accessor for OccupantIntentNode();
  return (*(*(v21 - 8) + 56))(a1, v18, 1, v21);
}

uint64_t LocalSearchIntent.deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode);

  return v0;
}

uint64_t LocalSearchIntent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_domainOntologyNode);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory()
{
  result = lazy protocol witness table cache variable for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory;
  if (!lazy protocol witness table cache variable for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalSearchIntent.LocalSearchCategory and conformance LocalSearchIntent.LocalSearchCategory);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LocalSearchIntent and conformance LocalSearchIntent(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalSearchIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance LocalSearchIntent@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin17LocalSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance LocalSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance LocalSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocalSearchIntent()
{
  swift_getWitnessTable();

  return NLIntentWrapper.description.getter();
}

uint64_t sub_9AE20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_9AE6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t DeleteParkingBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t DeleteParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Parse();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(DeleteParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t DeleteParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v46 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = static os_log_type_t.info.getter();
    v5 = *(v2 + 16);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v45 = v7;
      *v6 = 136315138;
      v3 = v3;
      v8 = [v3 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v45);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_0, v5, v4, "makeIntentFromParse with current intent: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    goto LABEL_10;
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  (*(v14 + 16))(v13, v0[2], v15);
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v17 = v0[7];
    (*(v0[6] + 96))(v17, v0[5]);
    v18 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48));
    v19 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();

    v21 = v0[7];
    if (v20)
    {
      Parse.ServerConversion.siriKitIntent.getter();

      objc_opt_self();
      v3 = swift_dynamicCastObjCClassUnconditional();
      v22 = type metadata accessor for NLIntent();
      (*(*(v22 - 8) + 8))(v21, v22);
LABEL_10:
      v29 = v0[7];

      v30 = v0[1];

      return v30(v3);
    }

    type metadata accessor for RuntimeError();
    v36 = swift_allocObject();
    *(v36 + 16) = 0xD000000000000039;
    *(v36 + 24) = 0x80000000000C2800;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
    swift_allocError();
    *v37 = v36;
    swift_willThrow();

    v38 = type metadata accessor for NLIntent();
    (*(*(v38 - 8) + 8))(v21, v38);
  }

  else
  {
    v24 = v0[6];
    v23 = v0[7];
    v25 = v0[5];
    if (v16 == enum case for Parse.pommesResponse(_:))
    {
      (*(v24 + 96))(v0[7], v0[5]);
      v26 = *v23;
      v27 = PommesResponse.firstGeoExperience.getter();
      if (v27)
      {
        v28 = v27;
        v3 = [objc_allocWithZone(INDeleteParkingLocationIntent) init];

        goto LABEL_10;
      }

      v39 = v0[4];
      static os_log_type_t.error.getter();
      v40 = *(v39 + 16);
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v41 = swift_allocObject();
      *(v41 + 16) = 0xD00000000000002BLL;
      *(v41 + 24) = 0x80000000000C2880;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
      swift_allocError();
      *v42 = v41;
      swift_willThrow();
    }

    else
    {
      v32 = v0[4];
      static os_log_type_t.error.getter();
      v33 = *(v32 + 16);
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v34 = swift_allocObject();
      *(v34 + 16) = 0xD000000000000047;
      *(v34 + 24) = 0x80000000000C3670;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
      swift_allocError();
      *v35 = v34;
      swift_willThrow();
      (*(v24 + 8))(v23, v25);
    }
  }

  v43 = v0[7];

  v44 = v0[1];

  return v44();
}

uint64_t DeleteParkingBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  Input.parse.getter();
  (*(v2 + 16))(v6, v8, v1);
  v9 = (*(v2 + 88))(v6, v1);
  if (v9 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v2 + 96))(v6, v1);
    v10 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];

    static ActionForInput.handle()();
    (*(v2 + 8))(v8, v1);
    v11 = type metadata accessor for NLIntent();
    return (*(*(v11 - 8) + 8))(v6, v11);
  }

  else if (v9 == enum case for Parse.pommesResponse(_:))
  {
    v13 = *(v2 + 8);
    v13(v6, v1);
    static os_log_type_t.info.getter();
    v14 = *(v0 + 16);
    os_log(_:dso:log:_:_:)();
    static ActionForInput.handle()();
    return (v13)(v8, v1);
  }

  else
  {
    static os_log_type_t.error.getter();
    v15 = *(v0 + 16);
    os_log(_:dso:log:_:_:)();
    static ActionForInput.cancel()();
    v16 = *(v2 + 8);
    v16(v8, v1);
    return (v16)(v6, v1);
  }
}

uint64_t DeleteParkingBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeleteParkingBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance DeleteParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_2(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t SaveParkingBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t SaveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for Parse();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(SaveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t SaveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v58 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = static os_log_type_t.info.getter();
    v5 = *(v2 + 16);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v57 = v7;
      *v6 = 136315138;
      v3 = v3;
      v8 = [v3 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v57);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_0, v5, v4, "makeIntentFromParse with current intent: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    goto LABEL_10;
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  (*(v14 + 16))(v13, v0[2], v15);
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v17 = v0[13];
    (*(v0[12] + 96))(v17, v0[11]);
    v18 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48));
    v19 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();

    v21 = v0[13];
    if (v20)
    {
      Parse.ServerConversion.siriKitIntent.getter();

      objc_opt_self();
      v3 = swift_dynamicCastObjCClassUnconditional();
      v22 = type metadata accessor for NLIntent();
      (*(*(v22 - 8) + 8))(v21, v22);
LABEL_10:
      v36 = v0[13];
      v37 = v0[10];
      v38 = v0[7];

      v39 = v0[1];

      return v39(v3);
    }

    type metadata accessor for RuntimeError();
    v45 = swift_allocObject();
    *(v45 + 16) = 0xD000000000000039;
    *(v45 + 24) = 0x80000000000C2800;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
    swift_allocError();
    *v46 = v45;
    swift_willThrow();

    v47 = type metadata accessor for NLIntent();
    (*(*(v47 - 8) + 8))(v21, v47);
  }

  else
  {
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    if (v16 == enum case for Parse.pommesResponse(_:))
    {
      (*(v24 + 96))(v0[13], v0[11]);
      v26 = *v23;
      v27 = PommesResponse.firstGeoExperience.getter();
      if (v27)
      {
        v29 = v0[9];
        v28 = v0[10];
        v30 = v0[7];
        v56 = v0[8];
        v32 = v0[5];
        v31 = v0[6];
        v33 = v27;
        GeoExperience.geoClientComponent.getter();
        Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter();
        Apple_Parsec_Siri_V2alpha_ParkingLocationAction.note.getter();
        (*(v31 + 8))(v30, v32);
        v34 = objc_allocWithZone(INSaveParkingLocationIntent);
        v35 = String._bridgeToObjectiveC()();

        v3 = [v34 initWithParkingLocation:0 parkingNote:v35];

        (*(v29 + 8))(v28, v56);
        goto LABEL_10;
      }

      v48 = v0[4];
      static os_log_type_t.error.getter();
      v49 = *(v48 + 16);
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v50 = swift_allocObject();
      *(v50 + 16) = 0xD00000000000002BLL;
      *(v50 + 24) = 0x80000000000C2880;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
      swift_allocError();
      *v51 = v50;
      swift_willThrow();
    }

    else
    {
      v41 = v0[4];
      static os_log_type_t.error.getter();
      v42 = *(v41 + 16);
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v43 = swift_allocObject();
      *(v43 + 16) = 0xD000000000000045;
      *(v43 + 24) = 0x80000000000C3700;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
      swift_allocError();
      *v44 = v43;
      swift_willThrow();
      (*(v24 + 8))(v23, v25);
    }
  }

  v52 = v0[13];
  v53 = v0[10];
  v54 = v0[7];

  v55 = v0[1];

  return v55();
}

uint64_t SaveParkingBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  Input.parse.getter();
  (*(v2 + 16))(v6, v8, v1);
  v9 = (*(v2 + 88))(v6, v1);
  if (v9 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v2 + 96))(v6, v1);
    v10 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];

    static ActionForInput.handle()();
    (*(v2 + 8))(v8, v1);
    v11 = type metadata accessor for NLIntent();
    return (*(*(v11 - 8) + 8))(v6, v11);
  }

  else if (v9 == enum case for Parse.pommesResponse(_:))
  {
    v13 = *(v2 + 8);
    v13(v6, v1);
    static os_log_type_t.info.getter();
    v14 = *(v0 + 16);
    os_log(_:dso:log:_:_:)();
    static ActionForInput.handle()();
    return (v13)(v8, v1);
  }

  else
  {
    static os_log_type_t.error.getter();
    v15 = *(v0 + 16);
    os_log(_:dso:log:_:_:)();
    static ActionForInput.cancel()();
    v16 = *(v2 + 8);
    v16(v8, v1);
    return (v16)(v6, v1);
  }
}

uint64_t SaveParkingBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SaveParkingBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance SaveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingBaseRCHStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_3(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t TrafficIncidentBaseFlow.__allocating_init(with:flowHelper:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  TrafficIncidentBaseFlow.init(with:flowHelper:)(a1, a2);
  return v7;
}

uint64_t key path setter for TrafficIncidentBaseFlow.flowState : TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TrafficIncidentBaseFlow.State(a1, v7);
  return (*(**a2 + 120))(v7);
}

uint64_t TrafficIncidentBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of TrafficIncidentBaseFlow.State(v1 + v3, a1);
}

uint64_t TrafficIncidentBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of TrafficIncidentBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TrafficIncidentBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t TrafficIncidentBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TrafficIncidentBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TrafficIncidentBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TrafficIncidentBaseFlow.init(with:flowHelper:)(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  *(v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_isPOMMES) = 0;
  *(v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState) = a1;
  type metadata accessor for TrafficIncidentBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DeviceState(a2, v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper);

  v5 = static os_log_type_t.info.getter();
  v6 = *(v2 + 16);
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    type metadata accessor for LocationSearchIntent();
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
    v9 = NLIntentWrapper.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v6, v5, "TrafficIncidentBaseFlow initialized with intent\n%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v2;
}

uint64_t outlined init with copy of TrafficIncidentBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TrafficIncidentBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TrafficIncidentBaseFlow.__allocating_init(with:)(uint64_t a1)
{
  v3 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[3] = &type metadata for FlowHelperImpl;
  v19[4] = &protocol witness table for FlowHelperImpl;
  v7 = swift_allocObject();
  v19[0] = v7;

  FlowHelperImpl.init()((v7 + 16));
  v8 = (*(v1 + 184))(a1, v19);
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState;
  swift_beginAccess();

  outlined assign with take of TrafficIncidentBaseFlow.State(v6, v8 + v9);
  swift_endAccess();
  v10 = static os_log_type_t.info.getter();
  v11 = *(v8 + 16);

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = a1;
    v19[0] = v13;
    *v12 = 136315138;
    type metadata accessor for LocationSearchIntent();
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
    v14 = NLIntentWrapper.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v11, v10, "TrafficIncidentBaseFlow initialized with intent\n%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
  }

  return v8;
}

uint64_t TrafficIncidentBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    *a1 = *v7;
    *(a1 + 8) = 0;
    v11 = enum case for RCHFlowResult.error<A, B>(_:);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
    return (*(*(v9 - 8) + 32))(a1, v7, v9);
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v13 = swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    *a1 = v13;
    *(a1 + 8) = 0;
    v15 = enum case for RCHFlowResult.error<A, B>(_:);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
    (*(*(v16 - 8) + 104))(a1, v15, v16);
    return outlined destroy of TrafficIncidentBaseFlow.State(v7);
  }
}

uint64_t TrafficIncidentBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse.DirectInvocation();
  v51 = *(v8 - 8);
  isa = v51[8].isa;
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  Input.parse.getter();
  v20 = *(v13 + 88);
  v52 = v12;
  v21 = v20(v19, v12);
  if (v21 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v22 = v1[2];
    v23 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      v25 = 1;
      goto LABEL_24;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "TrafficIncidentBaseFlow onInput returns true for Nlv3Only.", v24, 2u);
    goto LABEL_4;
  }

  if (v21 != enum case for Parse.directInvocation(_:))
  {
    if (v21 == enum case for Parse.pommesResponse(_:))
    {
      v25 = 1;
      (*(*v1 + 168))(1);
      v30 = v1[2];
      v31 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_24;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "TrafficIncidentBaseFlow onInput returns true for Pommes response.", v32, 2u);
LABEL_4:

      v25 = 1;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v26 = v52;
  (*(v13 + 16))(v17, v19, v52);
  (*(v13 + 96))(v17, v26);
  (v51[4].isa)(v11, v17, v8);
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000033 && 0x80000000000BFC60 == v27)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      (v51[1].isa)(v11, v8);
LABEL_16:
      v33 = v2[2];
      v34 = v49;
      v35 = v50;
      (*(v49 + 16))(v7, a1, v50);
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v53 = v38;
        *v37 = 136315138;
        v51 = v33;
        v39 = v34;
        v40 = Input.description.getter();
        v42 = v41;
        (*(v39 + 8))(v7, v35);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v53);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_0, v51, v36, "SiriGeo currently doesn't support parse type: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
      }

      else
      {
        (*(v34 + 8))(v7, v35);
      }

      v25 = 0;
      goto LABEL_24;
    }
  }

  v44 = v2[2];
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "TrafficIncidentBaseFlow onInput returns true for directInvocation.", v46, 2u);
  }

  (v51[1].isa)(v11, v8);
  v25 = 1;
LABEL_24:
  (*(v13 + 8))(v19, v52);
  return v25;
}

uint64_t TrafficIncidentBaseFlow.executeState()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v2[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentBaseFlow.executeState(), 0, 0);
}

uint64_t TrafficIncidentBaseFlow.executeState()()
{
  v79 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 120);
  (*(**(v0 + 56) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v42 = *(v0 + 48);
        v43 = *(v0 + 56);
        v44 = **(v0 + 120);
        (*(*v43 + 136))(v78);
        type metadata accessor for LocationFetchFlow();
        swift_allocObject();
        *(v0 + 24) = LocationFetchFlow.init(flowHelper:requiredAccess:)(v78, 1);
        v45 = swift_allocObject();
        *(v45 + 16) = v43;
        *(v45 + 24) = v44;
        lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, type metadata accessor for LocationFetchFlow);

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_22:

        goto LABEL_25;
      }

      v14 = **(v0 + 120);
    }

    else
    {
      v14 = **(v0 + 120);
      if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
      {
        v35 = *(v0 + 48);
        v36 = *(v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
        v37 = *(type metadata accessor for CommonFlowGuard() - 8);
        v38 = *(v37 + 72);
        v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        *(swift_allocObject() + 16) = xmmword_B89E0;
        static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
        v40 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

        *(v0 + 40) = v40;
        v41 = swift_allocObject();
        *(v41 + 16) = v36;
        *(v41 + 24) = v14;
        type metadata accessor for GuardFlow();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_25;
      }

      v57 = *(v0 + 104);
      v58 = *(v0 + 112);
      v59 = *(v0 + 56);
      *v58 = v14;
      swift_storeEnumTagMultiPayload();
      v60 = *(*v59 + 120);

      v60(v58);
    }

    v61 = *(v0 + 48);
    v62 = *(v0 + 56);
    v63 = *(*v62 + 136);

    v63(v78, v64);
    type metadata accessor for TrafficIncidentRequestSupportedCheckFlow();
    swift_allocObject();
    *(v0 + 32) = TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(v14, v78);
    v65 = swift_allocObject();
    *(v65 + 16) = v62;
    *(v65 + 24) = v14;
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentRequestSupportedCheckFlow and conformance TrafficIncidentRequestSupportedCheckFlow, type metadata accessor for TrafficIncidentRequestSupportedCheckFlow);

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v16 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);
      v19 = *(v0 + 56);
      (*(v18 + 32))(v15, *(v0 + 120), v17);
      v20 = static os_log_type_t.info.getter();
      v21 = *(v19 + 16);
      v22 = *(v18 + 16);
      v22(v16, v15, v17);
      v23 = os_log_type_enabled(v21, v20);
      v24 = *(v0 + 88);
      if (v23)
      {
        v77 = v20;
        v25 = *(v0 + 72);
        v26 = *(v0 + 80);
        v27 = *(v0 + 64);
        v28 = swift_slowAlloc();
        log = v21;
        v29 = swift_slowAlloc();
        *&v78[0] = v29;
        *v28 = 136315138;
        v22(v26, v24, v27);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        v33 = *(v25 + 8);
        v33(v24, v27);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v78);

        *(v28 + 4) = v34;
        _os_log_impl(&dword_0, log, v77, "TrafficIncidentBaseFlow execute rchComplete with result %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
      }

      else
      {
        v33 = *(*(v0 + 72) + 8);
        v33(*(v0 + 88), *(v0 + 64));
      }

      v66 = *(v0 + 96);
      v67 = *(v0 + 64);
      v68 = *(v0 + 48);
      static ExecuteResponse.complete()();
      v33(v66, v67);
    }

    else
    {
      v56 = *(v0 + 48);
      static ExecuteResponse.complete()();
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v4 = *(v0 + 120);
      v5 = *(v0 + 56);
      v6 = *v4;
      *(v0 + 128) = *v4;
      v7 = v4[1];
      *(v0 + 136) = v7;
      v8 = *(*v5 + 216);
      v76 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      *(v0 + 144) = v10;
      *v10 = v0;
      v10[1] = TrafficIncidentBaseFlow.executeState();
      v11 = *(v0 + 48);
      v12 = *(v0 + 56);

      return v76(v11, v6, v7);
    }

    v46 = *(v0 + 56);
    v47 = **(v0 + 120);
    v48 = static os_log_type_t.error.getter();
    v49 = *(v46 + 16);
    if (os_log_type_enabled(v49, v48))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v78[0] = v51;
      *v50 = 136315138;
      *(v0 + 16) = v47;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v52 = String.init<A>(describing:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v78);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_0, v49, v48, "TrafficIncidentBaseFlow execute requestUnsupported with error %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }

    v55 = *(v0 + 48);
    static ExecuteResponse.complete()();
  }

LABEL_25:
  v70 = *(v0 + 112);
  v69 = *(v0 + 120);
  v72 = *(v0 + 88);
  v71 = *(v0 + 96);
  v73 = *(v0 + 80);

  v74 = *(v0 + 8);

  return v74();
}

{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(TrafficIncidentBaseFlow.executeState(), 0, 0);
}

{
  v1 = *(v0 + 128);

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in TrafficIncidentBaseFlow.executeState()(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  static os_log_type_t.info.getter();
  v11 = a2[2];
  os_log(_:dso:log:_:_:)();
  if (v10 == 1)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    swift_storeEnumTagMultiPayload();
    return (*(*a2 + 120))(v9);
  }

  else
  {
    static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)();
    *v9 = a3;
    swift_storeEnumTagMultiPayload();
    v13 = *(*a2 + 120);

    return v13(v9);
  }
}

uint64_t closure #3 in TrafficIncidentBaseFlow.executeState()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8))
  {
    type metadata accessor for UnsupportedError();
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD000000000000014;
    *(v10 + 24) = 0x80000000000C3840;
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, type metadata accessor for UnsupportedError);
    v11 = swift_allocError();
    *v12 = v10;
LABEL_7:
    *v9 = v11;
    swift_storeEnumTagMultiPayload();
    return (*(*a2 + 120))(v9);
  }

  v13 = *a1;
  v14 = static os_log_type_t.default.getter();
  v15 = a2[2];
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v16 = 136315138;
    v17 = [v13 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v15;
    v19 = v18;
    v20 = a3;
    v22 = v21;

    outlined consume of LocationFetchFlow.ExitValue(v13, 0);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, &v41);
    a3 = v20;

    *(v16 + 4) = v23;
    v15 = v40;
    _os_log_impl(&dword_0, v40, v14, "location: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  [v13 horizontalAccuracy];
  if (v24 < 0.0)
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v11 = swift_allocError();
    *v25 = 0xD00000000000001ELL;
    *(v25 + 8) = 0x80000000000C3860;
    *(v25 + 16) = 2;
    goto LABEL_7;
  }

  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v27))
  {
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v28 = 136315138;
    v29 = [v13 description];
    v40 = v15;
    v30 = v29;
    v31 = a3;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    outlined consume of LocationFetchFlow.ExitValue(v13, 0);
    v35 = v32;
    a3 = v31;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v41);

    *(v28 + 4) = v36;
    _os_log_impl(&dword_0, v40, v27, "returning success: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  *v9 = a3;
  v9[1] = v13;
  swift_storeEnumTagMultiPayload();
  v37 = *(*a2 + 120);
  outlined copy of LocationFetchFlow.ExitValue(v13, 0);

  return v37(v9);
}

uint64_t closure #2 in TrafficIncidentBaseFlow.executeState()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v11 = static os_log_type_t.error.getter();
      v12 = a2[2];
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v15;
        *v14 = v15;
        _os_log_impl(&dword_0, v12, v11, "exitValue error: %@", v13, 0xCu);
        outlined destroy of NSObject?(v14);
      }

      *v9 = v10;
      swift_storeEnumTagMultiPayload();
      v16 = *(*a2 + 120);
      swift_errorRetain();
      return v16(v9);
    }

    else
    {
      *v9 = a3;
      swift_storeEnumTagMultiPayload();
      v19 = *(*a2 + 120);

      return v19(v9);
    }
  }

  else
  {
    *v9 = a3;
    v9[1] = v10;
    swift_storeEnumTagMultiPayload();
    v18 = *(*a2 + 120);

    outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v10, 0);
    return v18(v9);
  }
}

uint64_t TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = type metadata accessor for Parse();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = type metadata accessor for Input();
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v10 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INReportIncidentIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INReportIncidentIntentCSo0ghI8ResponseCGMR);
  v4[34] = v11;
  v12 = *(v11 - 8);
  v4[35] = v12;
  v13 = *(v12 + 64) + 15;
  v4[36] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:), 0, 0);
}

uint64_t TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)()
{
  v34 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v31 = *(v0 + 232);
  v32 = *(v0 + 224);
  v3 = *(v0 + 208);
  v28 = *(v0 + 216);
  v29 = *(v0 + 264);
  v30 = *(v0 + 200);
  v26 = *(v0 + 192);
  v27 = *(v0 + 240);
  static os_log_type_t.info.getter();
  *(v0 + 296) = v3[2];
  os_log(_:dso:log:_:_:)();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntentResponse, INReportIncidentIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v4 = type metadata accessor for App();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 304) = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v7 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v8 = *(*v3 + 136);
  v9 = (*v3 + 136) & 0xFFFFFFFFFFFFLL | 0x94CB000000000000;
  *(v0 + 312) = v8;
  *(v0 + 320) = v9;
  v8(v7);
  type metadata accessor for TrafficIncidentHandleIntentStrategy();
  v10 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v10 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v0 + 16), v10 + 24);
  *(v0 + 136) = v10;
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy, type metadata accessor for TrafficIncidentHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  v11 = RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  (v8)(v33, v11);
  type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy();
  swift_allocObject();
  *(v0 + 144) = TrafficIncidentContinueInAppPunchoutStrategy.init(with:)(v33);
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentContinueInAppPunchoutStrategy and conformance TrafficIncidentContinueInAppPunchoutStrategy, type metadata accessor for TrafficIncidentContinueInAppPunchoutStrategy);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();

  v12 = RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  v13 = (*(*v3 + 160))(v12);
  v8(v33);
  type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy();
  swift_allocObject();
  *(v0 + 152) = TrafficIncidentNeedsDisambiguationStrategy.init(isPommes:with:)(v13 & 1, v33);
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentNeedsDisambiguationStrategy and conformance TrafficIncidentNeedsDisambiguationStrategy, type metadata accessor for TrafficIncidentNeedsDisambiguationStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  v14 = RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  (v8)(v33, v14);
  type metadata accessor for TrafficIncidentUnsupportedValueStrategy();
  swift_allocObject();
  *(v0 + 160) = TrafficIncidentUnsupportedValueStrategy.init(with:)(v33);
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentUnsupportedValueStrategy and conformance TrafficIncidentUnsupportedValueStrategy, type metadata accessor for TrafficIncidentUnsupportedValueStrategy);
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  v15 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v25 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v16 = type metadata accessor for NLIntent();
  v17 = *(*(v16 - 8) + 16);
  v17(v27, v26 + v15, v16);
  v18 = enum case for Parse.NLv3IntentOnly(_:);
  v19 = *(v32 + 104);
  v19(v27, enum case for Parse.NLv3IntentOnly(_:), v28);
  Input.init(parse:)();
  *(v0 + 328) = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  v20 = swift_allocObject();
  *(v0 + 336) = v20;
  *(v20 + 16) = OS_os_log.init(subsystem:category:)();
  v21 = specialized static TrafficIncidentUtils.makeSiriKitIntentWithUserLocation(locationSearchIntent:userLocation:)(v26, v30);
  *(v0 + 344) = v21;
  v17(v31, v26 + v25, v16);
  v19(v31, v18, v28);
  v22 = swift_task_alloc();
  *(v0 + 352) = v22;
  *v22 = v0;
  v22[1] = TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:);
  v23 = *(v0 + 232);

  return TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(v23, v21);
}

{
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v19 = *(v0 + 328);
  v4 = *(v0 + 304);
  v18 = *(v0 + 288);
  v22 = *(v0 + 280);
  v25 = *(v0 + 344);
  v26 = *(v0 + 272);
  v21 = *(v0 + 256);
  v23 = *(v0 + 248);
  v24 = *(v0 + 264);
  v5 = *(v0 + 208);
  v20 = *(v0 + 184);
  (*(v0 + 312))();
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v7);
  (*(v6 + 56))(v7, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v8);
  *(v0 + 176) = v2;
  v10 = *(v9 + 8);
  v11 = lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentBaseRCHStrategy and conformance TrafficIncidentBaseRCHStrategy, type metadata accessor for TrafficIncidentBaseRCHStrategy);
  v10(v0 + 176, v18, v4, v1, v19, v11, v8, v9);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v21 + 8))(v24, v23);
  (*(v22 + 8))(v18, v26);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);

  v16 = *(v0 + 8);

  return v16();
}

{
  v28 = v0;
  v1 = v0[37];
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[45];
    v4 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[21] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v4, v2, "TrafficIncidentBaseFlow makeRCHFlow failure: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[45];
  v11 = v0[42];
  v12 = v0[43];
  v13 = v0[38];
  v14 = v0[35];
  v26 = v0[36];
  v16 = v0[33];
  v15 = v0[34];
  v18 = v0[31];
  v17 = v0[32];
  v19 = v0[23];
  static ExecuteResponse.complete()();

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v26, v15);
  v20 = v0[36];
  v21 = v0[33];
  v23 = v0[29];
  v22 = v0[30];

  v24 = v0[1];

  return v24();
}

uint64_t TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  v4[45] = v1;

  v7 = v4[29];
  v8 = v4[28];
  v9 = v4[27];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:);
  }

  else
  {
    v4[46] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:);
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t closure #1 in TrafficIncidentBaseFlow.makeRCHFlow(locationSearchIntent:userLocation:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo22INReportIncidentIntentCSo0fgH8ResponseCGMR);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v7);
}

uint64_t TrafficIncidentBaseFlow.deinit()
{
  outlined destroy of TrafficIncidentBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper));
  return v0;
}

uint64_t TrafficIncidentBaseFlow.__deallocating_deinit()
{
  outlined destroy of TrafficIncidentBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin23TrafficIncidentBaseFlow_flowHelper));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance TrafficIncidentBaseFlow(uint64_t a1)
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

uint64_t protocol witness for Flow.on(input:) in conformance TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance TrafficIncidentBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TrafficIncidentBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t sub_A0CA8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t outlined destroy of TrafficIncidentBaseFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for TrafficIncidentBaseFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t instantiation function for generic protocol witness table for TrafficIncidentBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow);
  result = lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type TrafficIncidentBaseFlow and conformance TrafficIncidentBaseFlow, type metadata accessor for TrafficIncidentBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_A0F9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for TrafficIncidentBaseFlow()
{
  result = type metadata accessor for TrafficIncidentBaseFlow.State(319);
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

void type metadata completion function for TrafficIncidentBaseFlow.State()
{
  type metadata accessor for LocationSearchIntent();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (LocationSearchIntent, CLLocation)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Error();
      if (v2 <= 0x3F)
      {
        type metadata accessor for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (LocationSearchIntent, CLLocation)()
{
  if (!lazy cache variable for type metadata for (LocationSearchIntent, CLLocation))
  {
    type metadata accessor for LocationSearchIntent();
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for CLLocation, CLLocation_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (LocationSearchIntent, CLLocation));
    }
  }
}

void type metadata accessor for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>()
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INReportIncidentIntentResponse, INReportIncidentIntentResponse_ptr);
    v0 = type metadata accessor for RCHFlowResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RCHFlowResult<INReportIncidentIntent, INReportIncidentIntentResponse>);
    }
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, ",p");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t UnsupportedDeviceFlow.__allocating_init(with:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized UnsupportedDeviceFlow.init(with:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t UnsupportedDeviceFlow.flowHelper.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  outlined init with take of CATType(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t UnsupportedDeviceFlow.init(with:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized UnsupportedDeviceFlow.init(with:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t UnsupportedDeviceFlow.execute()(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v2[32] = *(v4 + 64);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(UnsupportedDeviceFlow.execute(), 0, 0);
}

uint64_t UnsupportedDeviceFlow.execute()()
{
  v1 = v0[29];
  v2 = *(*v1 + 96);
  v3 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xF0F0000000000000;
  v0[35] = v2;
  v0[36] = v3;
  v2();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = (*(v5 + 128))(v4, v5);
  v0[37] = v6;
  v7 = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v0[10] = &type metadata for Common;
  v0[11] = &protocol witness table for Common;
  v0[7] = 2;
  (v2)(v7);
  v8 = v0[15];
  v9 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  v10 = (*(v9 + 80))(v8, v9);
  v0[38] = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v11 = *(*v6 + 112);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v13[1] = UnsupportedDeviceFlow.execute();
  v14 = v0[34];

  return (v16)(v14, v0 + 7, v10);
}

{
  v2 = *v1;
  v3 = (*v1)[39];
  v10 = *v1;
  (*v1)[40] = v0;

  if (v0)
  {
    v5 = v2[37];
    v4 = v2[38];

    v6 = UnsupportedDeviceFlow.execute();
  }

  else
  {
    v7 = v2[37];
    v8 = v2[38];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 7);
    v6 = UnsupportedDeviceFlow.execute();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);
  (*(v0 + 280))();
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 136, v0 + 176);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 176), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  *(v0 + 216) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[40];
  v2 = v0[28];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  static ExecuteResponse.complete()();

  v4 = v0[33];
  v3 = v0[34];

  v5 = v0[1];

  return v5();
}

uint64_t UnsupportedDeviceFlow.execute(completion:)()
{
  type metadata accessor for UnsupportedDeviceFlow();
  lazy protocol witness table accessor for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance UnsupportedDeviceFlow(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance UnsupportedDeviceFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedDeviceFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t specialized UnsupportedDeviceFlow.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(&v9, a2 + 24);
  return a2;
}

uint64_t sub_A1F74()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

unint64_t lazy protocol witness table accessor for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow()
{
  result = lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow;
  if (!lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow)
  {
    type metadata accessor for UnsupportedDeviceFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow);
  }

  return result;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.__allocating_init(intent:flowHelper:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(a1, a2);
  return v4;
}

void *TrafficIncidentRequestSupportedCheckFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v1, *(v0 + 88));
  return v1;
}

void TrafficIncidentRequestSupportedCheckFlow.exitValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 80) = a1;
  v6 = *(v2 + 88);
  *(v2 + 88) = a2;
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v5, v6);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v3 + 24) = v6;
  *(v3 + 72) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for RuntimeError();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000002CLL;
  *(v8 + 24) = 0x80000000000C02B0;
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
  v9 = swift_allocError();
  *v10 = v8;
  *(v3 + 80) = v9;
  *(v3 + 88) = 1;
  *(v3 + 16) = a1;
  outlined init with take of CATType(a2, v3 + 32);
  return v3;
}

void outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.__allocating_init(intent:)(uint64_t a1)
{
  v4[3] = &type metadata for FlowHelperImpl;
  v4[4] = &protocol witness table for FlowHelperImpl;
  v4[0] = swift_allocObject();
  FlowHelperImpl.init()((v4[0] + 16));
  return (*(v1 + 144))(a1, v4);
}

uint64_t sub_A247C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.execute(completion:)()
{
  type metadata accessor for TrafficIncidentRequestSupportedCheckFlow();
  _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type TrafficIncidentRequestSupportedCheckFlow and conformance TrafficIncidentRequestSupportedCheckFlow, v0, type metadata accessor for TrafficIncidentRequestSupportedCheckFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.execute()(uint64_t a1)
{
  v2[69] = v1;
  v2[68] = a1;
  v3 = type metadata accessor for TemplatingResult();
  v2[70] = v3;
  v4 = *(v3 - 8);
  v2[71] = v4;
  v2[72] = *(v4 + 64);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[78] = swift_task_alloc();
  v6 = type metadata accessor for ActivityType();
  v2[79] = v6;
  v7 = *(v6 - 8);
  v2[80] = v7;
  v8 = *(v7 + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

id TrafficIncidentRequestSupportedCheckFlow.execute()()
{
  v1 = (*(**(v0[69] + 16) + 168))();
  if (LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v1) == 0x796669646F6DLL && v2 == 0xE600000000000000)
  {

    goto LABEL_10;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
LABEL_10:
    v29 = v0[84];
    v30 = v0[80];
    v31 = v0[79];
    static SiriKitEventSender.current.getter();
    v97 = v0[56];
    __swift_project_boxed_opaque_existential_1(v0 + 52, v0[55]);
    (*(v30 + 104))(v29, enum case for ActivityType.failed(_:), v31);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v32 = result;
      v33 = v0[84];
      v34 = v0[78];
      v35 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
      v37 = type metadata accessor for SiriKitReliabilityCodes();
      v38 = *(v37 - 8);
      (*(v38 + 104))(v34, v36, v37);
      (*(v38 + 56))(v34, 0, 1, v37);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 52);
      type metadata accessor for UnsupportedError();
      v39 = swift_allocObject();
      *(v39 + 16) = 0xD000000000000027;
      *(v39 + 24) = 0x80000000000C3930;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError);
      v40 = swift_allocError();
      *v41 = v39;
      (*(*v35 + 128))(v40, 1);
      v42 = v35[3];
      v0[60] = type metadata accessor for TrafficIncident(0);
      v0[61] = &protocol witness table for TrafficIncident;
      __swift_allocate_boxed_opaque_existential_0(v0 + 57);
      swift_storeEnumTagMultiPayload();
      v43 = v35[7];
      v44 = v35[8];
      __swift_project_boxed_opaque_existential_1(v35 + 4, v43);
      v23 = (*(v44 + 80))(v43, v44);
      v0[85] = v23;
      v45 = *(*v42 + 112);
      v100 = (v45 + *v45);
      v46 = v45[1];
      v47 = swift_task_alloc();
      v0[86] = v47;
      *v47 = v0;
      v47[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v27 = v0[77];
      v28 = v0 + 57;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_26;
  }

  v5 = v0[69];
  if (TrafficIncidentRequestSupportedCheckFlow.isReportMapsProblems()())
  {
    v6 = v0[83];
    v7 = v0[80];
    v8 = v0[79];
    static SiriKitEventSender.current.getter();
    v96 = v0[41];
    __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
    (*(v7 + 104))(v6, enum case for ActivityType.failed(_:), v8);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v10 = result;
      v11 = v0[83];
      v12 = v0[78];
      v13 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
      v15 = type metadata accessor for SiriKitReliabilityCodes();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v12, v14, v15);
      (*(v16 + 56))(v12, 0, 1, v15);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
      type metadata accessor for UnsupportedError();
      v17 = swift_allocObject();
      *(v17 + 16) = 0xD000000000000025;
      *(v17 + 24) = 0x80000000000C3900;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError);
      v18 = swift_allocError();
      *v19 = v17;
      (*(*v13 + 128))(v18, 1);
      v20 = v13[3];
      v0[45] = type metadata accessor for TrafficIncident(0);
      v0[46] = &protocol witness table for TrafficIncident;
      __swift_allocate_boxed_opaque_existential_0(v0 + 42);
      swift_storeEnumTagMultiPayload();
      v21 = v13[7];
      v22 = v13[8];
      __swift_project_boxed_opaque_existential_1(v13 + 4, v21);
      v23 = (*(v22 + 80))(v21, v22);
      v0[90] = v23;
      v24 = *(*v20 + 112);
      v100 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      v0[91] = v26;
      *v26 = v0;
      v26[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v27 = v0[75];
      v28 = v0 + 42;
LABEL_12:
      v48 = v23;
LABEL_13:

      return (v100)(v27, v28, v48);
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v49 = v0[69];
  if ((TrafficIncidentRequestSupportedCheckFlow.isAppSupported()() & 1) == 0)
  {
    v53 = v0[82];
    v54 = v0[80];
    v55 = v0[79];
    static SiriKitEventSender.current.getter();
    v98 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v54 + 104))(v53, enum case for ActivityType.failed(_:), v55);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v56 = result;
      v57 = v0[82];
      v58 = v0[78];
      v59 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = enum case for SiriKitReliabilityCodes.intentNotSupportedByApp(_:);
      v61 = type metadata accessor for SiriKitReliabilityCodes();
      v62 = *(v61 - 8);
      (*(v62 + 104))(v58, v60, v61);
      (*(v62 + 56))(v58, 0, 1, v61);

      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      type metadata accessor for UnsupportedError();
      v63 = swift_allocObject();
      *(v63 + 16) = 0xD000000000000011;
      *(v63 + 24) = 0x80000000000C38C0;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError);
      v64 = swift_allocError();
      *v65 = v63;
      (*(*v59 + 128))(v64, 1);
      v66 = v59[3];
      v0[10] = type metadata accessor for TrafficIncident(0);
      v0[11] = &protocol witness table for TrafficIncident;
      __swift_allocate_boxed_opaque_existential_0(v0 + 7);
      swift_storeEnumTagMultiPayload();
      v67 = v59[7];
      v68 = v59[8];
      __swift_project_boxed_opaque_existential_1(v59 + 4, v67);
      v23 = (*(v68 + 80))(v67, v68);
      v0[95] = v23;
      v69 = *(*v66 + 112);
      v100 = (v69 + *v69);
      v70 = v69[1];
      v71 = swift_task_alloc();
      v0[96] = v71;
      *v71 = v0;
      v71[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v27 = v0[74];
      v28 = v0 + 7;
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  if (((*(*v0[69] + 176))() & 1) == 0)
  {
    v72 = v0[81];
    v73 = v0[80];
    v74 = v0[79];
    static SiriKitEventSender.current.getter();
    v99 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    (*(v73 + 104))(v72, enum case for ActivityType.failed(_:), v74);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INReportIncidentIntent, INReportIncidentIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (result)
    {
      v75 = result;
      v95 = v0[81];
      v76 = v0[78];
      v77 = v0[69];
      type metadata accessor for SiriKitEvent();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = enum case for SiriKitReliabilityCodes.targetDeviceIncompatible(_:);
      v79 = type metadata accessor for SiriKitReliabilityCodes();
      v80 = *(v79 - 8);
      (*(v80 + 104))(v76, v78, v79);
      (*(v80 + 56))(v76, 0, 1, v79);

      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
      type metadata accessor for UnsupportedError();
      v81 = swift_allocObject();
      *(v81 + 16) = 0xD000000000000014;
      *(v81 + 24) = 0x80000000000C38E0;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type UnsupportedError and conformance UnsupportedError, 255, type metadata accessor for UnsupportedError);
      v82 = swift_allocError();
      *v83 = v81;
      (*(*v77 + 128))(v82, 1);
      v84 = v77[3];
      v0[25] = type metadata accessor for TrafficIncident(0);
      v0[26] = &protocol witness table for TrafficIncident;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      v86 = v77[7];
      v87 = v77[8];
      __swift_project_boxed_opaque_existential_1(v77 + 4, v86);
      (*(v87 + 32))(v86, v87);
      v88 = v0[31];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
      *boxed_opaque_existential_0 = DeviceState.deviceType.getter();
      swift_storeEnumTagMultiPayload();
      v89 = v77[7];
      v90 = v77[8];
      __swift_project_boxed_opaque_existential_1(v77 + 4, v89);
      v91 = (*(v90 + 80))(v89, v90);
      v0[100] = v91;
      v92 = *(*v84 + 112);
      v100 = (v92 + *v92);
      v93 = v92[1];
      v94 = swift_task_alloc();
      v0[101] = v94;
      *v94 = v0;
      v94[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
      v27 = v0[73];
      v28 = v0 + 22;
      v48 = v91;
      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v50 = swift_task_alloc();
  v0[105] = v50;
  *v50 = v0;
  v50[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v51 = v0[69];
  v52 = v0[68];

  return TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation()(v52);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.execute()()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *(*v1 + 680);
  v7 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 456));
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v18, v7, v8);
  (*(v4 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 496);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v2, v5);
  outlined init with take of CATType((v0 + 496), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = type metadata accessor for SimpleOutputFlowAsync();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 704) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v14 = async function pointer to SimpleOutputFlowAsync.execute()[1];
  v15 = swift_task_alloc();
  *(v0 + 712) = v15;
  *v15 = v0;
  v15[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v16 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v16);
}

{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[77], v0[70]);
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v4 = *(*v1 + 720);
  v7 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 336));
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v18, v7, v8);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 376);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v5);
  outlined init with take of CATType((v0 + 376), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = type metadata accessor for SimpleOutputFlowAsync();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 744) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v14 = async function pointer to SimpleOutputFlowAsync.execute()[1];
  v15 = swift_task_alloc();
  *(v0 + 752) = v15;
  *v15 = v0;
  v15[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v16 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v16);
}

{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[75], v0[70]);
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v4 = *(*v1 + 760);
  v7 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v18, v7, v8);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 96);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v5);
  outlined init with take of CATType((v0 + 96), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = type metadata accessor for SimpleOutputFlowAsync();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 784) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v14 = async function pointer to SimpleOutputFlowAsync.execute()[1];
  v15 = swift_task_alloc();
  *(v0 + 792) = v15;
  *v15 = v0;
  v15[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v16 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v16);
}

{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 784);
  v4 = *v0;

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[74], v0[70]);
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v4 = *(*v1 + 800);
  v7 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 176));
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 216));
    v5 = TrafficIncidentRequestSupportedCheckFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = v6[7];
  v8 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
  (*(v8 + 104))(v18, v7, v8);
  (*(v4 + 16))(v1, v2, v5);
  outlined init with copy of DeviceState((v6 + 4), v0 + 256);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v5);
  outlined init with take of CATType((v0 + 256), v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = type metadata accessor for SimpleOutputFlowAsync();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 824) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v14 = async function pointer to SimpleOutputFlowAsync.execute()[1];
  v15 = swift_task_alloc();
  *(v0 + 832) = v15;
  *v15 = v0;
  v15[1] = TrafficIncidentRequestSupportedCheckFlow.execute();
  v16 = *(v0 + 544);

  return SimpleOutputFlowAsync.execute()(v16);
}

{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 824);
  v4 = *v0;

  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.execute(), 0, 0);
}

{
  (*(v0[71] + 8))(v0[73], v0[70]);
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];

  v11 = v0[1];

  return v11();
}

{
  v1 = *v0;
  v2 = *(*v0 + 840);
  v15 = *v0;

  v3 = v1[84];
  v4 = v1[83];
  v5 = v1[82];
  v6 = v1[81];
  v7 = v1[78];
  v8 = v1[77];
  v9 = v1[76];
  v10 = v1[75];
  v14 = v1[74];
  v11 = v1[73];

  v12 = *(v15 + 8);

  return v12();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 57);
  v1 = v0[87];
  v2 = v0[68];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v3 = type metadata accessor for SimpleOutputFlowAsync();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];

  v16 = v0[1];

  return v16();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 42);
  v1 = v0[92];
  v2 = v0[68];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v3 = type metadata accessor for SimpleOutputFlowAsync();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];

  v16 = v0[1];

  return v16();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[97];
  v2 = v0[68];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v3 = type metadata accessor for SimpleOutputFlowAsync();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];

  v16 = v0[1];

  return v16();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  v1 = v0[102];
  v2 = v0[68];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v3 = type metadata accessor for SimpleOutputFlowAsync();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[67] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[73];

  v16 = v0[1];

  return v16();
}

uint64_t closure #3 in TrafficIncidentRequestSupportedCheckFlow.execute()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for App();
  (*(**(a2 + 16) + 192))();
  App.__allocating_init(appIdentifier:)();
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

uint64_t closure #4 in TrafficIncidentRequestSupportedCheckFlow.execute()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for App();
  (*(**(a2 + 16) + 192))();
  App.__allocating_init(appIdentifier:)();
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.isDeviceSupported()()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
  (*(v3 + 32))(v18, v2, v3);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v4 = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = v1[7];
    v7 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v6);
    (*(v7 + 32))(v18, v6, v7);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    if (dispatch thunk of DeviceState.isPhone.getter())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      v5 = 1;
    }

    else
    {
      v8 = v1[7];
      v9 = v1[8];
      __swift_project_boxed_opaque_existential_1(v1 + 4, v8);
      (*(v9 + 32))(v17, v8, v9);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v10 = dispatch thunk of DeviceState.isPad.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      if (v10 & 1) != 0 || (v11 = v1[7], v12 = v1[8], __swift_project_boxed_opaque_existential_1(v1 + 4, v11), (*(v12 + 32))(v18, v11, v12), __swift_project_boxed_opaque_existential_1(v18, v19), v13 = dispatch thunk of DeviceState.isCarPlay.getter(), __swift_destroy_boxed_opaque_existential_0Tm(v18), (v13))
      {
        v5 = 1;
      }

      else
      {
        v14 = v1[7];
        v15 = v1[8];
        __swift_project_boxed_opaque_existential_1(v1 + 4, v14);
        (*(v15 + 32))(v18, v14, v15);
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v5 = dispatch thunk of DeviceState.isPod.getter();
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }
    }
  }

  return v5 & 1;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation(), 0, 0);
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.getPreciseLocation()()
{
  v1 = *(*(v0 + 4) + 16);
  v2 = (*(*v1 + 240))();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v0[2] = 0.0;
  v5 = v0 + 2;
  v6 = specialized String.withCString<A>(_:)(v2, v4);

  v8 = v0[2];
  v9 = (*(*v1 + 248))(v7);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *v5 = 0.0;
  v12 = specialized String.withCString<A>(_:)(v9, v11);

  v13 = *(v0 + 4);
  if (v6 && v12)
  {
    v14 = [objc_allocWithZone(CLLocation) initWithLatitude:*v5 longitude:v8];
    v15 = static os_log_type_t.info.getter();
    v16 = v13[9];
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_0, v16, v15, "location from NL intent is: %@", v17, 0xCu);
      outlined destroy of NSObject?(v18);
    }

    v20 = *(v0 + 3);
    v21 = *(**(v0 + 4) + 128);
    v22 = v14;
    v21(v14, 0);
    static ExecuteResponse.complete()();
  }

  else
  {
    v23 = *(v0 + 3);
    (*(*v13 + 128))(0, 2);
    static ExecuteResponse.complete()();
  }

  v24 = *(v0 + 1);

  return v24();
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.isAppSupported()()
{
  v1 = (*(**(v0 + 16) + 192))();
  v3 = v2;
  v4 = static os_log_type_t.info.getter();
  v5 = *(v0 + 72);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v15[0] = v1;
    v15[1] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v5, v4, "appName is %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  if (v3)
  {
    v15[0] = 1936744813;
    v15[1] = 0xE400000000000000;
    v13 = v1;
    v14 = v3;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      strcpy(v15, "com.apple.Maps");
      HIBYTE(v15[1]) = -18;
      v13 = v1;
      v14 = v3;
      v11 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v11)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.isReportMapsProblems()()
{
  v1 = (*(**(v0 + 16) + 184))();
  if (v1 < 8)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_6;
  }

  if (v1 == 8)
  {
    v2 = 1;
LABEL_6:

    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t protocol witness for Flow.execute() in conformance TrafficIncidentRequestSupportedCheckFlow(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance TrafficIncidentRequestSupportedCheckFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 120))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t MockTrafficIncidentRequestSupportedCheckFlow.__allocating_init(intent:flowHelper:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  outlined init with copy of DeviceState(a2, v6);
  TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(a1, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v4;
}

uint64_t MockTrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of DeviceState(a2, v6);
  TrafficIncidentRequestSupportedCheckFlow.init(intent:flowHelper:)(a1, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v2;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t TrafficIncidentRequestSupportedCheckFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_A61C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_A6210(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *(a1 + 8);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin036TrafficIncidentRequestSupportedCheckB0C0gH9ExitValueO(uint64_t a1)
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

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t DeviceState.deviceType.getter()
{
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 1;
  }

  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 2;
  }

  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 3;
  }

  return 0;
}

uint64_t TemplatingResult.getDialogAsSummaryOutput(nlContext:deviceState:)@<X0>(uint64_t *a1@<X8>)
{
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  a1[3] = type metadata accessor for AceOutput();
  a1[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(a1);
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  return outlined destroy of Mirror.DisplayStyle?(v3, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
}

uint64_t TemplatingResult.getDialogAsSimpleOutputFlow(_:)(void *a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 104))(v15, v6, v7);
  (*(v4 + 16))(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  outlined init with copy of DeviceState(a1, v14);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  outlined init with take of CATType(v14, v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = type metadata accessor for SimpleOutputFlowAsync();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
}

uint64_t closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:), 0, 0);
}

uint64_t closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 32))(v6, v7);
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v4[3] = v8;
  v4[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v4);
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  outlined destroy of Mirror.DisplayStyle?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_A69EC()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t static UsoRequest.makeSDAForPromptForContactValue()()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = UsoTaskBuilder_noVerb_common_Person.init()();
  v12 = type metadata accessor for UsoEntityBuilder_common_Person();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  static Siri_Nlu_External_SystemPrompted.from(_:)(v11, v7);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v1 + 16))(v5, v7, v0);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();

  return (*(v1 + 8))(v7, v0);
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static UsoRequest.makeSDAForYesNoCancel()@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v1 = *(v29 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v29);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UserCancelled();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for Siri_Nlu_External_UserAccepted();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v28 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v27 - v21;
  Siri_Nlu_External_UserDialogAct.init()();
  Siri_Nlu_External_UserAccepted.init()();
  Siri_Nlu_External_UserDialogAct.accepted.setter();
  Siri_Nlu_External_UserCancelled.init()();
  Siri_Nlu_External_UserDialogAct.cancelled.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v16 + 16))(v20, v22, v15);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  v23 = v1[2];
  v24 = v29;
  v23(v8, v10, v29);
  Siri_Nlu_External_SystemDialogAct.init()();
  v23(v5, v8, v24);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  v25 = v1[1];
  v25(v8, v24);
  v25(v10, v24);
  return (*(v16 + 8))(v22, v28);
}

uint64_t Siri_Nlu_External_UserDialogAct.init(_:)(uint64_t a1)
{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, &type metadata accessor for Siri_Nlu_External_UserStatedTask, &Siri_Nlu_External_UserDialogAct.init(), &Siri_Nlu_External_UserDialogAct.userStatedTask.setter);
}

{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, &type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &Siri_Nlu_External_UserDialogAct.init(), &Siri_Nlu_External_UserDialogAct.wantedToProceed.setter);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), void (*a4)(char *))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin();
  v12 = &v14 - v11;
  a3(v10);
  (*(v8 + 16))(v12, a1, v7);
  a4(v12);
  return (*(v8 + 8))(a1, v7);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  static Siri_Nlu_External_UserStatedTask.from(_:)(a1, &v11 - v8);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v3 + 16))(v7, v9, v2);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t static Siri_Nlu_External_UserStatedTask.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v27 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_B8FB0;
  *(v23 + 32) = a1;
  v24 = type metadata accessor for UsoBuilderOptions();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of Mirror.DisplayStyle?(v22, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v4 + 56))(v18, 0, 1, v3);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v18, v16);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v16, v13);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v16, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of Mirror.DisplayStyle?(v13, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v25 = v28;
    (*(v4 + 32))(v28, v13, v3);
    (*(v4 + 16))(v27, v25, v3);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of Mirror.DisplayStyle?(v16, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v4 + 8))(v25, v3);
  }

  return outlined destroy of Mirror.DisplayStyle?(v18, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v31 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v31 - v23;
  __chkstk_darwin(v22);
  v26 = &v31 - v25;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v2 + 56))(v26, 0, 1, v1);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v26, v24);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v24, v21);
  if ((*(v2 + 48))(v21, 1, v1) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v24, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of Mirror.DisplayStyle?(v21, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v27 = v33;
    (*(v2 + 32))(v33, v21, v1);
    (*(v2 + 16))(v32, v27, v1);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of Mirror.DisplayStyle?(v24, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v2 + 8))(v27, v1);
  }

  v28 = v8[2];
  v28(v14, v16, v7);
  Siri_Nlu_External_UserDialogAct.init()();
  v28(v34, v14, v7);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  v29 = v8[1];
  v29(v14, v7);
  v29(v16, v7);
  return outlined destroy of Mirror.DisplayStyle?(v26, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t Siri_Nlu_External_UserStatedTask.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return outlined destroy of Mirror.DisplayStyle?(v5, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of Mirror.DisplayStyle?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return (*(v7 + 8))(v13, v6);
  }
}

unint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v2 = result;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    result = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v1 = *(result + 32);

LABEL_6:

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  v36 = type metadata accessor for Google_Protobuf_StringValue();
  v34 = *(v36 - 8);
  v0 = *(v34 + 64);
  __chkstk_darwin(v36);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v35 = &v34 - v19;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v13 + 8))(v16, v12);
  v20 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  result = (*(v8 + 8))(v11, v7);
  v37 = *(v20 + 16);
  if (v37)
  {
    v22 = 0;
    v38 = v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = (v34 + 8);
    v24 = v39;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v3 + 16))(v6, v38 + *(v3 + 72) * v22, v24);
      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0x73746361746E6F43 && v26 == 0xE800000000000000)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v28 = Google_Protobuf_StringValue.value.getter();
      v30 = v29;
      (*v23)(v2, v36);
      if (v28 == 0x64695F6D657469 && v30 == 0xE700000000000000)
      {

LABEL_16:

        v32 = v35;
        v24 = v39;
        (*(v3 + 32))(v35, v6, v39);
        v31 = 0;
        goto LABEL_17;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_16;
      }

LABEL_4:
      ++v22;
      v24 = v39;
      result = (*(v3 + 8))(v6, v39);
      if (v37 == v22)
      {

        v31 = 1;
        goto LABEL_15;
      }
    }
  }

  v31 = 1;
  v24 = v39;
LABEL_15:
  v32 = v35;
LABEL_17:
  (*(v3 + 56))(v32, v31, 1, v24);
  if ((*(v3 + 48))(v32, 1, v24) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v32, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    return 0;
  }

  else
  {
    v33 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v3 + 8))(v32, v24);
    return v33;
  }
}

uint64_t UsoIdentifierAppBundle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73746361746E6F43;
  }
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64695F6D657469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6369746E616D6573;
}

uint64_t static Siri_Nlu_External_SystemPrompted.from(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v34 = a2;
  v35 = a4;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v31 - v22;
  __chkstk_darwin(v21);
  v25 = &v31 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_B8FB0;
  *(v26 + 32) = a1;
  v27 = type metadata accessor for UsoBuilderOptions();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of Mirror.DisplayStyle?(v15, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();

  (*(v6 + 56))(v25, 0, 1, v5);
  v28 = outlined init with copy of Siri_Nlu_External_UsoGraph?(v25, v23);
  v34(v28);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v23, v20);
  if ((*(v6 + 48))(v20, 1, v5) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v23, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of Mirror.DisplayStyle?(v20, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v6 + 32))(v11, v20, v5);
    v29 = v32;
    (*(v6 + 16))(v32, v11, v5);
    v33(v29);
    outlined destroy of Mirror.DisplayStyle?(v23, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v6 + 8))(v11, v5);
  }

  return outlined destroy of Mirror.DisplayStyle?(v25, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_SystemOffered.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  v18 = *(v3 + 16);
  v18(v9, v20[0], v2);
  Siri_Nlu_External_UserDialogAct.init()();
  v18(v7, v9, v2);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v3 + 8))(v9, v2);
  Siri_Nlu_External_SystemOffered.init()();
  (*(v11 + 16))(v15, v17, v10);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  return (*(v11 + 8))(v17, v10);
}

GeoFlowDelegatePlugin::UsoIdentifierAppBundle_optional __swiftcall UsoIdentifierAppBundle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_UsoIdentifierAppBundle_siriNL;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_UsoIdentifierAppBundle_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierAppBundle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x73746361746E6F43;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x80000000000BFD40;
  }

  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0x73746361746E6F43;
  }

  if (*a2)
  {
    v7 = 0x80000000000BFD40;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierAppBundle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierAppBundle()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierAppBundle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierAppBundle@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierAppBundle(unint64_t *a1@<X8>)
{
  v2 = 0x80000000000BFD40;
  v3 = 0x73746361746E6F43;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000000000BFD60;
  if (v2 == 1)
  {
    v5 = 0x80000000000BFD60;
  }

  else
  {
    v3 = 0x6369746E616D6573;
    v5 = 0xEE0065756C61765FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x64695F6D657469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64695F6D657469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierNamespace()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UsoIdentifierNamespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000000000BFD60;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64695F6D657469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t specialized UsoIdentifierNamespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle;
  if (!lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
  }

  return result;
}

uint64_t SaveParkingHandleIntentStrategy.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t SaveParkingHandleIntentStrategy.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  return _swift_task_switch(SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

uint64_t SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v1 = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo021INSaveParkingLocationD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo021INSaveParkingLocationD0CSo0ghiD8ResponseCGMR);
  v2 = IntentResolutionRecord.intentResponse.getter();
  v3 = [v2 parkingLocation];
  *(v0 + 240) = v3;

  if (v3)
  {
    v4 = [v3 location];
    *(v0 + 248) = v4;
    if (v4)
    {
      v5 = *(v0 + 224);
      v6 = CLLocation.makeDialogLocation()();
      *(v0 + 256) = v6;
      v7 = IntentResolutionRecord.intentResponse.getter();
      v8 = [v7 parkingNote];

      if (v8)
      {
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      *(v0 + 264) = v11;
      v22 = *(v0 + 224);
      v23 = (*(**(v0 + 232) + 112))();
      *(v0 + 272) = v23;
      *(v0 + 120) = &type metadata for SaveParkingLocation;
      *(v0 + 128) = &protocol witness table for SaveParkingLocation;
      *(v0 + 96) = v6;
      *(v0 + 104) = v9;
      *(v0 + 112) = v11;

      v24 = IntentResolutionRecord.intentResponse.getter();
      v25 = [v24 parkingNote];

      if (v25)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      *(v0 + 280) = v28;
      v29 = *(*v23 + 112);
      v33 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 288) = v31;
      *v31 = v0;
      v31[1] = SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

      return v33(v0 + 56, v0 + 96, v3, v26, v28);
    }

    v16 = *(**(v0 + 232) + 128);
    v32 = (v16 + *v16);
    v17 = v16[1];
    v14 = swift_task_alloc();
    *(v0 + 312) = v14;
    *v14 = v0;
    v15 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v12 = *(**(v0 + 232) + 128);
    v32 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v15 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  v14[1] = v15;
  v18 = *(v0 + 224);
  v19 = *(v0 + 232);
  v20 = *(v0 + 216);

  return v32(v20, v18);
}

{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return _swift_task_switch(SaveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 232);
  v2 = (v0 + 56);
  if (*(v0 + 80))
  {
    outlined init with take of CATType(v2, v0 + 16);
    v3 = static os_log_type_t.default.getter();
    v4 = v1[2];
    outlined init with copy of DeviceState(v0 + 16, v0 + 136);
    v5 = os_log_type_enabled(v4, v3);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 240);
    v9 = *(v0 + 248);
    if (v5)
    {
      v25 = *(v0 + 240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      outlined init with copy of DeviceState(v0 + 136, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v27);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_0, v4, v3, "buildRFoutput: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {
      v23 = *(v0 + 256);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    outlined init with take of CATType((v0 + 16), *(v0 + 216));
    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    outlined destroy of Output?(v2);
    v16 = *(*v1 + 128);
    v26 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 296) = v18;
    *v18 = v0;
    v18[1] = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);

    return v26(v21, v19);
  }
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance SaveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

unint64_t lazy protocol witness table accessor for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy()
{
  result = lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy)
  {
    type metadata accessor for SaveParkingHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy);
  }

  return result;
}

uint64_t ShareETAContactConfirmationStrategy.__allocating_init(isPOMMES:isUSO:)(char a1, char a2)
{
  v4 = swift_allocObject();
  ShareETAContactConfirmationStrategy.init(isPOMMES:isUSO:)(a1, a2);
  return v4;
}

uint64_t ShareETAContactConfirmationStrategy.isPOMMES.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ShareETAContactConfirmationStrategy.isUSO.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t ShareETAContactConfirmationStrategy.init(isPOMMES:isUSO:)(char a1, char a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v5 = OS_os_log.init(subsystem:category:)();
  *(v2 + 24) = 0;
  *(v2 + 16) = v5;
  type metadata accessor for CATService();
  v6 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v6 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v6 + 32) = OS_os_log.init(subsystem:category:)();
  *(v6 + 16) = 0;
  *(v2 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_B7D60;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v8 + 32) = specialized OntologyNode.javaClassName.getter();
  *(v8 + 40) = v9;
  v10 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v13 = specialized OntologyNode.javaClassName.getter();
  v15 = v14;

  *(v8 + 48) = v13;
  *(v8 + 56) = v15;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v16 = specialized OntologyNode.javaClassName.getter();
  v18 = v17;

  *(v8 + 64) = v16;
  *(v8 + 72) = v18;
  *(v2 + 40) = v8;
  swift_beginAccess();
  *(v2 + 24) = a1 & 1;
  swift_beginAccess();
  *(v2 + 25) = a2 & 1;
  return v2;
}

uint64_t ShareETAContactConfirmationStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Parse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for Parse.NLv3IntentOnly(_:))
  {
    static os_log_type_t.info.getter();
    v12 = v2[2];
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    if (v11 == enum case for Parse.pommesResponse(_:))
    {
      (*(v7 + 8))(v10, v6);
      static os_log_type_t.info.getter();
      v13 = v2[2];
      os_log(_:dso:log:_:_:)();
      (*(*v2 + 128))(1);
      return ShareETAContactConfirmationStrategy.confirmationHandle(input:)(a1, a2);
    }

    v15 = enum case for Parse.uso(_:);
    v16 = v11;
    static os_log_type_t.info.getter();
    v17 = v3[2];
    if (v16 != v15)
    {
      os_log(_:dso:log:_:_:)();
      static ActionForInput.ignore()();
      return (*(v7 + 8))(v10, v6);
    }

    os_log(_:dso:log:_:_:)();
    (*(*v3 + 152))(1);
  }

  (*(v7 + 8))(v10, v6);
  return ShareETAContactConfirmationStrategy.confirmationHandle(input:)(a1, a2);
}

uint64_t ShareETAContactConfirmationStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for Parse();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t ShareETAContactConfirmationStrategy.parseConfirmationResponse(input:)()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  type metadata accessor for GeoParse();
  Input.parse.getter();
  static GeoParse.getDomainIntent(parse:)(v1, (v0 + 16));
  (*(v2 + 8))(v1, v3);
  outlined init with copy of GeoIntent?(v0 + 16, v0 + 56);
  if (!*(v0 + 80))
  {
    outlined destroy of Mirror.DisplayStyle?(v0 + 56, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
  type metadata accessor for LocationSearchIntent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    lazy protocol witness table accessor for type Errors and conformance Errors();
    swift_allocError();
    *v6 = 0xD00000000000001CLL;
    *(v6 + 8) = 0x80000000000C3AC0;
    *(v6 + 16) = 0;
    swift_willThrow();
LABEL_7:
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    outlined destroy of Mirror.DisplayStyle?(v0 + 16, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);

    v9 = *(v0 + 8);
    goto LABEL_8;
  }

  v5 = *(**(v0 + 96) + 152);
  if (v5() == 3)
  {

    goto LABEL_6;
  }

  v11 = v5();
  if ((v11 - 1) >= 2)
  {
    if (v11)
    {
      lazy protocol witness table accessor for type Errors and conformance Errors();
      swift_allocError();
      *v19 = 0xD000000000000020;
      *(v19 + 8) = 0x80000000000C3AE0;
      *(v19 + 16) = 0;
      swift_willThrow();

      goto LABEL_7;
    }

    v12 = &enum case for ConfirmationResponse.confirmed(_:);
  }

  else
  {
    v12 = &enum case for ConfirmationResponse.rejected(_:);
  }

  v13 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  v16 = *v12;
  v17 = type metadata accessor for ConfirmationResponse();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14, v16, v17);
  (*(v18 + 56))(v14, 0, 1, v17);
  SimpleConfirmationResponseProvider.init(_:)();

  outlined destroy of Mirror.DisplayStyle?(v0 + 16, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);

  v9 = *(v0 + 8);
LABEL_8:

  return v9();
}

uint64_t ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for PommesContext.Source();
  v3[37] = v5;
  v6 = *(v5 - 8);
  v3[38] = v6;
  v7 = *(v6 + 64) + 15;
  v3[39] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v9 = type metadata accessor for NLContextUpdate();
  v3[41] = v9;
  v10 = *(v9 - 8);
  v3[42] = v10;
  v11 = *(v10 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v12 = type metadata accessor for TemplatingResult();
  v3[45] = v12;
  v13 = *(v12 - 8);
  v3[46] = v13;
  v14 = *(v13 + 64) + 15;
  v3[47] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v16 = type metadata accessor for ActivityType();
  v3[49] = v16;
  v17 = *(v16 - 8);
  v3[50] = v17;
  v18 = *(v17 + 64) + 15;
  v3[51] = swift_task_alloc();
  v19 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v3[52] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

id ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[34];
  type metadata accessor for DialogPerson();
  v6 = v5;
  static Device.current.getter();
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v27 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
  v0[53] = v27;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static SiriKitEventSender.current.getter();
  v26 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  (*(v4 + 104))(v2, enum case for ActivityType.confirmation(_:), v3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v9 = result;
    v10 = v0[51];
    v11 = v0[48];
    v25 = v0[35];
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = enum case for SiriKitReliabilityCodes.normal(_:);
    v13 = type metadata accessor for SiriKitReliabilityCodes();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v11, v12, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v15 = *(v25 + 32);
    v0[15] = type metadata accessor for ShareETA(0);
    v0[16] = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
    *boxed_opaque_existential_0 = v27;
    v18 = enum case for BehaviorAfterSpeaking.listen(_:);
    v19 = type metadata accessor for BehaviorAfterSpeaking();
    (*(*(v19 - 8) + 104))(boxed_opaque_existential_0 + v17, v18, v19);
    swift_storeEnumTagMultiPayload();

    v20 = static DialogHelper.globals.getter();
    v0[54] = v20;
    v21 = *(*v15 + 112);
    v28 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[55] = v23;
    *v23 = v0;
    v23[1] = ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v24 = v0[47];

    return v28(v24, v0 + 12, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v5 = ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));
    v5 = ShareETAContactConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v51 = v0;
  v1 = v0;
  v2 = v0[44];
  v3 = v0[35];
  v4 = v3[5];
  v5 = static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)();
  v6 = (*(*v3 + 120))(v5);
  v7 = v0[35];
  if (v6)
  {
    v8 = v7[2];
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "makePromptForConfirmation adding Pommes Context", v10, 2u);
    }

    v11 = v0[44];
    v12 = v0[40];
    (*(v0[38] + 104))(v0[39], enum case for PommesContext.Source.pluginDefined(_:), v0[37]);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v13 = type metadata accessor for PommesContext();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
    NLContextUpdate.pommesContext.setter();
  }

  else
  {
    v14 = v0[35];
    if ((*(*v7 + 144))())
    {
      v15 = v0[44];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
      v16 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_B89E0;
      static UsoRequest.makeSDAForYesNoCancel()(v19 + v18);
      NLContextUpdate.nluSystemDialogActs.setter();
    }
  }

  v20 = v1[35];
  v21 = static os_log_type_t.info.getter();
  v22 = *(v20 + 16);
  if (os_log_type_enabled(v22, v21))
  {
    v24 = v1[43];
    v23 = v1[44];
    v26 = v1[41];
    v25 = v1[42];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v50 = v28;
    *v27 = 136315138;
    swift_beginAccess();
    (*(v25 + 16))(v24, v23, v26);
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v50);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_0, v22, v21, "makePromptForConfirmation: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  v44 = v1[52];
  v45 = v1[51];
  v32 = v1[47];
  v33 = v1[46];
  v42 = v1[53];
  v43 = v1[45];
  v34 = v1[44];
  v46 = v1[48];
  v47 = v1[43];
  v35 = v1[41];
  v36 = v1[42];
  v48 = v1[40];
  v49 = v1[39];
  v37 = v1[36];
  v38 = v1[33];
  swift_beginAccess();
  (*(v36 + 16))(v37, v34, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  static Device.current.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v39 = type metadata accessor for AceOutput();
  *(v1 + 12) = 0u;
  v1[26] = 0;
  *(v1 + 11) = 0u;
  v38[3] = v39;
  v38[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v38);
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Mirror.DisplayStyle?((v1 + 22), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 17);
  outlined destroy of Mirror.DisplayStyle?(v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v33 + 8))(v32, v43);
  (*(v36 + 8))(v34, v35);

  v40 = v1[1];

  return v40();
}

{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[43];
  v6 = v0[44];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[36];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  v11 = v0[1];
  v12 = v0[56];

  return v11();
}

uint64_t ShareETAContactConfirmationStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v6 = *(v5 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = type metadata accessor for PommesContext.Source();
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v11 = type metadata accessor for NLContextUpdate();
  v2[35] = v11;
  v12 = *(v11 - 8);
  v2[36] = v12;
  v13 = *(v12 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v15 = type metadata accessor for ActivityType();
  v2[40] = v15;
  v16 = *(v15 - 8);
  v2[41] = v16;
  v17 = *(v16 + 64) + 15;
  v2[42] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.makeConfirmationRejectedResponse(), 0, 0);
}

id ShareETAContactConfirmationStrategy.makeConfirmationRejectedResponse()()
{
  v65 = v0;
  v1 = v0;
  v4 = v0 + 328;
  v3 = *(v0 + 328);
  v2 = *(v4 + 8);
  v5 = *(v1 + 320);
  static SiriKitEventSender.current.getter();
  v60 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  (*(v3 + 104))(v2, enum case for ActivityType.confirmationRejected(_:), v5);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(v1 + 336);
  v9 = *(v1 + 312);
  v57 = *(v1 + 304);
  v10 = *(v1 + 200);
  type metadata accessor for SiriKitEvent();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
  v12 = type metadata accessor for SiriKitReliabilityCodes();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v9, v11, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  v14 = *(v10 + 40);
  static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)();
  v15 = static os_log_type_t.info.getter();
  v16 = *(v10 + 16);
  v17 = os_log_type_enabled(v16, v15);
  if (v17)
  {
    v19 = *(v1 + 296);
    v18 = *(v1 + 304);
    v21 = *(v1 + 280);
    v20 = *(v1 + 288);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v64 = v23;
    *v22 = 136315138;
    swift_beginAccess();
    (*(v20 + 16))(v19, v18, v21);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v64);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v16, v15, "nl context = %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  if ((*(**(v1 + 200) + 120))(v17))
  {
    v27 = *(v1 + 304);
    v29 = *(v1 + 264);
    v28 = *(v1 + 272);
    v31 = *(v1 + 248);
    v30 = *(v1 + 256);
    static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)();
    (*(v30 + 104))(v29, enum case for PommesContext.Source.pluginDefined(_:), v31);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v32 = type metadata accessor for PommesContext();
    (*(*(v32 - 8) + 56))(v28, 0, 1, v32);
    swift_beginAccess();
    NLContextUpdate.pommesContext.setter();
LABEL_8:
    swift_endAccess();
    goto LABEL_9;
  }

  if ((*(**(v1 + 200) + 144))())
  {
    v62 = *(v1 + 304);
    v34 = *(v1 + 232);
    v33 = *(v1 + 240);
    v36 = *(v1 + 216);
    v35 = *(v1 + 224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v37 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    *(swift_allocObject() + 16) = xmmword_B89E0;
    v40 = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = UsoTaskBuilder_noVerb_common_Person.init()();
    v44 = type metadata accessor for UsoEntityBuilder_common_Person();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
    static Siri_Nlu_External_SystemPrompted.from(_:)(v43, v33);
    Siri_Nlu_External_SystemDialogAct.init()();
    (*(v35 + 16))(v34, v33, v36);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();

    (*(v35 + 8))(v33, v36);
    swift_beginAccess();
    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_8;
  }

LABEL_9:
  v47 = *(v1 + 336);
  v49 = *(v1 + 304);
  v48 = *(v1 + 312);
  v50 = *(v1 + 288);
  v51 = *(v1 + 296);
  v52 = *(v1 + 280);
  v58 = *(v1 + 272);
  v59 = *(v1 + 264);
  v61 = *(v1 + 240);
  v63 = *(v1 + 232);
  v53 = *(v1 + 208);
  v54 = *(v1 + 192);
  swift_beginAccess();
  (*(v50 + 16))(v53, v49, v52);
  (*(v50 + 56))(v53, 0, 1, v52);
  v55 = type metadata accessor for AceOutput();
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 56) = 0u;
  v54[3] = v55;
  v54[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v54);
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v1 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v53, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v50 + 8))(v49, v52);

  v56 = *(v1 + 8);

  return v56();
}

uint64_t ShareETAContactConfirmationStrategy.makeFlowCancelledResponse()(uint64_t a1)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for ActivityType();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactConfirmationStrategy.makeFlowCancelledResponse(), 0, 0);
}

id ShareETAContactConfirmationStrategy.makeFlowCancelledResponse()()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  static SiriKitEventSender.current.getter();
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v2 + 104))(v1, enum case for ActivityType.canceled(_:), v3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v5 = result;
    v6 = v0[31];
    v7 = v0[28];
    v17 = v0[23];
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
    v9 = type metadata accessor for SiriKitReliabilityCodes();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v7, v8, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v11 = *(v17 + 32);
    v0[10] = &type metadata for Common;
    v0[11] = &protocol witness table for Common;
    v0[7] = 0;
    v12 = static DialogHelper.globals.getter();
    v0[32] = v12;
    v13 = *(*v11 + 112);
    v19 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[33] = v15;
    *v15 = v0;
    v15[1] = ShareETAContactConfirmationStrategy.makeFlowCancelledResponse();
    v16 = v0[27];

    return (v19)(v16, v0 + 7, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareETAContactConfirmationStrategy.makeFlowCancelledResponse()()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = ShareETAContactConfirmationStrategy.makeFlowCancelledResponse();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v5 = ShareETAPromptForContactStrategy.makeFlowCancelledResponse();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  v5 = v0[1];
  v6 = v0[34];

  return v5();
}

uint64_t ShareETAContactConfirmationStrategy.makeErrorResponse(_:)()
{
  return _swift_task_switch(ShareETAContactConfirmationStrategy.makeErrorResponse(_:), 0, 0);
}

{
  lazy protocol witness table accessor for type Errors and conformance Errors();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x80000000000C3B50;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ShareETAContactConfirmationStrategy.confirmationHandle(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[0] = a2;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GeoParse();
  Input.parse.getter();
  static GeoParse.getDomainIntent(parse:)(v13, v28);
  (*(v10 + 8))(v13, v9);
  outlined init with copy of GeoIntent?(v28, v27);
  if (!v27[3])
  {
    outlined destroy of Mirror.DisplayStyle?(v27, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
  type metadata accessor for LocationSearchIntent();
  v14 = swift_dynamicCast();
  if ((v14 & 1) == 0)
  {
LABEL_6:
    v17 = static os_log_type_t.debug.getter();
    v18 = *(v2 + 16);
    (*(v5 + 16))(v8, a1, v4);
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      Input.parse.getter();
      v21 = String.init<A>(describing:)();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v18, v17, "ignoring parse %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    static ActionForInput.ignore()();
    return outlined destroy of Mirror.DisplayStyle?(v28, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
  }

  v15 = *(*v26[1] + 152);
  v16 = v15(v14);
  if (v16 == 3)
  {

    goto LABEL_6;
  }

  if (v15(v16) == 2)
  {
    static ActionForInput.cancel()();
  }

  else
  {
    static ActionForInput.handle()();
  }

  return outlined destroy of Mirror.DisplayStyle?(v28, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
}

uint64_t ShareETAContactConfirmationStrategy.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ShareETAContactConfirmationStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShareETAContactConfirmationStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShareETAContactConfirmationStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance ShareETAContactConfirmationStrategy(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAContactConfirmationStrategy(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShareETAContactConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t sub_AD954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_AD9EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t TrafficIncidentBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t TrafficIncidentBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  Input.parse.getter();
  (*(v2 + 16))(v6, v8, v1);
  v9 = (*(v2 + 88))(v6, v1);
  if (v9 == enum case for Parse.NLv3IntentOnly(_:))
  {
    static ActionForInput.handle()();
  }

  else
  {
    if (v9 == enum case for Parse.pommesResponse(_:))
    {
      v10 = *(v2 + 8);
      v10(v6, v1);
      static os_log_type_t.info.getter();
      v11 = *(v0 + 16);
      os_log(_:dso:log:_:_:)();
      static ActionForInput.handle()();
      return (v10)(v8, v1);
    }

    static os_log_type_t.error.getter();
    v13 = *(v0 + 16);
    os_log(_:dso:log:_:_:)();
    static ActionForInput.cancel()();
  }

  v14 = *(v2 + 8);
  v14(v8, v1);
  return (v14)(v6, v1);
}

uint64_t TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t TrafficIncidentBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v21 = v0;
  v1 = v0[2];
  v2 = v0[3];
  if (v1)
  {
    v3 = v1;
    v4 = static os_log_type_t.info.getter();
    v5 = *(v2 + 16);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v20);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_0, v5, v4, "makeIntentFromParse with current intent: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    v14 = v0[1];

    return v14(v3);
  }

  else
  {
    static os_log_type_t.error.getter();
    v16 = *(v2 + 16);
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RuntimeError();
    v17 = swift_allocObject();
    *(v17 + 16) = 0xD000000000000040;
    *(v17 + 24) = 0x80000000000C3BD0;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_5(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
    swift_allocError();
    *v18 = v17;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

uint64_t TrafficIncidentBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TrafficIncidentBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentBaseRCHStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_5(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t WhereAmIFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 160))(v2);
}

uint64_t sub_AE878()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t CLPlacemark.makeDialogLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v50 = &v49 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for DialogLocationAddress.Builder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  v22 = [v0 fullThoroughfare];
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v24 = type metadata accessor for SpeakableString();
    (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
  }

  else
  {
    v25 = type metadata accessor for SpeakableString();
    (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  }

  dispatch thunk of DialogLocationAddress.Builder.withFullThoroughfare(_:)();

  outlined destroy of Mirror.DisplayStyle?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v26 = [v1 locality];
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = type metadata accessor for SpeakableString();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = 1;
  v33 = v31;
  v52 = v30 + 56;
  v31(v16, v28, 1, v29);
  dispatch thunk of DialogLocationAddress.Builder.withLocality(_:)();

  outlined destroy of Mirror.DisplayStyle?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v34 = [v1 country];
  if (v34)
  {
    v35 = v34;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v32 = 0;
  }

  v36 = 1;
  v33(v13, v32, 1, v29);
  dispatch thunk of DialogLocationAddress.Builder.withCountry(_:)();

  outlined destroy of Mirror.DisplayStyle?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v37 = [v1 administrativeArea];
  if (v37)
  {
    v38 = v37;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.toSpeakableString.getter();

    v36 = 0;
  }

  v39 = 1;
  v33(v10, v36, 1, v29);
  dispatch thunk of DialogLocationAddress.Builder.withAdministrativeArea(_:)();

  outlined destroy of Mirror.DisplayStyle?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v40 = [v1 subLocality];
  if (v40)
  {
    v41 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v50;
    String.toSpeakableString.getter();

    v39 = 0;
  }

  else
  {
    v42 = v50;
  }

  v43 = 1;
  v33(v42, v39, 1, v29);
  dispatch thunk of DialogLocationAddress.Builder.withSubLocality(_:)();

  outlined destroy of Mirror.DisplayStyle?(v42, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v44 = [v1 postalCode];
  if (v44)
  {
    v45 = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v51;
    String.toSpeakableString.getter();

    v43 = 0;
  }

  else
  {
    v46 = v51;
  }

  v33(v46, v43, 1, v29);
  dispatch thunk of DialogLocationAddress.Builder.withPostCode(_:)();

  outlined destroy of Mirror.DisplayStyle?(v46, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v47 = dispatch thunk of DialogLocationAddress.Builder.build()();

  return v47;
}

void *WhereAmIFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v1, *(v0 + 32));
  return v1;
}

void WhereAmIFlow.flowState.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  v6 = *(v2 + 32);
  *(v2 + 32) = a2;
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v5, v6);
}

uint64_t WhereAmIFlow.__allocating_init(with:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized WhereAmIFlow.init(with:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t WhereAmIFlow.init(with:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized WhereAmIFlow.init(with:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t WhereAmIFlow.executeState()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(WhereAmIFlow.executeState(), 0, 0);
}

uint64_t WhereAmIFlow.executeState()()
{
  v42 = v0;
  v1 = (*(**(v0 + 40) + 112))();
  v3 = v1;
  *(v0 + 48) = v1;
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = *(v0 + 40);
      v5 = static os_log_type_t.default.getter();
      v6 = *(v4 + 16);
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v41 = v8;
        *v7 = 136315138;
        *(v0 + 16) = v3;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v41);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_0, v6, v5, "WhereAmIFlow execute request unsupported with err: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

      v12 = *(v0 + 32);
      static ExecuteResponse.complete()();
      outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(v3, 1);
      goto LABEL_14;
    }

    if (v1)
    {
      if (v1 != 1)
      {
        v22 = *(v0 + 32);
        v21 = *(v0 + 40);
        static os_log_type_t.default.getter();
        v23 = *(v21 + 16);
        os_log(_:dso:log:_:_:)();
        static ExecuteResponse.complete()();
LABEL_14:
        v31 = *(v0 + 8);

        return v31();
      }
    }

    else
    {
      v24 = *(v0 + 40);
      static os_log_type_t.default.getter();
      v25 = *(v24 + 16);
      os_log(_:dso:log:_:_:)();
      if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
      {
        v26 = *(v0 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
        v27 = *(type metadata accessor for CommonFlowGuard() - 8);
        v28 = *(v27 + 72);
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        *(swift_allocObject() + 16) = xmmword_B89E0;
        static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
        v30 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

        *(v0 + 24) = v30;
        type metadata accessor for GuardFlow();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_14;
      }

      (*(**(v0 + 40) + 120))(1, 2);
    }

    v32 = *(v0 + 40);
    static os_log_type_t.default.getter();
    v33 = v32[2];
    os_log(_:dso:log:_:_:)();
    v34 = *(*v32 + 184);
    v40 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 64) = v36;
    *v36 = v0;
    v36[1] = AnswerETAFlow.executeState();
    v37 = *(v0 + 32);
    v38 = *(v0 + 40);

    return v40(v37);
  }

  else
  {
    v13 = *(v0 + 40);
    static os_log_type_t.info.getter();
    v14 = v13[2];
    os_log(_:dso:log:_:_:)();
    v15 = *(*v13 + 192);
    v39 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 56) = v17;
    *v17 = v0;
    v17[1] = WhereAmIFlow.executeState();
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);

    return v39(v18, v3);
  }
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(WhereAmIFlow.executeState(), 0, 0);
}

{
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 48), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in WhereAmIFlow.executeState()(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  static os_log_type_t.info.getter();
  v4 = a2[2];
  os_log(_:dso:log:_:_:)();
  if (v3 == 1)
  {
    static os_log_type_t.error.getter();
    v5 = 2;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)();
    v5 = 1;
  }

  return (*(*a2 + 120))(v5, 2);
}

uint64_t WhereAmIFlow.preChecks()(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceIdiomOSgMd, &_s13SiriUtilities11DeviceIdiomOSgMR) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for DeviceIdiom();
  v2[34] = v4;
  v5 = *(v4 - 8);
  v2[35] = v5;
  v6 = *(v5 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return _swift_task_switch(WhereAmIFlow.preChecks(), 0, 0);
}

uint64_t WhereAmIFlow.preChecks()()
{
  v28 = v0;
  type metadata accessor for SiriEnvironment();
  v1 = static SiriEnvironment.forCurrentTask.getter();
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  if (v1)
  {
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceIdiom.getter();

    (*(v4 + 56))(v5, 0, 1, v3);
    (*(v4 + 32))(v2, v5, v3);
  }

  else
  {
    (*(v4 + 56))(*(v0 + 264), 1, 1, *(v0 + 272));
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceIdiom.getter();

    if ((*(v4 + 48))(v5, 1, v3) != 1)
    {
      outlined destroy of Mirror.DisplayStyle?(*(v0 + 264), &_s13SiriUtilities11DeviceIdiomOSgMd, &_s13SiriUtilities11DeviceIdiomOSgMR);
    }
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  (*(v8 + 104))(v6, enum case for DeviceIdiom.tv(_:), v7);
  v9 = static DeviceIdiom.== infix(_:_:)();
  v10 = *(v8 + 8);
  v11 = v10(v6, v7);
  v12 = *(v0 + 296);
  v13 = *(v0 + 272);
  if (v9)
  {
    v26 = *(v0 + 248);
    static Device.current.getter();
    v14 = type metadata accessor for GeoRCHFlowFactoryImpl();
    v15 = swift_allocObject();
    *(v0 + 80) = v14;
    *(v0 + 88) = &protocol witness table for GeoRCHFlowFactoryImpl;
    *(v0 + 56) = v15;
    *(v0 + 96) = static DialogHelper.globals.getter();
    static AceService.currentAsync.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for CATService();
    v16 = swift_allocObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v16 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
    *(v16 + 32) = OS_os_log.init(subsystem:category:)();
    *(v16 + 16) = 0;
    *(v0 + 184) = v16;
    type metadata accessor for UnsupportedDeviceFlow();
    v18 = swift_allocObject();
    *(v0 + 216) = &type metadata for FlowHelperImpl;
    *(v0 + 224) = &protocol witness table for FlowHelperImpl;
    v19 = swift_allocObject();
    *(v0 + 192) = v19;
    outlined init with copy of FlowHelperImpl(v0 + 16, v19 + 16);
    *(v18 + 16) = OS_os_log.init(subsystem:category:)();
    outlined init with take of CATType((v0 + 192), v18 + 24);
    outlined destroy of FlowHelperImpl(v0 + 16);
    *(v0 + 240) = v18;
    _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedDeviceFlow and conformance UnsupportedDeviceFlow, 255, type metadata accessor for UnsupportedDeviceFlow);
    static ExecuteResponse.complete<A>(next:)();
  }

  else
  {
    v20 = *(v0 + 248);
    (*(**(v0 + 256) + 136))(v27, v11);
    type metadata accessor for LocationFetchFlow();
    swift_allocObject();
    *(v0 + 232) = LocationFetchFlow.init(flowHelper:requiredAccess:)(v27, 3);
    _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type LocationFetchFlow and conformance LocationFetchFlow, 255, type metadata accessor for LocationFetchFlow);

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  v10(v12, v13);
  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v23 = *(v0 + 264);

  v24 = *(v0 + 8);

  return v24();
}

void closure #1 in WhereAmIFlow.preChecks()(uint64_t a1, void *a2)
{
  v3 = *a1;
  if (*(a1 + 8) > 1u)
  {
    *(a1 + 8);
    goto LABEL_9;
  }

  if (*(a1 + 8))
  {
LABEL_9:
    static os_log_type_t.info.getter();
    v15 = a2[2];
    os_log(_:dso:log:_:_:)();
    (*(*a2 + 120))(2, 2);
    return;
  }

  v4 = [objc_opt_self() placemarkWithLocation:v3 name:0 postalAddress:0];
  v5 = static os_log_type_t.info.getter();
  v6 = a2[2];
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = [v3 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v6, v5, "WhereAmIFlow continuing with location %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v14 = *(*a2 + 120);
  v16 = v4;
  v14(v4, 0);
}

uint64_t WhereAmIFlow.handle(location:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(WhereAmIFlow.handle(location:), 0, 0);
}

uint64_t WhereAmIFlow.handle(location:)()
{
  v26 = v0;
  v1 = v0[9];
  v2 = static os_log_type_t.info.getter();
  v3 = *(v1 + 16);
  v4 = os_log_type_enabled(v3, v2);
  if (v4)
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315138;
    v8 = [v5 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v25);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v3, v2, "RevGeocode location to get address: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  (*(*v13 + 136))(v4);
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  (*(v17 + 104))(v25, v16, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  v19 = type metadata accessor for SimpleOutputFlowAsync();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v14;

  v0[2] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  static ExecuteResponse.complete<A>(next:)();

  v23 = v0[1];

  return v23();
}

uint64_t closure #1 in WhereAmIFlow.handle(location:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = closure #1 in WhereAmIFlow.handle(location:);

  return WhereAmIFlow.generateWhereAmIExperience(location:)(a1);
}

uint64_t closure #1 in WhereAmIFlow.handle(location:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WhereAmIFlow.generateWhereAmIExperience(location:)(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v2[54] = v4;
  v5 = *(v4 - 8);
  v2[55] = v5;
  v6 = *(v5 + 64) + 15;
  v2[56] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[57] = v7;
  *v7 = v2;
  v7[1] = WhereAmIFlow.generateWhereAmIExperience(location:);

  return CLPlacemark.withRevGeo()();
}

{
  v2 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = a1;

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{
  v3 = *(*v2 + 480);
  v6 = *v2;
  *(*v2 + 488) = a1;

  if (v1)
  {

    v4 = WhereAmIFlow.generateWhereAmIExperience(location:);
  }

  else
  {
    v4 = WhereAmIFlow.generateWhereAmIExperience(location:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t WhereAmIFlow.generateWhereAmIExperience(location:)()
{
  v23 = v0;
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  static DialogPhase.summary.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v22[3] = &type metadata for String;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  v4 = (*(*v2 + 152))(v0 + 27);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = (*(v7 + 96))(v0 + 31, v6, v7);
  specialized Dictionary.subscript.setter(v22, 0x65736E6F70736572, 0xEC00000065646F4DLL);
  v8(v0 + 31, 0);
  v4(v0 + 27, 0);
  v9 = static os_log_type_t.default.getter();
  v10 = v2[2];
  v0[59] = v10;
  if (os_log_type_enabled(v10, v9))
  {
    v11 = v0[56];
    v12 = v0[54];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    swift_beginAccess();
    _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type OutputGenerationManifest and conformance OutputGenerationManifest, 255, &type metadata accessor for OutputGenerationManifest);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v10, v9, "outputManifest: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  v0[50] = &_swiftEmptyArrayStorage;
  v18 = swift_task_alloc();
  v0[60] = v18;
  *v18 = v0;
  v18[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
  v19 = v0[58];
  v20 = v0[52];

  return WhereAmIFlow.makeDialog(placemark:)(v19);
}

{
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v3 = v1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 400) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 400) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v23 = *(&dword_10 + (*(v0 + 400) & 0xFFFFFFFFFFFFFF8));
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v4 = *(v0 + 488);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v5 = *(v0 + 400);
  *(v0 + 496) = v5;
  (*(**(v0 + 416) + 136))();
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
  (*(v7 + 32))(v6, v7);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v8);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  LOBYTE(v8) = DeviceState.isVOXExclusivePlatform.getter(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  if (v8)
  {
    v10 = *(v0 + 448);
    v11 = type metadata accessor for ResponseFactory();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    *(v0 + 504) = ResponseFactory.init()();
    swift_beginAccess();
    v14 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v24 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v15 = swift_task_alloc();
    *(v0 + 512) = v15;
    *v15 = v0;
    v15[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v16 = *(v0 + 448);

    return v24(v0 + 16, v5, v16);
  }

  else
  {
    v18 = *(**(v0 + 416) + 216);
    v25 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 520) = v20;
    *v20 = v0;
    v20[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v21 = *(v0 + 464);
    v22 = *(v0 + 416);

    return v25(v0 + 136, v21);
  }
}

{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 496);
  v5 = *v0;

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{
  v18 = v0;
  v1 = *(v0 + 472);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    outlined init with copy of DeviceState(v0 + 16, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v2, "WhereAmIFlow completing with output: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 408);
  swift_beginAccess();
  outlined init with copy of DeviceState(v0 + 16, v14);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v11 + 8))(v10, v12);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = *(*v0 + 520);
  v3 = *v0;

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{
  v1 = v0[56];
  v2 = type metadata accessor for ResponseFactory();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[66] = ResponseFactory.init()();
  swift_beginAccess();
  v5 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
  v10 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:);
  v6 = swift_task_alloc();
  v0[67] = v6;
  *v6 = v0;
  v6[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
  v7 = v0[62];
  v8 = v0[56];

  return (v10)(v0 + 2, v0 + 17, v7, v8);
}

{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 496);
  v5 = *v0;

  return _swift_task_switch(WhereAmIFlow.generateWhereAmIExperience(location:), 0, 0);
}

{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v1 = *(v0 + 472);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    outlined init with copy of DeviceState(v0 + 16, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v2, "WhereAmIFlow completing with output: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 408);
  swift_beginAccess();
  outlined init with copy of DeviceState(v0 + 16, v14);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v11 + 8))(v10, v12);

  v15 = *(v0 + 8);

  return v15();
}

{
  *(v0 + 496) = &_swiftEmptyArrayStorage;
  (*(**(v0 + 416) + 136))();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
  (*(v2 + 32))(v1, v2);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  LOBYTE(v4) = DeviceState.isVOXExclusivePlatform.getter(v4, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  if (v4)
  {
    v5 = *(v0 + 448);
    v6 = type metadata accessor for ResponseFactory();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    *(v0 + 504) = ResponseFactory.init()();
    swift_beginAccess();
    v9 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v18 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
    v10 = swift_task_alloc();
    *(v0 + 512) = v10;
    *v10 = v0;
    v10[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v11 = *(v0 + 448);

    return (v18)(v0 + 16, &_swiftEmptyArrayStorage, v11);
  }

  else
  {
    v13 = *(**(v0 + 416) + 216);
    v19 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 520) = v15;
    *v15 = v0;
    v15[1] = WhereAmIFlow.generateWhereAmIExperience(location:);
    v16 = *(v0 + 464);
    v17 = *(v0 + 416);

    return v19(v0 + 136, v16);
  }
}

uint64_t CLPlacemark.withRevGeo()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(CLPlacemark.withRevGeo(), 0, 0);
}

{
  v1 = [*(v0 + 160) location];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 144) = 0;
    v3 = specialized getter of coder #1 in CLPlacemark.withRevGeo()((v0 + 144));
    *(v0 + 176) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = CLPlacemark.withRevGeo();
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo11CLPlacemarkCGs5Error_pGMd, &_sSccySaySo11CLPlacemarkCGs5Error_pGMR);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark];
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v4;
    [v3 reverseGeocodeLocation:v2 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 8);
    v5 = *(v0 + 160);

    return v7(v5);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = CLPlacemark.withRevGeo();
  }

  else
  {
    v3 = CLPlacemark.withRevGeo();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 152);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = *(v0 + 168);

    v4 = [objc_opt_self() placemarkWithLocation:v5 name:0 postalAddress:0];

    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:

  v6 = *(v0 + 8);

  return v6(v4);
}

{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  swift_willThrow();

  v5 = v0[18];
  v6 = v4;

  v7 = v0[20];
  v8 = v0[1];

  return v8(v7);
}

uint64_t WhereAmIFlow.makeDialog(placemark:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return _swift_task_switch(WhereAmIFlow.makeDialog(placemark:), 0, 0);
}

{
  v4 = *v2;
  v5 = (*v2)[28];
  v13 = *v2;
  (*v2)[29] = v1;

  if (v1)
  {
    v7 = v4[26];
    v6 = v4[27];

    v8 = WhereAmIFlow.makeDialog(placemark:);
  }

  else
  {
    v10 = v4[26];
    v9 = v4[27];
    v11 = v4[24];

    v4[30] = a1;
    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 7);
    v8 = WhereAmIFlow.makeDialog(placemark:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t WhereAmIFlow.makeDialog(placemark:)()
{
  v30 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = CLPlacemark.makeDialogLocation()();
  v0[24] = v3;
  swift_retain_n();
  v4 = static os_log_type_t.default.getter();
  v5 = *(v2 + 16);
  v0[25] = v5;
  v6 = os_log_type_enabled(v5, v4);
  if (v6)
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    (*(*v7 + 136))();
    v10 = v0[20];
    v11 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v10);
    (*(v11 + 80))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v5, v4, "catGlobals: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v16 = *(*v0[23] + 136);
  v16(v6);
  v17 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  v19 = (*(v18 + 128))(v17, v18);
  v0[26] = v19;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v0[10] = &type metadata for LocationSearch;
  v0[11] = &protocol witness table for LocationSearch;
  v0[7] = v3;
  v0[8] = v3;
  v20 = swift_retain_n();
  v16(v20);
  v21 = v0[15];
  v22 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
  v23 = (*(v22 + 80))(v21, v22);
  v0[27] = v23;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v24 = *(*v19 + 152);
  v28 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[28] = v26;
  *v26 = v0;
  v26[1] = WhereAmIFlow.makeDialog(placemark:);

  return v28(v0 + 7, v23);
}

{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[30];

  return v2(v3);
}

{
  v1 = v0[29];
  v3 = v0[24];
  v2 = v0[25];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)();
  lazy protocol witness table accessor for type Errors and conformance Errors();
  swift_allocError();
  *v4 = xmmword_B99F0;
  *(v4 + 16) = 3;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t WhereAmIFlow.makeRFView(placemark:)(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v4 = type metadata accessor for Google_Protobuf_DoubleValue();
  v3[75] = v4;
  v5 = *(v4 - 8);
  v3[76] = v5;
  v6 = *(v5 + 64) + 15;
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();

  return _swift_task_switch(WhereAmIFlow.makeRFView(placemark:), 0, 0);
}

uint64_t WhereAmIFlow.makeRFView(placemark:)()
{
  v71 = v0;
  v1 = *(**(v0 + 592) + 136);
  v1();
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v2);
  v4 = (*(v3 + 128))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 256));
  *(v0 + 320) = &type metadata for GeoLabel;
  *(v0 + 328) = &protocol witness table for GeoLabel;
  *(v0 + 296) = 3;
  *(v0 + 304) = 0;
  *(v0 + 312) = 2;
  v5 = (*(*v4 + 136))(v0 + 296);
  v7 = v6;
  v9 = v8;

  v10 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
  if (v9)
  {
    v10 = outlined consume of Result<String, Error>(v5, v7, 1);
    v5 = 0;
    v69 = 0xE000000000000000;
  }

  else
  {
    v69 = v7;
  }

  v11 = *(v0 + 592);
  (v1)(v10);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v12);
  v14 = (*(v13 + 128))(v12, v13);
  v15 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
  (v1)(v15);
  v16 = *(v0 + 440);
  v17 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v16);
  (*(v17 + 32))(v16, v17);
  v18 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
  v19 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 456));
  v20 = 4;
  if (v19)
  {
    v20 = 5;
  }

  *(v0 + 400) = &type metadata for GeoLabel;
  *(v0 + 408) = &protocol witness table for GeoLabel;
  *(v0 + 376) = v20;
  *(v0 + 384) = 0;
  *(v0 + 392) = 2;
  v21 = (*(*v14 + 136))(v0 + 376);
  v23 = v22;
  v25 = v24;

  v26 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
  if (v25)
  {
    v26 = outlined consume of Result<String, Error>(v21, v23, 1);
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v27 = *(v0 + 592);
  v28 = *(v0 + 584);
  (v1)(v26);
  v29 = *(v0 + 520);
  v30 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 496), v29);
  v31 = (*(v30 + 128))(v29, v30);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 496));
  v32 = CLPlacemark.makeDialogLocation()();
  *(v0 + 560) = &type metadata for GeoLabel;
  *(v0 + 568) = &protocol witness table for GeoLabel;
  *(v0 + 536) = v32;
  *(v0 + 544) = 0;
  *(v0 + 552) = 1;
  v33 = (*(*v31 + 136))(v0 + 536);
  v35 = v34;
  LOBYTE(v27) = v36;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 536));
  if (v27)
  {
    outlined consume of Result<String, Error>(v33, v35, 1);
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v37 = [*(v0 + 584) location];
  if (v37)
  {
    v38 = *(v0 + 624);
    v39 = *(v0 + 616);
    v68 = v23;
    v40 = v21;
    v41 = v5;
    v42 = *(v0 + 608);
    v43 = *(v0 + 600);
    v44 = v37;
    [v37 coordinate];

    Double.toProtobufDoubleValue()();
    Google_Protobuf_DoubleValue.value.getter();
    v46 = v45;
    v47 = *(v42 + 8);
    v47(v38, v43);
    Double.toProtobufDoubleValue()();
    Google_Protobuf_DoubleValue.value.getter();
    v49 = v48;
    v47(v39, v43);
    v5 = v41;
    v21 = v40;
    v23 = v68;
  }

  else
  {
    v46 = 0;
    v49 = 0;
  }

  v50 = *(v0 + 592);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v21;
  *(v0 + 40) = v23;
  *(v0 + 48) = v33;
  *(v0 + 56) = v35;
  *(v0 + 64) = v5;
  *(v0 + 72) = v69;
  *(v0 + 80) = v46;
  *(v0 + 88) = v49;
  v51 = static os_log_type_t.default.getter();
  v52 = *(v50 + 16);
  if (os_log_type_enabled(v52, v51))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v70 = v54;
    *v53 = 136315138;
    v55 = *(v0 + 64);
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v55;
    *(v0 + 160) = *(v0 + 80);
    v56 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v56;
    outlined init with copy of GeoDataModels.WhereAmIDataModel(v0 + 16, v0 + 176);
    v57 = String.init<A>(describing:)();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v70);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_0, v52, v51, "RF: WhereAmI view %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  v60 = *(v0 + 624);
  v61 = *(v0 + 616);
  v62 = *(v0 + 576);
  v62[3] = &type metadata for GeoDataModels;
  v62[4] = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
  v63 = swift_allocObject();
  *v62 = v63;
  v64 = *(v0 + 80);
  *(v63 + 64) = *(v0 + 64);
  *(v63 + 80) = v64;
  v65 = *(v0 + 48);
  *(v63 + 32) = *(v0 + 32);
  *(v63 + 48) = v65;
  *(v63 + 16) = *(v0 + 16);
  *(v63 + 96) = 3;

  v66 = *(v0 + 8);

  return v66();
}

uint64_t WhereAmIFlow.deinit()
{
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v1 = *(v0 + 80);

  return v0;
}

uint64_t WhereAmIFlow.__deallocating_deinit()
{
  outlined consume of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v1 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance WhereAmIFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance WhereAmIFlow(uint64_t a1)
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

uint64_t protocol witness for Flow.on(input:) in conformance WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance WhereAmIFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WhereAmIFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WhereAmIFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

id specialized getter of coder #1 in CLPlacemark.withRevGeo()(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v4 = [objc_allocWithZone(CLGeocoder) init];
    swift_beginAccess();
    v5 = *a1;
    *a1 = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLPlacemark, CLPlacemark_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t specialized WhereAmIFlow.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  outlined init with copy of DeviceState(v11, a2 + 40);
  *(a2 + 80) = (*(a4 + 128))(a3, a4);
  static os_log_type_t.default.getter();
  v9 = *(a2 + 16);
  os_log(_:dso:log:_:_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return a2;
}

uint64_t sub_B3390()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in WhereAmIFlow.handle(location:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in WhereAmIFlow.handle(location:)(a1);
}

uint64_t sub_B34A8()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t instantiation function for generic protocol witness table for WhereAmIFlow(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow, a2, type metadata accessor for WhereAmIFlow);
  result = _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow, v3, type metadata accessor for WhereAmIFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_B35AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_B35FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  v4 = *(a1 + 8);
  outlined copy of TrafficIncidentRequestSupportedCheckFlow.RequestSupportedExitValue(*a1, v4);
  return v3(v2, v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin12WhereAmIFlowC5StateO(uint64_t a1)
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

uint64_t _s21GeoFlowDelegatePlugin013LocationFetchB0CAC07SiriKitB00B0AAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id AnswerETAIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnswerETAIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnswerETAIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id AnswerETAIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AnswerETAIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id AnswerETAIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id AnswerETAIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AnswerETAIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id AnswerETAIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id AnswerETAIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for AnswerETAIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerETAIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized AnswerETAIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AnswerETAIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *AnswerETAIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *AnswerETAIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___AnswerETAIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id AnswerETAIntentResponse.init()()
{
  *&v0[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnswerETAIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id AnswerETAIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id AnswerETAIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id AnswerETAIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id @objc AnswerETAIntentResponse.init(coder:)(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for AnswerETAIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id AnswerETAIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id AnswerETAIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AnswerETAIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnswerETAIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id AnswerETAIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t specialized AnswerETAIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode;
  if (!lazy protocol witness table cache variable for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerETAIntentResponseCode and conformance AnswerETAIntentResponseCode);
  }

  return result;
}

uint64_t sub_B4548@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_20.maxprot + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

uint64_t sub_B45A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AnswerETAIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static ExecuteResponse.ongoing<A>(next:childCompletion:)()
{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

Swift::String __swiftcall Character.uppercased()()
{
  v0 = Character.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}