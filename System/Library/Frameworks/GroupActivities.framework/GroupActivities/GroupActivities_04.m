uint64_t objectdestroy_4Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

void partial apply for closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)(v3, v0 + v2, v4);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.playback);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v9, v10, "PlaybackSync: Got dismissal callback promptForLeaveOrEndSessionAllowingCancellation: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x60))();
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    v20 = swift_allocObject();
    v21 = a1 & 1;
    *(v20 + 16) = v21;
    *(v20 + 24) = a2;
    *(v20 + 32) = a3;
    v22 = *(v18 + 32);

    v22(v21, partial apply for closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:), v20, ObjectType, v18);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

uint64_t specialized PlaybackSyncer.CatchupState.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_0(a1);
    outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    v13 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v12[0];
    v11 = v12[1];
    outlined consume of Data?(0, 0xF000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    v13 = 1;
    lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);

    outlined copy of Data?(v10, v11);

    __swift_destroy_boxed_opaque_existential_0(a1);
    outlined consume of Data?(v10, v11);
  }

  return v10;
}

unint64_t specialized PlaybackSyncer.Message.MessageType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

uint64_t type metadata completion function for PlaybackSyncer()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for PlaybackSyncer.AVCoordinatorDelegateBridge()
{
  result = type metadata accessor for UUID();
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackSyncer.CatchupState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for PlaybackSyncer.CatchupState(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PlaybackSyncer.Message(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackSyncer.Message(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackSyncer.Message.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackSyncer.Message.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(v2, v5, v3, v4, v6);
}

uint64_t SpatialTemplatePreference.contentExtent.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

char *SpatialTemplatePreference.init(storage:contentExtent:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *a4 = a2;
  *(a4 + 8) = a3 & 1;
  *(a4 + 9) = v4;
  return result;
}

uint64_t SpatialTemplatePreference.init(storage:spatialTemplate:contentExtent:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = outlined destroy of SpatialTemplate?(a2);
  v10 = *a1;
  *a5 = a3;
  *(a5 + 8) = a4 & 1;
  *(a5 + 9) = v10;
  return result;
}

uint64_t outlined destroy of SpatialTemplate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities15SpatialTemplate_pSgMd, &_s15GroupActivities15SpatialTemplate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

GroupActivities::SpatialTemplatePreference::Storage_optional __swiftcall SpatialTemplatePreference.Storage.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SpatialTemplatePreference.description.getter()
{
  v1 = *(v0 + 9);
  v2 = 1701736302;
  v3 = 0x61737265766E6F63;
  v4 = 0x646E756F72727573;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*(v0 + 9))
  {
    v2 = 0x6953794265646973;
  }

  if (*(v0 + 9) <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreference()
{
  v1 = *(v0 + 9);
  v2 = 1701736302;
  v3 = 0x61737265766E6F63;
  v4 = 0x646E756F72727573;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*(v0 + 9))
  {
    v2 = 0x6953794265646973;
  }

  if (*(v0 + 9) <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static SpatialTemplatePreference.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619638;
  v2 = HIBYTE(word_1EB619638);
  *a1 = static SpatialTemplatePreference.none;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t static SpatialTemplatePreference.sideBySide.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sideBySide != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619648;
  v2 = HIBYTE(word_1EB619648);
  *a1 = static SpatialTemplatePreference.sideBySide;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t static SpatialTemplatePreference.conversational.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for conversational != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619658;
  v2 = HIBYTE(word_1EB619658);
  *a1 = static SpatialTemplatePreference.conversational;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t static SpatialTemplatePreference.surround.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for surround != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619668;
  v2 = HIBYTE(word_1EB619668);
  *a1 = static SpatialTemplatePreference.surround;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

void SpatialTemplatePreference.contentExtent(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 9);
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 9) = v3;
}

double SpatialTemplatePreference.role(for:inSeatNumber:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplatePreference.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialTemplatePreference.Storage(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t GroupSession.requestEndpoint(with:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[3] = v1;
  v2[4] = v3;
  v2[5] = v4;
  return MEMORY[0x1EEE6DFA0](GroupSession.requestEndpoint(with:), 0, 0);
}

uint64_t GroupSession.requestEndpoint(with:)()
{
  v24 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v23);
    *(v9 + 12) = 2080;

    v11 = GroupSession.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v23);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Application called requestEndpoint(with: %s) on %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {
    v15 = v0[3];
  }

  v16 = v0[5];
  v22 = *(v0 + 3);
  v17 = swift_task_alloc();
  v0[6] = v17;
  *(v17 + 16) = v22;
  *(v17 + 32) = v16;
  v18 = *(MEMORY[0x1E69E8920] + 4);
  v19 = swift_task_alloc();
  v0[7] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSXPCListenerEndpointCSgMd, &_sSo21NSXPCListenerEndpointCSgMR);
  *v19 = v0;
  v19[1] = AnyGroupActivity.tuConversationActivity<A>(as:);

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000016, 0x80000001AF01B390, partial apply for closure #1 in GroupSession.requestEndpoint(with:), v17, v20);
}

uint64_t closure #1 in GroupSession.requestEndpoint(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v20 = *(a2 + v8[37]);
  (*(v10 + 16))(&v19 - v12, a1, v9);
  v14 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v8[10];
  *(v15 + 3) = v8[11];
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  *(v15 + 6) = a4;
  (*(v10 + 32))(&v15[v14], v13, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in closure #1 in GroupSession.requestEndpoint(with:);
  *(v16 + 24) = v15;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_2;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v20, v17);
  _Block_release(v17);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock[-1] - v11;
  v13 = v7[36];
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = XPCClient.queue.getter();

  (*(v9 + 16))(v12, a4, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v7[10];
  *(v17 + 3) = v7[11];
  *(v17 + 4) = a1;
  v18 = v22;
  *(v17 + 5) = a2;
  *(v17 + 6) = v18;
  (*(v9 + 32))(&v17[v16], v12, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:);
  *(v19 + 24) = v17;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_17;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v15, v20);

  _Block_release(v20);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  v13 = *(*a1 + 288);
  swift_beginAccess();
  v14 = *(a1 + v13);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  (*(v9 + 16))(v12, a4, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = v14;
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = *a1;
  v14 = MEMORY[0x1B2714130](a2, a3);
  (*(v9 + 16))(v12, a4, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSXPCListenerEndpoint?) -> ();
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);

  [v13 requestEndpointWith:v14 completion:v17];
  _Block_release(v17);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSXPCListenerEndpoint?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "connection error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v14 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t GroupSession.requestEndpointError(with:)(uint64_t *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = GroupSession.requestEndpointError(with:);

  return GroupSession.requestEndpoint(with:)(v1 + 2);
}

uint64_t GroupSession.requestEndpointError(with:)(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(v5 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](GroupSession.requestEndpointError(with:), 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t GroupSessionEndpointIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupSessionEndpointIdentifier()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupSessionEndpointIdentifier()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSessionEndpointIdentifier()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance GroupSessionEndpointIdentifier@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GroupSessionEndpointIdentifier@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupSessionEndpointIdentifier(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier()
{
  result = lazy protocol witness table cache variable for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier;
  if (!lazy protocol witness table cache variable for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionEndpointIdentifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for GroupSessionEndpointIdentifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR) - 8);
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1 + ((*(v2 + 80) + 56) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t SystemCoordinatorTable.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t *SystemCoordinatorTable.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SystemCoordinatorTable.shared;
}

uint64_t static SystemCoordinatorTable.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t SystemCoordinatorTable.systemCoordinator(for:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return (specialized SystemCoordinatorTable.systemCoordinator(for:))(v5, v1, v3, v4);
}

uint64_t SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

uint64_t closure #1 in SystemCoordinatorTable.systemCoordinator(for:)()
{
  outlined init with copy of Transferable(*(v0 + 64), v0 + 16);
  v1 = type metadata accessor for SystemCoordinator();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = closure #1 in SystemCoordinatorTable.systemCoordinator(for:);

  return SystemCoordinator.init(clientProvider:)(v0 + 16);
}

{
  **(v0 + 56) = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

uint64_t closure #2 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR);
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

uint64_t closure #2 in SystemCoordinatorTable.systemCoordinator(for:)()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  v7 = v0[18];
  v8 = v0[16];

  return MEMORY[0x1EEE6D8C8](v0 + 22, v8, v4);
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  }

  else
  {
    v3 = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 177) = *(v0 + 176);
  return MEMORY[0x1EEE6DFA0](closure #2 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

{
  v1 = *(v0 + 177);
  if (v1 == 2)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v2 = *(v0 + 8);

    return v2();
  }

  else if ((v1 & 1) != 0 || (v4 = *(v0 + 112), Strong = swift_weakLoadStrong(), (*(v0 + 168) = Strong) == 0))
  {
    v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR);
    v7 = *(MEMORY[0x1E69E85A8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v8[1] = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);

    return MEMORY[0x1EEE6D8C8](v0 + 176, v10, v6);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in SystemCoordinatorTable.systemCoordinator(for:), Strong, 0);
  }
}

{
  *(v0 + 88) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v1 = v0[21];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = v0[15];
    v4 = *(v1 + 112);

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v6)
    {
      v7 = v0[15];
      v8 = (*(v2 + 56) + 16 * v5);
      v10 = *v8;
      v9 = v8[1];

      MEMORY[0x1B27144E0](v9, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
      swift_beginAccess();
      v11 = *(v1 + 112);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v13)
      {
        v14 = v12;
        v15 = *(v1 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(v1 + 112);
        v0[12] = v17;
        *(v1 + 112) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v17 = v0[12];
        }

        v18 = *(v17 + 48);
        v19 = type metadata accessor for UUID();
        (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
        v20 = (*(v17 + 56) + 16 * v14);
        v22 = *v20;
        v21 = v20[1];

        specialized _NativeDictionary._delete(at:)(v14, v17);
        *(v1 + 112) = v17;
      }

      swift_endAccess();
    }

    else
    {
    }
  }

  v23 = v0[21];

  v24 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR);
  v25 = *(MEMORY[0x1E69E85A8] + 4);
  v26 = swift_task_alloc();
  v0[19] = v26;
  *v26 = v0;
  v26[1] = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  v27 = v0[18];
  v28 = v0[16];

  return MEMORY[0x1EEE6D8C8](v0 + 22, v28, v24);
}

uint64_t SystemCoordinatorTable.clearSystemCoordinator(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v9 = *(v1 + 112);
  if (*(v9 + 16))
  {

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v11)
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];

      MEMORY[0x1B27144E0](v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
      (*(v4 + 16))(v7, a1, v3);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, 0, v7);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t SystemCoordinatorTable.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SystemCoordinatorTable.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SystemCoordinatorTable.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t specialized SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[29] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR);
  v4[32] = v8;
  v9 = *(v8 - 8);
  v4[33] = v9;
  v4[34] = *(v9 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[38] = v11;
  v12 = *(v11 - 8);
  v4[39] = v12;
  v4[40] = *(v12 + 64);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[44] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x1EEE6DFA0](specialized SystemCoordinatorTable.systemCoordinator(for:), a2, 0);
}

uint64_t specialized SystemCoordinatorTable.systemCoordinator(for:)()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 232);
  (*(*(v0 + 248) + 24))(*(v0 + 240));
  swift_beginAccess();
  v4 = *(v3 + 112);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = *(v0 + 344);
  v6 = *(v3 + 112);

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if ((v8 & 1) == 0)
  {

LABEL_6:
    v16 = *(v0 + 352);
    v59 = *(v0 + 344);
    v57 = *(v0 + 320);
    v52 = *(v0 + 312);
    v17 = *(v0 + 296);
    v53 = *(v0 + 304);
    v54 = *(v0 + 336);
    v58 = v3;
    v56 = *(v0 + 272);
    v50 = *(v0 + 264);
    v51 = *(v0 + 280);
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    v20 = *(v0 + 240);
    v48 = *(v0 + 288);
    v49 = *(v0 + 232);
    v21 = type metadata accessor for TaskPriority();
    v22 = *(*(v21 - 8) + 56);
    v22(v17, 1, 1, v21);
    outlined init with copy of Transferable(v0 + 16, v0 + 56);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    outlined init with take of Transferable((v0 + 56), v23 + 32);
    v55 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC15GroupActivities17SystemCoordinatorCSg_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in SystemCoordinatorTable.systemCoordinator(for:), v23);
    *(v0 + 360) = v55;
    *(v0 + 208) = (*(v18 + 16))(v20, v18);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    v25 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    MEMORY[0x1B2713BD0](v0 + 208, v24, v25);
    v22(v17, 1, 1, v21);
    v47 = swift_allocObject();
    swift_weakInit();
    (*(v50 + 16))(v51, v48, v19);
    v26 = *(v52 + 16);
    *(v0 + 368) = v26;
    *(v0 + 376) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v54, v59, v53);
    v27 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v28 = (v56 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (*(v52 + 80) + v28 + 8) & ~*(v52 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    (*(v50 + 32))(v30 + v27, v51, v19);
    *(v30 + v28) = v47;
    (*(v52 + 32))(v30 + v29, v54, v53);
    v31 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #2 in SystemCoordinatorTable.systemCoordinator(for:), v30);
    *(v0 + 384) = v31;
    swift_beginAccess();

    v32 = *(v58 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v58 + 112);
    *(v58 + 112) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v31, v59, isUniquelyReferenced_nonNull_native);
    *(v58 + 112) = v60;
    swift_endAccess();
    v34 = *(MEMORY[0x1E69E86C0] + 4);
    v35 = swift_task_alloc();
    *(v0 + 392) = v35;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
    *v35 = v0;
    v35[1] = specialized SystemCoordinatorTable.systemCoordinator(for:);
    v14 = v0 + 216;
    v15 = v55;
    goto LABEL_7;
  }

  v9 = (*(v4 + 56) + 16 * v7);
  v10 = *v9;
  *(v0 + 400) = *v9;
  *(v0 + 408) = v9[1];

  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = *(MEMORY[0x1E69E86C0] + 4);

    v12 = swift_task_alloc();
    *(v0 + 416) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
    *v12 = v0;
    v12[1] = specialized SystemCoordinatorTable.systemCoordinator(for:);
    v14 = v0 + 224;
    v15 = v10;
LABEL_7:

    return MEMORY[0x1EEE6DA40](v14, v15, v13);
  }

  v36 = *(v0 + 344);
  v37 = *(v0 + 304);
  v38 = *(v0 + 312);

  (*(v38 + 8))(v36, v37);
  v40 = *(v0 + 336);
  v39 = *(v0 + 344);
  v41 = *(v0 + 328);
  v43 = *(v0 + 288);
  v42 = *(v0 + 296);
  v44 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v45 = *(v0 + 8);

  return v45(v10 & 0x7FFFFFFFFFFFFFFFLL);
}

{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized SystemCoordinatorTable.systemCoordinator(for:), v2, 0);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);
  if (v1)
  {
    v4 = *(v0 + 376);
    v5 = *(v0 + 232);
    (*(v0 + 368))(*(v0 + 328), *(v0 + 344), *(v0 + 304));
    v6 = SystemCoordinatorTable.systemCoordinatorsById.modify();
    v8 = specialized Dictionary.subscript.modify((v0 + 128));
    v9 = *(v0 + 328);
    v10 = *(v0 + 304);
    v11 = *(v0 + 312);
    if (v7[1])
    {
      v12 = *v7;
      *v7 = v1 | 0x8000000000000000;
    }

    (v8)(v0 + 128, 0);
    v13 = *(v11 + 8);
    v13(v9, v10);
    (v6)(v0 + 96, 0);
    v14 = *(v0 + 384);
    v15 = *(v0 + 360);
    v16 = *(v0 + 344);
    v17 = *(v0 + 304);
    v18 = *(v0 + 288);
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);

    (*(v20 + 8))(v18, v19);
    v13(v16, v17);
  }

  else
  {
    v21 = *(v0 + 384);
    v22 = *(v0 + 360);
    v23 = *(v0 + 312);
    v35 = *(v0 + 288);
    v25 = *(v0 + 256);
    v24 = *(v0 + 264);
    v26 = *(v0 + 232);
    SystemCoordinatorTable.clearSystemCoordinator(_:)(v2);

    (*(v24 + 8))(v35, v25);
    (*(v23 + 8))(v2, v3);
  }

  v28 = *(v0 + 336);
  v27 = *(v0 + 344);
  v29 = *(v0 + 328);
  v31 = *(v0 + 288);
  v30 = *(v0 + 296);
  v32 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v33 = *(v0 + 8);

  return v33(v1);
}

