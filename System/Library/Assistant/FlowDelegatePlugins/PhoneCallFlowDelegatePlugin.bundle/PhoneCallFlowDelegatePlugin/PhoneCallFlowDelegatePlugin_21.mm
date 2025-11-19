Swift::Bool __swiftcall UserDialogActParse.isRedirectBusinessCall()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v59 = type metadata accessor for Google_Protobuf_StringValue();
  v3 = OUTLINED_FUNCTION_7(v59);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v56 = v15 - v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_42_13();
  if (!v2)
  {
    goto LABEL_33;
  }

  v19 = *(v2 + 16);
  if (!v19)
  {
    goto LABEL_33;
  }

  v20 = 0;
  v58 = *(v18 + 16);
  v21 = *(v18 + 72);
  v22 = (v5 + 8);
  v23 = (v18 + 8);
  v54 = (v18 + 32);
  v52 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = v2 + v52;
  v55 = _swiftEmptyArrayStorage;
  v53 = *(v2 + 16);
  v57 = v21;
  v51 = v2 + v52;
LABEL_4:
  v25 = ~v20;
  v26 = v24 + v21 * v20;
  v27 = v19 - v20;
  if (v19 != v20)
  {
    do
    {
      v58(v0, v26, v11);
      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      Google_Protobuf_StringValue.value.getter();
      OUTLINED_FUNCTION_69_7();
      (*v22)(v10, v59);
      if (v20 == 0xD000000000000018 && 0x8000000000452950 == v10)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0xD000000000000016 && 0x80000000004586F0 == v29)
      {

LABEL_20:
        v31 = *v54;
        (*v54)(v56, v0, v11);
        v32 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = v55[2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v32 = v55;
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_76(v34);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v32 = v55;
        }

        v20 = -v25;
        v32[2] = v35 + 1;
        v55 = v32;
        v36 = v32 + v52 + v35 * v57;
        v21 = v57;
        v31(v36, v56, v11);
        v19 = v53;
        v24 = v51;
        goto LABEL_4;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

LABEL_17:
      (*v23)(v0, v11);
      --v25;
      v26 += v57;
      --v27;
    }

    while (v27);
  }

  v37 = v55[2];

  if (v37)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_5_21(v40))
    {
      OUTLINED_FUNCTION_13_14();
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v42 = swift_slowAlloc();
      v60 = v42;
      *v41 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        OUTLINED_FUNCTION_0_69();
        swift_once();
      }

      v43 = static NLv4Transformer.logPrefix;
      v44 = unk_599B70;

      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v43, v44, 0xD000000000000018, 0x800000000045C9B0);

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v60);
      OUTLINED_FUNCTION_62_11();

      *(v41 + 4) = v43;
      OUTLINED_FUNCTION_41_14();
      _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_65();
  return result;
}

uint64_t static Transformer<>.createNLIntent(app:phoneCallAVMode:phoneCallAttributes:targetContacts:commonPhoneCall:audioRoute:phoneCallVerb:voicemailVerb:referenceResolver:previousNLIntent:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v82 = a7;
  v81 = a6;
  v96 = a4;
  v88 = a3;
  HIDWORD(v80) = a2;
  v90 = a9;
  v89 = a11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology26UsoEntity_common_PhoneCallCSgSay0hI18FlowDelegatePlugin0aH7Contact_pGGMd, &_s13SiriUtilities11TransformerVy0A8Ontology26UsoEntity_common_PhoneCallCSgSay0hI18FlowDelegatePlugin0aH7Contact_pGGMR);
  v92 = *(v93 - 8);
  v13 = *(v92 + 64);
  __chkstk_darwin(v93);
  v15 = &v80 - v14;
  static Signpost.begin(_:)();
  v87 = v16;
  v86 = v17;
  v85 = v18;
  v84 = v19;
  v91 = a1;
  v94 = a5;
  if (a5 && (v20 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter()) != 0)
  {
    v21 = v20;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  *&v98 = _swiftEmptyArrayStorage;
  v22 = specialized Array.count.getter(v21);
  v23 = 0;
  v24 = v21 & 0xC000000000000001;
  v95 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v22 == v23)
    {

      v114 = v95;
      v27 = v96[3];
      if (v27)
      {
        v28 = specialized Array.count.getter(v96[3]);
        v24 = v94;
        if (v28)
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v27 & 0xC000000000000001) == 0, v27);
          if ((v27 & 0xC000000000000001) == 0)
          {
            v29 = *(v27 + 32);

            goto LABEL_23;
          }

          goto LABEL_80;
        }
      }

      else
      {
        v24 = v94;
      }

      goto LABEL_27;
    }

    if (v24)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_76;
      }

      v25 = *(v21 + 8 * v23 + 32);
    }

    if (__OFADD__(v23, 1))
    {
      break;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();
    if (v97[0])
    {
      v26 = UsoEntity_common_Agent.asCommonGroup()();

      if (!v26)
      {
        goto LABEL_17;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v98 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v95 = v98;
      ++v23;
    }

    else
    {

LABEL_17:
      ++v23;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  while (1)
  {
    __break(1u);
    do
    {
      __break(1u);
LABEL_80:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v114 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v95 = v114;
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26UsoEntity_common_PhoneCallCSgMd, &_s12SiriOntology26UsoEntity_common_PhoneCallCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
      Transformer.init(transform:)();
      v30 = v93;
      v31 = Transformer.transform.getter();
      (*(v92 + 8))(v15, v30);
      *&v98 = v24;
      v31(v97, &v98);

      v24 = v97[0];
      v32 = *v96;
      v33 = specialized Array.count.getter(*v96);
    }

    while (v33 < 0);
    v15 = v33;
    if (v33)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        if (v35 >= *(v24 + 16))
        {
          v36 = type metadata accessor for SiriPhoneContactImpl(0);
          v37 = *(v36 + 48);
          v38 = *(v36 + 52);
          swift_allocObject();
          v39 = SiriPhoneContactImpl.init()();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = *(v24 + 16);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v24 = v46;
          }

          v40 = *(v24 + 16);
          if (v40 >= *(v24 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v24 = v47;
          }

          v100 = v36;
          v101 = &protocol witness table for SiriPhoneContactImpl;
          *&v98 = v39;
          *(v24 + 16) = v40 + 1;
          outlined init with take of SPHConversation(&v98, v24 + 40 * v40 + 32);
        }

        if ((v32 & 0xC000000000000001) != 0)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v41 = *(v32 + 8 * v35 + 32);
        }

        v42 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          v24 = v44;
        }

        if (v35 >= *(v24 + 16))
        {
          goto LABEL_77;
        }

        ++v35;
        v43 = *(v24 + v34 + 64);
        __swift_mutable_project_boxed_opaque_existential_1(v24 + v34 + 32, *(v24 + v34 + 56));
        SiriPhoneContact.update(person:)(v42);

        v34 += 40;
      }

      while (v15 != v35);
    }

    if (*(v24 + 16))
    {
      v48 = v91;
    }

    else
    {
      v59 = v96[2];
      v48 = v91;
      if (v59 && *(v59 + 16) == 1)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, static Logger.siriPhone);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v97[0] = v64;
          *v63 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          *&v98 = 0;
          *(&v98 + 1) = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, *(&v98 + 1), v97);

          *(v63 + 4) = v65;
          _os_log_impl(&dword_0, v61, v62, "%s add an dummy contact to align with its contactQuery size", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
        }

        v66 = type metadata accessor for SiriPhoneContactImpl(0);
        v67 = *(v66 + 48);
        v68 = *(v66 + 52);
        swift_allocObject();
        v69 = SiriPhoneContactImpl.init()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = *(v24 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v78;
        }

        v70 = *(v24 + 16);
        v15 = (v70 + 1);
        if (v70 >= *(v24 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v79;
        }

        v100 = v66;
        v101 = &protocol witness table for SiriPhoneContactImpl;
        *&v98 = v69;
        *(v24 + 16) = v15;
        outlined init with take of SPHConversation(&v98, v24 + 40 * v70 + 32);
      }
    }

    v49 = v96[1];
    if (!v49)
    {
      break;
    }

    v50 = *(v49 + 16);
    if (!v50 || v50 != *(v24 + 16))
    {
      break;
    }

    v51 = 0;
    v52 = 0;
    v53 = v49 + 32;
    while (1)
    {
      v54.value = *(v53 + v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        v24 = v55;
      }

      if (v52 >= *(v24 + 16))
      {
        break;
      }

      ++v52;
      v15 = *(v24 + v51 + 64);
      __swift_mutable_project_boxed_opaque_existential_1(v24 + v51 + 32, *(v24 + v51 + 56));
      SiriPhoneContact.update(contactSource:)(v54);
      v51 += 40;
      if (v50 == v52)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_53:
  v56 = v96[2];
  if (v48)
  {
    v57 = type metadata accessor for UsoEntity_common_App();
    v58 = &protocol witness table for UsoEntity_common_App;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v71 = v90;
  v72 = _swiftEmptyArrayStorage;
  if (v56)
  {
    v73 = v56;
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
  }

  specialized _arrayForceCast<A, B>(_:)();
  v75 = v74;
  if (v96[4])
  {
    v72 = v96[4];
  }

  *&v98 = v73;
  *(&v98 + 1) = v24;
  v99 = v48;
  v100 = 0;
  v101 = 0;
  v102 = v57;
  v103 = v58;
  v104 = BYTE4(v80);
  v105 = v88;
  v106 = v81;
  v107 = 151323906;
  v108 = 8963;
  v109 = v82;
  v110 = v83;
  v111 = 2;
  v112 = v75;
  v113 = v72;
  v97[3] = &type metadata for PhoneCallNLv4Intent;
  v97[4] = &protocol witness table for PhoneCallNLv4Intent;
  v97[0] = swift_allocObject();
  outlined init with copy of PhoneCallNLv4Intent(&v98, v97[0] + 16);

  static PhoneCallNLv4Intent.getMergedNLIntent(previousNLIntent:currentNLIntent:)(v97, v71);
  outlined destroy of PhoneCallNLv4Intent(&v98);
  __swift_destroy_boxed_opaque_existential_1(v97);
  Signpost.OpenSignpost.end()();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = a1[1];
  static Signpost.begin(_:)();
  v29[0] = v10;
  ObjectType = swift_getObjectType();
  v12 = (*(v8 + 24))(ObjectType, v8);
  if (FollowUpOfferType.rawValue.getter(v12) == 0xD000000000000011 && 0x8000000000452840 == v13)
  {

    goto LABEL_8;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_8:
    v20 = type metadata accessor for UsoTaskBuilder_callback_common_PhoneCall();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v19 = UsoTaskBuilder_callback_common_PhoneCall.init()();
    goto LABEL_9;
  }

  v16 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = UsoTaskBuilder_call_common_PhoneCall.init()();
LABEL_9:
  v23 = v19;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_426260;
  *(v24 + 32) = v23;

  v25 = static USOSerializedGraph.fromTaskBuilders(_:)();

  v26 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask:v25];
  *v7 = v26;
  (*(v4 + 104))(v7, enum case for Parse.NLv4IntentOnly(_:), v3);
  v27 = v26;
  Input.init(parse:)();

  Signpost.OpenSignpost.end()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  if (a1[1])
  {
    v8 = *a1;
    v9 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 personNameComponentsFromString:v10];

    if (v11)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for PersonNameComponents();
      v13 = 0;
    }

    else
    {
      v12 = type metadata accessor for PersonNameComponents();
      v13 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v13, 1, v12);
    return outlined init with take of ButtonConfigurationModel?(v7, a2, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v14 = type metadata accessor for PersonNameComponents();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v59 = v13;
  v60 = v12;
  v58 = v14;
  v57 = v15;
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    if (Siri_Nlu_External_UserStatedTask.hasTask.getter())
    {
      v55 = v8;
      Siri_Nlu_External_UserStatedTask.task.getter();
      v16 = Siri_Nlu_External_UsoGraph.identifiers.getter();
      (*(v4 + 8))(v7, v3);
      v17 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (v1)
      {

        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.siriPhone);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v63 = v22;
          *v21 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          v61 = 0;
          v62 = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v63);

          *(v21 + 4) = v23;
          _os_log_impl(&dword_0, v19, v20, "%s could not convert user dialog act to task", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
        }

        v24 = type metadata accessor for TransformationError();
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError);
        swift_allocError();
        v26 = v25;
        v27 = 0x800000000045CD70;
        v28 = 0xD00000000000003ALL;
LABEL_11:
        *v25 = v28;
        v25[1] = v27;
        (*(*(v24 - 8) + 104))(v26, enum case for TransformationError.cannotTransform(_:), v24);
        swift_willThrow();
        (*(v56 + 8))(v11, v55);
        goto LABEL_26;
      }

      v47 = v17;
      if (!specialized Array.count.getter(v17))
      {

        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.siriPhone);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v63 = v53;
          *v52 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          v61 = 0;
          v62 = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v63);

          *(v52 + 4) = v54;
          _os_log_impl(&dword_0, v50, v51, "%s no tasks found in input", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        v24 = type metadata accessor for TransformationError();
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError);
        swift_allocError();
        v26 = v25;
        v27 = 0x800000000045CDB0;
        v28 = 0xD000000000000028;
        goto LABEL_11;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v47 & 0xC000000000000001) == 0, v47);
      if ((v47 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v48 = *(v47 + 32);
      }

      (*(v56 + 8))(v11, v55);
      *a1 = v48;
      a1[1] = v16;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v37 = v8;
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.siriPhone);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v63 = v42;
        *v41 = 136315138;
        if (one-time initialization token for logPrefix != -1)
        {
          swift_once();
        }

        v61 = 0;
        v62 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v63);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_0, v39, v40, "%s userDialogAct.userStatedTask has no task UsoGraph", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
      }

      v44 = type metadata accessor for TransformationError();
      lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError);
      swift_allocError();
      *v45 = 0xD000000000000042;
      v45[1] = 0x800000000045CD20;
      (*(*(v44 - 8) + 104))(v45, enum case for TransformationError.cannotTransform(_:), v44);
      swift_willThrow();
      (*(v56 + 8))(v11, v37);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.siriPhone);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63 = v33;
      *v32 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      v61 = 0;
      v62 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v63);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_0, v30, v31, "%s does NOT have UserStatedTask", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    v35 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError);
    swift_allocError();
    *v36 = 0xD00000000000002DLL;
    v36[1] = 0x800000000045CCF0;
    (*(*(v35 - 8) + 104))(v36, enum case for TransformationError.cannotTransform(_:), v35);
    swift_willThrow();
  }

LABEL_26:
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.toPhoneCallAudioRoute(phoneCallAttribute:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  static Signpost.begin(_:)();
  v12 = v11;
  dispatch thunk of CodeGenListEntry.entry.getter();
  if (v20)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v21)
  {
    dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    }

    else
    {
      v18 = v12;
      v15 = v19;
      v16 = *(v19 + 32);
      v16(v10, v3, v4);
      v16(v8, v10, v4);
      v17 = (*(v15 + 88))(v8, v4);
      if (v17 == enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounSpeakerphone(_:))
      {
        v13 = 0;
        goto LABEL_7;
      }

      if (v17 == enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounNotSpeakerphone(_:))
      {
        v13 = 1;
        goto LABEL_7;
      }

      if (v17 == enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounBluetooth(_:))
      {
        v13 = 2;
        goto LABEL_7;
      }

      (*(v19 + 8))(v8, v4);
    }
  }

  v13 = 4;
