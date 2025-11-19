uint64_t SiriLinkFlowFeatureFlags.isEnabled.getter(unsigned __int8 a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();
  v2 = static SiriLinkFlowFeatureFlags.forceEnabled;
  if (*(static SiriLinkFlowFeatureFlags.forceEnabled + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7[3] = &type metadata for SiriLinkFlowFeatureFlags;
    v7[4] = lazy protocol witness table accessor for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags();
    LOBYTE(v7[0]) = a1;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return v5 & 1;
}

uint64_t *SiriLinkFlowFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  return &static SiriLinkFlowFeatureFlags.forceEnabled;
}

uint64_t static SiriLinkFlowFeatureFlags.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SiriLinkFlowFeatureFlags.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();
  static SiriLinkFlowFeatureFlags.forceEnabled = a1;
}

uint64_t (*static SiriLinkFlowFeatureFlags.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  return static LocaleUtils.intentBundleCache.modify;
}

uint64_t key path getter for static SiriLinkFlowFeatureFlags.forceEnabled : SiriLinkFlowFeatureFlags.Type@<X0>(void *a1@<X8>)
{
  SiriLinkFlowFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static SiriLinkFlowFeatureFlags.forceEnabled;
}

uint64_t key path setter for static SiriLinkFlowFeatureFlags.forceEnabled : SiriLinkFlowFeatureFlags.Type(uint64_t *a1)
{
  v1 = *a1;

  SiriLinkFlowFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  static SiriLinkFlowFeatureFlags.forceEnabled = v1;
}

const char *SiriLinkFlowFeatureFlags.feature.getter(char a1)
{
  result = "nlv4Followup";
  switch(a1)
  {
    case 1:
      result = "autoshortcuts";
      break;
    case 2:
      result = "rfMigration";
      break;
    case 3:
      result = "sendMailEncore";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, unsigned __int8 a4)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  swift_beginAccess();
  v6 = specialized Dictionary.subscript.getter(a4, static SiriLinkFlowFeatureFlags.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = OUTLINED_FUNCTION_2_39();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v8, v9);
  static SiriLinkFlowFeatureFlags.forceEnabled = v12;
  v10 = swift_endAccess();
  a2(v10);
  return $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(a4, v6);
}

uint64_t SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 105) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 104) = a2;
  *(v5 + 64) = a1;
  return _swift_task_switch(SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:), 0, 0);
}

uint64_t SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_45();
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v3 = *(v0 + 105);
  swift_beginAccess();
  *(v0 + 106) = specialized Dictionary.subscript.getter(v3, static SiriLinkFlowFeatureFlags.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = static SiriLinkFlowFeatureFlags.forceEnabled;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, v3, isUniquelyReferenced_nonNull_native);
  static SiriLinkFlowFeatureFlags.forceEnabled = v11;
  swift_endAccess();
  v10 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);

  return v10(v8);
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v3 = SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105), *(v0 + 106));
  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105), *(v0 + 106));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t $defer #1 <A>() in SiriLinkFlowFeatureFlags.withForcedEnabled<A>(_:block:)(unsigned __int8 a1, char a2)
{
  if (a2 == 2)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = static SiriLinkFlowFeatureFlags.forceEnabled;
      v5 = static SiriLinkFlowFeatureFlags.forceEnabled;
      static SiriLinkFlowFeatureFlags.forceEnabled = 0x8000000000000000;
      v6 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMd, &_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
      lazy protocol witness table accessor for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags();
      _NativeDictionary._delete(at:)();
      static SiriLinkFlowFeatureFlags.forceEnabled = v12;
    }
  }

  else
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_45();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v7 = OUTLINED_FUNCTION_2_39();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v8, v9);
    static SiriLinkFlowFeatureFlags.forceEnabled = v11;
  }

  return swift_endAccess();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

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

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for RFFeatureFlags.ResponseFramework();
  lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t lazy protocol witness table accessor for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkFlowFeatureFlags and conformance SiriLinkFlowFeatureFlags);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    outlined destroy of AnyHashable(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      return i;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

{
  v14 = a1;
  v4 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkFlowFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1AD0C4);
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

uint64_t LNAction.asSELFAction()()
{
  v1 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAction) init];
  if (!v1)
  {
    return v1;
  }

  v2 = [v0 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v3, v5, v1, &selRef_setActionIdentifierName_);
  v6 = [v0 presentationStyle];
  if (v6 < 3)
  {
    v7 = (v6 + 1);
  }

  else
  {
    v7 = 0;
  }

  [v1 setPresentationStyle:v7];
  v8 = [v0 parameters];
  type metadata accessor for LNProperty();
  OUTLINED_FUNCTION_71();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter(v9);
  if (!result)
  {
LABEL_21:

    return v1;
  }

  v11 = result;
  if (result >= 1)
  {
    v12 = 0;
    v13 = &off_2B4000;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) init];
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = v16;
      v18 = [v15 identifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v13;
      v22 = v21;

      v23 = v22;
      v13 = v20;
      outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v19, v23, v17, &selRef_setName_);
      v24 = [v15 v20[336]];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 valueType];

        if (!v26)
        {
          goto LABEL_16;
        }

        objc_opt_self();
        OUTLINED_FUNCTION_71();
        v24 = swift_dynamicCastObjCClass();
        if (!v24)
        {
          break;
        }
      }

LABEL_17:
      v27 = v24 != 0;

      [v17 setIsArray:v27];
      v28 = [v15 v20[336]];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 valueType];

        v31 = LNValueType.asSELFType()();
        [v17 setType:v31];
      }

      [v1 addParameters:v17];

LABEL_20:
      ++v12;

      if (v11 == v12)
      {
        goto LABEL_21;
      }
    }

LABEL_16:
    v24 = 0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t LNPrimitiveValueTypeIdentifier.asSELFType()(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_2263A8[a1];
  }
}

void *LNValueType.asSELFType()()
{
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 memberValueType];
    v2 = LNValueType.asSELFType()();

    return v2;
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v4 = [result typeIdentifier];
      if (v4 >= 0xD)
      {
        return 0;
      }

      else
      {
        return dword_2263A8[v4];
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for LNProperty()
{
  result = lazy cache variable for type metadata for LNProperty;
  if (!lazy cache variable for type metadata for LNProperty)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNProperty);
  }

  return result;
}

uint64_t static WFDialogState.isAppFirstRun(appId:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = objc_allocWithZone(NSUserDefaults);

  v5 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000021, 0x8000000000234BF0);
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 stringArrayForKey:v7];

  if (v8)
  {
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v32[0] = a1;
  v32[1] = a2;
  __chkstk_darwin(v9);
  v31[2] = v32;
  v12 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v31, v10);

  if (v12)
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.voiceCommands);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v32);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_0, v14, v15, "#WFDialogState this is not the first time that %s shows a dialog", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    else
    {
    }

    return 0;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v32);
    _os_log_impl(&dword_0, v20, v21, "#WFDialogState app %s hasn't shown any dialogs before, showing app attribution", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = v10[2];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v29;
  }

  v24 = v10[2];
  if (v24 >= v10[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v30;
  }

  v10[2] = v24 + 1;
  v25 = &v10[2 * v24];
  v25[4] = a1;
  v25[5] = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v27];

  return 1;
}

uint64_t *WFDialogState.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  return &static WFDialogState.shared;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for WFDialogState();
  v0 = swift_allocObject();
  result = OUTLINED_FUNCTION_2_56(v0);
  static WFDialogState.shared = result;
  return result;
}

uint64_t static WFDialogState.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6();
  }
}

uint64_t WFDialogState.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 34) = 0;
  return result;
}

Swift::Void __swiftcall WFDialogState.prepareForShortcut(name:)(Swift::String name)
{
  if (*(v1 + 16) != name._countAndFlagsBits || *(v1 + 24) != name._object)
  {
    object = name._object;
    countAndFlagsBits = name._countAndFlagsBits;
    v5 = *(v1 + 24);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(v1 + 16) = countAndFlagsBits;
      *(v1 + 24) = object;

      *(v1 + 32) = 0;
      *(v1 + 34) = 0;
    }
  }
}

uint64_t WFDialogState.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t WFDialogState.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

void specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v0 = v4;
  }
}

void specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = v2;
  }
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_56(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(result + 32) = 0;
  *(result + 34) = 0;
  return result;
}

uint64_t UsoEntity_common_MeasurementComponent.measurementValue(locale:)()
{
  CodeGenBase.entity.getter();
  type metadata accessor for UsoEntity_common_DurationComponent();
  OUTLINED_FUNCTION_1_58();

  if (v6)
  {
    v0 = UsoEntity_common_DurationComponent.measurementValue.getter();
  }

  else
  {
    CodeGenBase.entity.getter();
    type metadata accessor for UsoEntity_common_TemperatureComponent();
    OUTLINED_FUNCTION_1_58();

    if (dispatch thunk of UsoEntity_common_MeasurementComponent.value.getter())
    {
      v0 = UsoEntity_common_Number.doubleValue.getter();
      v3 = v2;
    }

    else
    {
      v0 = 0;
      v3 = 1;
    }

    if (dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter())
    {
      LOBYTE(v4) = UsoEntity_common_MeasurementUnit.unitType.getter();
      v5 = v4;

      if ((v3 & 1) == 0)
      {
        return v0;
      }
    }

    else
    {
      v5 = 0;
      if ((v3 & 1) == 0)
      {
        return v0;
      }
    }

    return 0;
  }

  return v0;
}

uint64_t UsoEntity_common_DurationComponent.measurementValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  if (dispatch thunk of UsoEntity_common_DurationComponent.value.getter())
  {
    v4 = UsoEntity_common_Number.doubleValue.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 1;
  }

  v7 = dispatch thunk of UsoEntity_common_DurationComponent.unit.getter();
  if (v7)
  {
    dispatch thunk of UsoEntity_common_TimeUnit.definedValue.getter();

    v8 = type metadata accessor for UsoEntity_common_TimeUnit.DefinedValues();
    if (__swift_getEnumTagSinglePayload(v3, 1, v8) != 1)
    {
      v7 = UsoEntity_common_TimeUnit.DefinedValues.unitType.getter();
      (*(*(v8 - 8) + 8))(v3, v8);
      if ((v6 & 1) == 0)
      {
        return v4;
      }

      goto LABEL_8;
    }

    outlined destroy of String?(v3, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMR);
    v7 = 0;
  }

  if (v6)
  {
LABEL_8:

    return 0;
  }

  return v4;
}

uint64_t UsoEntity_common_TemperatureComponent.measurementValue(locale:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  if (dispatch thunk of UsoEntity_common_TemperatureComponent.value.getter())
  {
    v4 = UsoEntity_common_Number.doubleValue.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 1;
  }

  v7 = dispatch thunk of UsoEntity_common_TemperatureComponent.unit.getter();
  if (v7)
  {
    dispatch thunk of UsoEntity_common_TemperatureUnit.definedValue.getter();

    v8 = type metadata accessor for UsoEntity_common_TemperatureUnit.DefinedValues();
    if (__swift_getEnumTagSinglePayload(v3, 1, v8) != 1)
    {
      v7 = UsoEntity_common_TemperatureUnit.DefinedValues.unitType(locale:)();
      (*(*(v8 - 8) + 8))(v3, v8);
      if ((v6 & 1) == 0)
      {
        return v4;
      }

      goto LABEL_8;
    }

    outlined destroy of String?(v3, &_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_TemperatureUnitC13DefinedValuesOSgMR);
    v7 = 0;
  }

  if (v6)
  {
LABEL_8:

    return 0;
  }

  return v4;
}

id UsoEntity_common_TimeUnit.DefinedValues.unitType.getter()
{
  v2 = v1;
  v3 = type metadata accessor for UsoEntity_common_TimeUnit.DefinedValues();
  v4 = OUTLINED_FUNCTION_0_46(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v2, v0);
  v11 = (*(v6 + 88))(v10, v0);
  if (v11 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:))
  {
    v12 = [objc_opt_self() seconds];
  }

  else if (v11 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Minute(_:))
  {
    v12 = [objc_opt_self() minutes];
  }

  else if (v11 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Hour(_:))
  {
    v12 = [objc_opt_self() hours];
  }

  else
  {
    if (v11 != enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Millisecond(_:))
    {
      (*(v6 + 8))(v10, v0);
      return 0;
    }

    v12 = [objc_opt_self() milliseconds];
  }

  return v12;
}

id UsoEntity_common_TemperatureUnit.DefinedValues.unitType(locale:)()
{
  v2 = type metadata accessor for UsoEntity_common_TemperatureUnit.DefinedValues();
  v3 = OUTLINED_FUNCTION_0_46(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v1, v0);
  v10 = (*(v5 + 88))(v9, v0);
  if (v10 == enum case for UsoEntity_common_TemperatureUnit.DefinedValues.common_TemperatureUnit_Degrees(_:))
  {
    v11 = Locale.usesMetricSystem.getter();
    v12 = objc_opt_self();
    v13 = &selRef_celsius;
    if ((v11 & 1) == 0)
    {
      v13 = &selRef_fahrenheit;
    }

    v14 = [v12 *v13];
  }

  else if (v10 == enum case for UsoEntity_common_TemperatureUnit.DefinedValues.common_TemperatureUnit_DegreesCelsius(_:))
  {
    v14 = [objc_opt_self() celsius];
  }

  else
  {
    if (v10 != enum case for UsoEntity_common_TemperatureUnit.DefinedValues.common_TemperatureUnit_DegreesFahrenheit(_:))
    {
      (*(v5 + 8))(v9, v0);
      return 0;
    }

    v14 = [objc_opt_self() fahrenheit];
  }

  return v14;
}

uint64_t ResponseMode.toLinkInteractionMode(supportedModes:)(char a1)
{
  v2 = type metadata accessor for ResponseMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 0xE) == 0 || (a1)
  {

    return ResponseMode.toSimpleInteractionMode()();
  }

  else
  {
    static ResponseMode.displayOnly.getter();
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
    v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v3 + 8))(v6, v2);
    if (v7)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t LNInteractionMode.asString.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0x79616C707369642ELL;
      break;
    case 3:
      result = 0x6F466563696F762ELL;
      break;
    case 4:
      result = 0x6E4F6563696F762ELL;
      break;
    default:
      result = 0x6E776F6E6B6E755FLL;
      break;
  }

  return result;
}

uint64_t LNActionModes.supportsMultiIntentMode.getter(unint64_t a1)
{
  if ((a1 & 0xC) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = (a1 >> 1) & 1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ResponseMode.toSimpleInteractionMode()()
{
  v1 = v0;
  v2 = type metadata accessor for ResponseMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  (*(v3 + 16))(&v15 - v8, v1, v2);
  static ResponseMode.displayForward.getter();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v11(v9, v2);
    return 1;
  }

  else
  {
    static ResponseMode.displayOnly.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v7, v2);
    if (v13)
    {
      v11(v9, v2);
      return 2;
    }

    else
    {
      static ResponseMode.voiceOnly.getter();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v7, v2);
      v11(v9, v2);
      if (v14)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t InstallShortcutViewFactory.__allocating_init(deviceState:catWrapper:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of Output(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t InstallShortcutViewFactory.init(deviceState:catWrapper:)(uint64_t a1, uint64_t a2)
{
  outlined init with take of Output(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t one-time initialization function for shortcutsApp()
{
  type metadata accessor for App();
  result = App.__allocating_init(appIdentifier:)();
  static InstallShortcutViewFactory.shortcutsApp = result;
  return result;
}

uint64_t *InstallShortcutViewFactory.shortcutsApp.unsafeMutableAddressor()
{
  if (one-time initialization token for shortcutsApp != -1)
  {
    OUTLINED_FUNCTION_3_55();
  }

  return &static InstallShortcutViewFactory.shortcutsApp;
}

uint64_t static InstallShortcutViewFactory.shortcutsApp.getter()
{
  if (one-time initialization token for shortcutsApp != -1)
  {
    OUTLINED_FUNCTION_3_55();
  }
}

uint64_t InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v2[9] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for TemplatingResult();
  v2[10] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v2[11] = v5;
  v7 = *(v6 + 64);
  v2[12] = OUTLINED_FUNCTION_28();
  v8 = *(*v1 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v2[13] = v10;
  *v10 = v2;
  v10[1] = InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut();

  return v12();
}

uint64_t InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = v1[13];
  v5 = v1[8];
  v6 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v2[14] = v8;

  v9 = *(*v5 + 128);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v2[15] = v11;
  *v11 = v6;
  v11[1] = InstallShortcutViewFactory.makeAceOutputErrorInstallShortcut();
  v12 = v1[12];
  v13 = v2[8];

  return v15(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  if (v1 >> 62)
  {
    if (*(v0 + 112) < 0)
    {
      v14 = *(v0 + 112);
    }

    type metadata accessor for SAAceView();

    _bridgeCocoaArray<A>(_:)();

    v15 = *(v0 + 112);
  }

  else
  {
    v4 = *(v0 + 112);

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SAAceView();
    v5 = *(v0 + 112);
  }

  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 56);

  v11 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v7 + 8))(v6, v9);

  v12 = *(v0 + 8);

  return v12();
}

unint64_t type metadata accessor for SAAceView()
{
  result = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAAceView);
  }

  return result;
}

uint64_t InstallShortcutViewFactory.makeAppLaunchButton()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = [objc_allocWithZone(SAUIButton) init];
  v0[3] = v2;
  v3 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v0[4] = v3;
  v4 = String._bridgeToObjectiveC()();
  [v3 setBundleId:v4];

  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v3;
  v6 = v3;
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v5, v2);
  v7 = *(*v1 + 120);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = InstallShortcutViewFactory.makeAppLaunchButton();
  v10 = v0[2];

  return v12();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v0[7], v0[8], v3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_216010;
  *(v4 + 32) = v3;

  v5 = v0[1];

  return v5(v4);
}

uint64_t InstallShortcutViewFactory.makeAppLaunchButtonText()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingText();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingSection();
  v1[6] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15_2();
  *(v1 + 96) = OUTLINED_FUNCTION_7_34(*(v1 + 16));
  v2 = *(*v0 + class metadata base offset for InstallShortcutCATs + 8);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v1;
  v4[1] = InstallShortcutViewFactory.makeAppLaunchButtonText();
  v5 = *(v1 + 88);
  OUTLINED_FUNCTION_11_33();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    v9 = InstallShortcutViewFactory.makeAppLaunchButtonText();
  }

  else
  {
    v10 = *(v3 + 96);

    v9 = InstallShortcutViewFactory.makeAppLaunchButtonText();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v1 = v0[11];
  v2 = *(TemplatingResult.sections.getter() + 16);

  if (v2)
  {
    v3 = v0[11];
    v4 = TemplatingResult.sections.getter();
    if (*(v4 + 16))
    {
      v5 = v0[10];
      v29 = v0[11];
      v6 = v0[8];
      v7 = v0[9];
      v8 = v0[6];
      v9 = v0[7];
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[3];
      (*(v9 + 16))(v6, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

      TemplatingSection.content.getter();
      (*(v9 + 8))(v6, v8);
      v13 = TemplatingText.text.getter();
      v15 = v14;
      (*(v10 + 8))(v11, v12);
      (*(v5 + 8))(v29, v7);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_12:
    OUTLINED_FUNCTION_0();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v19, v20, "InstallShortcutViewFactory app launch button text is empty");
    OUTLINED_FUNCTION_15_0();
  }

  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[9];

  (*(v22 + 8))(v21, v23);
  v13 = 0;
  v15 = 0xE000000000000000;
LABEL_8:
  v24 = v0[11];
  v25 = v0[8];
  v26 = v0[5];

  v27 = v0[1];

  return v27(v13, v15);
}

{
  v1 = v0[12];

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "InstallShortcutViewFactory error generating app launch button text");
    OUTLINED_FUNCTION_15_0();
  }

  v7 = v0[14];

  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11(0, 0xE000000000000000);
}