{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized SystemCoordinatorTable.systemCoordinator(for:), v2, 0);
}

{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[43];
  v4 = v0[38];
  v5 = v0[39];

  (*(v5 + 8))(v3, v4);
  v6 = v0[28];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[41];
  v11 = v0[36];
  v10 = v0[37];
  v12 = v0[35];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v13 = v0[1];

  return v13(v6);
}

uint64_t dispatch thunk of SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return v8(a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t partial apply for closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #2 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in SystemCoordinatorTable.systemCoordinator(for:)(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t getEnumTagSinglePayload for SystemCoordinatorTable.Storage.CoordinatorBox(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SystemCoordinatorTable.Storage.CoordinatorBox(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t SpatialTemplateRole.output.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 16))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t GroupActivitySuggestion.__allocating_init<A>(activity:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized GroupActivitySuggestion.init<A>(activity:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t GroupActivitySuggestion.init<A>(activity:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized GroupActivitySuggestion.init<A>(activity:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t implicit closure #1 in GroupActivitySuggestion.init<A>(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v8 = static ConversationManager.shared;
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v10 = (*(*v8 + 160))(v13);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t GroupActivitySuggestion.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  AnyCancellable.cancel()();

  return v1;
}

uint64_t GroupActivitySuggestion.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  AnyCancellable.cancel()();
  v3 = *(v1 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized GroupActivitySuggestion.init<A>(activity:)()
{
  v1 = v0;
  v2 = type metadata accessor for AnyCancellable();
  tryLog<A>(_:_:function:line:)();
  v3 = v7;
  if (!v7)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 52);
    swift_allocObject();
    v3 = AnyCancellable.init(_:)();
  }

  *(v1 + 16) = v3;
  return v1;
}

uint64_t GroupSessionProvider.uuid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v23 = v3;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v15 = v24;
  v16 = v25;
  v24 = (*(a2 + 48))(a1, a2);
  v25 = v17;

  MEMORY[0x1B27141F0](v15, v16);

  type metadata accessor for UUID();
  static SharableObjectIdentifier.identifier<A>(ofType:with:)();
}

uint64_t static GroupSessionProvider.providerIdentifier.getter()
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
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v6);

    return v1;
  }

  _StringGuts.grow(_:)(147);
  MEMORY[0x1B27141F0](0xD000000000000090, 0x80000001AF01B4C0);
  v8 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v8);

  MEMORY[0x1B27141F0](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double GroupSessionProvider.localMember.getter@<D0>(uint64_t a1@<X8>)
{
  return GroupSessionProvider.localMember.getter(a1);
}

{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t GroupSessionProviderTestingOverrides.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GroupSessionProviderTestingOverrides();

  return __swift_project_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
}

uint64_t GroupSessionProviderTestingOverrides.groupSessionServiceProvider.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  return v1;
}

uint64_t GroupSessionProvider.prewarm()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.prewarm(), 0, 0);
}

uint64_t GroupSessionProvider.prewarm()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = specialized GroupSessionProvider.groupSessionService.getter();
  v5 = v4;
  v0[4] = v3;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = GroupSessionProvider.prewarm();

  return v11(ObjectType, v5);
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = GroupSessionProvider.prewarm();
  }

  else
  {
    v3 = GroupSessionProvider.prewarm();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 32);
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
    _os_log_impl(&dword_1AEE80000, v3, v4, "Successfully prewarmed GroupSessionProvider", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[4];
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
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to prewarm GroupSessionProvider", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = v0[6];

  swift_willThrow();
  v7 = v0[1];
  v8 = v0[6];

  return v7();
}

uint64_t GroupSessionProvider.join()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.join(), 0, 0);
}

uint64_t GroupSessionProvider.join()()
{
  v1 = v0[6];
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  v4 = v0[4];
  v3 = v0[5];
  if (v2)
  {
    v5 = v1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = v0[4];
    v7 = v0[5];
    v8 = specialized GroupSessionProvider.groupSessionService.getter();
    v10 = v9;
    v0[10] = v8;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    v29 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = GroupSessionProvider.join();
    v15 = v0[5];
    v16 = v0[6];
    v17 = ObjectType;
    v18 = v10;
    v19 = v29;
  }

  else
  {
    v20 = v2;
    swift_unknownObjectRetain();
    v21 = specialized GroupSessionProvider.groupSessionService.getter();
    v23 = v22;
    v0[7] = v21;
    v24 = swift_getObjectType();
    v25 = *(v23 + 24);
    v30 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    v0[8] = v27;
    *v27 = v0;
    v27[1] = GroupSessionProvider.join();
    v16 = v0[6];
    v15 = v20;
    v17 = v24;
    v18 = v23;
    v19 = v30;
  }

  return v19(v16, v15, v17, v18);
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = GroupSessionProvider.join();
  }

  else
  {
    v3 = GroupSessionProvider.join();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.groupSessionProvider);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Successfully started tracking GroupSessionProvider on join()", v6, 2u);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  (*(v7 + 64))(v9, v7);
  v0[3] = 1;
  CurrentValueSubject.send(_:)();

  v10 = v0[1];

  return v10();
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = GroupSessionProvider.join();
  }

  else
  {
    v3 = GroupSessionProvider.join();
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

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  (*(v6 + 64))(v8, v6);
  v0[3] = 1;
  CurrentValueSubject.send(_:)();

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.groupSessionProvider);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to start tracking GroupSessionProvider on join()", v7, 2u);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);

  (*(v9 + 64))(v10, v9);
  *(v0 + 16) = v2;
  v11 = v2;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 16));
  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.groupSessionProvider);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to start tracking GroupSessionProvider on join()", v6, 2u);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);

  (*(v8 + 64))(v9, v8);
  *(v0 + 16) = v1;
  v10 = v1;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 16));
  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t GroupSessionProvider.leave()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.leave(), 0, 0);
}

uint64_t GroupSessionProvider.leave()()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = specialized GroupSessionProvider.groupSessionService.getter();
  v7 = v6;
  v0[10] = v5;
  ObjectType = swift_getObjectType();
  GroupSessionProvider.uuid.getter(v4, v3, v1);
  v9 = *(v7 + 32);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = GroupSessionProvider.leave();
  v12 = v0[9];

  return v14(v12, ObjectType, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = v2[10];
  (*(v2[8] + 8))(v2[9], v2[7]);
  swift_unknownObjectRelease();
  if (v0)
  {
    v6 = GroupSessionProvider.leave();
  }

  else
  {
    v6 = GroupSessionProvider.leave();
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

  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];

  (*(v7 + 64))(v8, v7);
  v0[3] = 0;
  CurrentValueSubject.send(_:)();

  v9 = v0[1];

  return v9();
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

  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);

  (*(v8 + 64))(v9, v8);
  *(v0 + 16) = v5;
  v10 = v5;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 16));
  swift_willThrow();

  v11 = *(v0 + 8);
  v12 = *(v0 + 96);

  return v11();
}

uint64_t GroupSessionProvider.session.getter(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.session.getter, 0, 0);
}

uint64_t GroupSessionProvider.session.getter()
{
  v23 = v0;
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v2, static Log.groupSessionProvider);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v21[0] = v8;
    *v7 = 136315138;
    v0[7] = v5;
    v9 = >> prefix<A>(_:)((v0 + 7), v6);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Provider %s starting to observe GroupSessions", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v12 = v0[10];
  GroupSessionProvider.sessions.getter(v0[8], v0[9], v19);
  v21[0] = v19[0];
  v21[1] = v19[1];
  v22 = v20;
  v0[12] = swift_getAssociatedTypeWitness();
  v0[13] = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = type metadata accessor for GroupSession.Sessions();
  GroupSession.Sessions.makeAsyncIterator()(v13, v0 + 2);

  swift_unknownObjectRelease();

  v14 = *(MEMORY[0x1E69E85D8] + 4);
  v15 = swift_task_alloc();
  v0[14] = v15;
  v16 = type metadata accessor for GroupSession.Sessions.Iterator();
  WitnessTable = swift_getWitnessTable();
  *v15 = v0;
  v15[1] = GroupSessionProvider.session.getter;

  return MEMORY[0x1EEE6D8E0](v0 + 3, 0, 0, v16, WitnessTable);
}

{
  v2 = *(*v1 + 112);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupSessionProvider.session.getter, 0, 0);
  }

  return result;
}

{
  v34 = v0;
  v1 = v0[3];
  v3 = v0[10];
  v2 = v0[11];
  if (v1)
  {
    v4 = v0[10];
    swift_unknownObjectRetain();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[12];
      v7 = v0[13];
      v9 = v0[10];
      v10 = v0[8];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315394;
      v0[5] = v1;
      v13 = type metadata accessor for GroupSession();
      v14 = >> prefix<A>(_:)((v0 + 5), v13);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v33);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v0[6] = v9;
      v17 = >> prefix<A>(_:)((v0 + 6), v10);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Observed GroupSession: %s on provider: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v12, -1, -1);
      MEMORY[0x1B2715BA0](v11, -1, -1);
    }

    else
    {
    }

    v20 = v0[2];
  }

  else
  {
    v21 = v0[2];

    swift_unknownObjectRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[10];
      v25 = v0[8];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v0[4] = v24;
      v28 = >> prefix<A>(_:)((v0 + 4), v25);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1AEE80000, v22, v23, "Provider %s returning nil for GroupSession", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B2715BA0](v27, -1, -1);
      MEMORY[0x1B2715BA0](v26, -1, -1);
    }
  }

  v31 = v0[1];

  return v31(v1);
}

double GroupSessionProvider.sessions.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.groupSessionProvider);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v26[0] = v12;
    *v11 = 136315138;
    *&v23 = v4;
    v13 = >> prefix<A>(_:)(&v23, a1);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v26);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v9, v10, "Provider %s starting to observe on sessions stream for GroupSessions", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue();
  swift_unknownObjectRetain();
  v16 = static OS_dispatch_queue.main.getter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  GroupSessionObserver.init<A>(for:queue:)(v4, v16, AssociatedTypeWitness, a1, a2, &v23);
  v21[0] = v23;
  v21[1] = v24;
  v22 = v25;
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = type metadata accessor for GroupSessionObserver();
  swift_getWitnessTable();
  _PublisherElements.init(_:)(v21, v19, v26);
  v23 = v26[0];
  v24 = v26[1];
  v25 = v27;
  *&result = GroupSession.Sessions.init(base:)(&v23, a3).n128_u64[0];
  return result;
}

uint64_t GroupSessionProvider.backgroundSessionCreationRequest.getter(uint64_t a1, uint64_t a2)
{
  v3[53] = a2;
  v3[54] = v2;
  v3[52] = a1;
  v4 = type metadata accessor for UUID();
  v3[55] = v4;
  v5 = *(v4 - 8);
  v3[56] = v5;
  v6 = *(v5 + 64) + 15;
  v3[57] = swift_task_alloc();
  v7 = type metadata accessor for LocalAccountMember();
  v3[58] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.backgroundSessionCreationRequest.getter, 0, 0);
}

uint64_t GroupSessionProvider.backgroundSessionCreationRequest.getter()
{
  v65 = v0;
  v60 = (v0 + 12);
  v61 = (v0 + 7);
  v2 = v0[54];
  (*(v0[53] + 72))(v0[52]);
  CurrentValueSubject.value.getter();

  v62 = v0;
  v3 = v0[51];
  v4 = *(v3 + 56);
  v63 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;

  v9 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = (*(v3 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      v14 = objc_opt_self();

      v1 = MEMORY[0x1B2714130](v12, v13);
      v15 = [v14 normalizedHandleWithDestinationID_];

      if (v15)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1B27142A0](v16);
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v63 = v64;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v17 >= v8)
    {
      break;
    }

    v7 = *(v3 + 56 + 8 * v17);
    ++v9;
    if (v7)
    {
      v9 = v17;
      goto LABEL_4;
    }
  }

  v1 = v62;
  v20 = v62[53];
  v19 = v62[54];
  v21 = v62[52];

  v62[60] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v63);

  v22 = *(v20 + 80);
  v9 = v61;
  v22(v21, v20);
  if (!v62[10])
  {
LABEL_34:
    v32 = 0;
    v33 = 0;
    goto LABEL_38;
  }

  v24 = v62[53];
  v23 = v62[54];
  v25 = v62[52];
  outlined init with take of Transferable(v61, (v62 + 2));
  v9 = v60;
  v22(v25, v24);
  if (!v62[15])
  {
LABEL_22:
    if (one-time initialization token for groupSessionProvider == -1)
    {
LABEL_23:
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Log.groupSessionProvider);
      outlined init with copy of Transferable(v1 + 16, v1 + 136);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v64 = v41;
        *v40 = 136315138;
        outlined init with copy of Transferable(v1 + 136, v1 + 176);
        outlined init with copy of Member?(v1 + 176, v1 + 216);
        if (*(v1 + 240))
        {
          outlined init with take of Transferable((v1 + 216), v1 + 256);
          outlined init with copy of Transferable(v1 + 256, v1 + 296);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pMd, &_s15GroupActivities6Member_pMR);
          v42 = String.init<A>(reflecting:)();
          v44 = v43;
          __swift_destroy_boxed_opaque_existential_0((v1 + 256));
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        outlined destroy of Member?(v1 + 176);
        __swift_destroy_boxed_opaque_existential_0((v1 + 136));
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v64);

        *(v40 + 4) = v53;
        _os_log_impl(&dword_1AEE80000, v38, v39, "LocalMember is an unknown type: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x1B2715BA0](v41, -1, -1);
        MEMORY[0x1B2715BA0](v40, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v1 + 136));
      }

      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      goto LABEL_34;
    }

LABEL_42:
    swift_once();
    goto LABEL_23;
  }

  outlined init with copy of Member?(v60, (v62 + 42));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pMd, &_s15GroupActivities6Member_pMR);
  if (swift_dynamicCast())
  {
    v27 = v62[47];
    v26 = v62[48];
    v28 = objc_opt_self();
    v29 = MEMORY[0x1B2714130](v27, v26);
    v30 = [v28 0x1E7A4C954];

    if (v30)
    {

      v31 = objc_allocWithZone(type metadata accessor for AddressableMember());
      v32 = AddressableMember.init(handle:)();
      __swift_destroy_boxed_opaque_existential_0(v62 + 2);
      v33 = lazy protocol witness table accessor for type AccountMember and conformance AccountMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x1E6997538]);
    }

    else
    {
      if (one-time initialization token for groupSessionProvider != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Log.groupSessionProvider);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v64 = v49;
        *v48 = 136315138;
        v62[49] = v27;
        v62[50] = v26;
        v50 = String.init<A>(reflecting:)();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v64);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1AEE80000, v46, v47, "Failed to get tuHandle from AddressableMember %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1B2715BA0](v49, -1, -1);
        MEMORY[0x1B2715BA0](v48, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v62 + 2);
      v32 = 0;
      v33 = 0;
    }

    goto LABEL_37;
  }

  v35 = v62[58];
  v34 = v62[59];
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v62 + 42);
    goto LABEL_22;
  }

  v36 = v62[59];
  v32 = [objc_allocWithZone(type metadata accessor for AccountMember()) init];
  __swift_destroy_boxed_opaque_existential_0(v62 + 2);
  v33 = lazy protocol witness table accessor for type AccountMember and conformance AccountMember(&lazy protocol witness table cache variable for type AccountMember and conformance AccountMember, MEMORY[0x1E6997500]);
  outlined destroy of LocalAccountMember(v36, type metadata accessor for LocalAccountMember);
