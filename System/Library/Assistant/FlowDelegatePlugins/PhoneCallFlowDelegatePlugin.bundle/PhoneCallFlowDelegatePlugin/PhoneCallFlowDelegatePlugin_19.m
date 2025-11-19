id IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3)
{
  v4 = v3;
  v140 = a1;
  v6 = *v3;
  v138 = a3;
  v139 = v6;
  v7 = type metadata accessor for Locale();
  v8 = OUTLINED_FUNCTION_7(v7);
  v135 = v9;
  v136 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v134 = v13 - v12;
  v14 = type metadata accessor for Parse();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v132 = v20 - v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  v133 = &v129 - v23;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v24);
  v26 = &v129 - v25;
  v27 = v3[2];
  v141 = a2;
  if (v27)
  {
    v28 = one-time initialization token for siriPhone;

    if (v28 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.siriPhone);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_42();
      v33 = OUTLINED_FUNCTION_36();
      v137 = v26;
      v34 = v33;
      v142 = v27;
      v143[0] = v33;
      *v32 = 136315138;
      type metadata accessor for App();
      v35 = v17;
      lazy protocol witness table accessor for type NLIntent and conformance NLIntent(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v143);

      *(v32 + 4) = v38;
      v17 = v35;
      _os_log_impl(&dword_0, v30, v31, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: appResolved: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v26 = v137;
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.siriPhone);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: no appResolved", v42, 2u);
      OUTLINED_FUNCTION_26_0();
    }
  }

  v43 = v17[2];
  v43(v26, v140, v14);
  v44 = v17[11];
  v45 = OUTLINED_FUNCTION_5_48();
  v47 = v46(v45);
  if (v47 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v129 = v43;
    v130 = v17;
    v131 = v14;
    v137 = v26;
    v48 = v4[6];
    v49 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v48);
    v50 = *(v49 + 80);

    v51 = v138;
    v52 = v138;
    v50(v143, v48, v49);
    v53 = v139;
    v54 = *(v139 + 80);
    SKTransformer.convertToSKIntent<A>(ofType:phoneCallNLIntent:rchFlowContext:)(v54, v141, v27, v51, 0, v54, v55, v56, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    v58 = v57;
    outlined destroy of SKTransformer(v143);
    if (v58)
    {
      v140 = v52;
      v133 = type metadata accessor for ContactResolution();
      v60 = v4[6];
      v59 = v4[7];
      __swift_project_boxed_opaque_existential_1(v4 + 3, v60);
      v61 = v53;
      v62 = *(v59 + 8);
      v138 = v58;
      v63 = v58;
      v62(v143, v60, v59);
      __swift_project_boxed_opaque_existential_1(v143, v143[3]);
      v64 = v134;
      OUTLINED_FUNCTION_40_0();
      dispatch thunk of DeviceState.siriLocale.getter();
      specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(v63, v141, v27, v64, (v4 + 3), 0, 1, v133, v54, *(v61 + 88), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);

      (*(v135 + 8))(v64, v136);
      __swift_destroy_boxed_opaque_existential_1(v143);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.siriPhone);
      v66 = v63;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      v69 = os_log_type_enabled(v67, v68);
      v70 = v140;
      if (v69)
      {
        v71 = OUTLINED_FUNCTION_42();
        v72 = OUTLINED_FUNCTION_36();
        v142 = v66;
        v143[0] = v72;
        *v71 = 136315138;
        v73 = v66;
        OUTLINED_FUNCTION_2_60();
        swift_getWitnessTable();
        v74 = String.init<A>(describing:)();
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v143);

        *(v71 + 4) = v76;
        _os_log_impl(&dword_0, v67, v68, "#IntentFromParseFlowStrategyHelper SKIntent after NCR replacement: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      (v130[1])(v137, v131);
      return v138;
    }

    else
    {

      v103 = v131;
      v104 = v130[1];
      v104(v137, v131);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      __swift_project_value_buffer(v105, static Logger.siriPhone);
      v106 = v133;
      v107 = v129;
      v129(v133, v140, v103);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = OUTLINED_FUNCTION_42();
        v111 = OUTLINED_FUNCTION_36();
        v141 = v104;
        v112 = v111;
        v143[0] = v111;
        *v110 = 136315138;
        v113 = v132;
        v107(v132, v106, v103);
        v114 = String.init(describing:)(v113);
        v115 = v106;
        v117 = v116;
        v141(v115, v103);
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v117, v143);

        *(v110 + 4) = v118;
        _os_log_impl(&dword_0, v108, v109, "#IntentFromParseFlowStrategyHelper makeIntentFromParseSiriX get unexpected parse: %s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v104(v106, v103);
      }

      return 0;
    }
  }

  if (v47 == enum case for Parse.NLv4IntentOnly(_:) || v47 == enum case for Parse.uso(_:))
  {
    v79 = v17[1];
    v80 = OUTLINED_FUNCTION_5_48();
    v81(v80);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.siriPhone);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    v85 = OUTLINED_FUNCTION_10_0(v84);
    v86 = v139;
    if (v85)
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v88, v89, v90, v91, v87, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v92 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
    v93 = *(v92 + 80);
    v94 = OUTLINED_FUNCTION_40_0();
    v95(v94, v92);
    v96 = *(v86 + 80);

    v97 = v138;
    v98 = v138;
    SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v141, v27, v97, 0, v96, v99, v100, v101, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    v77 = v102;

    outlined destroy of SKTransformer(v143);
    return v77;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  __swift_project_value_buffer(v120, static Logger.siriPhone);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v122))
  {
    v123 = OUTLINED_FUNCTION_42();
    v124 = OUTLINED_FUNCTION_36();
    v143[0] = v124;
    *v123 = 136315138;
    *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000057, 0x800000000045C130, v143);
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v125, v126, v127, v128, v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v124);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t IntentFromParseFlowStrategyHelper.inferApp(from:)()
{
  Parse.ServerConversion.appResolutionStateProviding.getter();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_40_0();
  v0 = dispatch thunk of AppResolutionStateProviding.getRequestedApp()();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    OUTLINED_FUNCTION_40_0();
    v0 = dispatch thunk of AppResolutionStateProviding.getSuggestedApp()();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t IntentFromParseFlowStrategyHelper.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t IntentFromParseFlowStrategyHelper.__deallocating_deinit()
{
  IntentFromParseFlowStrategyHelper.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = type metadata accessor for PhoneCallNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of PhoneCallNLv3Intent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneCallNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NLIntent and conformance NLIntent(unint64_t *a1, void (*a2)(uint64_t))
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

INPerson __swiftcall INPerson.init(personHandle:)(INPersonHandle personHandle)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersonHandle:personHandle.super.isa nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];

  return v2;
}

Swift::Void __swiftcall INAddCallParticipantIntent.overwriteContacts(newContacts:)(Swift::OpaquePointer newContacts)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_51_12();
  [v1 setParticipants:?];
}

INPerson __swiftcall INPerson.with(scoredAlternatives:)(Swift::OpaquePointer scoredAlternatives)
{
  outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(scoredAlternatives._rawValue, v1, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr, &selRef_setScoredAlternatives_);

  return v3;
}

uint64_t INCallInviteType.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallInviteTypeGetBackingType();
    switch(BackingType)
    {
      case 3:
        v2 = @"LINK";
        break;
      case 2:
        v2 = @"RING";
        break;
      case 1:
        v2 = @"ADD";
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_11;
    }

    v3 = v2;
LABEL_11:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

INPerson __swiftcall INPerson.with(alternatives:)(Swift::OpaquePointer alternatives)
{
  outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(alternatives._rawValue, v1);

  return v3;
}

id static INPlayVoicemailIntent.makeFirstPartyHandleIntent(identifier:)()
{
  OUTLINED_FUNCTION_1_15();
  objc_allocWithZone(INPlayVoicemailIntent);

  v0 = OUTLINED_FUNCTION_0();
  v2 = @nonobjc INPlayVoicemailIntent.init(callRecordIdentifier:)(v0, v1);
  v3 = [objc_allocWithZone(_INPBIntentMetadata) init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = String._bridgeToObjectiveC()();
    [v5 setLaunchId:v6];

    v7 = v5;
    v8 = String._bridgeToObjectiveC()();
    [v7 setSystemExtensionBundleId:v8];
  }

  v9 = v2;
  [v9 _setMetadata:v4];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntent, SAIntentGroupHandleIntent_ptr);
  v10 = SAIntentGroupHandleIntent.init(intent:appIdentifier:)(v9, 0, 0);

  return v10;
}

uint64_t INCallAudioRoute.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallAudioRouteGetBackingType();
    switch(BackingType)
    {
      case 4:
        v2 = @"HEY_SIRI_AUDIO_ROUTE";
        break;
      case 3:
        v2 = @"BLUETOOTH_AUDIO_ROUTE";
        break;
      case 2:
        v2 = @"SPEAKERPHONE_AUDIO_ROUTE";
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_11;
    }

    v3 = v2;
LABEL_11:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

uint64_t INCallCapability.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallCapabilityGetBackingType();
    if (BackingType == 2)
    {
      v2 = @"VIDEO_CALL";
    }

    else
    {
      if (BackingType != 1)
      {
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_9;
      }

      v2 = @"AUDIO_CALL";
    }

    v3 = v2;
LABEL_9:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

BOOL INPerson.hasHandleValue.getter()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v1 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v1, &selRef_value);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = specialized Optional<A>.isNilOrEmpty.getter(v1, v3);

  return (v4 & 1) == 0;
}

id INPerson.isEmergency.getter()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result emergencyType];

    return (v3 != 0);
  }

  return result;
}

INPerson __swiftcall INPerson.mutableCopyOrCrash()()
{
  [v0 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (OUTLINED_FUNCTION_58_5())
  {
    return v9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000000045C210, &v10);
    OUTLINED_FUNCTION_57(&dword_0, v7, v8, "%s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result.super.isa = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *INPerson.withTranslatedHandleLabel(locale:)()
{
  v1 = v0;
  if (INPerson.hasHandleLabel.getter())
  {
    v2 = [v0 personHandle];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 label];
      if (v4)
      {
        v5 = v4;
        v6 = INIntentSlotValueTransformToContactHandle();
        v28[0] = Locale.identifier.getter();
        v28[1] = v7;
        v26 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_19_3();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        v8 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
        v10 = v9;

        if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
        {
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v13 & 1) == 0)
          {
            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v14 = type metadata accessor for Logger();
            __swift_project_value_buffer(v14, static Logger.siriPhone);
            v15 = v5;

            v16 = Logger.logObject.getter();
            v17 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v28[0] = swift_slowAlloc();
              *v18 = 136315394;
              v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v17;
              v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v28);

              *(v18 + 4) = v21;
              *(v18 + 12) = 2080;
              *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v28);
              _os_log_impl(&dword_0, v16, v27, "#INPerson Replacing handle label with translated label! %s => %s", v18, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_26_0();
              OUTLINED_FUNCTION_26_0();
            }

            if (v6)
            {
              outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v8, v10, v6, &selRef_setLabel_);
LABEL_20:
              v24 = INIntentSlotValueTransformFromContactHandle();
              [v1 setPersonHandle:{v24, &type metadata for String, v26, v26, v26}];
              v25 = v1;

              return v1;
            }
          }
        }

        goto LABEL_20;
      }
    }
  }

  v22 = v0;
  return v1;
}

uint64_t INPreferredCallProvider.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    v1 = INPreferredCallProviderGetBackingType();
    switch(v1)
    {
      case 4:
        v2 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v2 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v2 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", v1];
        goto LABEL_11;
    }

    v3 = v2;
LABEL_11:
    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
    return OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_0();
}

id INPerson.nameLowercasedWithFirstUppercased.getter()
{
  OUTLINED_FUNCTION_66();
  v65 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v62 = v11 - v12;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v13);
  v63 = v61 - v14;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v15);
  v64 = v61 - v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_15_30();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_35_10();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_13_32();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_34_10();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_33_12();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_14_33();
  __chkstk_darwin(v23);
  v25 = v61 - v24;
  v26 = [v65 displayName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v66 = v27;
  v67 = v29;
  v61[1] = lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.capitalized.getter();
  v30 = String._bridgeToObjectiveC()();

  [v65 setDisplayName:v30];

  v31 = [v65 nameComponents];
  if (v31)
  {
    v32 = v31;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_42_11(v2, v33);
  outlined init with take of PersonNameComponents?();
  if (OUTLINED_FUNCTION_32_1(v25))
  {
    outlined init with copy of PersonNameComponents?();
    OUTLINED_FUNCTION_4_1(v3);
    if (v35)
    {
      v39 = 0;
    }

    else
    {
      v39 = v3;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v40 + 8))(v3, v34);
    }

    [v65 setNameComponents:v39];

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v36 = [v65 nameComponents];
    if (v36)
    {
      v37 = v36;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    OUTLINED_FUNCTION_42_11(v4, v38);
    outlined init with take of PersonNameComponents?();
    if (OUTLINED_FUNCTION_32_1(v6) || (PersonNameComponents.givenName.getter(), !v41))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v66 = v6;
      v67 = v2;
      StringProtocol.capitalized.getter();
    }

    OUTLINED_FUNCTION_31_12();
    PersonNameComponents.givenName.setter();
    OUTLINED_FUNCTION_4_1(v25);
    if (v35)
    {
      v42 = 0;
    }

    else
    {
      v42 = v25;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v43 + 8))(v25, v34);
    }

    [v65 setNameComponents:v42];
  }

  v44 = [v65 nameComponents];
  if (v44)
  {
    v45 = v44;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  OUTLINED_FUNCTION_42_11(v5, v46);
  outlined init with take of PersonNameComponents?();
  if (OUTLINED_FUNCTION_32_1(v0))
  {
    v47 = v64;
    outlined init with copy of PersonNameComponents?();
    OUTLINED_FUNCTION_4_1(v47);
    if (v35)
    {
      v53 = 0;
    }

    else
    {
      v53 = v47;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v54 + 8))(v47, v34);
    }

    [v65 setNameComponents:v53];

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v48 = [v65 nameComponents];
    if (v48)
    {
      v49 = v48;
      v50 = v62;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = 0;
    }

    else
    {
      v51 = 1;
      v50 = v62;
    }

    v52 = v63;
    OUTLINED_FUNCTION_42_11(v50, v51);
    outlined init with take of PersonNameComponents?();
    if (OUTLINED_FUNCTION_32_1(v52) || (PersonNameComponents.familyName.getter(), !v55))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v52, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v66 = v52;
      v67 = v50;
      StringProtocol.capitalized.getter();
    }

    OUTLINED_FUNCTION_31_12();
    PersonNameComponents.familyName.setter();
    OUTLINED_FUNCTION_4_1(v0);
    if (v35)
    {
      v56 = 0;
    }

    else
    {
      v56 = v0;
      PersonNameComponents._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_8_44();
      (*(v57 + 8))(v0, v34);
    }

    [v65 setNameComponents:v56];
  }

  OUTLINED_FUNCTION_65();

  return v58;
}

uint64_t INCallRecordTypeOptions.INPBStringRepresentation.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);
  OUTLINED_FUNCTION_10_36();
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ();
  v5[3] = &block_descriptor_3;
  v2 = _Block_copy(v5);

  OUTLINED_FUNCTION_31_12();
  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v2);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v3 = *v1;

  return v3;
}

INPerson __swiftcall INPerson.init(phoneContact:)(CNContact phoneContact)
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v14 = OUTLINED_FUNCTION_21(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_13_32();
  v18 = __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_15_30();
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContact:v3];
  v23 = [v22 nameComponents];
  if (v23)
  {
    v24 = v23;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_54_13();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  outlined init with take of PersonNameComponents?();
  if (!__swift_getEnumTagSinglePayload(v21, 1, v4))
  {
    static PersonNameComponents.phoneticComponents(for:)(v3);
    OUTLINED_FUNCTION_54_13();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    PersonNameComponents.phoneticRepresentation.setter();
  }

  outlined init with copy of PersonNameComponents?();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  if (EnumTagSinglePayload == 1)
  {
    isa = 0;
  }

  else
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    EnumTagSinglePayload = (*(v7 + 8))(v1, v4);
  }

  OUTLINED_FUNCTION_59_6(EnumTagSinglePayload, "setNameComponents:");

  v35 = [v22 personHandle];
  if (v35)
  {

    v36 = v22;
LABEL_24:

    goto LABEL_25;
  }

  if ([v3 contactType] == &dword_0 + 1)
  {

LABEL_15:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v57 = v7;
    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriPhone);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "#INPerson Using CNContactFormatter to follow user's display name preferences", v45, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v46 = objc_opt_self();
    v47 = [v46 stringFromContact:v3 style:0];
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v49 = [v46 stringFromContact:v3 style:1];
    if (v49)
    {
      v50 = v49;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    PersonNameComponents.init(name:phoneticName:)();
    v36 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v51 = (*(v57 + 8))(v12, v4);
    OUTLINED_FUNCTION_59_6(v51, "setNameComponents:");
    goto LABEL_24;
  }

  v37 = [v22 displayName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    goto LABEL_15;
  }