uint64_t InstallShortcutViewFactory.makeErrorInstallShortcutTemplate()()
{
  OUTLINED_FUNCTION_8_0();
  v1[6] = v2;
  v1[7] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_15_2();
  *(v1 + 80) = OUTLINED_FUNCTION_7_34(*(v1 + 56));
  v2 = *(*v0 + class metadata base offset for InstallShortcutCATs);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v1;
  v4[1] = InstallShortcutViewFactory.makeErrorInstallShortcutTemplate();
  v5 = *(v1 + 48);
  OUTLINED_FUNCTION_11_33();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutViewFactory.makeErrorInstallShortcutTemplate(), 0, 0);
  }

  else
  {
    v10 = v3[9];
    v9 = v3[10];
    v11 = v3[8];

    v12 = *(v7 + 8);

    return v12();
  }
}

{
  v28 = v0;
  v1 = v0[10];

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[12];
  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.voiceCommands);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v27);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Unable to generate dialog due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v17 = v0[8];
  v16 = v0[9];
  v18 = *(v3 - 8);
  (*(v18 + 16))(v16, v4, v3);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
  outlined init with copy of Logger?(v16, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    outlined destroy of String?(v0[8], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v19 = v0[8];
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      *(v22 + 14) = 78;
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000000234D10, &v27);
      _os_log_impl(&dword_0, v20, v21, "FatalError at %s:%lu - %s", v22, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    (*(v18 + 8))(v0[8], v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_3_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_34@<X0>(void *a1@<X8>)
{
  v2 = a1[6];
  v1 = a1[7];
  v3 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);

  return DeviceState.asSiriKitDeviceState()(v3, v2);
}

uint64_t Siri_Nlu_External_UserDialogAct.stringValue.getter()
{
  v3 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v1)
  {
    v0 = v3;
    if (v3)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v15)
      {
        v4 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_36_14(v4, v5, v6, v4, v7, v8, v9, v10, v12, v13);
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_35_17();

          if (v2)
          {
            v0 = v2;
            dispatch thunk of UsoEntity_common_VoiceCommandPayload.stringValue.getter();
            OUTLINED_FUNCTION_64_6();

            return v0;
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v14, &_sypSgMd, &_sypSgMR);
      }

      return 0;
    }
  }

  return v0;
}

uint64_t Siri_Nlu_External_UserDialogAct.smartPromptConfirmationValue()@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  result = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (!v1)
  {
    if (result)
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
      OUTLINED_FUNCTION_48_11();

      if (v2)
      {
        v11 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.voiceCommandConfirmation.getter();

        if (v11)
        {
          dispatch thunk of UsoEntity_common_VoiceCommandConfirmation.definedValue.getter();

          type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
          OUTLINED_FUNCTION_20_14();
          OUTLINED_FUNCTION_58_8();
          if (__swift_getEnumTagSinglePayload(v12, v13, v14) != 1)
          {
            OUTLINED_FUNCTION_21_2(v11);
            (*(v25 + 32))(a1, v9, v11);
            v21 = a1;
            v22 = 0;
            v23 = 1;
            v24 = v11;
            return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
          }

          outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
        }
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v17 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_18_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v19, v20, "#NLUUserDialogActInputUtils: unable to extract voice command confirmation value from UDA");
      OUTLINED_FUNCTION_15_1();
    }

    type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.urlValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v1)
  {
    if (result)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v11[3])
      {
        type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_48_11();

          if (v2)
          {
            if (dispatch thunk of UsoEntity_common_VoiceCommandPayload.contactAddress.getter())
            {
              CodeGenBase.entity.getter();
            }

            type metadata accessor for UsoEntity_common_Uri();
            OUTLINED_FUNCTION_63_9();
            static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

            if (v11[0])
            {

              dispatch thunk of UsoEntity_common_Uri.value.getter();
              v6 = v5;

              if (v6)
              {
                String.convertedToURL()(a1);
              }
            }
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_sypSgMd, &_sypSgMR);
      }
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.dateComponentsValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_30(v1, v2, v3, v4, v5, v6);
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator();
  *(v0 + 112) = v7;
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  *(v0 + 120) = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 136);
  *v3 = *v1;
  *(v2 + 144) = v6;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = v0[15];
  v1 = v0[16];
  if (v0[18])
  {
    v3 = v0[7];
    v4 = v0[18];

    dispatch thunk of DateTime.dateComponents.getter();
    OUTLINED_FUNCTION_22_23();

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v2);
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v0[15]);
  }

  v5 = v0[15];
  v6 = v0[7];
  v7 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_52_10(v6, v8, v9, v7);

  OUTLINED_FUNCTION_6_7();

  return v10();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[15];
  v1 = v0[16];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v2);
  v3 = v0[19];
  v4 = v0[15];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t Siri_Nlu_External_UserDialogAct.dateComponentsValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v20 = v14[13];
  if (Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {

    static UsoTask_CodegenConverter.convert(task:)();
    OUTLINED_FUNCTION_22_23();

    if (v14[5])
    {
      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_68_11();
        OUTLINED_FUNCTION_1_18();

        dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter();
        OUTLINED_FUNCTION_48_11();

        if (v16)
        {
          v23 = v14[14];
          v22 = v14[15];
          v14[16] = OUTLINED_FUNCTION_45_9();

          outlined init with copy of DeviceState(v19, v22);
          outlined init with copy of DeviceState(v18, v22 + 40);
          v24 = v23[6];
          v25 = type metadata accessor for Locale();
          OUTLINED_FUNCTION_4_11(v25);
          (*(v26 + 16))(v22 + v24, v17);
          v27 = v23[7];
          v28 = type metadata accessor for Calendar();
          OUTLINED_FUNCTION_4_11(v28);
          (*(v29 + 16))(v22 + v27, v15);
          v30 = v23[8];
          v31 = type metadata accessor for TimeZone();
          OUTLINED_FUNCTION_4_11(v31);
          (*(v32 + 16))(v22 + v30, a10);
          v33 = swift_task_alloc();
          v14[17] = v33;
          *v33 = v14;
          v33[1] = Siri_Nlu_External_UserDialogAct.dateComponentsValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:);
          v34 = v14[15];
          OUTLINED_FUNCTION_6_1();

          return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
        }
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?((v14 + 2), &_sypSgMd, &_sypSgMR);
    }
  }

  v37 = v14[15];
  v38 = v14[7];
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_30(v1, v2, v3, v4, v5, v6);
  v7 = type metadata accessor for DateComponents();
  v0[14] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[15] = v8;
  v10 = *(v9 + 64);
  v0[16] = OUTLINED_FUNCTION_28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  v0[17] = OUTLINED_FUNCTION_27();
  v0[18] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v0[19] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v0[20] = v15;
  v17 = *(v16 + 64);
  v0[21] = OUTLINED_FUNCTION_27();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v18 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator();
  v0[27] = v18;
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  v0[28] = OUTLINED_FUNCTION_28();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 256);
  *v3 = *v1;
  *(v2 + 264) = v6;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 280);
  *v3 = *v1;
  *(v2 + 288) = v6;
  *(v2 + 296) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v97 = v0;
  v1 = v0[33];
  if (!v0[36])
  {
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[29];
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v0[28]);

    goto LABEL_8;
  }

  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  dispatch thunk of DateTime.dateComponents.getter();
  Calendar.date(from:)();
  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_13_5();
  v8(v9);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v10 = v0[33];
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v14 = v0[18];
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v0[28]);

    v15 = v14;
LABEL_7:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_8;
  }

  v19 = v0[19];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[14];
  v23 = v0[11];
  v92 = *(v0[20] + 32);
  v92(v0[26], v0[18], v19);
  dispatch thunk of DateTime.dateComponents.getter();
  Calendar.date(from:)();
  v24 = OUTLINED_FUNCTION_13_5();
  v8(v24);
  if (__swift_getEnumTagSinglePayload(v20, 1, v19) == 1)
  {
    v25 = v0[33];
    v27 = v0[30];
    v26 = v0[31];
    v29 = v0[28];
    v28 = v0[29];
    v30 = v0[26];
    v32 = v0[19];
    v31 = v0[20];
    v33 = v0[17];

    (*(v31 + 8))(v30, v32);
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v29);
    v15 = v33;
    goto LABEL_7;
  }

  v92(v0[25], v0[17], v0[19]);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v49 = v0[25];
  v48 = v0[26];
  v51 = v0[23];
  v50 = v0[24];
  v52 = v0[19];
  v53 = v0[20];
  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.voiceCommands);
  v55 = *(v53 + 16);
  v55(v50, v48, v52);
  v91 = v55;
  v55(v51, v49, v52);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  v58 = os_log_type_enabled(v56, v57);
  v60 = v0[23];
  v59 = v0[24];
  v62 = v0[19];
  v61 = v0[20];
  if (v58)
  {
    v63 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v63 = 136315394;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = v57;
    v66 = v65;
    v67 = *(v61 + 8);
    v67(v59, v62);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v96);
    OUTLINED_FUNCTION_20_14();

    *(v63 + 4) = v59;
    *(v63 + 12) = 2080;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v71 = OUTLINED_FUNCTION_75();
    v94 = v67;
    (v67)(v71);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v96);
    OUTLINED_FUNCTION_20_14();

    *(v63 + 14) = v68;
    _os_log_impl(&dword_0, v56, v88, "NLUUserDialogActInputUtils: dateIntervalValue() returned %s and %s", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v72 = *(v61 + 8);
    v72(v60, v62);
    v94 = v72;
    v72(v59, v62);
  }

  v74 = v0[25];
  v73 = v0[26];
  v75 = v0[20];
  v76 = static Date.< infix(_:_:)();
  v77 = v0[31];
  log = v0[33];
  v78 = v0[29];
  v89 = v0[28];
  v80 = v0[25];
  v79 = v0[26];
  v82 = v0[21];
  v81 = v0[22];
  v83 = v0[19];
  v84 = v0[7];
  if (v76)
  {
    v91(v0[22], v0[26], v0[19]);
    v85 = OUTLINED_FUNCTION_31_16();
  }

  else
  {
    v91(v0[22], v0[25], v0[19]);
    v85 = v82;
    v86 = v79;
  }

  v91(v85, v86, v83);
  DateInterval.init(start:end:)();

  v94(v80, v83);
  v94(v79, v83);
  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v89);
LABEL_8:
  v34 = v0[28];
  v36 = v0[25];
  v35 = v0[26];
  v38 = v0[23];
  v37 = v0[24];
  v40 = v0[21];
  v39 = v0[22];
  v90 = v0[18];
  v93 = v0[17];
  v95 = v0[16];
  v41 = v0[7];
  type metadata accessor for DateInterval();
  v42 = OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_52_10(v42, v43, v44, v45);

  OUTLINED_FUNCTION_6_7();

  return v46();
}

uint64_t Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v15[13];
  if (Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {

    static UsoTask_CodegenConverter.convert(task:)();
    OUTLINED_FUNCTION_22_23();

    if (v15[5])
    {
      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_68_11();
        OUTLINED_FUNCTION_1_18();

        dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTimeRange.getter();
        OUTLINED_FUNCTION_59_9();

        if (v14)
        {
          v18 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
          v15[29] = v18;

          if (v18)
          {
            v19 = DateTime.DateTimeRange.start.getter();
            v15[30] = v19;
            if (v19)
            {
              v20 = DateTime.DateTimeRange.end.getter();
              v15[31] = v20;
              if (v20)
              {
                v22 = v15[27];
                v21 = v15[28];
                v24 = v15[11];
                v23 = v15[12];
                v26 = v15[9];
                v25 = v15[10];
                outlined init with copy of DeviceState(v15[8], v21);
                outlined init with copy of DeviceState(v26, v21 + 40);
                v27 = v22[6];
                v28 = type metadata accessor for Locale();
                OUTLINED_FUNCTION_4_11(v28);
                (*(v29 + 16))(v21 + v27, v25);
                v30 = v22[7];
                v31 = type metadata accessor for Calendar();
                OUTLINED_FUNCTION_4_11(v31);
                (*(v32 + 16))(v21 + v30, v24);
                v33 = v22[8];
                v34 = type metadata accessor for TimeZone();
                OUTLINED_FUNCTION_4_11(v34);
                (*(v35 + 16))(v21 + v33, v23);
                v36 = swift_task_alloc();
                v15[32] = v36;
                *v36 = v15;
                OUTLINED_FUNCTION_65_9(v36);
                OUTLINED_FUNCTION_6_1();

                return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
              }
            }
          }
        }
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?((v15 + 2), &_sypSgMd, &_sypSgMR);
    }
  }

  v39 = v15[28];
  OUTLINED_FUNCTION_24_22();
  v40 = v15[18];
  v54 = v15[17];
  v55 = v15[16];
  v41 = v15[7];
  type metadata accessor for DateInterval();
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[31];
  if (v14[33])
  {
    v16 = swift_task_alloc();
    v14[35] = v16;
    *v16 = v14;
    OUTLINED_FUNCTION_65_9(v16);
    OUTLINED_FUNCTION_6_1();

    return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
  }

  else
  {
    v20 = v14[29];
    v19 = v14[30];
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v14[28]);

    v21 = v14[28];
    OUTLINED_FUNCTION_24_22();
    v22 = v14[18];
    v36 = v14[17];
    v37 = v14[16];
    v23 = v14[7];
    type metadata accessor for DateInterval();
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_6_1();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v36, v37, a12, a13, a14);
  }
}

uint64_t Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v14 = v12[30];
  v13 = v12[31];
  v16 = v12[28];
  v15 = v12[29];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v16);
  v30 = v12[34];
  v17 = v12[28];
  OUTLINED_FUNCTION_24_22();
  v19 = v12[17];
  v18 = v12[18];
  v20 = v12[16];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  v13 = v12[33];
  v14 = v12[30];
  v15 = v12[31];
  v17 = v12[28];
  v16 = v12[29];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v17);
  v31 = v12[37];
  v18 = v12[28];
  OUTLINED_FUNCTION_24_22();
  v20 = v12[17];
  v19 = v12[18];
  v21 = v12[16];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t Siri_Nlu_External_UserDialogAct.placemarkValue(locationResolving:locationProviding:locale:timeZone:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  v0[2] = OUTLINED_FUNCTION_28();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[3] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v0[4] = v5;
  v7 = *(v6 + 64);
  v0[5] = OUTLINED_FUNCTION_28();
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_37_13(v8);

  return Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 48);
  v10 = *v1;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_58_8();
  if (__swift_getEnumTagSinglePayload(v3, v4, v5) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    v6 = 0;
  }

  else
  {
    v8 = v0[4];
    v7 = v0[5];
    (*(v8 + 32))(v7, v1, v2);
    v6 = static InputUtils.getPlacemark(_:)();
    (*(v8 + 8))(v7, v2);
  }

  v9 = v0[5];
  v10 = v0[2];

  v11 = v0[1];

  return v11(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[5];
  v2 = v0[2];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[7];

  return v3();
}