LABEL_37:
  __swift_destroy_boxed_opaque_existential_0(v62 + 42);
LABEL_38:
  outlined destroy of Member?(v9);
  *(v1 + 488) = v32;
  *(v1 + 496) = v33;
  v54 = *(v1 + 432);
  GroupSessionProvider.uuid.getter(*(v1 + 416), *(v1 + 424), *(v1 + 456));
  v55 = swift_task_alloc();
  *(v1 + 504) = v55;
  *v55 = v1;
  v55[1] = GroupSessionProvider.backgroundSessionCreationRequest.getter;
  v56 = *(v1 + 424);
  v57 = *(v1 + 432);
  v58 = *(v1 + 416);

  return GroupSessionProvider.activityCreateSessionRequest.getter(v58, v56);
}

{
  v1 = v0[65];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[60];
  v12 = v0[59];
  v5 = v0[57];
  v6 = v0[53];
  v7 = v0[52];
  (*(v6 + 88))(v7, v6);
  (*(v6 + 96))(v7, v6);
  v8 = objc_allocWithZone(type metadata accessor for BackgroundSessionCreationRequest());
  v9 = BackgroundSessionCreationRequest.init(id:activitySessionRequest:members:localMember:isCrossAccount:requiresParticipantHandles:)();

  v10 = v0[1];

  return v10(v9);
}

{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[57];
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[64];

  return v4();
}

uint64_t GroupSessionProvider.backgroundSessionCreationRequest.getter(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v9 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v6 = v4[60];
    (*(v4[56] + 8))(v4[57], v4[55]);

    v7 = GroupSessionProvider.backgroundSessionCreationRequest.getter;
  }

  else
  {
    v4[65] = a1;
    v7 = GroupSessionProvider.backgroundSessionCreationRequest.getter;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t GroupSessionProvider.activityCreateSessionRequest.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for AnyGroupActivity(0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.activityCreateSessionRequest.getter, 0, 0);
}

uint64_t GroupSessionProvider.activityCreateSessionRequest.getter()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  (*(v0[3] + 56))(v0[2], v0[3]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  GroupActivity.eraseToAnyGroupActivity()(v3, *(AssociatedConformanceWitness + 8), v1);
  (*(v4 + 8))(v2, v3);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = GroupSessionProvider.activityCreateSessionRequest.getter;
  v8 = v0[8];

  return AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter();
}

{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3(v4);
}

uint64_t GroupSessionProvider.activityCreateSessionRequest.getter(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  outlined destroy of LocalAccountMember(v3, type metadata accessor for AnyGroupActivity);

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.activityCreateSessionRequest.getter, 0, 0);
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for GroupSessionProviderTestingOverrides();
  __swift_allocate_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
  __swift_project_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A22SessionServiceProvider_pSgMd, &_s15GroupActivities0A22SessionServiceProvider_pSgMR);
  return Testable.init(wrappedValue:)();
}

uint64_t static GroupSessionProviderTestingOverrides.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides();
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  return outlined init with copy of GroupSessionProviderTestingOverrides(v3, a1);
}

uint64_t static GroupSessionProviderTestingOverrides.default.setter(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides();
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  outlined assign with copy of GroupSessionProviderTestingOverrides(a1, v3);
  swift_endAccess();
  return outlined destroy of LocalAccountMember(a1, type metadata accessor for GroupSessionProviderTestingOverrides);
}

uint64_t (*static GroupSessionProviderTestingOverrides.default.modify())()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GroupSessionProviderTestingOverrides();
  __swift_project_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  return GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.modify;
}

uint64_t key path getter for static GroupSessionProviderTestingOverrides.default : GroupSessionProviderTestingOverrides.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides();
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  return outlined init with copy of GroupSessionProviderTestingOverrides(v3, a1);
}

uint64_t key path setter for static GroupSessionProviderTestingOverrides.default : GroupSessionProviderTestingOverrides.Type(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides();
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  outlined assign with copy of GroupSessionProviderTestingOverrides(a1, v3);
  return swift_endAccess();
}

uint64_t key path setter for GroupSessionProviderTestingOverrides.groupSessionServiceProvider : GroupSessionProviderTestingOverrides(__int128 *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  return Testable.wrappedValue.setter();
}

void (*GroupSessionProviderTestingOverrides.groupSessionServiceProvider.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  *(v3 + 32) = Testable.wrappedValue.modify();
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t specialized GroupSessionProvider.groupSessionService.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GroupSessionProviderTestingOverrides();
  __swift_project_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  v1 = v3;
  if (v3)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = static BackgroundGroupSessionManager.shared;
  }

  return v1;
}

uint64_t type metadata accessor for GroupSessionProviderTestingOverrides()
{
  result = type metadata singleton initialization cache for GroupSessionProviderTestingOverrides;
  if (!type metadata singleton initialization cache for GroupSessionProviderTestingOverrides)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of Member?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Member?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AccountMember and conformance AccountMember(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of GroupSessionProviderTestingOverrides(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionProviderTestingOverrides();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of GroupSessionProviderTestingOverrides(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionProviderTestingOverrides();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LocalAccountMember(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A20SessionProviderStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata completion function for GroupSessionProviderTestingOverrides()
{
  type metadata accessor for Testable<GroupSessionServiceProvider?>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Testable<GroupSessionServiceProvider?>()
{
  if (!lazy cache variable for type metadata for Testable<GroupSessionServiceProvider?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15GroupActivities0A22SessionServiceProvider_pSgMd, &_s15GroupActivities0A22SessionServiceProvider_pSgMR);
    v0 = type metadata accessor for Testable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Testable<GroupSessionServiceProvider?>);
    }
  }
}

uint64_t dispatch thunk of ErrorRecoveryGroupSessionProvider.fetchMembershipUpdate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v9(a1, a2);
}

uint64_t static Credential.build(from:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Token.accountID.getter();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Token.token.getter();
  v9 = type metadata accessor for Credential.Builder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Token.expirationDate.getter();
  Credential.Builder.setExpirationDate(_:)();

  (*(v3 + 8))(v6, v2);
  Credential.Builder.build()();
}

uint64_t GroupSessionObserver.init<A>(for:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v51 = a3;
  v54 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v47[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47[-v17];
  GroupSessionProvider.uuid.getter(a4, a5, &v47[-v17]);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.client);
  v20 = *(v11 + 16);
  v52 = v18;
  v20(v16, v18, v10);
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = a6;
    v24 = v23;
    v49 = swift_slowAlloc();
    v56 = v49;
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v48 = v22;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v56);
    v51 = a5;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v55 = a1;
    v29 = >> prefix<A>(_:)(&v55, a4);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v56);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v11 + 8))(v16, v10);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v56);

    *(v24 + 24) = v35;
    _os_log_impl(&dword_1AEE80000, v21, v48, "Initialized observer for %s for provider: %s a/k/a ID: %s", v24, 0x20u);
    v36 = v49;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v36, -1, -1);
    v37 = v24;
    a6 = v50;
    MEMORY[0x1B2715BA0](v37, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  v38 = specialized GroupSessionProvider.groupSessionService.getter();
  v40 = v39;
  swift_unknownObjectRelease();
  v41 = *(v40 + 8);
  v42 = *(v11 + 32);
  v43 = v53;
  v42(v53, v52, v10);
  v44 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v45 = swift_allocObject();
  result = v42(v45 + v44, v43, v10);
  *a6 = v54;
  a6[1] = v38;
  a6[2] = v41;
  a6[3] = partial apply for closure #1 in GroupSessionObserver.init<A>(for:queue:);
  a6[4] = v45;
  return result;
}

void GroupSessionObserver.init(for:queue:provider:filter:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

uint64_t GroupSessionObserver.register(activitySession:publishQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for UUID();
  v7 = *(v47 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyGroupActivity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for OSSignpostID();
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 8);
  v18 = *(v3 + 16);
  v59 = 0;
  ObjectType = swift_getObjectType();
  v21 = (*(v18 + 48))(ObjectType, v18);
  v22 = direct field offset for GroupSession.id;
  v23 = *(a3 + 24);
  v54 = *(a3 + 16);
  v55 = v23;
  v56 = a1;
  v57 = a2;
  v52 = &v59;
  v24 = *(*v21 + 160);
  v25 = type metadata accessor for GroupSession();
  v24(a1 + v22, partial apply for implicit closure #1 in GroupSessionObserver.register(activitySession:publishQueue:), v53, partial apply for closure #1 in GroupSessionObserver.register(activitySession:publishQueue:), v51, v25, &protocol witness table for GroupSession<A>);

  v26 = v59;
  if (v59)
  {
    v27 = one-time initialization token for groupSession;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for OSSignposter();
    v46 = __swift_project_value_buffer(v28, static Signposts.groupSession);
    MEMORY[0x1EEE9AC00](v46);
    *(&v45 - 2) = v11;
    v29 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
    *(&v45 - 1) = v29;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v45 - 2) = v11;
    *(&v45 - 1) = v29;
    swift_getKeyPath();
    static Published.subscript.getter();

    v31 = v47;
    (*(v7 + 16))(v10, v14 + *(v11 + 28), v47);
    outlined destroy of AnyGroupActivity(v14);
    UUID.uint64Value.getter();
    (*(v7 + 8))(v10, v31);
    v32 = v50;
    OSSignpostID.init(_:)();

    v33 = OSSignposter.logHandle.getter();
    v34 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      LODWORD(v46) = v34;
      v58 = v36;
      *v35 = 136315138;
      MEMORY[0x1EEE9AC00](v36);
      *(&v45 - 2) = v11;
      *(&v45 - 1) = v29;
      v37 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v37);
      *(&v45 - 2) = v11;
      *(&v45 - 1) = v29;
      swift_getKeyPath();
      static Published.subscript.getter();

      v38 = *v14;
      v39 = v14[1];

      outlined destroy of AnyGroupActivity(v14);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v58);

      *(v35 + 4) = v40;
      v41 = v50;
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEE80000, v33, v46, v42, "group-session-received", "%s", v35, 0xCu);
      v43 = v47;
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x1B2715BA0](v43, -1, -1);
      MEMORY[0x1B2715BA0](v35, -1, -1);

      (*(v48 + 8))(v41, v49);
    }

    else
    {

      (*(v48 + 8))(v32, v49);
    }
  }

  return v26;
}

uint64_t implicit closure #1 in GroupSessionObserver.register(activitySession:publishQueue:)(uint64_t *a1, void *a2)
{
  type metadata accessor for GroupSession();

  v4 = specialized GroupSession.__allocating_init(activitySession:publishQueue:)(a1, a2);

  return v4;
}

uint64_t closure #6 in GroupSessionObserver.receive<A>(subscriber:)(void *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (*(a2 + 24))(*a1);
  if ((v3 & 1) == 0)
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.client);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
      v9 = String.init<A>(reflecting:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1AEE80000, v5, v6, "activity session %s is filtered for observer. Dropping", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }
  }

  return v3 & 1;
}

void closure #8 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.client);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;

    v6 = GroupSession.description.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "Observer receiving activity session: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  else
  {
  }
}

void closure #9 in GroupSessionObserver.receive<A>(subscriber:)()
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.client);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = _typeName(_:qualified:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "Received completion on observer for activity type: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }
}

uint64_t partial apply for closure #1 in GroupSessionObserver.init<A>(for:queue:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return static UUID.== infix(_:_:)();
}

uint64_t partial apply for closure #6 in GroupSessionObserver.receive<A>(subscriber:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #6 in GroupSessionObserver.receive<A>(subscriber:)(a1, (v1 + 6));
}

uint64_t partial apply for closure #7 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *a1;
  v10 = *(v2 + 48);
  v11 = *(v2 + 64);
  v7 = *(v2 + 88);
  v12 = *(v2 + 80);
  v8 = type metadata accessor for GroupSessionObserver();
  result = GroupSessionObserver.register(activitySession:publishQueue:)(v6, v7, v8);
  *a2 = result;
  return result;
}

void partial apply for closure #8 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  closure #8 in GroupSessionObserver.receive<A>(subscriber:)(a1);
}

void partial apply for closure #9 in GroupSessionObserver.receive<A>(subscriber:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  closure #9 in GroupSessionObserver.receive<A>(subscriber:)();
}

uint64_t getEnumTagSinglePayload for GroupSessionObserver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for GroupSessionObserver(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t partial apply for implicit closure #1 in GroupSessionObserver.register(activitySession:publishQueue:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return implicit closure #1 in GroupSessionObserver.register(activitySession:publishQueue:)(*(v0 + 32), *(v0 + 40));
}

uint64_t partial apply for closure #1 in GroupSessionObserver.register(activitySession:publishQueue:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
}