LABEL_25:
  v52 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v3, &selRef_phonemeData);
  if (v53)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  OUTLINED_FUNCTION_59_6(v52, "setPhonemeData:");

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_65();
  return result;
}

INPerson __swiftcall INPerson.init(contactIdentifier:)(Swift::String contactIdentifier)
{
  object = contactIdentifier._object;
  countAndFlagsBits = contactIdentifier._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = objc_allocWithZone(INPersonHandle);
  v5 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
  OUTLINED_FUNCTION_19_3();
  v10 = outlined bridged method (mnnnnbnnn) of @objc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v6, v7, v8, v9, countAndFlagsBits, object, 0, v3);

  return v10;
}

id static INPerson.from(base64ContactId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_55();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  OUTLINED_FUNCTION_70_1();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, NSData_ptr);
  v2._countAndFlagsBits = OUTLINED_FUNCTION_19_0();
  v3 = NSData.__allocating_init(base64Encoded:options:)(v2, 0);
  if (v3)
  {
    v4 = v3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_70_1();
  }

  v6 = objc_allocWithZone(_INPBContactValue);
  v7 = OUTLINED_FUNCTION_19_0();
  v9 = @nonobjc _SFPBCard.init(data:)(v7, v8);
  v5 = INIntentSlotValueTransformFromContactValue();

  return v5;
}

BOOL INPerson.hasHandleLabel.getter()
{
  v1 = [v0 personHandle];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 label];

    if (v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_40_13();
    }
  }

  v4 = OUTLINED_FUNCTION_0();
  v6 = specialized Optional<A>.isNilOrEmpty.getter(v4, v5);

  return (v6 & 1) == 0;
}

void INPersonRelationship.toSpeakableString(startCallCats:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v43 = v3;
  v4 = type metadata accessor for TemplatingResult();
  v5 = OUTLINED_FUNCTION_7(v4);
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v19 = OUTLINED_FUNCTION_23_1(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_35_10();
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMd, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMR);
  v26 = OUTLINED_FUNCTION_23_1(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_12_5();
  v31 = (v29 - v30);
  __chkstk_darwin(v32);
  v34 = (&v41 - v33);
  INPersonRelationship.nlString.getter();
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  v35 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v35);
  (*(*v2 + class metadata base offset for StartCallCATs + 1496))(v17);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined init with copy of PersonNameComponents?();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    *v34 = *v0;
  }

  else
  {
    v36 = v41;
    v37 = v0;
    v38 = v42;
    (*(v41 + 32))(v11, v37, v42);
    closure #1 in INPersonRelationship.toSpeakableString(startCallCats:)();
    (*(v36 + 8))(v11, v38);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  swift_storeEnumTagMultiPayload();
  outlined init with copy of PersonNameComponents?();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMd, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMR);

    v39 = 1;
    v40 = v43;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMd, &_ss6ResultOy16SiriDialogEngine15SpeakableStringVs5Error_pGMR);
    v40 = v43;
    (*(*(v35 - 8) + 32))(v43, v31, v35);
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v40, v39, 1, v35);
  OUTLINED_FUNCTION_65();
}

id INPerson.hasNameComponents.getter()
{
  v1 = type metadata accessor for PersonNameComponents();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  result = [v0 nameComponents];
  if (result)
  {
    v8 = result;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_42BF10;
    *(inited + 32) = PersonNameComponents.givenName.getter();
    *(inited + 40) = v10;
    *(inited + 48) = PersonNameComponents.middleName.getter();
    *(inited + 56) = v11;
    *(inited + 64) = PersonNameComponents.familyName.getter();
    *(inited + 72) = v12;
    v13 = PersonNameComponents.nickname.getter();
    v14 = 0;
    *(inited + 80) = v13;
    *(inited + 88) = v15;
    while (1)
    {
      if (v14 == 64)
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v18 = *(v4 + 8);
        v19 = OUTLINED_FUNCTION_20_0();
        v20(v19);
        return 0;
      }

      v16 = *(inited + v14 + 40);
      if (v16)
      {
        if ((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : *(inited + v14 + 32) & 0xFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      v14 += 16;
    }

    v21 = *(v4 + 8);
    v22 = OUTLINED_FUNCTION_20_0();
    v23(v22);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    return &dword_0 + 1;
  }

  return result;
}

uint64_t INCallDestinationType.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallDestinationTypeGetBackingType();
    switch(BackingType)
    {
      case 1:
        v2 = @"NORMAL_DESTINATION";
        goto LABEL_9;
      case 2:
        v2 = @"EMERGENCY_DESTINATION";
        goto LABEL_9;
      case 3:
        v2 = @"VOICEMAIL_DESTINATION";
        goto LABEL_9;
      case 4:
        v2 = @"REDIAL_DESTINATION";
        goto LABEL_9;
      case 5:
        v2 = @"CALL_BACK_DESTINATION";
LABEL_9:
        v3 = v2;
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t INStartCallIntent.updatePreferredCallProvider(preferredCallProvider:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v3[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3[0] = v1;
  NSObject.update(with:at:)(v3, 0xD000000000000015, 0x80000000004522D0);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t INStartCallIntent.updateDestinationType(destinationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v7[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v7[0] = v5;
  NSObject.update(with:at:)(v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t FollowUpOfferType.rawValue.getter(char a1)
{
  result = 1162760014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x4C41435F44414552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FollowUpOfferType.requiresConfirmation.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_44_9();
      goto LABEL_3;
    case 3:
    case 4:
LABEL_3:
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = 0;
      if (v2)
      {
        return v3 & 1;
      }

      if (FollowUpOfferType.rawValue.getter(a1) == 0x4C41435F44414552 && v4 == 0xE90000000000004CLL)
      {
LABEL_9:

        v3 = 0;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v3 = v6 ^ 1;
      }

      return v3 & 1;
    default:
      goto LABEL_9;
  }
}

uint64_t INIntent.typed<A>(as:)()
{
  v1 = v0;
  v2 = swift_dynamicCastUnknownClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
  }

  else
  {
    v6 = INTypedIntentWithIntent();
    if (v6)
    {
      v7 = v6;
      v3 = swift_dynamicCastUnknownClass();
      if (!v3)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t INIntent.typedOrThrow<A>(as:)()
{
  v0 = type metadata accessor for PhoneError();
  v1 = OUTLINED_FUNCTION_23_1(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  result = INIntent.typed<A>(as:)();
  if (!result)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    swift_allocError();
    PhoneError.logged()(v8);
    outlined destroy of PhoneError(v6);
    return swift_willThrow();
  }

  return result;
}

id INIntent.copyMetadata(from:)(void *a1)
{
  v1 = [a1 _metadata];
  [v3 _setMetadata:v1];

  return v3;
}

Swift::Void __swiftcall INStartCallIntent.overwriteContacts(newContacts:)(Swift::OpaquePointer newContacts)
{
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v6[0] = newContacts._rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_30_16(inited, xmmword_424FF0);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = v5;
  v3[3].n128_u64[0] = 0xD00000000000001DLL;
  v3[3].n128_u64[1] = 0x800000000045C250;

  NSObject.update(with:at:)(v6, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall INStartCallIntent.overwriteCallGroups(newCallGroups:)(Swift::OpaquePointer newCallGroups)
{
  outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(newCallGroups._rawValue, v1, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr, &selRef_setCallGroups_);
  [objc_allocWithZone(NSNumber) initWithBool:specialized Array.count.getter(newCallGroups._rawValue) != 0];
  OUTLINED_FUNCTION_51_12();
  [v1 setIsGroupCall:?];
}

Swift::Bool __swiftcall INStartCallIntent.isGroupCall()()
{
  v1 = [v0 isGroupCall];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v4 = static NSObject.== infix(_:_:)();

    LOBYTE(v1) = v4 & 1;
  }

  return v1;
}

id INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:isGroupCall:callGroups:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  if (a6)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17.super.isa ttyType:a7 callCapability:a8];

  v19 = objc_allocWithZone(NSNumber);
  v20 = v18;
  v21 = [v19 initWithBool:a9 & 1];
  [v20 setIsGroupCall:v21];

  if (a10)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    OUTLINED_FUNCTION_74();
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22.super.isa = 0;
  }

  [v20 setCallGroups:v22.super.isa];

  return v20;
}

INStartAudioCallIntent_optional __swiftcall INStartCallIntent.toStartAudioCallIntent()()
{
  v1 = [objc_allocWithZone(INStartAudioCallIntent) init];
  if (outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_contacts, &lazy cache variable for type metadata for INPerson, INPerson_ptr))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    OUTLINED_FUNCTION_74();
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  [v1 setContacts:v2.super.isa];

  [v1 setDestinationType:{objc_msgSend(v0, "destinationType")}];
  v4 = v1;
  result.value.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

BOOL INStartCallIntent.isThirdPartyCallKitCallBack.getter()
{
  if ([v0 preferredCallProvider] != &dword_0 + 3)
  {
    return 0;
  }

  if ([v0 destinationType] == &dword_4)
  {
    return 1;
  }

  return [v0 destinationType] == &dword_4 + 1;
}

void INStartCallIntent.setLaunchId(app:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 _metadata];
  if (v4)
  {
    outlined bridged method (ob) of @objc INPersonHandle.value.getter(v4, &selRef_launchId);
    if (v5)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.siriPhone);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, oslog, v7, "launchId is already configured, nothing to do.", v8, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      return;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "No launchId configured for intent. Applying based on the resolved app.", v12, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v13 = [v2 _metadata];
  if (v13)
  {
    v14 = v13;
    [v13 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _INPBIntentMetadata, _INPBIntentMetadata_ptr);
    if (OUTLINED_FUNCTION_58_5())
    {
      v15 = v37;
      goto LABEL_18;
    }
  }

  v15 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (v15)
  {
LABEL_18:
    if (a1)
    {
      v16 = App.appIdentifier.getter();
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        _StringGuts.grow(_:)(21);

        v38[0] = 0xD000000000000013;
        v38[1] = 0x8000000000458630;
        v20._countAndFlagsBits = v18;
        v20._object = v19;
        String.append(_:)(v20);

        outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(0xD000000000000013, 0x8000000000458630, v15, &selRef_setLaunchId_);
      }
    }

    v21 = v15;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      v26 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v21, &selRef_launchId);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v26 = 0x3E6C696E3CLL;
        v28 = 0xE500000000000000;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v38);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v22, v23, "Updating intent metadata with app information: launchId=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    [v2 _setMetadata:v21];
    return;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000000045C270, v38);
    OUTLINED_FUNCTION_57(&dword_0, v34, v35, "%s");
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall INStartCallIntent.updateIsGroupCall(isGroupCall:)(Swift::Bool isGroupCall)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = isGroupCall;
    _os_log_impl(&dword_0, v3, v4, "#INStartCallIntent Updating intent with isGroupCall : %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_26_0();
  }

  v6[3] = &type metadata for Bool;
  LOBYTE(v6[0]) = isGroupCall;
  NSObject.update(with:at:)(v6, 0x4370756F72477369, 0xEB000000006C6C61);
  __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Bool __swiftcall INStartCallIntent.isGroupFaceTimeCall()()
{
  if (INStartCallIntent.isGroupCall()() || (v1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callGroups, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr)) == 0)
  {
    v3 = 1;
  }

  else
  {
    v2 = specialized Array.count.getter(v1);

    v3 = v2 != 0;
  }

  return [v0 preferredCallProvider] == &dword_0 + 2 && v3;
}

void @nonobjc INStartCallIntent.callGroups.setter(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setCallGroups:isa];
}

void (*protocol witness for CallingIntent.callGroups.modify in conformance INStartCallIntent(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = INStartCallIntent.callGroups.modify(v2);
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

void (*INStartCallIntent.callGroups.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v1, &selRef_callGroups, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
  return INStartCallIntent.callGroups.modify;
}

void INStartCallIntent.callGroups.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v4 = *a1;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setCallGroups:isa];
  }

  else if (v3)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1[1] setCallGroups:isa];
  }

  else
  {
    isa = 0;
    [a1[1] setCallGroups:0];
  }
}

void (*protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartCallIntent(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 callRequestMetadata];
  return protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartCallIntent;
}

void protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartCallIntent(id *a1)
{
  v1 = *a1;
  [a1[1] setCallRequestMetadata:?];
}

id INStartCallIntentResponse.thirdPartyCallKitCallBackBundleId.getter()
{
  result = [v0 userActivity];
  if (result)
  {
    v2 = result;
    v3 = [result interaction];

    if (v3)
    {
      v4 = [v3 intent];

      return outlined bridged method (ob) of @objc INPersonHandle.value.getter(v4, &selRef_launchId);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void INSearchCallHistoryIntent.isSingleDateRequest.getter()
{
  OUTLINED_FUNCTION_66();
  v5 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_33_12();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_35_10();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_15_30();
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Date();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_34_10();
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v44 - v23;
  v25 = [v5 dateCreated];
  if (!v25)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v15);
LABEL_7:
    v32 = v14;
    goto LABEL_15;
  }

  v26 = v25;
  v45 = v4;
  v27 = [v25 startDate];

  if (v27)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v28, 1, v15);
  outlined init with take of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  v33 = v18;
  v34 = *(v18 + 32);
  v34(v24, v14, v15);
  v35 = [v5 dateCreated];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 endDate];

    if (v37)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    __swift_storeEnumTagSinglePayload(v2, v38, 1, v15);
    OUTLINED_FUNCTION_5_26();
    outlined init with take of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(v0, 1, v15) != 1)
    {
      v42 = v45;
      v34(v45, v0, v15);
      static Date.== infix(_:_:)();
      v43 = *(v33 + 8);
      v43(v42, v15);
      v43(v24, v15);
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v15);
  }

  (*(v18 + 8))(v24, v15);
  v32 = v0;
LABEL_15:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_16:
  OUTLINED_FUNCTION_65();
}