LABEL_7:
  Signpost.OpenSignpost.end()();

  return v13;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  static Signpost.begin(_:)();
  static UsoTask_CodegenConverter.convert(task:)();
  if (v14)
  {
    type metadata accessor for UsoTask_call_common_PhoneCall();
    if (swift_dynamicCast())
    {
      v4 = a2;

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();

      if (v13[0])
      {
        v5 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

        if (v5)
        {
          if (specialized Array.count.getter(v5))
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v5 & 0xC000000000000001) == 0, v5);
            if ((v5 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v6 = *(v5 + 32);
            }

LABEL_19:

            v9 = static Transformer<>.toPhoneCallAudioRoute(phoneCallAttribute:)();

            a2 = v4;
            goto LABEL_35;
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (v14)
  {
    type metadata accessor for UsoTask_redial_common_PhoneCall();
    if (swift_dynamicCast())
    {
      v4 = a2;

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();

      if (v13[0])
      {
        v7 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

        if (v7)
        {
          if (specialized Array.count.getter(v7))
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000001) == 0, v7);
            if ((v7 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v8 = *(v7 + 32);
            }

            goto LABEL_19;
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v14)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_sypSgMd, &_sypSgMR);
    goto LABEL_32;
  }

  type metadata accessor for UsoTask_answer_common_PhoneCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v9 = 4;
    goto LABEL_35;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

  if (!v13[0])
  {
    goto LABEL_34;
  }

  v10 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

  if (!v10)
  {
    goto LABEL_34;
  }

  if (!specialized Array.count.getter(v10))
  {

LABEL_34:

    v9 = 4;
    goto LABEL_35;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v9 = static Transformer<>.toPhoneCallAudioRoute(phoneCallAttribute:)();

LABEL_35:
  *a2 = v9;
  Signpost.OpenSignpost.end()();
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = *a1;
  static Signpost.begin(_:)();
  v14 = v13;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v45)
  {
    v40 = v14;
    outlined init with take of Any(&v44, v46);
    outlined init with copy of Any(v46, &v44);
    type metadata accessor for UsoTask_noVerb_common_PhoneNumber();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v46);

LABEL_4:
      *a2 = 0;
LABEL_34:
      __swift_destroy_boxed_opaque_existential_1(&v44);
      goto LABEL_35;
    }

    type metadata accessor for UsoTask_noVerb_common_PhoneCall();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      __swift_destroy_boxed_opaque_existential_1(v46);
      if (!v47)
      {
        goto LABEL_4;
      }

      v15 = 5;
LABEL_33:
      *a2 = v15;
      goto LABEL_34;
    }

    type metadata accessor for UsoTask_call_common_PhoneCall();
    if (swift_dynamicCast())
    {
      v16 = v47;
      v17 = static Transformer<>.isCallingLastNumberUserCalled(callTask:)();
      v39 = v16;
      if (v17)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.siriPhone);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v38 = v2;
          v21 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v43 = v37;
          *v21 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          v41 = 0;
          v42 = 0xE000000000000000;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v43);

          *(v21 + 4) = v22;
          _os_log_impl(&dword_0, v19, v20, "%s call last number user called is found, treat current request as redial", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);

          __swift_destroy_boxed_opaque_existential_1(v46);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v46);
        }

        v15 = 6;
        goto LABEL_33;
      }

      v38 = v2;

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();

      if (v41 && (v25 = dispatch thunk of UsoEntity_common_PhoneCall.mode.getter(), , v25))
      {
        dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();

        v26 = type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
        if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
        {
          outlined init with copy of ButtonConfigurationModel?(v11, v9, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
          v27 = *(v26 - 8);
          v28 = (*(v27 + 88))(v9, v26);
          if (v28 == enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Audio(_:))
          {
            __swift_destroy_boxed_opaque_existential_1(v46);

            v29 = 3;
LABEL_30:
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
            *a2 = v29;
            goto LABEL_34;
          }

          if (v28 == enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Video(_:))
          {
            __swift_destroy_boxed_opaque_existential_1(v46);

            v29 = 2;
            goto LABEL_30;
          }

          (*(v27 + 8))(v9, v26);
        }
      }

      else
      {
        v31 = type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
        __swift_storeEnumTagSinglePayload(v11, 1, 1, v31);
      }

      v32 = UsoTask.usoAssociatedApp.getter();
      v29 = static Transformer<>.overrideVerbForApp(originalVerb:usoApp:)(0, v32);

      __swift_destroy_boxed_opaque_existential_1(v46);
      goto LABEL_30;
    }

    type metadata accessor for UsoTask_callback_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v23 = UsoTask.usoAssociatedApp.getter();
      v24 = 1;
LABEL_27:
      v30 = static Transformer<>.overrideVerbForApp(originalVerb:usoApp:)(v24, v23);

      __swift_destroy_boxed_opaque_existential_1(v46);
      *a2 = v30;
      goto LABEL_34;
    }

    type metadata accessor for UsoTask_redial_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v23 = UsoTask.usoAssociatedApp.getter();
      v24 = 6;
      goto LABEL_27;
    }

    type metadata accessor for UsoTask_delete_common_Voicemail();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_delete_common_PhoneCall(), swift_dynamicCast()))
    {
      __swift_destroy_boxed_opaque_existential_1(v46);

      __swift_destroy_boxed_opaque_existential_1(&v44);
      v34 = 12;
LABEL_39:
      *a2 = v34;
      goto LABEL_35;
    }

    type metadata accessor for UsoTask_answer_common_PhoneCall();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v46);

LABEL_42:
      v15 = 10;
      goto LABEL_33;
    }

    type metadata accessor for UsoTask_reply_uso_NoEntity();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      if (v47 || (dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter(), v47))
      {

        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      else
      {
        v35 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.userEntities.getter();

        __swift_destroy_boxed_opaque_existential_1(v46);
        if (!v35)
        {
          goto LABEL_42;
        }
      }

      v15 = 17;
      goto LABEL_33;
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
    type metadata accessor for UsoTask_join_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v15 = 14;
      goto LABEL_33;
    }

    type metadata accessor for UsoTask_update_common_PhoneCall();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_update_common_Communication(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1(&v44);
      v34 = 15;
      goto LABEL_39;
    }

    type metadata accessor for UsoTask_hangup_common_PhoneCall();
    if (swift_dynamicCast())
    {

      v15 = 11;
      goto LABEL_33;
    }

    type metadata accessor for UsoTask_request_common_PhoneCall();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_summarise_common_PhoneCall(), swift_dynamicCast()) || (type metadata accessor for UsoTask_summarise_common_Voicemail(), swift_dynamicCast()) || (type metadata accessor for UsoTask_read_common_PhoneCall(), swift_dynamicCast()) || (type metadata accessor for UsoTask_read_common_Voicemail(), swift_dynamicCast()) || (type metadata accessor for UsoTask_call_common_Voicemail(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1(&v44);
      v34 = 5;
      goto LABEL_39;
    }

    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v44, &_sypSgMd, &_sypSgMR);
  }

  *a2 = 17;
LABEL_35:
  Signpost.OpenSignpost.end()();
}

{
  v3 = *a1;
  static Signpost.begin(_:)();
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v7)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v6, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  outlined init with take of Any(&v6, v8);
  outlined init with take of Any(v8, &v6);
  type metadata accessor for UsoTask_play_common_Voicemail();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Voicemail();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_repeat_common_Voicemail();
      if (swift_dynamicCast())
      {

        v4 = 1;
LABEL_17:
        *a2 = v4;
        __swift_destroy_boxed_opaque_existential_1(&v6);
        goto LABEL_18;
      }

      type metadata accessor for UsoTask_skip_common_Voicemail();
      if (swift_dynamicCast())
      {

        v4 = 2;
        goto LABEL_17;
      }

      type metadata accessor for UsoTask_pause_common_Voicemail();
      if (swift_dynamicCast())
      {

        v4 = 3;
        goto LABEL_17;
      }

      type metadata accessor for UsoTask_resume_common_Voicemail();
      if (swift_dynamicCast())
      {

        v4 = 4;
        goto LABEL_17;
      }

      type metadata accessor for UsoTask_delete_common_Voicemail();
      if (swift_dynamicCast())
      {

        v4 = 5;
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_1(&v6);
LABEL_6:
      *a2 = 6;
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v6);
  *a2 = 0;
LABEL_18:
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, void *a5@<X5>, void *a6@<X8>)
{
  v108 = a5;
  v104 = a4;
  v118 = a3;
  v132 = a2;
  v112 = a6;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMR);
  v106 = *(v107 - 8);
  v7 = *(v106 + 64);
  __chkstk_darwin(v107);
  v105 = &v103 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMR);
  v109 = *(v110 - 8);
  v9 = *(v109 + 64);
  __chkstk_darwin(v110);
  v111 = &v103 - v10;
  v125 = type metadata accessor for ContactQuery();
  v11 = *(v125 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v125);
  v126 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v121 = &v103 - v15;
  v16 = type metadata accessor for MatchedResultsSetting();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v115 = v21;
  v113 = v22;
  v114 = v23;
  v149 = v24;
  v140 = _swiftEmptyArrayStorage;
  v141 = _swiftEmptyArrayStorage;
  v139 = _swiftEmptyArrayStorage;
  v116 = v17;
  v25 = *(v17 + 104);
  v130 = v20;
  v117 = v16;
  (v25)(v20, enum case for MatchedResultsSetting.defaultMatching(_:), v16);
  v26 = specialized Array.count.getter(a1);
  v28 = &unk_426000;
  v123 = v11;
  v135 = v26;
  if (!v26)
  {
    v44 = PhoneCallVerb.isCallOrFaceTime()();
    if (v44)
    {
      v44 = (*(*v118 + 232))();
      if ((v44 & 1) == 0)
      {
        v44 = static UsoUtils.buildDummyReferenceEntity()();
        if (v44)
        {
          if (one-time initialization token for siriPhone == -1)
          {
            goto LABEL_53;
          }

          goto LABEL_109;
        }
      }
    }

    v128 = _swiftEmptyArrayStorage;
    v124 = _swiftEmptyArrayStorage;
    v58 = &v150;
    goto LABEL_58;
  }

  v29 = 0;
  v134 = a1 & 0xC000000000000001;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v129 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v30 = a1;
  }

  v103 = v30;
  v120 = (v11 + 8);
  *&v27 = 136315138;
  v119 = v27;
  v128 = _swiftEmptyArrayStorage;
  v124 = _swiftEmptyArrayStorage;
  v127 = _swiftEmptyArrayStorage;
  v31 = v130;
  v133 = a1;
  do
  {
    if (v134)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v129 + 16))
      {
        goto LABEL_106;
      }

      v32 = *(a1 + 8 * v29 + 32);
    }

    v25 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();
    if (!v137 || (v33 = UsoEntity_common_Agent.asCommonPerson()(), , !v33))
    {
      dispatch thunk of CodeGenListEntry.entry.getter();
      if (v137)
      {
        v42 = v132[4];
        __swift_project_boxed_opaque_existential_1(v132, v132[3]);

        CodeGenBase.entity.getter();
        v43 = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

        if ((v43 & 1) == 0)
        {

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v31 = v130;
          v28 = &unk_426000;
          a1 = v133;
          if (*(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v140 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v124 = v140;
          goto LABEL_46;
        }

        CodeGenBase.entity.getter();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v31 = v130;
        v28 = &unk_426000;
        if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v139 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v127 = v139;
      }

      else
      {
      }

      a1 = v133;
      goto LABEL_46;
    }

    v131 = (v29 + 1);
    v34 = v132[4];
    __swift_project_boxed_opaque_existential_1(v132, v132[3]);

    CodeGenBase.entity.getter();
    v35 = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

    if (v35)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v136 = v40;
        *v39 = v119;
        if (one-time initialization token for logPrefix != -1)
        {
          swift_once();
        }

        v137 = 0;
        v138 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v136);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_0, v37, v38, "%s found a reference from common person", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);

        v31 = v130;
      }

      else
      {
      }

      CodeGenBase.entity.getter();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = &unk_426000;
      if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v139 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v127 = v139;
      a1 = v133;
    }

    else
    {

      a1 = v133;
      v28 = &unk_426000;
      if (v133 >> 62)
      {
        v45 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v45 = *(v129 + 16);
      }

      if (v45 == 1)
      {
        v46 = v121;
        UsoEntity_common_Person.toContactQuery()();
        if (one-time initialization token for emptyQuery != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v125, static ContactQuery.emptyQuery);
        v47 = v46;
        if (static ContactQuery.== infix(_:_:)())
        {
          (*v120)(v46, v125);
LABEL_96:

          (*(v116 + 8))(v31, v117);

          Signpost.OpenSignpost.end()();

          v70 = 0;
          v71 = 0;
          v69 = 0;
          v73 = 0;
          v75 = 1;
          v28 = _swiftEmptyArrayStorage;
          goto LABEL_100;
        }

        if (one-time initialization token for emptyNLv4Query != -1)
        {
          swift_once();
        }

        v48 = v125;
        __swift_project_value_buffer(v125, static ContactQuery.emptyNLv4Query);
        v49 = static ContactQuery.== infix(_:_:)();
        v50 = v47;
        v51 = v49;
        (*v120)(v50, v48);
        if (v51)
        {
          goto LABEL_96;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v128 = v141;
    }

    v25 = v131;
LABEL_46:
    ++v29;
  }

  while (v25 != v135);
  while (1)
  {
    if ((*(*v118 + 232))(v44))
    {
      if (one-time initialization token for siriPhone != -1)
      {
LABEL_107:
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.siriPhone);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v136 = v63;
        *v62 = v28[70];
        if (one-time initialization token for logPrefix != -1)
        {
          swift_once();
        }

        v137 = 0;
        v138 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v136);

        *(v62 + 4) = v64;
        _os_log_impl(&dword_0, v60, v61, "%s skipping SRR", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
      }
    }

    else if (specialized Array.count.getter(v127))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v66 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
      __chkstk_darwin(v66);
      *(&v103 - 4) = &v139;
      v67 = v130;
      *(&v103 - 3) = v132;
      *(&v103 - 2) = v67;
      static SiriKitEventSender.current.getter();
      _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZAA14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVSg_Tt4g5();
      __swift_destroy_boxed_opaque_existential_1(&v137);
      v68 = v142;
      if (v142)
      {
        v69 = v145;
        v135 = v146;
        v70 = v143;
        v71 = v144;
        v148 = v147;

        v72 = v108[3];
        v134 = v108[4];
        __swift_project_boxed_opaque_existential_1(v108, v72);
        type metadata accessor for SiriKitEvent();
        LOBYTE(v137) = 0;
        SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
        v28 = v68;
        v73 = v135;
        dispatch thunk of SiriKitEventSending.send(_:)();

        (*(v116 + 8))(v67, v117);

        Signpost.OpenSignpost.end()();

        v75 = v148;
        goto LABEL_100;
      }
    }

    v76 = v128;
    if (!specialized Array.count.getter(v128))
    {
      v81 = v124;
      if (!specialized Array.count.getter(v124))
      {
        v73 = v139;
        v98 = specialized Array.count.getter(v139);
        v82 = v130;
        if (v98)
        {
        }

        else
        {
          v73 = 0;
        }

        v28 = _swiftEmptyArrayStorage;
        goto LABEL_99;
      }

      v82 = v130;
      if (one-time initialization token for transformer != -1)
      {
        swift_once();
      }

      v83 = v107;
      v84 = __swift_project_value_buffer(v107, static Transformer<>.transformer);
      v85 = v106;
      v86 = v105;
      v87 = (*(v106 + 16))(v105, v84, v83);
      __chkstk_darwin(v87);
      *(&v103 - 2) = v86;
      v88 = v122;
      specialized Sequence.compactMap<A>(_:)(partial apply for closure #5 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:), (&v103 - 4), v81);
      v122 = v88;
      if (!v88)
      {
        v28 = v89;
        (*(v85 + 8))(v86, v83);
        v73 = 0;
        goto LABEL_99;
      }

      (*(v85 + 8))(v86, v83);
      (*(v116 + 8))(v82, v117);
      goto LABEL_78;
    }

    v77 = v111;
    v78 = static Transformer<>.transformer.getter();
    __chkstk_darwin(v78);
    *(&v103 - 2) = v77;
    v79 = v122;
    v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology23UsoEntity_common_PersonCG_So8INPersonCsAE_pTg5(partial apply for closure #3 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:), (&v103 - 4), v76);
    v122 = v79;
    if (v79)
    {

      (*(v109 + 8))(v77, v110);
      (*(v116 + 8))(v130, v117);
LABEL_78:

      Signpost.OpenSignpost.end()();
    }

    v28 = v80;
    v90 = specialized Array.count.getter(v76);
    if (!v90)
    {
      goto LABEL_94;
    }

    v91 = v90;
    v135 = v28;
    v137 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v91 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_109:
    swift_once();
LABEL_53:
    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.siriPhone);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v136 = v56;
      *v55 = v28[70];
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      v137 = 0;
      v138 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v136);

      *(v55 + 4) = v57;
      _os_log_impl(&dword_0, v53, v54, "%s call verb only to query SRR is enabled, build dummy reference", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);

      v28 = &unk_426000;
    }

    else
    {
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v139 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v127 = v139;
    v101 = v130;
    v102 = v117;
    (*(v116 + 8))(v130, v117);
    v44 = (v25)(v101, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v102);
    v124 = _swiftEmptyArrayStorage;
    v58 = &v151;
LABEL_58:
    *(v58 - 32) = _swiftEmptyArrayStorage;
  }

  v92 = 0;
  v93 = v137;
  v94 = v128 & 0xC000000000000001;
  v95 = v104;
  while (2)
  {
    if (v94)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v95)
      {
        goto LABEL_84;
      }