uint64_t outlined destroy of AnyGroupActivity(uint64_t a1)
{
  v2 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GroupActivity.init(activity:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - v10;
  v11 = type metadata accessor for AnyGroupActivity(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a2 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  if ((*(a3 + 48))(*a1, a1[1], *(a1 + *(v11 + 32)), *(a1 + *(v11 + 32) + 8), a2, a3))
  {
    v36 = a4;
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v17;
      MEMORY[0x1EEE9AC00](v17);
      outlined init with copy of AnyGroupActivity(a1, v15);
      v19 = v43;
      (*(v18 + 8))(v15, a2, v18);
      if (v19)
      {
        return outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
      }

      else
      {
        v30 = v39;
        v31 = swift_dynamicCast();
        v32 = v40;
        v33 = *(v40 + 56);
        if (v31)
        {
          v33(v30, 0, 1, a2);
          outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
          return (*(v32 + 32))(v36, v30, a2);
        }

        else
        {
          v33(v30, 1, 1, a2);
          (*(v37 + 8))(v30, v38);
          v41 = 0;
          v42 = 0xE000000000000000;
          _StringGuts.grow(_:)(31);

          v41 = 0xD00000000000001DLL;
          v42 = 0x80000001AF01AEE0;
          swift_getMetatypeMetadata();
          v34 = _typeName(_:qualified:)();
          MEMORY[0x1B27141F0](v34);

          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }
    }

    else
    {
      v22 = type metadata accessor for PropertyListDecoder();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      v25 = (a1 + *(v11 + 24));
      v26 = *v25;
      v27 = v25[1];
      outlined copy of Data._Representation(*v25, v27);
      v28 = *(a3 + 8);
      v29 = v43;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
      outlined consume of Data._Representation(v26, v27);

      if (!v29)
      {
        return (*(v40 + 32))(v36, &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
  }

  return result;
}

uint64_t outlined init with copy of AnyGroupActivity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivity.eraseToAnyGroupActivity()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v56 = a3;
  v57 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v7 = *(*(v57 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v16;
  v67 = type metadata accessor for UUID();
  v59 = *(v67 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v11 + 16);
  v21(v17, v4, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities012IdentifiableA8Activity_pMd, &_s15GroupActivities012IdentifiableA8Activity_pMR);
  v22 = swift_dynamicCast();
  v58 = v20;
  if (v22)
  {
    outlined init with take of Transferable(&v61, v64);
    v55 = v21;
    v23 = v15;
    v24 = a2;
    v25 = v4;
    v26 = v10;
    v27 = v65;
    v28 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v29 = v28;
    v10 = v26;
    v4 = v25;
    a2 = v24;
    v15 = v23;
    v21 = v55;
    IdentifiableGroupActivity.uuid.getter(v27, v29, v20);
    __swift_destroy_boxed_opaque_existential_0(v64);
  }

  else
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    outlined destroy of NSObject?(&v61, &_s15GroupActivities012IdentifiableA8Activity_pSgMd, &_s15GroupActivities012IdentifiableA8Activity_pSgMR);
    UUID.init()();
  }

  v21(v15, v4, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities09AnyStaticA8Activity_pMd, &_s15GroupActivities09AnyStaticA8Activity_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Transferable(&v61, v64);
    v30 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v31 = *(*(v30 + 8) + 16);
    dispatch thunk of Identifiable.id.getter();
    v32 = *(&v61 + 1);
    v33 = v61;
    __swift_destroy_boxed_opaque_existential_0(v64);
  }

  else
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    outlined destroy of NSObject?(&v61, &_s15GroupActivities09AnyStaticA8Activity_pSgMd, &_s15GroupActivities09AnyStaticA8Activity_pSgMR);
    v33 = 0;
    v32 = 0;
  }

  v34 = (*(a2 + 24))(a1, a2);
  v36 = v35;
  *v10 = GroupActivity.awaitMetadataValue()(a1, a2);
  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for PropertyListEncoder();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v40 = *(a2 + 16);
  v41 = v60;
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v41)
  {

    outlined destroy of AnyGroupActivity(v10, type metadata accessor for AnyGroupActivity.MetadataProvider);
    return (*(v59 + 8))(v58, v67);
  }

  else
  {
    v45 = v42;
    v46 = v43;

    v47 = type metadata accessor for AnyGroupActivity(0);
    v48 = v47[7];
    v49 = *(v59 + 32);
    v60 = v32;
    v50 = v33;
    v51 = v56;
    v49(v56 + v48, v58, v67);
    *v51 = v34;
    v51[1] = v36;
    result = outlined init with take of AnyGroupActivity.MetadataProvider(v10, v51 + v47[5]);
    v52 = (v51 + v47[6]);
    *v52 = v45;
    v52[1] = v46;
    v53 = (v51 + v47[8]);
    v54 = v60;
    *v53 = v50;
    v53[1] = v54;
  }

  return result;
}

uint64_t outlined destroy of AnyGroupActivity(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int GroupActivityError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int GroupActivityActivationResult.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

uint64_t static GroupActivity.activityIdentifier.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1B27141F0](46, 0xE100000000000000);
    v3 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v3);

    return v2;
  }

  else
  {
    _StringGuts.grow(_:)(149);
    MEMORY[0x1B27141F0](0xD000000000000092, 0x80000001AF01B580);
    v5 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v5);

    MEMORY[0x1B27141F0](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t GroupActivity.prepareForActivation(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v46 - v11;
  v12 = type metadata accessor for Optional();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v53 = v20;
  v54 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v24 = *(v17 + 16);
  v24(v22, v4, a3);
  v25 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v50))
  {
    v26 = swift_slowAlloc();
    v49 = a2;
    v27 = v26;
    v47 = swift_slowAlloc();
    v57 = v47;
    *v27 = 136315138;
    v24(v16, v22, a3);
    (*(v17 + 56))(v16, 0, 1, a3);
    v28 = >> prefix<A>(_:)(v16, a3);
    v48 = v5;
    v29 = a4;
    v30 = v28;
    v46 = v24;
    v32 = v31;
    (*(v51 + 8))(v16, v52);
    (*(v17 + 8))(v22, a3);
    v33 = v30;
    a4 = v29;
    v5 = v48;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v57);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_1AEE80000, v25, v50, "Application called syncronous activate SPI on %s", v27, 0xCu);
    v35 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1B2715BA0](v35, -1, -1);
    v36 = v27;
    a2 = v49;
    MEMORY[0x1B2715BA0](v36, -1, -1);

    v37 = v46;
  }

  else
  {

    (*(v17 + 8))(v22, a3);
    v37 = v24;
  }

  v38 = type metadata accessor for TaskPriority();
  v39 = v55;
  (*(*(v38 - 8) + 56))(v55, 1, 1, v38);
  v40 = v54;
  v37(v54, v5, a3);
  v41 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v42 = (v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = a3;
  *(v43 + 5) = a4;
  (*(v17 + 32))(&v43[v41], v40, a3);
  v44 = &v43[v42];
  *v44 = v56;
  *(v44 + 1) = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v39, &async function pointer to partial apply for closure #1 in GroupActivity.prepareForActivation(completionHandler:), v43);
}

uint64_t closure #1 in GroupActivity.prepareForActivation(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a5;
  v8[3] = a6;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = closure #1 in GroupActivity.prepareForActivation(completionHandler:);

  return GroupActivity.prepareForActivation()((v8 + 5), a7, a8);
}

uint64_t closure #1 in GroupActivity.prepareForActivation(completionHandler:)()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in GroupActivity.prepareForActivation(completionHandler:), 0, 0);
}

{
  v6 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 40);
  v1(&v5);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t GroupActivity.prepareForActivation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1AF00EBD0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  v7 = swift_task_alloc();
  *(v3 + 88) = v7;
  *v7 = v3;
  v7[1] = GroupActivity.prepareForActivation();

  return GroupActivity.prepareForActivation(options:)(a1, v3 + 16, a2, a3);
}

uint64_t GroupActivity.prepareForActivation()()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t GroupActivity.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a3;
  v8 = type metadata accessor for Optional();
  *(v5 + 192) = v8;
  v9 = *(v8 - 8);
  *(v5 + 200) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v11 = *(a3 - 8);
  *(v5 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v13 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v13;
  *(v5 + 80) = *(a2 + 64);
  v14 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v14;

  return MEMORY[0x1EEE6DFA0](GroupActivity.prepareForActivation(options:), 0, 0);
}

uint64_t GroupActivity.prepareForActivation(options:)()
{
  v39 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = *(v2 + 16);
  v6(v1, v3, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  if (v9)
  {
    v37 = v8;
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    v34 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v15 = 136315138;
    v6(v13, v10, v14);
    (*(v11 + 56))(v13, 0, 1, v14);
    v16 = >> prefix<A>(_:)(v13, v14);
    v18 = v17;
    (*(v12 + 8))(v13, v34);
    (*(v11 + 8))(v10, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v38);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v7, v37, "Client did call prepare for activation %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B2715BA0](v35, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {
    v20 = *(v0 + 168);

    (*(v11 + 8))(v10, v20);
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 184);
  v23 = specialized GroupActivity.provider.getter(*(v0 + 168));
  v25 = v24;
  *(v0 + 232) = v23;
  ObjectType = swift_getObjectType();
  v27 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v28 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v28;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v27;
  v29 = *(v25 + 56);
  swift_unknownObjectRetain();
  v36 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 240) = v31;
  *v31 = v0;
  v31[1] = GroupActivity.prepareForActivation(options:);
  v32 = *(v0 + 160);

  return v36(v32, v0 + 88, ObjectType, v25);
}

{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 208);
  v7 = *v0;

  swift_unknownObjectRelease();

  v5 = *(v7 + 8);

  return v5();
}

Swift::Void __swiftcall GroupActivity.activate()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = v33 - v8;
  v9 = type metadata accessor for Optional();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.default);
  v19 = *(v14 + 16);
  v19(v17, v2, v5);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33[0] = v4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33[1] = v3;
    v25 = v24;
    v37 = v24;
    *v23 = 136315138;
    v19(v13, v17, v5);
    (*(v14 + 56))(v13, 0, 1, v5);
    v26 = >> prefix<A>(_:)(v13, v5);
    v28 = v27;
    (*(v34 + 8))(v13, v35);
    (*(v14 + 8))(v17, v5);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v37);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1AEE80000, v20, v21, "Application called syncronous activate SPI on %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1B2715BA0](v25, -1, -1);
    v30 = v23;
    v4 = v33[0];
    MEMORY[0x1B2715BA0](v30, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v5);
  }

  v31 = type metadata accessor for UUID();
  v32 = v36;
  (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
  GroupActivity.activate(onConversationWithUUID:)(v32, v5, v4);
  outlined destroy of NSObject?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t GroupActivity.activate(onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v81 - v7;
  v9 = type metadata accessor for Optional();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v81 - v12;
  v109 = a2;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v106 = v16;
  v107 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v104 = *(v18 - 8);
  v19 = *(v104 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v105 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v98 = &v81 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v81 - v25;
  v103 = v27;
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v81 - v28;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v95 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v96 = &v81 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v81 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v81 - v40;
  outlined init with copy of UUID?(a1, v29);
  v97 = *(v31 + 48);
  if (v97(v29, 1, v30) == 1)
  {
    outlined destroy of NSObject?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v42 = v109;
  }

  else
  {
    v91 = v26;
    v93 = a1;
    v94 = v8;
    v43 = *(v31 + 32);
    v87 = v31 + 32;
    v86 = v43;
    v43(v41, v29, v30);
    v44 = v41;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.default);
    v46 = *(v31 + 16);
    v92 = v39;
    v88 = v46;
    v46(v39, v41, v30);
    v47 = *(v13 + 16);
    v48 = v102;
    v42 = v109;
    v90 = v13 + 16;
    v89 = v47;
    v47(v102, v110, v109);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v83 = v50;
      v84 = v49;
      v51 = v13;
      v85 = v44;
      v52 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v111[0] = v81;
      v82 = v52;
      *v52 = 136315394;
      v53 = v91;
      v54 = v92;
      v55 = v88;
      v88(v91, v92, v30);
      (*(v31 + 56))(v53, 0, 1, v30);
      v56 = v98;
      outlined init with copy of UUID?(v53, v98);
      if (v97(v56, 1, v30) == 1)
      {
        v57 = 0xE300000000000000;
        v58 = 7104878;
      }

      else
      {
        v60 = v96;
        v86(v96, v56, v30);
        v55(v95, v60, v30);
        v58 = String.init<A>(reflecting:)();
        v57 = v61;
        (*(v31 + 8))(v60, v30);
      }

      v13 = v51;
      outlined destroy of NSObject?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v62 = *(v31 + 8);
      v62(v54, v30);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, v111);

      v64 = v82;
      *(v82 + 1) = v63;
      *(v64 + 6) = 2080;
      v65 = v99;
      v66 = v102;
      v42 = v109;
      v89(v99, v102, v109);
      (*(v13 + 56))(v65, 0, 1, v42);
      v67 = >> prefix<A>(_:)(v65, v42);
      v69 = v68;
      (*(v100 + 8))(v65, v101);
      (*(v13 + 8))(v66, v42);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v111);

      *(v64 + 14) = v70;
      v71 = v84;
      _os_log_impl(&dword_1AEE80000, v84, v83, "Application called synchronous activate SPI with conversation UUID %s on %s", v64, 0x16u);
      v72 = v81;
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v72, -1, -1);
      MEMORY[0x1B2715BA0](v64, -1, -1);

      v62(v85, v30);
    }

    else
    {

      (*(v13 + 8))(v48, v42);
      v59 = *(v31 + 8);
      v59(v92, v30);
      v59(v44, v30);
    }

    a1 = v93;
    v8 = v94;
  }

  v73 = type metadata accessor for TaskPriority();
  (*(*(v73 - 8) + 56))(v8, 1, 1, v73);
  v74 = v107;
  (*(v13 + 16))(v107, v110, v42);
  v75 = v105;
  outlined init with copy of UUID?(a1, v105);
  v76 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v77 = (v106 + v76 + *(v104 + 80)) & ~*(v104 + 80);
  v78 = swift_allocObject();
  *(v78 + 2) = 0;
  *(v78 + 3) = 0;
  v79 = v108;
  *(v78 + 4) = v42;
  *(v78 + 5) = v79;
  (*(v13 + 32))(&v78[v76], v74, v42);
  outlined init with take of UUID?(v75, &v78[v77]);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in GroupActivity.activate(onConversationWithUUID:), v78);
}

{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v6 = type metadata accessor for UUID();
  v4[23] = v6;
  v7 = *(v6 - 8);
  v4[24] = v7;
  v8 = *(v7 + 64) + 15;
  v4[25] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v4[26] = v9;
  v10 = *(v9 - 8);
  v4[27] = v10;
  v11 = *(v10 + 64) + 15;
  v4[28] = swift_task_alloc();
  v12 = *(*(type metadata accessor for AnyGroupActivity(0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v13 = type metadata accessor for SharePlayLatencyLogger.Event();
  v4[30] = v13;
  v14 = *(v13 - 8);
  v4[31] = v14;
  v15 = *(v14 + 64) + 15;
  v4[32] = swift_task_alloc();
  v16 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v4[33] = v16;
  v17 = *(v16 - 8);
  v4[34] = v17;
  v18 = *(v17 + 64) + 15;
  v4[35] = swift_task_alloc();
  v19 = type metadata accessor for Optional();
  v4[36] = v19;
  v20 = *(v19 - 8);
  v4[37] = v20;
  v21 = *(v20 + 64) + 15;
  v4[38] = swift_task_alloc();
  v22 = *(a2 - 8);
  v4[39] = v22;
  v23 = *(v22 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivity.activate(onConversationWithUUID:), 0, 0);
}

uint64_t closure #1 in GroupActivity.activate(onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 24) = v11;
  *v11 = v7;
  v11[1] = closure #1 in GroupActivity.activate(onConversationWithUUID:);

  return GroupActivity.activate(onConversationWithUUID:)(a5, a6, a7);
}

uint64_t closure #1 in GroupActivity.activate(onConversationWithUUID:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = closure #1 in GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    *(v4 + 40) = a1 & 1;
    v7 = closure #1 in GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t closure #1 in GroupActivity.activate(onConversationWithUUID:)()
{
  if (*(v0 + 40) == 1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Session successfully activated";
LABEL_10:
      _os_log_impl(&dword_1AEE80000, v2, v3, v5, v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Failed to activate session";
      goto LABEL_10;
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v17 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to activate session error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t GroupActivity.activate(onConversationWithUUID:)()
{
  v40 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 312);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = type metadata accessor for Logger();
  *(v0 + 368) = __swift_project_value_buffer(v5, static Log.default);
  v6 = *(v2 + 16);
  *(v0 + 376) = v6;
  *(v0 + 384) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 360);
  v11 = *(v0 + 312);
  v38 = v6;
  if (v9)
  {
    v37 = v8;
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v35 = *(v0 + 288);
    v14 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v15 = 136315138;
    v6(v13, v10, v14);
    (*(v11 + 56))(v13, 0, 1, v14);
    v34 = >> prefix<A>(_:)(v13, v14);
    v17 = v16;
    (*(v12 + 8))(v13, v35);
    v18 = *(v11 + 8);
    v18(v10, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v17, &v39);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v7, v37, "Application called async activate on %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2715BA0](v36, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {
    v20 = *(v0 + 160);

    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  *(v0 + 392) = v18;
  v21 = *(v0 + 352);
  v22 = *(v0 + 280);
  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v25 = *(v0 + 240);
  v27 = *(v0 + 168);
  v26 = *(v0 + 176);
  v28 = *(v0 + 160);
  (*(v24 + 104))(v23, *MEMORY[0x1E6997550], v25);
  static SharePlayLatencyLogger.beginInterval<A>(for:activity:)();
  (*(v24 + 8))(v23, v25);
  v38(v21, v26, v28);
  type metadata accessor for CollaborationActivity();
  if (swift_dynamicCast())
  {
    *(v0 + 400) = *(v0 + 128);
    v29 = swift_task_alloc();
    *(v0 + 408) = v29;
    *v29 = v0;
    v29[1] = GroupActivity.activate(onConversationWithUUID:);

    return CollaborationActivity.activate()();
  }

  else
  {
    v31 = *(v0 + 176);
    GroupActivity.eraseToAnyGroupActivity()(*(v0 + 160), *(v0 + 168), *(v0 + 232));
    v32 = swift_task_alloc();
    *(v0 + 424) = v32;
    *v32 = v0;
    v32[1] = GroupActivity.activate(onConversationWithUUID:);
    v33 = *(v0 + 232);

    return AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter();
  }
}

{
  v1 = *(v0 + 400);

  v18 = *(v0 + 496);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  v10 = *(v0 + 264);
  v13 = *(v0 + 304);
  v14 = *(v0 + 256);
  v15 = *(v0 + 232);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);
  MEMORY[0x1B2712F70](v9);
  (*(v8 + 8))(v9, v10);

  v11 = *(v0 + 8);

  return v11(v18);
}

{
  v47 = v0;
  v1 = *(v0 + 432);
  [v1 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for TUMutableConversationActivityCreateSessionRequest();
  swift_dynamicCast();
  v2 = *(v0 + 136);
  *(v0 + 440) = v2;
  if (one-time initialization token for groupSession != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 224);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v7, static Signposts.groupSession);
  v8 = [v2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uint64Value.getter();
  (*(v5 + 8))(v4, v6);
  OSSignpostID.init(_:)();
  v9 = v2;
  v10 = OSSignposter.logHandle.getter();
  v11 = static os_signpost_type_t.event.getter();

  v12 = OS_os_log.signpostsEnabled.getter();
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 208);
  if (v12)
  {
    v44 = v11;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = v17;
    *v16 = 136315138;
    v18 = [v9 activityIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v46);

    *(v16 + 4) = v22;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEE80000, v10, v44, v23, "group-session-requested", "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B2715BA0](v17, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  (*(v14 + 8))(v13, v15);
  v24 = *(v0 + 384);
  (*(v0 + 376))(*(v0 + 344), *(v0 + 176), *(v0 + 160));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013CollaborationA8Activity_pMd, &_s15GroupActivities013CollaborationA8Activity_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Transferable((v0 + 56), v0 + 16);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v25);
    v27 = *(v26 + 24);
    v45 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    *(v0 + 448) = v29;
    *v29 = v0;
    v29[1] = GroupActivity.activate(onConversationWithUUID:);

    return v45(v25, v26);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    outlined destroy of NSObject?(v0 + 56, &_s15GroupActivities013CollaborationA8Activity_pSgMd, &_s15GroupActivities013CollaborationA8Activity_pSgMR);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    v33 = specialized GroupActivity.provider.getter(*(v0 + 160));
    v35 = v34;
    *(v0 + 472) = v33;
    ObjectType = swift_getObjectType();
    v37 = *(v35 + 64);
    swift_unknownObjectRetain();
    v43 = (v37 + *v37);
    v38 = v37[1];
    v39 = swift_task_alloc();
    *(v0 + 480) = v39;
    *v39 = v0;
    v39[1] = GroupActivity.activate(onConversationWithUUID:);
    v40 = *(v0 + 440);
    v41 = *(v0 + 232);
    v42 = *(v0 + 152);

    return v43(v41, v40, v42, ObjectType, v35);
  }
}

{
  v1 = *(v0 + 464);
  [*(v0 + 440) setShare_];

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = specialized GroupActivity.provider.getter(*(v0 + 160));
  v6 = v5;
  *(v0 + 472) = v4;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 64);
  swift_unknownObjectRetain();
  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 480) = v10;
  *v10 = v0;
  v10[1] = GroupActivity.activate(onConversationWithUUID:);
  v11 = *(v0 + 440);
  v12 = *(v0 + 232);
  v13 = *(v0 + 152);

  return v15(v12, v11, v13, ObjectType, v6);
}