uint64_t INSearchCallHistoryIntent.isTimeRangeRequest.getter()
{
  v1 = [v0 dateCreated];
  v2 = [v1 allDay];

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  if (v2)
  {
    v4 = static NSObject.== infix(_:_:)();

    v3.super.super.isa = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t (*protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartAudioCallIntent(void *a1))()
{
  a1[1] = v1;
  *a1 = [v1 callRequestMetadata];
  return protocol witness for CallingIntent.callRequestMetadata.modify in conformance INStartAudioCallIntent;
}

uint64_t INStartAudioCallIntent.overwriteContacts(newContacts:)(uint64_t a1)
{
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v7[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_30_16(inited, xmmword_424FD0);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = v5;

  NSObject.update(with:at:)(v7, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

Swift::String __swiftcall INAddCallParticipantIntent.getContactsKeyPath()()
{
  v0 = 0x7069636974726170;
  v1 = 0xEC00000073746E61;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

double INSearchCallHistoryIntent.contacts.getter()
{
  v1 = [v0 recipient];
  if (v1)
  {
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *&result = 1;
    *(v4 + 16) = xmmword_426260;
    *(v4 + 32) = v3;
  }

  return result;
}

Swift::Void __swiftcall INSearchCallHistoryIntent.overwriteContacts(newContacts:)(Swift::OpaquePointer newContacts)
{
  if (newContacts._rawValue >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*(&dword_10 + (newContacts._rawValue & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (newContacts._rawValue & 0xC000000000000001) == 0, newContacts._rawValue);
  if ((newContacts._rawValue & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(newContacts._rawValue + 4);
  }

  v4 = v3;
  [v1 setRecipient:?];
}

Swift::String __swiftcall INSearchCallHistoryIntent.getContactsKeyPath()()
{
  v0 = 0x6E65697069636572;
  v1 = 0xE900000000000074;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

PhoneCallFlowDelegatePlugin::FollowUpOfferType_optional __swiftcall FollowUpOfferType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FollowUpOfferType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::FollowUpOfferType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance FollowUpOfferType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::FollowUpOfferType_optional *a2@<X8>)
{
  result.value = FollowUpOfferType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FollowUpOfferType@<X0>(unint64_t *a1@<X8>)
{
  result = FollowUpOfferType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id INIdentifyIncomingCallerIntentResponse.init(statusCode:callRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a3 userActivity:0];
  [v4 setStatusCode:a1];
  OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc INIdentifyIncomingCallerIntentResponse.callRecords.setter();

  return v4;
}

Swift::Bool __swiftcall INAnswerCallIntentResponse.isSuccessCodeWithRingingCallRecord()()
{
  if ([v0 code] != &dword_4)
  {
    goto LABEL_8;
  }

  v1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (!v1)
  {
    return v1;
  }

  v2 = v1;
  if (!specialized Array.count.getter(v1))
  {

LABEL_8:
    LOBYTE(v1) = 0;
    return v1;
  }

  v3 = (v2 & 0xC000000000000001);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_40_0();

  v5 = [v2 & 0xC000000000000001 callRecordType];

  LOBYTE(v1) = v5 == &dword_4 + 2;
  return v1;
}

uint64_t INSearchCallHistoryIntentResponse.callRecordsCount.getter()
{
  result = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (result)
  {
    specialized Array.count.getter(result);
    OUTLINED_FUNCTION_40_0();

    return v0;
  }

  return result;
}

uint64_t INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter()
{
  v1 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized Array.count.getter(v1);
  if (!v3)
  {
LABEL_16:

    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      v15 = 0;
      v17 = &_swiftEmptyArrayStorage[4];
      while (1)
      {
        v18 = *v17++;
        v19 = __OFADD__(v15, v18);
        v15 += v18;
        if (v19)
        {
          break;
        }

        if (!--v16)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v15 = 0;
LABEL_22:

    return v15;
  }

  v4 = v3;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      v9 = INCallRecord.numberOfCalls.getter();
      v11 = v10;

      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
    }

    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

void INSearchCallHistoryIntentResponse.newRecordsCount.getter()
{
  v5 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (v5)
  {
    v6 = v5;
    specialized Array.count.getter(v5);
    OUTLINED_FUNCTION_49_10();
    while (1)
    {
      if (v1 == v2)
      {

        specialized Array.count.getter(_swiftEmptyArrayStorage);
        OUTLINED_FUNCTION_40_0();

        return;
      }

      if (v3)
      {
        OUTLINED_FUNCTION_5_26();
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v6 + 8 * v2 + 32);
      }

      v8 = v7;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = INCallRecord.unseen.getter();
      if (v9 == 2 || (v9 & 1) == 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v2;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void INSearchCallHistoryIntentResponse.savedRecordsCount.getter()
{
  v5 = outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(v0, &selRef_callRecords, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  if (v5)
  {
    v6 = v5;
    specialized Array.count.getter(v5);
    OUTLINED_FUNCTION_49_10();
    while (1)
    {
      if (v1 == v2)
      {

        specialized Array.count.getter(_swiftEmptyArrayStorage);
        OUTLINED_FUNCTION_40_0();

        return;
      }

      if (v3)
      {
        OUTLINED_FUNCTION_5_26();
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v6 + 8 * v2 + 32);
      }

      v8 = v7;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (INCallRecord.unseen.getter() == 2 || (v9 = INCallRecord.unseen.getter(), v9 == 2) || (v9 & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_46_11();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v2;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

NSData_optional __swiftcall NSData.__allocating_init(base64Encoded:options:)(Swift::String base64Encoded, NSDataBase64DecodingOptions options)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithBase64EncodedString:v4 options:options];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

Swift::String __swiftcall INPerson.asBase64()()
{
  v2 = INIntentSlotValueTransformToContactValue();
  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = outlined bridged method (ob) of @objc PBCodable.data.getter(v2);
  if (v3 >> 60 == 15)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_70_1();
  Data.base64EncodedString(options:)(0);
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_19_0();
  outlined consume of Data?(v4, v5);
  OUTLINED_FUNCTION_0_55();
  v10 = v7;
  v11 = v6;
  v8._countAndFlagsBits = v0;
  v8._object = v1;
  String.append(_:)(v8);

  v2 = v10;
  v3 = v11;
LABEL_6:
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall INPerson.toStartRequestUtterance()()
{
  v0 = type metadata accessor for MachineUtteranceBuilder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  INPerson.asBase64()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  v3 = dispatch thunk of MachineUtteranceBuilder.build()();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void INPerson.isUnnamedPhoneNumber.getter()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (v3 == &dword_0 + 2)
    {

      INPerson.isUnnamedHandle.getter();
    }
  }
}

void INPerson.isUnnamedHandle.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = type metadata accessor for CharacterSet();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_13_32();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_34_10();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_14_33();
  v12 = __chkstk_darwin(v11);
  v14 = &v42 - v13;
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = [v0 personHandle];
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = v17;
  v19 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v17, &selRef_value);
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = v20;
  v46 = v19;
  if (INPerson.hasNameComponents.getter())
  {

    goto LABEL_6;
  }

  v45 = v6;
  v22 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v0, &selRef__displayName);
  if (!v23)
  {
LABEL_19:

    goto LABEL_6;
  }

  v24 = v22;
  v25 = v23;
  v26 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_19;
  }

  if ([v18 type] == &dword_0 + 2)
  {
    CharacterSet.init(charactersIn:)();
    static CharacterSet.decimalDigits.getter();
    v44 = v24;
    CharacterSet.union(_:)();
    v43 = v25;
    v27 = v1;
    v28 = *(v45 + 8);
    v28(v27, v3);
    v28(v2, v3);
    static CharacterSet.controlCharacters.getter();
    CharacterSet.union(_:)();
    v29 = v2;
    v30 = v28;
    v28(v29, v3);
    v31 = OUTLINED_FUNCTION_20_0();
    (v28)(v31);
    static CharacterSet.whitespacesAndNewlines.getter();
    CharacterSet.union(_:)();
    v32 = OUTLINED_FUNCTION_20_0();
    (v28)(v32);
    v33 = v43;
    v34 = (v28)(v14, v3);
    __chkstk_darwin(v34);
    *(&v42 - 2) = v16;

    v35 = specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in INPerson.isUnnamedHandle.getter, (&v42 - 4), v44, v33);

    if (v35)
    {
      v36 = specialized RangeReplaceableCollection.filter(_:)(v44, v33);
      v38 = v37;
      if (v36 != specialized RangeReplaceableCollection.filter(_:)(v46, v21) || v38 != v39)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v30(v16, v3);
  }

  else
  {
    if (v24 != v46 || v25 != v21)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_65();
}

void INPerson.isUnnamedUnknownHandle.getter()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (!v3)
    {

      INPerson.isUnnamedHandle.getter();
    }
  }
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2)
{
  v31 = type metadata accessor for CharacterSet();
  v5 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = a1;
    v25[1] = v2;
    v11 = 0;
    v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v27 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28[0] = v10;
          v28[1] = v27;
          v14 = *(v28 + v11);
          if (v14 < 0)
          {
            OUTLINED_FUNCTION_37_1();
            switch(v20)
            {
              case 1:
LABEL_20:
                v21 = v15[1] & 0x3F | ((v14 & 0x1F) << 6);
                v18 = 2;
                break;
              case 2:
LABEL_21:
                v22 = ((v14 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3Fu;
                v18 = 3;
                break;
              case 3:
LABEL_22:
                v23 = ((v14 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3Fu;
                v18 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v13 = v26;
          if ((v10 & 0x1000000000000000) == 0)
          {
            v13 = _StringObject.sharedUTF8.getter();
          }

          v14 = *(v13 + v11);
          if (v14 < 0)
          {
            OUTLINED_FUNCTION_37_1();
            switch(v16)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v18 = 1;
      }

LABEL_15:
      static CharacterSet.decimalDigits.getter();
      v19 = CharacterSet.contains(_:)();
      (*v12)(v8, v31);
      if (v19)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v11 += v18;
      if (v11 >= v9)
      {

        return v29;
      }
    }
  }

  return 0;
}

id INPerson.isUnnamedHandleLabel.getter()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result label];
    if (v3)
    {
      v4 = v3;
      v5 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v2, &selRef_value);
      v7 = specialized Optional<A>.isNilOrEmpty.getter(v5, v6);

      if ((v7 & 1) == 0)
      {
        goto LABEL_11;
      }

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (INPerson.hasNameComponents.getter() & 1) != 0)
      {
        goto LABEL_11;
      }

      v12 = [v0 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        v17 = [v0 relationship];

        v2 = v17;
        if (!v17)
        {
          return &dword_0 + 1;
        }
      }

      else
      {
LABEL_11:
      }
    }

    return 0;
  }

  return result;
}

void INPerson.toCNContact.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v28 = OUTLINED_FUNCTION_21(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_33_12();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_14_33();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_13_32();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  v36 = [objc_allocWithZone(CNMutableContact) init];
  v37 = [v26 nameComponents];
  if (v37)
  {
    v38 = v37;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for PersonNameComponents();
    v39 = 0;
  }

  else
  {
    type metadata accessor for PersonNameComponents();
    v39 = 1;
  }

  OUTLINED_FUNCTION_42_11(v23, v39);
  outlined init with take of PersonNameComponents?();
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_32_1(v35))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_6:

    goto LABEL_8;
  }

  PersonNameComponents.givenName.getter();
  v41 = v40;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (!v41)
  {
    goto LABEL_6;
  }

LABEL_8:
  v42 = String._bridgeToObjectiveC()();

  [v36 setGivenName:v42];

  v43 = [v26 nameComponents];
  if (v43)
  {
    v44 = v43;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  OUTLINED_FUNCTION_42_11(v22, v45);
  outlined init with take of PersonNameComponents?();
  if (OUTLINED_FUNCTION_32_1(v21))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    PersonNameComponents.familyName.getter();
    v47 = v46;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v47)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  v48 = String._bridgeToObjectiveC()();

  [v36 setFamilyName:v48];

  OUTLINED_FUNCTION_65();
}

void INPerson.toIntentPerson.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v102 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v101 = &v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonV6HandleVSgMd, &_s10AppIntents12IntentPersonV6HandleVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v99 = &v90 - v12;
  OUTLINED_FUNCTION_15_0();
  v100 = type metadata accessor for IntentPerson.Name();
  v13 = OUTLINED_FUNCTION_7(v100);
  v98 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_5();
  v97 = v17 - v18;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v19);
  v96 = (&v90 - v20);
  OUTLINED_FUNCTION_15_0();
  v107 = type metadata accessor for IntentPerson.Identifier();
  v21 = OUTLINED_FUNCTION_7(v107);
  v93 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_12_5();
  v106 = v25 - v26;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v27);
  v92 = (&v90 - v28);
  OUTLINED_FUNCTION_15_0();
  v29 = type metadata accessor for IntentPerson.Handle.Label();
  v30 = OUTLINED_FUNCTION_7(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_4();
  v37 = v36 - v35;
  v38 = type metadata accessor for IntentPerson.Handle();
  v39 = OUTLINED_FUNCTION_7(v38);
  v94 = v40;
  v95 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_4();
  v105 = v44 - v43;
  OUTLINED_FUNCTION_15_0();
  v45 = type metadata accessor for IntentPerson.Handle.Value();
  v46 = OUTLINED_FUNCTION_7(v45);
  v103 = v47;
  v104 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_12_5();
  v52 = v50 - v51;
  __chkstk_darwin(v53);
  v55 = (&v90 - v54);
  v56 = [v0 personHandle];
  if (v56 && (v57 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v56, &selRef_value), v58))
  {
    v59 = v57;
    v60 = v58;
  }

  else
  {

    v59 = 0;
    v60 = 0xE000000000000000;
  }

  v61 = [v1 personHandle];
  if (!v61)
  {
    goto LABEL_9;
  }

  v62 = v61;
  v63 = v29;
  v64 = v1;
  v65 = [v61 type];

  v66 = v65 == &dword_0 + 1;
  v1 = v64;
  v29 = v63;
  if (v66)
  {
    v67 = &enum case for IntentPerson.Handle.Value.emailAddress(_:);
  }

  else
  {
LABEL_9:
    v67 = &enum case for IntentPerson.Handle.Value.phoneNumber(_:);
  }

  *v55 = v59;
  v55[1] = v60;
  v68 = *v67;
  v69 = v103;
  v70 = v104;
  v71 = *(v103 + 104);
  v91 = v55;
  v71(v55, v68, v104);
  (*(v69 + 16))(v52, v55, v70);
  (*(v32 + 104))(v37, enum case for IntentPerson.Handle.Label.other(_:), v29);
  v72 = v105;
  IntentPerson.Handle.init(_:label:)();
  INPerson.identifier.getter();
  v74 = v92;
  v73 = v93;
  *v92 = v75;
  v74[1] = v76;
  v77 = v107;
  (*(v73 + 104))(v74, enum case for IntentPerson.Identifier.contact(_:), v107);
  v78 = [v1 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_29_18();

  v79 = v96;
  *v96 = v1;
  v79[1] = v1;
  v80 = v98;
  v81 = v100;
  (*(v98 + 104))(v79, enum case for IntentPerson.Name.displayName(_:), v100);
  (*(v73 + 16))(v106, v74, v77);
  (*(v80 + 16))(v97, v79, v81);
  v82 = v94;
  v83 = v99;
  v84 = v72;
  v85 = v95;
  (*(v94 + 16))(v99, v84, v95);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v85);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  IntentPerson.init(identifier:name:handle:aliases:isMe:image:)();
  (*(v80 + 8))(v79, v81);
  (*(v73 + 8))(v74, v107);
  (*(v82 + 8))(v105, v85);
  (*(v103 + 8))(v91, v104);
  OUTLINED_FUNCTION_65();
}

void INPerson.siriRemembersContactName.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v8 = [v0 nameComponents];
  v9 = &unk_548000;
  if (v8)
  {
    v10 = v8;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_427BC0;
    *(v11 + 32) = PersonNameComponents.namePrefix.getter();
    *(v11 + 40) = v12;
    *(v11 + 48) = PersonNameComponents.givenName.getter();
    *(v11 + 56) = v13;
    *(v11 + 64) = PersonNameComponents.middleName.getter();
    *(v11 + 72) = v14;
    *(v11 + 80) = PersonNameComponents.familyName.getter();
    *(v11 + 88) = v15;
    *(v11 + 96) = PersonNameComponents.nameSuffix.getter();
    *(v11 + 104) = v16;
    *(v11 + 112) = PersonNameComponents.nickname.getter();
    *(v11 + 120) = v17;
    v18 = *(v5 + 8);
    v19 = OUTLINED_FUNCTION_31_12();
    v20(v19);
    v21 = *(v11 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_424FD0;
    v22 = [v0 displayName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v11 + 32) = v23;
    *(v11 + 40) = v25;
    v21 = 1;
  }

  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
LABEL_5:
  v28 = (v11 + 40 + 16 * v26);
  while (v21 != v26)
  {
    if (v26 >= v21)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_25;
    }

    v30 = *v28;
    if (*v28)
    {
      v31 = *(v28 - 1);
      v32 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v32 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v44 = v1;

        v33 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = v27[2];
          OUTLINED_FUNCTION_54_13();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v27 = v37;
        }

        v34 = v27[2];
        if (v34 >= v27[3] >> 1)
        {
          OUTLINED_FUNCTION_54_13();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v27 = v38;
        }

        v27[2] = v34 + 1;
        v35 = &v27[2 * v34];
        v35[4] = v31;
        v35[5] = v30;
        v26 = v29;
        v9 = v33;
        v1 = v44;
        goto LABEL_5;
      }
    }

    ++v26;
    v28 += 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

    v43 = [v1 v9[217]];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_65();
}

INPerson __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> INPerson.mutableCopyPerson()()
{
  v1 = v0;
  v2 = type metadata accessor for PhoneError();
  v3 = OUTLINED_FUNCTION_23_1(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  [v1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (swift_dynamicCast())
  {
    return v15;
  }

  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_31_12();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v14);
  outlined destroy of PhoneError(v8);
  return swift_willThrow();
}

uint64_t INPersonRelationship.nlString.getter()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  v3 = v3 && v0 == v2;
  if (v3)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v4)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v6)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v8)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v10)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v12)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v14)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v16)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v18)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v20)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v22)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v24)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if (v1)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v3 && v0 == v26)
  {
LABEL_69:

    goto LABEL_70;
  }

  OUTLINED_FUNCTION_3_50();
  OUTLINED_FUNCTION_20_2();

  if ((v1 & 1) == 0)
  {

    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_70:
  BackingType = INPersonRelationshipGetBackingType();
  switch(BackingType)
  {
    case 0:
      v30 = @"Father";
      goto LABEL_85;
    case 1:
      v30 = @"Mother";
      goto LABEL_85;
    case 2:
      v30 = @"Parent";
      goto LABEL_85;
    case 3:
      v30 = @"Brother";
      goto LABEL_85;
    case 4:
      v30 = @"Sister";
      goto LABEL_85;
    case 5:
      v30 = @"Child";
      goto LABEL_85;
    case 6:
      v30 = @"Friend";
      goto LABEL_85;
    case 7:
      v30 = @"Spouse";
      goto LABEL_85;
    case 8:
      v30 = @"Partner";
      goto LABEL_85;
    case 9:
      v30 = @"Assistant";
      goto LABEL_85;
    case 10:
      v30 = @"Manager";
      goto LABEL_85;
    case 11:
      v30 = @"Son";
      goto LABEL_85;
    case 12:
      v30 = @"Daughter";
LABEL_85:
      v31 = v30;
      break;
    default:
      v30 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      break;
  }

  v32 = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_29_18();

  String.lowercased()();
  OUTLINED_FUNCTION_70_1();

  return OUTLINED_FUNCTION_19_0();
}

void *closure #1 in INPersonRelationship.toSpeakableString(startCallCats:)()
{
  result = TemplatingResult.print.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result[4];
  v2 = result[5];

  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result[4];
  v4 = result[5];

  return SpeakableString.init(print:speak:)();
}

uint64_t INCallRecord.callProviderApp.getter()
{
  type metadata accessor for App();
  outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v0, &selRef_providerBundleId);
  return App.__allocating_init(appIdentifier:)();
}

id INCallRecord.refinedCallDurationAsDouble.getter()
{
  result = [v0 callDuration];
  v2 = result;
  if (result)
  {
    Double.init(truncating:)();
    v4 = v3;

    return v4;
  }

  return result;
}