LABEL_86:
      UsoEntity_common_Person.getRedactCommonPerson()();
      UsoEntity_common_Person.toContactQuery()();
    }

    else
    {
      v96 = *(v128 + 8 * v92 + 32);

      if ((v95 & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_84:
      UsoEntity_common_Person.toContactQuery()();
    }

    v137 = v93;
    v97 = v93[2];
    if (v97 >= v93[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v93 = v137;
    }

    ++v92;
    v93[2] = v97 + 1;
    (*(v123 + 32))(v93 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v97, v126, v125);
    if (v91 != v92)
    {
      continue;
    }

    break;
  }

  v77 = v111;
  v28 = v135;
LABEL_94:
  (*(v109 + 8))(v77, v110);
  v73 = 0;
  v82 = v130;
LABEL_99:

  static PhoneCallNLv4Intent.appendNewContactQueries(contactQueries:persons:)();
  v71 = v99;

  (*(v116 + 8))(v82, v117);

  Signpost.OpenSignpost.end()();

  v70 = 0;
  v69 = 0;
  v75 = 0;
LABEL_100:
  v100 = v112;
  *v112 = v28;
  v100[1] = v70;
  v100[2] = v71;
  v100[3] = v69;
  v100[4] = v73;
  *(v100 + 40) = v75;
  return result;
}

double closure #1 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for MatchedResultsSetting();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*(v9 + 16))(v12, a3, v8);

  static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:)(v14, a2, v12, &v17);

  (*(v9 + 8))(v12, v8);
  v15 = v18[0];
  *a4 = v17;
  a4[1] = v15;
  result = *(v18 + 9);
  *(a4 + 25) = *(v18 + 9);
  return result;
}

void static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  v134 = type metadata accessor for ContactQuery();
  v7 = *(v134 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v134);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v123 = &v108 - v13;
  __chkstk_darwin(v12);
  v126 = &v108 - v14;
  v15 = type metadata accessor for PhoneRRTarget.Target(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = type metadata accessor for PhoneRRTarget(0);
  v19 = *(v131 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v131);
  v119 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v108 - v23;
  v136 = a2;
  v137 = a3;
  v25 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:), v135, a1);
  v130 = *(v25 + 16);
  if (!v130)
  {

    v107 = 0;
    v98 = 0;
    v104 = 0;
    v105 = 0;
    v106 = v111;
LABEL_93:
    *v106 = v107;
    *(v106 + 8) = v98;
    *(v106 + 16) = v104;
    *(v106 + 24) = v105;
    *(v106 + 32) = 0;
    *(v106 + 40) = 0;
    return;
  }

  v108 = 0;
  v27 = 0;
  v28 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v142 = _swiftEmptyArrayStorage;
  v143 = _swiftEmptyArrayStorage;
  v129 = v25 + v28;
  v118 = "common_PhoneCall";
  v141 = _swiftEmptyArrayStorage;
  v133 = (v7 + 32);
  v109 = 0x8000000000453AB0;
  v116 = (v7 + 16);
  v115 = v7 + 8;
  *&v26 = 136315138;
  v114 = v26;
  *&v26 = 136315394;
  v112 = v26;
  v29 = _swiftEmptyArrayStorage;
  v113 = _swiftEmptyArrayStorage;
  v117 = _swiftEmptyArrayStorage;
  v122 = v15;
  v121 = v18;
  v124 = v19;
  v125 = v24;
  v128 = v25;
  v110 = v11;
  while (2)
  {
    if (v27 < *(v25 + 16))
    {
      v30 = v27 + 1;
      outlined init with copy of PhoneRRTarget.Target(v129 + *(v19 + 72) * v27, v24);
      outlined init with copy of PhoneRRTarget.Target(v24, v18);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v132 = v30;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v127 = v29;
          v52 = *v18;
          v53 = dispatch thunk of UsoEntity_common_Group.name.getter();
          if (v54)
          {
            v55 = v53;
            v56 = v54;

            v57 = HIBYTE(v56) & 0xF;
            if ((v56 & 0x2000000000000000) == 0)
            {
              v57 = v55 & 0xFFFFFFFFFFFFLL;
            }

            if (v57)
            {
              goto LABEL_37;
            }
          }

          v58 = dispatch thunk of UsoEntity_common_Group.members.getter();
          if (!v58)
          {
LABEL_37:
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v65 = type metadata accessor for Logger();
            __swift_project_value_buffer(v65, static Logger.siriPhone);
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v140 = v69;
              *v68 = v114;
              if (one-time initialization token for logPrefix != -1)
              {
                swift_once();
              }

              v70 = static NLv4Transformer.logPrefix;
              v71 = unk_599B70;
              v138 = 0;
              v139 = 0xE000000000000000;

              DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v70, v71, 0xD000000000000049, v118 | 0x8000000000000000);

              v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v140);

              *(v68 + 4) = v72;
              _os_log_impl(&dword_0, v66, v67, "%s referenceResolution resolved to a named common_Group", v68, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v69);

              v18 = v121;
              v19 = v124;
            }

            else
            {
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = v125;
            if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v113 = v141;
          }

          else
          {
            v59 = v58;
            v120 = v52;
            v60 = _swiftEmptyArrayStorage;
            v138 = _swiftEmptyArrayStorage;
            v61 = specialized Array.count.getter(v58);
            v62 = 0;
            while (v61 != v62)
            {
              if ((v59 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v62 >= *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_95;
                }

                v63 = *(v59 + 8 * v62 + 32);
              }

              v64 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              dispatch thunk of CodeGenListEntry.entry.getter();

              ++v62;
              if (v140)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v138 & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v60 = v138;
                v62 = v64;
              }
            }

            v74 = specialized Array.count.getter(v60);
            if (v74)
            {
              v75 = v74;
              v138 = _swiftEmptyArrayStorage;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v76 = v110;
              if (v75 < 0)
              {
                goto LABEL_97;
              }

              v77 = 0;
              v78 = v138;
              do
              {
                if ((v60 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v79 = *(v60 + 8 * v77 + 32);
                }

                UsoEntity_common_Agent.toContactQuery()();

                v138 = v78;
                v80 = v76;
                v81 = v78[2];
                if (v81 >= v78[3] >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v78 = v138;
                }

                ++v77;
                v78[2] = v81 + 1;
                (*(v7 + 32))(v78 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v81, v80, v134);
                v76 = v80;
              }

              while (v75 != v77);
            }

            else
            {

              v78 = _swiftEmptyArrayStorage;
            }

            v18 = v121;
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v82 = type metadata accessor for Logger();
            __swift_project_value_buffer(v82, static Logger.siriPhone);
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v140 = v86;
              *v85 = v114;
              if (one-time initialization token for logPrefix != -1)
              {
                swift_once();
              }

              v87 = static NLv4Transformer.logPrefix;
              v88 = unk_599B70;
              v138 = 0;
              v139 = 0xE000000000000000;

              DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v87, v88, 0xD000000000000049, v118 | 0x8000000000000000);

              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v140);

              *(v85 + 4) = v89;
              _os_log_impl(&dword_0, v83, v84, "%s referenceResolution resolved to an unnamed common_Group", v85, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v86);

              v18 = v121;
            }

            else
            {
            }

            specialized Array.append<A>(contentsOf:)(v78);

            v19 = v124;
            v24 = v125;
          }

LABEL_78:
          v73 = v127;
LABEL_79:
          if (v24[*(v131 + 20)] == 3)
          {
            v95 = 2;
          }

          else
          {
            v95 = v24[*(v131 + 20)];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 16) + 1, 1, v73);
            v73 = v99;
          }

          v97 = *(v73 + 16);
          v96 = *(v73 + 24);
          v98 = v73;
          if (v97 >= v96 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96 > 1, v97 + 1, 1, v73);
            v98 = v100;
          }

          outlined destroy of TransformerInput(v24, type metadata accessor for PhoneRRTarget);
          v98[2] = v97 + 1;
          v29 = v98;
          *(v98 + v97 + 32) = v95;
          v27 = v132;
          v25 = v128;
          if (v132 != v130)
          {
            continue;
          }

          v104 = v142;
          if (!*(v142 + 2))
          {

            v104 = 0;
          }

          v105 = v113;
          if (!specialized Array.count.getter(v113))
          {

            v105 = 0;
          }

          v106 = v111;
          v107 = v117;
          break;
        case 2:
          v127 = v29;
          v120 = *v133;
          v120(v126, v18, v134);
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.siriPhone);
          v35 = v119;
          outlined init with copy of PhoneRRTarget.Target(v24, v119);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            *v38 = v112;
            if (one-time initialization token for logPrefix != -1)
            {
              swift_once();
            }

            v40 = static NLv4Transformer.logPrefix;
            v39 = unk_599B70;
            v138 = 0;
            v139 = 0xE000000000000000;

            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v40, v39, 0xD000000000000049, v118 | 0x8000000000000000);

            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v140);

            *(v38 + 4) = v41;
            *(v38 + 12) = 2080;
            v42 = 0xEB00000000737365;
            v43 = 0x6E69737542727273;
            switch(*(v119 + *(v131 + 20)))
            {
              case 1:
                v43 = 0xD000000000000012;
                v42 = v109;
                break;
              case 2:
                v43 = 0x54746C7561666564;
                v42 = 0xED00007465677261;
                break;
              case 3:
                v42 = 0xE600000000000000;
                v43 = 0x6C616D726F6ELL;
                break;
              default:
                break;
            }

            outlined destroy of TransformerInput(v119, type metadata accessor for PhoneRRTarget);
            v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v140);

            *(v38 + 14) = v90;
            _os_log_impl(&dword_0, v36, v37, "%s referenceResolution resolved to a contact query with contact source: %s", v38, 0x16u);
            swift_arrayDestroy();

            v18 = v121;
            v24 = v125;
          }

          else
          {

            outlined destroy of TransformerInput(v35, type metadata accessor for PhoneRRTarget);
          }

          (*v116)(v123, v126, v134);
          v91 = v142;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v124;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v101 = *(v91 + 2);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v91 = v102;
          }

          v93 = *(v91 + 2);
          if (v93 >= *(v91 + 3) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v91 = v103;
          }

          v94 = v134;
          (*(v7 + 8))(v126, v134);
          *(v91 + 2) = v93 + 1;
          v120(&v91[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v93], v123, v94);
          v142 = v91;
          goto LABEL_78;
        case 3:
          v32 = v29;
          outlined destroy of TransformerInput(v18, type metadata accessor for PhoneRRTarget.Target);
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          __swift_project_value_buffer(v44, static Logger.siriPhone);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v140 = v48;
            *v47 = v114;
            if (one-time initialization token for logPrefix != -1)
            {
              swift_once();
            }

            v49 = static NLv4Transformer.logPrefix;
            v50 = unk_599B70;
            v138 = 0;
            v139 = 0xE000000000000000;

            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v49, v50, 0xD000000000000049, v118 | 0x8000000000000000);

            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v140);

            *(v47 + 4) = v51;
            _os_log_impl(&dword_0, v45, v46, "%s resolveEntities can't resolve apps", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);

            v18 = v121;
            v19 = v124;
          }

          else
          {
          }

          v24 = v125;
          goto LABEL_46;
        default:
          v32 = v29;
          v33 = *v18;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v143 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v143 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v117 = v143;
LABEL_46:
          v73 = v32;
          goto LABEL_79;
      }

      goto LABEL_93;
    }

    break;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t closure #3 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMR);
  v7 = Transformer.transform.getter();
  v10 = v6;
  v7(&v9, &v10);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v9;
  }

  return result;
}

uint64_t closure #5 in static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMR);
  v5 = Transformer.transform.getter();
  v8 = v4;
  v5(&v7, &v8);

  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t closure #1 in static Transformer<>.transformer(referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, _OWORD *a5@<X8>)
{
  v17 = a4;
  v8 = *a1;
  static Signpost.begin(_:)();
  v9 = UsoTask.convertToCommonPhoneCallEntity()();
  if (v5)
  {
    Signpost.OpenSignpost.end()();
  }

  else
  {
    if (!v9 || (, v10 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter(), , !v10))
    {

      v10 = _swiftEmptyArrayStorage;
    }

    static SiriKitEventSender.current.getter();
    static Transformer<>.getTargetContactsListFromRecipients(recipients:referenceResolver:phoneCallVerb:featureManager:isRedirectBusinessCall:siriKitEventSender:)(v10, a2, a3, v17 & 1, v14, &v15);
    __swift_destroy_boxed_opaque_existential_1(v14);

    v11 = v16[0];
    *a5 = v15;
    a5[1] = v11;
    *(a5 + 25) = *(v16 + 9);
    Signpost.OpenSignpost.end()();
  }
}

uint64_t static Transformer<>.isCallingLastNumberUserCalled(callTask:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v26 - v6;
  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  if (!v28)
  {
    goto LABEL_13;
  }

  v8 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

  if (!v8)
  {
    goto LABEL_13;
  }

  if (!specialized Array.count.getter(v8))
  {
    goto LABEL_12;
  }

  v9 = v8 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v10 = *(v8 + 32);
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (v27)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v28)
  {
LABEL_12:

LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology025UsoEntity_applePhoneCall_iJ9AttributeC13DefinedValuesOSgGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology025UsoEntity_applePhoneCall_iJ9AttributeC13DefinedValuesOSgGMR);
  v11 = *(v1 + 72);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_424FD0;
  dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
  v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriOntology025UsoEntity_applePhoneCall_jK9AttributeC13DefinedValuesOSg_Tt0g5(v13);
  v28 = v14;
  if (specialized Array.count.getter(v8) <= 1)
  {

LABEL_22:
    v21 = 0;
    goto LABEL_24;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v9 == 0, v8);
  if (v9)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(v8 + 40);
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (v26[1])
  {
    CodeGenBase.entity.getter();
  }

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v27)
  {
    goto LABEL_22;
  }

  dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
  specialized Set._Variant.insert(_:)(v7, v5);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v14 = v28;
  v18 = enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesLast(_:);
  v19 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v20 = *(*(v19 - 8) + 104);
  v20(v7, v18, v19);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v19);
  LOBYTE(v18) = specialized Set.contains(_:)(v7, v14);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  if (v18)
  {
    v20(v7, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesOutgoing(_:), v19);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v19);
    v21 = specialized Set.contains(_:)(v7, v14);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  }

  else
  {

    v21 = 0;
  }