{
  v70 = v0;
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v68 = *(v0 + 497);
  if (v68 == 1)
  {
    v2(*(v0 + 336), v4, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 440);
    v10 = *(v0 + 392);
    if (v8)
    {
      v62 = v7;
      v11 = *(v0 + 376);
      v12 = *(v0 + 336);
      v52 = v12;
      v54 = *(v0 + 384);
      v59 = *(v0 + 392);
      v14 = *(v0 + 304);
      v13 = *(v0 + 312);
      v15 = *(v0 + 296);
      v56 = *(v0 + 288);
      v66 = *(v0 + 232);
      v16 = *(v0 + 160);
      v17 = swift_slowAlloc();
      v64 = v9;
      v18 = swift_slowAlloc();
      v69 = v18;
      *v17 = 136315138;
      v11(v14, v12, v16);
      (*(v13 + 56))(v14, 0, 1, v16);
      v19 = >> prefix<A>(_:)(v14, v16);
      v21 = v20;
      (*(v15 + 8))(v14, v56);
      v59(v52, v16);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v69);

      *(v17 + 4) = v22;
      v23 = "Application activated activity %s";
LABEL_6:
      _os_log_impl(&dword_1AEE80000, v6, v62, v23, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B2715BA0](v18, -1, -1);
      MEMORY[0x1B2715BA0](v17, -1, -1);

      v36 = v66;
      goto LABEL_10;
    }

    v37 = *(v0 + 336);
  }

  else
  {
    v2(*(v0 + 328), v4, v5);
    v6 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v6, v24);
    v9 = *(v0 + 440);
    v10 = *(v0 + 392);
    if (v25)
    {
      v26 = *(v0 + 376);
      v27 = *(v0 + 328);
      v53 = v27;
      v55 = *(v0 + 384);
      v60 = *(v0 + 392);
      v62 = v24;
      v28 = *(v0 + 304);
      v29 = *(v0 + 312);
      v30 = *(v0 + 296);
      v57 = *(v0 + 288);
      v66 = *(v0 + 232);
      v31 = *(v0 + 160);
      v17 = swift_slowAlloc();
      v64 = v9;
      v18 = swift_slowAlloc();
      v69 = v18;
      *v17 = 136315138;
      v26(v28, v27, v31);
      (*(v29 + 56))(v28, 0, 1, v31);
      v32 = >> prefix<A>(_:)(v28, v31);
      v34 = v33;
      (*(v30 + 8))(v28, v57);
      v60(v53, v31);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v69);

      *(v17 + 4) = v35;
      v23 = "Application failed activity activation %s";
      goto LABEL_6;
    }

    v37 = *(v0 + 328);
  }

  v38 = *(v0 + 312);
  v39 = *(v0 + 232);
  v40 = *(v0 + 160);

  v10(v37, v40);
  v36 = v39;
LABEL_10:
  outlined destroy of AnyGroupActivity(v36, type metadata accessor for AnyGroupActivity);
  v41 = *(v0 + 352);
  v42 = *(v0 + 360);
  v44 = *(v0 + 336);
  v43 = *(v0 + 344);
  v46 = *(v0 + 320);
  v45 = *(v0 + 328);
  v47 = *(v0 + 272);
  v48 = *(v0 + 280);
  v49 = *(v0 + 264);
  v58 = *(v0 + 304);
  v61 = *(v0 + 256);
  v63 = *(v0 + 232);
  v65 = *(v0 + 224);
  v67 = *(v0 + 200);
  MEMORY[0x1B2712F70](v48);
  (*(v47 + 8))(v48, v49);

  v50 = *(v0 + 8);

  return v50(v68);
}

{
  v1 = v0[50];

  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[34];
  v9 = v0[35];
  v10 = v0[33];
  v14 = v0[38];
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[28];
  v11 = v0[25];
  v18 = v0[52];
  MEMORY[0x1B2712F70](v9);
  (*(v8 + 8))(v9, v10);

  v12 = v0[1];

  return v12(0);
}

{
  v1 = *(v0 + 232);

  outlined destroy of AnyGroupActivity(v1, type metadata accessor for AnyGroupActivity);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  v10 = *(v0 + 264);
  v14 = *(v0 + 304);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  v11 = *(v0 + 200);
  v18 = *(v0 + 456);
  MEMORY[0x1B2712F70](v9);
  (*(v8 + 8))(v9, v10);

  v12 = *(v0 + 8);

  return v12(0);
}

{
  v60 = v0;
  v1 = v0[61];
  v2 = v0[59];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v6 = v0[40];
  v7 = v0[22];
  v8 = v0[20];
  swift_unknownObjectRelease();
  v4(v6, v7, v8);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v48 = v0[49];
    v49 = v0[61];
    v53 = v11;
    v13 = v0[47];
    v12 = v0[48];
    v14 = v0[39];
    v15 = v0[40];
    v16 = v0[37];
    v17 = v0[38];
    v47 = v0[36];
    v55 = v0[29];
    v57 = v0[55];
    v18 = v0[20];
    v19 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v59 = v51;
    *v19 = 136315394;
    v13(v17, v15, v18);
    (*(v14 + 56))(v17, 0, 1, v18);
    v20 = >> prefix<A>(_:)(v17, v18);
    v22 = v21;
    (*(v16 + 8))(v17, v47);
    v48(v15, v18);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v59);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v0[18] = v49;
    v24 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v59);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1AEE80000, v10, v53, "Application failed activity activation %s with error %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v51, -1, -1);
    MEMORY[0x1B2715BA0](v19, -1, -1);

    v28 = v55;
  }

  else
  {
    v29 = v0[61];
    v30 = v0[55];
    v31 = v0[49];
    v33 = v0[39];
    v32 = v0[40];
    v34 = v0[29];
    v35 = v0[20];

    v31(v32, v35);
    v28 = v34;
  }

  outlined destroy of AnyGroupActivity(v28, type metadata accessor for AnyGroupActivity);
  v36 = v0[44];
  v37 = v0[45];
  v39 = v0[42];
  v38 = v0[43];
  v41 = v0[40];
  v40 = v0[41];
  v42 = v0[34];
  v43 = v0[35];
  v44 = v0[33];
  v50 = v0[38];
  v52 = v0[32];
  v54 = v0[29];
  v56 = v0[28];
  v58 = v0[25];
  MEMORY[0x1B2712F70](v43);
  (*(v42 + 8))(v43, v44);

  v45 = v0[1];

  return v45(0);
}

uint64_t GroupActivity.activate(onConversationWithUUID:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v7 = GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    *(v4 + 496) = a1 & 1;
    v7 = GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v7 = GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    v8 = *(v4 + 472);
    swift_unknownObjectRelease();
    *(v4 + 497) = a1 & 1;
    v7 = GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t GroupActivity.activate(onConversationWithUUID:)(uint64_t a1)
{
  v2 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = a1;

  return MEMORY[0x1EEE6DFA0](GroupActivity.activate(onConversationWithUUID:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    *(v4 + 464) = a1;
    v7 = GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t GroupActivity.activate()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivity.activate(), 0, 0);
}

uint64_t GroupActivity.activate()()
{
  v1 = v0[5];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = GroupActivity.activate();
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return GroupActivity.activate(onConversationWithUUID:)(v4, v6, v7);
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

uint64_t GroupActivity.activate()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  outlined destroy of NSObject?(*(v4 + 40), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](GroupActivity.activate(), 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1 & 1);
  }
}

uint64_t closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  *(v18 + 6) = a1;
  *(v18 + 7) = a2;
  (*(v10 + 32))(&v18[v17], &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in GroupActivity.awaitMetadataValue(), v18);
}

uint64_t closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMd, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMR);
  v8[4] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v8[5] = v13;
  v14 = *(a8 + 32);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v8[6] = v16;
  *v16 = v8;
  v16[1] = specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue();

  return v18(v13, a7, a8);
}

uint64_t GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v11 + 32))(v14 + v13, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TUConversationActivity, Error>) -> ();
  *(v19 + 7) = v16;
  (*(v10 + 32))(&v19[v18], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in CollaborationGroupActivity.awaitShare(), v19);
}

uint64_t closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v11 = *(a8 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in CollaborationGroupActivity.awaitShare();

  return v15(a7, a8);
}

uint64_t closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = closure #1 in closure #1 in CollaborationGroupActivity.awaitShare();
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = closure #1 in closure #1 in CollaborationGroupActivity.awaitShare();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  (*(v0 + 16))(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 1);

  v5 = v0[1];

  return v5();
}

uint64_t specialized static GroupActivity._identifiable(by:staticIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 24))(a3, a4) == a1 && v5 == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized GroupActivity.provider.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E6997708]) init];
  v8 = [v7 sharePlayLiteEnabled];

  if (v8 && ((*(v3 + 16))(v6, v1, a1), type metadata accessor for CollaborationActivity(), (swift_dynamicCast() & 1) != 0))
  {

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v9 = &static BackgroundGroupSessionManager.shared;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v9 = &static ConversationManager.shared;
  }

  return *v9;
}

uint64_t partial apply for closure #1 in GroupActivity.prepareForActivation(completionHandler:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in GroupActivity.prepareForActivation(completionHandler:)(a1, v7, v8, v1 + v6, v10, v11, v4, v5);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in GroupActivity.activate(onConversationWithUUID:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(*(v6 - 8) + 64);
  v8 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in GroupActivity.activate(onConversationWithUUID:)(a1, v11, v12, v1 + v8, v1 + v10, v6, v5);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type GroupActivityActivationResult and conformance GroupActivityActivationResult()
{
  result = lazy protocol witness table cache variable for type GroupActivityActivationResult and conformance GroupActivityActivationResult;
  if (!lazy protocol witness table cache variable for type GroupActivityActivationResult and conformance GroupActivityActivationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityActivationResult and conformance GroupActivityActivationResult);
  }

  return result;
}

uint64_t dispatch thunk of GroupActivity.metadata.getter(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

unint64_t type metadata accessor for TUMutableConversationActivityCreateSessionRequest()
{
  result = lazy cache variable for type metadata for TUMutableConversationActivityCreateSessionRequest;
  if (!lazy cache variable for type metadata for TUMutableConversationActivityCreateSessionRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUMutableConversationActivityCreateSessionRequest);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t PersonalGroupSessionProvider.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PersonalGroupSessionProvider.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PersonalGroupSessionProvider.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t PersonalGroupSessionProvider.state.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t PersonalGroupSessionProvider.members.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t PersonalGroupSessionProvider.members.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t PersonalGroupSessionProvider.presenceInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t PersonalGroupSessionProvider.presenceInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t PersonalGroupSessionProvider.__allocating_init(id:activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  PersonalGroupSessionProvider.init(id:activity:)(a1, a2, a3);
  return v9;
}

void *PersonalGroupSessionProvider.init(id:activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v3[4] = CurrentValueSubject.init(_:)();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v3[5] = CurrentValueSubject.init(_:)();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v3[6] = CurrentValueSubject.init(_:)();
  v18 = (v3 + *(*v3 + 136));
  v18[3] = type metadata accessor for LocalAccountMember();
  v18[4] = lazy protocol witness table accessor for type LocalAccountMember and conformance LocalAccountMember();
  __swift_allocate_boxed_opaque_existential_1(v18);
  UUID.init()();
  *(v4 + *(*v4 + 144)) = 0;
  v4[2] = a1;
  v4[3] = a2;
  (*(*(*(v8 + 80) - 8) + 32))(v4 + *(*v4 + 128), a3);
  return v4;
}

char *PersonalGroupSessionProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for personalGroupSessionProvider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.personalGroupSessionProvider);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 256))();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s Deinit'd", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + 3);

  v13 = *(v1 + 4);

  v14 = *(v1 + 5);

  v15 = *(v1 + 6);

  (*(*(*(v2 + 80) - 8) + 8))(&v1[*(*v1 + 128)]);
  outlined destroy of Member?(&v1[*(*v1 + 136)]);
  return v1;
}