id INCallRecord.refinedNumberOfCallsAsInt.getter()
{
  v1 = [v0 numberOfCalls];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t INCallRecord.refinedIsCallerIDBlockedAsBool.getter(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

uint64_t INCallRecordType.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallRecordTypeGetBackingType();
    switch(BackingType)
    {
      case 2:
        v2 = @"OUTGOING";
        goto LABEL_13;
      case 3:
        v2 = @"MISSED";
        goto LABEL_13;
      case 4:
        v2 = @"RECEIVED";
        goto LABEL_13;
      case 5:
        v2 = @"LATEST";
        goto LABEL_13;
      case 7:
        v2 = @"VOICEMAIL";
        goto LABEL_13;
      case 8:
        v2 = @"RINGING";
        goto LABEL_13;
      case 9:
        v2 = @"IN_PROGRESS";
        goto LABEL_13;
      case 10:
        v2 = @"ON_HOLD";
LABEL_13:
        v3 = v2;
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t closure #1 in INCallRecordTypeOptions.INPBStringRepresentation.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"OUTGOING";
      goto LABEL_11;
    case 3:
      v1 = @"MISSED";
      goto LABEL_11;
    case 4:
      v1 = @"RECEIVED";
      goto LABEL_11;
    case 5:
      v1 = @"LATEST";
      goto LABEL_11;
    case 7:
      v1 = @"VOICEMAIL";
      goto LABEL_11;
    case 8:
      v1 = @"RINGING";
      goto LABEL_11;
    case 9:
      v1 = @"IN_PROGRESS";
      goto LABEL_11;
    case 10:
      v1 = @"ON_HOLD";
LABEL_11:
      v2 = v1;
      break;
    default:
      v1 = [NSString stringWithFormat:@"(unknown: %i)", a1];
      break;
  }

  v3 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_56_4();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_55_11();
  return OUTLINED_FUNCTION_23_13();
}

uint64_t INCallCapabilityOptions.INPBStringRepresentation.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);
  OUTLINED_FUNCTION_10_36();
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallCapability) -> ();
  v5[3] = &block_descriptor_4;
  v2 = _Block_copy(v5);

  OUTLINED_FUNCTION_31_12();
  INCallCapabilityOptionsEnumerateBackingTypes();
  _Block_release(v2);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v3 = *v1;

  return v3;
}

uint64_t closure #1 in INCallCapabilityOptions.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"VIDEO_CALL";
  }

  else
  {
    if (a1 != 1)
    {
      v1 = [NSString stringWithFormat:@"(unknown: %i)", a1];
      goto LABEL_7;
    }

    v1 = @"AUDIO_CALL";
  }

  v2 = v1;
LABEL_7:
  v3 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_56_4();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_55_11();
  return OUTLINED_FUNCTION_23_13();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned _INPBCallCapability) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id @nonobjc INPlayVoicemailIntent.init(callRecordIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCallRecordIdentifier:v3];

  return v4;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v10 = &unk_548000;
    while (1)
    {
      v11 = v8++;
      v111 = v11;
      if (v8 >= v7)
      {
        goto LABEL_28;
      }

      v116 = v7;
      v121 = v9;
      v12 = v6;
      v9 = *a3;
      v13 = v8;
      v14 = *(*a3 + 8 * v11);
      v15 = *(*a3 + 8 * v8);
      v16 = v14;
      v17 = [v15 rank];
      if (!v17)
      {
        goto LABEL_147;
      }

      v18 = v17;
      v114 = [v17 v10[436]];

      v19 = [v16 rank];
      if (!v19)
      {
        goto LABEL_148;
      }

      v5 = v19;
      v112 = [v19 v10[436]];

      v20 = (v9 + 8 * v111 + 16);
      v21 = v111 + 2;
      v6 = v12;
      v8 = v13;
      v22 = v116;
      while (1)
      {
        v23 = v21;
        if (v8 + 1 >= v22)
        {
          break;
        }

        v125 = v8;
        v119 = v6;
        v24 = *(v20 - 1);
        v25 = *v20;
        v26 = v24;
        v27 = [v25 rank];
        if (!v27)
        {
          goto LABEL_142;
        }

        v28 = v27;
        v29 = [v27 integerValue];

        v30 = [v26 rank];
        if (!v30)
        {
          goto LABEL_141;
        }

        v5 = v30;
        v9 = v114 < v112;
        v31 = [v30 integerValue];

        ++v20;
        v8 = v125 + 1;
        v21 = v23 + 1;
        v6 = v119;
        v22 = v116;
        if (v114 < v112 == v29 >= v31)
        {
          goto LABEL_13;
        }
      }

      v8 = v22;
LABEL_13:
      if (v114 >= v112)
      {
        break;
      }

      v11 = v111;
      if (v8 < v111)
      {
        goto LABEL_134;
      }

      if (v111 < v8)
      {
        if (v22 >= v23)
        {
          v32 = v23;
        }

        else
        {
          v32 = v22;
        }

        v33 = 8 * v32 - 8;
        v34 = v8;
        v9 = v121;
        v35 = 8 * v111;
        do
        {
          if (v11 != --v34)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v37 = *(v36 + v35);
            *(v36 + v35) = *(v36 + v33);
            *(v36 + v33) = v37;
          }

          ++v11;
          v33 -= 8;
          v35 += 8;
        }

        while (v11 < v34);
        goto LABEL_26;
      }

      v9 = v121;
LABEL_28:
      v38 = a3[1];
      if (v8 < v38)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_133;
        }

        if (v8 - v11 >= a4)
        {
LABEL_46:
          v11 = v111;
        }

        else
        {
          v39 = v111 + a4;
          if (__OFADD__(v111, a4))
          {
            goto LABEL_135;
          }

          if (v39 >= v38)
          {
            v39 = a3[1];
          }

          if (v39 < v111)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v11 = v111;
          if (v8 != v39)
          {
            v120 = v6;
            v122 = v9;
            v40 = *a3;
            v41 = *a3 + 8 * v8 - 8;
            v42 = v111 - v8;
            v113 = v39;
LABEL_37:
            v126 = v8;
            v43 = v41;
            v44 = *(v40 + 8 * v8);
            v115 = v42;
            v117 = v43;
            v45 = v43;
            while (1)
            {
              v46 = *v45;
              v47 = v44;
              v48 = v46;
              v49 = [v47 rank];
              if (!v49)
              {
                goto LABEL_139;
              }

              v50 = v49;
              v51 = [v49 integerValue];

              v52 = [v48 rank];
              if (!v52)
              {
                break;
              }

              v5 = v52;
              v53 = [v52 integerValue];

              if (v51 >= v53)
              {
                goto LABEL_44;
              }

              if (!v40)
              {
                goto LABEL_140;
              }

              v54 = *v45;
              v44 = *(v45 + 8);
              *v45 = v44;
              *(v45 + 8) = v54;
              v45 -= 8;
              if (__CFADD__(v42++, 1))
              {
LABEL_44:
                v8 = v126 + 1;
                v41 = v117 + 8;
                v42 = v115 - 1;
                if (v126 + 1 == v113)
                {
                  v8 = v113;
                  v6 = v120;
                  v9 = v122;
                  goto LABEL_46;
                }

                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = *(v9 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v100;
      }

      v56 = v9;
      v57 = *(v9 + 16);
      v123 = v56;
      v58 = v57 + 1;
      v59 = v111;
      if (v57 >= *(v56 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v111;
        v123 = v101;
      }

      *(v123 + 16) = v58;
      v60 = v123 + 32;
      v61 = (v123 + 32 + 16 * v57);
      *v61 = v59;
      v61[1] = v8;
      v127 = *a1;
      if (!*a1)
      {
        goto LABEL_146;
      }

      if (v57)
      {
        v9 = v123;
        while (1)
        {
          v5 = v58 - 1;
          v62 = (v60 + 16 * (v58 - 1));
          v63 = (v9 + 16 * v58);
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v64 = *(v9 + 32);
            v65 = *(v9 + 40);
            v74 = __OFSUB__(v65, v64);
            v66 = v65 - v64;
            v67 = v74;
LABEL_68:
            if (v67)
            {
              goto LABEL_119;
            }

            v79 = *v63;
            v78 = *(v63 + 1);
            v80 = __OFSUB__(v78, v79);
            v81 = v78 - v79;
            v82 = v80;
            if (v80)
            {
              goto LABEL_122;
            }

            v83 = v62[1];
            v84 = v83 - *v62;
            if (__OFSUB__(v83, *v62))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v81, v84))
            {
              goto LABEL_127;
            }

            if (v81 + v84 >= v66)
            {
              if (v66 < v84)
              {
                v5 = v58 - 2;
              }

              goto LABEL_90;
            }

            goto LABEL_83;
          }

          if (v58 < 2)
          {
            goto LABEL_121;
          }

          v86 = *v63;
          v85 = *(v63 + 1);
          v74 = __OFSUB__(v85, v86);
          v81 = v85 - v86;
          v82 = v74;
LABEL_83:
          if (v82)
          {
            goto LABEL_124;
          }

          v88 = *v62;
          v87 = v62[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_126;
          }

          if (v89 < v81)
          {
            goto LABEL_99;
          }

LABEL_90:
          if (v5 - 1 >= v58)
          {
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
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_143;
          }

          v9 = v60 + 16 * (v5 - 1);
          v93 = *v9;
          v94 = v60 + 16 * v5;
          v95 = *(v94 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v9), (*a3 + 8 * *v94), (*a3 + 8 * v95), v127);
          if (v6)
          {
            goto LABEL_112;
          }

          if (v95 < v93)
          {
            goto LABEL_114;
          }

          v96 = v8;
          v97 = *(v123 + 16);
          if (v5 > v97)
          {
            goto LABEL_115;
          }

          *v9 = v93;
          *(v9 + 8) = v95;
          if (v5 >= v97)
          {
            goto LABEL_116;
          }

          v58 = v97 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)((v94 + 16), v97 - 1 - v5, (v60 + 16 * v5));
          v9 = v123;
          *(v123 + 16) = v97 - 1;
          v98 = v97 > 2;
          v8 = v96;
          if (!v98)
          {
            goto LABEL_99;
          }
        }

        v68 = v60 + 16 * v58;
        v69 = *(v68 - 64);
        v70 = *(v68 - 56);
        v74 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        if (v74)
        {
          goto LABEL_117;
        }

        v73 = *(v68 - 48);
        v72 = *(v68 - 40);
        v74 = __OFSUB__(v72, v73);
        v66 = v72 - v73;
        v67 = v74;
        if (v74)
        {
          goto LABEL_118;
        }

        v75 = *(v63 + 1);
        v76 = v75 - *v63;
        if (__OFSUB__(v75, *v63))
        {
          goto LABEL_120;
        }

        v74 = __OFADD__(v66, v76);
        v77 = v66 + v76;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v77 >= v71)
        {
          v91 = *v62;
          v90 = v62[1];
          v74 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v74)
          {
            goto LABEL_131;
          }

          if (v66 < v92)
          {
            v5 = v58 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_68;
      }

      v9 = v123;
LABEL_99:
      v7 = a3[1];
      v10 = &unk_548000;
      if (v8 >= v7)
      {
        goto LABEL_102;
      }
    }

    v9 = v121;
LABEL_26:
    v11 = v111;
    goto LABEL_28;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_102:
  v5 = *a1;
  if (!*a1)
  {
LABEL_149:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_137:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v124 = v9;
  v103 = *(v9 + 16);
  v9 += 16;
  for (i = v103; i >= 2; *v9 = i)
  {
    if (!*a3)
    {
      goto LABEL_144;
    }

    v104 = (v124 + 16 * i);
    v105 = *v104;
    v106 = (v9 + 16 * i);
    v107 = *(v106 + 1);
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v104), (*a3 + 8 * *v106), (*a3 + 8 * v107), v5);
    if (v6)
    {
      break;
    }

    if (v107 < v105)
    {
      goto LABEL_128;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_129;
    }

    *v104 = v105;
    v104[1] = v107;
    v108 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_130;
    }

    i = *v9 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v106 + 16, v108, v106);
  }

LABEL_112:
}

id specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, id *a2, id *a3, void **a4)
{
  __src = a4;
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = a2 - a1;
  v8 = a3 - a2;
  if (v7 < v8)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v9 = &__src[v7];
    for (i = v9; ; v9 = i)
    {
      if (__src >= v9 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_32;
      }

      v11 = *__src;
      v12 = *v5;
      v13 = v11;
      result = [v12 rank];
      if (!result)
      {
        __break(1u);
        goto LABEL_40;
      }

      v15 = result;
      v16 = [result integerValue];

      result = [v13 rank];
      if (!result)
      {
        goto LABEL_41;
      }

      v17 = result;
      v18 = [result integerValue];

      if (v16 >= v18)
      {
        break;
      }

      v19 = v5;
      v20 = v6 == v5++;
      if (!v20)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v6;
    }

    v19 = __src;
    v20 = v6 == __src++;
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v6 = *v19;
    goto LABEL_15;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v9 = &__src[v8];
  v34 = v6;
LABEL_17:
  v21 = v5 - 1;
  --v4;
  v35 = v5 - 1;
  for (j = v5; v9 > __src && v5 > v6; v5 = j)
  {
    v38 = v9;
    v23 = v9 - 1;
    v24 = *v21;
    v25 = *(v9 - 1);
    v26 = v24;
    result = [v25 rank];
    if (!result)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v27 = result;
    v28 = [result integerValue];

    result = [v26 rank];
    if (!result)
    {
      goto LABEL_42;
    }

    v29 = result;
    v30 = [result integerValue];

    v31 = v4 + 1;
    if (v28 < v30)
    {
      v5 = v35;
      v6 = v34;
      v9 = v38;
      if (v31 != j)
      {
        *v4 = *v35;
        v5 = v35;
      }

      goto LABEL_17;
    }

    v21 = v35;
    if (v38 != v31)
    {
      *v4 = *v23;
    }

    --v4;
    v9 = v23;
    v6 = v34;
  }

LABEL_32:
  v32 = v9 - __src;
  if (v5 != __src || v5 >= &__src[v32])
  {
    memmove(v5, __src, 8 * v32);
  }

  return &dword_0 + 1;
}

uint64_t outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  type metadata accessor for CNContactStore(0, a3, a4);
  OUTLINED_FUNCTION_74();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined bridged method (pb) of @objc INIntent.airPlayRouteIds.getter(void *a1)
{
  v1 = [a1 airPlayRouteIds];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc INIntent.airPlayRouteIds.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setAirPlayRouteIds:isa];
}

id outlined bridged method (mnnnnbnnn) of @objc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = String._bridgeToObjectiveC()();

  v15 = [a8 initWithPersonHandle:a1 nameComponents:a2 displayName:a3 image:a4 contactIdentifier:v14 customIdentifier:a7];

  return v15;
}

void outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  type metadata accessor for CNContactStore(0, a3, a4);
  OUTLINED_FUNCTION_74();
  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_51_12();
  [a2 *a5];
}

void *outlined bridged method (ob) of @objc INPersonHandle.value.getter(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_29_18();

  return v2;
}

void outlined bridged method (mbnn) of @objc INIdentifyIncomingCallerIntentResponse.callRecords.setter()
{
  OUTLINED_FUNCTION_1_15();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setCallRecords:isa];
}

uint64_t outlined init with take of PersonNameComponents?()
{
  OUTLINED_FUNCTION_1_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_19_0();
  v7(v6);
  return v0;
}

uint64_t partial apply for closure #1 in INPerson.isUnnamedHandle.getter(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return CharacterSet.contains(_:)() & 1;
}

_BYTE *storeEnumTagSinglePayload for FollowUpOfferType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_40_13()
{
}

void OUTLINED_FUNCTION_55_11()
{
  v2 = *(*(v0 + 16) + 16);

  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_5()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_59_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_15();
  v1[183] = v0;
  v1[177] = v2;
  v1[171] = v3;
  v4 = *(v3 - 8);
  v1[189] = v4;
  v1[195] = *(v4 + 64);
  v1[201] = swift_task_alloc();
  v1[207] = swift_task_alloc();

  return _swift_task_switch(LabelTemplatesProviding.yesAndNo(), 0, 0);
}

{
  v1 = v0[207];
  v2 = v0[195];
  v3 = v0[189];
  v4 = v0[183];
  v14 = v4;
  v15 = v0[201];
  v5 = v0[177];
  v13 = v5;
  v6 = v0[171];
  v7 = *(v3 + 16);
  v7(v1);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[213] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  v10 = *(v3 + 32);
  v10(v9 + v8, v1, v6);
  swift_asyncLet_begin();
  (v7)(v15, v14, v6);
  v11 = swift_allocObject();
  v0[214] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v13;
  v10(v11 + v8, v15, v6);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 167, LabelTemplatesProviding.yesAndNo(), v0 + 162);
}