LABEL_24:
  if (v14[2] == 1)
  {
    v22 = enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesLast(_:);
    v23 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
    v24 = *(*(v23 - 8) + 104);
    v24(v7, v22, v23);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v23);
    LOBYTE(v22) = specialized Set.contains(_:)(v7, v14);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (v22)
    {

      v25 = 1;
    }

    else
    {
      v24(v7, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesRecent(_:), v23);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v23);
      v25 = specialized Set.contains(_:)(v7, v14);

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    }
  }

  else
  {

    v25 = 0;
  }

  v15 = v21 | v25;
  return v15 & 1;
}

uint64_t static Transformer<>.overrideVerbForApp(originalVerb:usoApp:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    UsoEntity_common_App.applicationId.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_424FF0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x80000000004574F0;
      if (one-time initialization token for macFaceTimeBundleId != -1)
      {
        swift_once();
      }

      v8 = *algn_599C28;
      *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
      *(inited + 56) = v8;

      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
      v10 = specialized Set.contains(_:)(v5, v6, v9);

      if (v10)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.siriPhone);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v14 = 136315394;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v20);

          *(v14 + 4) = v15;
          *(v14 + 12) = 2080;
          v16 = PhoneCallVerb.rawValue.getter(a1);
          v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

          *(v14 + 14) = v18;
          _os_log_impl(&dword_0, v12, v13, "%s overriding verb from .%s to .facetime because user specified FaceTime app", v14, 0x16u);
          a1 = 2;
          swift_arrayDestroy();
        }

        else
        {

          return 2;
        }
      }
    }
  }

  return a1;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = *a1;
  dispatch thunk of UsoEntity_common_Agent.name.getter();
  if (v13)
  {
  }

  else
  {
    result = dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter();
    if (!result)
    {
      v26 = 0;
      goto LABEL_15;
    }
  }

  v15 = dispatch thunk of UsoEntity_common_Agent.name.getter();
  v17 = v16;
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMd, &_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMR);
  __swift_project_value_buffer(v18, static Transformer<>.transformer);
  v19 = Transformer.transform.getter();
  v30[0] = v15;
  v30[1] = v17;
  v19(v30);
  if (v2)
  {
  }

  v20 = objc_allocWithZone(INPersonHandle);
  v21 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
  v22 = dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter();
  v29 = a2;
  if (v22)
  {
    v23 = v22;
    if (one-time initialization token for transfomer != -1)
    {
      swift_once();
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMR);
    __swift_project_value_buffer(v24, static Transformer<>.transfomer);
    v25 = Transformer.transform.getter();
    v30[0] = v23;

    v25(&v31, v30);

    v21 = v31;
  }

  outlined init with copy of ButtonConfigurationModel?(v11, v9, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v27 = objc_allocWithZone(INPerson);
  v26 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v21, v9, v15, v17, 0, 0, 0, 0, 0, 0);
  result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  a2 = v29;
LABEL_15:
  *a2 = v26;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v63 - v7;
  v80 = type metadata accessor for UtteranceAlignment();
  v68 = *(v80 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v80);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UsoIdentifier();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  static Signpost.begin(_:)();
  v78 = v18;
  v79 = v17;
  v20 = v19;
  v77 = v21;
  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v81)
  {
    v73 = v20;
    v74 = a2;
    v76 = v2;
    v22 = CodeGenBase.entity.getter();

    v23 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = UsoEntityBuilder_common_PhoneCall.init()();
    v27 = type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = UsoEntityBuilder_common_PhoneNumber.init()();
    v72 = v22;
    static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:)();
    v31 = type metadata accessor for UsoEntityBuilder_common_Person();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = UsoEntityBuilder_common_Person.init()();

    dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();
    v71 = v30;

    v70 = v26;
    dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();
    v69 = v34;

    v35 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v75 = UsoTaskBuilder_call_common_PhoneCall.init()();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v81)
    {
      v65 = v16;
      v38 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();

      v39 = *(v38 + 16);
      if (v39)
      {
        v64 = v11;
        v66 = v8;
        v40 = v67 + 16;
        v41 = *(v67 + 16);
        v42 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v67 = v38;
        v43 = v38 + v42;
        v44 = *(v40 + 56);
        v45 = (v40 - 8);
        do
        {
          v46 = v12;
          v47 = v12;
          v48 = v40;
          v41(v15, v43, v46);
          dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
          (*v45)(v15, v47);
          v40 = v48;
          v12 = v47;
          v43 += v44;
          --v39;
        }

        while (v39);

        a2 = v74;
        v8 = v66;
        v11 = v64;
      }

      else
      {

        a2 = v74;
      }
    }

    else
    {
      a2 = v74;
    }

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v81)
    {
      v50 = dispatch thunk of CodeGenBase.utteranceAlignments.getter();

      v51 = *(v50 + 16);
      if (v51)
      {
        v66 = v8;
        v53 = v68 + 16;
        v52 = *(v68 + 16);
        v54 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v68 = v50;
        v55 = v50 + v54;
        v56 = *(v53 + 56);
        v57 = v80;
        do
        {
          v52(v11, v55, v57);
          dispatch thunk of UsoBuilder.addUtteranceAlignment(utteranceAlignment:)();
          v57 = v80;
          (*(v53 - 8))(v11, v80);
          v55 += v56;
          --v51;
        }

        while (v51);

        a2 = v74;
        v8 = v66;
      }

      else
      {
      }
    }

    v58 = v75;
    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_426260;
    *(v59 + 32) = v58;
    v60 = type metadata accessor for UsoBuilderOptions();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v60);

    static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
    v61 = static UsoConversionUtils.convertGraphToTasks(graph:)();
    if (specialized Array.count.getter(v61))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v61 & 0xC000000000000001) == 0, v61);
      if ((v61 & 0xC000000000000001) != 0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v61 + 32);
      }
    }

    else
    {

      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  *a2 = v49;
  Signpost.OpenSignpost.end()();
}

uint64_t one-time initialization function for transfomer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transfomer);
  __swift_project_value_buffer(v0, static Transformer<>.transfomer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPersonHandle, INPersonHandle_ptr);
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transfomer@<X0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  static Signpost.begin(_:)();
  if (v3)
  {
    v4 = dispatch thunk of UsoEntity_common_ContactAddress.value.getter();
    v6 = v5;
    dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_6:
  v8 = String._bridgeToObjectiveC()();

  if (!v3)
  {
    v19 = 0;
    goto LABEL_30;
  }

  v29 = a2;
  CodeGenBase.entity.getter();
  v9 = UsoEntity.valueTypeString.getter();
  v11 = v10;

  if (v9 == 0xD000000000000010 && 0x800000000045CB80 == v11)
  {
    goto LABEL_18;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_19;
  }

  CodeGenBase.entity.getter();
  v14 = UsoEntity.valueTypeString.getter();
  v16 = v15;

  if (v14 == 0xD000000000000012 && 0x8000000000452970 == v16)
  {
LABEL_18:

    goto LABEL_19;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v19 = 2;
LABEL_20:
  CodeGenBase.entity.getter();
  v20 = UsoEntity.valueTypeString.getter();
  v22 = v21;

  if (v20 == 0xD000000000000012 && 0x8000000000452970 == v22)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      a2 = v29;
      goto LABEL_30;
    }
  }

  a2 = v29;
  if (v6)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    v6 = v26;
  }

LABEL_30:
  v27 = objc_allocWithZone(INPersonHandle);
  *a2 = @nonobjc INPersonHandle.init(value:type:label:)(v4, v6, v19, v8);
  Signpost.OpenSignpost.end()();
}