Class Siri_Nlu_External_UserDialogAct.personValue(contactResolver:locale:)(uint64_t a1, uint64_t a2)
{
  v164 = a1;
  v163 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  v157 = &v149 - v7;
  v8 = type metadata accessor for Contact();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v160 = v10;
  v161 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_50_0();
  v158 = v13 - v14;
  __chkstk_darwin(v15);
  v159 = &v149 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_50_0();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v149 - v25;
  v27 = type metadata accessor for ContactResolverConfig();
  v28 = OUTLINED_FUNCTION_7_1(v27);
  v162 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = type metadata accessor for ContactQuery();
  v36 = OUTLINED_FUNCTION_7_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_50_0();
  v43 = (v41 - v42);
  __chkstk_darwin(v44);
  v46 = &v149 - v45;
  v47 = v165;
  v48 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v47)
  {
    isa = v48;
    v155 = v43;
    v156 = v34;
    v150 = v23;
    v151 = v26;
    v165 = v46;
    v152 = v27;
    v153 = v38;
    v154 = v35;
    if (v48)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (!v166[3])
      {
        v68 = &_sypSgMd;
        v69 = &_sypSgMR;
        v70 = v166;
LABEL_11:
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v70, v68, v69);
        return 0;
      }

      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v49 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

      if (!v49)
      {
        return 0;
      }

      if (dispatch thunk of UsoEntity_common_VoiceCommandPayload.agent.getter())
      {
        CodeGenBase.entity.getter();
      }

      v51 = v164;
      v50 = v165;
      v52 = v163;
      v53 = v155;
      type metadata accessor for UsoEntity_common_Person();
      OUTLINED_FUNCTION_63_9();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      v54 = v166[0];
      if (!v166[0])
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v72, static Logger.voiceCommands);
        v73 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v74 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v74, v75))
        {
          OUTLINED_FUNCTION_18_1();
          v76 = swift_slowAlloc();
          OUTLINED_FUNCTION_44_2(v76);
          OUTLINED_FUNCTION_21_6(&dword_0, v77, v78, "#NLUUserDialogActInputUtils: Could not create ContactQuery from parse");
          OUTLINED_FUNCTION_15_1();
        }

        return 0;
      }

      v164 = v49;

      UsoEntity_common_Person.toContactQuery()();

      v163 = v54;
      v55 = v53;
      v57 = v153;
      v56 = v154;
      (*(v153 + 32))(v50, v55, v154);
      v58 = v51;
      v59 = v51[3];
      v60 = v58[4];
      __swift_project_boxed_opaque_existential_1(v58, v59);
      (*(v60 + 8))(v52, v59, v60);
      v61 = v58[4];
      v155 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      v62 = *(v57 + 72);
      v63 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_216850;
      (*(v57 + 16))(v64 + v63, v50, v56);
      v65 = *(v61 + 16);
      v66 = OUTLINED_FUNCTION_31_16();
      v79 = v67(v66);
      v80 = v50;

      v81 = v151;
      specialized Collection.first.getter(v79, v151);

      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
      OUTLINED_FUNCTION_58_8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, v84, v85);
      v87 = v152;
      v88 = v162;
      if (EnumTagSinglePayload == 1)
      {
LABEL_20:
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v89, static Logger.voiceCommands);
        v90 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        v91 = OUTLINED_FUNCTION_17_18();
        v93 = os_log_type_enabled(v91, v92);
        v95 = v153;
        v94 = v154;
        if (v93)
        {
          OUTLINED_FUNCTION_18_1();
          v96 = swift_slowAlloc();
          OUTLINED_FUNCTION_44_2(v96);
          OUTLINED_FUNCTION_21_6(&dword_0, v97, v98, "#NLUUserDialogActInputUtils ContactResolver could not recommend a contact");
          OUTLINED_FUNCTION_15_1();
        }

        (*(v88 + 8))(v156, v87);
        (*(v95 + 8))(v165, v94);
        v68 = &_s13SiriInference14RecommendationOyAA7ContactVGSgMd;
        v69 = &_s13SiriInference14RecommendationOyAA7ContactVGSgMR;
        v70 = v81;
        goto LABEL_11;
      }

      v99 = v150;
      outlined init with copy of SiriWorkflowRunnerEvent?(v81, v150, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
      v100 = *(v82 - 8);
      v101 = (*(v100 + 88))(v99, v82);
      if (v101 == enum case for Recommendation.confident<A>(_:))
      {
        v102 = OUTLINED_FUNCTION_42_13();
        v103(v102);
        v104 = v99;
        v105 = v159;
        (*(v160 + 32))(v159, v104, v161);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v106, static Logger.voiceCommands);
        v107 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v108 = OUTLINED_FUNCTION_17_18();
        v110 = os_log_type_enabled(v108, v109);
        v111 = v154;
        if (v110)
        {
          OUTLINED_FUNCTION_18_1();
          v112 = swift_slowAlloc();
          OUTLINED_FUNCTION_44_2(v112);
          OUTLINED_FUNCTION_21_6(&dword_0, v113, v114, "#NLUUserDialogActInputUtils ContactResolver confidently recommended a contact");
          OUTLINED_FUNCTION_15_1();
        }

        isa = Contact.toINPerson()().super.isa;

        (*(v160 + 8))(v105, v161);
        v115 = OUTLINED_FUNCTION_43_11();
        v116(v115);
        OUTLINED_FUNCTION_54_10();
        v118 = v50;
      }

      else
      {
        if (v101 != enum case for Recommendation.needsConfirmation<A>(_:))
        {
          if (v101 != enum case for Recommendation.needsDisambiguation<A>(_:))
          {
            (*(v100 + 8))(v99, v82);
            goto LABEL_20;
          }

          v130 = OUTLINED_FUNCTION_42_13();
          v131(v130);
          v132 = *v99;
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0_1();
            swift_once();
          }

          v133 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v133, static Logger.voiceCommands);
          v134 = Logger.logObject.getter();
          static os_log_type_t.info.getter();
          v135 = OUTLINED_FUNCTION_17_18();
          if (os_log_type_enabled(v135, v136))
          {
            OUTLINED_FUNCTION_18_1();
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_81(&dword_0, v137, v138, "#NLUUserDialogActInputUtils ContactResolver call returned needsDisambiguation which is unsupported, picking first one");
            OUTLINED_FUNCTION_15_1();
          }

          v139 = v157;
          specialized Collection.first.getter(v132, v157);

          v140 = v161;
          if (__swift_getEnumTagSinglePayload(v139, 1, v161) == 1)
          {

            v141 = OUTLINED_FUNCTION_43_11();
            v142(v141);
            OUTLINED_FUNCTION_54_10();
            v143 = OUTLINED_FUNCTION_13_5();
            v144(v143);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(v139, &_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
            isa = 0;
          }

          else
          {
            isa = Contact.toINPerson()().super.isa;

            v145 = OUTLINED_FUNCTION_43_11();
            v146(v145);
            OUTLINED_FUNCTION_54_10();
            v147 = OUTLINED_FUNCTION_13_5();
            v148(v147);
            (*(v160 + 8))(v139, v140);
          }

LABEL_38:
          outlined destroy of Siri_Nlu_External_UserDialogAct?(v81, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
          return isa;
        }

        v119 = OUTLINED_FUNCTION_42_13();
        v120(v119);
        v121 = v99;
        v122 = v158;
        (*(v160 + 32))(v158, v121, v161);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v123 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v123, static Logger.voiceCommands);
        v124 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        v125 = OUTLINED_FUNCTION_17_18();
        v127 = os_log_type_enabled(v125, v126);
        v111 = v154;
        if (v127)
        {
          OUTLINED_FUNCTION_18_1();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_81(&dword_0, v128, v129, "#NLUUserDialogActInputUtils ContactResolver call returned needsConfirmation which is unsupported, returning contact");
          v80 = v165;
          OUTLINED_FUNCTION_15_1();
        }

        isa = Contact.toINPerson()().super.isa;

        (*(v160 + 8))(v122, v161);
        (*(v88 + 8))(v156, v87);
        OUTLINED_FUNCTION_54_10();
        v118 = v80;
      }

      v117(v118, v111);
      goto LABEL_38;
    }
  }

  return isa;
}

uint64_t Siri_Nlu_External_UserDialogAct.BOOLValue.getter()
{
  v71 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = OUTLINED_FUNCTION_7_1(v71);
  v69 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  v70 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v16 = OUTLINED_FUNCTION_7_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v25 = OUTLINED_FUNCTION_7_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
  {
    return 1;
  }

  if (Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
  {
    return 0;
  }

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v27 + 8))(v32, v24);
  v35 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v18 + 8))(v23, v15);
  v67 = *(v35 + 16);
  if (!v67)
  {
LABEL_28:

    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v36 = 0;
  v68 = v35 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  while (v36 < *(v35 + 16))
  {
    v37 = v35;
    (*(v70 + 16))(v14, v68 + *(v70 + 72) * v36, v7);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v38 = Google_Protobuf_StringValue.value.getter();
    v40 = v39;
    (*(v69 + 8))(v6, v71);
    if (v38 == 0xD000000000000018 && 0x8000000000232140 == v40)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        v43 = OUTLINED_FUNCTION_26_24();
        v44(v43);
        goto LABEL_27;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x747065636361 && v45 == 0xE600000000000000)
    {

LABEL_33:
      v63 = OUTLINED_FUNCTION_26_24();
      v64(v63);

      return 1;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      goto LABEL_33;
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x7463656A6572 && v48 == 0xE600000000000000)
    {

      v65 = OUTLINED_FUNCTION_26_24();
      v66(v65);
LABEL_35:

      return 0;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v51 = OUTLINED_FUNCTION_26_24();
    v52(v51);
    if (v50)
    {
      goto LABEL_35;
    }

LABEL_27:
    ++v36;
    v35 = v37;
    if (v67 == v36)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_37:
  OUTLINED_FUNCTION_0_1();
  swift_once();
LABEL_29:
  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.voiceCommands);
  v54 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v55 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v55, v56))
  {
    v33 = 2;
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_44_14();
    _os_log_impl(v57, v58, v59, v60, v61, v62);
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    return 2;
  }

  return v33;
}

uint64_t Siri_Nlu_External_UserDialogAct.measurementValue(locale:)()
{
  v3 = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (v1)
  {
    return v0;
  }

  if (v3)
  {

    v4 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

    if (v4)
    {
      dispatch thunk of UsoEntity_common_VoiceCommandPayload.measurement.getter();
      OUTLINED_FUNCTION_48_11();

      if (v2)
      {
        v5 = dispatch thunk of UsoEntity_common_Measurement.components.getter();
        if (v5)
        {
          v6 = v5;
          if (!specialized Array.count.getter(v5))
          {

            goto LABEL_14;
          }

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
          if ((v6 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(v6 + 32);
          }

          dispatch thunk of CodeGenListEntry.entry.getter();

          if (v16)
          {
            v0 = UsoEntity_common_MeasurementComponent.measurementValue(locale:)();

            return v0;
          }
        }
      }
    }
  }

LABEL_14:
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v8, static Logger.voiceCommands);
  v9 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v10 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_18_1();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_44_2(v12);
    OUTLINED_FUNCTION_21_6(&dword_0, v13, v14, "#NLUUserDialogActInputUtils: Unable to extract measurement component from parse");
    OUTLINED_FUNCTION_15_1();
  }

  return 0;
}

id Siri_Nlu_External_UserDialogAct.currencyValue(locale:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for UsoIdentifier();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  v22 = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (!v2)
  {
    v23 = v22;
    if (!v22)
    {
LABEL_12:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v28, static Logger.voiceCommands);
      v29 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v30 = OUTLINED_FUNCTION_17_18();
      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_18_1();
        v32 = swift_slowAlloc();
        OUTLINED_FUNCTION_44_2(v32);
        OUTLINED_FUNCTION_21_6(&dword_0, v33, v34, "#NLUUserDialogActInputUtils: Unable to extract currency information from parse");
        OUTLINED_FUNCTION_15_1();
      }

      return 0;
    }

    v24 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

    if (!v24 || (v75 = a1, dispatch thunk of UsoEntity_common_VoiceCommandPayload.currency.getter(), OUTLINED_FUNCTION_35_17(), , !a1))
    {
LABEL_11:

      goto LABEL_12;
    }

    v25 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
    if (!v25)
    {
LABEL_10:

      goto LABEL_11;
    }

    v73 = a1;
    v74 = v25;
    if (!dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter() || (v68 = UsoEntity_common_Number.doubleValue.getter(), v27 = v26, , (v27 & 1) != 0))
    {

      goto LABEL_10;
    }

    v36 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
    if (v36)
    {
      v72 = *(v36 + 16);
      if (v72)
      {
        v66 = v9;
        v67 = v23;
        v37 = 0;
        v70 = v36 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v69 = v13 + 16;
        v71 = (v13 + 8);
        while (v37 < *(v36 + 16))
        {
          v9 = v36;
          (*(v13 + 16))(v18, v70 + *(v13 + 72) * v37, v10);
          v38 = UsoIdentifier.namespace.getter();
          if (v39)
          {
            if (v38 == 0x79636E6572727563 && v39 == 0xEC00000074696E55)
            {

LABEL_34:

              (*(v13 + 32))(v21, v18, v10);
              v72 = UsoIdentifier.value.getter();
              v18 = v42;
              (*(v13 + 8))(v21, v10);
LABEL_35:
              v9 = v66;
              goto LABEL_36;
            }

            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v41)
            {
              goto LABEL_34;
            }
          }

          ++v37;
          (*v71)(v18, v10);
          v36 = v9;
          if (v72 == v37)
          {

            v72 = 0;
            v18 = 0;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    v72 = 0;
    v18 = 0;
LABEL_36:
    if (one-time initialization token for voiceCommands == -1)
    {
LABEL_37:
      v43 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v43, static Logger.voiceCommands);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v76 = v47;
        *v46 = 136315138;
        if (v18)
        {
          v48 = v72;
        }

        else
        {
          v48 = 0x296C696E28;
        }

        LODWORD(v71) = v45;
        if (v18)
        {
          v49 = v18;
        }

        else
        {
          v49 = 0xE500000000000000;
        }

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v76);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_0, v44, v71, "#NLUUserDialogActInputUtils: Currency parser received unit with identifier: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        OUTLINED_FUNCTION_15_1();

        OUTLINED_FUNCTION_15_1();
      }

      if (v18)
      {

        v51._countAndFlagsBits = 0x756F756769626D61;
        v51._object = 0xE900000000000073;
        v52 = String.hasPrefix(_:)(v51);

        if (!v52)
        {
          v56 = String.uppercased()();
          countAndFlagsBits = v56._countAndFlagsBits;
          object = v56._object;

          goto LABEL_52;
        }

        Locale.currency.getter();
        v53 = type metadata accessor for Locale.Currency();
        if (__swift_getEnumTagSinglePayload(v9, 1, v53) != 1)
        {
          countAndFlagsBits = Locale.Currency.identifier.getter();
          object = v57;
          OUTLINED_FUNCTION_21_2(v53);
          v59 = *(v58 + 8);
          v60 = OUTLINED_FUNCTION_31_16();
          v61(v60);
          goto LABEL_52;
        }

        outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
      }

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
LABEL_52:
      v62 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) == 0)
      {
        v62 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        v63 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:*&v68];
        v64 = objc_allocWithZone(INCurrencyAmount);
        v1 = @nonobjc INCurrencyAmount.init(amount:currencyCode:)(v63);

        return v1;
      }

      return 0;
    }

LABEL_58:
    OUTLINED_FUNCTION_0_1();
    swift_once();
    goto LABEL_37;
  }

  return v1;
}