{
  OUTLINED_FUNCTION_15();
  v1[215] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, LabelTemplatesProviding.yesAndNo(), v1 + 172);
  }

  else
  {
    v1[216] = v1[167];
    v1[217] = v1[168];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 184);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[218] = v0;
  if (v0)
  {

    return _swift_task_switch(LabelTemplatesProviding.yesAndNo(), 0, 0);
  }

  else
  {
    v1[219] = v1[169];
    v1[220] = v1[170];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_finish(v2, v3, v4, v1 + 202);
  }
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, LabelTemplatesProviding.yesAndNo(), v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[214];
  v2 = v0[213];
  v3 = v0[207];
  v4 = v0[201];

  v5 = v0[1];
  v6 = v0[220];
  v7 = v0[219];
  v8 = v0[217];
  v9 = v0[216];

  return v5(v9, v8, v7, v6);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, LabelTemplatesProviding.yesAndNo(), v0 + 1424);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1720);
  OUTLINED_FUNCTION_14_34();

  v2 = *(v0 + 8);

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1736);

  v2 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1520);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, LabelTemplatesProviding.yesAndNo(), v0 + 1568);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1744);
  OUTLINED_FUNCTION_14_34();

  v2 = *(v0 + 8);

  return v2();
}

PhoneCallFlowDelegatePlugin::LabelTemplatesProvider __swiftcall LabelTemplatesProvider.init()()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = 0;
  result.noLabel.value._object = v3;
  result.noLabel.value._countAndFlagsBits = v2;
  result.yesLabel.value._object = v1;
  result.yesLabel.value._countAndFlagsBits = v0;
  return result;
}

uint64_t implicit closure #1 in LabelTemplatesProviding.yesAndNo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *(a4 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = implicit closure #1 in LabelTemplatesProviding.yesAndNo();

  return v11(a3, a4);
}

uint64_t implicit closure #1 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_61();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v1)
  {
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_65_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t partial apply for implicit closure #1 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_37();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_3_51(v3);
  OUTLINED_FUNCTION_65_1();

  return implicit closure #1 in LabelTemplatesProviding.yesAndNo()(v4, v5, v6, v7);
}

uint64_t implicit closure #2 in LabelTemplatesProviding.yesAndNo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *(a4 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = implicit closure #2 in LabelTemplatesProviding.yesAndNo();

  return v11(a3, a4);
}

uint64_t implicit closure #2 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_61();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v1)
  {
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_65_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t objectdestroyTm_7()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_37();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_3_51(v3);
  OUTLINED_FUNCTION_65_1();

  return implicit closure #2 in LabelTemplatesProviding.yesAndNo()(v4, v5, v6, v7);
}

uint64_t LabelTemplatesProvider.yes()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProvider.yes());
}

uint64_t LabelTemplatesProvider.yes()()
{
  OUTLINED_FUNCTION_27();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_9_36();
    v1 = OUTLINED_FUNCTION_13_33();

    return v2(v1);
  }

  else
  {
    v4 = async function pointer to static LabelTemplates.yes()[1];
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = LabelTemplatesProvider.yes();

    return static LabelTemplates.yes()();
  }
}

uint64_t LabelTemplatesProvider.no()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProvider.no());
}

uint64_t LabelTemplatesProvider.no()()
{
  OUTLINED_FUNCTION_27();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_9_36();
    v1 = OUTLINED_FUNCTION_13_33();

    return v2(v1);
  }

  else
  {
    v4 = async function pointer to static LabelTemplates.no()[1];
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = LabelTemplatesProvider.no();

    return static LabelTemplates.no()();
  }
}

{
  OUTLINED_FUNCTION_2_61();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v1)
  {
    OUTLINED_FUNCTION_8_45();

    return v11();
  }

  else
  {
    v13 = *(v5 + 24);
    v14 = *(v9 + 8);

    return v14(v0, v2);
  }
}

uint64_t LabelTemplatesProvider.openApp(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = async function pointer to static LabelTemplates.openApp(appDisplayInfo:)[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = LabelTemplatesProvider.openApp(appDisplayInfo:);

  return static LabelTemplates.openApp(appDisplayInfo:)(v2);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v5 = v4;
  v6 = *(*v1 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v0)
  {
    v9 = v5;
    v10 = v3;
  }

  return v11(v9, v10);
}

uint64_t protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider;

  return LabelTemplatesProvider.yes()(v2, v3);
}

uint64_t protocol witness for LabelTemplatesProviding.no() in conformance LabelTemplatesProvider()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider;

  return LabelTemplatesProvider.no()(v4, v5, v2, v3);
}

uint64_t protocol witness for LabelTemplatesProviding.openApp(appDisplayInfo:) in conformance LabelTemplatesProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider;

  return LabelTemplatesProvider.openApp(appDisplayInfo:)();
}

uint64_t getEnumTagSinglePayload for LabelTemplatesProvider(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LabelTemplatesProvider(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t LazyContainer._value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v23[-v15];
  v17 = *(v4 + 112);
  swift_beginAccess();
  (*(v9 + 16))(v16, v2 + v17, v6);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    v18 = (*(v9 + 8))(v16, v6);
    v19 = v2[4];
    (v2[3])(v18);
    OUTLINED_FUNCTION_40(v5);
    (*(v20 + 16))(v14, a1, v5);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v5);
    swift_beginAccess();
    (*(v9 + 40))(v2 + v17, v14, v6);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_40(v5);
    return (*(v22 + 32))(a1, v16, v5);
  }
}

uint64_t LazyContainer._value.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v15 - v10;
  OUTLINED_FUNCTION_40(v3);
  (*(v12 + 32))(v11, a1, v3);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v3);
  v13 = *(*v1 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v1 + v13, v11, v4);
  return swift_endAccess();
}

uint64_t LazyContainer.__allocating_init(load:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LazyContainer.init(load:)(a1, a2);
  return v7;
}

void *LazyContainer.init(load:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_4();
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  OUTLINED_FUNCTION_4();
  type metadata accessor for OS_dispatch_queue();
  v18 = *(v4 + 80);
  swift_getMetatypeMetadata();
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v8 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  v3[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 40) = 0;
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 112), 1, 1, v18);
  v3[3] = a1;
  v3[4] = a2;
  return v3;
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

uint64_t LazyContainer.lazyInitialize()()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  static Signpost.begin(_:)();
  v11 = v0[2];
  static DispatchWorkItemFlags.barrier.getter();
  v12 = *(v1 + 80);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v5 + 8))(v10, v2);
  Signpost.OpenSignpost.end()();
}

uint64_t LazyContainer.get()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v5 == 1)
  {
    return LazyContainer._value.getter(a1);
  }

  else
  {
    return LazyContainer.lazyInitialize()();
  }
}

Swift::Void __swiftcall LazyContainer.reload()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = *(v0 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  aBlock[4] = partial apply for closure #1 in LazyContainer.reload();
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_4;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v5 + 8))(v10, v2);
  (*(v14 + 8))(v19, v11);
}

uint64_t closure #1 in LazyContainer.reload()(uint64_t a1)
{
  v2 = (*(*(*(*a1 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = __chkstk_darwin(a1);
  v5 = &v7 - v4;
  if (*(result + 40) == 1)
  {
    v6 = *(a1 + 32);
    (*(a1 + 24))();
    return LazyContainer._value.setter(v5);
  }

  return result;
}

uint64_t type metadata completion function for LazyContainer(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
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

uint64_t Locale.underscoredIdentifier.getter()
{
  Locale.identifier.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v0;
}

uint64_t static LocalizedStringsUtils.getPicsStringCallHistory(sharedGlobals:)(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 176))(v7, v8);
  type metadata accessor for PhoneCallFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v12 = Locale.identifier.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v20[4] = v12;
  v20[5] = v14;
  v20[2] = 45;
  v20[3] = 0xE100000000000000;
  v20[0] = 95;
  v20[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v17 = v16;

  v18 = outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(0xD000000000000011, 0x800000000045C400, 1396918608, 0xE400000000000000, v11, v15, v17, v9);

  return v18;
}

uint64_t outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

uint64_t LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v116) = a2;
  v11 = type metadata accessor for Logger();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v117 = (&v108 - v21);
  __chkstk_darwin(v20);
  v23 = &v108 - v22;
  v121 = 0;
  v122 = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v114 = v121;
  v115 = a4;
  v119 = a5;
  v120 = v122;
  v118 = v11;
  if (a1)
  {
    v24 = a4[4];
    v110 = a4 + 4;
    v111 = a3;
    v25 = OUTLINED_FUNCTION_1_70();
    v109 = v26;
    v26(v25);
    v27 = v120;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v112 = v19;
    v113 = v14;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v14;
      v33 = swift_slowAlloc();
      v121 = v33;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v27, &v121);
      OUTLINED_FUNCTION_15_7(&dword_0, v34, v35, "#LoggableError Trying ABC for %s");
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_26_0();
      a5 = v119;
      OUTLINED_FUNCTION_26_0();

      v108 = *(v32 + 8);
    }

    else
    {

      v108 = *(v14 + 8);
    }

    v108(v23, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    v37 = a4[1];
    a3 = v111;
    v38 = OUTLINED_FUNCTION_1_70();
    *(inited + 32) = v39(v38);
    *(inited + 40) = v40;
    v41 = a4[2];
    v42 = OUTLINED_FUNCTION_1_70();
    v44 = 0;
    *(inited + 48) = v43(v42);
    *(inited + 56) = v45;
    v46 = _swiftEmptyArrayStorage;
LABEL_6:
    v47 = (inited + 40 + 16 * v44);
    while (++v44 != 3)
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      v47 += 2;
      v50 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v50 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {

        v51 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = v46[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v46 = v55;
        }

        v52 = v46[2];
        if (v52 >= v46[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v46 = v56;
        }

        v46[2] = v52 + 1;
        v53 = &v46[2 * v52];
        v53[4] = v49;
        v53[5] = v48;
        v6 = v51;
        a5 = v119;
        a4 = v115;
        goto LABEL_6;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v121 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v57 = a5;
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_2_13();
    v58 = BidirectionalCollection<>.joined(separator:)();
    v60 = v59;

    v61 = LoggableError.caseName.getter(a3);
    v63 = v62;
    v64 = v117;
    v65 = OUTLINED_FUNCTION_1_70();
    v109(v65);
    v66 = v58;
    a5 = v57;
    static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v61, v63, v66, v60, v64);

    v14 = v113;
    v108(v64, v118);
  }

  if (v116)
  {
    v67 = a4[4];
    v68 = OUTLINED_FUNCTION_0_65();
    v116 = v69;
    v111 = v70;
    v70(v68);
    v71 = v120;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v14;
      v76 = swift_slowAlloc();
      v121 = v76;
      *v74 = 136315138;
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v71, &v121);

      *(v74 + 4) = v77;
      OUTLINED_FUNCTION_15_7(&dword_0, v78, v79, "#LoggableError Trying TTR for %s");
      __swift_destroy_boxed_opaque_existential_1(v76);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();

      v80 = OUTLINED_FUNCTION_3_52(*(v75 + 8));
    }

    else
    {

      v80 = OUTLINED_FUNCTION_3_52(*(v14 + 8));
    }

    v81(v80);
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v121 = 0xD00000000000001ALL;
    v122 = 0x800000000045C420;
    v82._countAndFlagsBits = LoggableError.caseName.getter(a3);
    String.append(_:)(v82);

    v83 = v122;
    v113 = v121;
    v84 = v115;
    v85 = v115[1];
    v86 = OUTLINED_FUNCTION_0_65();
    v121 = v87(v86);
    v122 = v88;
    v89._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v89);
    v90 = v84[2];
    v91 = OUTLINED_FUNCTION_0_65();
    v93._countAndFlagsBits = v92(v91);
    String.append(_:)(v93);

    v94._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v94);
    v95 = v84[3];
    v96 = OUTLINED_FUNCTION_0_65();
    v98._countAndFlagsBits = v97(v96);
    String.append(_:)(v98);

    v99 = v121;
    v100 = v122;
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v101._countAndFlagsBits = 0x45656E6F68502061;
    v101._object = 0xEE002820726F7272;
    String.append(_:)(v101);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v102._countAndFlagsBits = 0x6564207361772029;
    v102._object = 0xEF2E646574636574;
    String.append(_:)(v102);
    v104 = v121;
    v103 = v122;
    v105 = v117;
    v106 = OUTLINED_FUNCTION_0_65();
    v111(v106);
    static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(v113, v83, v99, v100, v104, v103, v105);

    v120(v105, v118);
    a5 = v119;
  }

  else
  {
  }

  return (*(*(a3 - 8) + 16))(a5, v6, a3);
}

uint64_t LoggableError.caseName.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Mirror();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v7 + 8))(v11, v4);
  specialized Collection.first.getter(v13, &v21);

  if (!v22[3])
  {
    outlined destroy of (label: String?, value: Any)?(&v21);
LABEL_5:
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v14 = *(&v21 + 1);
    v15 = v21;
    goto LABEL_6;
  }

  v14 = *(&v21 + 1);
  v15 = v21;
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_6:
  swift_getDynamicType();
  *&v21 = _typeName(_:qualified:)();
  *(&v21 + 1) = v16;
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v15;
  v18._object = v14;
  String.append(_:)(v18);

  return v21;
}

uint64_t outlined destroy of (label: String?, value: Any)?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MachineUtteranceBuilder.addFollowUpOfferMapping(for:)(char a1)
{
  v2 = dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_0_66();
      v3 = dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

      v2 = v3;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t MachineUtteranceBuilder.addCallBackUtterance(caller:)(void *a1)
{
  outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a1);
  if (v2)
  {

    v3 = [a1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    EntitySpanLabel.rawValue.getter();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
  }

  v4 = [a1 personHandle];
  if (v4)
  {
    outlined bridged method (ob) of @objc INPersonHandle.value.getter(v4);
    if (v5)
    {
      v6 = [a1 personHandle];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 type];

        if (v8 == &dword_0 + 2)
        {
          goto LABEL_9;
        }

        if (v8 == &dword_0 + 1)
        {
          OUTLINED_FUNCTION_2_62();
          goto LABEL_11;
        }

        if (!v8)
        {
LABEL_9:
          OUTLINED_FUNCTION_3_53();
LABEL_11:
          dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
        }
      }
    }
  }
}

id _s27PhoneCallFlowDelegatePlugin9DICodablePAAE4fromyxSDySSypGSgKFZAA29AnnounceVoicemailDirectActionC_Tt1g5(uint64_t a1)
{
  type metadata accessor for AnnounceVoicemailDirectAction();
  if (!a1)
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v3 = objc_opt_self();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15[0] = 0;
  v5 = [v3 dataWithPropertyList:isa format:200 options:0 error:v15];

  v6 = v15[0];
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = type metadata accessor for PropertyListDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction and conformance AnnounceVoicemailDirectAction, type metadata accessor for AnnounceVoicemailDirectAction);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    result = outlined consume of Data._Representation(v7, v9);
    if (!v1)
    {
      return v15[1];
    }
  }

  else
  {
    v14 = v6;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

uint64_t MainFlow.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Parse();
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MainFlow.execute(completion:)()
{
  type metadata accessor for MainFlow();
  lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type MainFlow and conformance MainFlow, type metadata accessor for MainFlow);

  return Flow.deferToExecuteAsync(_:)();
}

uint64_t MainFlow.makeFlowForIntent()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v29 = type metadata accessor for Parse();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Input();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + *(type metadata accessor for MainFlow() + 20));
  v12 = v10[3];
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v12);
  v13 = (*(v11 + 72))(v12, v11);
  v15 = v10[3];
  v14 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v15);
  (*(v14 + 120))(v32, v15, v14);
  (*(*v13 + 184))(v33, v1, v32);

  __swift_destroy_boxed_opaque_existential_1(v32);
  outlined init with copy of AnyPhoneNLIntent?(v33, v32);
  if (v32[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
    type metadata accessor for PhoneCallControlNLIntent();
    if (swift_dynamicCast())
    {

      (*(v2 + 16))(v5, v1, v29);
      Input.init(parse:)();
      v16 = outlined init with copy of SignalProviding(v10, v32);
      default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v31, v16);
      v17 = type metadata accessor for PhoneCallControlFlow();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v20 = PhoneCallControlFlow.init(input:sharedGlobals:appFinder:)(v9, v32, v31);
      v21 = v30;
      v30[3] = v17;
      v22 = v21;
      v23 = &lazy protocol witness table cache variable for type PhoneCallControlFlow and conformance PhoneCallControlFlow;
      v24 = type metadata accessor for PhoneCallControlFlow;
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
  }

  (*(v2 + 16))(v5, v1, v29);
  Input.init(parse:)();
  v25 = outlined init with copy of SignalProviding(v10, v32);
  default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v31, v25);
  v22 = v30;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v26 = static EligibleAppFinder.instance;

  v20 = _s27PhoneCallFlowDelegatePlugin0abC0C5input13sharedGlobals9appFinder012eligibleAppsJ0AC07SiriKitC05InputV_AA06SharedH9Providing_pAA19AnnotatedAppFinding_pAA012PrefetchablesT0_ptcfCTf4nnnen_nAA08EligiblesJ0C_Tt3g5(v9, v32, v31, v26);
  v22[3] = type metadata accessor for PhoneCallFlow(0);
  v23 = &lazy protocol witness table cache variable for type PhoneCallFlow and conformance PhoneCallFlow;
  v24 = type metadata accessor for PhoneCallFlow;