unint64_t SpecifyingContactAddress.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t UserDialogActParse.identifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t specialized UsoContactConvertible.isNameLikelyNonBusiness()()
{
  v1 = type metadata accessor for IndexSet.RangeView();
  v159 = *(v1 - 8);
  v2 = *(v159 + 64);
  __chkstk_darwin(v1);
  v158 = &v141[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v157 = *(v4 - 8);
  v5 = *(v157 + 64);
  __chkstk_darwin(v4);
  v163 = &v141[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  v7 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v9 = &v141[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v168 = &v141[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v170 = &v141[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v166 = &v141[-v18];
  __chkstk_darwin(v17);
  v175 = &v141[-v19];
  v20 = type metadata accessor for SpanProperty();
  v21 = *(v20 - 8);
  v173 = v20;
  v174 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v162 = &v141[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v164 = &v141[-v26];
  __chkstk_darwin(v25);
  v167 = &v141[-v27];
  v177 = type metadata accessor for UsoEntitySpan();
  v172 = *(v177 - 8);
  v28 = *(v172 + 64);
  __chkstk_darwin(v177);
  v30 = &v141[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = type metadata accessor for IndexSet();
  v160 = *(v161 - 8);
  v31 = *(v160 + 64);
  __chkstk_darwin(v161);
  v165 = &v141[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v37 = &v141[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v39 = &v141[-v38];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18UtteranceAlignmentVSgMd, &_s12SiriOntology18UtteranceAlignmentVSgMR);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v141[-v42];
  v176 = type metadata accessor for UtteranceAlignment();
  v171 = *(v176 - 8);
  v44 = *(v171 + 64);
  __chkstk_darwin(v176);
  v46 = &v141[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v183 = v0;
  v47 = dispatch thunk of UsoEntity_common_Person.name.getter();
  if (!v48)
  {
    goto LABEL_9;
  }

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

LABEL_9:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.siriPhone);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v182 = v57;
      *v56 = 136315138;
      v178 = 0;
      v179 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of specialized UsoContactConvertible.isNameLikelyNonBusiness(), 0xD000000000000019, 0x800000000045CCA0);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, &v182);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_0, v54, v55, "%s -  Name is nil or empty, returning false", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    return 0;
  }

  v155 = v47;
  v156 = v48;
  v50 = specialized UsoContactConvertible.nameSpans.getter()[2];

  if (!v50)
  {

    return 0;
  }

  v51 = specialized UsoContactConvertible.utteranceAlignment.getter();
  specialized Collection.first.getter(v51);

  v52 = v176;
  if (__swift_getEnumTagSinglePayload(v43, 1, v176) == 1)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s12SiriOntology18UtteranceAlignmentVSgMd, &_s12SiriOntology18UtteranceAlignmentVSgMR);
    return 0;
  }

  v146 = v1;
  v61 = v171;
  (*(v171 + 32))(v46, v43, v52);
  if (specialized UsoContactConvertible.hasFullBusinessNameProperty.getter())
  {

    (*(v61 + 8))(v46, v52);
    return 0;
  }

  v62 = UtteranceAlignment.spans.getter();
  specialized Collection.first.getter(v62);

  v63 = type metadata accessor for UtteranceSpan();
  if (__swift_getEnumTagSinglePayload(v39, 1, v63) == 1)
  {
LABEL_22:

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
    (*(v171 + 8))(v46, v176);
    return 0;
  }

  v64 = UtteranceSpan.startIndex.getter();
  v65 = *(v63 - 8);
  v66 = *(v65 + 8);
  v67 = v39;
  v68 = v66;
  v154 = v65 + 8;
  v66(v67, v63);
  v69 = UtteranceAlignment.spans.getter();
  specialized Collection.first.getter(v69);

  if (__swift_getEnumTagSinglePayload(v37, 1, v63) == 1)
  {
    v39 = v37;
    goto LABEL_22;
  }

  v70 = UtteranceSpan.endIndex.getter();
  result = v68(v37, v63);
  if (v70 < v64)
  {
    goto LABEL_89;
  }

  v142 = v64;
  IndexSet.init(integersIn:)();
  result = specialized UsoContactConvertible.nameSpans.getter();
  v154 = result;
  v71 = *(result + 16);
  v143 = v46;
  v72 = v166;
  v151 = v71;
  if (!v71)
  {
LABEL_73:

    v116 = v158;
    v117 = IndexSet.rangeView.getter();
    __chkstk_darwin(v117);
    v118 = v156;
    *&v141[-80] = v155;
    *&v141[-72] = v118;
    *&v141[-64] = v142;
    *&v141[-56] = &type metadata for String;
    *&v141[-48] = &outlined read-only object #0 of specialized UsoContactConvertible.isNameLikelyNonBusiness();
    *&v141[-40] = 0;
    *&v141[-32] = 0;
    *&v141[-24] = v143;
    *&v141[-16] = &v183;
    v119 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation8IndexSetV9RangeViewV_SnySS0E0VGs5NeverOTg5(partial apply for specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness());
    (*(v159 + 8))(v116, v146);
    v120 = v119[2];
    if (v120)
    {
      v178 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v121 = v178;
      v177 = v119;
      v122 = v119 + 5;
      do
      {
        v123 = *(v122 - 1);
        v124 = *v122;
        v125 = String.subscript.getter();
        v127 = v126;
        v129 = v128;
        v131 = v130;
        v178 = v121;
        v132 = v121[2];
        if (v132 >= v121[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v121 = v178;
        }

        v122 += 2;
        v121[2] = v132 + 1;
        v133 = &v121[4 * v132];
        v133[4] = v125;
        v133[5] = v127;
        v133[6] = v129;
        v133[7] = v131;
        --v120;
      }

      while (v120);
    }

    else
    {

      v121 = _swiftEmptyArrayStorage;
    }

    v178 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v134 = Sequence<>.joined(separator:)();
    v136 = v135;

    v137 = HIBYTE(v136) & 0xF;
    v178 = v134;
    v179 = v136;
    if ((v136 & 0x2000000000000000) == 0)
    {
      v137 = v134 & 0xFFFFFFFFFFFFLL;
    }

    v180 = 0;
    v181 = v137;
    v138 = v171;
    do
    {
      v139 = String.Iterator.next()();
      v59 = v139.value._object == 0;
      if (!v139.value._object)
      {
        break;
      }

      v140 = Character.isWhitespace.getter();
    }

    while ((v140 & 1) != 0);

    (*(v160 + 8))(v165, v161);
    (*(v138 + 8))(v143, v176);
    return v59;
  }

  v73 = 0;
  v150 = v154 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
  v149 = v172 + 16;
  v153 = v174 + 16;
  v152 = v174 + 8;
  v148 = enum case for PayloadAttachmentInfo.AttachmentType.full(_:);
  v147 = (v157 + 104);
  v144 = (v157 + 32);
  v145 = (v157 + 8);
  v157 = v172 + 8;
  while (v73 < *(v154 + 16))
  {
    (*(v172 + 16))(v30, v150 + *(v172 + 72) * v73, v177);
    v74 = UsoEntitySpan.properties.getter();
    if (*(v74 + 16))
    {
      v75 = v173;
      v76 = v174;
      v77 = v167;
      (*(v174 + 16))(v167, v74 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), v173);

      v78 = SpanProperty.key.getter();
      v80 = v79;
      (*(v76 + 8))(v77, v75);
      if (v78 == 0x614E6E6F73726570 && v80 == 0xEA0000000000656DLL)
      {
        goto LABEL_50;
      }

      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v82)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v83 = UsoEntitySpan.properties.getter();
    if (*(v83 + 16))
    {
      v84 = v173;
      v85 = v174;
      v86 = v164;
      (*(v174 + 16))(v164, v83 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v173);

      v87 = SpanProperty.key.getter();
      v89 = v88;
      (*(v85 + 8))(v86, v84);
      if (v87 == 0x72506E6F73726570 && v89 == 0xEC00000078696665)
      {
        goto LABEL_50;
      }

      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v91)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v92 = UsoEntitySpan.properties.getter();
    if (*(v92 + 16))
    {
      v93 = v173;
      v94 = v174;
      v95 = v162;
      (*(v174 + 16))(v162, v92 + ((*(v94 + 80) + 32) & ~*(v94 + 80)), v173);

      v96 = SpanProperty.key.getter();
      v98 = v97;
      (*(v94 + 8))(v95, v93);
      if (v96 == 0x75536E6F73726570 && v98 == 0xEC00000078696666)
      {
        goto LABEL_50;
      }

      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v100)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v112 = UsoEntitySpan.label.getter();
    if (!v113)
    {
      goto LABEL_72;
    }

    if (v112 == 0x75466E6F73726570 && v113 == 0xEE00656D614E6C6CLL)
    {
LABEL_50:

      goto LABEL_51;
    }

    v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v115 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_51:
    v101 = v168;
    UsoEntitySpan.payloadAttachmentInfo.getter();
    v102 = v101;
    v103 = type metadata accessor for PayloadAttachmentInfo();
    if (__swift_getEnumTagSinglePayload(v102, 1, v103) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v102, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
      v104 = v175;
      __swift_storeEnumTagSinglePayload(v175, 1, 1, v4);
    }

    else
    {
      v104 = v175;
      PayloadAttachmentInfo.attachmentType.getter();
      (*(*(v103 - 8) + 8))(v102, v103);
    }

    v105 = v170;
    (*v147)(v72, v148, v4);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v4);
    v106 = *(v169 + 48);
    outlined init with copy of ButtonConfigurationModel?(v104, v9, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined init with copy of ButtonConfigurationModel?(v72, &v9[v106], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v104, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      if (__swift_getEnumTagSinglePayload(&v9[v106], 1, v4) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
LABEL_86:

        (*v157)(v30, v177);
        (*(v160 + 8))(v165, v161);
        (*(v171 + 8))(v143, v176);
        return 1;
      }

      goto LABEL_59;
    }

    outlined init with copy of ButtonConfigurationModel?(v9, v105, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (__swift_getEnumTagSinglePayload(&v9[v106], 1, v4) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v175, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      (*v145)(v105, v4);
LABEL_59:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
      goto LABEL_61;
    }

    v107 = v163;
    (*v144)(v163, &v9[v106], v4);
    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, &type metadata accessor for PayloadAttachmentInfo.AttachmentType);
    v108 = dispatch thunk of static Equatable.== infix(_:_:)();
    v109 = *v145;
    (*v145)(v107, v4);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v166, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v175, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v109(v105, v4);
    v72 = v166;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v108)
    {
      goto LABEL_86;
    }

LABEL_61:
    v110 = UsoEntitySpan.startIndex.getter();
    if ((v110 & 0x100000000) == 0)
    {
      v111 = v110;
      result = UsoEntitySpan.endIndex.getter();
      if ((result & 0x100000000) == 0)
      {
        if (result < v111)
        {
          goto LABEL_88;
        }

        IndexSet.remove(integersIn:)();
      }
    }

LABEL_72:
    ++v73;
    result = (*v157)(v30, v177);
    if (v151 == v73)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

BOOL closure #8 in implicit closure #7 in UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  CodeGenBase.entity.getter();
  v4 = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

  if (dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter() || dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter() && (v6 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v6))
  {

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

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
    v16 = v11;
    *v10 = 136315650;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v12 = static NLv4Transformer.logPrefix;
    v13 = unk_599B70;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v12, v13, 0xD000000000000041, 0x800000000045C960);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v4 & 1;
    *(v10 + 18) = 1024;
    *(v10 + 20) = v5;
    _os_log_impl(&dword_0, v8, v9, "%s hasReference=%{BOOL}d, hasQuantifier=%{BOOL}d.", v10, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return ((v4 | v5) & 1) == 0;
}

void UserDialogActParse.isPlayIt.getter()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_88();
  v1 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  OUTLINED_FUNCTION_12_5();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = v33 - v23;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_42_13();
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v34[3])
  {
    v26 = &_sypSgMd;
    v27 = &_sypSgMR;
    v28 = v34;
LABEL_19:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, v26, v27);
    goto LABEL_20;
  }

  type metadata accessor for UsoTask_play_common_Voicemail();
  OUTLINED_FUNCTION_31_15();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

    if (v34[0])
    {
      v33[0] = v4;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (v34[0] && (v25 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v25))
      {
        dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
      }

      (*(v33[0] + 104))(v24, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v1);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v1);
      v29 = *(v10 + 48);
      outlined init with copy of ButtonConfigurationModel?(v0, v15, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined init with copy of ButtonConfigurationModel?(v24, &v15[v29], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_1_0(v15);
      if (!v30)
      {
        outlined init with copy of ButtonConfigurationModel?(v15, v20, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        OUTLINED_FUNCTION_1_0(&v15[v29]);
        if (!v30)
        {
          v31 = v33[0];
          (*(v33[0] + 32))(v9, &v15[v29], v1);
          lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues);
          dispatch thunk of static Equatable.== infix(_:_:)();

          v32 = *(v31 + 8);
          v32(v9, v1);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          v32(v20, v1);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_77_1(v24);
        OUTLINED_FUNCTION_77_1(v0);
        (*(v33[0] + 8))(v20, v1);
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_77_1(v24);
      OUTLINED_FUNCTION_77_1(v0);
      OUTLINED_FUNCTION_1_0(&v15[v29]);
      if (!v30)
      {
LABEL_18:
        v26 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd;
        v27 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR;
        v28 = v15;
        goto LABEL_19;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    }

    else
    {
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_65();
}

PhoneCallFlowDelegatePlugin::UsoIdentifierNamespaceType_optional __swiftcall UsoIdentifierNamespaceType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespaceType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::UsoIdentifierNamespaceType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespaceType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UsoIdentifierNamespaceType_optional *a2@<X8>)
{
  result.value = UsoIdentifierNamespaceType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespaceType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = UsoIdentifierNamespaceType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierAppBundleType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::UsoIdentifierAppBundleType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierAppBundleType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UsoIdentifierAppBundleType_optional *a2@<X8>)
{
  result.value = UsoIdentifierAppBundleType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierAppBundleType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = UsoIdentifierAppBundleType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t UsoIdentifierAppBundleType.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  OUTLINED_FUNCTION_40_0();

  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::SpecifyingContactAddress_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SpecifyingContactAddress@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SpecifyingContactAddress_optional *a2@<X8>)
{
  result.value = SpecifyingContactAddress.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SpecifyingContactAddress()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SpecifyingContactAddress.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::EntitySpanPropertyKey_optional __swiftcall EntitySpanPropertyKey.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntitySpanPropertyKey.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t EntitySpanPropertyKey.rawValue.getter(char a1)
{
  result = 0x7373656E69737562;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_20_25();
      break;
    case 2:
      result = 0x72506E6F73726570;
      break;
    case 3:
      result = 0x75536E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::EntitySpanPropertyKey_optional protocol witness for RawRepresentable.init(rawValue:) in conformance EntitySpanPropertyKey@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::EntitySpanPropertyKey_optional *a2@<X8>)
{
  result.value = EntitySpanPropertyKey.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EntitySpanPropertyKey()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = EntitySpanPropertyKey.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL EntitySpanLabel.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntitySpanLabel.init(rawValue:), v2);
  OUTLINED_FUNCTION_40_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance EntitySpanLabel@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = EntitySpanLabel.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t static Transformer<>.makeCallReferenceUsoEntity(contacts:referenceResolver:siriKitEventSender:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a3;
  v57 = a4;
  v6 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v61 = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = UsoEntityBuilder_common_ReferenceType.init()();
  (*(v7 + 104))(v10, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v6);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  (*(v7 + 8))(v10, v6);
  v16 = type metadata accessor for UsoEntityBuilder_common_Person();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = UsoEntityBuilder_common_Person.init()();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();
  v56 = v15;

  v55 = v19;
  if (static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)())
  {
    v20 = *(a1 + 16);
    if (v20)
    {
      v53 = a2;
      v21 = a1 + 32;

      while (1)
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
        __swift_project_boxed_opaque_existential_1(v62, v63);
        v22.value = SiriPhoneContact.getContactReference()().value;
        if (v22.value != PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
        {
          PhoneCallContactReference.rawValue.getter(v22.value);
          if (v29 == 6647407 && v28 == 0xE300000000000000)
          {
LABEL_18:

LABEL_19:

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v11 = v61;
            goto LABEL_22;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            goto LABEL_19;
          }
        }

        __swift_project_boxed_opaque_existential_1(v62, v63);
        v23.value = SiriPhoneContact.getContactReference()().value;
        if (v23.value != PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
        {
          PhoneCallContactReference.rawValue.getter(v23.value);
          if (v25 == 2037277037 && v24 == 0xE400000000000000)
          {
            goto LABEL_18;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        __swift_destroy_boxed_opaque_existential_1(v62);
        v21 += 40;
        if (!--v20)
        {

          a2 = v53;
          break;
        }
      }
    }
  }

  if (specialized Array.count.getter(v11))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
    __chkstk_darwin(v33);
    *(&v52 - 2) = &v61;
    *(&v52 - 1) = a2;
    static SiriKitEventSender.current.getter();
    _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZAA14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVSg_Tt4g5();
    v34 = v62[0];
    v35 = v62[1];
    v36 = v62[2];
    v37 = v63;
    v38 = v64;
    v39 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v59);
    if (v34)
    {
      v66 = v34;

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v66, &_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
      v67 = v35;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v67, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);
      v68 = v36;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v68, &_sSay13SiriInference12ContactQueryVGSgMd, &_sSay13SiriInference12ContactQueryVGSgMR);
      v69[0] = v37;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v69, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v59 = v38;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v59, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
      v40 = v54[3];
      v53 = v54[4];
      v54 = __swift_project_boxed_opaque_existential_1(v54, v40);
      type metadata accessor for SiriKitEvent();
      v58 = 0;
      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      v41 = v39;
      dispatch thunk of SiriKitEventSending.send(_:)();

      goto LABEL_35;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.siriPhone);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v69[0] = v46;
    *v45 = 136315138;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v47 = static NLv4Transformer.logPrefix;
    v48 = unk_599B70;
    v59 = 0;
    v60 = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v48, 0xD00000000000004ALL, 0x800000000045CE10);

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v69);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_0, v43, v44, "%s makeCallReferenceUsoEntity: no person resolved", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v41 = 0;
LABEL_35:

  v51 = v57;
  *v57 = v34;
  v51[1] = v35;
  v51[2] = v36;
  v51[3] = v37;
  v51[4] = v38;
  *(v51 + 40) = v41;
  return result;
}

double closure #1 in static Transformer<>.makeCallReferenceUsoEntity(contacts:referenceResolver:siriKitEventSender:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for MatchedResultsSetting();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 104))(v10, enum case for MatchedResultsSetting.defaultMatching(_:), v6);

  static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:)(v12, a2, v10, &v15);

  (*(v7 + 8))(v10, v6);
  v13 = v16[0];
  *a3 = v15;
  a3[1] = v13;
  result = *(v16 + 9);
  *(a3 + 25) = *(v16 + 9);
  return result;
}

id closure #1 in static Transformer<>.transformer(sharedGlobals:app:sirikitIntent:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v60 = type metadata accessor for Locale();
  v9 = OUTLINED_FUNCTION_7(v60);
  v58 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = *(v16 + 24);
  v18 = OUTLINED_FUNCTION_40_0();
  v20 = v19(v18, v16);
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_11_0();
  v24(v23, v21);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();

  static SiriKitEventSender.current.getter();
  static Transformer<>.makeCallReferenceUsoEntity(contacts:referenceResolver:siriKitEventSender:)(v20, &v65, v64, v68);

  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(&v65);
  if (v68[0])
  {
    v62 = a3;
    v26 = v68[1];
    v25 = v69;
    v28 = v70;
    v27 = v71;
    if (v69 && *(v69 + 16))
    {
      v72 = v68[0];

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v72, &_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
      v73 = v26;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v73, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);

      v74[0] = v28;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v74, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v75 = v27;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v75, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_21_21();
        v32 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v56 = swift_slowAlloc();
        v64[0] = v56;
        *v32 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        v33 = unk_599B70;
        OUTLINED_FUNCTION_71_3();
        OUTLINED_FUNCTION_46_13();

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v64);
        OUTLINED_FUNCTION_34_0();

        *(v32 + 4) = v33;
        *(v32 + 12) = 2080;
        type metadata accessor for ContactQuery();
        v34 = Array.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v64);
        OUTLINED_FUNCTION_34_0();

        *(v32 + 14) = v33;
        _os_log_impl(&dword_0, v30, v31, "%s SRR returned contact queries: %s", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      v36 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v37 = PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      v38 = a2[3];
      v39 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v38);
      (*(v39 + 8))(&v65, v38, v39);
      __swift_project_boxed_opaque_existential_1(&v65, v67);
      dispatch thunk of DeviceState.siriLocale.getter();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v40 = swift_allocObject();
      v41 = a1[3];
      v42 = a1[4];
      v43 = __swift_project_boxed_opaque_existential_1(a1, v41);
      LOBYTE(v53) = 1;
      a3 = v62;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v62, v25, v37, a4, v15, v43, a2, 0, v53, v64, v40, v41, v42, v54, v55, v56, a4, v58, v60, v62, v5);

      __swift_destroy_boxed_opaque_existential_1(v64);
      (*(v59 + 8))(v15, v61);
      __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    else if (specialized Array.count.getter(v68[0]))
    {
      v74[0] = v26;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v74, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);

      v75 = v28;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v75, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v64[0] = v27;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.siriPhone);
      OUTLINED_FUNCTION_11_0();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_21_21();
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v73 = swift_slowAlloc();
        *v47 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        v48 = unk_599B70;
        OUTLINED_FUNCTION_71_3();
        OUTLINED_FUNCTION_46_13();

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v73);
        OUTLINED_FUNCTION_34_0();

        *(v47 + 4) = v48;
        *(v47 + 12) = 2080;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v49 = Array.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v73);
        OUTLINED_FUNCTION_34_0();

        *(v47 + 14) = v48;
        _os_log_impl(&dword_0, v45, v46, "%s SRR returned updated contacts: %s", v47, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {
      }

      a3 = v62;
      type metadata accessor for ContactResolution();
      OUTLINED_FUNCTION_11_0();
      v51 = static ContactResolution.dedupeContacts(contacts:)();

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
      v65 = v51;
      NSObject.update(with:at:)(&v65, 0x73746361746E6F63, 0xE800000000000000);
      __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    else
    {

      v75 = v26;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v75, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);

      v64[0] = v28;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v65 = v27;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v65, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
    }
  }

  *a5 = a3;
  return a3;
}