uint64_t PersonalGroupSessionProvider.__deallocating_deinit()
{
  PersonalGroupSessionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PersonalGroupSessionProvider.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(50);
  MEMORY[0x1B27141F0](0xD00000000000001DLL, 0x80000001AF01B640);
  v2 = *(v1 + 80);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  v4 = MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  v5 = (*(*v0 + 152))(v4);
  MEMORY[0x1B27141F0](v5);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance PersonalGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type LocalAccountMember and conformance LocalAccountMember()
{
  result = lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember;
  if (!lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember)
  {
    type metadata accessor for LocalAccountMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PersonalGroupSessionProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for PersonalGroupSessionProvider(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

Swift::Int SendReliability.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SendReliability and conformance SendReliability()
{
  result = lazy protocol witness table cache variable for type SendReliability and conformance SendReliability;
  if (!lazy protocol witness table cache variable for type SendReliability and conformance SendReliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SendReliability and conformance SendReliability);
  }

  return result;
}

void *GroupActivityTransferRepresentation.init<A>(exporting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  *a7 = &async function pointer to partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  a7[1] = result;
  return result;
}

uint64_t closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a1;
  v7[5] = a4;
  v12 = type metadata accessor for Optional();
  v7[8] = v12;
  v13 = *(v12 - 8);
  v7[9] = v13;
  v14 = *(v13 + 64) + 15;
  v7[10] = swift_task_alloc();
  v15 = *(a4 - 8);
  v7[11] = v15;
  v16 = *(v15 + 64) + 15;
  v7[12] = swift_task_alloc();
  v17 = *(a5 - 8);
  v7[13] = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v7[14] = v19;
  v20 = *(*(type metadata accessor for AnyGroupActivity(0) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v24 = (a2 + *a2);
  v21 = a2[1];
  v22 = swift_task_alloc();
  v7[16] = v22;
  *v22 = v7;
  v22[1] = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v24(v19, a1);
}

uint64_t closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  else
  {
    v3 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  GroupActivity.eraseToAnyGroupActivity()(*(v0 + 48), *(v0 + 56), *(v0 + 120));
  if (v1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 48));
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);
    v8 = *(v4 + 16);
    v8(v3, v6, v5);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    if (v12)
    {
      v42 = v11;
      v15 = *(v0 + 72);
      v16 = *(v0 + 80);
      v39 = *(v0 + 64);
      v17 = *(v0 + 40);
      v38 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43[0] = v41;
      *v38 = 136315394;
      v8(v16, v14, v17);
      (*(v13 + 56))(v16, 0, 1, v17);
      v18 = >> prefix<A>(_:)(v16, v17);
      log = v10;
      v20 = v19;
      (*(v15 + 8))(v16, v39);
      (*(v13 + 8))(v14, v17);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v43);

      *(v38 + 4) = v21;
      *(v38 + 12) = 2080;
      *(v0 + 16) = v1;
      v22 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v43);

      *(v38 + 14) = v25;
      _os_log_impl(&dword_1AEE80000, log, v42, "Failed to export activity from item: %s error: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v41, -1, -1);
      MEMORY[0x1B2715BA0](v38, -1, -1);
    }

    else
    {
      v31 = *(v0 + 40);

      (*(v13 + 8))(v14, v31);
    }

    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    v34 = *(v0 + 96);
    v35 = *(v0 + 80);
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v26 = *(v0 + 120);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 48));
    v27 = swift_task_alloc();
    *(v0 + 144) = v27;
    *(v27 + 16) = v26;
    v28 = *(MEMORY[0x1E69E8920] + 4);
    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    v30 = type metadata accessor for TUConversationActivity();
    *v29 = v0;
    v29[1] = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

    return MEMORY[0x1EEE6DE38](v0 + 24, 0, 0, 0xD000000000000010, 0x80000001AF01B6B0, partial apply for closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:), v27, v30);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[3];
  outlined destroy of AnyGroupActivity(v0[15]);

  v5 = v0[1];

  return v5(v4);
}

{
  v39 = v0;
  v1 = v0[17];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = *(v3 + 16);
  v7(v2, v5, v4);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[11];
  v13 = v0[12];
  if (v11)
  {
    v37 = v1;
    v36 = v10;
    v14 = v0[9];
    v15 = v0[10];
    v33 = v0[8];
    v16 = v0[5];
    log = v9;
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v17 = 136315394;
    v7(v15, v13, v16);
    (*(v12 + 56))(v15, 0, 1, v16);
    v18 = >> prefix<A>(_:)(v15, v16);
    v20 = v19;
    (*(v14 + 8))(v15, v33);
    (*(v12 + 8))(v13, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v38);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v0[2] = v37;
    v22 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v38);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1AEE80000, log, v36, "Failed to export activity from item: %s error: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v35, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  else
  {
    v26 = v0[5];

    (*(v12 + 8))(v13, v26);
  }

  v28 = v0[14];
  v27 = v0[15];
  v29 = v0[12];
  v30 = v0[10];
  swift_willThrow();

  v31 = v0[1];

  return v31();
}

{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[15];

  outlined destroy of AnyGroupActivity(v2);
  v3 = v0[20];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[4];
  v6 = v0[5];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = *(v5 + 16);
  v9(v4, v7, v6);
  v10 = v3;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[11];
  v15 = v0[12];
  if (v13)
  {
    v39 = v3;
    v38 = v12;
    v16 = v0[9];
    v17 = v0[10];
    v35 = v0[8];
    v18 = v0[5];
    log = v11;
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40[0] = v37;
    *v19 = 136315394;
    v9(v17, v15, v18);
    (*(v14 + 56))(v17, 0, 1, v18);
    v20 = >> prefix<A>(_:)(v17, v18);
    v22 = v21;
    (*(v16 + 8))(v17, v35);
    (*(v14 + 8))(v15, v18);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v40);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v0[2] = v39;
    v24 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v40);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1AEE80000, log, v38, "Failed to export activity from item: %s error: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v37, -1, -1);
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  else
  {
    v28 = v0[5];

    (*(v14 + 8))(v15, v28);
  }

  v30 = v0[14];
  v29 = v0[15];
  v31 = v0[12];
  v32 = v0[10];
  swift_willThrow();

  v33 = v0[1];

  return v33();
}

uint64_t partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(a1, v9, v8, v4, v5, v6, v7);
}

{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AnyGroupActivity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  outlined init with copy of AnyGroupActivity(a2, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  outlined init with take of AnyGroupActivity(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  v14 = *(v24 + 48);
  v15 = *(v24 + 52);
  swift_allocObject();
  v23 = Future.init(_:)();
  v25 = v23;
  v16 = *(v5 + 16);
  v16(v8, a1, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = *(v5 + 32);
  v19(v18 + v17, v8, v4);
  v16(v8, v22, v4);
  v20 = swift_allocObject();
  v19(v20 + v17, v8, v4);
  lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>();
  Publisher.sinkOnce(_:onError:)();
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t GroupActivityTransferRepresentation.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  v9 = type metadata accessor for DataRepresentation();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v23 = *v2;
  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, static UTType._groupActivity);
  (*(v5 + 16))(v8, v17, v4);
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 16) = v24;
  *(v18 + 32) = v19;

  DataRepresentation.init(exportedContentType:exporting:)();
  swift_getWitnessTable();
  v20 = v10[2];
  v20(v16, v14, v9);
  v21 = v10[1];
  v21(v14, v9);
  v20(v25, v16, v9);
  return (v21)(v16, v9);
}

uint64_t closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = closure #1 in GroupActivityTransferRepresentation.body.getter;
  v6 = *MEMORY[0x1E69E9840];

  return v8(a1);
}

uint64_t closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](closure #1 in GroupActivityTransferRepresentation.body.getter, 0, 0);
  }
}

uint64_t closure #1 in GroupActivityTransferRepresentation.body.getter()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  if (v3)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = *(v0 + 8);
    v10 = *MEMORY[0x1E69E9840];

    return v9(v6, v8);
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = *(v0 + 8);
    v14 = *MEMORY[0x1E69E9840];

    return v13();
  }
}

void *static GroupActivity<>.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a1;
  result[4] = a2;
  result[5] = a3;
  result[6] = &async function pointer to partial apply for closure #1 in static GroupActivity<>.transferRepresentation.getter;
  result[7] = v8;
  *a4 = &async function pointer to partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  a4[1] = result;
  return result;
}

uint64_t closure #1 in static GroupActivity<>.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in static GroupActivity<>.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static GroupActivity<>.transferRepresentation.getter()
{
  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter;

  return closure #1 in GroupActivityTransferRepresentation.body.getter(a1, v7);
}

uint64_t partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t partial apply for closure #1 in static GroupActivity<>.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in static GroupActivity<>.transferRepresentation.getter(a1, a2, v6);
}

uint64_t type metadata instantiation function for GroupActivityTransferRepresentation()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for GroupActivityTransferRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for GroupActivityTransferRepresentation(uint64_t result, int a2, int a3)
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

uint64_t get_witness_table_16CoreTransferable0B0RzlAA18DataRepresentationVyxGAA08TransferD0HPyHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t outlined init with take of AnyGroupActivity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>()
{
  result = lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>;
  if (!lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>);
  }

  return result;
}

double SpatialTemplate.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  return SpatialTemplate.configuration.getter(a1);
}

{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 SpatialTemplateConfiguration.init(defaultInitiatorRole:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t SpatialTemplateConfiguration.hash(into:)()
{
  outlined init with copy of URL?(v0, &v7, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v8 + 1))
  {
    outlined init with take of Transferable(&v7, v10);
  }

  else
  {
    outlined destroy of NSObject?(&v7, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  outlined init with copy of URL?(v10, &v7, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (*(&v8 + 1))
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    Hasher._combine(_:)(1u);
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    v2 = *(v1 + 8);
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of NSObject?(v10, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    return outlined destroy of AnySpatialTemplateRole(&v4);
  }

  else
  {
    Hasher._combine(_:)(0);
    return outlined destroy of NSObject?(v10, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  }
}

Swift::Int SpatialTemplateConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateConfiguration()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateConfiguration()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SpatialTemplate.output.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  if (swift_dynamicCast())
  {
    v33 = v27;
    v34 = v28;
    v35 = v29;
    PresentationSpatialTemplate.customOutput.getter(a3);
    return outlined destroy of PresentationSpatialTemplate(&v33);
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    outlined destroy of NSObject?(&v27, &_s15GroupActivities27PresentationSpatialTemplateVSgMd, &_s15GroupActivities27PresentationSpatialTemplateVSgMR);
    v11 = *(a2 + 16);
    v26 = v3;
    v12 = v11(a1, a2);
    v13 = *(v12 + 16);
    if (v13)
    {
      v25 = a3;
      v36 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v36;
      v24[1] = v12;
      v15 = v12 + 32;
      for (i = v13 - 1; ; --i)
      {
        outlined init with copy of Transferable(v15, v30);
        v17 = v31;
        v18 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        (*(v18 + 40))(&v27, v17, v18);
        outlined init with take of AbsoluteSpatialTemplateOutput.Element(&v27, &v33);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v36 = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v14 = v36;
        }

        *(v14 + 16) = v20 + 1;
        outlined init with take of AbsoluteSpatialTemplateOutput.Element(&v33, v14 + 112 * v20 + 32);
        if (!i)
        {
          break;
        }

        v15 += 40;
      }

      a3 = v25;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    (*(a2 + 8))(&v33, a1, a2);
    v21 = *(&v34 + 1);
    if (*(&v34 + 1))
    {
      v22 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      SpatialTemplateRole.output.getter(v22, &v27);
      v23 = *(&v27 + 1);
      v21 = v27;
      result = __swift_destroy_boxed_opaque_existential_0(&v33);
    }

    else
    {
      result = outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
      v23 = 0;
    }

    *a3 = v14;
    *(a3 + 8) = v21;
    *(a3 + 16) = v23;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t specialized static SpatialTemplateConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of URL?(a1, &v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v9)
  {
    outlined init with take of Transferable(&v8, v15);
  }

  else
  {
    outlined destroy of NSObject?(&v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v15, 0, sizeof(v15));
    v16 = 0;
  }

  outlined init with copy of URL?(a2, &v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v9)
  {
    outlined init with take of Transferable(&v8, v13);
  }

  else
  {
    outlined destroy of NSObject?(&v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  outlined init with copy of URL?(v15, &v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(v13, &v10, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!v9)
  {
    outlined destroy of NSObject?(v13, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v11 + 1))
    {
      outlined destroy of NSObject?(&v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      v3 = 1;
      return v3 & 1;
    }

LABEL_13:
    outlined destroy of NSObject?(&v8, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of URL?(&v8, v7, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v11 + 1))
  {
    outlined destroy of NSObject?(v13, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v7);
    goto LABEL_13;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v3 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v7, v5);
  outlined destroy of AnySpatialTemplateRole(v5);
  outlined destroy of NSObject?(v13, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v7);
  outlined destroy of NSObject?(&v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration;
  if (!lazy protocol witness table cache variable for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities19SpatialTemplateRole_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SpatialTemplateConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for SpatialTemplateConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t AttachmentLedgerTopic.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AttachmentLedgerTopic.topic.didset(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);
  outlined init with copy of URL?(a1, v44, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = &lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus;
  if (os_log_type_enabled(v10, v11))
  {
    v36 = v11;
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v13 = 136315394;
    outlined init with copy of URL?(v44, &v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    if (v42)
    {
      outlined init with take of Transferable(&v41, &v39);
      outlined init with copy of Transferable(&v39, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      v14 = String.init<A>(reflecting:)();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_0(&v39);
    }

    else
    {
      v14 = 7104878;
      v16 = 0xE300000000000000;
    }

    outlined destroy of NSObject?(v44, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v43);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v4);
    CurrentSubject.wrappedValue.getter();
    (*(v5 + 8))(v8, v4);
    outlined init with copy of URL?(&v41, &v39, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    if (v40)
    {
      outlined init with take of Transferable(&v39, v38);
      outlined init with copy of Transferable(v38, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      v18 = String.init<A>(reflecting:)();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    else
    {
      v18 = 7104878;
      v20 = 0xE300000000000000;
    }

    outlined destroy of NSObject?(&v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v43);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1AEE80000, v10, v36, "Updating topic from %s -> %s", v13, 0x16u);
    v22 = v35;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v22, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);

    v12 = &lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus;
  }

  else
  {

    outlined destroy of NSObject?(v44, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }

  v23 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables;
  swift_beginAccess();
  v24 = *(v2 + v23);
  *(v2 + v23) = MEMORY[0x1E69E7CD0];

  (*(v5 + 16))(v8, v2 + v12[273], v4);
  CurrentSubject.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v25 = v45;
  if (!v45)
  {
    return outlined destroy of NSObject?(v44, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }

  v26 = v46;
  v27 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v28 = *(v25 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31);
  outlined destroy of NSObject?(v44, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  v32 = (*(v26 + 32))(v25, v26);
  (*(v28 + 8))(v31, v25);
  *&v39 = v32;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in AttachmentLedgerTopic.topic.didset(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(*result + 376);

    v3(v4);
  }

  return result;
}

uint64_t AttachmentLedgerTopic.state.getter()
{
  v1 = *(v0 + 32);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  dispatch thunk of StateMachine.currentState.getter();
  [v1 unlock];
  return v4;
}

uint64_t AttachmentLedgerTopic.dataCryptor.didset()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - v6;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[2], v1[3], v18);
    _os_log_impl(&dword_1AEE80000, v9, v10, "Updating %s dataCryptor, topic=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v3);
  CurrentSubject.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  return outlined destroy of NSObject?(v18, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
}

uint64_t AttachmentLedgerTopic.dataCryptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
}

uint64_t AttachmentLedgerTopic.dataCryptor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor;
  swift_beginAccess();
  outlined assign with copy of TopicCryptorProvider?(a1, v1 + v3);
  swift_endAccess();
  AttachmentLedgerTopic.dataCryptor.didset();
  return outlined destroy of NSObject?(a1, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
}

uint64_t outlined assign with copy of TopicCryptorProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*AttachmentLedgerTopic.dataCryptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AttachmentLedgerTopic.dataCryptor.modify;
}

uint64_t AttachmentLedgerTopic.dataCryptor.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return AttachmentLedgerTopic.dataCryptor.didset();
  }

  return result;
}

uint64_t AttachmentLedgerTopic.attachments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

uint64_t AttachmentLedgerTopic.attachments.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments, v3);
  v9[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

void (*AttachmentLedgerTopic.attachments.modify(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t AttachmentLedgerTopic.$attachments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  (*(v2 + 16))(&v8 - v4, v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments, v1);
  v6 = CurrentSubject.projectedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t AttachmentLedgerTopic.RetryInfo.pendingAttachments.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t AttachmentLedgerTopic.RetryInfo.update(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for PluginAttachmentLedgerTopic.Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  PluginAttachmentLedgerTopic.State.ShutdownInfo.config.getter();
  v7 = PluginAttachmentLedgerTopic.Configuration.maxSubscribeRetries.getter();
  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = v7;
  v8 = PluginAttachmentLedgerTopic.State.ShutdownInfo.pendingAttachments.getter();
  specialized Sequence.forEach(_:)(v8, v1);
}

uint64_t closure #1 in AttachmentLedgerTopic.RetryInfo.update(with:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  i = *(v4 - 8);
  v6 = *(i + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v23 = *a1;
  v12 = *(a2 + 24);
  v21 = (a2 + 24);
  if (v12 >> 62)
  {
LABEL_17:
    v22 = v12 & 0xFFFFFFFFFFFFFF8;
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = v12 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = (i + 8);

  for (i = 0; v24 != i; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2714B30](i, v12);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v14 = *(v12 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    Attachment.id.getter();
    Attachment.id.getter();
    v15 = static UUID.== infix(_:_:)();

    v16 = *v13;
    (*v13)(v9, v4);
    v16(v11, v4);
    if (v15)
    {
    }
  }

  v18 = v21;
  MEMORY[0x1B27142A0](v17);
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2714B30](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        closure #1 in AttachmentLedgerTopic.RetryInfo.update(with:)(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = __CocoaSet.count.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

double AttachmentLedgerTopic.retryInfo.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retryInfo);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 2);
  v4 = *(v1 + 3);

  return v3;
}

uint64_t AttachmentLedgerTopic.retryInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = v4 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retryInfo;
  swift_beginAccess();
  v10 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a4;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
}

uint64_t AttachmentLedgerTopic.__allocating_init(name:retainRefOnStart:pluginGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  AttachmentLedgerTopic.init(name:retainRefOnStart:pluginGenerator:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

char *AttachmentLedgerTopic.init(name:retainRefOnStart:pluginGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v49 = a5;
  v50 = a6;
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v46 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  *(v7 + 4) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v16 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  outlined init with copy of URL?(v52, &v51 + 1, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  CurrentSubject.init(wrappedValue:)();
  outlined destroy of NSObject?(v52, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  (*(v12 + 32))(&v7[v16], v15, v11);
  v41 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0F0OAJ5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0F0OAJ5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GGMR);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0C0OAH5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0C0OAH5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GMR) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1AF00F250;
  LOBYTE(v52[0]) = 0;
  v51 = 256;
  lazy protocol witness table accessor for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State();
  lazy protocol witness table accessor for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 1;
  v51 = 513;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 2;
  v51 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 3;
  v51 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 3;
  v51 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 2;
  v51 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 2;
  v51 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 1;
  v51 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 1;
  v51 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 0;
  v51 = 1029;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 4;
  v51 = 1030;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 4;
  v51 = 256;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 4;
  v51 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 4;
  v51 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 3;
  v51 = 775;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 3;
  v51 = 776;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 3;
  v51 = 777;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 3;
  v51 = 778;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 3;
  v51 = 779;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v52[0]) = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities21AttachmentLedgerTopicC0C0OAF5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities21AttachmentLedgerTopicC0C0OAF5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLOGMR);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v7[v41] = StateMachine.init(initialState:transitions:)();
  v23 = &v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart];
  *v23 = 0;
  v23[1] = 0;
  *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef] = 0;
  v24 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables;
  v25 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v37 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v37 = MEMORY[0x1E69E7CD0];
    }

    *&v7[v24] = v37;
    if (__CocoaSet.count.getter())
    {
      v38 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v38 = MEMORY[0x1E69E7CD0];
    }

    *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables] = v38;
    if (__CocoaSet.count.getter())
    {
      v26 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E7CD0];
    *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables] = MEMORY[0x1E69E7CD0];
    *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables] = v26;
  }

  *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables] = v26;
  v27 = &v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments;
  *&v52[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
  v29 = v42;
  CurrentSubject.init(wrappedValue:)();
  (*(v43 + 32))(&v7[v28], v29, v44);
  v30 = &v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retryInfo];
  *v30 = 0;
  *(v30 + 1) = 0x3FF0000000000000;
  *(v30 + 2) = 2;
  *(v30 + 3) = v25;
  v31 = v46;
  *(v7 + 2) = v45;
  *(v7 + 3) = v31;
  v32 = *v23;
  v33 = v23[1];
  v34 = v48;
  *v23 = v47;
  v23[1] = v34;
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v32);
  v35 = v50;
  *(v7 + 5) = v49;
  *(v7 + 6) = v35;
  return v7;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State()
{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event()
{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event);
  }

  return result;
}

id AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  [v4 lock];
  v5 = *(v1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  LOBYTE(v28) = 0;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.attachmentLedgerTopic);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v28 = v10;
    *v9 = 136315138;
    v33[0] = v2;
    type metadata accessor for AttachmentLedgerTopic(0);

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v28);

    *(v9 + 4) = v13;
    v14 = "Can't subscribe to AttachmentLedgerTopic %s";
    goto LABEL_17;
  }

  (*(*v2 + 344))(&v31);
  if (v32)
  {
    outlined init with take of Transferable(&v31, &v28);
  }

  else
  {
    outlined init with copy of URL?(a1, &v28, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    if (v32)
    {
      outlined destroy of NSObject?(&v31, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    }
  }

  if (!v29)
  {
    outlined destroy of NSObject?(&v28, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.attachmentLedgerTopic);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v28 = v10;
    *v9 = 136315138;
    v33[0] = v2;
    type metadata accessor for AttachmentLedgerTopic(0);

    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v28);

    *(v9 + 4) = v22;
    v14 = "No dataCryptor existing on AttachmentLedgerTopic and none passed in %s";
LABEL_17:
    _os_log_impl(&dword_1AEE80000, v7, v8, v14, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
LABEL_18:

    return [v4 unlock];
  }

  outlined init with take of Transferable(&v28, v33);
  outlined init with copy of Transferable(v33, &v28);
  (*(*v2 + 352))(&v28);
  v15 = *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart);
  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart + 8);

    v18 = v15(v17);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v15);
  }

  else
  {
    v18 = 0;
  }

  v23 = *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef);
  *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef) = v18;
  swift_unknownObjectRelease();
  v24 = outlined init with copy of Transferable(v33, &v28);
  *&v31 = (*(*v2 + 368))(v24);

  specialized Array.append<A>(contentsOf:)(v25);
  v30 = v31;
  v26 = *(v2 + 48);
  *&v31 = (*(v2 + 40))(&v28);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopicProvider, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  outlined destroy of AttachmentLedgerTopic.BootstrapTopicInfo(&v28);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return [v4 unlock];
}