LABEL_8:
  v22[4] = lazy protocol witness table accessor for type MainFlow and conformance MainFlow(v23, v24);
  *v22 = v20;
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
}

uint64_t MainFlow.init(parse:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 32))(a3, a1);
  v8 = a3 + *(type metadata accessor for MainFlow() + 20);

  return outlined init with take of SPHConversation(a2, v8);
}

unint64_t type metadata completion function for MainFlow()
{
  result = type metadata accessor for Parse();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SharedGlobalsProviding();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC0C5input13sharedGlobals9appFinder012eligibleAppsJ0AC07SiriKitC05InputV_AA06SharedH9Providing_pAA19AnnotatedAppFinding_pAA012PrefetchablesT0_ptcfCTf4nnnen_nAA08EligiblesJ0C_Tt3g5(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = type metadata accessor for PhoneCallFlow.State(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Input();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v28);
  outlined init with copy of SignalProviding(a3, v27);
  v14 = type metadata accessor for PhoneCallFlow(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v26[3] = type metadata accessor for EligibleAppFinder();
  v26[4] = &protocol witness table for EligibleAppFinder;
  v26[0] = a4;
  *(v17 + 176) = _swiftEmptyArrayStorage;
  outlined init with copy of SignalProviding(v27, v17 + 16);
  outlined init with copy of MainFlow(v11, v17 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state, type metadata accessor for PhoneCallFlow.State);
  outlined init with copy of SignalProviding(v28, v17 + 56);
  outlined init with copy of SignalProviding(v26, v17 + 96);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v19 + 216))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v27);
  outlined destroy of MainFlow(v11, type metadata accessor for PhoneCallFlow.State);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "#PhoneCallFlow state is initialized.", v23, 2u);
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v13 + 8))(a1, v12);
  return v17;
}

uint64_t _s27PhoneCallFlowDelegatePlugin34IdentifyIncomingCallerDirectActionC10invocation12contactStoreACSg07SiriKitC05ParseO0I10InvocationV_AA14ContactStoring_ptcfCTf4nen_nSo09CNContactM0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  v31[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v31[4] = &protocol witness table for CNContactStore;
  v31[0] = a2;
  v4 = Parse.DirectInvocation.userData.getter();
  if (v4)
  {
    v5 = v4;
    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.announceTelephony);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29[0] = v10;
      *v9 = 136315138;
      v11 = Dictionary.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v29);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "#IdentifyIncomingCallerDirectAction: Direct Invocation payload: %s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    outlined init with copy of SignalProviding(v31, v29);
    type metadata accessor for IdentifyIncomingCallerDirectAction();
    v14 = swift_allocObject();
    v15 = v30;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v17 = *(*(v15 - 8) + 64);
    __chkstk_darwin(v16);
    v19 = (v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(v5, *v19, v14);
    v22 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v22 - 8) + 8))(a1, v22);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.announceTelephony);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#IdentifyIncomingCallerDirectAction: No userData in DirectInvocation.", v26, 2u);
    }

    v27 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v27 - 8) + 8))(a1, v27);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return 0;
  }

  return v21;
}

void *_s27PhoneCallFlowDelegatePlugin016AnnounceIncomingB24NotificationDirectActionC10invocation12contactStoreACSg07SiriKitC05ParseO0I10InvocationV_AA14ContactStoring_ptcfCTf4nen_nSo09CNContactM0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  v53[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v53[4] = &protocol witness table for CNContactStore;
  v53[0] = a2;
  v4 = Parse.DirectInvocation.userData.getter();
  if (!v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "#AnnounceIncomingCallNotificationDirectAction: No userData.";
LABEL_23:
    _os_log_impl(&dword_0, v12, v13, v15, v14, 2u);

LABEL_24:

    v18 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v18 - 8) + 8))(a1, v18);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return 0;
  }

  v5 = v4;
  specialized Dictionary.subscript.getter(0x6C646E7542707061, 0xEB00000000644965, v4, v49);
  if (!v50)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v49, &_sypSgMd, &_sypSgMR);
LABEL_13:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "#AnnounceIncomingCallNotificationDirectAction: No App bundleId.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v7 = v51;
  v6 = v52;
  specialized Dictionary.subscript.getter(0x6163696669746F6ELL, 0xEC0000006E6F6974, v5, v49);

  if (!v50)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v49, &_sypSgMd, &_sypSgMR);
LABEL_19:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "#AnnounceIncomingCallNotificationDirectAction: No notification data in UserData.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v8 = v51;
  v9 = v52;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for UNNotification, UNNotification_ptr);
  v10 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v21 = v10;
  if (!v10)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v12, v44, "#AnnounceIncomingCallNotificationDirectAction: No notification in archived data.", v45, 2u);
    }

    outlined consume of Data._Representation(v8, v9);
    goto LABEL_24;
  }

  v47 = v9;
  v22 = one-time initialization token for siriPhone;
  v23 = v10;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriPhone);
  v25 = v23;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v48 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49[0] = v30;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v49);
    *(v28 + 12) = 2112;
    v31 = v48;
    *(v28 + 14) = v48;
    *v29 = v21;
    v32 = v31;
    _os_log_impl(&dword_0, v26, v27, "#AnnounceIncomingCallNotificationDirectAction: initialized with bundleID: %s and notification %@.", v28, 0x16u);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v33 = v47;
  outlined init with copy of SignalProviding(v53, v49);
  type metadata accessor for AnnounceIncomingCallNotificationDirectAction();
  v34 = swift_allocObject();
  v35 = v50;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  v37 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = v48;
  v19 = specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(v7, v6, v48, *v39, v34);
  outlined consume of Data._Representation(v8, v33);

  v42 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v42 - 8) + 8))(a1, v42);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v19;
}

void *specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v31[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v31[4] = &protocol witness table for CNContactStore;
  v31[0] = a4;
  a5[11] = 0;
  a5[7] = a1;
  a5[8] = a2;
  v10 = [a3 request];
  v11 = [v10 identifier];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  a5[9] = v12;
  a5[10] = v14;
  a5[12] = a3;
  outlined init with copy of SignalProviding(v31, (a5 + 2));
  v15 = a3;
  v16 = [v15 request];
  v17 = [v16 content];

  v18 = [v17 communicationContext];
  if (!v18)
  {
    v24 = 0;
    a5[13] = 1;
LABEL_12:
    v25 = (*(*a5 + 264))(v24);

    goto LABEL_13;
  }

  v19 = [v18 capabilities];
  v20 = 1;
  if (v19 == &dword_0 + 1)
  {
    v20 = 2;
  }

  a5[13] = v20;
  v21 = [v18 sender];
  if (!v21)
  {
    v26 = [v18 recipients];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _UNNotificationContact, _UNNotificationContact_ptr);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v27))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v27 & 0xC000000000000001) == 0, v27);
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v27 + 32);
      }

      v24 = v28;
    }

    else
    {

      v24 = 0;
    }

    goto LABEL_12;
  }

  v22 = v21;
  v23 = *(*a5 + 264);
  v24 = v21;
  v25 = v23(v22);

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v31);
  swift_beginAccess();
  v29 = a5[11];
  a5[11] = v25;

  return a5;
}

uint64_t specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v57 = &protocol witness table for CNContactStore;
  *&v55 = a2;
  *(a3 + 104) = 0u;
  v6 = (a3 + 104);
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v7, v8, a1, &v53);

  if (v54)
  {
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = v51;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v52;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
    v10 = 0;
    v11 = 0;
  }

  swift_beginAccess();
  v12 = *(a3 + 64);
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v13, v14, a1, &v53);

  if (v54)
  {
    v15 = swift_dynamicCast();
    if (v15)
    {
      v16 = v49;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v50;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
    v16 = 0;
    v17 = 0;
  }

  swift_beginAccess();
  v18 = *(a3 + 80);
  *(a3 + 72) = v16;
  *(a3 + 80) = v17;

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v19, v20, a1, &v53);

  if (v54)
  {
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v47;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v48;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
    v22 = 0;
    v23 = 0;
  }

  swift_beginAccess();
  v24 = *(a3 + 96);
  *(a3 + 88) = v22;
  *(a3 + 96) = v23;

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v25, v26, a1, &v53);

  if (v54)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v27 = v46;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
    v27 = 0;
  }

  swift_beginAccess();
  v28 = *v6;
  *v6 = v27;

  if (one-time initialization token for handleTypeKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleTypeKey, *algn_553398, a1, &v53);
  if (v54)
  {
    if (swift_dynamicCast())
    {
      v29 = 0;
      v30 = v45;
      goto LABEL_37;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
  }

  v30 = 0;
  v29 = 1;
LABEL_37:
  swift_beginAccess();
  *(a3 + 128) = v30;
  *(a3 + 136) = v29;
  if (one-time initialization token for handleValueKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleValueKey, *algn_5533A8, a1, &v53);
  if (v54)
  {
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = v43;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v44;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
    v32 = 0;
    v33 = 0;
  }

  swift_beginAccess();
  v34 = *(a3 + 120);
  *(a3 + 112) = v32;
  *(a3 + 120) = v33;

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v35, v36, a1, &v53);

  if (v54)
  {
    if (swift_dynamicCast())
    {
      v37 = v42;
      goto LABEL_52;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
  }

  v37 = 0;
LABEL_52:
  *(a3 + 137) = v37;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v38, v39, a1, &v53);

  if (!v54)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_sypSgMd, &_sypSgMR);
    goto LABEL_56;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    v40 = 0;
    goto LABEL_57;
  }

  v40 = v42;
LABEL_57:
  *(a3 + 138) = v40;
  outlined init with take of SPHConversation(&v55, a3 + 16);
  return a3;
}

uint64_t lazy protocol witness table accessor for type MainFlow and conformance MainFlow(unint64_t *a1, void (*a2)(uint64_t))
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

void _s27PhoneCallFlowDelegatePlugin17DICodableOverrideV12undoEncoding4name4typeACSS_xmtSeRzSERzlFZySDySSypGzcfU_10Foundation3URLV_Tt1g5(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v7)
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v6, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v8 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v26[0] = 0;
        v10 = [v8 dataWithPropertyList:isa format:200 options:0 error:v26];

        v11 = v26[0];
        if (v10)
        {
          v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          v15 = type metadata accessor for PropertyListDecoder();
          v16 = *(v15 + 48);
          v17 = *(v15 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          v26[3] = type metadata accessor for URL();
          __swift_allocate_boxed_opaque_existential_1(v26);
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          specialized Dictionary.subscript.setter(v26, a2, a3);
          outlined consume of Data._Representation(v12, v14);
        }

        else
        {
          v18 = v11;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Logger.siriPhone);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v26[0] = swift_slowAlloc();
            *v22 = 136315394;
            *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v26);
            *(v22 + 12) = 2080;
            type metadata accessor for URL();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVmMd, &_s10Foundation3URLVmMR);
            v23 = String.init<A>(describing:)();
            v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v26);

            *(v22 + 14) = v25;
            _os_log_impl(&dword_0, v20, v21, "Could not undo encoding for property %s of type %s", v22, 0x16u);
            swift_arrayDestroy();
          }
        }
      }
    }
  }
}

void specialized closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  specialized Dictionary.subscript.getter(a2, a3, *a1, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  if (swift_dynamicCast() && v15)
  {
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
    v6 = Transformer.transform.getter();
    v6(&v15, &v18);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    *&v16 = v15;

    specialized Dictionary.subscript.setter(&v16, a2, a3);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v16 = v11;
      *v10 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGmMd, &_sSay10Foundation4DataVGmMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "No entry in userData of type %s to override", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }
}

void specialized closure #2 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  specialized Dictionary.subscript.getter(a2, a3, *a1, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if (swift_dynamicCast() && v15)
  {
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
    v6 = Transformer.reverseTransform.getter();
    v6(&v15, &v18);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    *&v16 = v15;

    specialized Dictionary.subscript.setter(&v16, a2, a3);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v16 = v11;
      *v10 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGmMd, &_sSaySo8INPersonCGmMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "No entry in userData of type %s to override", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }
}

uint64_t one-time initialization function for codableOverrides()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v1);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17DICodableOverrideVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17DICodableOverrideVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_424FF0;
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, static INPersonArrayCodable.transformer);
  v14 = *(v3 + 16);
  v14(v11, v13, v0);
  v14(v9, v11, v0);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_5_49();
  *(v17 + 16) = v18;
  *(v17 + 24) = 0xEA00000000007374;
  v19 = *(v3 + 32);
  v19(v17 + v15, v9, v0);
  v20 = v26;
  v19(v26, v11, v0);
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_5_49();
  *(v22 + 16) = v23;
  *(v22 + 24) = 0xEA00000000007374;
  v19(v22 + v15, v20, v0);
  *(v12 + 32) = partial apply for specialized closure #1 in static DICodableOverride.transform<A, B>(name:transformer:);
  *(v12 + 40) = v16;
  *(v12 + 48) = partial apply for specialized closure #2 in static DICodableOverride.transform<A, B>(name:transformer:);
  *(v12 + 56) = v21;
  result = swift_allocObject();
  *(result + 16) = 0x5255657469766E69;
  *(result + 24) = 0xE90000000000004CLL;
  *(v12 + 64) = _s27PhoneCallFlowDelegatePlugin17DICodableOverrideV12undoEncoding4name4typeACSS_xmtSeRzSERzlFZySDySSypGzcfU_10Foundation3URLV_Tt1g5TA;
  *(v12 + 72) = result;
  *(v12 + 80) = INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:);
  *(v12 + 88) = 0;
  static MessageFlowDirectInvocation.codableOverrides = v12;
  return result;
}

uint64_t *MessageFlowDirectInvocation.codableOverrides.unsafeMutableAddressor()
{
  if (one-time initialization token for codableOverrides != -1)
  {
    OUTLINED_FUNCTION_1_71();
  }

  return &static MessageFlowDirectInvocation.codableOverrides;
}

uint64_t static MessageFlowDirectInvocation.codableOverrides.getter()
{
  if (one-time initialization token for codableOverrides != -1)
  {
    OUTLINED_FUNCTION_1_71();
  }
}