uint64_t Siri_Nlu_External_UserDialogAct.intValue.getter(uint64_t (*a1)(uint64_t))
{
  v4 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (v2)
  {
    return v1;
  }

  v1 = v4;
  if (!v4)
  {
    return v1;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  OUTLINED_FUNCTION_22_23();

  if (!v18)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v5 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_36_14(v5, v6, v7, v5, v8, v9, v10, v11, v14, v15);
  OUTLINED_FUNCTION_21_20();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v16;
  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
  OUTLINED_FUNCTION_20_14();

  if (v16)
  {
    dispatch thunk of UsoEntity_common_VoiceCommandPayload.number.getter();
    OUTLINED_FUNCTION_35_17();

    v1 = a1(v12);
  }

  return v1;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandPagination_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Siri_Nlu_External_UserDialogAct.paginationValue()()
{
  result.value = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v0)
  {
    static UsoTask_CodegenConverter.convert(task:)();

    outlined init with copy of SiriWorkflowRunnerEvent?(&v4, &v2, &_sypSgMd, &_sypSgMR);
    if (*(&v3 + 1))
    {
      type metadata accessor for UsoTask_skipForward_uso_NoEntity();
      if (OUTLINED_FUNCTION_27_18())
      {

        outlined destroy of Siri_Nlu_External_UserDialogAct?(&v4, &_sypSgMd, &_sypSgMR);
        return 0;
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v2, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of SiriWorkflowRunnerEvent?(&v4, &v2, &_sypSgMd, &_sypSgMR);
    if (*(&v3 + 1))
    {
      type metadata accessor for UsoTask_skipBackward_uso_NoEntity();
      if (OUTLINED_FUNCTION_27_18())
      {

        outlined destroy of Siri_Nlu_External_UserDialogAct?(&v4, &_sypSgMd, &_sypSgMR);
        return 1;
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v2, &_sypSgMd, &_sypSgMR);
    }

    v2 = v4;
    v3 = v5;
    if (*(&v5 + 1))
    {
      type metadata accessor for UsoTask_repeat_uso_NoEntity();
      if (OUTLINED_FUNCTION_27_18())
      {

        return 2;
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v2, &_sypSgMd, &_sypSgMR);
    }

    return 3;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_30(v1, v2, v3, v4, v5, v6);
  v7 = type metadata accessor for DateComponents();
  v0[14] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[15] = v8;
  v10 = *(v9 + 64);
  v0[16] = OUTLINED_FUNCTION_27();
  v0[17] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator();
  v0[18] = v11;
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  v0[19] = OUTLINED_FUNCTION_28();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  *(v2 + 176) = v6;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = v0[19];
  v1 = v0[20];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v2);
  v3 = v0[23];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v20 = v14[13];
  if (Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {

    static UsoTask_CodegenConverter.convert(task:)();
    OUTLINED_FUNCTION_22_23();

    if (v14[5])
    {
      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_68_11();
        OUTLINED_FUNCTION_1_18();

        dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter();
        OUTLINED_FUNCTION_48_11();

        if (v16)
        {
          v23 = v14[18];
          v22 = v14[19];
          v14[20] = OUTLINED_FUNCTION_45_9();

          outlined init with copy of DeviceState(v19, v22);
          outlined init with copy of DeviceState(v18, v22 + 40);
          v24 = v23[6];
          v25 = type metadata accessor for Locale();
          OUTLINED_FUNCTION_4_11(v25);
          (*(v26 + 16))(v22 + v24, v17);
          v27 = v23[7];
          v28 = type metadata accessor for Calendar();
          OUTLINED_FUNCTION_4_11(v28);
          (*(v29 + 16))(v22 + v27, v15);
          v30 = v23[8];
          v31 = type metadata accessor for TimeZone();
          OUTLINED_FUNCTION_4_11(v31);
          (*(v32 + 16))(v22 + v30, a10);
          v33 = swift_task_alloc();
          v14[21] = v33;
          *v33 = v14;
          v33[1] = Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:);
          v34 = v14[19];
          OUTLINED_FUNCTION_6_1();

          return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
        }
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?((v14 + 2), &_sypSgMd, &_sypSgMR);
    }
  }

  v37 = v14[7];
  type metadata accessor for Date();
  OUTLINED_FUNCTION_62_9();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = v14[19];
  v43 = v14[16];
  v44 = v14[17];

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v13 = v12[20];
  if (v12[22])
  {
    v15 = v12[16];
    v14 = v12[17];
    v17 = v12[14];
    v16 = v12[15];
    v18 = v12[11];
    v19 = v12[7];
    a9 = v12[19];

    dispatch thunk of DateTime.dateComponents.getter();

    v20 = *(v16 + 32);
    v21 = OUTLINED_FUNCTION_13_5();
    v22(v21);
    Calendar.date(from:)();

    (*(v16 + 8))(v14, v17);
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(a9);
  }

  else
  {
    v23 = v12[7];
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v12[19]);

    type metadata accessor for Date();
    OUTLINED_FUNCTION_62_9();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }

  v28 = v12[19];
  v29 = v12[16];
  v30 = v12[17];

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t Siri_Nlu_External_UserDialogAct.durationValue()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for UsoEntity_common_TimeUnit.DefinedValues();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  __chkstk_darwin(v9);
  result = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (!v0)
  {
    if (result)
    {

      v11 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

      if (v11)
      {
        dispatch thunk of UsoEntity_common_VoiceCommandPayload.measurement.getter();
        OUTLINED_FUNCTION_59_9();
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v14 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_18_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_44_14();
      _os_log_impl(v16, v17, v18, v19, v20, v21);
      OUTLINED_FUNCTION_15_1();
    }

    return 0;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.recurrenceRuleValue(calendar:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v1[11] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[12] = v5;
  v7 = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for Calendar.MatchingPolicy();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for Calendar.RecurrenceRule.End();
  OUTLINED_FUNCTION_14(v12);
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Calendar();
  v1[18] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[19] = v16;
  v18 = *(v17 + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for Calendar.RecurrenceRule.Frequency();
  v1[21] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[22] = v20;
  v22 = *(v21 + 64);
  v1[23] = OUTLINED_FUNCTION_27();
  v1[24] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8DateTimeC0D4UnitOSgMd, &_s13SiriInference8DateTimeC0D4UnitOSgMR);
  OUTLINED_FUNCTION_14(v23);
  v25 = *(v24 + 64);
  v1[25] = OUTLINED_FUNCTION_28();
  v26 = type metadata accessor for DateTime.TimeUnit();
  v1[26] = v26;
  OUTLINED_FUNCTION_5_0(v26);
  v1[27] = v27;
  v29 = *(v28 + 64);
  v1[28] = OUTLINED_FUNCTION_27();
  v1[29] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v30, v31, v32);
}

{
  v3 = v1[10];
  if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {
    goto LABEL_17;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  OUTLINED_FUNCTION_22_23();

  if (!v1[5])
  {
    v8 = &_sypSgMd;
    v9 = &_sypSgMR;
    v10 = (v1 + 2);
    goto LABEL_13;
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_21_20();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_68_11();
  OUTLINED_FUNCTION_1_18();

  dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTimeRange.getter();
  OUTLINED_FUNCTION_59_9();

  if (!v0)
  {
    goto LABEL_17;
  }

  CodeGenBase.entity.getter();
  OUTLINED_FUNCTION_1_18();

  type metadata accessor for UsoEntity_common_RecurringDateTimeRange();
  OUTLINED_FUNCTION_63_9();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v1[7])
  {
LABEL_16:

    goto LABEL_17;
  }

  v4 = v1[7];
  if (!dispatch thunk of UsoEntity_common_RecurringDateTimeRange.recurrencePattern.getter() || (UsoEntity_common_RecurringDateTime.toRecurrencePattern()(), OUTLINED_FUNCTION_35_17(), , !v2))
  {
LABEL_15:

    goto LABEL_16;
  }

  if (!DateTime.RecurrencePattern.recurrencePeriod.getter())
  {

    goto LABEL_15;
  }

  v6 = v1[25];
  v5 = v1[26];
  DateTime.Interval.timeUnit.getter();
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) != 1)
  {
    (*(v1[27] + 32))(v1[29], v1[25], v1[26]);
    *&result = COERCE_DOUBLE(DateTime.Interval.quantity.getter());
    if (v26)
    {
      v27 = 1;
LABEL_28:
      v28 = v1[27];
      (*(v28 + 16))(v1[28], v1[29], v1[26]);
      v29 = *(v28 + 88);
      v30 = OUTLINED_FUNCTION_13_5();
      v32 = v31(v30);
      if (v32 == enum case for DateTime.TimeUnit.day(_:))
      {
        v33 = &enum case for Calendar.RecurrenceRule.Frequency.daily(_:);
LABEL_30:
        v34 = OUTLINED_FUNCTION_56_6(v33);
        v35(v34);
LABEL_33:
        v63 = v1[29];
        v61 = v1[27];
        v62 = v1[26];
        v36 = v1[23];
        v37 = v1[24];
        v38 = v1[22];
        v64 = v1[21];
        v39 = v1[20];
        v41 = v1[17];
        v40 = v1[18];
        v43 = v1[15];
        v42 = v1[16];
        v56 = v42;
        v57 = v1[14];
        v58 = v1[13];
        v44 = v1[12];
        v59 = v1[11];
        v45 = v1[9];
        v60 = v1[8];
        (*(v1[19] + 16))();
        (*(v38 + 16))(v36, v37, v64);
        static Calendar.RecurrenceRule.End.never.getter();
        (*(v43 + 104))(v56, enum case for Calendar.MatchingPolicy.nextTimePreservingSmallerComponents(_:), v57);
        (*(v44 + 104))(v58, enum case for Calendar.RepeatedTimePolicy.first(_:), v59);
        Calendar.RecurrenceRule.init(calendar:frequency:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)();

        (*(v38 + 8))(v37, v64);
        (*(v61 + 8))(v63, v62);
        type metadata accessor for Calendar.RecurrenceRule();
        v12 = OUTLINED_FUNCTION_62_9();
        v14 = 0;
        goto LABEL_18;
      }

      if (v32 != enum case for DateTime.TimeUnit.fortnight(_:))
      {
        if (v32 == enum case for DateTime.TimeUnit.hour(_:))
        {
          v33 = &enum case for Calendar.RecurrenceRule.Frequency.hourly(_:);
        }

        else if (v32 == enum case for DateTime.TimeUnit.minute(_:))
        {
          v33 = &enum case for Calendar.RecurrenceRule.Frequency.minutely(_:);
        }

        else
        {
          v33 = &enum case for Calendar.RecurrenceRule.Frequency.monthly(_:);
          if (v32 != enum case for DateTime.TimeUnit.month(_:))
          {
            if (v32 == enum case for DateTime.TimeUnit.quarterOfYear(_:))
            {
              v46 = OUTLINED_FUNCTION_56_6(&enum case for Calendar.RecurrenceRule.Frequency.monthly(_:));
              v32 = v47(v46);
              if ((v27 * 3) >> 64 == (3 * v27) >> 63)
              {
                goto LABEL_33;
              }

              __break(1u);
            }

            if (v32 == enum case for DateTime.TimeUnit.week(_:))
            {
              v33 = &enum case for Calendar.RecurrenceRule.Frequency.weekly(_:);
            }

            else
            {
              if (v32 != enum case for DateTime.TimeUnit.year(_:))
              {
                v48 = v1[28];
                v49 = v1[8];
                v50 = *(v1[27] + 8);
                (v50)(v1[29], v1[26]);

                type metadata accessor for Calendar.RecurrenceRule();
                OUTLINED_FUNCTION_37_2();
                __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
                v55 = OUTLINED_FUNCTION_13_5();
                v50(v55);
                goto LABEL_19;
              }

              v33 = &enum case for Calendar.RecurrenceRule.Frequency.yearly(_:);
            }
          }
        }

        goto LABEL_30;
      }

      *&result = COERCE_DOUBLE((*(v1[22] + 104))(v1[24], enum case for Calendar.RecurrenceRule.Frequency.weekly(_:), v1[21]));
      if (v27 + 0x4000000000000000 >= 0)
      {
        goto LABEL_33;
      }

LABEL_50:
      __break(1u);
      return result;
    }

    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        if (*&result < 9.22337204e18)
        {
          v27 = *&result;
          goto LABEL_28;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_49;
  }

  v7 = v1[25];

  v8 = &_s13SiriInference8DateTimeC0D4UnitOSgMd;
  v9 = &_s13SiriInference8DateTimeC0D4UnitOSgMR;
  v10 = v7;
LABEL_13:
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, v8, v9);
LABEL_17:
  v11 = v1[8];
  type metadata accessor for Calendar.RecurrenceRule();
  v12 = OUTLINED_FUNCTION_62_9();
  v14 = 1;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v12, v14, 1, v13);
LABEL_19:
  v16 = v1[28];
  v15 = v1[29];
  v18 = v1[24];
  v17 = v1[25];
  v19 = v1[23];
  v20 = v1[20];
  v22 = v1[16];
  v21 = v1[17];
  v23 = v1[13];

  OUTLINED_FUNCTION_6_7();

  *&result = COERCE_DOUBLE(v24());
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.placeDescriptorValue(locationResolving:locationProviding:locale:timeZone:)()
{
  OUTLINED_FUNCTION_15_2();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[4] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v0[5] = v6;
  v8 = *(v7 + 64);
  v0[6] = OUTLINED_FUNCTION_28();
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_37_13(v9);

  return Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 56);
  v10 = *v1;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v1 = v0[4];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[2];
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    type metadata accessor for PlaceDescriptor();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v1);
    if (static InputUtils.getPlacemark(_:)())
    {
      v8 = v0[2];
      PlaceDescriptor.init(placemark:)();
    }

    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    v12 = v0[2];
    v13 = type metadata accessor for PlaceDescriptor();
    OUTLINED_FUNCTION_52_10(v12, v14, v15, v13);
    v16 = *(v10 + 8);
    v17 = OUTLINED_FUNCTION_9_3();
    v18(v17);
  }

  v19 = v0[6];
  v20 = v0[3];

  OUTLINED_FUNCTION_6_7();

  return v21();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[6];
  v2 = v0[3];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[8];

  return v3();
}

uint64_t Siri_Nlu_External_UserDialogAct.personNameComponentsValue()@<X0>(uint64_t a1@<X8>)
{
  result = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v1)
  {
    if (result)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v11[3])
      {
        type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_35_17();

          if (v2)
          {
            if (dispatch thunk of UsoEntity_common_VoiceCommandPayload.agent.getter())
            {
              CodeGenBase.entity.getter();
            }

            type metadata accessor for UsoEntity_common_Person();
            OUTLINED_FUNCTION_63_9();
            static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

            if (v11[0])
            {
              dispatch thunk of UsoEntity_common_Person.name.getter();
              if (v5)
              {
                PersonNameComponents.init(_:)();
                v6 = type metadata accessor for PersonNameComponents();
                __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
              }
            }
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_sypSgMd, &_sypSgMR);
      }
    }

    type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.entityValue.getter()
{
  v4 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v1)
  {
    v0 = v4;
    if (v4)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v19)
      {
        v5 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_36_14(v5, v6, v7, v5, v8, v9, v10, v11, v16, v17);
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_35_17();

          if (v3)
          {
            v12 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.appEntity.getter();
            if (v12)
            {
              v13 = v12;
              v14 = dispatch thunk of UsoEntity_common_AppEntity.type.getter();
              if (v14)
              {
                v0 = v14;
                dispatch thunk of UsoEntity_common_AppEntityType.name.getter();
                OUTLINED_FUNCTION_64_6();

                if (v2)
                {

LABEL_15:

                  return v0;
                }
              }

              v0 = v13;
              dispatch thunk of UsoEntity_common_AppEntity.name.getter();
              OUTLINED_FUNCTION_64_6();

              if (v2)
              {
                goto LABEL_15;
              }
            }

            v0 = v3;
            dispatch thunk of UsoEntity_common_VoiceCommandPayload.stringValue.getter();
            OUTLINED_FUNCTION_64_6();
            goto LABEL_15;
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_sypSgMd, &_sypSgMR);
      }

      return 0;
    }
  }

  return v0;
}

_UNKNOWN **Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:)(int64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v9 = v93 - v8;
  v10 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v18 = (v16 - v17);
  __chkstk_darwin(v19);
  v21 = v93 - v20;
  Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (v2)
  {
    return v1;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v94[3])
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v94, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  OUTLINED_FUNCTION_21_20();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v27, static Logger.voiceCommands);
    v28 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v29 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_18_1();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_44_2(v31);
      OUTLINED_FUNCTION_21_6(&dword_0, v32, v33, "#NLUUserDialogActInputUtils task is not UsoTask_noVerb_uso_NoEntity");
      OUTLINED_FUNCTION_15_1();
    }

    return _swiftEmptyArrayStorage;
  }

  v22 = v94[5];

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v93[1] = v22;

  if (!v94[0] || (v23 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , !v23))
  {
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v10);
    goto LABEL_16;
  }

  dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
LABEL_16:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);

    return _swiftEmptyArrayStorage;
  }

  (*(v13 + 32))(v21, v9, v10);
  (*(v13 + 16))(v18, v21, v10);
  v24 = (*(v13 + 88))(v18, v10);
  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourth(_:))
  {

    v25 = OUTLINED_FUNCTION_3_56();
    v26(v25);
    return &outlined read-only object #3 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  v38 = v24;
  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Second(_:))
  {

    v39 = OUTLINED_FUNCTION_3_56();
    v40(v39);
    return &outlined read-only object #1 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Beginning(_:))
  {
LABEL_22:

    v41 = OUTLINED_FUNCTION_3_56();
    v42(v41);
    return &outlined read-only object #0 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFourth(_:))
  {

    v43 = OUTLINED_FUNCTION_3_56();
    v44(v43);
    return &outlined read-only object #23 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventeenth(_:))
  {

    v45 = OUTLINED_FUNCTION_3_56();
    v46(v45);
    return &outlined read-only object #16 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighth(_:))
  {

    v47 = OUTLINED_FUNCTION_3_56();
    v48(v47);
    return &outlined read-only object #7 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_ThirdToLast(_:))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v49 = OUTLINED_FUNCTION_64();
    *(v49 + 16) = xmmword_216850;
    v50 = a1 - 3;
    if (__OFSUB__(a1, 3))
    {
      __break(1u);
LABEL_62:
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_216840;
      *(v1 + 32) = a1 / 2 - 1;
      *(v1 + 40) = a1 / 2;
      goto LABEL_33;
    }

LABEL_31:
    v1 = v49;
LABEL_32:
    *(v49 + 32) = v50;
LABEL_33:

    v51 = OUTLINED_FUNCTION_3_56();
    v52(v51);
    return v1;
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixth(_:))
  {

    v53 = OUTLINED_FUNCTION_3_56();
    v54(v53);
    return &outlined read-only object #5 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Nineteenth(_:))
  {

    v55 = OUTLINED_FUNCTION_3_56();
    v56(v55);
    return &outlined read-only object #18 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFifth(_:))
  {

    v57 = OUTLINED_FUNCTION_3_56();
    v58(v57);
    return &outlined read-only object #24 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Ninth(_:))
  {

    v59 = OUTLINED_FUNCTION_3_56();
    v60(v59);
    return &outlined read-only object #8 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eleventh(_:))
  {

    v61 = OUTLINED_FUNCTION_3_56();
    v62(v61);
    return &outlined read-only object #10 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v24 != enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_End(_:))
  {
    goto LABEL_48;
  }

  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v49 = OUTLINED_FUNCTION_64();
    *(v49 + 16) = xmmword_216850;
    v50 = a1 - 1;
    if (!__OFSUB__(a1, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_48:
    if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourteenth(_:))
    {

      v63 = OUTLINED_FUNCTION_3_56();
      v64(v63);
      return &outlined read-only object #13 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
    }

    if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_SecondToLast(_:))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v49 = OUTLINED_FUNCTION_64();
      *(v49 + 16) = xmmword_216850;
      v50 = a1 - 2;
      if (!__OFSUB__(a1, 2))
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFirst(_:))
    {

      v65 = OUTLINED_FUNCTION_3_56();
      v66(v65);
      return &outlined read-only object #20 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
    }

    if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Middle(_:))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      if ((a1 & 0x8000000000000001) != 1)
      {
        goto LABEL_62;
      }

      v49 = OUTLINED_FUNCTION_64();
      v1 = v49;
      *(v49 + 16) = xmmword_216850;
      v50 = a1 >> 1;
      goto LABEL_32;
    }

    if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Thirteenth(_:))
    {

      v67 = OUTLINED_FUNCTION_3_56();
      v68(v67);
      return &outlined read-only object #12 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
    }
  }

  while (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:));
  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentySecond(_:))
  {

    v69 = OUTLINED_FUNCTION_3_56();
    v70(v69);
    return &outlined read-only object #21 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:))
  {
    goto LABEL_67;
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifteenth(_:))
  {

    v73 = OUTLINED_FUNCTION_3_56();
    v74(v73);
    return &outlined read-only object #14 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Current(_:))
  {
    goto LABEL_67;
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twentieth(_:))
  {

    v75 = OUTLINED_FUNCTION_3_56();
    v76(v75);
    return &outlined read-only object #19 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifth(_:))
  {

    v77 = OUTLINED_FUNCTION_3_56();
    v78(v77);
    return &outlined read-only object #4 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixteenth(_:))
  {

    v79 = OUTLINED_FUNCTION_3_56();
    v80(v79);
    return &outlined read-only object #15 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_First(_:))
  {
    goto LABEL_22;
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventh(_:))
  {

    v81 = OUTLINED_FUNCTION_3_56();
    v82(v81);
    return &outlined read-only object #6 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighteenth(_:))
  {

    v83 = OUTLINED_FUNCTION_3_56();
    v84(v83);
    return &outlined read-only object #17 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyThird(_:))
  {

    v85 = OUTLINED_FUNCTION_3_56();
    v86(v85);
    return &outlined read-only object #22 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twelfth(_:))
  {

    v87 = OUTLINED_FUNCTION_3_56();
    v88(v87);
    return &outlined read-only object #11 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Third(_:))
  {

    v89 = OUTLINED_FUNCTION_3_56();
    v90(v89);
    return &outlined read-only object #2 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v38 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
  {
LABEL_67:

    v71 = OUTLINED_FUNCTION_3_56();
    v72(v71);
    return _swiftEmptyArrayStorage;
  }

  v91 = enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Tenth(_:);

  v92 = *(v13 + 8);
  v92(v21, v10);
  if (v38 == v91)
  {
    return &outlined read-only object #9 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  v92(v18, v10);
  return _swiftEmptyArrayStorage;
}

uint64_t Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter()
{
  result = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v0)
  {
    if (result)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v13)
      {
        v2 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_36_14(v2, v3, v4, v2, v5, v6, v7, v8, v9, v10);
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }

      outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_sypSgMd, &_sypSgMR);
    }

    return 0;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_27();
  v1[5] = swift_task_alloc();
  v6 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v1[6] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v1[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for DateTimeResolutionSpec();
  v1[12] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  v1[15] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for Calendar.Identifier();
  v1[16] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v1[17] = v22;
  v24 = *(v23 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v25 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14(v25);
  v27 = *(v26 + 64);
  v1[19] = OUTLINED_FUNCTION_28();
  v28 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14(v28);
  v30 = *(v29 + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v31 = type metadata accessor for Locale();
  v1[21] = v31;
  OUTLINED_FUNCTION_5_0(v31);
  v1[22] = v32;
  v34 = *(v33 + 64);
  v1[23] = OUTLINED_FUNCTION_27();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v35 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v1[26] = v35;
  OUTLINED_FUNCTION_5_0(v35);
  v1[27] = v36;
  v38 = *(v37 + 64);
  v1[28] = OUTLINED_FUNCTION_27();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v39, v40, v41);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 24);
  v2 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  OUTLINED_FUNCTION_39_17();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:);
  v7 = OUTLINED_FUNCTION_9_3();

  return v9(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 256) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 256);
  if (v1)
  {
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    [*(v0 + 256) lat];
    v7 = v6;

    v8 = &enum case for DateTimeResolutionContext.Hemisphere.north(_:);
    if (v7 <= 0.0)
    {
      v8 = &enum case for DateTimeResolutionContext.Hemisphere.south(_:);
    }

    (*(v5 + 104))(v3, *v8, v4);
    v9 = *(v5 + 32);
    v10 = OUTLINED_FUNCTION_9_3();
    v11(v10);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_18_1();
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v13, v14, "#NLUUserDialogActInputUtils: Could not get location, setting hemisphere to north", v17, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v18 = *(v0 + 240);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);

    (*(v20 + 104))(v18, enum case for DateTimeResolutionContext.Hemisphere.north(_:), v19);
  }

  v21 = *(v0 + 216);
  v22 = *(v0 + 200);
  v88 = *(v0 + 208);
  v89 = *(v0 + 240);
  v23 = *(v0 + 192);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v83 = *(v0 + 184);
  v84 = *(v0 + 160);
  v90 = *(v0 + 152);
  v26 = *(v0 + 136);
  v86 = *(v0 + 144);
  v87 = *(v0 + 224);
  v85 = *(v0 + 128);
  v91 = *(v0 + 120);
  v101 = *(v0 + 112);
  v92 = *(v0 + 80);
  v93 = *(v0 + 88);
  v94 = *(v0 + 72);
  v95 = *(v0 + 56);
  v97 = *(v0 + 64);
  v99 = *(v0 + 48);
  v27 = *(v0 + 24);
  v103 = *(v0 + 16);
  v105 = *(v0 + 40);
  v28 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator() + 24);
  v29 = *(v24 + 16);
  v29(v22, &v27[v28], v25);
  v29(v23, &v27[v28], v25);
  v29(v83, &v27[v28], v25);
  static TimeZone.current.getter();
  (*(v21 + 16))(v87, v89, v88);
  (*(v26 + 104))(v86, enum case for Calendar.Identifier.gregorian(_:), v85);
  Calendar.init(identifier:)();
  (*(v26 + 8))(v86, v85);
  static Date.now.getter();
  v30 = type metadata accessor for DateTimeResolutionContext();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();
  (*(v92 + 104))(v93, enum case for DateTimeResolutionSpec.ExpandToType.pointInTime(_:), v94);
  (*(v95 + 104))(v97, enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.future(_:), v99);
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  type metadata accessor for DateTime();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange);
  Dictionary.init(dictionaryLiteral:)();
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  v34 = *(v27 + 3);
  v35 = *(v27 + 4);
  __swift_project_boxed_opaque_existential_1(v27, v34);
  (*(v35 + 8))(v103, v33, v101, v34, v35);
  v36 = *(v0 + 240);
  v37 = *(v0 + 208);
  v38 = *(v0 + 216);
  v40 = *(v0 + 104);
  v39 = *(v0 + 112);
  v41 = *(v0 + 96);
  v43 = *(v0 + 32);
  v42 = *(v0 + 40);

  (*(v40 + 8))(v39, v41);
  v44 = *(v38 + 8);
  v45 = OUTLINED_FUNCTION_9_3();
  v46(v45);
  v47 = OUTLINED_FUNCTION_9_3();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  OUTLINED_FUNCTION_52_10(v42, v50, v51, v49);
  v52 = OUTLINED_FUNCTION_75();
  outlined init with take of Recommendation<DateTime>?(v52, v53);
  v54 = OUTLINED_FUNCTION_9_3();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
  OUTLINED_FUNCTION_58_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, v58, v59);
  v61 = *(v0 + 32);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v61, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  }

  else
  {
    v62 = *(v56 - 8);
    v63 = (*(v62 + 88))(v61, v56);
    v64 = *(v0 + 32);
    if (v63 == enum case for Recommendation.confident<A>(_:))
    {
      v65 = *(v62 + 96);
      v66 = OUTLINED_FUNCTION_22();
      v67(v66);
      v106 = *v64;
      goto LABEL_16;
    }

    v68 = *(v62 + 8);
    v69 = OUTLINED_FUNCTION_22();
    v70(v69);
  }

  v106 = 0;
LABEL_16:
  v72 = *(v0 + 232);
  v71 = *(v0 + 240);
  v73 = *(v0 + 224);
  v75 = *(v0 + 192);
  v74 = *(v0 + 200);
  v76 = *(v0 + 184);
  v78 = *(v0 + 152);
  v77 = *(v0 + 160);
  v79 = *(v0 + 144);
  v80 = *(v0 + 120);
  v96 = *(v0 + 112);
  v98 = *(v0 + 88);
  v100 = *(v0 + 64);
  v102 = *(v0 + 40);
  v104 = *(v0 + 32);

  v81 = *(v0 + 8);

  return v81(v106);
}

uint64_t Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = type metadata accessor for TimeZone();
  v1[8] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Locale();
  v1[11] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_27();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v15 = type metadata accessor for LocationResolutionContext();
  v1[16] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[17] = v16;
  v18 = *(v17 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for Location();
  v1[19] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[20] = v20;
  v22 = *(v21 + 64);
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v23, v24, v25);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 32);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_39_17();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:);
  v7 = OUTLINED_FUNCTION_9_3();

  return v9(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 184);
  *v2 = *v0;
  *(v1 + 192) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = v0[24];
  if (v2)
  {
    v3 = v0[7];
    if (Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter() && (dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), OUTLINED_FUNCTION_35_17(), , v1))
    {
      dispatch thunk of UsoEntity_common_VoiceCommandPayload.geographicArea.getter();
      OUTLINED_FUNCTION_20_14();

      v4 = v0[21];
      v42 = v0[22];
      v6 = v0[19];
      v5 = v0[20];
      v38 = v0[18];
      v40 = v0[17];
      v41 = v0[16];
      v30 = v0[15];
      v31 = v0[14];
      v8 = v0[11];
      v7 = v0[12];
      v32 = v0[13];
      v33 = v0[9];
      v35 = v0[10];
      v36 = v0[8];
      v9 = v0[5];
      v34 = v0[6];
      v37 = v0[3];
      v39 = v0[2];
      UsoEntity_common_GeographicArea.toLocation()(v4);

      (*(v5 + 32))(v42, v4, v6);
      v10 = *(v7 + 16);
      v11 = OUTLINED_FUNCTION_75();
      v10(v11);
      (v10)(v31, v9, v8);
      (v10)(v32, v9, v8);
      (*(v33 + 16))(v35, v34, v36);
      [v2 lat];
      [v2 lng];
      LocationResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:latitude:longitude:)();
      v12 = v37[4];
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v13 = *(v12 + 8);
      v14 = OUTLINED_FUNCTION_75();
      v15(v14);

      (*(v40 + 8))(v38, v41);
      (*(v5 + 8))(v42, v6);
    }

    else
    {
    }
  }

  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[18];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v24 = OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_52_10(v24, v25, v26, v27);

  OUTLINED_FUNCTION_6_7();

  return v28();
}