void *specialized UsoContactConvertible.utteranceAlignment.getter()
{
  result = dispatch thunk of CodeGenBase.getUtteranceAlignmentsHelper(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t specialized UsoContactConvertible.hasFullBusinessNameProperty.getter()
{
  v0 = type metadata accessor for UsoEntitySpan();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = specialized UsoContactConvertible.nameSpans.getter();
  v6 = 0;
  v7 = v5[2];
  v12 = v1 + 16;
  v8 = (v1 + 8);
  while (1)
  {
    v9 = v6;
    if (v7 == v6)
    {
LABEL_5:

      return v7 != v9;
    }

    if (v6 >= v5[2])
    {
      break;
    }

    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v0);
    v10 = closure #1 in UsoContactConvertible.hasFullBusinessNameProperty.getter(v4);
    ++v6;
    (*v8)(v4, v0);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  __break(1u);

  result = (*v8)(v4, v0);
  __break(1u);
  return result;
}

unint64_t specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11;
  v56 = a7;
  v57 = a2;
  v54 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v49[-v19];
  v21 = type metadata accessor for UtteranceAlignment();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v49[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = a1;
  if (__OFSUB__(a1, a5))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v26;
  v52 = v20;
  v53 = v17;
  v20 = v24;
  v58 = v11;
  result = String.index(_:offsetBy:limitedBy:)();
  a1 = v22;
  if (v28)
  {
LABEL_5:
    a4 = a10;
    v13 = a11;
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_6:
      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.siriPhone);
      v32 = v20;
      (*(a1 + 16))(v12, a4, v20);

      v33 = v56;

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v61 = v51;
        *v36 = 136315906;
        v59 = 0;
        v60 = 0xE000000000000000;

        v50 = v35;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v54, v33, 0xD000000000000019, 0x800000000045CCA0);

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v61);

        *(v36 + 4) = v37;
        *(v36 + 12) = 2080;
        v38 = specialized Range.description.getter();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v61);

        *(v36 + 14) = v40;
        *(v36 + 22) = 2080;
        v41 = UtteranceAlignment.spans.getter();
        specialized Collection.first.getter(v41);

        v42 = String.init<A>(describing:)();
        v44 = v43;
        (*(a1 + 8))(v12, v32);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v61);

        *(v36 + 24) = v45;
        *(v36 + 32) = 2080;
        v59 = v13;
        type metadata accessor for UsoEntity_common_Person();

        v46 = String.init<A>(describing:)();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v61);

        *(v36 + 34) = v48;
        _os_log_impl(&dword_0, v34, v50, "%s- Unexpected: UtteranceAlignment range is greater than name - Current Range: %s -- Alignment Span: %s -- Self: %s", v36, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        (*(a1 + 8))(v12, v32);
      }

      return 15;
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  if (__OFSUB__(v57, a5))
  {
    __break(1u);
  }

  else
  {
    v29 = result;
    result = String.index(_:offsetBy:limitedBy:)();
    if (v30)
    {
      goto LABEL_5;
    }

    if (result >> 14 >= v29 >> 14)
    {
      return v29;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = a2(0);
  v9[3] = v6;
  v9[4] = lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(a3, a4);
  __swift_allocate_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_40(v6);
  (*(v7 + 32))();
  type metadata accessor for SiriNLUTypesPrintUtils();
  static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
  String.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return OUTLINED_FUNCTION_19_0();
}

unint64_t specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, uint64_t a10, uint64_t *a11)
{
  result = specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness()(*a1, a1[1], a2, a3, a4, a5, a6, a7, a8, a10, *a11);
  if (!v11)
  {
    *a9 = result;
    a9[1] = v14;
  }

  return result;
}

uint64_t specialized NLv4Transformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v20 - v15;
  v21[3] = a4;
  v21[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_40(a4);
  (*(v17 + 32))();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  outlined init with take of SPHConversation(v20, v18 + 24);
  type metadata accessor for TransformerInput(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  Transformer.init(transform:)();
  __swift_destroy_boxed_opaque_existential_1(v21);
  (*(v12 + 32))(a3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer, v16, v9);
  return a3;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType;
  if (!lazy protocol witness table cache variable for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpecifyingContactAddress and conformance SpecifyingContactAddress()
{
  result = lazy protocol witness table cache variable for type SpecifyingContactAddress and conformance SpecifyingContactAddress;
  if (!lazy protocol witness table cache variable for type SpecifyingContactAddress and conformance SpecifyingContactAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpecifyingContactAddress and conformance SpecifyingContactAddress);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey()
{
  result = lazy protocol witness table cache variable for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey;
  if (!lazy protocol witness table cache variable for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntitySpanLabel and conformance EntitySpanLabel()
{
  result = lazy protocol witness table cache variable for type EntitySpanLabel and conformance EntitySpanLabel;
  if (!lazy protocol witness table cache variable for type EntitySpanLabel and conformance EntitySpanLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntitySpanLabel and conformance EntitySpanLabel);
  }

  return result;
}

void type metadata completion function for NLv4Transformer()
{
  type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?>()
{
  if (!lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?>)
  {
    type metadata accessor for TransformerInput(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v0 = type metadata accessor for Transformer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?>);
    }
  }
}

uint64_t getEnumTagSinglePayload for UserDialogActParse(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDialogActParse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoIdentifierNamespaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UsoIdentifierNamespaceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UsoIdentifierAppBundleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitySpanPropertyKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitySpanLabel(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void type metadata completion function for TransformerInput()
{
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhoneCallNLIntent?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for PhoneCallNLIntent?()
{
  if (!lazy cache variable for type metadata for PhoneCallNLIntent?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PhoneCallNLIntent?);
    }
  }
}

uint64_t outlined destroy of TransformerInput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult()
{
  if (!lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult)
  {
    v0 = type metadata accessor for Transformer<>.SrrOrdinalResolvedResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata instantiation function for Transformer<>.SrrOrdinalResolvedResult()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0aB3App_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Transformer<>.SrrOrdinalResolvedResult(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Transformer<>.SrrOrdinalResolvedResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetContacts(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetContacts(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_29_20(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Transformer.transform.getter();
}

uint64_t OUTLINED_FUNCTION_36_15()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 160));
}

double OUTLINED_FUNCTION_45_11(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_14()
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v1, v2, 0xD000000000000041, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_60_8()
{

  return specialized NLv4Transformer.init(referenceResolver:featureManager:)(v4, v0, v1, v2, v3);
}

void OUTLINED_FUNCTION_70_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_73_4(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v3 - 224) = v2;
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of ButtonConfigurationModel?(v4 + 200, v5 - 224, a3, a4);
}

uint64_t NLv4UpdateTransformer.transform(updateTask:)@<X0>(uint64_t *a1@<X8>)
{
  return NLv4UpdateTransformer.transform(updateTask:)(&dispatch thunk of UsoEntity_common_PhoneCall.participants.getter, &dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter, a1);
}

{
  return NLv4UpdateTransformer.transform(updateTask:)(&dispatch thunk of UsoEntity_common_Communication.participants.getter, &dispatch thunk of UsoEntity_common_Communication.recipients.getter, a1);
}

uint64_t NLv4UpdateTransformer.transform(updateTask:)@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v6 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  if (!v10 || (v7 = a1(v6), , !v7))
  {
    v8 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v10 && (v7 = a2(v8), , v7))
    {
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v7 = _swiftEmptyArrayStorage;
    }
  }

  NLv4UpdateTransformer.transform(agents:)(v7, a3);
}

double NLv4UpdateTransformer.transform(agents:)@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v135 = a2;
  v145 = type metadata accessor for ContactQuery();
  v141 = *(v145 - 8);
  v4 = *(v141 + 64);
  v5 = __chkstk_darwin(v145);
  v136 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v134 = &v131 - v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  v144 = *(v146 - 1);
  v8 = v144[8];
  v9 = __chkstk_darwin(v146);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v131 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v131 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v131 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = (&v131 - v22);
  __chkstk_darwin(v21);
  v25 = (&v131 - v24);
  v26 = NLv4UpdateTransformer.sortParticipants(agents:)(a1);
  v28 = v27;
  if (specialized Array.count.getter(v27))
  {
    v29 = v135;
    v11 = _swiftEmptyArrayStorage;

    if (one-time initialization token for siriPhone != -1)
    {
LABEL_83:
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#NLv4UpdateTransformer Found participants to remove", v33, 2u);
    }

    *(v29 + 24) = &type metadata for PhoneCallNLv4Intent;
    *(v29 + 32) = &protocol witness table for PhoneCallNLv4Intent;
    v34 = swift_allocObject();
    *v29 = v34;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0;
    *(v34 + 16) = v11;
    v35 = 16;
    v36 = v11;
    v37 = v11;
  }

  else
  {
    v137 = v2;
    v138 = v28;
    v139 = v11;
    v140 = v23;
    v132 = v17;
    v142 = v14;
    v148 = _swiftEmptyArrayStorage;
    v38 = specialized Array.count.getter(v26);
    v39 = 0;
    v29 = v26 & 0xC000000000000001;
    v133 = _swiftEmptyArrayStorage;
    while (v38 != v39)
    {
      if (v29)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_78;
        }

        v40 = *(v26 + 8 * v39 + 32);
      }

      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v11 = UsoEntity_common_Agent.asCommonGroup()();

      ++v39;
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v148 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v148 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v133 = v148;
        v39 = v41;
      }
    }

    v42 = specialized Array.count.getter(v26);
    v43 = 0;
    v143 = _swiftEmptyArrayStorage;
    while (v42 != v43)
    {
      if (v29)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_80;
        }

        v44 = *(v26 + 8 * v43 + 32);
      }

      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_79;
      }

      v46 = UsoEntity_common_Agent.asCommonPerson()();
      if (v46)
      {
        v11 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = v143[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v143 = v52;
        }

        v47 = v143[2];
        v48 = v47 + 1;
        if (v47 >= v143[3] >> 1)
        {
          v131 = v47 + 1;
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v48 = v131;
          v143 = v53;
        }

        v49 = v143;
        v143[2] = v48;
        v50 = &v49[2 * v47];
        v50[4] = v44;
        v50[5] = v11;
        v43 = v45;
      }

      else
      {

        ++v43;
      }
    }

    v29 = v143;
    v54 = v143[2];
    if (v54)
    {
      v148 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
      v55 = 0;
      v56 = v148;
      v57 = (v29 + 40);
      while (v55 < *(v29 + 16))
      {
        v59 = *(v57 - 1);
        v58 = *v57;
        v60 = *(v146 + 12);

        v61 = NLv4UpdateTransformer.mapEntityToContactAndQuery(referenceResolver:agent:person:)(v25 + v60, v137);

        *v25 = v61;
        v148 = v56;
        v63 = v56[2];
        v62 = v56[3];
        v11 = (v63 + 1);
        if (v63 >= v62 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1);
          v56 = v148;
        }

        ++v55;
        v56[2] = v11;
        outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v25, v56 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + v144[9] * v63);
        v57 += 2;
        v29 = v143;
        if (v54 == v55)
        {

          goto LABEL_39;
        }
      }

      goto LABEL_82;
    }

    v56 = _swiftEmptyArrayStorage;
LABEL_39:
    v29 = 0;
    v143 = (v141 + 8);
    v11 = v56[2];
    v138 = _swiftEmptyArrayStorage;
    v64 = v146;
LABEL_40:
    v65 = v144;
    v66 = v140;
    while (v11 != v29)
    {
      if (v29 >= v56[2])
      {
        goto LABEL_81;
      }

      v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v68 = v65[9];
      outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v56 + v67 + v68 * v29, v66);
      outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v66, v20);
      v69 = *v20;

      v70 = *(v64 + 12);
      if (one-time initialization token for emptyQuery != -1)
      {
        swift_once();
      }

      v71 = v145;
      __swift_project_value_buffer(v145, static ContactQuery.emptyQuery);
      if (static ContactQuery.== infix(_:_:)())
      {
        (*v143)(v20 + v70, v71);
      }

      else
      {
        if (one-time initialization token for emptyNLv4Query != -1)
        {
          swift_once();
        }

        v72 = v145;
        __swift_project_value_buffer(v145, static ContactQuery.emptyNLv4Query);
        v73 = static ContactQuery.== infix(_:_:)();
        (*v143)(v20 + v70, v72);
        v64 = v146;
        if ((v73 & 1) == 0)
        {
          outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v140, v132);
          v74 = v138;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v148 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1);
            v74 = v148;
          }

          v77 = v74[2];
          v76 = v74[3];
          v78 = (v77 + 1);
          v79 = v132;
          if (v77 >= v76 >> 1)
          {
            v138 = (v77 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v76 > 1, v77 + 1, 1);
            v78 = v138;
            v79 = v132;
            v74 = v148;
          }

          ++v29;
          v74[2] = v78;
          v138 = v74;
          outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v79, v74 + v67 + v77 * v68);
          goto LABEL_40;
        }
      }

      v66 = v140;
      outlined destroy of PhoneCallNLIntent?(v140, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
      ++v29;
      v65 = v144;
    }

    v80 = v138[2];
    if (v80)
    {
      v148 = _swiftEmptyArrayStorage;
      v81 = v138;
      specialized ContiguousArray.reserveCapacity(_:)();
      v82 = v81 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v83 = v65[9];
      v84 = v82;
      v140 = v80;
      v85 = v80;
      v86 = v145;
      v87 = v139;
      v88 = v143;
      do
      {
        v89 = v142;
        outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v84, v142);
        outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v89, v87);
        isa = v87->isa;
        (*v88)(v87 + *(v146 + 12), v86);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v91 = v83;
        v92 = v148[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v83 = v91;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v84 += v91;
        v85 = (v85 - 1);
      }

      while (v85);
      v144 = v148;
      v148 = _swiftEmptyArrayStorage;
      v93 = v140;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v94 = v148;
      v95 = (v141 + 32);
      v96 = v134;
      do
      {
        v97 = v142;
        outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v82, v142);
        v98 = v97;
        v99 = v139;
        outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v98, v139);
        v100 = v99->isa;

        v101 = *v95;
        (*v95)(v96, v99 + *(v146 + 12), v86);
        v148 = v94;
        v102 = v86;
        v103 = v94[2];
        if (v103 >= v94[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v96 = v134;
          v94 = v148;
        }

        v94[2] = v103 + 1;
        v101(v94 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v103, v96, v102);
        v82 += v91;
        v93 = (v93 - 1);
        v86 = v102;
      }

      while (v93);
      v146 = v94;

      v104 = v144;
    }

    else
    {

      v104 = _swiftEmptyArrayStorage;
      v146 = _swiftEmptyArrayStorage;
    }

    v105 = v135;
    v11 = _swiftEmptyArrayStorage;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    __swift_project_value_buffer(v106, static Logger.siriPhone);
    v107 = v146;

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v148 = v140;
      v142 = v110;
      *v110 = 136315138;
      v111 = v107[2];
      if (v111)
      {
        LODWORD(v138) = v109;
        v139 = v108;
        v144 = v104;
        v147 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v112 = v147;
        v113 = v107 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
        v114 = *(v141 + 16);
        v141 += 16;
        v115 = *(v141 + 56);
        do
        {
          v116 = v136;
          v117 = v145;
          v114(v136, v113, v145);
          v118 = ContactQuery.description.getter();
          v120 = v119;
          (*v143)(v116, v117);
          v147 = v112;
          v121 = v112[2];
          if (v121 >= v112[3] >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v112 = v147;
          }

          v112[2] = v121 + 1;
          v122 = &v112[2 * v121];
          v122[4] = v118;
          v122[5] = v120;
          v113 += v115;
          --v111;
        }

        while (v111);
        v105 = v135;
        v11 = _swiftEmptyArrayStorage;
        v108 = v139;
        LOBYTE(v109) = v138;
      }

      v123 = Array.description.getter();
      v125 = v124;

      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, &v148);

      v127 = v142;
      *(v142 + 1) = v126;
      _os_log_impl(&dword_0, v108, v109, "#NLv4UpdateTransformer contactQueries: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v140);
    }

    specialized _arrayForceCast<A, B>(_:)();
    v36 = v128;

    v105[3] = &type metadata for PhoneCallNLv4Intent;
    v105[4] = &protocol witness table for PhoneCallNLv4Intent;
    v34 = swift_allocObject();
    *v105 = v34;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0;
    specialized _arrayForceCast<A, B>(_:)();
    v37 = v129;

    *(v34 + 16) = v146;
    v35 = 15;
  }

  *(v34 + 24) = v36;
  *(v34 + 72) = 2;
  *(v34 + 80) = 0;
  *&result = 84214276;
  *(v34 + 88) = 84214276;
  *(v34 + 92) = 777;
  *(v34 + 94) = 35;
  *(v34 + 95) = v35;
  *(v34 + 96) = 518;
  *(v34 + 104) = v37;
  *(v34 + 112) = v11;
  return result;
}