uint64_t MessageFlowDirectInvocation.content.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MessageFlowDirectInvocation.inviteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageFlowDirectInvocation() + 24);
  v4 = type metadata accessor for URL();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for MessageFlowDirectInvocation()
{
  result = type metadata singleton initialization cache for MessageFlowDirectInvocation;
  if (!type metadata singleton initialization cache for MessageFlowDirectInvocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageFlowDirectInvocation.inviteURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageFlowDirectInvocation() + 24);
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_23_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t MessageFlowDirectInvocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5255657469766E69 && a2 == 0xE90000000000004CLL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t MessageFlowDirectInvocation.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E65697069636572;
  }

  if (a1 == 1)
  {
    return 0x746E65746E6F63;
  }

  return 0x5255657469766E69;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageFlowDirectInvocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageFlowDirectInvocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageFlowDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageFlowDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageFlowDirectInvocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v3;
  v20[7] = 0;
  lazy protocol witness table accessor for type INPersonArrayCodable and conformance INPersonArrayCodable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v3[1];
    v15 = v3[2];
    v20[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(type metadata accessor for MessageFlowDirectInvocation() + 24);
    v20[5] = 2;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_3_54();
    lazy protocol witness table accessor for type URL and conformance URL(v17, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INPersonArrayCodable and conformance INPersonArrayCodable()
{
  result = lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable;
  if (!lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable;
  if (!lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable);
  }

  return result;
}

uint64_t MessageFlowDirectInvocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = type metadata accessor for URL();
  v5 = OUTLINED_FUNCTION_7(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMR);
  v11 = OUTLINED_FUNCTION_7(v42);
  v40 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v37 - v15;
  v17 = type metadata accessor for MessageFlowDirectInvocation();
  v18 = OUTLINED_FUNCTION_23_1(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v38 = v22;
  v25 = v10;
  v26 = v40;
  v27 = v41;
  v46 = 0;
  lazy protocol witness table accessor for type INPersonArrayCodable and conformance INPersonArrayCodable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v38;
  v37 = v47;
  *v38 = v47;
  v45 = 1;
  v28[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v28[2] = v29;
  v44 = 2;
  OUTLINED_FUNCTION_3_54();
  lazy protocol witness table accessor for type URL and conformance URL(v30, v31);
  v32 = v25;
  v33 = v4;
  v34 = v42;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v16, v34);
  v35 = v38;
  (*(v27 + 32))(v38 + *(v17 + 24), v32, v33);
  outlined init with copy of MessageFlowDirectInvocation(v35, v39);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return outlined destroy of MessageFlowDirectInvocation(v35);
}

uint64_t outlined init with copy of MessageFlowDirectInvocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageFlowDirectInvocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MessageFlowDirectInvocation(uint64_t a1)
{
  v2 = type metadata accessor for MessageFlowDirectInvocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageFlowDirectInvocation.init(recipients:content:inviteURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for MessageFlowDirectInvocation() + 24);
  v8 = type metadata accessor for URL();
  OUTLINED_FUNCTION_23_1(v8);
  v10 = *(v9 + 32);

  return v10(&a5[v7], a4);
}

uint64_t instantiation function for generic protocol witness table for MessageFlowDirectInvocation(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MessageFlowDirectInvocation and conformance MessageFlowDirectInvocation, type metadata accessor for MessageFlowDirectInvocation);
  result = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MessageFlowDirectInvocation and conformance MessageFlowDirectInvocation, type metadata accessor for MessageFlowDirectInvocation);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for MessageFlowDirectInvocation()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageFlowDirectInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t partial apply for specialized closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t MessagesFaceTimeLinkCompletionFlow.__allocating_init(faceTimeLink:recipients:app:sharedGlobals:startCallCATs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v14 = OUTLINED_FUNCTION_23_1(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v19 = (v18 - v17);
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a5, v22);
  v20 = (*(v6 + 136))(v19, a4, v22, a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

uint64_t _s27PhoneCallFlowDelegatePlugin9DICodablePAAE25adaptUserDataAfterEncoder33_5EEBFE6FE8B4FD157AAB3C328F54CD48LLyySDySSypGzFZAA07MessageC16DirectInvocationV_Tt0g5(uint64_t result)
{
  v1 = result;
  if (one-time initialization token for codableOverrides != -1)
  {
    result = swift_once();
  }

  v2 = *(static MessageFlowDirectInvocation.codableOverrides + 16);
  if (v2)
  {
    v3 = (static MessageFlowDirectInvocation.codableOverrides + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v6 = *v3;
      v3 += 4;

      v5(v1);

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t key path setter for MessagesFaceTimeLinkCompletionFlow.state : MessagesFaceTimeLinkCompletionFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MessagesFaceTimeLinkCompletionFlow.State(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
  swift_beginAccess();
  outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
  swift_beginAccess();
  return outlined init with copy of MessagesFaceTimeLinkCompletionFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.__allocating_init(state:app:sharedGlobals:startCallCATs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  MessagesFaceTimeLinkCompletionFlow.init(state:app:sharedGlobals:startCallCATs:)(a1, a2, a3, a4);
  return v11;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.init(state:app:sharedGlobals:startCallCATs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with take of MessagesFaceTimeLinkCompletionFlow.State(a1, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state);
  *(v4 + 16) = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a3, v4 + 24);
  *(v4 + 64) = a4;
  return v4;
}

uint64_t outlined init with take of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhoneError();
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  (*(*v1 + 112))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1(v17);
    return (*(v18 + 32))(a1, v16);
  }

  else
  {
    OUTLINED_FUNCTION_4_40();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v16, v20);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v23))
    {
      v24 = OUTLINED_FUNCTION_65_0();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "#MessagesFaceTimeLinkCompletionFlow Encountered invalid exitValue", v24, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_55();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(v25, v26);
    v27 = swift_allocError();
    PhoneError.logged()(v28);
    OUTLINED_FUNCTION_2_64();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v9, v29);
    *a1 = v27;
    *(a1 + 8) = 0;
    v30 = enum case for RCHFlowResult.error<A, B>(_:);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1(v31);
    return (*(v32 + 104))(a1, v30);
  }
}

uint64_t MessagesFaceTimeLinkCompletionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[16] = v2;
  v1[17] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v1[19] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  (*(**(v0 + 136) + 112))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 128);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_4_40();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v3, v5);
LABEL_9:
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    v34 = *(v0 + 144);

    OUTLINED_FUNCTION_11();

    return v35();
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v9 = *v6;
  v8 = v6[1];
  *(v0 + 176) = v8;
  v10 = v6[2];
  *(v0 + 184) = v10;
  v11 = v7[6];
  v12 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v11);
  (*(v12 + 8))(v11, v12);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v14 = v7[2];
  v15 = DeviceState.isSendingFaceTimeLinkDeviceUnsupported(app:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v15)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v18))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v19, v20, "#MessagesFaceTimeLinkCompletionFlow sending FaceTime Link is unsupported for idiom");
      OUTLINED_FUNCTION_26_0();
    }

    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v25 = *(v0 + 128);

    outlined init with copy of SignalProviding((v7 + 3), v0 + 56);
    type metadata accessor for StartCallCATs();
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for StartCallCATsSimple();
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for PhoneCallDisplayTextCATsSimple();
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedFlowCATsSimple();
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedFaceTimeOutputProvider();
    swift_allocObject();
    v26 = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
    v27 = (*(*v26 + 136))(v26);
    v28 = enum case for RCHFlowResult.cancelled<A, B>(_:);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1(v29);
    (*(v30 + 104))(v21, v28);
    swift_storeEnumTagMultiPayload();
    v31 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3();
    outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v21, v24 + v31);
    swift_endAccess();
    *(v0 + 120) = v27;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    goto LABEL_9;
  }

  v37 = *(**(v0 + 136) + 176);
  v42 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 192) = v39;
  *v39 = v0;
  v39[1] = MessagesFaceTimeLinkCompletionFlow.execute();
  v40 = *(v0 + 128);
  v41 = *(v0 + 136);

  return v42(v40, v9, v8, v10);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.execute(completion:)()
{
  type metadata accessor for MessagesFaceTimeLinkCompletionFlow(0);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(&lazy protocol witness table cache variable for type MessagesFaceTimeLinkCompletionFlow and conformance MessagesFaceTimeLinkCompletionFlow, type metadata accessor for MessagesFaceTimeLinkCompletionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.handleMessageIntentFlow(faceTimeLink:recipients:)()
{
  OUTLINED_FUNCTION_15();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[14] = v5;
  v6 = type metadata accessor for PhoneError();
  v1[19] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[20] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v1[21] = v9;
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for Parse.DirectInvocation();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_45();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v21 = type metadata accessor for URL();
  v1[28] = v21;
  v22 = *(v21 - 8);
  v1[29] = v22;
  v23 = *(v22 + 64);
  v1[30] = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v24, v25, v26);
}

{
  v92 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v91 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v91);
    _os_log_impl(&dword_0, v3, v4, "#MessagesFaceTimeLinkCompletionFlow URL : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v9 = v0[16];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v0[15] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = v0[27];
  v11 = v0[28];
  URL.init(string:)();
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    v13 = v0[27];
    v14 = &_s10Foundation3URLVSgMd;
    v15 = &_s10Foundation3URLVSgMR;
LABEL_12:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, v14, v15);
LABEL_13:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v23))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v24, v25, "#MessagesFaceTimeLinkCompletionFlow Error generating direct invocation. Exiting");
      OUTLINED_FUNCTION_26_0();
    }

    v27 = v0[21];
    v26 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[18];
    v31 = v0[14];

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_55();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(v32, v33);
    v34 = swift_allocError();
    PhoneError.logged()(v35);
    OUTLINED_FUNCTION_2_64();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v28, v36);
    *v26 = v34;
    *(v26 + 8) = 0;
    v37 = enum case for RCHFlowResult.error<A, B>(_:);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1(v38);
    (*(v39 + 104))(v26, v37);
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3();
    outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v26, v30 + v40);
    swift_endAccess();
    static ExecuteResponse.complete()();
    goto LABEL_16;
  }

  v16 = v0[30];
  v18 = v0[23];
  v17 = v0[24];
  v20 = v0[17];
  v19 = v0[18];
  (*(v0[29] + 32))(v16, v0[27], v0[28]);
  MessagesFaceTimeLinkCompletionFlow.constructDirectInvocation(url:recipients:)(v16, v20, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
  {
    v21 = v0[23];
    (*(v0[29] + 8))(v0[30], v0[28]);
    v14 = &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd;
    v15 = &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR;
    v13 = v21;
    goto LABEL_12;
  }

  v49 = v0[26];
  v50 = v0[18];
  (*(v0[25] + 32))(v49, v0[23], v0[24]);
  v51 = v50[6];
  v52 = v50[7];
  __swift_project_boxed_opaque_existential_1(v50 + 3, v51);
  (*(v52 + 48))(v51, v52);
  v53 = v0[5];
  v54 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v53);
  OUTLINED_FUNCTION_13_34();
  v56 = (*(v55 + 8))(v49, v53, v54);
  if (v56)
  {
    v57 = v56;
    v58 = v0[29];
    v89 = v0[30];
    v59 = v0[28];
    v60 = v0[25];
    v61 = v0[26];
    v62 = v0[24];
    v63 = v0[18];
    v64 = v0[14];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v0[13] = v57;
    type metadata accessor for AnyFlow();

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    (*(v60 + 8))(v61, v62);
    (*(v58 + 8))(v89, v59);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v66))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v67, v68, "#MessagesFaceTimeLinkCompletionFlow Phone flow not found for direct invocation");
      OUTLINED_FUNCTION_26_0();
    }

    v69 = v0[29];
    v88 = v0[28];
    v90 = v0[30];
    v70 = v0[25];
    v86 = v0[24];
    v87 = v0[26];
    v72 = v0[21];
    v71 = v0[22];
    v73 = v0[19];
    v74 = v0[20];
    v75 = v0[18];
    v76 = v0[14];

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_55();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(v77, v78);
    v79 = swift_allocError();
    PhoneError.logged()(v80);
    OUTLINED_FUNCTION_2_64();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v74, v81);
    *v71 = v79;
    *(v71 + 8) = 0;
    v82 = enum case for RCHFlowResult.error<A, B>(_:);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1(v83);
    (*(v84 + 104))(v71, v82);
    swift_storeEnumTagMultiPayload();
    v85 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3();
    outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v71, v75 + v85);
    swift_endAccess();
    static ExecuteResponse.complete()();
    (*(v70 + 8))(v87, v86);
    (*(v69 + 8))(v90, v88);
  }

LABEL_16:
  v41 = v0[30];
  v42 = v0[26];
  v43 = v0[27];
  v45 = v0[22];
  v44 = v0[23];
  v46 = v0[20];

  OUTLINED_FUNCTION_11();

  return v47();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.flowOnCompletion(exitValue:)(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v4 = OUTLINED_FUNCTION_23_1(v52);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMR);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v47 - v23;
  __chkstk_darwin(v22);
  v26 = &v47 - v25;
  outlined init with copy of Any(a1, v53);
  if (swift_dynamicCast())
  {
    v51 = v9;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    v49 = *(v17 + 32);
    v50 = v17 + 32;
    v49(v26, v15, v16);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    v28 = *(v17 + 16);
    v28(v24, v26, v16);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v30))
    {
      v31 = swift_slowAlloc();
      v48 = v2;
      v32 = v31;
      v47 = swift_slowAlloc();
      v53[0] = v47;
      *v32 = 136315138;
      v28(v21, v24, v16);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      (*(v17 + 8))(v24, v16);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v53);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v29, v30, "#MessagesFaceTimeLinkCompletionFlow received exitValue: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_26_0();
      v2 = v48;
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      (*(v17 + 8))(v24, v16);
    }

    v44 = v51;
    v49(v51, v26, v16);
    swift_storeEnumTagMultiPayload();
    v45 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3();
    v42 = v2 + v45;
    v43 = v44;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_65_0();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "#MessagesFaceTimeLinkCompletionFlow Invalid user exitValue", v40, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    (*(v17 + 104))(v9, enum case for RCHFlowResult.cancelled<A, B>(_:), v16);
    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3();
    v42 = v2 + v41;
    v43 = v9;
  }

  outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v43, v42);
  return swift_endAccess();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.constructDirectInvocation(url:recipients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessageFlowDirectInvocation();
  v8 = OUTLINED_FUNCTION_23_1(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v15 = OUTLINED_FUNCTION_23_1(v14);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v56 - v19;
  (*(**(v3 + 64) + class metadata base offset for StartCallCATs + 1304))(v18);
  v21 = Result<>.firstPrint.getter();
  v23 = v22;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!v23)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriPhone);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v42))
    {
      v43 = OUTLINED_FUNCTION_65_0();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "#MessagesFaceTimeLinkCompletionFlow failed to generate join my facetime message", v43, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    goto LABEL_13;
  }

  v24 = *(v7 + 24);
  v25 = type metadata accessor for URL();
  OUTLINED_FUNCTION_23_1(v25);
  (*(v26 + 16))(&v13[v24], a1);
  *v13 = a2;
  *(v13 + 1) = v21;
  *(v13 + 2) = v23;
  v58[0] = 0xD000000000000028;
  v58[1] = 0x800000000045C440;

  v27._countAndFlagsBits = 46;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._object = 0x800000000045C470;
  v28._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v28);
  v29 = type metadata accessor for PropertyListEncoder();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(&lazy protocol witness table cache variable for type MessageFlowDirectInvocation and conformance MessageFlowDirectInvocation, type metadata accessor for MessageFlowDirectInvocation);
  v47 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v49 = v48;

  v50 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v58[0] = 0;
  v52 = [v50 propertyListWithData:isa options:0 format:0 error:v58];

  if (!v52)
  {
    v55 = v58[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v47, v49);
    OUTLINED_FUNCTION_6_47();

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriPhone);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58[0] = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v58);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v33, v34, "#MessagesFaceTimeLinkCompletionFlow error constructing direct invocation %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

LABEL_13:
    v44 = 1;
    goto LABEL_14;
  }

  v53 = v58[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    v54 = v56;
  }

  else
  {
    v54 = Dictionary.init(dictionaryLiteral:)();
  }

  v57 = v54;
  _s27PhoneCallFlowDelegatePlugin9DICodablePAAE25adaptUserDataAfterEncoder33_5EEBFE6FE8B4FD157AAB3C328F54CD48LLyySDySSypGzFZAA07MessageC16DirectInvocationV_Tt0g5(&v57);
  outlined consume of Data._Representation(v47, v49);
  Parse.DirectInvocation.init(identifier:userData:)();
  OUTLINED_FUNCTION_6_47();
  v44 = 0;
LABEL_14:
  v45 = type metadata accessor for Parse.DirectInvocation();
  return __swift_storeEnumTagSinglePayload(a3, v44, 1, v45);
}

void *MessagesFaceTimeLinkCompletionFlow.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  OUTLINED_FUNCTION_4_40();
  outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v0 + v3, v4);
  return v0;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.__deallocating_deinit()
{
  MessagesFaceTimeLinkCompletionFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance MessagesFaceTimeLinkCompletionFlow(uint64_t a1)
{
  v4 = *(**v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return v8(a1);
}

uint64_t outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for MessagesFaceTimeLinkCompletionFlow()
{
  result = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(319);
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

void type metadata completion function for MessagesFaceTimeLinkCompletionFlow.State()
{
  type metadata accessor for (faceTimeLink: String, recipients: [INPerson])();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (faceTimeLink: String, recipients: [INPerson])()
{
  if (!lazy cache variable for type metadata for (faceTimeLink: String, recipients: [INPerson]))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (faceTimeLink: String, recipients: [INPerson]));
    }
  }
}

void type metadata accessor for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>()
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSendMessageIntent, INSendMessageIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSendMessageIntentResponse, INSendMessageIntentResponse_ptr);
    v0 = type metadata accessor for RCHFlowResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>);
    }
  }
}

uint64_t MicrophoneControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(MicrophoneControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t MicrophoneControlFlow.executeAction(currentCall:)()
{
  v44 = v0;
  v1 = *(v0[9] + 56);
  if (PhoneCallControlAction.isMicrophoneAction.getter(v1))
  {
    v2 = v0[7];
    v3 = v0[8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v6 = v5(ObjectType, v3);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6 & 1;
      _os_log_impl(&dword_0, v8, v9, "#MicrophoneControlFlow isMicMuted = %{BOOL}d", v10, 8u);
      OUTLINED_FUNCTION_26_0();
    }

    v11 = PhoneCallControlAction.rawValue.getter(v1);
    if (v6)
    {
      if (v11 != 0xD000000000000010 || 0x8000000000452E20 != v12)
      {
        goto LABEL_21;
      }
    }

    else if (v11 != 0x7263694D6574756DLL || v12 != 0xEE00656E6F68706FLL)
    {
LABEL_21:
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v22 = v0[9];

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v43[0] = swift_slowAlloc();
          *v25 = 136315394;
          if (v6)
          {
            v26 = 0x646574756DLL;
          }

          else
          {
            v26 = 0x646574756D6E75;
          }

          if (v6)
          {
            v27 = 0xE500000000000000;
          }

          else
          {
            v27 = 0xE700000000000000;
          }

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v43);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2080;
          v29 = PhoneCallControlAction.description.getter(v1);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v43);

          *(v25 + 14) = v31;
          _os_log_impl(&dword_0, v23, v24, "#MicrophoneControlFlow not changing mic state because mic is %s and action is %s", v25, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        goto LABEL_36;
      }

LABEL_32:
      v32 = v0[7];
      v33 = (*(v0[8] + 112))(v0 + 2, ObjectType);
      *v34 = !*v34;
      v33(v0 + 2, 0);
      swift_unknownObjectRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v0[7];
        v38 = v0[8];
        v39 = swift_slowAlloc();
        *v39 = 67109120;
        *(v39 + 4) = v5(ObjectType, v38) & 1;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_0, v35, v36, "#MicrophoneControlFlow microphone is muted: %{BOOL}d", v39, 8u);
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
        v40 = v0[7];
        swift_unknownObjectRelease();
      }