uint64_t Siri_Nlu_External_UserDialogAct.userDialogTask.getter()
{
  v2 = v1;
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  if ((Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter() & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v23, static Logger.voiceCommands);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = OUTLINED_FUNCTION_17_18();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_18_1();
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "#NLUUserDialogActInputUtils: NLUUserDialogAct does not have a user stated task";
    goto LABEL_10;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
  (*(v6 + 16))(v11, v0, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44[6] = v43;
    *v15 = 136315138;
    type metadata accessor for SiriNLUTypesPrintUtils();
    v44[3] = type metadata accessor for Siri_Nlu_External_UserStatedTask();
    v44[4] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserStatedTask and conformance Siri_Nlu_External_UserStatedTask, &type metadata accessor for Siri_Nlu_External_UserStatedTask);
    __swift_allocate_boxed_opaque_existential_1(v44);
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    v16 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
    v17 = *(v6 + 8);
    v18 = OUTLINED_FUNCTION_31_16();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v20 = OUTLINED_FUNCTION_22();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v22);
    OUTLINED_FUNCTION_59_9();

    *(v15 + 4) = v16;
    _os_log_impl(&dword_0, v13, v14, "UserStatedTask: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    OUTLINED_FUNCTION_15_1();

    v2 = v1;
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v30 = *(v6 + 8);
    v31 = OUTLINED_FUNCTION_31_16();
    v32(v31);
  }

  v33 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!v2)
  {
    v34 = v33;
    if (specialized Array.count.getter(v33))
    {
      if (specialized Array.count.getter(v34) >= 2)
      {
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        v37 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_18_1();
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_0, v35, v36, "#NLUUserDialogActInputUtils: More than one task found in UDA", v39, 2u);
          OUTLINED_FUNCTION_15_1();
        }
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v34 & 0xC000000000000001) == 0, v34);
      if ((v34 & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v0 = *(v34 + 32);
      }

      return v0;
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_17_18();
    if (!os_log_type_enabled(v41, v42))
    {
LABEL_11:

      return 0;
    }

    OUTLINED_FUNCTION_18_1();
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "#NLUUserDialogActInputUtils: No tasks found in UDA";
LABEL_10:
    _os_log_impl(&dword_0, v24, v25, v29, v28, 2u);
    OUTLINED_FUNCTION_15_1();

    goto LABEL_11;
  }

  return v0;
}

uint64_t type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator()
{
  result = type metadata singleton initialization cache for Siri_Nlu_External_UserDialogAct.DateTimeHydrator;
  if (!type metadata singleton initialization cache for Siri_Nlu_External_UserDialogAct.DateTimeHydrator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7D54(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = OUTLINED_FUNCTION_60_7(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      v13 = type metadata accessor for Calendar();
      v14 = OUTLINED_FUNCTION_60_7(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v11 = type metadata accessor for TimeZone();
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1B7E70(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = OUTLINED_FUNCTION_60_7(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[6];
    }

    else
    {
      v13 = type metadata accessor for Calendar();
      v14 = OUTLINED_FUNCTION_60_7(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = type metadata accessor for TimeZone();
        v12 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata completion function for Siri_Nlu_External_UserDialogAct.DateTimeHydrator()
{
  result = type metadata accessor for DateTimeResolving(319, &lazy cache variable for type metadata for DateTimeResolving);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DateTimeResolving(319, &lazy cache variable for type metadata for LocationProviding);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Locale();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Calendar();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TimeZone();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for DateTimeResolving(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with take of Recommendation<DateTime>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_17_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  return 0;
}

void OUTLINED_FUNCTION_24_22()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
}

uint64_t OUTLINED_FUNCTION_27_18()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_11()
{
  v2 = *(v0 + 8);
  result = *(v1 - 200);
  v4 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_9()
{
  v2 = v0[11];
  v7 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  return UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();
}

uint64_t OUTLINED_FUNCTION_52_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, a4);
}

uint64_t OUTLINED_FUNCTION_56_6@<X0>(unsigned int *a1@<X8>)
{
  result = v1[24];
  v3 = v1[21];
  v4 = *a1;
  v5 = *(v1[22] + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 224);
  return v2;
}

uint64_t OUTLINED_FUNCTION_68_11()
{
  v2 = *(v0 + 48);

  return dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
}

uint64_t WFInputDateFlow.exitValue.getter()
{
  v1 = type metadata accessor for WFInputDateFlow.State(0);
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  swift_beginAccess();
  outlined init with copy of WFInputDateFlow.State(v0 + v8, v7);
  OUTLINED_FUNCTION_9_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    return *v7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return *v7;
  }

  lazy protocol witness table accessor for type WFInputTextFlowError and conformance WFInputTextFlowError();
  v10 = swift_allocError();
  OUTLINED_FUNCTION_0_47();
  outlined destroy of WFInputDateFlow.State(v7, v11);
  return v10;
}

uint64_t outlined init with copy of WFInputDateFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFInputDateFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WFInputDateFlow.__allocating_init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  WFInputDateFlow.init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(a1, a2, a3, a4, a5);
  return v13;
}

void *WFInputDateFlow.init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v6 = v5;
  v10 = type metadata accessor for CATOption();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v6[2] = a1;
  outlined init with copy of DeviceState(a2, (v6 + 3));
  v26 = a3;
  outlined init with copy of DeviceState(a3, (v6 + 8));
  outlined init with copy of DeviceState(a2, v29);
  v14 = one-time initialization token for shared;
  v25 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_2();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v20 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  v6[13] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v29, v15, v24, v16, v17, v18, v19, v20, v21);
  type metadata accessor for WorkflowSnippetProvider();
  v22 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a2);

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v6[14] = v22;
  type metadata accessor for WorkflowNLContextProvider();
  v6[15] = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(a4, (v6 + 16));
  outlined init with take of AceServiceInvokerAsync(a5, (v6 + 21));
  type metadata accessor for WFInputDateFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v6;
}

uint64_t WFInputDateFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v67 = v6;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v58 - v13;
  __chkstk_darwin(v12);
  v63 = &v58 - v15;
  v66 = type metadata accessor for WFInputDateFlow.State(0);
  v16 = OUTLINED_FUNCTION_7(v66);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v61 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v65 = &v58 - v21;
  v22 = type metadata accessor for Input();
  v23 = OUTLINED_FUNCTION_7_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.voiceCommands);
  v32 = *(v25 + 16);
  v64 = a1;
  v32(v30, a1, v22);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v62 = v14;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60 = v11;
    v38 = v37;
    v68[0] = v37;
    *v36 = 136315138;
    v39 = Input.description.getter();
    v59 = v2;
    v40 = v4;
    v42 = v41;
    (*(v25 + 8))(v30, v22);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v42, v68);
    v4 = v40;
    v2 = v59;

    *(v36 + 4) = v43;
    _os_log_impl(&dword_0, v33, v34, "#WFInputDateFlow on input: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v11 = v60;
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v25 + 8))(v30, v22);
  }

  v44 = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  swift_beginAccess();
  v45 = v65;
  outlined init with copy of WFInputDateFlow.State(v2 + v44, v65);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_47();
  outlined destroy of WFInputDateFlow.State(v45, v47);
  v48 = v67;
  if (EnumCaseMultiPayload == 4)
  {
    v49 = v63;
    Input.parse.getter();
    v50 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v49);
    v51 = *(v48 + 8);
    v51(v49, v4);
    switch(v50)
    {
      case 2:

        return 0;
      case 3:
        break;
      default:
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v52)
        {
          return 0;
        }

        break;
    }

    v53 = v62;
    Input.parse.getter();
    (*(v48 + 16))(v11, v53, v4);
    v54 = (*(v48 + 88))(v11, v4);
    if (v54 == enum case for Parse.NLv3IntentOnly(_:) || v54 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
    {
      v55 = v53;
      v56 = v61;
      (*(v48 + 32))(v61, v55, v4);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_57_0();
      outlined assign with take of WFInputDateFlow.State(v56, v2 + v44);
      swift_endAccess();
      v51(v11, v4);
      return 1;
    }

    v51(v53, v4);
    v51(v11, v4);
  }

  return 0;
}

uint64_t WFInputDateFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[24] = OUTLINED_FUNCTION_27();
  v1[25] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[26] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[27] = v7;
  v9 = *(v8 + 64);
  v1[28] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for Parse();
  v1[29] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[30] = v11;
  v13 = *(v12 + 64);
  v1[31] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for WFInputDateFlow.State(0);
  v1[32] = v14;
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  v1[33] = OUTLINED_FUNCTION_27();
  v1[34] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17, v18, v19);
}

{
  v69 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 0x7974706D65;
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = *(v6 + 16);
    v9 = [v8 message];
    if (v9)
    {
      v10 = v9;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v12, &v68);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    v14 = [v8 prompt];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE500000000000000;
      v16 = 0x7974706D65;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v68);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_0, v3, v4, "#WFInputDateFlow begins execution, message: %s, prompt: %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_17();
  }

  v20 = v0[34];
  v21 = v0[32];
  v22 = v0[23];
  v23 = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  v0[36] = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  swift_beginAccess();
  outlined init with copy of WFInputDateFlow.State(v22 + v23, v20);
  OUTLINED_FUNCTION_9_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v0[34];
      OUTLINED_FUNCTION_0_47();
      outlined destroy of WFInputDateFlow.State(v61, v62);
      v45 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v63))
      {
        goto LABEL_30;
      }

      v64 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v64);
      v50 = "#WFInputDateFlow completed";
      break;
    case 2u:
      v42 = v0[34];
      OUTLINED_FUNCTION_0_47();
      outlined destroy of WFInputDateFlow.State(v43, v44);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v46))
      {
        goto LABEL_30;
      }

      v47 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v47);
      v50 = "#WFInputDateFlow error state";
      break;
    case 3u:
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v52))
      {
        v53 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v53);
        OUTLINED_FUNCTION_26(&dword_0, v54, v55, "#WFInputDateFlow submitting output");
        OUTLINED_FUNCTION_17();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[37] = v56;
      *v56 = v57;
      v56[1] = WFInputDateFlow.execute();
      v58 = v0[23];
      OUTLINED_FUNCTION_27_0();

      return WFInputDateFlow.buildOutput()();
    case 4u:
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v37))
      {
        v38 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v38);
        OUTLINED_FUNCTION_26(&dword_0, v39, v40, "#WFInputDateFlow waiting for response");
        OUTLINED_FUNCTION_17();
      }

      v41 = v0[22];

      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_31;
    default:
      (*(v0[30] + 32))(v0[31], v0[34], v0[29]);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v25))
      {
        v26 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v26);
        OUTLINED_FUNCTION_26(&dword_0, v27, v28, "#WFInputDateFlow responseReceived");
        OUTLINED_FUNCTION_17();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[41] = v29;
      *v29 = v30;
      v29[1] = WFInputDateFlow.execute();
      v31 = v0[31];
      v32 = v0[25];
      v33 = v0[23];
      OUTLINED_FUNCTION_27_0();

      return WFInputDateFlow.buildDateFromParse(parse:)();
  }

  OUTLINED_FUNCTION_26(&dword_0, v48, v49, v50);
  OUTLINED_FUNCTION_17();
LABEL_30:
  v65 = v0[22];

  static ExecuteResponse.complete()();
LABEL_31:
  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }

  return result;
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 184);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 312) = v5;
  *v5 = v6;
  v5[1] = WFInputDateFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[22];
  v5 = v0[23];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WFInputDateFlow.State(v3, v5 + v1);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[25];
  v2 = v0[26];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[29];
  if (EnumTagSinglePayload == 1)
  {
    v11 = v0[22];
    v10 = v0[23];
    outlined destroy of Any?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0();
    outlined assign with take of WFInputDateFlow.State(v5, v10 + v4);
    swift_endAccess();
    static ExecuteResponse.ongoing(requireInput:)();
  }

  else
  {
    v24 = v0[29];
    v25 = v0[31];
    v12 = v0[27];
    v13 = v0[28];
    v14 = v0[24];
    v22 = v0[23];
    v23 = v0[22];
    (*(v12 + 32))(v13, v1, v2);
    (*(v12 + 16))(v14, v13, v2);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
    v15 = objc_allocWithZone(WFInputDateDialogResponse);
    v16 = v14;
    v9 = v24;
    v17 = @nonobjc WFInputDateDialogResponse.init(inputtedDate:cancelled:)(v16, 0);
    *v5 = v17;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0();
    v18 = v17;
    outlined assign with take of WFInputDateFlow.State(v5, v22 + v4);
    swift_endAccess();
    static ExecuteResponse.ongoing(requireInput:)();

    v19 = v13;
    v7 = v25;
    (*(v12 + 8))(v19, v2);
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();

  return v20();
}