uint64_t AttachmentLedgerTopic.BootstrapTopicInfo.init(dataCryptorProvider:attachments:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = outlined init with take of Transferable(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t closure #1 in AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v31 - v4);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    [*(result + 32) lock];
    if (v6)
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);

      v10 = v6;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v31[1] = v6;
        v32 = v14;
        *v13 = 136315394;
        v15 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v16 = String.init<A>(reflecting:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v32);

        *(v13 + 4) = v18;
        *(v13 + 12) = 2080;
        v19 = *(v8 + 16);
        v20 = *(v8 + 24);

        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v32);

        *(v13 + 14) = v21;
        _os_log_impl(&dword_1AEE80000, v11, v12, "Failed to subscribe, error=%s, topic=%s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v14, -1, -1);
        MEMORY[0x1B2715BA0](v13, -1, -1);
      }

      v22 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v5);
      outlined destroy of NSObject?(v5, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
    }

    else
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.attachmentLedgerTopic);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315138;
        v28 = *(v8 + 16);
        v29 = *(v8 + 24);

        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1AEE80000, v24, v25, "Successfully fetched plugin, topic=%s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B2715BA0](v27, -1, -1);
        MEMORY[0x1B2715BA0](v26, -1, -1);
      }
    }

    [*(v8 + 32) unlock];
  }

  return result;
}

void closure #2 in AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + 32) lock];
    v4 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine;
    v5 = *(v3 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
    LOBYTE(v34[0]) = 1;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      v6 = a1[3];
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v6);
      v32[0] = (*(v7 + 24))(v6, v7);
      v8 = swift_allocObject();
      swift_weakInit();
      outlined init with copy of Transferable(a1, v34);
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      outlined init with take of Transferable(v34, v9 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopic.State, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
      Publisher<>.sink(receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.attachmentLedgerTopic);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v34[0] = v22;
        *v21 = 136315138;
        v23 = *(v3 + v4);
        dispatch thunk of StateMachine.currentState.getter();
        LOBYTE(v30) = v32[0];
        v24 = String.init<A>(reflecting:)();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v34);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_1AEE80000, v19, v20, "Failed to execute successful event, currentState: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1B2715BA0](v22, -1, -1);
        MEMORY[0x1B2715BA0](v21, -1, -1);
      }
    }

    [*(v3 + 32) unlock];
  }

  else
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.attachmentLedgerTopic);
    outlined init with copy of Transferable(a1, v34);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v13 = 136315138;
      outlined init with copy of Transferable(v34, v32);
      outlined init with copy of URL?(v32, &v30, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
      if (v31)
      {
        outlined init with take of Transferable(&v30, v29);
        outlined init with copy of Transferable(v29, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
        v15 = String.init<A>(reflecting:)();
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      outlined destroy of NSObject?(v32, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33);

      *(v13 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v11, v12, "Lost reference to Topic, ignoring PluginTopic=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B2715BA0](v14, -1, -1);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v34);
    }
  }
}

uint64_t closure #1 in closure #2 in AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(uint64_t a1, uint64_t a2, void *a3)
{
  v96 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v85 - v6);
  v8 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PluginAttachmentLedgerTopic.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v85 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v85 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v87 = a3;
    v88 = v17;
    v95 = v20;
    [*(result + 32) lock];
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = __swift_project_value_buffer(v25, static Log.attachmentLedgerTopic);
    v93 = *(v13 + 16);
    (v93)(v22, v96, v12);

    v90 = v26;
    v27 = Logger.logObject.getter();
    v28 = v24;
    v29 = v13;
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v27, v30);
    v94 = v28;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v91 = v9;
      v33 = v32;
      v34 = swift_slowAlloc();
      v89 = v8;
      v85 = v34;
      v97[0] = v34;
      *v33 = 136315394;

      v35 = v12;
      v36 = AttachmentLedgerTopic.description.getter();
      v86 = v7;
      v38 = v37;

      v39 = v36;
      v12 = v35;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, v97);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = v22;
      v45 = *(v29 + 8);
      v45(v44, v35);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v97);
      v7 = v86;

      *(v33 + 14) = v46;
      _os_log_impl(&dword_1AEE80000, v27, v30, "Topic %s observed PluginTopic's state change to %s", v33, 0x16u);
      v47 = v85;
      swift_arrayDestroy();
      v8 = v89;
      MEMORY[0x1B2715BA0](v47, -1, -1);
      v48 = v33;
      v9 = v91;
      MEMORY[0x1B2715BA0](v48, -1, -1);
    }

    else
    {

      v49 = v22;
      v45 = *(v29 + 8);
      v45(v49, v12);
    }

    v50 = v29;
    v51 = v95;
    v52 = v93;
    (v93)(v95, v96, v12);
    v53 = (*(v29 + 88))(v51, v12);
    if (v53 == *MEMORY[0x1E6997650])
    {
      (*(v29 + 96))(v51, v12);
      v54 = type metadata accessor for PluginAttachmentLedgerTopic.State.RetryInfo();
      (*(*(v54 - 8) + 8))(v51, v54);
      v55 = v94;
    }

    else
    {
      v55 = v94;
      if (v53 == *MEMORY[0x1E6997658])
      {
        (*(v50 + 96))(v51, v12);
        v56 = v92;
        (*(v9 + 32))(v92, v51, v8);
        (*(v9 + 16))(v7, v56, v8);
        (*(v9 + 56))(v7, 0, 1, v8);
        AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v7);
        outlined destroy of NSObject?(v7, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
        (*(v9 + 8))(v56, v8);
      }

      else if (v53 != *MEMORY[0x1E6997660])
      {
        if (v53 == *MEMORY[0x1E6997648])
        {
          v57 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine;
          v58 = *(v94 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
          LOBYTE(v97[0]) = 3;
          if (dispatch thunk of StateMachine.execute(_:)())
          {
            v59 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables;
            swift_beginAccess();
            v60 = *(v55 + v59);
            *(v55 + v59) = MEMORY[0x1E69E7CD0];

            AttachmentLedgerTopic.setSubscribedPluginTopic(_:)(v87);
          }

          else
          {

            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v97[0] = v80;
              *v79 = 136315138;
              v81 = *(v55 + v57);
              dispatch thunk of StateMachine.currentState.getter();
              v98 = v99;
              v82 = String.init<A>(reflecting:)();
              v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v97);

              *(v79 + 4) = v84;
              _os_log_impl(&dword_1AEE80000, v77, v78, "Topic state transitioned to ready state; however, the state machine wasn't in a state to handle it. currentState: %s", v79, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v80);
              MEMORY[0x1B2715BA0](v80, -1, -1);
              MEMORY[0x1B2715BA0](v79, -1, -1);
            }
          }
        }

        else if (v53 != *MEMORY[0x1E6997640])
        {
          v91 = v9;
          v61 = v88;
          (v52)(v88, v96, v12);

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            LODWORD(v96) = v63;
            v66 = v65;
            v97[0] = v65;
            *v64 = 136315394;

            v93 = v62;
            v67 = AttachmentLedgerTopic.description.getter();
            v89 = v8;
            v69 = v68;

            v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v97);

            *(v64 + 4) = v70;
            *(v64 + 12) = 2080;
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668]);
            v71 = dispatch thunk of CustomStringConvertible.description.getter();
            v73 = v72;
            v45(v61, v12);
            v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v97);
            v8 = v89;

            *(v64 + 14) = v74;
            v75 = v93;
            _os_log_impl(&dword_1AEE80000, v93, v96, "Topic %s Hit unexpected state. state: %s", v64, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B2715BA0](v66, -1, -1);
            v76 = v64;
            v51 = v95;
            MEMORY[0x1B2715BA0](v76, -1, -1);
          }

          else
          {

            v45(v61, v12);
          }

          (*(v91 + 56))(v7, 1, 1, v8);
          AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v7);
          outlined destroy of NSObject?(v7, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
          v45(v51, v12);
        }
      }
    }

    [*(v55 + 32) unlock];
  }

  return result;
}