void *NLv4UpdateTransformer.sortParticipants(agents:)(unint64_t a1)
{
  v2 = type metadata accessor for ListOperators();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v42 = _swiftEmptyArrayStorage;
  v43 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:
    v31 = _swiftEmptyArrayStorage;
    return _swiftEmptyArrayStorage;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (result >= 1)
  {
    v10 = 0;
    v36 = a1 & 0xC000000000000001;
    v35 = enum case for ListOperators.addToSet(_:);
    v39 = (v3 + 8);
    v40 = (v3 + 104);
    v33 = enum case for ListOperators.removeFromSet(_:);
    v31 = _swiftEmptyArrayStorage;
    v32 = _swiftEmptyArrayStorage;
    v37 = result;
    v38 = a1;
    while (1)
    {
      if (v36)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      if (dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
      {
        v12 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = *v40;
      (*v40)(v8, v35, v2);
      v16 = ListOperators.rawValue.getter();
      v18 = v17;
      v19 = *v39;
      (*v39)(v8, v2);
      if (v14)
      {
        if (v16 == v12 && v14 == v18)
        {

LABEL_27:

          v29 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
          v27 = v37;
          a1 = v38;
          if (!v29)
          {
            goto LABEL_41;
          }

          dispatch thunk of CodeGenExpression.operand.getter();

          if (!v41)
          {
            goto LABEL_41;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_34;
          }

          goto LABEL_30;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      v22 = v34;
      v15(v34, v33, v2);
      v23 = ListOperators.rawValue.getter();
      v25 = v24;
      v19(v22, v2);
      if (v14)
      {
        v26 = v23 == v12 && v14 == v25;
        v27 = v37;
        if (v26)
        {

LABEL_36:
          if (!dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
          {
LABEL_42:

            a1 = v38;
            goto LABEL_43;
          }

          dispatch thunk of CodeGenExpression.operand.getter();

          a1 = v38;
          if (v41)
          {

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v31 = v42;
            goto LABEL_43;
          }

LABEL_41:

          goto LABEL_43;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
          goto LABEL_36;
        }
      }

      else
      {

        v27 = v37;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();
      if (!v41)
      {
        goto LABEL_42;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = v38;
      if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
LABEL_34:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_30:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v32 = v43;
LABEL_43:
      if (v27 == ++v10)
      {
        return v32;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t NLv4UpdateTransformer.mapEntityToContactAndQuery(referenceResolver:agent:person:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v26 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v28 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v27 = &v26 - v12;
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  CodeGenBase.entity.getter();
  LOBYTE(v13) = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_4;
  }

  NLv4UpdateTransformer.runSRR(agent:person:)(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v7, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMR);
LABEL_4:

    v15 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v14, 1);
    UsoEntity_common_Person.toContactQuery()();
    return v15;
  }

  v16 = v8;
  v17 = v27;
  outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v7, v27);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#NLv4UpdateTransformer Found reference to entity in context", v21, 2u);
  }

  v22 = v28;
  outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v17, v28);
  v15 = *v22;
  v23 = *(v16 + 48);
  v24 = type metadata accessor for ContactQuery();
  (*(*(v24 - 8) + 32))(a1, v22 + v23, v24);
  return v15;
}

uint64_t NLv4UpdateTransformer.runSRR(agent:person:)@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = type metadata accessor for ContactQuery();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  __chkstk_darwin(v1);
  v57 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PhoneRRTarget.Target(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MatchedResultsSetting();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v57 - v15;
  v17 = type metadata accessor for PhoneRRTarget(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = CodeGenBase.entity.getter();
  (*(v9 + 104))(v12, enum case for MatchedResultsSetting.defaultMatching(_:), v8);
  static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)(v21, v60, v12, v16);

  (*(v9 + 8))(v12, v8);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    v24 = v61;
    outlined init with take of PhoneRRTarget(v16, v20);

    v26 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v25, 1);
    v64 = v26;
    outlined init with copy of PhoneRRTarget.Target(v20, v7);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v41 = *v7;
        v42 = dispatch thunk of UsoEntity_common_Group.members.getter();
        v39 = v24;
        if (v42)
        {
          v43 = specialized Array.count.getter(v42);

          if (v43 == 1)
          {
            v44 = dispatch thunk of UsoEntity_common_Group.members.getter();
            v45 = v44;
            if (v44)
            {
              if (specialized Array.count.getter(v44))
              {
                specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v45 & 0xC000000000000001) == 0, v45);
                if ((v45 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v46 = *(v45 + 32);
                }

                dispatch thunk of CodeGenListEntry.entry.getter();

                if (v62)
                {
                  CodeGenBase.entity.getter();
                }
              }

              else
              {
              }
            }

            type metadata accessor for UsoEntity_common_Person();
            static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

            if (v63)
            {
              if (one-time initialization token for siriPhone != -1)
              {
                swift_once();
              }

              v47 = type metadata accessor for Logger();
              __swift_project_value_buffer(v47, static Logger.siriPhone);
              v48 = Logger.logObject.getter();
              v49 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                *v50 = 0;
                _os_log_impl(&dword_0, v48, v49, "#NLv4UpdateTransformer SRR found common_Group with 1 common_Person", v50, 2u);
              }

              v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
              v51 = *(v34 + 48);
              *v24 = v26;

              UsoEntity_common_Person.toContactQuery()();

              outlined destroy of PhoneRRTarget.Target(v20, type metadata accessor for PhoneRRTarget);
              v23 = v24;
              goto LABEL_6;
            }
          }
        }

        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static Logger.siriPhone);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_0, v53, v54, "#NLv4UpdateTransformer SRR found common_Group with >1 member in context but this is not supported", v55, 2u);
        }

        goto LABEL_32;
      case 2u:
        outlined destroy of PhoneRRTarget.Target(v20, type metadata accessor for PhoneRRTarget);
        v31 = v57;
        v32 = *(v58 + 32);
        v33 = v59;
        v32(v57, v7, v59);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
        v35 = *(v34 + 48);
        *v24 = v26;
        v32(v24 + v35, v31, v33);
        v23 = v24;
LABEL_6:
        v30 = 0;
        v22 = v34;
        return __swift_storeEnumTagSinglePayload(v23, v30, 1, v22);
      case 3u:
        outlined destroy of PhoneRRTarget.Target(v7, type metadata accessor for PhoneRRTarget.Target);
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logger.siriPhone);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        v39 = v24;
        if (os_log_type_enabled(v37, v38))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_0, v37, v38, "##NLv4UpdateTransformer SRR can't resolve apps", v40, 2u);
        }

LABEL_32:
        outlined destroy of PhoneRRTarget.Target(v20, type metadata accessor for PhoneRRTarget);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
        v23 = v39;
        goto LABEL_33;
      default:
        v27 = *v7;
        specialized SiriPhoneContact.update(person:)();
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
        v29 = *(v28 + 48);
        *v24 = v26;

        INPerson.toContactQuery()();

        outlined destroy of PhoneRRTarget.Target(v20, type metadata accessor for PhoneRRTarget);
        v23 = v24;
        v30 = 0;
        v22 = v28;
        return __swift_storeEnumTagSinglePayload(v23, v30, 1, v22);
    }
  }

  outlined destroy of PhoneCallNLIntent?(v16, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  v23 = v61;
LABEL_33:
  v30 = 1;
  return __swift_storeEnumTagSinglePayload(v23, v30, 1, v22);
}

uint64_t outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NSObject.update(with:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  NSObject.update(with:at:)(a1, inited);
  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

void NSObject.update(with:at:)(void *a1, uint64_t a2)
{
  v17 = *(a2 + 16);
  if (v17)
  {
    v16 = a2 + 32;
    lazy protocol witness table accessor for type String and conformance String();
    v2 = 0;
    while (1)
    {
      v20 = *(v16 + 16 * v2);
      v21 = *(v16 + 16 * v2 + 8);

      v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

      v4 = *(v3 + 16);
      if (v4)
      {
        break;
      }

LABEL_11:
      ++v2;
      NSObject.update(with:at:)(a1, _swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * _swiftEmptyArrayStorage[2]) | 1);

      if (v2 == v17)
      {
        return;
      }
    }

    v19 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = 0;
    v6 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *(v6 - 1);
      v9 = *v6;

      v11 = static String._fromSubstring(_:)();
      v13 = v12;

      v14 = _swiftEmptyArrayStorage[2];
      if (v14 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v11;
      v15[5] = v13;
      v6 += 4;
      if (v4 == v5)
      {

        v2 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void NSObject.update(with:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "No keyPath specified, not updating object";
    goto LABEL_18;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
LABEL_31:
    swift_once();
LABEL_16:
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "keyPath invalid for object";
LABEL_18:
      _os_log_impl(&dword_0, oslog, v8, v10, v9, 2u);
    }

LABEL_19:

    return;
  }

  v13 = (a3 + 16 * a4);
  v15 = *v13;
  v14 = v13[1];
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_15:
    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  v17 = v5;
  swift_bridgeObjectRetain_n();
  if (![v5 respondsToSelector:Selector.init(_:)()])
  {

    goto LABEL_15;
  }

  if (__OFSUB__(v6, a4))
  {
    __break(1u);
    return;
  }

  if (v6 - a4 == 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    oslog = String._bridgeToObjectiveC()();

    [v17 setValue:v21 forKey:oslog];
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  osloga = String._bridgeToObjectiveC()();
  v23 = [v5 valueForKey:osloga];

  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35[0] = v33;
  v35[1] = v34;
  if (*(&v34 + 1))
  {
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v24 = specialized ArraySlice.subscript.getter(a4 + 1, v6, a2, a3, a4, a5);
      NSObject.update(with:at:)(a1, v24, v25, v26, v27);
      v28 = v32;
      v29 = String._bridgeToObjectiveC()();

      [v17 setValue:v28 forKey:v29];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of Any?(v35);
  }
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t specialized OneTimeHintGenerator<>.chooseHintIdentifier(history:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v5 = OUTLINED_FUNCTION_2_68();
  v6(v5);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v7 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  v9 = OUTLINED_FUNCTION_2_68();
  v10(v9);
  OUTLINED_FUNCTION_86(v16);
  v11 = DeviceState.idiom.getter();
  v12 = specialized Dictionary.subscript.getter(v11, a1);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v16);
  if ((v14 & 1) == 0 && v12)
  {
    return 0;
  }

  result = 0xD000000000000011;
  switch(*v2)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t OneTimeHintGenerator<>.chooseHintIdentifier(history:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (((*(v4 + 48))(a2, v4) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_72();
  v7(v6);
  v8 = v21;
  v9 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v9 + 8))(v19, v8, v9);
  OUTLINED_FUNCTION_86(v19);
  v10 = DeviceState.idiom.getter();
  v11 = specialized Dictionary.subscript.getter(v10, a1);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  if ((v13 & 1) == 0 && v11)
  {
    return 0;
  }

  v15 = *(v4 + 24);
  v16 = OUTLINED_FUNCTION_72();
  v18 = v17(v16);
  result = 0xD000000000000011;
  switch(v18)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for SiriPhoneHintGenerator.makeUpdatedHintHistory(dialogIdentifier:previousHistory:) in conformance HangUpTipGenerator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = specialized OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t specialized OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v6 = *(v5 + 8);

  v7 = OUTLINED_FUNCTION_72();
  v6(v7);
  OUTLINED_FUNCTION_86(v14);
  v8 = DeviceState.idiom.getter();
  result = specialized Dictionary.subscript.getter(v8, a3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_86(v14);
    DeviceState.idiom.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = OUTLINED_FUNCTION_72();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return a3;
  }

  return result;
}

uint64_t OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 + 8) + 40);

  v7 = OUTLINED_FUNCTION_72();
  v6(v7);
  v8 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_72();
  v11(v10);
  OUTLINED_FUNCTION_86(v18);
  v12 = DeviceState.idiom.getter();
  result = specialized Dictionary.subscript.getter(v12, a3);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = result;
  }

  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_86(v18);
    DeviceState.idiom.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v16 = OUTLINED_FUNCTION_72();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return a3;
  }

  return result;
}

uint64_t IdiomKeyedHintHistory<>.hintCount(deviceState:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = DeviceState.idiom.getter();
  result = specialized Dictionary.subscript.getter(v4, a2);
  if (v6)
  {
    return 0;
  }

  return result;
}

void IdiomKeyedHintHistory<>.incrementHintCount(deviceState:)(void *a1)
{
  v3 = *v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = OUTLINED_FUNCTION_1_72();
  v6 = specialized Dictionary.subscript.getter(v5, v3);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = OUTLINED_FUNCTION_1_72();
    v12 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v11);
    *v1 = v13;
  }
}

unint64_t OneTimeHintHistory.description.getter()
{
  _StringGuts.grow(_:)(21);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32010;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  return 0xD000000000000011;
}

uint64_t OneTimeHintHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E756F43746E6968 && a2 == 0xE900000000000074)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OneTimeHintHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OneTimeHintHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneTimeHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneTimeHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OneTimeHintHistory.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMR);
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v9, v2);
}