uint64_t WFInputDateFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[38];
  v12 = v10[35];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v15, v16, "#WFInputDateFlow error submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v17 = v10[36];
  v19 = v10[32];
  v18 = v10[33];
  v20 = v10[22];
  v21 = v10[23];

  *v18 = v11;
  OUTLINED_FUNCTION_20_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0();
  swift_errorRetain();
  outlined assign with take of WFInputDateFlow.State(v18, v21 + v17);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 2);
  v11 = v10[40];
  v12 = v10[35];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v15, v16, "#WFInputDateFlow error submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v17 = v10[36];
  v19 = v10[32];
  v18 = v10[33];
  v20 = v10[22];
  v21 = v10[23];

  *v18 = v11;
  OUTLINED_FUNCTION_20_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0();
  swift_errorRetain();
  outlined assign with take of WFInputDateFlow.State(v18, v21 + v17);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t WFInputDateFlow.execute(completion:)()
{
  type metadata accessor for WFInputDateFlow(0);
  lazy protocol witness table accessor for type WFInputDateFlow and conformance WFInputDateFlow(&lazy protocol witness table cache variable for type WFInputDateFlow and conformance WFInputDateFlow, type metadata accessor for WFInputDateFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFInputDateFlow.buildDateFromParse(parse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for DateComponents();
  v1[25] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[26] = v5;
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_27();
  v1[28] = swift_task_alloc();
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator();
  v1[29] = v8;
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v1[30] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for TimeZone();
  v1[31] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[32] = v12;
  v14 = *(v13 + 64);
  v1[33] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Calendar();
  v1[34] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[35] = v16;
  v18 = *(v17 + 64);
  v1[36] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for Locale();
  v1[37] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[38] = v20;
  v22 = *(v21 + 64);
  v1[39] = OUTLINED_FUNCTION_28();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[40] = v23;
  OUTLINED_FUNCTION_14(v23);
  v25 = *(v24 + 64);
  v1[41] = OUTLINED_FUNCTION_27();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v26);
  v28 = *(v27 + 64);
  v1[44] = OUTLINED_FUNCTION_28();
  v29 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1[45] = v29;
  OUTLINED_FUNCTION_5_0(v29);
  v1[46] = v30;
  v32 = *(v31 + 64);
  v1[47] = OUTLINED_FUNCTION_27();
  v1[48] = swift_task_alloc();
  v33 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1[49] = v33;
  OUTLINED_FUNCTION_5_0(v33);
  v1[50] = v34;
  v36 = *(v35 + 64);
  v1[51] = OUTLINED_FUNCTION_28();
  v37 = type metadata accessor for USOParse();
  v1[52] = v37;
  OUTLINED_FUNCTION_5_0(v37);
  v1[53] = v38;
  v40 = *(v39 + 64);
  v1[54] = OUTLINED_FUNCTION_28();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_14(v41);
  v43 = *(v42 + 64);
  v1[55] = OUTLINED_FUNCTION_28();
  v44 = type metadata accessor for VoiceCommandsNLIntent(0);
  v1[56] = v44;
  OUTLINED_FUNCTION_14(v44);
  v46 = *(v45 + 64);
  v1[57] = OUTLINED_FUNCTION_28();
  v47 = type metadata accessor for NLIntent();
  v1[58] = v47;
  OUTLINED_FUNCTION_5_0(v47);
  v1[59] = v48;
  v50 = *(v49 + 64);
  v1[60] = OUTLINED_FUNCTION_28();
  v51 = type metadata accessor for Parse();
  v1[61] = v51;
  OUTLINED_FUNCTION_5_0(v51);
  v1[62] = v52;
  v54 = *(v53 + 64);
  v1[63] = OUTLINED_FUNCTION_28();
  v55 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v55, v56, v57);
}

{
  v1 = *(v0 + 496);
  (*(v1 + 16))(*(v0 + 504), *(v0 + 184), *(v0 + 488));
  v2 = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_22_4();
  v5 = v4(v3);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v6 = *(v0 + 504);
    v7 = *(v0 + 480);
    v8 = *(v0 + 464);
    v9 = *(v0 + 472);
    v10 = *(v0 + 456);
    (*(*(v0 + 496) + 96))(v6, *(v0 + 488));
    (*(v9 + 32))(v7, v6, v8);
    (*(v9 + 16))(v10, v7, v8);
    if (one-time initialization token for voiceCommandDateTimeNode != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 448);
    v12 = *(v0 + 456);
    v13 = *(v0 + 440);
    lazy protocol witness table accessor for type WFInputDateFlow and conformance WFInputDateFlow(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    static Device.current.getter();
    static AceService.currentAsync.getter();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 512) = v14;
    *v14 = v15;
    v14[1] = WFInputDateFlow.buildDateFromParse(parse:);
    v16 = *(v0 + 440);
    v17 = *(v0 + 176);
    OUTLINED_FUNCTION_35_4();

    return static InputUtils.getDate(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)();
  }

  v21 = *(v0 + 496);
  v20 = *(v0 + 504);
  v22 = *(v0 + 488);
  if (v5 != enum case for Parse.uso(_:))
  {
    v49 = *(v0 + 176);
    v50 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v49, v51, v52, v50);
    v53 = *(v21 + 8);
    v54 = OUTLINED_FUNCTION_22_4();
    v55(v54);
    goto LABEL_22;
  }

  v24 = *(v0 + 424);
  v23 = *(v0 + 432);
  v25 = *(v0 + 416);
  v26 = *(v0 + 384);
  v27 = *(v0 + 368);
  v140 = *(v0 + 360);
  v143 = *(v0 + 392);
  v28 = *(v0 + 352);
  v29 = *(v21 + 96);
  v30 = OUTLINED_FUNCTION_22_4();
  v31(v30);
  (*(v24 + 32))(v23, v20, v25);
  USOParse.userParse.getter();
  v32 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v33 = v35;
  (v35)(v26, v140);
  specialized Collection.first.getter(v32, v28);

  if (__swift_getEnumTagSinglePayload(v28, 1, v143) == 1)
  {
    outlined destroy of Any?(*(v0 + 352), &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.voiceCommands);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v38))
    {
      v39 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v39);
      OUTLINED_FUNCTION_26(&dword_0, v40, v41, "#WFInputDateFlow: missing UDA");
      OUTLINED_FUNCTION_17();
    }

    v43 = *(v0 + 424);
    v42 = *(v0 + 432);
    v44 = *(v0 + 416);
    v45 = *(v0 + 176);

    v46 = *(v43 + 8);
    v47 = OUTLINED_FUNCTION_9_3();
    v48(v47);
    v75 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v45, v76, v77, v75);
    goto LABEL_22;
  }

  v56 = *(v0 + 432);
  v57 = *(v0 + 376);
  v58 = *(v0 + 360);
  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 352), *(v0 + 392));
  USOParse.userParse.getter();
  v59 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v60 = OUTLINED_FUNCTION_9_3();
  v33(v60);
  v61 = *(v59 + 16);

  if (v61 >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.voiceCommands);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v64))
    {
      v65 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v65);
      OUTLINED_FUNCTION_26(&dword_0, v66, v67, "#WFInputDateFlow: more than one task found in UDA");
      OUTLINED_FUNCTION_17();
    }
  }

  v68 = *(v0 + 408);
  v69 = *(v0 + 312);
  v70 = *(v0 + 288);
  v71 = *(v0 + 264);
  v72 = *(v0 + 192);
  v73 = v72[6];
  v74 = v72[7];
  __swift_project_boxed_opaque_existential_1(v72 + 3, v73);
  OUTLINED_FUNCTION_13_5();
  dispatch thunk of DeviceState.siriLocale.getter();
  static Calendar.current.getter();
  static TimeZone.current.getter();
  if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {
    goto LABEL_33;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(v0 + 160))
  {
    v101 = OUTLINED_FUNCTION_27_19();
    v102(v101);
    v103 = *(v74 + 8);
    v104 = OUTLINED_FUNCTION_20_1();
    v105(v104);
    v106 = *(v73 + 8);
    v97 = v73 + 8;
    v107 = OUTLINED_FUNCTION_22_4();
    v108(v107);
    outlined destroy of Any?(v0 + 136, &_sypSgMd, &_sypSgMR);
    goto LABEL_35;
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0 || (v80 = *(v0 + 168), v81 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), , !v81) || (v82 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter(), , !v82))
  {
LABEL_33:
    v92 = OUTLINED_FUNCTION_27_19();
    v93(v92);
    v94 = *(v74 + 8);
    v95 = OUTLINED_FUNCTION_20_1();
    v96(v95);
    v98 = *(v73 + 8);
    v97 = v73 + 8;
    v99 = OUTLINED_FUNCTION_22_4();
    v100(v99);
LABEL_35:
    v109 = *(v0 + 344);
    v110 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v109, v111, v112, v110);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v113 = *(v0 + 336);
    v114 = *(v0 + 344);
    v115 = type metadata accessor for Logger();
    v116 = __swift_project_value_buffer(v115, static Logger.voiceCommands);
    v117 = OUTLINED_FUNCTION_22_4();
    outlined init with copy of Date?(v117, v118);
    v119 = v116;
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    os_log_type_enabled(v120, v121);
    OUTLINED_FUNCTION_41_13();
    if (v122)
    {
      v142 = v113;
      v144 = v119;
      v123 = *(v0 + 320);
      v124 = *(v0 + 328);
      v125 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v125 = 136315138;
      outlined init with copy of Date?(v34, v124);
      OUTLINED_FUNCTION_22_4();
      String.init<A>(describing:)();
      outlined destroy of Any?(v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v126 = OUTLINED_FUNCTION_22_4();
      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v128);

      *(v125 + 4) = v129;
      OUTLINED_FUNCTION_44_15(&dword_0, v130, v131, "#WFInputDateFlow: usoParse has date: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v145);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();

      (*(v97 + 8))(&unk_2B7000, v72);
      (*(v71 + 8))(v144, v142);
    }

    else
    {

      outlined destroy of Any?(v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v97 + 8))(&unk_2B7000, v72);
      v132 = *(v71 + 8);
      v133 = OUTLINED_FUNCTION_22_4();
      v135(v133, v134);
    }

    outlined init with take of Date?(*(v0 + 344), *(v0 + 176));
LABEL_22:
    OUTLINED_FUNCTION_2_57();
    OUTLINED_FUNCTION_7_35();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X1, X16 }
  }

  v83 = *(v0 + 304);
  v84 = *(v0 + 296);
  v85 = *(v0 + 280);
  v136 = *(v0 + 312);
  v137 = *(v0 + 272);
  v86 = *(v0 + 256);
  v141 = *(v0 + 264);
  v87 = *(v0 + 240);
  v138 = *(v0 + 288);
  v139 = *(v0 + 248);
  v88 = *(v0 + 232);
  *(v0 + 520) = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();

  outlined init with copy of DeviceState((v72 + 21), v87);
  outlined init with copy of DeviceState((v72 + 16), v87 + 40);
  (*(v83 + 16))(v87 + v88[6], v136, v84);
  (*(v85 + 16))(v87 + v88[7], v138, v137);
  (*(v86 + 16))(v87 + v88[8], v141, v139);
  v89 = swift_task_alloc();
  *(v0 + 528) = v89;
  *v89 = v0;
  v89[1] = WFInputDateFlow.buildDateFromParse(parse:);
  v90 = *(v0 + 240);
  OUTLINED_FUNCTION_35_4();

  return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  outlined destroy of Any?(v2 + 16, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  outlined destroy of Any?(v0[55], &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  outlined destroy of WFInputDateFlow.State(v4, type metadata accessor for VoiceCommandsNLIntent);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_22_4();
  v7(v6);
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_7_35();

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 528);
  *v3 = *v1;
  *(v2 + 536) = v6;
  *(v2 + 544) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[65];
  v2 = v0[38];
  v31 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];

  OUTLINED_FUNCTION_4_52();
  outlined destroy of WFInputDateFlow.State(v10, v11);
  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_13_5();
  v14(v13);
  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_20_1();
  v17(v16);
  (*(v2 + 8))(v31, v3);
  v18 = v0[68];
  v20 = v0[53];
  v19 = v0[54];
  v21 = v0[52];
  v22 = v0[22];
  (*(v0[50] + 8))(v0[51], v0[49]);
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_9_3();
  v25(v24);

  v26 = type metadata accessor for Date();
  OUTLINED_FUNCTION_36_15(v22, v27, v28, v26);
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_7_35();

  OUTLINED_FUNCTION_6_0();

  return v29();
}

void WFInputDateFlow.buildDateFromParse(parse:)()
{
  v1 = v0[43];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[31];
  v66 = v8;
  v69 = v0[33];
  v63 = v0[30];
  if (v0[67])
  {
    v56 = v0[65];
    v57 = v0[36];
    v59 = v0[34];
    v61 = v0[37];
    v9 = v0[27];
    v5 = v0[28];
    v55 = v0[43];
    v1 = v0[25];
    v10 = v0[26];

    dispatch thunk of DateTime.dateComponents.getter();

    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_13_5();
    v13(v12);
    Calendar.date(from:)();

    (*(v10 + 8))(v5, v1);
    OUTLINED_FUNCTION_4_52();
    outlined destroy of WFInputDateFlow.State(v63, v14);
    v16 = *(v7 + 8);
    v15 = v7 + 8;
    v16(v69, v66);
    v18 = *(v6 + 8);
    v17 = v6 + 8;
    v18(v57, v59);
    v20 = *(v3 + 8);
    v19 = v3 + 8;
    v20(v2, v61);
  }

  else
  {

    OUTLINED_FUNCTION_4_52();
    outlined destroy of WFInputDateFlow.State(v63, v21);
    v22 = *(v7 + 8);
    v15 = v7 + 8;
    v22(v69, v66);
    v23 = *(v6 + 8);
    v17 = v6 + 8;
    v24 = OUTLINED_FUNCTION_13_5();
    v25(v24);
    v26 = *(v3 + 8);
    v19 = v3 + 8;
    v26(v2, v4);
    v27 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v1, v28, v29, v27);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v30 = v0[42];
  v31 = v0[43];
  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.voiceCommands);
  v34 = OUTLINED_FUNCTION_22_4();
  outlined init with copy of Date?(v34, v35);
  v36 = v33;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  os_log_type_enabled(v37, v38);
  OUTLINED_FUNCTION_41_13();
  if (v39)
  {
    v67 = v30;
    v70 = v36;
    v40 = v0[40];
    v41 = v0[41];
    v64 = v1;
    v42 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v42 = 136315138;
    outlined init with copy of Date?(v15, v41);
    OUTLINED_FUNCTION_22_4();
    String.init<A>(describing:)();
    outlined destroy of Any?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v43 = OUTLINED_FUNCTION_22_4();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v45);

    *(v42 + 4) = v46;
    OUTLINED_FUNCTION_44_15(&dword_0, v47, v48, "#WFInputDateFlow: usoParse has date: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();

    (*(v5 + 8))(v64, v19);
    (*(v17 + 8))(v70, v67);
  }

  else
  {

    outlined destroy of Any?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v5 + 8))(v1, v19);
    v49 = *(v17 + 8);
    v50 = OUTLINED_FUNCTION_22_4();
    v52(v50, v51);
  }

  outlined init with take of Date?(v0[43], v0[22]);
  OUTLINED_FUNCTION_2_57();
  v58 = v0[39];
  v60 = v0[36];
  v62 = v0[33];
  v65 = v0[30];
  v68 = v0[28];
  v71 = v0[27];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X1, X16 }
}

uint64_t WFInputDateFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for DialogPhase();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_27();
  v1[8] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[12] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for NLContextUpdate();
  v1[15] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v22 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v22, v23, v24);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  (*(**(v0[3] + 120) + 232))();
  (*(v3 + 104))(v2, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v4);
  v5 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_9_3();
  v8(v7);
  if (v5)
  {
    OUTLINED_FUNCTION_38_14(v0[3]);
    v10 = *(v9 + 208);
    v19 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = WFInputDateFlow.buildOutput();

    return v19(v2);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[24] = v14;
    *v14 = v15;
    v14[1] = WFInputDateFlow.buildOutput();
    v16 = v0[17];
    v17 = v0[2];
    v18 = v0[3];

    return WFInputDateFlow.buildOutput_prerfv2(_:)();
  }
}

{
  v1 = v0[20];
  v2 = v0[16];
  v22 = v0[17];
  v24 = v1;
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v20 = v0[4];
  v21 = v0[15];
  static DialogPhase.confirmed.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v5, v4, v7);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v7);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  (*(v2 + 16))(v20, v22, v21);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  OutputGenerationManifest.nlContextUpdate.setter();
  v9 = type metadata accessor for ResponseFactory();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[21] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  v0[22] = v12;
  *(v12 + 16) = xmmword_216010;
  *(v12 + 32) = v24;
  v13 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v23 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v14 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[23] = v15;
  *v15 = v16;
  v15[1] = WFInputDateFlow.buildOutput();
  v17 = v0[11];
  v18 = v0[2];

  return v23(v18, v12, v17);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[23];
  v3 = v1[22];
  v4 = v1[21];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  v7 = OUTLINED_FUNCTION_21_21();
  v8(v7);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v0 = OUTLINED_FUNCTION_21_21();
  v1(v0);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t WFInputDateFlow.buildOutput()(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 152) = v1;

  if (!v1)
  {
    *(v5 + 160) = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t WFInputDateFlow.buildOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 200);
  v12 = OUTLINED_FUNCTION_20_18();
  v13(v12);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 152);
  v12 = OUTLINED_FUNCTION_20_18();
  v13(v12);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t WFInputDateFlow.buildOutput_prerfv2(_:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingResult();
  v1[11] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_38_14(v1[9]);
  v3 = *(v2 + 216);
  v9 = (v3 + *v3);
  v4 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[14] = v5;
  *v5 = v6;
  v5[1] = WFInputDateFlow.buildOutput_prerfv2(_:);
  v7 = v1[13];

  return v9(v7, v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v13 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v8 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7(v8);
  (*(v9 + 16))(v3, v5, v8);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
  v10 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6[3] = v10;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v13);

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t WFInputDateFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v1 = *(v0 + 104);

  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  OUTLINED_FUNCTION_0_47();
  outlined destroy of WFInputDateFlow.State(v0 + v4, v5);
  return v0;
}