void AttachmentLedgerTopic.processShutdown(shutdownInfo:)(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v132 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v115 - v5;
  v7 = type metadata accessor for PluginAttachmentLedgerTopic.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v122 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v115 - v16;
  v125 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason();
  v129 = *(v125 - 8);
  v17 = *(v129 + 64);
  v18 = MEMORY[0x1EEE9AC00](v125);
  v127 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v115 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v115 - v23;
  v133 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
  v131 = *(v133 - 8);
  v25 = *(v131 + 64);
  v26 = MEMORY[0x1EEE9AC00](v133);
  v124 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v115 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v30 = *(v29 - 8);
  v31 = v30[8];
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v115 - v32;
  v34 = *(v1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  LOBYTE(v136) = 4;
  v126 = v34;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Log.attachmentLedgerTopic);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_31;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v136 = v53;
    *v52 = 136315138;
    v54 = AttachmentLedgerTopic.description.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v136);

    *(v52 + 4) = v56;
    v57 = "Not able to process pluginShutdown on %s. We should *ALWAYS* be able to process a shutdown as it can happen at anytime";
    goto LABEL_30;
  }

  v118 = v11;
  v119 = v8;
  v120 = v7;
  v121 = v6;
  v35 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables;
  swift_beginAccess();
  v36 = *(v2 + v35);
  v37 = MEMORY[0x1E69E7CD0];
  *(v2 + v35) = MEMORY[0x1E69E7CD0];

  v38 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables;
  swift_beginAccess();
  v39 = *(v2 + v38);
  *(v2 + v38) = v37;

  v40 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables;
  swift_beginAccess();
  v41 = *(v2 + v40);
  *(v2 + v40) = v37;

  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v42 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v43 = v30[2];
  v43(v33, v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v29);
  CurrentSubject.wrappedValue.getter();
  v44 = v30[1];
  v44(v33, v29);
  v43(v33, v2 + v42, v29);
  outlined init with copy of URL?(&v136, v134, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  CurrentSubject.wrappedValue.setter();
  v44(v33, v29);
  AttachmentLedgerTopic.topic.didset(v135);
  outlined destroy of NSObject?(v135, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  outlined destroy of NSObject?(&v136, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  v45 = *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef);
  *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef) = 0;
  swift_unknownObjectRelease();
  outlined init with copy of URL?(v132, v24, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  v46 = v131;
  v47 = v133;
  if ((*(v131 + 48))(v24, 1, v133) == 1)
  {
    v48 = outlined destroy of NSObject?(v24, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  }

  else
  {
    v58 = v130;
    (*(v46 + 32))(v130, v24, v47);
    v59 = v128;
    PluginAttachmentLedgerTopic.State.ShutdownInfo.reason.getter();
    v60 = v129;
    v61 = v127;
    v62 = v125;
    (*(v129 + 104))(v127, *MEMORY[0x1E6997628], v125);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason, MEMORY[0x1E6997630]);
    v63 = dispatch thunk of static Equatable.== infix(_:_:)();
    v64 = *(v60 + 8);
    v64(v61, v62);
    v132 = v64;
    v64(v59, v62);
    if (v63)
    {
      v48 = (*(v46 + 8))(v58, v47);
    }

    else
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Log.attachmentLedgerTopic);
      v66 = v124;
      (*(v46 + 16))(v124, v58, v47);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v117 = v68;
        v69 = swift_slowAlloc();
        v70 = v129;
        v71 = v69;
        v116 = swift_slowAlloc();
        *&v136 = v116;
        *v71 = 136315394;
        v72 = v123;
        PluginAttachmentLedgerTopic.State.ShutdownInfo.reason.getter();
        (*(v70 + 56))(v72, 0, 1, v62);
        v73 = v122;
        outlined init with copy of URL?(v72, v122, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMR);
        if ((*(v70 + 48))(v73, 1, v62) == 1)
        {
          v74 = 0xE300000000000000;
          v75 = 7104878;
        }

        else
        {
          v78 = v128;
          (*(v70 + 32))(v128, v73, v62);
          (*(v70 + 16))(v127, v78, v62);
          v75 = String.init<A>(reflecting:)();
          v74 = v79;
          v132(v78, v62);
        }

        outlined destroy of NSObject?(v72, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMR);
        v76 = *(v46 + 8);
        v77 = v133;
        v76(v124, v133);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, &v136);

        *(v71 + 4) = v80;
        *(v71 + 12) = 2080;
        v81 = AttachmentLedgerTopic.description.getter();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v136);

        *(v71 + 14) = v83;
        _os_log_impl(&dword_1AEE80000, v67, v117, "Processing shutdown with reason: %s on topic %s", v71, 0x16u);
        v84 = v116;
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v84, -1, -1);
        MEMORY[0x1B2715BA0](v71, -1, -1);
      }

      else
      {

        v76 = *(v46 + 8);
        v76(v66, v47);
        v77 = v47;
      }

      v85 = (*(*v2 + 416))(&v136);
      v87 = v86;
      v88 = v118;
      v89 = v130;
      PluginAttachmentLedgerTopic.State.ShutdownInfo.config.getter();
      v90 = PluginAttachmentLedgerTopic.Configuration.maxSubscribeRetries.getter();
      (*(v119 + 8))(v88, v120);
      *(v87 + 16) = v90;
      v91 = PluginAttachmentLedgerTopic.State.ShutdownInfo.pendingAttachments.getter();
      specialized Sequence.forEach(_:)(v91, v87);

      v85(&v136, 0);
      v48 = (v76)(v89, v77);
    }
  }

  v92 = (*v2 + 400);
  v93 = *v92;
  v94 = (*v92)(v48);

  (v93)(v95);
  v97 = v96;

  if (v94 >= v97)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Log.attachmentLedgerTopic);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_31;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v135[0] = v53;
    *v52 = 136315138;
    *&v136 = v93();
    *(&v136 + 1) = v105;
    *&v137 = v106;
    *(&v137 + 1) = v107;
    v108 = String.init<A>(reflecting:)();
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v135);

    *(v52 + 4) = v110;
    v57 = "Not retrying as we've exceeded the maximum amount of retries (%s";
    goto LABEL_30;
  }

  LOBYTE(v136) = 5;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v98 = type metadata accessor for TaskPriority();
    v99 = v121;
    (*(*(v98 - 8) + 56))(v121, 1, 1, v98);
    v100 = swift_allocObject();
    v101 = swift_weakInit();
    v102 = (v93)(v101);

    v103 = swift_allocObject();
    v103[2] = 0.0;
    v103[3] = 0.0;
    *(v103 + 4) = v100;
    v103[5] = v102;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v99, &async function pointer to partial apply for closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:), v103);

    return;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Log.attachmentLedgerTopic);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v136 = v53;
    *v52 = 136315138;
    v112 = AttachmentLedgerTopic.description.getter();
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &v136);

    *(v52 + 4) = v114;
    v57 = "%s Not staging a retry attempt due to invalid state.";
LABEL_30:
    _os_log_impl(&dword_1AEE80000, v50, v51, v57, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1B2715BA0](v53, -1, -1);
    MEMORY[0x1B2715BA0](v52, -1, -1);
  }

LABEL_31:
}

uint64_t closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a1;
  *(v5 + 144) = a5;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 160) = v6;
  v7 = *(v6 - 8);
  *(v5 + 168) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:), 0, 0);
}

uint64_t closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)()
{
  v23 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  v0[23] = __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[17] = Strong;
      type metadata accessor for AttachmentLedgerTopic(0);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = v0[19];
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v22);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v12;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Waiting %f seconds to retry.", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v14 = v0[22];
  v15 = v0[19];
  v16 = static Duration.seconds(_:)();
  v18 = v17;
  static Clock<>.continuous.getter();
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:);
  v20 = v0[22];

  return specialized Clock.sleep(for:tolerance:)(v16, v18, 0, 0, 1);
}

{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:);
  }

  else
  {
    v6 = closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = v0[22];

  v2 = v0[1];
  v3 = v0[25];

  return v2();
}

uint64_t (*closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)())(uint64_t, void)
{
  v30 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 184);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315138;

      v9 = AttachmentLedgerTopic.description.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v29);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "%s Done waiting, retrying.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v13 = *(v3 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
    *(v0 + 208) = 6;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      result = (*(*v3 + 416))(v0 + 56);
      if (__OFADD__(*v15, 1))
      {
        __break(1u);
        return result;
      }

      ++*v15;
      v16 = result(v0 + 56, 0);
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      (*(*v3 + 400))(v16);
      (*(*v3 + 432))(v0 + 16, v17);

      outlined destroy of NSObject?(v0 + 16, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    }

    else
    {
      v18 = *(v0 + 184);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29 = v22;
        *v21 = 136315138;

        v23 = AttachmentLedgerTopic.description.getter();
        v25 = v24;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v29);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_1AEE80000, v19, v20, "%s not retrying due to invalid state.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1B2715BA0](v22, -1, -1);
        MEMORY[0x1B2715BA0](v21, -1, -1);
      }
    }
  }

  v27 = *(v0 + 176);

  v28 = *(v0 + 8);

  return v28();
}

Swift::Void __swiftcall AttachmentLedgerTopic.unsubscribe()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.attachmentLedgerTopic);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v7 = 136315138;
    v8 = AttachmentLedgerTopic.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v18);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Received request to unsubscribe topic %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2715BA0](v14, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v11 = *(v0 + 32);
  [*(v1 + 32) lock];
  [v11 unlock];
  outlined init with copy of URL?(v18, v15, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  v12 = v16;
  if (v16)
  {
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v13 + 40))(v12, v13);
    outlined destroy of NSObject?(v18, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    outlined destroy of NSObject?(v18, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    outlined destroy of NSObject?(v15, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }
}

double closure #1 in AttachmentLedgerTopic.unsubscribe()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v42 - v7;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v44 = v9;
    v13 = v12;
    v43 = swift_slowAlloc();
    *&v48[0] = v43;
    *v13 = 136315138;
    v14 = AttachmentLedgerTopic.description.getter();
    v16 = v5;
    v17 = v4;
    v18 = a2;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v48);

    *(v13 + 4) = v19;
    a2 = v18;
    v4 = v17;
    v5 = v16;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Processing request to unsubscribe topic %s", v13, 0xCu);
    v20 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B2715BA0](v20, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  v21 = *(a1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  LOBYTE(v48[0]) = 2;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v22 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables;
    swift_beginAccess();
    v23 = *(a1 + v22);
    v24 = MEMORY[0x1E69E7CD0];
    *(a1 + v22) = MEMORY[0x1E69E7CD0];

    v25 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables;
    swift_beginAccess();
    v26 = *(a1 + v25);
    *(a1 + v25) = v24;

    v27 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables;
    swift_beginAccess();
    v28 = *(a1 + v27);
    *(a1 + v27) = v24;

    v29 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
    v30 = v5[2];
    v31 = v45;
    v30(v45, a1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v4);
    CurrentSubject.wrappedValue.getter();
    v32 = v5[1];
    v32(v31, v4);
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v30(v31, a1 + v29, v4);
    CurrentSubject.wrappedValue.getter();
    v32(v31, v4);
    v30(v31, a1 + v29, v4);
    outlined init with copy of URL?(v48, v46, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    CurrentSubject.wrappedValue.setter();
    v32(v31, v4);
    AttachmentLedgerTopic.topic.didset(v47);
    outlined destroy of NSObject?(v47, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    outlined destroy of NSObject?(v48, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    v33 = *(a1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef);
    *(a1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef) = 0;
    swift_unknownObjectRelease();
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v48[0] = v38;
      *v37 = 136315138;
      v39 = AttachmentLedgerTopic.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v48);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1AEE80000, v35, v36, "Invalid state, can't unsubscribe topic: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B2715BA0](v38, -1, -1);
      MEMORY[0x1B2715BA0](v37, -1, -1);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t AttachmentLedgerTopic.setSubscribedPluginTopic(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMd, &_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMR);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  outlined init with copy of Transferable(a1, v33);
  v13 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v14 = v9[2];
  v14(v12, v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v8);
  CurrentSubject.wrappedValue.getter();
  v15 = v9[1];
  v15(v12, v8);
  v14(v12, v2 + v13, v8);
  outlined init with copy of URL?(v33, v31, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  CurrentSubject.wrappedValue.setter();
  v15(v12, v8);
  AttachmentLedgerTopic.topic.didset(v32);
  outlined destroy of NSObject?(v32, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  outlined destroy of NSObject?(v33, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.attachmentLedgerTopic);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33[0] = v20;
    *v19 = 136315138;
    v21 = AttachmentLedgerTopic.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v33);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1AEE80000, v17, v18, "Topic %s successfully subscribed and updated Topic!", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1B2715BA0](v20, -1, -1);
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  (*(*v2 + 408))(0, 2, MEMORY[0x1E69E7CC0], 1.0);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v33[0] = (*(v25 + 24))(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopic.State, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  Publisher.dropFirst(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<AnyPublisher<PluginAttachmentLedgerTopic.State, Never>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMd, &_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMR);
  v26 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v7, v26);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in AttachmentLedgerTopic.setSubscribedPluginTopic(_:)(uint64_t a1)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v58 - v3);
  v5 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PluginAttachmentLedgerTopic.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v69 = result;
  if (result)
  {
    v63 = v14;
    v67 = v17;
    [*(v69 + 32) lock];
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, static Log.attachmentLedgerTopic);
    v65 = *(v10 + 16);
    v65(v19, v68, v9);
    v61 = v22;
    v23 = v10;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v60 = v4;
      v27 = v26;
      v59 = swift_slowAlloc();
      v70 = v59;
      *v27 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668]);
      v28 = v23;
      v58 = v23;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v6;
      v30 = v5;
      v32 = v31;
      v62 = *(v28 + 8);
      v62(v19, v9);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &v70);
      v5 = v30;
      v6 = v64;

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1AEE80000, v24, v25, "Observed topic change to state %s", v27, 0xCu);
      v34 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B2715BA0](v34, -1, -1);
      v35 = v27;
      v4 = v60;
      MEMORY[0x1B2715BA0](v35, -1, -1);

      v36 = v58;
    }

    else
    {

      v62 = *(v23 + 8);
      v62(v19, v9);
      v36 = v23;
    }

    v37 = v67;
    v38 = v65;
    v65(v67, v68, v9);
    v39 = (*(v36 + 88))(v37, v9);
    if (v39 == *MEMORY[0x1E6997658])
    {
      (*(v36 + 96))(v37, v9);
      v40 = v66;
      (*(v6 + 32))(v66, v37, v5);
      (*(v6 + 16))(v4, v40, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v4);
      outlined destroy of NSObject?(v4, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
      (*(v6 + 8))(v40, v5);
    }

    else if (v39 != *MEMORY[0x1E6997660] && v39 != *MEMORY[0x1E6997648] && v39 != *MEMORY[0x1E6997640])
    {
      v64 = v6;
      v66 = v5;
      v41 = v63;
      v38(v63, v68, v9);

      v42 = v9;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v70 = v46;
        *v45 = 136315394;

        LODWORD(v68) = v44;
        v47 = AttachmentLedgerTopic.description.getter();
        v49 = v48;

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v70);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668]);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v54 = v41;
        v55 = v62;
        v62(v54, v42);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v70);

        *(v45 + 14) = v56;
        v37 = v67;
        _os_log_impl(&dword_1AEE80000, v43, v68, "Topic %s Hit unexpected state. state: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v46, -1, -1);
        MEMORY[0x1B2715BA0](v45, -1, -1);
      }

      else
      {

        v57 = v41;
        v55 = v62;
        v62(v57, v42);
      }

      (*(v64 + 56))(v4, 1, 1, v66);
      AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v4);
      outlined destroy of NSObject?(v4, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
      v55(v37, v42);
    }

    [*(v69 + 32) unlock];
  }

  return result;
}

uint64_t AttachmentLedgerTopic.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);

  v6 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart + 8);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart));
  v7 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables);

  v9 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables);

  v10 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v11 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retryInfo + 24);

  return v0;
}

uint64_t AttachmentLedgerTopic.__deallocating_deinit()
{
  AttachmentLedgerTopic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AttachmentLedgerTopic.fetchTopic(function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.fetchTopic(function:line:), 0, 0);
}

uint64_t AttachmentLedgerTopic.fetchTopic(function:line:)()
{
  v22 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = *(v2 + 32);
  [v6 lock];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v3;
  v8[7] = v4;

  v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities35PluginAttachmentLedgerTopicProvider_p_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:), v8);
  v0[11] = v9;
  v10 = type metadata accessor for AnyCancellable();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = AnyCancellable.init(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v21, v13);
  swift_endAccess();

  [v6 unlock];
  v14 = *(MEMORY[0x1E69E86A8] + 4);
  v15 = swift_task_alloc();
  v0[12] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v15 = v0;
  v15[1] = AttachmentLedgerTopic.fetchTopic(function:line:);
  v18 = v0[5];
  v19 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v18, v9, v16, v17, v19);
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}