uint64_t OneTimeHintHistory.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMR);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t protocol witness for Decodable.init(from:) in conformance OneTimeHintHistory@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = OneTimeHintHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for OneTimeHintHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  a1[2] = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  result = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for OneTimeHintHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  result = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneTimeHintHistory.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATs::Properties_optional __swiftcall OngoingCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATs.Properties.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t OngoingCallCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATs::Properties_optional *a2@<X8>)
{
  result.value = OngoingCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = OngoingCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t OngoingCallCATs.addOrCallPrompt()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v4(0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_12(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneCallRecord(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_18_2();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  v1[3].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v2;

  OUTLINED_FUNCTION_29(44);
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[5] = v2;
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v3);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_10(v4);

  return v8(v6, 0xD00000000000002CLL);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorMaxParticipantsReached(currentCall:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v3);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_30(v4);
  v5 = OUTLINED_FUNCTION_29(44);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  if (a1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = a1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OngoingCallCATs.confirmHangUpForLocalEmergency()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_12(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneCallRecord(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_18_2();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  v1[3].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v2;

  OUTLINED_FUNCTION_29(36);
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[5] = v2;
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v3);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_10(v4);

  return v8(v6, 0xD000000000000024);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v3);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_30(v4);
  v5 = OUTLINED_FUNCTION_29(36);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  if (a1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = a1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:completion:)(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_12(v4, xmmword_424FF0);
  if (a1)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
    v6 = a1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_18_2();
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_2_69(v5, v6);
  if (a2)
  {
    v7 = type metadata accessor for PhoneCallRecord(0);
    v8 = a2;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_18_2();
    v4[6].n128_u64[1] = 0;
    v4[7].n128_u64[0] = 0;
  }

  v4[6].n128_u64[0] = v8;
  v4[7].n128_u64[1] = v7;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v0[6] = v2;
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FF0);
  if (v1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[4];
  OUTLINED_FUNCTION_2_69(v3, v4);
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v2[6].n128_u64[0] = v5;
  v2[7].n128_u64[1] = v6;
  OUTLINED_FUNCTION_21_22(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v7;
  *v7 = v8;
  v7[1] = AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v9 = v0[5];
  v10 = v0[2];

  return v12(v10, 0xD000000000000019, 0x8000000000452A90, v2);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v0[5] = v2;
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FF0);
  if (v1)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[3];
  OUTLINED_FUNCTION_2_69(v3, v4);
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v2[6].n128_u64[0] = v5;
  v2[7].n128_u64[1] = v6;
  OUTLINED_FUNCTION_21_22(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = OngoingCallCATs.newCallPrompt(currentCall:targetCall:);
  v8 = v0[4];

  return v10(0xD000000000000019, 0x8000000000452A90, v2);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_12(v4, xmmword_424FF0);
  if (a1)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
    v6 = a1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_18_2();
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  v4[3].n128_u64[0] = v6;
  v4[4].n128_u64[1] = v5;
  v4[5].n128_u64[0] = 0x6143746567726174;
  v4[5].n128_u64[1] = 0xEA00000000006C6CLL;
  if (a2)
  {
    v7 = type metadata accessor for PhoneCallRecord(0);
    v8 = a2;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_18_2();
    v4[6].n128_u64[1] = 0;
    v4[7].n128_u64[0] = 0;
  }

  v4[6].n128_u64[0] = v8;
  v4[7].n128_u64[1] = v7;

  OUTLINED_FUNCTION_29(25);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OngoingCallCATs.__allocating_init(templateDir:options:globals:)()
{
  OUTLINED_FUNCTION_23_4();
  v3 = *(v0 + 48);
  v4 = *(v0 + 52);
  swift_allocObject();
  return OngoingCallCATs.init(templateDir:options:globals:)(v2, v1);
}

uint64_t OngoingCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of URL?(a1);
  return v12;
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for OngoingCallCATs()
{
  result = type metadata singleton initialization cache for OngoingCallCATs;
  if (!type metadata singleton initialization cache for OngoingCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::Properties_optional __swiftcall OngoingCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t OngoingCallCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = OngoingCallCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t OngoingCallCATsSimple.addOrCallPrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage);
}

BOOL OngoingCallCATsSimple.AddOrCallPromptDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.AddOrCallPromptDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = OngoingCallCATsSimple.AddOrCallPromptDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t OngoingCallCATsSimple.addOrCallPromptAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return v5(0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage, &type metadata for OngoingCallCATsSimple.AddOrCallPromptDialogIds);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_12(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_30(v6);
  v7 = OUTLINED_FUNCTION_29(44);

  return v9(v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

uint64_t OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636972656E6567;
  }

  else
  {
    return 0x656D695465636166;
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::ConfirmHangUpForForeignEmergencyDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::ConfirmHangUpForForeignEmergencyDialogIds_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergencyAsLabels(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergencyAsLabels(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_12(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = swift_task_alloc();
  v0[5] = v6;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v6 = v7;
  v6[1] = OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:);
  v8 = v0[3];
  v9 = OUTLINED_FUNCTION_29(44);

  return v11(v9);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForLocalEmergency()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage);
}

BOOL OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForLocalEmergencyAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v5(0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage, &type metadata for OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_12(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_30(v6);
  v7 = OUTLINED_FUNCTION_29(36);

  return v9(v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::InformHangUpForEmergencyDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::InformHangUpForEmergencyDialogIds_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergencyAsLabels(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergencyAsLabels(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_12(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = swift_task_alloc();
  v0[5] = v6;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v6 = v7;
  v6[1] = OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:);
  v8 = v0[3];
  v9 = OUTLINED_FUNCTION_29(36);

  return v11(v9);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.newCallPrompt(currentCall:targetCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.newCallPrompt(currentCall:targetCall:)()
{
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[5] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FF0);
  if (v2)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = OUTLINED_FUNCTION_10_41(v4, v5);
  if (v0)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v0;
  v3[7].n128_u64[1] = v6;
  OUTLINED_FUNCTION_21_22(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v8 = v1[4];

  return v10(0xD000000000000019, 0x8000000000452A90, v3);
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::NewCallPromptDialogIds_optional __swiftcall OngoingCallCATsSimple.NewCallPromptDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.NewCallPromptDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t OngoingCallCATsSimple.NewCallPromptDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x636972656E6567;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OngoingCallCATsSimple.NewCallPromptDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::NewCallPromptDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.NewCallPromptDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::NewCallPromptDialogIds_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.NewCallPromptDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATsSimple.NewCallPromptDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = OngoingCallCATsSimple.NewCallPromptDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t OngoingCallCATsSimple.newCallPromptAsLabels(currentCall:targetCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.newCallPromptAsLabels(currentCall:targetCall:)()
{
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[5] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FF0);
  if (v2)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = OUTLINED_FUNCTION_10_41(v4, v5);
  if (v0)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v0;
  v3[7].n128_u64[1] = v6;
  OUTLINED_FUNCTION_21_22(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v7 = swift_task_alloc();
  v1[6] = v7;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds();
  OUTLINED_FUNCTION_9();
  *v7 = v8;
  v7[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v9 = v1[4];

  return v11(0xD000000000000019, 0x8000000000452A90, v3, &type metadata for OngoingCallCATsSimple.NewCallPromptDialogIds);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return OngoingCallCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t OngoingCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  outlined init with copy of URL?(a1, &v19 - v16);
  (*(v8 + 16))(v13, a2, v2);
  v17 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of URL?(a1);
  return v17;
}

uint64_t OngoingCallCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_39_1();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
  return v7;
}

uint64_t OngoingCallCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_39_1();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_53();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for OngoingCallCATsSimple()
{
  result = type metadata singleton initialization cache for OngoingCallCATsSimple;
  if (!type metadata singleton initialization cache for OngoingCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.AddOrCallPromptDialogIds(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.NewCallPromptDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OngoingCallConfirmIntentFlow.rchRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t OngoingCallConfirmIntentFlow.callStateProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals), *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals + 24));
  v2 = *(v1 + 120);
  v3 = OUTLINED_FUNCTION_1_1();
  return v4(v3);
}

uint64_t key path setter for OngoingCallConfirmIntentFlow.state : OngoingCallConfirmIntentFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OngoingCallConfirmIntentFlow.State(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  swift_beginAccess();
  outlined assign with take of OngoingCallConfirmIntentFlow.State(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t OngoingCallConfirmIntentFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  swift_beginAccess();
  return outlined init with copy of OngoingCallConfirmIntentFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of OngoingCallConfirmIntentFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OngoingCallConfirmIntentFlow.Action.description.getter(char a1)
{
  if (a1)
  {
    return 0x6C61436F54646461;
  }

  else
  {
    return 0x6C6C614377656ELL;
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallConfirmIntentFlow::Action_optional __swiftcall OngoingCallConfirmIntentFlow.Action.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallConfirmIntentFlow.Action.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_OngoingCallConfirmIntentFlow_Action_addToCall;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_OngoingCallConfirmIntentFlow_Action_unknownDefault;
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

PhoneCallFlowDelegatePlugin::OngoingCallConfirmIntentFlow::Action_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallConfirmIntentFlow.Action@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallConfirmIntentFlow::Action_optional *a2@<X8>)
{
  result.value = OngoingCallConfirmIntentFlow.Action.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallConfirmIntentFlow.Action@<X0>(uint64_t *a1@<X8>)
{
  result = OngoingCallConfirmIntentFlow.Action.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t OngoingCallConfirmIntentFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = OUTLINED_FUNCTION_4_45();
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v30 - v16;
  (*(*v1 + 112))(v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    goto LABEL_6;
  }

  outlined init with copy of OngoingCallConfirmIntentFlow.State(v17, v14);
  OUTLINED_FUNCTION_9_1();
  v20 = v19;
  v22 = (*(v21 + 88))(v14, v18);
  if (v22 != enum case for PromptResult.answered<A>(_:))
  {
    (*(v20 + 8))(v14, v18);
    goto LABEL_6;
  }

  v23 = v22;
  (*(v20 + 96))(v14, v18);
  if (*v14)
  {
LABEL_6:
    v23 = enum case for PromptResult.cancelled<A>(_:);
    goto LABEL_7;
  }

  v24 = enum case for ConfirmationResponse.confirmed(_:);
  v25 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_23_1(v25);
  (*(v26 + 104))(v8, v24, v25);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();
LABEL_7:
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMd, &_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMR);
  OUTLINED_FUNCTION_23_1(v27);
  (*(v28 + 104))(a1, v23);
  return outlined destroy of OngoingCallConfirmIntentFlow.State(v17);
}

uint64_t outlined destroy of OngoingCallConfirmIntentFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OngoingCallConfirmIntentFlow.__allocating_init(rchRecord:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v23[-v11 - 8];
  v13 = OUTLINED_FUNCTION_4_45();
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v7 + 16))(v12, a1, v5);
  outlined init with copy of SignalProviding(a2, v23);
  v20 = (*(v2 + 144))(v18, v12, v23);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v5);
  return v20;
}

uint64_t OngoingCallConfirmIntentFlow.__allocating_init(state:rchRecord:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  OngoingCallConfirmIntentFlow.init(state:rchRecord:sharedGlobals:)(a1, a2, a3);
  return v9;
}

uint64_t OngoingCallConfirmIntentFlow.init(state:rchRecord:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with take of OngoingCallConfirmIntentFlow.State(a1, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state);
  v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_23_1(v7);
  (*(v8 + 32))(v3 + v6, a2);
  outlined init with take of PhoneCallFeatureFlagProviding(a3, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals);
  return v3;
}

uint64_t outlined init with take of OngoingCallConfirmIntentFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OngoingCallConfirmIntentFlow.execute(completion:)()
{
  type metadata accessor for OngoingCallConfirmIntentFlow(0);
  lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(&lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow, type metadata accessor for OngoingCallConfirmIntentFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t OngoingCallConfirmIntentFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_4_45();
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(OngoingCallConfirmIntentFlow.execute(), 0, 0);
}

{
  v110 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  (*(**(v0 + 120) + 112))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(**(v0 + 120) + 104))();
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v4 = *(v3 + 24);
    v5 = OUTLINED_FUNCTION_55();
    if (v6(v5))
    {
      v7 = *(v0 + 120);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v8 = OUTLINED_FUNCTION_55();
      v10 = OngoingCallConfirmIntentFlow.makeErrorFlow(currentCall:)(v8, v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v0 + 168);
        v13 = *(v0 + 128);
        v14 = *(v0 + 112);
        v15 = *(v0 + 120);
        (*(*(v0 + 136) + 104))(v12, enum case for PromptResult.cancelled<A>(_:), v13);
        v16 = OUTLINED_FUNCTION_10_42();
        __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
        v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
        OUTLINED_FUNCTION_17_3();
        outlined assign with take of OngoingCallConfirmIntentFlow.State(v12, v15 + v19);
        swift_endAccess();
        *(v0 + 104) = v11;
        type metadata accessor for SimpleOutputFlowAsync();
        static ExecuteResponse.complete<A>(next:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v96 = *(v0 + 112);
        v97 = *(v0 + 120);
        v98 = OUTLINED_FUNCTION_55();
        OngoingCallConfirmIntentFlow.makeOfferResponse(currentCall:)(v98, v99, v100);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v67 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v67, static Logger.siriPhone);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_8_0(v69))
      {
        v70 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v70);
        OUTLINED_FUNCTION_14_1(&dword_0, v71, v72, "#OngoingCallConfirmIntentFlow: No current call during OngoingCall flows. Proceed with new call.");
        OUTLINED_FUNCTION_12_3();
      }

      v73 = *(v0 + 168);
      v74 = *(v0 + 128);
      v75 = *(v0 + 136);
      v76 = *(v0 + 112);
      v77 = *(v0 + 120);

      *v73 = 0;
      (*(v75 + 104))(v73, enum case for PromptResult.answered<A>(_:), v74);
      __swift_storeEnumTagSinglePayload(v73, 0, 1, v74);
      v78 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
      OUTLINED_FUNCTION_17_3();
      outlined assign with take of OngoingCallConfirmIntentFlow.State(v73, v77 + v78);
      swift_endAccess();
      static ExecuteResponse.complete()();
    }
  }

  else
  {
    v20 = (*(*(v0 + 136) + 88))(*(v0 + 176), *(v0 + 128));
    v21 = *(v0 + 176);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    if (v20 == enum case for PromptResult.answered<A>(_:))
    {
      v24 = *(v0 + 160);
      (*(v23 + 16))(v24, v21, *(v0 + 128));
      v25 = *(v23 + 96);
      v26 = OUTLINED_FUNCTION_19_0();
      v27(v26);
      if (*v24 == 1)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v28 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v28, static Logger.siriPhone);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_0(v30))
        {
          v31 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v31);
          OUTLINED_FUNCTION_14_1(&dword_0, v32, v33, "#OngoingCallConfirmIntentFlow User selected add to call, push new RCHFlow");
          OUTLINED_FUNCTION_12_3();
        }

        v34 = *(v0 + 176);
        v35 = *(v0 + 128);
        v36 = *(v0 + 136);
        v37 = *(v0 + 112);
        v38 = *(v0 + 120);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
        v39 = IntentResolutionRecord.intent.getter();
        v40 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v39);
        v41 = objc_allocWithZone(INAddCallParticipantIntent);
        v42 = @nonobjc INAddCallParticipantIntent.init(participants:)(v40);
        IntentResolutionRecord.app.getter();
        static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)();

        static ExecuteResponse.complete<A>(next:)();

        v43 = *(v36 + 8);
        v44 = OUTLINED_FUNCTION_55();
        v45(v44);
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v79 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v79, static Logger.siriPhone);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_0(v81))
        {
          v82 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v82);
          OUTLINED_FUNCTION_14_1(&dword_0, v83, v84, "#OngoingCallConfirmIntentFlow User selected new call, proceed to Handle + ContinueInApp");
          OUTLINED_FUNCTION_12_3();
        }

        v85 = *(v0 + 176);
        v86 = *(v0 + 128);
        v87 = *(v0 + 136);
        v88 = *(v0 + 112);

        static ExecuteResponse.complete()();
        v89 = *(v87 + 8);
        v90 = OUTLINED_FUNCTION_55();
        v91(v90);
      }
    }

    else
    {
      (*(v23 + 32))(*(v0 + 152), v21, *(v0 + 128));
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v46 = *(v0 + 144);
      v47 = *(v0 + 152);
      v48 = *(v0 + 128);
      v49 = *(v0 + 136);
      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.siriPhone);
      v51 = *(v49 + 16);
      v52 = OUTLINED_FUNCTION_19_0();
      v53(v52);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      v56 = os_log_type_enabled(v54, v55);
      v58 = *(v0 + 136);
      v57 = *(v0 + 144);
      v59 = *(v0 + 128);
      if (v56)
      {
        v60 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v109 = v108;
        *v60 = 136315138;
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptResult<OngoingCallConfirmIntentFlow.Action> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v64 = *(v58 + 8);
        v65 = OUTLINED_FUNCTION_18_18();
        v64(v65);
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v109);

        *(v60 + 4) = v66;
        _os_log_impl(&dword_0, v54, v55, "#OngoingCallConfirmIntentFlow Prompt result: %s, returning .complete for this flow", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v108);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v64 = *(v58 + 8);
        v92 = OUTLINED_FUNCTION_18_18();
        v64(v92);
      }

      v93 = *(v0 + 152);
      v94 = *(v0 + 128);
      v95 = *(v0 + 112);
      static ExecuteResponse.complete()();
      (v64)(v93, v94);
    }
  }

  v102 = *(v0 + 168);
  v101 = *(v0 + 176);
  v104 = *(v0 + 152);
  v103 = *(v0 + 160);
  v105 = *(v0 + 144);

  v106 = *(v0 + 8);

  return v106();
}