uint64_t WFInputDateFlow.__deallocating_deinit()
{
  WFInputDateFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFInputDateFlow(uint64_t a1)
{
  v4 = *(**v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFInputDateFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t outlined assign with take of WFInputDateFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFInputDateFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id @nonobjc WFInputDateDialogResponse.init(inputtedDate:cancelled:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithInputtedDate:isa cancelled:a2 & 1];

  return v8;
}

unint64_t lazy protocol witness table accessor for type WFInputDateFlowError and conformance WFInputDateFlowError()
{
  result = lazy protocol witness table cache variable for type WFInputDateFlowError and conformance WFInputDateFlowError;
  if (!lazy protocol witness table cache variable for type WFInputDateFlowError and conformance WFInputDateFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputDateFlowError and conformance WFInputDateFlowError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFInputDateFlowError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1BCA80);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata completion function for WFInputDateFlow()
{
  result = type metadata accessor for WFInputDateFlow.State(319);
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

void type metadata completion function for WFInputDateFlow.State()
{
  type metadata accessor for (parse: Parse)(319, &lazy cache variable for type metadata for (parse: Parse), &type metadata accessor for Parse);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (parse: Parse)(319, &lazy cache variable for type metadata for (response: WFDialogResponse), type metadata accessor for WFDialogResponse);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Error();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (parse: Parse)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t type metadata accessor for WFDialogResponse()
{
  result = lazy cache variable for type metadata for WFDialogResponse;
  if (!lazy cache variable for type metadata for WFDialogResponse)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for WFDialogResponse);
  }

  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WFInputDateFlow.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type WFInputDateFlow and conformance WFInputDateFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_57()
{
  result = v0[63];
  v2 = v0[60];
  v3 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[51];
  v7 = v0[47];
  v8 = v0[48];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[41];
  v12 = v0[42];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_35()
{
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[28];
  v8 = v0[27];
}

uint64_t OUTLINED_FUNCTION_13_27()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
}

uint64_t OUTLINED_FUNCTION_20_18()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];
  v7 = *(v0[16] + 8);
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_21_21()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];
  v7 = *(v0[16] + 8);
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_27_19()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  result = v0[33];
  v8 = v0[31];
  v9 = *(v0[32] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_41_13()
{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[42];
}

void OUTLINED_FUNCTION_44_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = type metadata accessor for DisplayHint();
  v6 = OUTLINED_FUNCTION_7_1(v20);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = *(a3 + 16);
  v15 = &_swiftEmptyArrayStorage;
  if (!v14)
  {
    return v15;
  }

  v23 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v15 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v17 = *i;
    v22[0] = *(i - 1);
    v22[1] = v17;

    a1(v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v23 = v15;
    v18 = v15[2];
    if (v18 >= v15[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v23;
    }

    v15[2] = v18 + 1;
    (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v13, v20);
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayypG_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVsAE_pTg5(void (*a1)(void *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    for (i = a3 + 32; ; i += 32)
    {
      a1(__src, i, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v15 = v6;
      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v15;
      }

      v6[2] = v11 + 1;
      memcpy(&v6[11 * v11 + 4], __src, 0x51uLL);
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void *INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(a1);
  v11 = [a1 _codableDescription];
  v12 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(a2, a3, v11);

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      if ([v13 valueType] == &stru_20.vmsize + 1)
      {
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
        v15 = static INIntentResolutionResult.getDisplayHintsForEnum(attribute:dictionary:locale:shouldIncludeOrdinalReference:)(v14, v10, a4, a5 & 1);

        return v15;
      }
    }
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
  static INIntentResolutionResult.getInferredDisplayHints(dictionary:shouldIncludeOrdinalReference:)(v10, a5 & 1);
  v18 = v17;

  return v18;
}

uint64_t static INIntentResolutionResult.makeAsIdString(input:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (OUTLINED_FUNCTION_30_15())
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
    static INIntentResolutionResult.encodeDictionary(input:)();
LABEL_5:

    goto LABEL_6;
  }

  if (OUTLINED_FUNCTION_30_15())
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
    static INIntentResolutionResult.base64FromString(string:)();
    goto LABEL_5;
  }

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return OUTLINED_FUNCTION_22();
}

uint64_t static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(a2, a3);
  v7[2] = a1;
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:), v7, v4);

  return v5;
}

void *static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(unint64_t a1, uint64_t a2)
{
  if (a1 > 0x18)
  {
    v10 = &_swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v8 = &outlined read-only object #0 of one-time initialization function for NUMBERICREFERENCENODEVALUES + 2 * a1;
  v4 = v8[4];
  v2 = v8[5];

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v10 = v9;
  v5 = v9[2];
  v11 = v9[3];
  v3 = v5 + 1;
  if (v5 >= v11 >> 1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v10[2] = v3;
    v12 = &v10[2 * v5];
    *(v12 + 4) = v4;
    *(v12 + 5) = v2;
LABEL_5:
    v11 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_14_8(v11);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v21;
  }

  if (v11 == a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_58();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v22;
    }

    OUTLINED_FUNCTION_9_29();
    if (v14)
    {
      OUTLINED_FUNCTION_3_57(v13);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v23;
    }

    v15 = 0xE400000000000000;
    v16 = 1953718636;
LABEL_24:
    v10[2] = a1;
    v19 = &v10[2 * a2];
    *(v19 + 4) = v16;
    *(v19 + 5) = v15;
    return v10;
  }

  if (__OFSUB__(a2, 2))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a2 - 2 == a1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_15:
      v15 = 0xEC0000007473614CLL;
      OUTLINED_FUNCTION_9_29();
      if (v14)
      {
        OUTLINED_FUNCTION_3_57(v17);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v25;
      }

      v16 = 0x6F54646E6F636573;
      goto LABEL_24;
    }

LABEL_29:
    OUTLINED_FUNCTION_2_58();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v24;
    goto LABEL_15;
  }

  if (__OFSUB__(a2, 3))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 - 3 == a1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_21:
      v15 = 0xEB00000000747361;
      OUTLINED_FUNCTION_9_29();
      if (v14)
      {
        OUTLINED_FUNCTION_3_57(v18);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v27;
      }

      v16 = 0x4C6F546472696874;
      goto LABEL_24;
    }

LABEL_31:
    OUTLINED_FUNCTION_2_58();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v26;
    goto LABEL_21;
  }

  return v10;
}

id static INIntentResolutionResult.getCodableEnumValueFromAny(item:attribute:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  outlined init with copy of Any(a1, &v41);
  if (!OUTLINED_FUNCTION_13_28())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v27, static Logger.voiceCommands);
    v23 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v28))
    {
      goto LABEL_22;
    }

    v29 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v29);
    v26 = "Unable to convert enum item to a string";
    goto LABEL_21;
  }

  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;

  (*(v7 + 8))(v12, v4);
  if (v15 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v16 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v41 = 0;
  v4 = [v16 JSONObjectWithData:isa options:0 error:&v41];

  if (!v4)
  {
    v30 = v41;
    v31 = _convertNSErrorToError(_:)();

    LOBYTE(v4) = v31;
    swift_willThrow();
    outlined consume of Data?(v13, v15);

    goto LABEL_17;
  }

  v18 = v41;
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data?(v13, v15);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((OUTLINED_FUNCTION_13_28() & 1) == 0)
  {
LABEL_17:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v32 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v32, static Logger.voiceCommands);
    v23 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v33))
    {
      goto LABEL_22;
    }

    v34 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v34);
    v26 = "Unable to convert enum string to a dictionary";
    goto LABEL_21;
  }

  v19 = OUTLINED_FUNCTION_18_29();
  specialized Dictionary.subscript.getter(v19, 0xE500000000000000, v39, &v41);

  if (!v42)
  {
    outlined destroy of String?(&v41, &_sypSgMd, &_sypSgMR);
    goto LABEL_25;
  }

  if ((OUTLINED_FUNCTION_13_28() & 1) == 0)
  {
LABEL_25:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v36 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v36, static Logger.voiceCommands);
    v23 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v37))
    {
      goto LABEL_22;
    }

    v38 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v38);
    v26 = "Unable to convert value string from enum dictionary";
    goto LABEL_21;
  }

  v20 = outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(v39, v40, a2);

  if (!v20)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, static Logger.voiceCommands);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v24))
    {
      goto LABEL_22;
    }

    v25 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v25);
    v26 = "Unable to convert enum value string to INCodableEnumValue";
LABEL_21:
    _os_log_impl(&dword_0, v23, v4, v26, v22, 2u);

LABEL_22:

    return 0;
  }

  return v20;
}

void *static INIntentResolutionResult.getSynonymsForEnum(enumValue:language:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = outlined bridged method (pb) of @objc INCodableEnumValue.synonyms.getter(a1);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  if (!specialized Array.count.getter(v6))
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_32:

    return v19;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v10 = 136315138;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableEnumValueSynonym, INCodableEnumValueSynonym_ptr);
    v12 = Array.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v44);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Getting synonyms for disambiguation item: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  result = outlined bridged method (pb) of @objc INCodableEnumValue.synonyms.getter(a1);
  if (!result)
  {
    goto LABEL_35;
  }

  v16 = result;

  result = specialized Array.count.getter(v16);
  if (!result)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v17 = result;
  if (result >= 1)
  {
    v18 = 0;
    v42 = v16 & 0xC000000000000001;
    v19 = _swiftEmptyArrayStorage;
    v43 = v16;
    do
    {
      if (v42)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v16 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(a2, a3, v20, &selRef_localizedSynonymForLanguage_);
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = v19[2];
          OUTLINED_FUNCTION_4_53();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v37;
        }

        v27 = v19[2];
        v26 = v19[3];
        if (v27 >= v26 >> 1)
        {
          OUTLINED_FUNCTION_14_8(v26);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v38;
        }

        v19[2] = v27 + 1;
        v28 = &v19[2 * v27];
        v28[4] = v24;
        v28[5] = v25;
      }

      v29 = outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(a2, a3, v21, &selRef_localizedPronunciationHintForLanguage_);
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = v19[2];
          OUTLINED_FUNCTION_4_53();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v40;
        }

        v34 = v19[2];
        v33 = v19[3];
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_14_8(v33);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v41;
        }

        v19[2] = v34 + 1;
        v35 = &v19[2 * v34];
        v35[4] = v31;
        v35[5] = v32;
      }

      else
      {
      }

      v18 = (v18 + 1);
      v16 = v43;
    }

    while (v17 != v18);
    goto LABEL_32;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *static INIntentResolutionResult.getDisplayHintsForEnum(attribute:dictionary:locale:shouldIncludeOrdinalReference:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v169 = a4;
  v155 = a3;
  v156 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v190 = v147 - v10;
  OUTLINED_FUNCTION_22_10();
  v11 = type metadata accessor for DisplayHint();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_24_23();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_12_8();
  v171 = v22;
  OUTLINED_FUNCTION_22_10();
  v192 = type metadata accessor for SemanticValue();
  v23 = OUTLINED_FUNCTION_7_1(v192);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_12_8();
  v191 = v31;
  OUTLINED_FUNCTION_22_10();
  v154 = type metadata accessor for Locale.Language();
  v32 = OUTLINED_FUNCTION_7_1(v154);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_3();
  v153 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_14(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v42);
  v152 = v147 - v43;
  OUTLINED_FUNCTION_22_10();
  v44 = type metadata accessor for String.Encoding();
  v45 = OUTLINED_FUNCTION_7_1(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_3();
  v177 = v51 - v50;
  v52 = OUTLINED_FUNCTION_11_34();
  specialized Dictionary.subscript.getter(v52, v53, a2, &v201);
  v54 = &type metadata for Any;
  if (!v203)
  {
    outlined destroy of String?(&v201, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  OUTLINED_FUNCTION_28_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v55 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v55 = v198;
LABEL_6:
  v164 = 0;
  v56 = v55[2];
  v195 = v55 + 4;
  v176 = v47 + 8;
  v151 = v34 + 8;
  v57 = v56;
  v168 = "voiceCommandContact";
  v167 = "voiceCommandReference";
  v188 = (v25 + 16);
  v166 = v14 + 16;
  v187 = v14 + 32;
  v179 = "voiceCommandConfirmation";
  v186 = (v25 + 8);
  v165 = v14 + 8;
  OUTLINED_FUNCTION_5_36();
  v150 = xmmword_216850;
  v174 = _swiftEmptyArrayStorage;
  v157 = v19;
  v60 = v59;
  v181 = v11;
  v173 = v44;
  v175 = v59;
  v178 = v57;
  while (v58 != v57)
  {
    if (v58 >= v60[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    v61 = v195[v58];
    v62 = v58 + 1;
    if (*(v61 + 16))
    {
      v196 = v58 + 1;
      v193 = v58;

      v63 = specialized __RawDictionaryStorage.find<A>(_:)(v54, 0xEF65756C61567972);
      if ((v64 & 1) == 0)
      {

        v62 = v196;
        goto LABEL_15;
      }

      outlined init with copy of Any(*(v61 + 56) + 32 * v63, &v201);

      OUTLINED_FUNCTION_28_15();
      if (swift_dynamicCast())
      {
        v65 = v198;
        v57 = v199;
        v66 = v177;
        static String.Encoding.utf8.getter();
        v67 = v65;
        v60 = String.data(using:allowLossyConversion:)();
        v69 = v68;
        OUTLINED_FUNCTION_3_27(v202);
        v70(v66, v44);
        if (v69 >> 60 == 15)
        {
          goto LABEL_27;
        }

        v71 = objc_opt_self();
        OUTLINED_FUNCTION_22();
        isa = Data._bridgeToObjectiveC()().super.isa;
        *&v201 = 0;
        v73 = [v71 JSONObjectWithData:isa options:0 error:&v201];

        if (!v73)
        {
          v91 = v201;

          v57 = _convertNSErrorToError(_:)();

          v54 = v57;
          swift_willThrow();
          OUTLINED_FUNCTION_5_36();
          v92 = OUTLINED_FUNCTION_22();
          outlined consume of Data?(v92, v93);

          v164 = 0;
          v44 = v173;
          goto LABEL_28;
        }

        v74 = v201;
        _bridgeAnyObjectToAny(_:)();
        v75 = OUTLINED_FUNCTION_22();
        outlined consume of Data?(v75, v76);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        OUTLINED_FUNCTION_28_15();
        v77 = &type metadata for Any;
        v78 = swift_dynamicCast();
        v44 = v173;
        if ((v78 & 1) == 0)
        {
          goto LABEL_27;
        }

        v79 = v198;
        if (!v198[2] || (v80 = OUTLINED_FUNCTION_18_29(), v81 = specialized __RawDictionaryStorage.find<A>(_:)(v80, 0xE500000000000000), (v82 & 1) == 0))
        {
LABEL_26:

          goto LABEL_27;
        }

        outlined init with copy of Any(*(v79 + 56) + 32 * v81, &v201);

        OUTLINED_FUNCTION_28_15();
        if (swift_dynamicCast())
        {
          v83 = v198;
          v60 = v199;
          v148 = outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(v198, v199, v156);
          if (!v148)
          {
            goto LABEL_26;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = v150;
          *(inited + 32) = v83;
          *(inited + 40) = v60;
          v185 = inited;
          v198 = inited;
          v85 = v153;
          Locale.language.getter();
          v86 = v152;
          Locale.Language.languageCode.getter();
          OUTLINED_FUNCTION_3_27(&v183);
          v87(v85, v154);
          v88 = type metadata accessor for Locale.LanguageCode();
          if (__swift_getEnumTagSinglePayload(v86, 1, v88) == 1)
          {
            outlined destroy of String?(v86, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
            v89 = 0xE200000000000000;
            v90 = 28261;
          }

          else
          {
            v194 = Locale.LanguageCode.identifier.getter();
            v89 = v94;
            (*(*(v88 - 8) + 8))(v86, v88);
            v90 = v194;
          }

          v163 = v4;
          v194 = v90;
          v95 = v148;
          v96 = outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(v90, v89, v148, &selRef_localizedDisplayNameForLanguage_);
          if (v97)
          {
            v98 = v96;
            v99 = v97;
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v100[2] = 2;
            v100[6] = v98;
            v100[7] = v99;
            v198 = v100;
          }

          v101 = static INIntentResolutionResult.getSynonymsForEnum(enumValue:language:)(v95, v194, v89);

          specialized Array.append<A>(contentsOf:)(v101);
          v203 = &type metadata for String;
          *&v201 = v67;
          *(&v201 + 1) = v57;
          v161 = static INIntentResolutionResult.makeAsIdString(input:)(&v201);
          v162 = v102;
          __swift_destroy_boxed_opaque_existential_1Tm(&v201);
          v60 = v198;
          v160 = v198[2];
          if (v160)
          {
            v103 = 0;
            v147[1] = v198;
            v159 = v198 + 4;
            v104 = v181;
            OUTLINED_FUNCTION_6_34();
            v158 = v14;
            while (1)
            {
              v172 = v103;
              v105 = &v159[2 * v103];
              v106 = *v105;
              v107 = v105[1];

              OUTLINED_FUNCTION_29_20();
              OUTLINED_FUNCTION_14_28(v200);
              SemanticValue.init(string:label:)();
              OUTLINED_FUNCTION_14_28(&v199);
              OUTLINED_FUNCTION_22();
              SemanticValue.init(string:label:)();
              v108 = *v188;
              (*v188)(v190, v67, v77);
              OUTLINED_FUNCTION_49_3();
              __swift_storeEnumTagSinglePayload(v109, v110, v111, v77);
              v183 = v108;
              v108(v189, v57, v77);
              OUTLINED_FUNCTION_22();
              DisplayHint.init(idValue:displayValue:)();
              OUTLINED_FUNCTION_3_27(&v198);
              v54 = v163;
              v112(v163, v44, v104);
              v113 = v174;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v134 = *(v113 + 16);
                v135 = OUTLINED_FUNCTION_4_53();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v135, v136, v137, v113);
                v113 = v138;
              }

              v115 = *(v113 + 16);
              v114 = *(v113 + 24);
              v57 = v178;
              if (v115 >= v114 >> 1)
              {
                v139 = OUTLINED_FUNCTION_14_8(v114);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v139, v115 + 1, 1, v113);
                v113 = v140;
              }

              *(v113 + 16) = v115 + 1;
              v185 = (*(v14 + 80) + 32) & ~*(v14 + 80);
              v184 = *(v14 + 72);
              v182 = *(v14 + 32);
              v182(v113 + v185 + v184 * v115, v54, v104);
              if (v169)
              {
                v116 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v193, v57);
                v57 = v116[2];
                if (v57)
                {
                  v174 = v113;
                  *&v201 = _swiftEmptyArrayStorage;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v77 = v201;
                  v149 = v116;
                  v67 = v116 + 5;
                  v54 = v157;
                  do
                  {
                    v194 = v57;
                    v117 = *(v67 - 1);
                    v118 = *v67;
                    swift_bridgeObjectRetain_n();
                    OUTLINED_FUNCTION_29_20();
                    OUTLINED_FUNCTION_14_28(v204);
                    v119 = v189;
                    SemanticValue.init(string:label:)();
                    v44 = v192;
                    v120 = v183;
                    v183(v190, v191, v192);
                    OUTLINED_FUNCTION_49_3();
                    __swift_storeEnumTagSinglePayload(v121, v122, v123, v44);
                    v120(v180, v119, v44);
                    DisplayHint.init(idValue:displayValue:)();
                    OUTLINED_FUNCTION_3_27(&v205);
                    v124(v119, v44);

                    *&v201 = v77;
                    v126 = v77[2];
                    v125 = v77[3];
                    if (v126 >= v125 >> 1)
                    {
                      OUTLINED_FUNCTION_14_8(v125);
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v77 = v201;
                    }

                    v77[2] = v126 + 1;
                    v127 = v77 + v185 + v126 * v184;
                    v104 = v181;
                    v182(v127, v54, v181);
                    v67 += 2;
                    v57 = v194 - 1;
                  }

                  while (v194 != 1);

                  v113 = v174;
                }

                else
                {

                  v77 = _swiftEmptyArrayStorage;
                }

                v128 = v77[2];
                v129 = *(v113 + 16);
                v14 = v158;
                if (__OFADD__(v129, v128))
                {
                  goto LABEL_64;
                }

                if (v129 + v128 > *(v113 + 24) >> 1)
                {
                  v141 = OUTLINED_FUNCTION_22_24();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v141, v142, v143, v113);
                  v113 = v144;
                  v129 = *(v144 + 16);
                  if (!v77[2])
                  {
LABEL_57:

                    OUTLINED_FUNCTION_6_34();
                    OUTLINED_FUNCTION_5_36();
                    if (v128)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_58;
                  }
                }

                else
                {
                  v130 = v77[2];
                  if (!v128)
                  {
                    goto LABEL_57;
                  }
                }

                if ((*(v113 + 24) >> 1) - v129 < v128)
                {
                  goto LABEL_66;
                }

                swift_arrayInitWithCopy();

                if (v128)
                {
                  v131 = *(v113 + 16);
                  v132 = __OFADD__(v131, v128);
                  v133 = v131 + v128;
                  v44 = v171;
                  v67 = v191;
                  v77 = v192;
                  v57 = v170;
                  v54 = 0x616C756261636F76;
                  if (v132)
                  {
                    goto LABEL_67;
                  }

                  *(v113 + 16) = v133;
                  goto LABEL_58;
                }
              }

              else
              {
                v14 = v158;
              }

              OUTLINED_FUNCTION_6_34();
              OUTLINED_FUNCTION_5_36();
LABEL_58:
              v174 = v113;
              v103 = v172 + 1;
              OUTLINED_FUNCTION_3_27(v197);
              v145(v44, v104);
              v60 = *v186;
              (*v186)(v57, v77);
              (v60)(v67, v77);
              if (v103 == v160)
              {

                v44 = v173;
                goto LABEL_61;
              }
            }
          }

LABEL_61:

          OUTLINED_FUNCTION_21_22();
          v4 = v163;
        }

        else
        {
LABEL_27:

LABEL_28:
          OUTLINED_FUNCTION_21_22();
        }
      }

      else
      {
        v58 = v196;
      }
    }

    else
    {
LABEL_15:
      v58 = v62;
    }
  }

  return v174;
}

void static INIntentResolutionResult.getInferredDisplayHints(dictionary:shouldIncludeOrdinalReference:)(uint64_t a1, int a2)
{
  v4 = v2;
  v122 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v137 = v106 - v10;
  OUTLINED_FUNCTION_22_10();
  v11 = type metadata accessor for DisplayHint();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v123 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v18 = v16 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = v106 - v21;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_12_8();
  v24 = v23;
  OUTLINED_FUNCTION_22_10();
  v25 = type metadata accessor for SemanticValue();
  v26 = OUTLINED_FUNCTION_7_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_50_0();
  v129 = (v31 - v32);
  v34 = __chkstk_darwin(v33);
  v136 = v106 - v35;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_24_23();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_12_8();
  v138 = v37;
  v38 = OUTLINED_FUNCTION_11_34();
  specialized Dictionary.subscript.getter(v38, v39, a1, &v144);
  if (!v145)
  {
    outlined destroy of String?(&v144, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v40 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v40 = v142;
LABEL_6:
  v41 = v138;
  v42 = 0;
  v126 = v40[2];
  v121 = "voiceCommandContact";
  v120 = "voiceCommandReference";
  v135 = (v28 + 16);
  v119 = v123 + 16;
  v134 = v123 + 32;
  v128 = "voiceCommandConfirmation";
  v133 = (v28 + 8);
  v117 = v123 + 8;
  v125 = _swiftEmptyArrayStorage;
  v110 = v18;
  v118 = v24;
  while (1)
  {
    if (v126 == v42)
    {

      return;
    }

    if (v42 >= v40[2])
    {
      break;
    }

    v43 = v40[v42 + 4];
    if (!*(v43 + 16))
    {
      goto LABEL_12;
    }

    v127 = v42;

    v44 = OUTLINED_FUNCTION_18_29();
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v44, 0xE500000000000000);
    if (v46)
    {
      outlined init with copy of Any(*(v43 + 56) + 32 * v45, &v142);
      outlined init with take of Any(&v142, &v144);
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v142 = v43;
      v47 = static INIntentResolutionResult.inferDescriptionStrings(input:)(&v142);
      __swift_destroy_boxed_opaque_existential_1Tm(&v142);
      v115 = static INIntentResolutionResult.makeAsIdString(input:)(&v144);
      v114 = *(v47 + 16);
      if (v114)
      {
        v116 = v48;
        v107 = v4;
        v49 = 0;
        v106[1] = v47;
        v112 = v47 + 32;
        v50 = v41;
        v51 = v24;
        v132 = v11;
        v109 = v22;
        v108 = v3;
        v113 = v40;
        while (1)
        {
          v124 = v49;
          v52 = (v112 + 16 * v49);
          v53 = *v52;
          v54 = v52[1];

          OUTLINED_FUNCTION_29_20();
          OUTLINED_FUNCTION_14_28(&v148);
          SemanticValue.init(string:label:)();
          OUTLINED_FUNCTION_14_28(&v147);
          v11 = v132;
          SemanticValue.init(string:label:)();
          v55 = *v135;
          v56 = v137;
          (*v135)(v137, v50, v25);
          OUTLINED_FUNCTION_49_3();
          __swift_storeEnumTagSinglePayload(v57, v58, v59, v25);
          v60 = v136;
          v131 = v55;
          v55(v136, v3, v25);
          v61 = v125;
          DisplayHint.init(idValue:displayValue:)();
          OUTLINED_FUNCTION_3_27(&v146);
          v62(v22, v51, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = OUTLINED_FUNCTION_2_58();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85, v86, v87, v88);
            v61 = v89;
          }

          OUTLINED_FUNCTION_9_29();
          if (v64)
          {
            v90 = OUTLINED_FUNCTION_3_57(v63);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v90, v91, v92, v93);
            v61 = v94;
          }

          *(v61 + 16) = v56;
          v140 = (*(v123 + 80) + 32) & ~*(v123 + 80);
          v139 = *(v123 + 72);
          v130 = *(v123 + 32);
          v130(v61 + v140 + v139 * v60, v22, v11);
          if (v122)
          {
            v65 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v127, v126);
            v66 = v65[2];
            if (v66)
            {
              v125 = v61;
              *&v142 = _swiftEmptyArrayStorage;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v67 = v142;
              v111 = v65;
              v68 = v65 + 5;
              v69 = v110;
              do
              {
                v141 = v66;
                v70 = *(v68 - 1);
                v71 = *v68;
                swift_bridgeObjectRetain_n();
                OUTLINED_FUNCTION_29_20();
                OUTLINED_FUNCTION_14_28(&v149);
                v72 = v136;
                SemanticValue.init(string:label:)();
                v73 = v131;
                v131(v137, v138, v25);
                OUTLINED_FUNCTION_49_3();
                __swift_storeEnumTagSinglePayload(v74, v75, v76, v25);
                v73(v129, v72, v25);
                DisplayHint.init(idValue:displayValue:)();
                (*v133)(v72, v25);

                *&v142 = v67;
                v78 = v67[2];
                v77 = v67[3];
                if (v78 >= v77 >> 1)
                {
                  OUTLINED_FUNCTION_14_8(v77);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v67 = v142;
                }

                v67[2] = v78 + 1;
                v11 = v132;
                v130(v67 + v140 + v78 * v139, v69, v132);
                v68 += 2;
                v66 = v141 - 1;
              }

              while (v141 != 1);

              v22 = v109;
              v3 = v108;
              v61 = v125;
            }

            else
            {

              v67 = _swiftEmptyArrayStorage;
            }

            v79 = v67[2];
            v80 = *(v61 + 16);
            v40 = v113;
            if (__OFADD__(v80, v79))
            {
              goto LABEL_45;
            }

            if (v80 + v79 > *(v61 + 24) >> 1)
            {
              v95 = OUTLINED_FUNCTION_22_24();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v95, v96, v97, v61);
              v61 = v98;
              v80 = *(v98 + 16);
              if (!v67[2])
              {
LABEL_37:

                if (v79)
                {
                  goto LABEL_46;
                }

                goto LABEL_38;
              }
            }

            else
            {
              v81 = v67[2];
              if (!v79)
              {
                goto LABEL_37;
              }
            }

            if ((*(v61 + 24) >> 1) - v80 < v79)
            {
              goto LABEL_47;
            }

            swift_arrayInitWithCopy();

            if (v79)
            {
              v82 = *(v61 + 16);
              v83 = __OFADD__(v82, v79);
              v84 = v82 + v79;
              if (v83)
              {
                goto LABEL_48;
              }

              *(v61 + 16) = v84;
            }
          }

          else
          {
            v40 = v113;
          }

LABEL_38:
          v125 = v61;
          v99 = v22;
          v100 = v124 + 1;
          OUTLINED_FUNCTION_3_27(&v145);
          v51 = v101;
          v102();
          v103 = *v133;
          (*v133)(v3, v25);
          v50 = v138;
          v103(v138, v25);
          v104 = v100 == v114;
          v49 = v100;
          v22 = v99;
          if (v104)
          {
            v24 = v51;

            v4 = v107;
            v41 = v50;
            goto LABEL_42;
          }
        }
      }

LABEL_42:
      v105 = v127 + 1;
      __swift_destroy_boxed_opaque_existential_1Tm(&v144);
      v42 = v105;
    }

    else
    {

      v42 = v127;
LABEL_12:
      ++v42;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t closure #1 in static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:)(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SemanticValue();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v18 = (v16 - v17);
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  v22 = *a1;
  v23 = a1[1];

  SemanticValue.init(string:label:)();
  v24 = *(v13 + 16);
  v24(v9, a2, v10);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
  v24(v18, v21, v10);
  DisplayHint.init(idValue:displayValue:)();
  return (*(v13 + 8))(v21, v10);
}

uint64_t static INIntentResolutionResult.encodeDictionary(input:)()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = 0;
  v2 = [v0 dataWithJSONObject:isa options:2 error:&v10];

  v3 = v10;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return countAndFlagsBits;
}