LABEL_36:
      v41 = v0[6];
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *(v41 + 24) = xmmword_42D060;
      v19 = v0[1];
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#MicrophoneControlFlow used to handle a call control not related to the microphone.", v17, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
  swift_allocError();
  *v18 = v1;
  v18[40] = 0;
  swift_willThrow();
  v19 = v0[1];
LABEL_37:

  return v19();
}

uint64_t ModelDecisionEvaluator.forcedDisambiguationPrediction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  v4 = type metadata accessor for AppResolverResult();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ModelDecisionEvaluator.__allocating_init(forcedDisambiguationPrediction:userChosenApp:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  v9 = type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1(v9);
  (*(v10 + 32))(v7 + v8, a1);
  *(v7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp) = a2;
  return v7;
}

uint64_t ModelDecisionEvaluator.init(forcedDisambiguationPrediction:userChosenApp:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  v6 = type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp) = a2;
  return v2;
}

Swift::String_optional __swiftcall ModelDecisionEvaluator.getPredictedApp()()
{
  v1 = type metadata accessor for AppResolverResult();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = (v8 - v7);
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v1);
  v10 = (*(v4 + 88))(v9, v1);
  if (v10 == enum case for AppResolverResult.resolved(_:) || v10 == enum case for AppResolverResult.needsConfirmation(_:))
  {
    (*(v4 + 96))(v9, v1);
    v13 = *v9;
    v12 = v9[1];
    v14 = *v9 == 0xD000000000000017 && 0x8000000000459750 == v12;
    if (v14 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v13 == 0xD000000000000012 ? (v15 = 0x800000000045B700 == v12) : (v15 = 0), v15 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v13 == 0xD000000000000013 ? (v16 = 0x800000000045B720 == v12) : (v16 = 0), v16 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v13 == 0xD000000000000015 ? (v17 = 0x8000000000452BD0 == v12) : (v17 = 0), v17 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))))
    {
    }
  }

  else
  {
    (*(v4 + 8))(v9, v1);
  }

  v18 = OUTLINED_FUNCTION_0();
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

Swift::Bool __swiftcall ModelDecisionEvaluator.isDecisionCorrect()()
{
  v1 = v0;
  v2 = type metadata accessor for AppResolverResult();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = (v9 - v8);
  (*(v5 + 16))(v9 - v8, v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v2);
  v11 = *(v5 + 88);
  v12 = OUTLINED_FUNCTION_5_26();
  v14 = v13(v12);
  if (v14 == enum case for AppResolverResult.resolved(_:) || v14 == enum case for AppResolverResult.needsConfirmation(_:))
  {
    v16 = *(v5 + 96);
    v17 = OUTLINED_FUNCTION_5_26();
    v18(v17);
    v19 = *v10;
    v20 = v10[1];
    v21 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp);
    v22 = App.appIdentifier.getter();
    v24 = ModelDecisionEvaluator.bundlesMatchOrEquivalent(_:_:)(v19, v20, v22, v23);

    return v24 & 1;
  }

  if (v14 == enum case for AppResolverResult.needsDisambiguation(_:))
  {
    v25 = *(v5 + 96);
    v26 = OUTLINED_FUNCTION_5_26();
    v27(v26);
    v28 = *v10;
    v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp;
    v29 = (*v10 + 40);
    v30 = -*(*v10 + 16);
    v31 = -1;
    while (1)
    {
      if (v30 + v31 == -1)
      {

        goto LABEL_20;
      }

      if (++v31 >= *(v28 + 16))
      {
        break;
      }

      v32 = v29 + 2;
      v34 = *(v29 - 1);
      v33 = *v29;
      v35 = *(v1 + v5);

      v36 = App.appIdentifier.getter();
      LOBYTE(v34) = ModelDecisionEvaluator.bundlesMatchOrEquivalent(_:_:)(v34, v33, v36, v37);

      v29 = v32;
      if (v34)
      {

        v24 = 1;
        return v24 & 1;
      }
    }

    __break(1u);
  }

  else
  {
    if (v14 == enum case for AppResolverResult.noMatchFound(_:))
    {
      v38 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp);
      v24 = App.isFirstParty()();
      return v24 & 1;
    }

    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.siriPhone);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "#ModelDecisionEvaluator isDecisionCorrect: unknown prediction state", v42, 2u);
  }

  v43 = *(v5 + 8);
  v44 = OUTLINED_FUNCTION_5_26();
  v45(v44);
LABEL_20:
  v24 = 0;
  return v24 & 1;
}

BOOL ModelDecisionEvaluator.isConfirmation()(_DWORD *a1)
{
  v3 = type metadata accessor for AppResolverResult();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v10 - v9, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v3);
  v11 = *(v6 + 88);
  v12 = OUTLINED_FUNCTION_8_2();
  v14 = v13(v12) == *a1;
  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_8_2();
  v17(v16);
  return v14;
}

uint64_t ModelDecisionEvaluator.bundlesMatchOrEquivalent(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      OUTLINED_FUNCTION_8_2();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_8_2();
  if (static PhoneCallAppNameConstants.isPhone(appId:)(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_0();
    if (static PhoneCallAppNameConstants.isPhone(appId:)(v7, v8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ModelDecisionEvaluator.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  v2 = type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp);

  return v0;
}

uint64_t ModelDecisionEvaluator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  v2 = type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelDecisionEvaluator()
{
  result = type metadata singleton initialization cache for ModelDecisionEvaluator;
  if (!type metadata singleton initialization cache for ModelDecisionEvaluator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ModelDecisionEvaluator()
{
  result = type metadata accessor for AppResolverResult();
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

uint64_t static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)(void *a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[4] = v6;
  v7 = *(*a1 + class metadata base offset for UnsupportedFlowCATs + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v1[5] = v9;
  *v9 = v1;
  v9[1] = static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:);

  return v11(v6);
}

uint64_t static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:);
  }

  else
  {
    v3 = static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void *static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)()
{
  v1 = v0[4];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISayIt, SAUISayIt_ptr);
  result = TemplatingResult.speak.getter();
  if (result[2])
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = v0[2];
    v6 = result[4];
    v7 = result[5];

    v8 = TemplatingResult.templateIdentifier.getter();
    v10 = SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v6, v7, v8, v9, 0, 0);
    v11 = [objc_allocWithZone(SAResultCallback) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_426260;
    *(v12 + 32) = v10;
    v13 = v10;
    outlined bridged method (mbnn) of @objc SAResultCallback.commands.setter(v12, v11);
    [v11 setCode:SAResultCallbackAnyErrorCodeValue];
    v14 = [objc_allocWithZone(SAPhoneClientCoordinationPhoneCall) init];
    [v14 setEmergencyCall:1];
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_426260;
    *(v15 + 32) = v11;
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(v15, v14);

    (*(v4 + 8))(v3, v5);

    v16 = v0[1];

    return v16(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SAResultCallback.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

void outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCallbacks:isa];
}

void *NewCallConfirmationFlowProducer.__allocating_init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_allocObject();
  v14 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v14);
  OUTLINED_FUNCTION_12_36();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v20 = OUTLINED_FUNCTION_9_37(v19, v24);
  v21(v20);
  v22 = specialized NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(a1, a2, a3, a4, v6, a6, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v22;
}

void *NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v14 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v14);
  OUTLINED_FUNCTION_12_36();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v20 = OUTLINED_FUNCTION_9_37(v19, v24);
  v21(v20);
  v22 = specialized NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(a1, a2, a3, a4, v7, a6, v6, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v22;
}

uint64_t NewCallConfirmationFlowProducer.makeConfirmationFlow()()
{
  outlined init with copy of SignalProviding((v0 + 5), &v14);
  type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  swift_allocObject();
  PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(&async function pointer to partial apply for implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow(), v0, &v14);
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  v3 = *(v2 + 16);

  v3(&v14, v1, v2);
  v4 = v15;
  v5 = v16;
  v6 = __swift_project_boxed_opaque_existential_1(&v14, v15);
  v13[3] = v4;
  v13[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(&lazy protocol witness table cache variable for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy, type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy);
  v11 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v11;
}

uint64_t implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();

  return NewCallConfirmationFlowProducer.makePromptOutput()();
}

uint64_t NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[321] = v0;
  v1[315] = v2;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64);
  v1[327] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[333] = v4;
  v5 = *(v4 - 8);
  v1[339] = v5;
  v6 = *(v5 + 64);
  v1[345] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for CommonDirectAction();
  v1[351] = v7;
  v8 = *(*(v7 - 8) + 64);
  v1[357] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for YesNoConfirmationModel();
  v1[363] = v9;
  v10 = *(*(v9 - 8) + 64);
  v1[364] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(NewCallConfirmationFlowProducer.makePromptOutput(), 0, 0);
}

{
  v1 = 0x4E574F4E4B4E55;
  v2 = v0[321];
  v3 = type metadata accessor for PhoneCallRecord.Builder(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = PhoneCallRecord.Builder.init()();
  v7 = type metadata accessor for PhoneCallProvider.Builder(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = PhoneCallProvider.Builder.init()();
  v11 = *(v2 + 32);
  if (![v11 preferredCallProvider])
  {
    v14 = 0xE700000000000000;
    v15 = 0x4E574F4E4B4E55;
    goto LABEL_12;
  }

  v12 = INPreferredCallProviderGetBackingType();
  switch(v12)
  {
    case 4:
      v13 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v13 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v13 = @"TELEPHONY_PROVIDER";
      break;
    default:
      v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
      goto LABEL_11;
  }

  v16 = v13;
LABEL_11:
  v17 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v18;

LABEL_12:
  v19 = (*(*v10 + 200))(v15, v14, 0, 0);

  v21 = (*(*v19 + 240))(v20);

  v22 = (*(*v6 + 976))(v21);

  if (![v11 callCapability])
  {
    v25 = 0xE700000000000000;
    goto LABEL_21;
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v24 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      v24 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      goto LABEL_20;
    }

    v24 = @"AUDIO_CALL";
  }

  v26 = v24;
LABEL_20:
  v27 = v24;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v28;

LABEL_21:
  v29 = v0[321];
  v30 = (*(*v22 + 960))(v1, v25, 0, 0);

  v32 = (*(*v30 + 1176))(v31);
  v0[365] = v32;

  v33 = swift_allocObject();
  v0[366] = v33;
  *(v33 + 16) = v29;
  *(v33 + 24) = v32;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 307, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 272);
}

{
  *(v1 + 2936) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }
}

{
  v1 = v0[357];
  v2 = v0[351];
  v3 = v0[321];
  v0[368] = v0[307];
  v0[369] = v0[308];
  swift_storeEnumTagMultiPayload();
  v4 = v3[8];
  v5 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v4);
  v6 = *(v5 + 8);

  v6(v4, v5);
  v0[370] = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  OUTLINED_FUNCTION_5_50();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v1, v7);
  v8 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_get_throwing(v8, v9, v10, v0 + 316);
}

{
  *(v1 + 2968) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }
}

{
  v30 = *(v0 + 2960);
  v26 = *(v0 + 2944);
  v27 = *(v0 + 2952);
  v1 = *(v0 + 2912);
  v2 = *(v0 + 2904);
  v3 = *(v0 + 2856);
  v4 = *(v0 + 2808);
  v32 = *(v0 + 2760);
  v31 = *(v0 + 2616);
  v5 = *(v0 + 2568);
  v6 = *(v0 + 2384);
  v28 = v6;
  v29 = *(v0 + 2376);
  swift_storeEnumTagMultiPayload();
  v33 = v5;
  v7 = v5[8];
  v8 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v7);
  v9 = *(v8 + 8);

  v9(v7, v8);
  v10 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2056));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2056));
  OUTLINED_FUNCTION_5_50();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v3, v11);
  v12 = v2[8];
  *(v0 + 2440) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v13 = (v1 + v2[9]);
  *v13 = 0xD000000000000011;
  v13[1] = 0x8000000000456DF0;
  *(v0 + 2424) = v26;
  *(v0 + 2432) = v27;
  Loggable.init(wrappedValue:)();
  v14 = v2[5];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v15 = v30;
  CodableAceObject.init(wrappedValue:)();
  v16 = v2[6];
  *(v0 + 2408) = v29;
  *(v0 + 2416) = v28;
  Loggable.init(wrappedValue:)();
  v17 = v2[7];
  v18 = v10;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 2392) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();

  *(v0 + 2160) = v2;
  *(v0 + 2168) = lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2136));
  outlined init with copy of YesNoConfirmationModel(v1, boxed_opaque_existential_1);
  static DialogPhase.confirmation.getter();
  *(swift_task_alloc() + 16) = v0 + 2136;
  OutputGenerationManifest.init(dialogPhase:_:)();

  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  outlined destroy of PhoneSnippetModel?(v0 + 2136);
  v20 = v33[8];
  v21 = v33[9];
  __swift_project_boxed_opaque_existential_1(v33 + 5, v20);
  (*(v21 + 136))(v20, v21);
  v22 = *(v0 + 2240);
  *(v0 + 2976) = v22;
  *(v0 + 2992) = __swift_project_boxed_opaque_existential_1((v0 + 2216), v22);
  *(v0 + 2320) = type metadata accessor for PhoneSnippetDataModels();
  *(v0 + 2328) = lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels);
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 2296));
  outlined init with copy of YesNoConfirmationModel(v1, v23);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v0 + 3000) = v24;
  *(v24 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2016);
}

{
  *(v1 + 3008) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[373];
  v2 = v0[309];
  *(v0[375] + 32) = v2;
  v3 = *(v1 + 8);
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v5 = v2;
  v6 = swift_task_alloc();
  v0[377] = v6;
  *v6 = v0;
  v6[1] = NewCallConfirmationFlowProducer.makePromptOutput();
  v7 = v0[375];
  v8 = v0[374];
  v9 = v0[372];
  v10 = v0[345];
  v11 = v0[315];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v11, v0 + 287, v7, v10, v9, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 3016);
  v6 = *(v4 + 3000);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 2296));

  return _swift_task_switch(NewCallConfirmationFlowProducer.makePromptOutput(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2912);
  v2 = OUTLINED_FUNCTION_13_35();
  v3(v2);
  OUTLINED_FUNCTION_4_41();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v1, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2216));
  v5 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_finish(v5, v6, v7, v0 + 2720);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2096);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 1936);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[366];
  v2 = v0[365];
  v3 = v0[364];
  v4 = v0[357];
  v5 = v0[345];
  v6 = v0[327];

  OUTLINED_FUNCTION_11();

  return v7();
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 2376, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2256);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2336);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2480);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 2936);
  OUTLINED_FUNCTION_3_56();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2952);

  v2 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 2576);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2624);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2672);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 2968);
  OUTLINED_FUNCTION_3_56();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[375];
  v2 = v0[364];
  v3 = OUTLINED_FUNCTION_13_35();
  v4(v3);
  OUTLINED_FUNCTION_4_41();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v2, v5);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 287);
  __swift_destroy_boxed_opaque_existential_1(v0 + 277);
  v6 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_finish(v6, v7, v8, v0 + 358);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2816);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2768);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 3008);
  OUTLINED_FUNCTION_3_56();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput(), 0, 0);
}

uint64_t implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[15];
  v4 = v1[2];
  v5 = v1[3];
  swift_getObjectType();
  v6 = SPHCall.toPhoneCallRecord()();
  v0[5] = v6;
  v7 = *(*v3 + class metadata base offset for OngoingCallCATsSimple + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput();

  return v11(v6, v2);
}

{
  **(v0 + 16) = *(v0 + 64);
  return OUTLINED_FUNCTION_2_65();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  v5[7] = v1;

  if (v1)
  {
    v11 = implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput();
  }

  else
  {
    v12 = v5[5];

    v5[8] = a1;
    v11 = implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput();
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t implicit closure #2 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to static LabelTemplates.yes()[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = implicit closure #2 in NewCallConfirmationFlowProducer.makePromptOutput();

  return static LabelTemplates.yes()();
}

uint64_t implicit closure #2 in NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    v15 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v15, v16, v17);
  }
}

{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  return OUTLINED_FUNCTION_2_65();
}

uint64_t implicit closure #3 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to static LabelTemplates.no()[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = implicit closure #3 in NewCallConfirmationFlowProducer.makePromptOutput();

  return static LabelTemplates.no()();
}

uint64_t implicit closure #3 in NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    v15 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t NewCallConfirmationFlowProducer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v2 = *(v0 + 120);

  return v0;
}

uint64_t NewCallConfirmationFlowProducer.__deallocating_deinit()
{
  NewCallConfirmationFlowProducer.deinit();

  return swift_deallocClassInstance();
}

void *specialized NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  a7[13] = a8;
  a7[14] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 10);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a5, a8);
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, a7 + 5);
  a7[15] = a6;
  return a7;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow()()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow()();
}

uint64_t partial apply for implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(a1, v5, v4);
}

uint64_t lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t key path setter for NLTransformer.nlIntentHistory : NLTransformer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t NLTransformer.nlIntentHistory.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}