uint64_t static INIntentResolutionResult.base64FromString(string:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data?(v5, v7);
  return countAndFlagsBits;
}

uint64_t outlined bridged method (pb) of @objc INCodableEnumValue.synonyms.getter(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableEnumValueSynonym, INCodableEnumValueSynonym_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 valueWithName:v4];

  return v5;
}

uint64_t outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a3 *a4];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void OUTLINED_FUNCTION_6_34()
{
  v1 = *(v0 - 408);
  v2 = *(v0 - 248);
  v3 = *(v0 - 240);
  v4 = *(v0 - 416);
}

uint64_t OUTLINED_FUNCTION_13_28()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_17_31(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_30_15()
{

  return swift_dynamicCast();
}

uint64_t WFConfirmInteractionFlow.exitValue.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (v2 == 2)
  {
    v4 = *(v0 + 120);
    swift_errorRetain();
  }

  else if (v2 == 1)
  {
    v3 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError();
    return swift_allocError();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError()
{
  result = lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError;
  if (!lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError;
  if (!lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError);
  }

  return result;
}

uint64_t WFConfirmInteractionFlow.__allocating_init(shortcutName:request:appBundleId:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = swift_allocObject();
  WFConfirmInteractionFlow.init(shortcutName:request:appBundleId:deviceState:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t WFConfirmInteractionFlow.init(shortcutName:request:appBundleId:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v14 = type metadata accessor for CATOption();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3_40();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v20))
  {
    v21 = OUTLINED_FUNCTION_52();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#WFConfirmInteractionFlow initialized.", v21, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  outlined init with copy of DeviceState(a6, v7 + 56);
  type metadata accessor for WorkflowSnippetProvider();
  v31 = a3;
  *(v7 + 96) = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a6);
  outlined init with copy of DeviceState(a6, v32);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v22 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_2_44();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_2_44();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_2_44();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_2_44();
  v26 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_2_44();
  v27 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_2_44();
  v28 = CATWrapper.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(v7 + 104) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v32, v22, v30, v23, v24, v25, v26, v27, v28);
  type metadata accessor for WorkflowNLContextProvider();
  *(v7 + 112) = swift_allocObject();
  *(v7 + 120) = 0;
  *(v7 + 128) = 3;
  return v7;
}

uint64_t WFConfirmInteractionFlow.on(input:)()
{
  v2 = v0;
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3_40();
  if (*(v0 + 128) != 3 || *(v0 + 120) != 1)
  {
    return 0;
  }

  Input.parse.getter();
  v7 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v1);
  (*(v4 + 8))(v1, v3);
  if (v7 == 3)
  {
    return 0;
  }

  v9 = *(v2 + 120);
  *(v2 + 120) = v7;
  v10 = *(v2 + 128);
  *(v2 + 128) = 0;
  outlined consume of WFShowAlertFlow.State(v9, v10);
  return 1;
}

uint64_t WFConfirmInteractionFlow.execute()(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t WFConfirmInteractionFlow.execute()()
{
  v48 = v0;
  v1 = v0[17];
  v2 = *(v1 + 120);
  switch(*(v1 + 128))
  {
    case 1:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v28, static Logger.voiceCommands);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_50(v30))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#WFConfirmInteractionFlow completed");
        OUTLINED_FUNCTION_15_0();
      }

      v33 = v0[16];

      static ExecuteResponse.complete()();
      goto LABEL_32;
    case 2:
      v9 = *(v1 + 120);
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v10 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
      swift_errorRetain();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      outlined consume of WFShowAlertFlow.State(v2, 2);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v47 = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v16 = v0[12];
        v15 = v0[13];
        v17 = v0[14];
        v18 = Error.localizedDescription.getter();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v47);

        *(v13 + 4) = v20;
        _os_log_impl(&dword_0, v11, v12, "#WFConfirmInteractionFlow error state: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      v21 = v0[16];
      static ExecuteResponse.complete()();
      outlined consume of WFShowAlertFlow.State(v2, 2);
      goto LABEL_32;
    case 3:
      if (v2)
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v22 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v22, static Logger.voiceCommands);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_50(v24))
        {
          *OUTLINED_FUNCTION_52() = 0;
          OUTLINED_FUNCTION_26(&dword_0, v25, v26, "#WFConfirmInteractionFlow waiting for response");
          OUTLINED_FUNCTION_15_0();
        }

        v27 = v0[16];

        goto LABEL_31;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[18] = v39;
      *v39 = v40;
      v39[1] = WFConfirmInteractionFlow.execute();
      v41 = v0[17];

      return WFConfirmInteractionFlow.buildOutput()();
    default:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v3 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v5))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_40(&dword_0, v6, v7, "#WFConfirmInteractionFlow responseReceived");
        OUTLINED_FUNCTION_15_0();
      }

      if (v2 - 1 < 2)
      {
        v8 = 0;
LABEL_26:
        v34 = v0[16];
        v35 = [objc_allocWithZone(WFConfirmInteractionDialogResponse) initWithInteractionResponseCode:v8];
        v36 = *(v1 + 120);
        *(v1 + 120) = v35;
        v37 = *(v1 + 128);
        *(v1 + 128) = 1;
        v38 = v35;
        outlined consume of WFShowAlertFlow.State(v36, v37);
        static ExecuteResponse.ongoing(requireInput:)();

        goto LABEL_32;
      }

      if (!v2)
      {
        v8 = 1;
        goto LABEL_26;
      }

      v43 = v0[16];
      v44 = *(v1 + 120);
      *(v1 + 120) = 0;
      v45 = *(v1 + 128);
      *(v1 + 128) = 3;
      outlined consume of WFShowAlertFlow.State(v44, v45);
LABEL_31:
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_32:
      OUTLINED_FUNCTION_6_0();

      return v46();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[20] = v4;
  *v4 = v5;
  v4[1] = WFConfirmInteractionFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[16];
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v3 = *(v1 + 120);
  *(v1 + 120) = 1;
  v4 = *(v1 + 128);
  *(v1 + 128) = 3;
  outlined consume of WFShowAlertFlow.State(v3, v4);
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[19];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v5))
  {
    v6 = OUTLINED_FUNCTION_52();
    v1 = v6;
    *v6 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v7, v8, "#WFConfirmInteractionFlow error creating or submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v9 = v0[16];
  v10 = v0[17];

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v4, v1);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[21];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v5))
  {
    v6 = OUTLINED_FUNCTION_52();
    v1 = v6;
    *v6 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v7, v8, "#WFConfirmInteractionFlow error creating or submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v9 = v0[16];
  v10 = v0[17];

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v4, v1);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t WFConfirmInteractionFlow.execute(completion:)()
{
  type metadata accessor for WFConfirmInteractionFlow();
  lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(&lazy protocol witness table cache variable for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow, v0, type metadata accessor for WFConfirmInteractionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFConfirmInteractionFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[36] = v2;
  v1[37] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[38] = OUTLINED_FUNCTION_28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[39] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for DialogPhase();
  v1[40] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[41] = v10;
  v12 = *(v11 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v13 = type metadata accessor for OutputGenerationManifest();
  v1[44] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[45] = v14;
  v16 = *(v15 + 64);
  v1[46] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[47] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[48] = v18;
  v20 = *(v19 + 64);
  v1[49] = OUTLINED_FUNCTION_28();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[37];
    v6 = v5[10];
    v7 = v5[11];
    OUTLINED_FUNCTION_2_59(v5 + 7);
    if (dispatch thunk of DeviceState.isHomePod.getter())
    {
      v8 = v0[37];
      type metadata accessor for WFDialogState();
      v9 = static WFDialogState.isAppFirstRun(appId:)(*(v8 + 40), *(v8 + 48));
    }

    else
    {
      v9 = 0;
    }

    v15 = v0[37];
    v16 = *(v15 + 104);
    v17 = *(v15 + 32);
    v0[50] = v17;
    OUTLINED_FUNCTION_18_4();
    v19 = *(v18 + 176);
    v22 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[51] = v21;
    *v21 = v0;
    v21[1] = WFConfirmInteractionFlow.buildOutput();

    return (v22)(v17, v9 & 1);
  }

  else
  {
    v10 = v0[36];
    v10[3] = type metadata accessor for AceOutput();
    v10[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[79] = v11;
    *v11 = v12;
    v11[1] = WFConfirmInteractionFlow.buildOutput();
    v13 = v0[37];

    return WFConfirmInteractionFlow.buildOutput_prerfv2()();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 408);
  *v4 = *v1;
  v3[52] = v7;

  if (v0)
  {
    v8 = v3[49];
    v9 = v3[46];
    v11 = v3[42];
    v10 = v3[43];
    v14 = v3 + 38;
    v12 = v3[38];
    v13 = v14[1];

    OUTLINED_FUNCTION_6_0();

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v17, v18, v19);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[55];
  v3 = v1[54];
  v4 = v1[53];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_34_16();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *(v4 + 472);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v11[61] = v9;
  v11[62] = v10;
  v11[63] = v12;
  v11[64] = v13;
  v11[65] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 600);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = v4[78];
  v6 = v4[77];
  v7 = v4[76];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 248));
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v4 = v0[52];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  swift_setDeallocating();
  CustomIntentsDialogTemplating.deinit();
  swift_deallocClassInstance();

  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_9_3();
  v10(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 26);
  OUTLINED_FUNCTION_34_16();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[80] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[49];
    v13 = v3[46];
    v15 = v3[42];
    v14 = v3[43];
    v18 = v3 + 38;
    v16 = v3[38];
    v17 = v18[1];

    OUTLINED_FUNCTION_6_0();

    return v19();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 288));
  v1 = *(v0 + 640);
  OUTLINED_FUNCTION_33_12();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 352);

  swift_setDeallocating();
  CustomIntentsDialogTemplating.deinit();
  swift_deallocClassInstance();
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_9_3();
  v9(v8);
  v10 = *(v0 + 520);
  OUTLINED_FUNCTION_33_12();

  OUTLINED_FUNCTION_6_0();

  return v11();
}