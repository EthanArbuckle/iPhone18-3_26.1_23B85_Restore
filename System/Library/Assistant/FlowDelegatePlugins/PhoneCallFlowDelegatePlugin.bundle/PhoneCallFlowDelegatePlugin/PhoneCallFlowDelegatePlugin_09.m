id closure #1 in static Transformer<>.resolveGroupNameIdentifier(groupName:device:groupResolver:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  outlined init with copy of SignalProviding(a1, v47);
  outlined init with copy of SignalProviding(a1, v44);
  outlined init with copy of SignalProviding(a1, v41);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v7 = 136315906;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v50);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v12 = v48;
    v11 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v13 = (*(v11 + 16))(v12, v11);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v50);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2080;
    v17 = v45;
    v18 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v19 = (*(v18 + 8))(v17, v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v50);

    *(v7 + 24) = v22;
    *(v7 + 32) = 2080;
    v23 = v42;
    v24 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v25 = (*(v24 + 24))(v23, v24);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v50);

    *(v7 + 34) = v28;
    _os_log_impl(&dword_0, v5, v6, "#%s Found group: [name=%s, id=%s, bundleId=%s]", v7, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = (*(v30 + 16))(v29, v30);
  v33 = v32;
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = (*(v35 + 8))(v34, v35);
  v38 = v37;
  v39 = objc_allocWithZone(INCallGroup);
  result = @nonobjc INCallGroup.init(groupName:groupId:)(v31, v33, v36, v38);
  *a2 = result;
  return result;
}

uint64_t static Transformer<>.findSmsChatIdsToRemove(_:)()
{
  KeyPath = swift_getKeyPath();
  v7 = _swiftEmptySetSingleton;

  specialized Sequence.filter(_:)(v1, &v7, KeyPath);
  v3 = v2;

  v4 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySo11INCallGroupCGTt1g5069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginSayAD8Smse6_pGRszp4So06D105J0CGSgRs_rlE32groupFirstPartyChatsByIdentifier33_1DF85DF06AE2240D0AAD0827B3513709LLySDySSAIGAIFZSSAHXEfU_Tf1nc_n(v3);
  v5 = specialized _NativeDictionary.filter(_:)(v4);

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSaySo11INCallGroupCG_GTt0g5(v5);
}

void FirstPartyChatGUID.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v39 = 5459283;
  v40 = 0xE300000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v6 = BidirectionalCollection<>.starts<A>(with:)();
  if ((v6 & 1) == 0)
  {
    v41 = a1;
    v42 = a2;
    v39 = 0x6567617373654D69;
    v40 = 0xE800000000000000;
    v6 = BidirectionalCollection<>.starts<A>(with:)();
    if ((v6 & 1) == 0)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.siriPhone);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_26;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "#FirstPartyChatGUID Unrecognized 1P chat group prefix.";
      goto LABEL_25;
    }
  }

  v41 = (&stru_20 + 27);
  v42 = 0xE100000000000000;
  __chkstk_darwin(v6);
  v38[2] = &v41;
  v7 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v38, a1, a2);
  v8 = v7[2];
  if (v8)
  {
    v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = 0;
    v10 = v41;
    v11 = v7 + 7;
    while (v9 < v7[2])
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      v16 = static String._fromSubstring(_:)();
      v18 = v17;

      v41 = v10;
      v19 = v10[2];
      if (v19 >= v10[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v41;
      }

      ++v9;
      v10[2] = v19 + 1;
      v20 = &v10[2 * v19];
      v20[4] = v16;
      v20[5] = v18;
      v11 += 4;
      if (v8 == v9)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_11:
  if (v10[2] != 3)
  {
LABEL_18:

    if (one-time initialization token for siriPhone == -1)
    {
LABEL_19:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.siriPhone);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v27, v28))
      {
LABEL_26:

        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        goto LABEL_27;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "#FirstPartyChatGUID Invalid parse for 1P chat group.";
LABEL_25:
      _os_log_impl(&dword_0, v27, v28, v30, v29, 2u);

      goto LABEL_26;
    }

LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  v21 = 0;
  while (1)
  {
    v22 = v21 + 16;
    if (v21 == 48)
    {
      break;
    }

    v23 = *(v10 + v21 + 40);
    v24 = *(v10 + v21 + 32) & 0xFFFFFFFFFFFFLL;
    if ((v23 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v23) & 0xF;
    }

    else
    {
      v25 = v24;
    }

    v21 = v22;
    if (!v25)
    {
      goto LABEL_18;
    }
  }

  v32 = v10[4];
  v33 = v10[5];
  v34 = v10[6];
  v35 = v10[7];
  v36 = v10[8];
  v37 = v10[9];

LABEL_27:
  *a3 = v32;
  a3[1] = v33;
  a3[2] = v34;
  a3[3] = v35;
  a3[4] = v36;
  a3[5] = v37;
}

void key path getter for INCallGroup.groupId : INCallGroup(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groupId];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

BOOL closure #1 in static Transformer<>.findSmsChatIdsToRemove(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_33:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4 == 2)
  {
    v5 = specialized Array.count.getter(a3);
    v6 = 0;
    v7 = a3 & 0xC000000000000001;
    while (v5 != v6)
    {
      if (v7)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v8 = *(a3 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v8);
      if (v10)
      {
        v11._countAndFlagsBits = 5459283;
        v11._object = 0xE300000000000000;
        v12 = String.hasPrefix(_:)(v11);

        if (v12)
        {
          for (i = 0; ; ++i)
          {
            v13 = v5 != i;
            if (v5 == i)
            {
              break;
            }

            if (v7)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_32;
              }

              v16 = *(a3 + 8 * i + 32);
            }

            v17 = v16;
            if (__OFADD__(i, 1))
            {
              goto LABEL_31;
            }

            outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v16);
            if (v18)
            {
              v19._countAndFlagsBits = 0x6567617373654D69;
              v19._object = 0xE800000000000000;
              v20 = String.hasPrefix(_:)(v19);

              if (v20)
              {
                return v13;
              }
            }

            else
            {
            }
          }

          return v13;
        }
      }

      else
      {
      }

      ++v6;
    }
  }

  return 0;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySo11INCallGroupCGTt1g5069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginSayAD8Smse6_pGRszp4So06D105J0CGSgRs_rlE32groupFirstPartyChatsByIdentifier33_1DF85DF06AE2240D0AAD0827B3513709LLySDySSAIGAIFZSSAHXEfU_Tf1nc_n(uint64_t a1)
{
  v34 = type metadata accessor for UUID();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &_swiftEmptyDictionarySingleton;
  v46 = &_swiftEmptyDictionarySingleton;
  v7 = specialized Array.count.getter(a1);
  v37 = a1;
  v38 = v7;
  v8 = 0;
  v35 = a1 & 0xFFFFFFFFFFFFFF8;
  v36 = a1 & 0xC000000000000001;
  v9 = (v2 + 8);
  v33 = xmmword_426260;
  while (1)
  {
    if (v38 == v8)
    {

      return v6;
    }

    if (v36)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v35 + 16))
      {
        goto LABEL_25;
      }

      v10 = *(v37 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v10);
    if (v13 && (FirstPartyChatGUID.init(_:)(v12, v13, &v39), v40))
    {
      v15 = v42;
      v14 = v43;
      v44[0] = v39;
      v44[1] = v40;

      outlined destroy of String(v44);
      v45 = v41;
      outlined destroy of String(&v45);
    }

    else
    {
      UUID.init()();
      v15 = UUID.uuidString.getter();
      v14 = v16;
      (*v9)(v5, v34);
    }

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    v19 = v6[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_26;
    }

    v22 = v17;
    if (v6[3] < v21)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, 1);
      v6 = v46;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_28;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = (v6[7] + 8 * v18);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (*v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = v33;
      *(v26 + 32) = v11;
      v6[(v18 >> 6) + 8] |= 1 << v18;
      v27 = (v6[6] + 16 * v18);
      *v27 = v15;
      v27[1] = v14;
      *(v6[7] + 8 * v18) = v26;
      v28 = v6[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_27;
      }

      v6[2] = v30;
    }

    ++v8;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = specialized Array.count.getter(a1);
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v19 = v6;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if (v8)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_14;
      }

      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    swift_getAtKeyPath();
    v12 = specialized Set._Variant.insert(_:)();

    if (v12)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v5;
      v14 = v9;
      v15 = v8;
      v16 = a3;
      v17 = a2;
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a2 = v17;
      a3 = v16;
      v8 = v15;
      v9 = v14;
      v5 = v13;
      v6 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

{
  v5 = a1;
  v6 = specialized Array.count.getter(a1);
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v19 = v6;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if (v8)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_14;
      }

      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    swift_getAtKeyPath();
    v12 = specialized Set._Variant.insert(_:)();

    if (v12)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v5;
      v14 = v9;
      v15 = v8;
      v16 = a3;
      v17 = a2;
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a2 = v17;
      a3 = v16;
      v8 = v15;
      v9 = v14;
      v5 = v13;
      v6 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = String.subscript.getter();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v49[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v49 = v28;
    }

    v12 = v49[2];
    v11 = v12 + 1;
    if (v12 >= v49[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v49 = v29;
    }

    v49[2] = v11;
    v26 = &v49[4 * v12];
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v49[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for INCallGroup()
{
  result = lazy cache variable for type metadata for INCallGroup;
  if (!lazy cache variable for type metadata for INCallGroup)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INCallGroup);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMd, &_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSaySo11INCallGroupCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab17VKXEfU_SS_SaySo11iJ5CGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n07_sSSSaytij18CGSbIgggd_SSACSbs5v76_pIegnndzo_TR069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePlugins109AD8Smsb6_pGRszn4So06A97J0CGSgRs_rlE04findI15ChatIdsToRemove33_1DF85DF06AE2240D0AAD0827B3513709LLyShySSGAIFZSbR18_AItXEfU_Tf3nnpf_nTf1nnc_n(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = closure #1 in static Transformer<>.findSmsChatIdsToRemove(_:)(v15, v16, v17);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSaySo11INCallGroupCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab17VKXEfU_SS_SaySo11iJ5CGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n07_sSSSaytij18CGSbIgggd_SSACSbs5v76_pIegnndzo_TR069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePlugins109AD8Smsb6_pGRszn4So06A97J0CGSgRs_rlE04findI15ChatIdsToRemove33_1DF85DF06AE2240D0AAD0827B3513709LLyShySSGAIFZSbR18_AItXEfU_Tf3nnpf_nTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [INCallGroup] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [INCallGroup] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INCallGroup] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo11INCallGroupCGMd, &_sSaySo11INCallGroupCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [INCallGroup] and conformance [A]);
  }

  return result;
}

uint64_t *CallHistoryImage.videoCallImage.unsafeMutableAddressor()
{
  if (one-time initialization token for videoCallImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.videoCallImage;
}

uint64_t *CallHistoryImage.outgoingCallImage.unsafeMutableAddressor()
{
  if (one-time initialization token for outgoingCallImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.outgoingCallImage;
}

uint64_t *CallHistoryImage.emptyImage.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.emptyImage;
}

id one-time initialization function for videoCallImage(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [objc_allocWithZone(SFLocalImage) init];
  [v9 setLocalImageType:a4];
  result = [v9 setSize:{a1, a2}];
  *a5 = v9;
  return result;
}

uint64_t *CallHistoryImage.unreadImage.unsafeMutableAddressor()
{
  if (one-time initialization token for unreadImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.unreadImage;
}

id one-time initialization function for emptyImage(double a1, double a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(SFLocalImage) init];
  result = [v7 setSize:{a1, a2}];
  *a4 = v7;
  return result;
}

uint64_t *CallHistoryImage.emptyImageVoicemail.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyImageVoicemail != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.emptyImageVoicemail;
}

id static CallHistoryImage.videoCallImage.getter(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:)(uint64_t a1, char a2)
{
  *(v3 + 256) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR) - 8) + 64);
  *(v3 + 152) = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for AceOutput();
  *(v3 + 160) = v5;
  v6 = *(v5 - 8);
  *(v3 + 168) = v6;
  v7 = *(v6 + 64);
  *(v3 + 176) = OUTLINED_FUNCTION_45();
  v8 = *(*(type metadata accessor for DialogPhase() - 8) + 64);
  *(v3 + 184) = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for OutputGenerationManifest();
  *(v3 + 192) = v9;
  v10 = *(v9 - 8);
  *(v3 + 200) = v10;
  v11 = *(v10 + 64);
  *(v3 + 208) = OUTLINED_FUNCTION_45();

  return _swift_task_switch(CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:), 0, 0);
}

uint64_t CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 136);
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  outlined init with copy of SignalProviding(v3 + 80, v0 + 16);
  v8 = (**(v3 + 184) + class metadata base offset for SearchCallHistoryCATsSimple + 592);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  v6 = *(v0 + 256);

  return v9(v6);
}

{
  v1 = v0[28];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v0[30] = v4;
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v1;
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v6 = v1;
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  v8 = v0[26];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 7, v4, v8, v2, v3);
}

{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:), 0, 0);
}

{
  v33 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  outlined init with copy of SignalProviding(v0 + 56, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    v8 = AceOutput.commands.getter();

    (*(v5 + 8))(v4, v7);
  }

  else
  {
    v9 = *(v0 + 152);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, *(v0 + 160));
    outlined destroy of AceOutput?(v9);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 144);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 144);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      v31 = 0;
      *v15 = 136315138;
      v17 = v14[2];
      v18 = v14[3];
      v19 = v14[4];
      v20 = v14[5];
      v32 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v17, v18, v19, v20);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, 0xE000000000000000, &v30);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_0, v12, v13, "%s can't generate voicemail prompt dialog to an Ace Command", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    v8 = _swiftEmptyArrayStorage;
  }

  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v25 = *(v0 + 184);
  v24 = *(v0 + 192);
  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  (*(v23 + 8))(v22, v24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v28 = *(v0 + 8);

  return v28(v8);
}

{
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[19];
  (*(v0[25] + 8))(v0[26], v0[24]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];
  v5 = v0[29];

  return v4();
}

uint64_t CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  }

  else
  {
    v5 = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t SeasContactInSingleAppRule.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return v0;
}

uint64_t SeasContactInSingleAppRule.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t CallHistoryPromptDialogProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  CallHistoryPromptDialogProvider.init()();
  return v0;
}

void *CallHistoryPromptDialogProvider.init()()
{
  v0[2] = type metadata accessor for CallHistoryPromptDialogProvider();
  v0[3] = &outlined read-only object #0 of CallHistoryPromptDialogProvider.init();
  v0[4] = 0;
  v0[5] = 0;
  return v0;
}

uint64_t outlined destroy of AceOutput?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id VoicemailRowCardSectionComponents.init(callRecord:deviceState:phoneCallDisplayTextCats:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, a4 + 2);
  a4[7] = a3;

  return a1;
}

uint64_t CallHistoryRowCardSectionComponents.callerName.getter()
{
  [*v0 callRecordType];
  CallRecordDisplayTextComponents.callerNameText.getter();
  v1 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v1;
}

uint64_t CallHistoryRowCardSectionComponents.callerHandleLabel.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + 8) caller];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 personHandle];

    if (v8)
    {
      v9 = [v8 label];

      if (v9)
      {
        v10 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        dispatch thunk of DeviceState.siriLocale.getter();
        v14[4] = Locale.identifier.getter();
        v14[5] = v11;
        v14[2] = 45;
        v14[3] = 0xE100000000000000;
        v14[0] = 95;
        v14[1] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        (*(v2 + 8))(v5, v1);

        static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      }
    }
  }

  v12 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v12;
}

uint64_t CallHistoryRowCardSectionComponents.callDate.getter()
{
  CallRecordDisplayTextComponents.callDateText.getter();
  v0 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v0;
}

id CallHistoryRowCardSectionComponents.image.getter()
{
  v1 = *v0;
  if ([*v0 callRecordType] == &dword_0 + 1)
  {
    if ([v1 callCapability] == &dword_0 + 2)
    {
      if (one-time initialization token for videoCallImage != -1)
      {
        swift_once();
      }

      v2 = &static CallHistoryImage.videoCallImage;
    }

    else
    {
      if (one-time initialization token for outgoingCallImage != -1)
      {
        swift_once();
      }

      v2 = &static CallHistoryImage.outgoingCallImage;
    }
  }

  else
  {
    if (one-time initialization token for emptyImage != -1)
    {
      swift_once();
    }

    v2 = &static CallHistoryImage.emptyImage;
  }

  v3 = *v2;

  return v3;
}

uint64_t static Transformer<>.callIdentifierTransformer(previousIntentResponse:)(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);

  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.callIdentifierTransformer(previousIntentResponse:)(void *a1@<X1>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(a1))
  {
    goto LABEL_9;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  v8 = a1;
  v9 = v7(ObjectType, v5);
  if (FollowUpOfferType.rawValue.getter(v9) == 0xD000000000000013 && 0x8000000000452820 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {

LABEL_9:
      v13 = 0;
      v14 = 0;
      goto LABEL_20;
    }
  }

  v15 = (*(v5 + 16))(ObjectType, v5);
  if (v15)
  {
    v16 = v15;
    if (specialized Array.count.getter(v15))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v16 & 0xC000000000000001) == 0, v16);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v16 + 32);
      }

      v18 = v17;

      v19 = [v18 identifier];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v20;

      goto LABEL_19;
    }
  }

  else
  {
  }

  v13 = 0;
  v14 = 0;
LABEL_19:

LABEL_20:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriPhone);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v24 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGmMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v31);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    if (v14)
    {
      v28 = v13;
    }

    else
    {
      v28 = 7104878;
    }

    if (v14)
    {
      v29 = v14;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v31);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_0, v22, v23, "#%s --> %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *a2 = v13;
  a2[1] = v14;
}

uint64_t *CallingFlowAbstraction.__allocating_init(app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, a2, a3, a4);
}

uint64_t *CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_0();
  *(v4 + *(v6 + 288)) = v7;
  OUTLINED_FUNCTION_2_0();
  v9 = (v4 + *(v8 + 296));
  *v9 = v10;
  v9[1] = v11;
  v12 = one-time initialization token for siriPhone;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_42();
    v17 = OUTLINED_FUNCTION_36();
    v23[0] = v17;
    *v16 = 136315138;
    v18 = *v9;
    v19 = v9[1];

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v14, v15, "%s.initialize", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  outlined init with copy of SignalProviding(a4, v23);
  v21 = PhoneFlow.init(sharedGlobals:)(v23);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

void CallingFlowAbstraction.__allocating_init(state:app:flowName:sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_19_7();
  CallingFlowAbstraction.init(state:app:flowName:sharedGlobals:)();
}

void CallingFlowAbstraction.init(state:app:flowName:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  v12 = *(*v0 + 256);
  v13 = *(*v0 + 264);
  v14 = type metadata accessor for PhoneCallFlowState();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v21 = &v25[-v20 - 8];
  *(v0 + *(v11 + 288)) = v8;
  OUTLINED_FUNCTION_2_0();
  v23 = (v0 + *(v22 + 296));
  *v23 = v6;
  v23[1] = v4;
  (*(v17 + 16))(v21, v10, v14);
  outlined init with copy of SignalProviding(v2, v25);
  PhoneFlow.init(state:sharedGlobals:)(v21, v25);
  __swift_destroy_boxed_opaque_existential_1(v2);
  (*(v17 + 8))(v10, v14);
  OUTLINED_FUNCTION_65();
}

void CallingFlowAbstraction.on(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 264);
  v6 = type metadata accessor for PhoneCallFlowState();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  v90 = v12 - v13;
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  v17 = type metadata accessor for Input();
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v25 = (v24 - v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.siriPhone);
  v28 = *(v20 + 16);
  v88 = v3;
  v85 = v28;
  v86 = v20 + 16;
  v28(v25, v3, v17);

  v89 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v91 = v16;
  v87 = v17;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_36();
    v92 = v6;
    v33 = v32;
    v84 = swift_slowAlloc();
    v93[0] = v84;
    *v33 = 136315650;
    OUTLINED_FUNCTION_41_0();
    v35 = OUTLINED_FUNCTION_11_21(*(v34 + 296));
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v93);
    *(v33 + 12) = 2080;
    OUTLINED_FUNCTION_41_0();
    (*(v37 + 128))();
    v38 = PhoneCallFlowState.description.getter(v92);
    v83 = v30;
    v39 = v9;
    v40 = v17;
    v42 = v41;

    (*(v39 + 8))(v16, v92);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v42, v93);
    OUTLINED_FUNCTION_19_7();

    *(v33 + 14) = v38;
    *(v33 + 22) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = v40;
    v9 = v39;
    (*(v20 + 8))(v25, v46);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v93);

    *(v33 + 24) = v47;
    _os_log_impl(&dword_0, v29, v83, "%s.On for state:%s input:%s", v33, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    v6 = v92;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v20 + 8))(v25, v17);
  }

  OUTLINED_FUNCTION_41_0();
  v49 = *(v48 + 128);
  v50 = v90;
  v49();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = *(v9 + 8);
  v90 = v9 + 8;
  v52(v50, v6);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  v55 = v54;
  if (EnumCaseMultiPayload == 5)
  {

    if (os_log_type_enabled(v53, v55))
    {
      v56 = OUTLINED_FUNCTION_42();
      v57 = OUTLINED_FUNCTION_36();
      v93[0] = v57;
      *v56 = 136315138;
      OUTLINED_FUNCTION_41_0();
      v59 = OUTLINED_FUNCTION_11_21(*(v58 + 296));
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v93);
      _os_log_impl(&dword_0, v53, v55, "%s.On, updating state to runIntentConversion", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_1_8();
    }

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
    v62 = *(v61 + 48);
    v63 = *(v61 + 64);
    v64 = v91;
    v85(v91, v88, v87);
    v65 = *v1;
    *&v64[v62] = *(v1 + *(*v1 + 288));
    v66 = *(v65 + 152);

    v66(v93, v67);
    v68 = v94;
    v69 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    (*(v69 + 8))(v68, v69);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    (*(v70 + 136))(v64);
    __swift_destroy_boxed_opaque_existential_1(v93);
  }

  else
  {
    if (os_log_type_enabled(v53, v54))
    {
      v71 = OUTLINED_FUNCTION_86_1();
      LODWORD(v89) = EnumCaseMultiPayload;
      v72 = v71;
      v73 = OUTLINED_FUNCTION_16_13();
      v92 = v6;
      v93[0] = v73;
      *v72 = 136315394;
      OUTLINED_FUNCTION_41_0();
      v75 = OUTLINED_FUNCTION_11_21(*(v74 + 296));
      *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v93);
      *(v72 + 12) = 2080;
      v77 = v91;
      v49();
      v78 = PhoneCallFlowState.description.getter(v92);
      v80 = v79;

      v52(v77, v92);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v93);
      OUTLINED_FUNCTION_19_7();

      *(v72 + 14) = v78;
      _os_log_impl(&dword_0, v53, v55, "%s.on is stopped, state: %s", v72, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      v77 = v91;
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    (*(v81 + 136))(v77);
  }

  OUTLINED_FUNCTION_65();
}

void CallingFlowAbstraction.prepare(completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v102 = v3;
  v103 = v2;
  v94 = *v0;
  v4 = v94;
  v98 = type metadata accessor for Input();
  v5 = OUTLINED_FUNCTION_7(v98);
  v96 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v93 = v9 - v10;
  __chkstk_darwin(v11);
  v97 = &v91 - v12;
  v13 = type metadata accessor for PrepareResponse();
  v14 = OUTLINED_FUNCTION_7(v13);
  v104 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v101 = v19 - v18;
  v20 = *(v4 + 256);
  v91 = *(v4 + 264);
  v92 = v20;
  v21 = type metadata accessor for PhoneCallFlowState();
  v22 = OUTLINED_FUNCTION_7(v21);
  v100 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_12_5();
  v28 = (v26 - v27);
  __chkstk_darwin(v29);
  v31 = &v91 - v30;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.siriPhone);
  OUTLINED_FUNCTION_19_7();

  v95 = v0;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_86_1();
    v36 = OUTLINED_FUNCTION_16_13();
    v99 = v13;
    v105[0] = v36;
    *v35 = 136315394;
    OUTLINED_FUNCTION_10_20();
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + *(v37 + 296)), *(v0 + *(v37 + 296) + 8), v105);
    *(v35 + 12) = 2080;
    OUTLINED_FUNCTION_10_20();
    (*(v38 + 128))();
    v39 = PhoneCallFlowState.description.getter(v21);
    v41 = v40;

    (*(v100 + 8))(v31, v21);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v105);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_0, v33, v34, "%s.prepare, state: %s", v35, 0x16u);
    OUTLINED_FUNCTION_15_20();
    v13 = v99;
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_20();
  v44 = *(v43 + 128);
  v44();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v62 = *(v28 + *(v61 + 48));
      v100 = *(v61 + 64);
      v64 = v96;
      v63 = v97;
      v65 = v98;
      (*(v96 + 32))(v97, v28, v98);
      v66 = v92;
      type metadata accessor for IntentConversionFlow();
      v67 = v93;
      (*(v64 + 16))(v93, v63, v65);
      v68 = *v1;
      v99 = v13;
      v69 = *(v68 + 152);

      v69(v105, v70);
      v105[0] = IntentConversionFlow.__allocating_init(input:app:sharedGlobals:)(v67, v62, v105);
      v71 = implicit closure #5 in CallingFlowAbstraction.prepare(completion:)();
      v73 = v72;
      v74 = swift_allocObject();
      v75 = v91;
      v74[2] = v66;
      v74[3] = v75;
      v76 = v94;
      v74[4] = *(v94 + 272);
      v74[5] = *(v76 + 280);
      v74[6] = v71;
      v74[7] = v73;
      swift_getWitnessTable();
      v77 = v101;
      static PrepareResponse.ongoing<A>(next:childCompletion:)();

      v103(v77);

      (*(v104 + 8))(v77, v99);
      (*(v64 + 8))(v97, v98);
      v59 = (v28 + v100);
      goto LABEL_13;
    case 2u:
      (*(v100 + 8))(v28, v21);
      goto LABEL_9;
    case 3u:
      (*(v100 + 8))(v28, v21);
      goto LABEL_15;
    case 4u:
      v105[0] = *v28;
      type metadata accessor for SimpleOutputFlowAsync();
      v90 = v101;
      static PrepareResponse.complete<A>(next:)();
      v103(v90);

      (*(v104 + 8))(v90, v13);
      break;
    case 5u:
LABEL_15:

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_86_1();
        v81 = OUTLINED_FUNCTION_16_13();
        v99 = v13;
        v105[0] = v81;
        *v80 = 136315394;
        OUTLINED_FUNCTION_10_20();
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + *(v82 + 296)), *(v1 + *(v82 + 296) + 8), v105);
        *(v80 + 12) = 2080;
        v44();
        v83 = PhoneCallFlowState.description.getter(v21);
        v85 = v84;

        (*(v100 + 8))(v31, v21);
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v105);

        *(v80 + 14) = v86;
        _os_log_impl(&dword_0, v78, v79, "%s.prepare unexpected state: %s", v80, 0x16u);
        OUTLINED_FUNCTION_15_20();
        v13 = v99;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
      }

      v88 = v103;
      v87 = v104;
      v89 = v101;
      static PrepareResponse.complete()();
      v88(v89);
      (*(v87 + 8))(v89, v13);
      break;
    case 6u:
LABEL_9:
      v60 = v101;
      static PrepareResponse.ongoing(needsExecute:)();
      goto LABEL_11;
    case 7u:
      v60 = v101;
      static PrepareResponse.complete()();
LABEL_11:
      v103(v60);
      (*(v104 + 8))(v60, v13);
      break;
    default:
      v45 = v96;
      v46 = v97;
      v47 = v98;
      (*(v96 + 32))(v97, v28, v98);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v49 = *(v48 + 48);
      v50 = *(v48 + 64);
      (*(v45 + 16))(v31, v46, v47);
      v51 = *v1;
      *&v31[v49] = *(v1 + *(*v1 + 288));
      v52 = *(v51 + 152);

      v52(v105, v53);
      v54 = v105[4];
      __swift_project_boxed_opaque_existential_1(v105, v105[3]);
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_40_0();
      v57(v56, v54);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_10_20();
      (*(v58 + 136))(v31);
      (*(v45 + 8))(v46, v47);
      v59 = v105;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v59);
      break;
  }

  OUTLINED_FUNCTION_65();
}

uint64_t CallingFlowAbstraction.execute()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *v1;
  v2[6] = *v1;
  v2[7] = *(v3 + 256);
  v2[8] = *(v3 + 264);
  v4 = type metadata accessor for PhoneCallFlowState();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(CallingFlowAbstraction.execute(), 0, 0);
}

uint64_t CallingFlowAbstraction.execute()()
{
  v51 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[5];
    v9 = OUTLINED_FUNCTION_86_1();
    v50 = OUTLINED_FUNCTION_16_13();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v8 + *(*v8 + 296)), *(v8 + *(*v8 + 296) + 8), &v50);
    *(v9 + 12) = 2080;
    (*(*v8 + 128))();
    v10 = PhoneCallFlowState.description.getter(v6);
    v12 = v11;

    (*(v7 + 8))(v5, v6);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v50);
    OUTLINED_FUNCTION_40_0();

    *(v9 + 14) = v10;
    _os_log_impl(&dword_0, v3, v4, "%s.execute, state: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v13 = v0[5];
  }

  v14 = v0[11];
  v15 = v0[9];
  v16 = v0[5];
  OUTLINED_FUNCTION_2_0();
  v18 = *(v17 + 128);
  v18();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = v0[11];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v21 = *(v19 + *(v20 + 48));

      __swift_destroy_boxed_opaque_existential_1((v19 + *(v20 + 64)));
      v22 = type metadata accessor for Input();
      (*(*(v22 - 8) + 8))(v19, v22);
      goto LABEL_9;
    case 2u:
      v39 = v0[7];
      v40 = v0[8];
      v41 = v0[5];
      v42 = v0[6];
      v43 = v0[4];
      v0[3] = *v0[11];
      implicit closure #5 in CallingFlowAbstraction.execute()(v41, *(v42 + 272));
      type metadata accessor for RCHFlowResult();
      type metadata accessor for AnyValueFlow();
      OUTLINED_FUNCTION_3_23();
      swift_getWitnessTable();
      static ExecuteResponse.replan<A>(next:childCompletion:)();

      goto LABEL_16;
    case 4u:
      v44 = v0[4];
      v0[2] = *v0[11];
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
LABEL_16:

      goto LABEL_17;
    case 5u:
      goto LABEL_9;
    case 6u:
      v36 = v0[4];
      v37 = v0[5];
      OUTLINED_FUNCTION_2_0();
      (*(v38 + 232))();
      goto LABEL_17;
    case 7u:
      goto LABEL_12;
    default:
      (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_9:
      v23 = v0[5];

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v0[12];
        v27 = v0[10];
        v49 = v0[9];
        v28 = v0[5];
        v29 = OUTLINED_FUNCTION_86_1();
        v50 = OUTLINED_FUNCTION_16_13();
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v28 + *(*v28 + 296)), *(v28 + *(*v28 + 296) + 8), &v50);
        *(v29 + 12) = 2080;
        v18();
        v30 = PhoneCallFlowState.description.getter(v49);
        v32 = v31;

        (*(v27 + 8))(v26, v49);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v50);

        *(v29 + 14) = v33;
        _os_log_impl(&dword_0, v24, v25, "%s.execute unexpected state: %s", v29, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
        v34 = v0[5];
      }

LABEL_12:
      v35 = v0[4];
      static ExecuteResponse.complete()();
LABEL_17:
      v46 = v0[11];
      v45 = v0[12];

      v47 = v0[1];

      return v47();
  }
}

uint64_t (*implicit closure #5 in CallingFlowAbstraction.execute()(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return partial apply for implicit closure #6 in implicit closure #5 in CallingFlowAbstraction.execute();
}

uint64_t CallingFlowAbstraction.makeRCHFlow(input:intent:app:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_42();
    v4 = OUTLINED_FUNCTION_36();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000000458780, &v6);
    _os_log_impl(&dword_0, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void CallingFlowAbstraction.processIntentConversionResult(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v112 = v1;
  v2 = *v0;
  v3 = type metadata accessor for CATOption();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_4();
  v107 = v6 - v5;
  v7 = v2[32];
  v110 = v2[33];
  v111 = v7;
  v8 = type metadata accessor for PhoneCallFlowState();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v114 = (v14 - v15);
  __chkstk_darwin(v16);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Input();
  v20 = OUTLINED_FUNCTION_7(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  v109 = v2;
  v28 = v2[16];
  v28();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v113 = v8;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
    v108 = *&v18[*(v30 + 48)];
    v31 = *(v30 + 64);
    (*(v22 + 32))(v27, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(&v18[v31]);
    v32 = v22;
    v33 = v27;
    if (v112)
    {
      v106 = v19;
      OUTLINED_FUNCTION_41_0();
      v35 = *(v34 + 152);
      v37 = v36;
      v35(v116);
      v38 = v117;
      v39 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v40 = (*(v39 + 56))(v38, v39);
      LOBYTE(v38) = (*(*v40 + 232))(v40);

      __swift_destroy_boxed_opaque_existential_1(v116);
      v112 = v37;
      if (v38 & 1) != 0 && ((*(v109[34] + 136))(v111))
      {
        v35(v116);
        v41 = v35;
        v42 = v117;
        v43 = v118;
        __swift_project_boxed_opaque_existential_1(v116, v117);
        (*(v43 + 8))(v115, v42, v43);
        __swift_project_boxed_opaque_existential_1(v115, v115[3]);
        v44 = DeviceState.isGroupFaceTimeDeviceUnsupported(app:)();
        __swift_destroy_boxed_opaque_existential_1(v115);
        __swift_destroy_boxed_opaque_existential_1(v116);
        if (v44)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          __swift_project_value_buffer(v45, static Logger.siriPhone);
          OUTLINED_FUNCTION_40_0();

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();

          v48 = os_log_type_enabled(v46, v47);
          v105 = v33;
          if (v48)
          {
            v49 = OUTLINED_FUNCTION_42();
            v50 = OUTLINED_FUNCTION_36();
            v116[0] = v50;
            *v49 = 136315138;
            OUTLINED_FUNCTION_41_0();
            v52 = OUTLINED_FUNCTION_11_21(*(v51 + 296));
            *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v116);
            OUTLINED_FUNCTION_9_21();
            _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            OUTLINED_FUNCTION_26_0();
            OUTLINED_FUNCTION_26_0();
          }

          v41(v116);
          type metadata accessor for StartCallCATs();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapper.__allocating_init(options:globals:)();
          type metadata accessor for StartCallCATsSimple();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for PhoneCallDisplayTextCATsSimple();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedFlowCATsSimple();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedFaceTimeOutputProvider();
          swift_allocObject();
          v59 = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
          v60 = (*(*v59 + 136))();
          v61 = v114;
          *v114 = v60;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_41_0();
          v63 = *(v62 + 136);

          v63(v61);

          v33 = v105;
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_42();
        v68 = OUTLINED_FUNCTION_36();
        v116[0] = v68;
        *v67 = 136315138;
        OUTLINED_FUNCTION_41_0();
        v70 = OUTLINED_FUNCTION_11_21(*(v69 + 296));
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v116);
        OUTLINED_FUNCTION_9_21();
        _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      OUTLINED_FUNCTION_41_0();
      v78 = v112;
      v116[0] = (*(v77 + 328))(v33, v112, v108);
      type metadata accessor for RCHFlowResult();
      type metadata accessor for AnyValueFlow();
      OUTLINED_FUNCTION_3_23();
      swift_getWitnessTable();
      v79 = Flow.eraseToAnyValueFlow()();

      v80 = v114;
      *v114 = v79;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_41_0();
      (*(v81 + 136))(v80);

      (*(v32 + 8))(v33, v106);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      __swift_project_value_buffer(v95, static Logger.siriPhone);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v96, v97))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_21();
        _os_log_impl(v98, v99, v100, v101, v102, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_41_0();
      (*(v103 + 136))(v96);

      (*(v22 + 8))(v27, v19);
    }
  }

  else
  {
    v82 = *(v11 + 8);
    v82(v18, v8);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = OUTLINED_FUNCTION_42();
      v87 = v114;
      v111 = v82;
      v88 = v86;
      v112 = OUTLINED_FUNCTION_36();
      v116[0] = v112;
      *v88 = 136315138;
      v28();
      v89 = v113;
      v90 = PhoneCallFlowState.description.getter(v113);
      v92 = v91;

      v111(v87, v89);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v116);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_0, v84, v85, "Unexpected state, stopping: %s", v88, 0xCu);
      v0 = v112;
      __swift_destroy_boxed_opaque_existential_1(v112);
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_41_0();
    (*(v94 + 136))(v0);
  }

  OUTLINED_FUNCTION_65();
}

void CallingFlowAbstraction.__allocating_init(sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  CallingFlowAbstraction.init(sharedGlobals:)();
}

void CallingFlowAbstraction.__allocating_init(state:sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  CallingFlowAbstraction.init(state:sharedGlobals:)();
}

uint64_t CallingFlowAbstraction.__ivar_destroyer()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *(v0 + *(v1 + 288));

  OUTLINED_FUNCTION_2_0();
  v4 = *(v0 + *(v3 + 296) + 8);
}

char *CallingFlowAbstraction.deinit()
{
  v0 = PhoneFlow.deinit();
  v1 = *&v0[*(*v0 + 288)];

  OUTLINED_FUNCTION_41_0();
  v3 = *&v0[*(v2 + 296) + 8];

  return v0;
}

uint64_t CallingFlowAbstraction.__deallocating_deinit()
{
  v0 = *CallingFlowAbstraction.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A?) -> ()(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1);
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in CallingFlowAbstraction.execute()()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 216))();
}

Swift::Void __swiftcall INPersonContainingIntent.clearContactsSlotMatches()()
{
  v1 = (*(v0 + 8))();
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter(v1);
    if (v3)
    {
      v4 = v3;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v4 < 0)
      {
        __break(1u);
        return;
      }

      v5 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v2 + 8 * v5 + 32);
        }

        ++v5;
        outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(_swiftEmptyArrayStorage, v6);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v5);
    }

    v8 = OUTLINED_FUNCTION_6_20();
    v9(v8);
  }
}

uint64_t INPersonContainingIntent.hasSiriMatches.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))();
  if (result)
  {
    v3 = result;
    if (specialized Array.count.getter(result))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;

      v6 = [v5 siriMatches];

      if (v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = specialized Array.count.getter(v7);

        return v8 != 0;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (!specialized Array.count.getter(v2))
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

LABEL_8:
  v6 = [v5 relationship];
  v7 = v6;
  v8 = v6 != 0;
  if (v6)
  {
  }

  if (v5)
  {
    v9 = v7 != 0;
    v10 = [v5 isMe];

    v8 = v9 | v10;
  }

  return v8 & 1;
}

INPerson_optional __swiftcall INPersonContainingIntent.removeContact(at:)(Swift::Int at)
{
  v4 = OUTLINED_FUNCTION_10_21(at, v1, v2);
  v6 = v5(v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = specialized Array.count.getter(v7);

  if (v8 > at)
  {
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v9 > at)
    {
      v10 = v9 - 1;
      v11 = v9 - 1 - at;
      v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * at;
      v13 = *(&stru_20.cmd + v12);
      memmove((v12 + 32), (v12 + 40), 8 * v11);
      *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) = v10;
      v14 = OUTLINED_FUNCTION_8_22();
      v15(v14);

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_6_2();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_36();
    v23 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000000458800, &v23);
    *(v20 + 12) = 2048;
    *(v20 + 14) = at;
    _os_log_impl(&dword_0, v18, v19, "#INPersonContainingIntent.%s: Index %ld is greater than number of contacts. Leaving slot as-is.", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v13 = 0;
LABEL_15:
  v22 = v13;
  result.value.super.isa = v22;
  result.is_nil = v16;
  return result;
}

Swift::Void __swiftcall INPersonContainingIntent.replaceContact(at:person:)(Swift::Int at, INPerson person)
{
  v5 = (*(v2 + 8))();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = specialized Array.count.getter(v6);

  if (v7 > at)
  {
    v8 = person.super.isa;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    if ((at & 0x8000000000000000) == 0)
    {
      if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) <= at)
      {
        __break(1u);
      }

      else
      {
        v9 = *(&stru_20.cmd + 8 * at + (v6 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * at + (v6 & 0xFFFFFFFFFFFFFF8)) = v8;

        v10 = OUTLINED_FUNCTION_8_22();
        v11(v10);
      }

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_6_2();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_36();
    v17 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000000458820, &v17);
    *(v14 + 12) = 2048;
    *(v14 + 14) = at;
    _os_log_impl(&dword_0, oslog, v13, "#INPersonContainingIntent.%s: Index %ld is greater than number of contacts. Leaving slot as-is.", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }
}

Swift::Void __swiftcall INPersonContainingIntent.appendContact(person:)(INPerson person)
{
  v4 = OUTLINED_FUNCTION_10_21(person.super.isa, v1, v2);
  v6 = v5(v4);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v7 = v6;
  }

  v11 = v7;
  v8 = person.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = OUTLINED_FUNCTION_6_20();
  v10(v9);
}

void key path setter for CallingIntent.callGroups : <A>A(uint64_t *a1)
{
  v1 = *a1;

  CallingIntent.callGroups.setter();
}

void CallingIntent.callGroups.setter()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = OUTLINED_FUNCTION_36();
    v9 = v3;
    *v2 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    v4 = Array.description.getter();
    v6 = v5;

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_0, oslog, v1, "#CallingIntent Intent does not support callGroups, not setting %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }
}

uint64_t CallingIntent.callGroups.modify(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  *a1 = 0;
  a1[1] = a2;
  return OUTLINED_FUNCTION_4_14();
}

void CallingIntent.callGroups.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    CallingIntent.callGroups.setter();
  }

  else
  {
    v4 = *a1;
    CallingIntent.callGroups.setter();
  }
}

void CallingIntent.populateCallIntentMetadata(resolvedApp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 24);
    v22 = *(a1 + 32);
    v10 = objc_allocWithZone(INStartCallRequestMetadata);

    v23 = a2;
    (*(a3 + 80))([v10 initWithAppInferred:v22 == 3], a2, a3);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v25 = v7;
    v26 = *(a1 + 16);
    v27 = v8;

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v25, v24, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v26, v24, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v27, v24, &_sShySSGMd, &_sShySSGMR);
    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v25, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v26, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v27, &_sShySSGMd, &_sShySSGMR);

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_36();
      v24[0] = v17;
      *v15 = 136315394;
      v18 = AppResolutionSource.description.getter(v22);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v24);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = (*(a3 + 72))(v23, a3);
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_0, v13, v14, "#CallingIntent did set callRequestMetadata: source=%s, callRequestMetadata=%@", v15, 0x16u);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0();
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();

      OUTLINED_FUNCTION_9_20(&v25);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v26, &_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_9_20(&v27);
    }

    else
    {

      OUTLINED_FUNCTION_9_20(&v25);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v26, &_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_9_20(&v27);
    }
  }
}

uint64_t protocol witness for CallingIntent.callGroups.modify in conformance INStartAudioCallIntent(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = 0;
  a1[1] = v3;
  return OUTLINED_FUNCTION_4_14();
}

uint64_t protocol witness for CallingIntent.callGroups.modify in conformance INStartVideoCallIntent(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = 0;
  a1[1] = v3;
  return OUTLINED_FUNCTION_4_14();
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for ContactQuery);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for UsoEntitySpan);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for SpeakableString);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for RREntity);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for CommonFlowGuard);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for DisplayHint);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for SemanticValue);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for UsoIdentifier);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for PhoneRRTarget);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for CommsAppFeature);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for AppDescription);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SingleCallRecordModel);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SingleVoicemailModel);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for RRResult);
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_11_22();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_23_1(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v14 = OUTLINED_FUNCTION_2_31();

      return _swift_arrayInitWithTakeBackToFront(v14);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = OUTLINED_FUNCTION_2_31();

    return _swift_arrayInitWithTakeFrontToBack(v15);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_11_22();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_23_1(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = OUTLINED_FUNCTION_2_31();

      return _swift_arrayInitWithTakeBackToFront(v12);
    }
  }

  else
  {
    a4(0);
    v13 = OUTLINED_FUNCTION_2_31();

    return _swift_arrayInitWithTakeFrontToBack(v13);
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  v1 = *(a1 + 16);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t CallingIntentBaseFlowStrategy.deviceState.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t CallingIntentBaseFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, __int128 *a11)
{
  v20 = *(v11 + 48);
  v21 = *(v11 + 52);
  v22 = swift_allocObject();
  CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v22;
}

void *CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, __int128 *a11)
{
  v12 = v11;
  v16 = *v11;
  v17 = type metadata accessor for DialogPhase();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v12[2] = a1;
  *&v31[0] = a1;
  v19 = *(*(*(v16 + 88) + 8) + 8);
  v20 = *(v19 + 8);
  v21 = *(v16 + 80);
  swift_unknownObjectRetain();
  v20(&v32, v21, v19);
  outlined init with take of SPHConversation(&v32, (v12 + 3));
  v12[8] = a2;
  outlined init with copy of SignalProviding(a3, (v12 + 9));
  v12[14] = a4;
  v12[15] = a5;
  v12[16] = a6;
  outlined init with copy of SignalProviding(a7, (v12 + 17));
  v12[22] = a8;
  outlined init with copy of SignalProviding(a9, (v12 + 23));
  outlined init with copy of SignalProviding(a10, (v12 + 28));
  outlined init with copy of SignalProviding((v12 + 3), &v32);
  v22 = v33;
  v23 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, v33);
  v24 = (*(v23 + 72))(v22, v23);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  outlined init with copy of SignalProviding(v24 + 160, v31);

  outlined init with take of SPHConversation(v31, (v12 + 33));
  __swift_destroy_boxed_opaque_existential_1(&v32);
  outlined init with take of SPHConversation(a11, (v12 + 38));
  return v12;
}

uint64_t CallingIntentBaseFlowStrategy.handleTemplatingResultFailure(_:_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, const char *a4)
{
  v6 = v4;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);

  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = *v6;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v21);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_0, v10, v11, a4, v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v21[0] = a1;
  v22 = 1;
  swift_errorRetain();
  a2(v21);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t CallingIntentBaseFlowStrategy.handleAceViewsFailure(_:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = *v1;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_0, v3, v4, "#%s failed to make ace views: %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  swift_willThrow();
  return swift_errorRetain();
}

uint64_t CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a4;
  v47 = a2;
  v12 = *v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42 - v15;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v44 = v16;
    v43 = v22;
    v50[0] = v22;
    *v21 = 136315138;
    v23 = *v7;
    v24 = _typeName(_:qualified:)();
    v26 = a5;
    v27 = a6;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v50);

    *(v21 + 4) = v28;
    a6 = v27;
    a5 = v26;
    _os_log_impl(&dword_0, v18, v19, "#%s slot resolvers enabled, calling multicardinal slot resolver", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v16 = v44;
    OUTLINED_FUNCTION_8();

    a1 = v45;
    OUTLINED_FUNCTION_8();
  }

  v30 = *(v12 + 80);
  v29 = *(v12 + 88);
  v31 = *(*(v29 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(swift_getAssociatedConformanceWitness() + 8);

  static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(v46, 0, a3, 0, 0, (v7 + 3), AssociatedTypeWitness, v33);

  v34 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v34);
  v35 = type metadata accessor for AnyIntentResolver();
  v36 = *(v35 - 8);
  (*(v36 + 16))(v49, v50, v35);
  outlined init with copy of SignalProviding(v47, v48);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v30;
  *(v37 + 40) = v29;
  v38 = v49[1];
  *(v37 + 48) = v49[0];
  *(v37 + 64) = v38;
  v39 = v49[3];
  *(v37 + 80) = v49[2];
  *(v37 + 96) = v39;
  *(v37 + 112) = a1;
  outlined init with take of SPHConversation(v48, v37 + 120);
  *(v37 + 160) = a5;
  *(v37 + 168) = a6;
  v40 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  return (*(v36 + 8))(v50, v35);
}

uint64_t closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a5;
  v11 = swift_task_alloc();
  v8[5] = v11;
  v12 = *(*(v15 + 8) + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentResolver();
  *v11 = v8;
  v11[1] = closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:);

  return AnyIntentResolver.resolve(skIntent:nlIntent:)(a5, a6);
}

uint64_t closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {

    v7 = closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:);
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 48);
  v2();

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t CallingIntentBaseFlowStrategy.getCompletionOutputManifest(intent:intentResponse:withContextForHandleIntent:responseViewId:printSupportingDialogInDisplayModes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  v15 = direct field offset for CallingIntentBaseFlowStrategy.completionOutputManifest;
  v16 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_23_1(v16);
  (*(v17 + 16))(a4, &v4[v15]);
  if (a3)
  {
    v18 = *(v7 + 80);
    v19 = *(*(*(v7 + 88) + 8) + 16);
    OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_3_25();
    type metadata accessor for PhoneCallNLContextProvider();
    static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)();
    outlined init with copy of NLContextUpdate?(v14, v12);
    OutputGenerationManifest.nlContextUpdate.setter();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t CallingIntentBaseFlowStrategy.__deallocating_deinit()
{
  CallingIntentBaseFlowStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[14];
  v9 = v1[20];
  v10 = v1[21];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(a1, v6, v7, (v1 + 6), v8, (v1 + 15), v9, v10);
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for CallingIntentBaseFlowStrategy()
{
  result = type metadata accessor for OutputGenerationManifest();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void key path setter for CallingIntentConfirmationFlowStrategy.personToConfirm : <A>CallingIntentConfirmationFlowStrategy<A>(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CallingIntentConfirmationFlowStrategy.personToConfirm.getter()
{
  v1 = direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t CallingIntentConfirmationFlowStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = type metadata accessor for Parse();
  v13 = OUTLINED_FUNCTION_7(v12);
  v60 = v14;
  v61 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = type metadata accessor for Input();
  v21 = OUTLINED_FUNCTION_7(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
  v30 = *(v23 + 16);
  v62 = a1;
  v30(v28, a1, v20);
  v59 = v2;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_42();
    v57 = v2;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_36();
    v56 = v11;
    v36 = v35;
    v63[0] = v35;
    *v34 = 136315138;
    Input.parse.getter();
    v37 = String.init(describing:)(v19);
    v58 = a2;
    v39 = v38;
    (*(v23 + 8))(v28, v20);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v63);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_0, v31, v32, "#CallingIntentConfirmationFlowStrategy input: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v11 = v56;
    OUTLINED_FUNCTION_26_0();
    v3 = v57;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v23 + 8))(v28, v20);
  }

  outlined init with copy of SignalProviding(v3 + 24, v63);
  Input.parse.getter();
  v41 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v19, 1);
  (*(v60 + 8))(v19, v61);
  outlined destroy of ContactPromptResponseParser(v63);
  if (v41 - 1 < 2)
  {
    v42 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_10:
    v43 = *v42;
    v44 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_23_1(v44);
    (*(v45 + 104))(v11, v43, v44);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v44);
    v49 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
    swift_beginAccess();
    outlined assign with take of ConfirmationResponse?(v11, v3 + v49);
    swift_endAccess();
    return static ActionForInput.handle()();
  }

  if (!v41)
  {
    v42 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_10;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v53);
    OUTLINED_FUNCTION_33(&dword_0, v54, v55, "#CallingIntentConfirmationFlowStrategy Received unsupported parse while determining action which is not yet supported. Skipping..");
    OUTLINED_FUNCTION_12_3();
  }

  return static ActionForInput.ignore()();
}

uint64_t CallingIntentConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[18] = a1;
  v5 = *v3;
  v6 = type metadata accessor for ConfirmationResponse();
  v4[21] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v4[22] = v7;
  v9 = *(v8 + 64);
  v4[23] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  v4[24] = v10;
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  v4[25] = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v16 = type metadata accessor for ParameterIdentifier();
  v4[29] = v16;
  OUTLINED_FUNCTION_13_2(v16);
  v4[30] = v17;
  v19 = *(v18 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v20 = *(v5 + 272);
  v4[33] = v20;
  v21 = *(*(v20 + 8) + 16);
  v4[34] = *(v5 + 264);
  v4[35] = swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for ParameterResolutionRecord();
  v4[36] = v22;
  OUTLINED_FUNCTION_13_2(v22);
  v4[37] = v23;
  v25 = *(v24 + 64);
  v4[38] = OUTLINED_FUNCTION_45();
  v26 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v26, v27, v28);
}

void CallingIntentConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  v122 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 152);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v11 = *(v0 + 288);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_42();
    v13 = OUTLINED_FUNCTION_36();
    v121 = v13;
    *v12 = 136315138;
    v14 = ParameterResolutionRecord.result.getter();
    v15 = [v14 itemToConfirm];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v9 + 8))(v10, v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v121);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v6, v7, "#CallingIntentConfirmationFlowStrategy intentResolutionResult: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = *(v0 + 288);
  v22 = *(v0 + 248);
  v21 = *(v0 + 256);
  v24 = *(v0 + 232);
  v23 = *(v0 + 240);
  v25 = *(v0 + 152);
  ParameterResolutionRecord.parameter.getter();
  v26 = ParameterIdentifier.multicardinalIndex.getter();
  v28 = v27;
  v29 = *(v23 + 8);
  v29(v21, v24);
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v26;
  }

  ParameterResolutionRecord.parameter.getter();
  v31 = ParameterIdentifier.name.getter();
  v33 = v32;
  v29(v22, v24);
  v34._countAndFlagsBits = v31;
  v34._object = v33;
  if ((PhoneCallSlotNames.init(rawValue:)(v34).value & 0xFE) == 4)
  {
    v35 = *(v0 + 288);
    v36 = *(v0 + 152);
    v37 = ParameterResolutionRecord.result.getter();
    v38 = [v37 itemToConfirm];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for INPerson();
    v113 = v30;
    if (swift_dynamicCast())
    {
      v117 = *(v0 + 136);
    }

    else
    {
      v117 = (*(**(v0 + 160) + 328))();
    }

    v43 = *(v0 + 224);
    v44 = *(v0 + 192);
    v45 = *(v0 + 200);
    v47 = *(v0 + 168);
    v46 = *(v0 + 176);
    v48 = *(v0 + 160);
    v49 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
    swift_beginAccess();
    (*(v46 + 104))(v43, enum case for ConfirmationResponse.confirmed(_:), v47);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v47);
    v53 = *(v44 + 48);
    v115 = v49;
    v116 = v48;
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v48 + v49, v45, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v43, v45 + v53, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (__swift_getEnumTagSinglePayload(v45, 1, v47) == 1)
    {
      v54 = *(v0 + 168);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 224), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v55 = &unk_426000;
      if (__swift_getEnumTagSinglePayload(v45 + v53, 1, v54) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 200), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        v56 = v117;
LABEL_26:
        if (!v56)
        {
          goto LABEL_31;
        }

        v81 = *(v0 + 280);
        v82 = *(v0 + 288);
        v84 = *(v0 + 264);
        v83 = *(v0 + 272);
        v86 = *(v0 + 152);
        v85 = *(v0 + 160);
        v118 = v56;
        v87 = v56;
        v88 = ParameterResolutionRecord.intent.getter();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v90 = OUTLINED_FUNCTION_26_11(AssociatedConformanceWitness);
        v92 = v91(v90);

        v74 = CallingIntentConfirmationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(v113, v87, v92);

LABEL_28:

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = OUTLINED_FUNCTION_42();
          v96 = OUTLINED_FUNCTION_36();
          v121 = v96;
          *v95 = v55[70];
          v97 = Array.description.getter();
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v121);

          *(v95 + 4) = v99;
          _os_log_impl(&dword_0, v93, v94, "#CallingIntentConfirmationFlowStrategy updated contacts: %s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v100 = *(v0 + 288);
        v101 = *(v0 + 152);
        v102 = ParameterResolutionRecord.intent.getter();
        *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        *(v0 + 48) = v74;
        NSObject.update(with:at:)((v0 + 48), 0x73746361746E6F63, 0xE800000000000000);

        __swift_destroy_boxed_opaque_existential_1((v0 + 48));
        v56 = v118;
LABEL_31:
        v103 = *(v0 + 304);
        v105 = *(v0 + 280);
        v104 = *(v0 + 288);
        v107 = *(v0 + 248);
        v106 = *(v0 + 256);
        v112 = *(v0 + 224);
        v114 = *(v0 + 216);
        v119 = *(v0 + 200);
        v120 = *(v0 + 184);
        v109 = *(v0 + 144);
        v108 = *(v0 + 152);
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v116 + v115, *(v0 + 208), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        ParameterResolutionRecord.intent.getter();
        NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_21_7();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
      v57 = *(v0 + 168);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(*(v0 + 200), *(v0 + 216), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45 + v53, 1, v57);
      v59 = *(v0 + 216);
      v60 = *(v0 + 224);
      if (EnumTagSinglePayload != 1)
      {
        v75 = *(v0 + 200);
        v76 = *(v0 + 176);
        v77 = *(v0 + 184);
        v78 = *(v0 + 168);
        (*(v76 + 32))(v77, v45 + v53, v78);
        _s11SiriKitFlow20ConfirmationResponseOACSQAAWlTm_0(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, &type metadata accessor for ConfirmationResponse);
        v79 = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = *(v76 + 8);
        v80(v77, v78);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        v56 = v117;
        v80(v59, v78);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v75, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        v55 = &unk_426000;
        if (v79)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (!v56)
        {
          goto LABEL_31;
        }

        v64 = *(v0 + 280);
        v63 = *(v0 + 288);
        v66 = *(v0 + 264);
        v65 = *(v0 + 272);
        v67 = *(v0 + 152);
        v68 = v56;
        v69 = ParameterResolutionRecord.intent.getter();
        v70 = swift_getAssociatedConformanceWitness();
        v71 = OUTLINED_FUNCTION_26_11(v70);
        v73 = v72(v71);

        v74 = CallingIntentConfirmationFlowStrategy.updateForRejectedContact(selectedIndex:rejectedContact:currentContacts:)(v113, v68, v73);

        if (!v74)
        {
          goto LABEL_31;
        }

        v118 = v56;
        goto LABEL_28;
      }

      v62 = *(v0 + 168);
      v61 = *(v0 + 176);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 224), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      (*(v61 + 8))(v59, v62);
      v55 = &unk_426000;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 200), &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    v56 = v117;
    goto LABEL_22;
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_4(v40))
  {
    v41 = OUTLINED_FUNCTION_42();
    v42 = OUTLINED_FUNCTION_36();
    v121 = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000A2, 0x8000000000458930, &v121);
    _os_log_impl(&dword_0, v39, v40, "%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_26_0();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  OUTLINED_FUNCTION_21_7();
}

uint64_t CallingIntentConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = *v0;
  v5 = type metadata accessor for ParameterIdentifier();
  v1[12] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v30 = *(v0 + 96);
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);

  v15 = *(v12 + 264);
  v16 = *(*(*(v12 + 272) + 8) + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v17 = ParameterResolutionRecord.app.getter();
  *(v0 + 120) = v17;
  v18 = ParameterResolutionRecord.intent.getter();
  *(v0 + 128) = v18;
  ParameterResolutionRecord.parameter.getter();
  v32 = ParameterIdentifier.name.getter();
  v20 = v19;
  *(v0 + 136) = v19;
  (*(v11 + 8))(v10, v30);
  v21 = ParameterResolutionRecord.result.getter();
  *(v0 + 144) = v21;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v29 = (*v13 + 400);
  v31 = (*v29 + **v29);
  v22 = (*v29)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 152) = v23;
  *v23 = v24;
  v23[1] = CallingIntentConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  v25 = *(v0 + 80);
  v26 = *(v0 + 56);
  v27 = *(v0 + 64);

  return v31(v26, v17, v27, v18, v32, v20, v21, v0 + 16);
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = v5[19];
  v7 = v5[18];
  v8 = v5[17];
  v9 = v5[16];
  v10 = v5[15];
  v11 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v12 = v11;
  *(v3 + 160) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3 + 16, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v16 = *(v3 + 112);

    v17 = *(v11 + 8);

    return v17();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 160);

  return v2();
}

uint64_t CallingIntentConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[8];

  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v12 + 24, (v0 + 2));
  v13 = type metadata accessor for DialogOutputFactory();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[11] = v16;
  v17 = *(*v16 + 136);
  v23 = (v17 + *v17);
  v18 = v17[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v19;
  *v19 = v20;
  v19[1] = CallingIntentConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameter:);
  v21 = v0[7];

  return v23(v21);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];
    v14 = v3[9];

    OUTLINED_FUNCTION_11();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  OUTLINED_FUNCTION_11();
  v5 = v0[13];

  return v4();
}

uint64_t CallingIntentConfirmationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(uint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  v6 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  if (a3 && specialized Array.count.getter(a3))
  {
    v81 = a3;

    v6 = a3;
  }

  v8 = [a2 contactIdentifier];
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

  v13 = specialized Optional<A>.isNilOrEmpty.getter(v10, v12);

  v14 = 5550080;
  if (v13)
  {
LABEL_44:
    v30 = specialized Array.count.getter(v6);
    v31 = *(v14 + 2952);
    v32 = a1;
    if (v30 <= a1)
    {
      v32 = v5;
      if (v31 == -1)
      {
LABEL_57:
        v38 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v38, static Logger.siriPhone);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v40))
        {
          v41 = OUTLINED_FUNCTION_65_0();
          *v41 = 0;
          OUTLINED_FUNCTION_29_13();
          _os_log_impl(v42, v43, v44, v45, v41, 2u);
          OUTLINED_FUNCTION_26_0();
        }

        v46 = a2;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v81 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v81;
        v5 = v32;
LABEL_74:
        if (*(v14 + 2952) != -1)
        {
LABEL_81:
          OUTLINED_FUNCTION_6_2();
        }

        v61 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v61, static Logger.siriPhone);

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v79[0] = swift_slowAlloc();
          *v64 = 136315394;
          v65 = *v5;
          v66 = _typeName(_:qualified:)();
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v79);

          *(v64 + 4) = v68;
          *(v64 + 12) = 2080;
          type metadata accessor for INPerson();

          v69 = Array.description.getter();
          v71 = v70;

          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v79);

          *(v64 + 14) = v72;
          _os_log_impl(&dword_0, v62, v63, "#%s updated contacts : %s)", v64, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        return v6;
      }
    }

    else
    {
      if (v31 != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v33 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v33, static Logger.siriPhone);
      v34 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v17))
      {
        v35 = OUTLINED_FUNCTION_42();
        *v35 = 134217984;
        *(v35 + 4) = a1;
        _os_log_impl(&dword_0, v34, v17, "#CallingIntentConfirmationFlowStrategy updateForConfirmedContact: Updating confirmed contact at selectedIndex=%ld", v35, 0xCu);
        OUTLINED_FUNCTION_26_0();
      }

      v36 = a2;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      }

      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) <= a1)
        {
          __break(1u);
LABEL_85:
          OUTLINED_FUNCTION_6_2();
          goto LABEL_65;
        }

        v37 = *(&stru_20.cmd + 8 * a1 + (v6 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * a1 + (v6 & 0xFFFFFFFFFFFFFF8)) = v36;

        v81 = v6;
        goto LABEL_74;
      }

      __break(1u);
    }

    OUTLINED_FUNCTION_6_2();
    goto LABEL_57;
  }

  v73 = v5;
  v15 = specialized Array.count.getter(v6);
  v76 = v6 & 0xC000000000000001;
  v16 = v6 & 0xFFFFFFFFFFFFFF8;

  v5 = -v15;
  v14 = 4;
  v75 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v5 + v14 == 4)
    {

      v5 = v73;
      v14 = &dword_54B000;
      goto LABEL_44;
    }

    v17 = v14 - 4;
    if (v76)
    {
      v18 = v6;
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v18 = v6;
      v19 = *(v6 + 8 * v14);
    }

    v20 = v19;
    v21 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a2);
    v23 = v22;
    outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v20);
    if (v24)
    {
      OUTLINED_FUNCTION_32_6();
      goto LABEL_15;
    }

    v27 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v20);
    v6 = v27;
    if (!v27)
    {
      v4 = 0;
      goto LABEL_15;
    }

    if (v27 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_26:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_80;
          }

          v28 = *(v6 + 32);
        }

        v4 = v28;

        v29 = [v4 contactIdentifier];

        if (v29)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_32_6();

          goto LABEL_15;
        }

        goto LABEL_41;
      }
    }

    else if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_26;
    }

LABEL_41:
    v4 = 0;
    v6 = 0;
LABEL_15:
    if (!v23)
    {
      if (!v6)
      {
        v6 = v18;

        goto LABEL_64;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (!v6)
    {
      goto LABEL_33;
    }

    if (v21 == v4 && v23 == v6)
    {
      break;
    }

    v26 = OUTLINED_FUNCTION_27_7();

    if (v26)
    {
      v6 = v18;
      goto LABEL_63;
    }

LABEL_34:
    ++v14;
    v6 = v18;
    v16 = v75;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_79;
    }
  }

  v6 = v18;
LABEL_63:

LABEL_64:
  v5 = v73;
  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_85;
  }

LABEL_65:
  v47 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v47, static Logger.siriPhone);
  v48 = a2;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_42();
    v78 = OUTLINED_FUNCTION_36();
    v80 = v78;
    *v51 = 136315138;
    v79[0] = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v48);
    v79[1] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v53 = String.init<A>(describing:)();
    v55 = v6;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v80);

    *(v51 + 4) = v56;
    v6 = v55;
    _os_log_impl(&dword_0, v49, v50, "#CallingIntentConfirmationFlowStrategy updateForConfirmedContact: Found confirmed contact with contactId=%s who is now confirmed", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v57 = v48;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    v59 = result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v59 = v75;
  }

  if (v17 < *(v59 + 16))
  {
    v60 = *(v59 + 8 * v14);
    *(v59 + 8 * v14) = v57;

    v81 = v6;
    v14 = &dword_54B000;
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

uint64_t CallingIntentConfirmationFlowStrategy.updateForRejectedContact(selectedIndex:rejectedContact:currentContacts:)(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a3;
  if (!a3)
  {
LABEL_54:

    return v5;
  }

  v8 = [a2 contactIdentifier];
  v63 = a1;
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

  v13 = specialized Optional<A>.isNilOrEmpty.getter(v10, v12);

  if ((v13 & 1) == 0)
  {
    v5 = specialized Array.count.getter(a3);
    v26 = 0;
    v27 = 0;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    while (v5 != v27)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v28 + 16))
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v29 = *(a3 + 32 + 8 * v27);
      }

      v3 = v29;
      v30 = a2;
      v31 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a2);
      v33 = v32;
      outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v3);
      if (v34)
      {
        OUTLINED_FUNCTION_32_6();
        goto LABEL_22;
      }

      v37 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v3);
      v28 = v37;
      if (!v37)
      {
        v4 = 0;
        goto LABEL_22;
      }

      if (v37 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:
          if ((v28 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_69;
            }

            v38 = *(v28 + 32);
          }

          v4 = v38;

          v39 = [v4 contactIdentifier];

          if (v39)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_32_6();

            goto LABEL_22;
          }

          goto LABEL_48;
        }
      }

      else if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

LABEL_48:
      v4 = 0;
      v28 = 0;
LABEL_22:
      if (!v33)
      {
        if (!v28)
        {

          goto LABEL_56;
        }

LABEL_40:

        v28 = a3 & 0xFFFFFFFFFFFFFF8;
        a2 = v30;
        goto LABEL_41;
      }

      if (!v28)
      {
        goto LABEL_40;
      }

      if (v31 == v4 && v33 == v28)
      {

LABEL_56:
        v28 = a3 & 0xFFFFFFFFFFFFFF8;
        a2 = v30;
LABEL_57:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.siriPhone);
        v50 = a2;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = OUTLINED_FUNCTION_42();
          v54 = OUTLINED_FUNCTION_36();
          v65 = v54;
          *v53 = 136315138;
          outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v55 = String.init<A>(describing:)();
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v65);

          *(v53 + 4) = v57;
          _os_log_impl(&dword_0, v51, v52, "#CallingIntentConfirmationFlowStrategy updateForRejectedContact: Contact to be confirmed with contactId=%s has been rejected", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v5 = a3;
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (a3 >> 62 || (result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
          v5 = result;
          v28 = result & 0xFFFFFFFFFFFFFF8;
        }

        v59 = *(v28 + 16);
        if (v59 > v27)
        {
          v60 = v59 - 1;
          v61 = v28 - v26;
          v62 = *(v28 + 8 * v27 + 32);
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v61 + 40, ~v27 + v59, v61 + 32);
          *(v28 + 16) = v60;

          return v5;
        }

        __break(1u);
        return result;
      }

      v36 = OUTLINED_FUNCTION_27_7();

      v28 = a3 & 0xFFFFFFFFFFFFFF8;
      a2 = v30;
      if (v36)
      {
        goto LABEL_57;
      }

LABEL_41:
      v26 -= 8;
      if (__OFADD__(v27++, 1))
      {
        goto LABEL_68;
      }
    }
  }

  v5 = a3;
  v3 = v63;
  if (specialized Array.count.getter(a3) <= v63)
  {

    if (one-time initialization token for siriPhone == -1)
    {
LABEL_51:
      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v43))
      {
        v44 = OUTLINED_FUNCTION_65_0();
        *v44 = 0;
        OUTLINED_FUNCTION_29_13();
        _os_log_impl(v45, v46, v47, v48, v44, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      goto LABEL_54;
    }

LABEL_72:
    OUTLINED_FUNCTION_6_2();
    goto LABEL_51;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_70:
    OUTLINED_FUNCTION_6_2();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v16))
  {
    v17 = OUTLINED_FUNCTION_42();
    *v17 = 134217984;
    *(v17 + 4) = v3;
    OUTLINED_FUNCTION_29_13();
    _os_log_impl(v18, v19, v20, v21, v17, 0xCu);
    OUTLINED_FUNCTION_26_0();
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v5 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v23 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v23 <= v3)
  {
    __break(1u);
    goto LABEL_72;
  }

  v24 = v23 - 1;
  v25 = *(&stru_20.cmd + 8 * v3 + (v5 & 0xFFFFFFFFFFFFFF8));
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 40, v23 - 1 - v3, (v5 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 32);
  *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) = v24;

  return v5;
}

uint64_t CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:itemToConfirm:intent:parameterName:intentResolutionResult:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[17] = a8;
  v9[18] = v8;
  v9[15] = a6;
  v9[16] = a7;
  v9[13] = a4;
  v9[14] = a5;
  v9[11] = a2;
  v9[12] = a3;
  v9[10] = a1;
  v9[19] = *v8;
  v9[20] = *v8;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v10, v11, v12);
}

uint64_t CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:itemToConfirm:intent:parameterName:intentResolutionResult:crrOutputGenerator:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[13];
  outlined init with copy of Any(v0[12], (v0 + 2));
  type metadata accessor for INPerson();
  if (swift_dynamicCast())
  {
    v4 = v0[9];
  }

  else
  {
    v4 = 0;
  }

  v5 = direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;

  v8 = v1 + 264;
  v7 = *(v1 + 264);
  v9 = *(*(*(v8 + 8) + 8) + 16);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(v10 + 8);
  v12 = *(v11 + 8);
  v13 = swift_checkMetadataState();
  v14 = v12(v13, v11);
  if (v14)
  {
    v15 = v14;
    if (specialized Array.count.getter(v14))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v15 & 0xC000000000000001) == 0, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v15 + 32);
      }

      v17 = v16;

      v18 = [v17 personHandle];

      if (v18)
      {
        [v18 isSuggested];
      }
    }

    else
    {
    }
  }

  v20 = v0[18];
  v19 = v0[19];
  v21 = v0[13];
  (*(*(v10 + 16) + 8))(v13);
  v22 = v20[14];
  v0[21] = (*(*v20 + 328))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[22] = v23;
  *v23 = v24;
  v23[1] = CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:itemToConfirm:intent:parameterName:intentResolutionResult:crrOutputGenerator:);
  v25 = v0[14];
  v26 = v0[15];
  v27 = v0[13];
  v28 = v0[10];
  v29 = v0[11];
  v33 = v0[17];
  v32 = v0[16];

  return static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 304) = v41;
  *(v1 + 312) = v0;
  *(v1 + 272) = v39;
  *(v1 + 288) = v40;
  *(v1 + 256) = v2;
  *(v1 + 264) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  *(v1 + 512) = v6;
  *(v1 + 224) = v7;
  *(v1 + 232) = v8;
  *(v1 + 216) = v9;
  v10 = type metadata accessor for PhoneError();
  *(v1 + 320) = v10;
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  *(v1 + 336) = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for Locale();
  *(v1 + 344) = v16;
  OUTLINED_FUNCTION_13_2(v16);
  *(v1 + 352) = v17;
  v19 = *(v18 + 64);
  *(v1 + 360) = OUTLINED_FUNCTION_45();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64) + 15;
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  v23 = type metadata accessor for NLContextUpdate();
  *(v1 + 384) = v23;
  OUTLINED_FUNCTION_13_2(v23);
  *(v1 + 392) = v24;
  v26 = *(v25 + 64);
  *(v1 + 400) = OUTLINED_FUNCTION_45();
  v27 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v27);
  v29 = *(v28 + 64);
  *(v1 + 408) = OUTLINED_FUNCTION_45();
  v30 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 416) = v30;
  OUTLINED_FUNCTION_13_2(v30);
  *(v1 + 424) = v31;
  v33 = *(v32 + 64);
  *(v1 + 432) = OUTLINED_FUNCTION_45();
  v34 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v34, v35, v36);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = v2[59];
  v6 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v7 = v6;
  *(v9 + 480) = v8;
  *(v9 + 488) = v0;

  v10 = v2[58];
  v11 = v2[57];
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2[42], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(*(v0 + 304), v0 + 136, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  if (*(v0 + 160))
  {
    outlined init with take of SPHConversation((v0 + 136), v0 + 96);
  }

  else
  {
    v2 = *(v0 + 440);
    v1 = *(v0 + 448);
    type metadata accessor for CATGlobals();

    CATGlobals.__allocating_init()();
    v3 = type metadata accessor for ContactResolutionSnippetGenerator();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
    *(v0 + 120) = v3;
    *(v0 + 128) = &protocol witness table for ContactResolutionSnippetGenerator;
    *(v0 + 96) = v6;
    if (*(v0 + 160))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 136, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    }
  }

  v7 = *(v0 + 296);
  v8 = *(v0 + 240);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 496) = v9;
  *v9 = v10;
  v9[1] = static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:);
  v11 = v8 == 2;
  v12 = *(v0 + 480);
  v13 = *(v0 + 432);
  v14 = *(v0 + 312);
  v15 = *(v0 + 288);
  v16 = *(v0 + 248);
  v17 = *(v0 + 216);

  return static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:)(v17, v16, v13, v15, v0 + 96, v7, v12, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 504) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v12 = *(v0 + 368);
  v13 = *(v0 + 360);
  v14 = *(v0 + 336);
  v15 = *(v0 + 328);
  v9 = *(v0 + 296);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  OUTLINED_FUNCTION_11();

  return v10();
}

{
  OUTLINED_FUNCTION_31();
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[37];

  (*(v4 + 8))(v3, v5);
  v7 = v0[61];
  v8 = v0[54];
  v10 = v0[50];
  v9 = v0[51];
  OUTLINED_FUNCTION_28_9();

  OUTLINED_FUNCTION_11();

  return v11();
}

{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 416);
  v6 = *(v0 + 296);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v7 = *(v0 + 504);
  v8 = *(v0 + 432);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  OUTLINED_FUNCTION_28_9();

  OUTLINED_FUNCTION_11();

  return v11();
}

void static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 272);
  if (v7)
  {
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_36();
    v95[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v95);
    *(v11 + 12) = 2048;
    *(v11 + 14) = [v8 confirmationReason];

    OUTLINED_FUNCTION_29_13();
    _os_log_impl(v13, v14, v15, v16, v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v17 = *(v0 + 296);
  if (v17)
  {
    v18 = *(v0 + 224);
    v19 = v17;
    v20 = App.appIdentifier.getter();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    if (App.isFirstParty()())
    {
      v25 = *(v0 + 240);
      v24 = *(v0 + 248);
      v26 = v24[3];
      v27 = v24[4];
      __swift_project_boxed_opaque_existential_1(v24, v26);
      (*(v27 + 8))(v26, v27);
      v22 = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(v25, (v0 + 176));
      v29 = v28;

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      v23 = v29;
    }

    *(v0 + 440) = v22;
    *(v0 + 448) = v23;
    v30 = *(v0 + 432);
    v31 = *(v0 + 408);
    v33 = *(v0 + 376);
    v32 = *(v0 + 384);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 256);
    static DialogPhase.confirmation.getter();
    OutputGenerationManifest.init(dialogPhase:_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMR);
    specialized static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)(v36, v35, v33);
    if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 376), &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_8_0(v38))
      {
        v39 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v39);
        OUTLINED_FUNCTION_17_4();
        _os_log_impl(v40, v41, v42, v43, v44, 2u);
        OUTLINED_FUNCTION_12_3();
      }
    }

    else
    {
      v62 = *(v0 + 432);
      v64 = *(v0 + 392);
      v63 = *(v0 + 400);
      v65 = *(v0 + 384);
      v66 = *(v0 + 368);
      (*(v64 + 32))(v63, *(v0 + 376), v65);
      v67 = [objc_allocWithZone(SAAceConfirmationContext) init];
      [v67 setReason:SAAceConfirmationReasonCONFIRM_CONTACTValue];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_426260;
      *(v68 + 32) = v67;
      v69 = v67;
      NLContextUpdate.conversationStateAttachments.setter();
      (*(v64 + 16))(v66, v63, v65);
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v65);
      OutputGenerationManifest.nlContextUpdate.setter();

      (*(v64 + 8))(v63, v65);
    }

    v73 = *(v0 + 352);
    v74 = *(v0 + 360);
    v75 = *(v0 + 344);
    v90 = *(v0 + 336);
    v91 = *(v0 + 312);
    v76 = *(v0 + 296);
    v92 = *(v0 + 280);
    v89 = *(v0 + 232);
    v94 = *(v0 + 240) == 2;
    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    v77 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v0 + 456) = OUTLINED_FUNCTION_34_3();
    v78 = *(v73 + 8);
    v79 = v75;
    v78(v74, v75);

    static Device.current.getter();
    v80 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    *(v0 + 464) = OUTLINED_FUNCTION_34_3();
    v78(v74, v79);
    static CallingIntentConfirmationFlowStrategy.getContactsInferenceSource(intent:)(v90);
    v81 = *(*v92 + class metadata base offset for StartCallCATsSimple + 48);
    v93 = v81 + *v81;
    v82 = v81[1];
    v83 = swift_task_alloc();
    *(v0 + 472) = v83;
    *v83 = v0;
    v83[1] = static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:);
    v84 = *(v0 + 336);
    v85 = *(v0 + 280);
    v86 = *(v0 + 512);
    OUTLINED_FUNCTION_21_7();

    __asm { BRAA            X6, X16 }
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_8_0(v46))
  {
    v47 = OUTLINED_FUNCTION_42();
    v48 = OUTLINED_FUNCTION_36();
    v95[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000F6, 0x80000000004589E0, v95);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  v54 = *(v0 + 320);
  v55 = *(v0 + 328);
  swift_storeEnumTagMultiPayload();
  _s11SiriKitFlow20ConfirmationResponseOACSQAAWlTm_0(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v56);
  outlined destroy of PhoneError(v55);
  swift_willThrow();
  v57 = *(v0 + 432);
  v59 = *(v0 + 400);
  v58 = *(v0 + 408);
  OUTLINED_FUNCTION_28_9();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_21_7();

  __asm { BRAA            X1, X16 }
}

uint64_t closure #1 in static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t specialized static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NLContextUpdate();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v17))
  {
    v18 = OUTLINED_FUNCTION_65_0();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#PhoneCallNLContextProvider needsConfirmationContext", v18, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  specialized static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(a1, a2);

  v19._countAndFlagsBits = a1;
  v19._object = a2;
  if ((PhoneCallSlotNames.init(rawValue:)(v19).value & 0xFE) == 4)
  {
    NLContextUpdate.weightedPromptResponseTargets.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = PhoneCallNLConstants.canonicalName.getter(3);
    *(inited + 40) = v21;
    *(inited + 48) = PhoneCallNLConstants.canonicalName.getter(13);
    *(inited + 56) = v22;
    specialized Array.append<A>(contentsOf:)(inited);
    NLContextUpdate.weightedPromptResponseTargets.setter();
  }

  (*(v9 + 32))(a3, v14, v6);
  OUTLINED_FUNCTION_23_3();
  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v6);
}

uint64_t static CallingIntentConfirmationFlowStrategy.getContactsInferenceSource(intent:)@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + 264;
  v3 = *(v1 + 264);
  v5 = *(*(*(v4 + 8) + 8) + 16);
  swift_getAssociatedTypeWitness();
  v6 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v7 = *(v6 + 8);
  v8 = swift_checkMetadataState();
  v9 = v7(v8, v6);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  if (specialized Array.count.getter(v9) != 1 || ((specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10), (v10 & 0xC000000000000001) != 0) ? (v11 = specialized _ArrayBuffer._getElementSlowPath(_:)()) : (v11 = *(v10 + 32)), v12 = v11, v13 = [v11 siriMatches], v12, !v13))
  {

LABEL_15:
    v23 = 1;
    goto LABEL_16;
  }

  type metadata accessor for INPerson();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v15 = *(v14 + 32);
  }

  v16 = v15;

  if (!INPerson.isProvidedByPlus.getter())
  {

    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v10 + 32);
    }

    v26 = v22;

    *(v20 + 4) = v26;
    *v21 = v26;
    _os_log_impl(&dword_0, v18, v19, "#CallingIntentConfirmationFlowStrategy Found a contact that is inferred by PLUS: %@", v20, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  SpeakableString.init(print:speak:)();
  v23 = 0;
LABEL_16:
  v24 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a1, v23, 1, v24);
}

uint64_t static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a3;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  v9 = type metadata accessor for ContactResolutionVerb();
  *(v8 + 56) = v9;
  v10 = *(v9 - 8);
  *(v8 + 64) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 72) = swift_task_alloc();

  return _swift_task_switch(static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:), 0, 0);
}

uint64_t static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_33(&dword_0, v5, v6, "#CallingIntentConfirmationFlowStrategy getYesNoClarificationContactName: confirming by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 96);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);

  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v14 = &enum case for ContactResolutionVerb.facetime(_:);
  if (!v9)
  {
    v14 = &enum case for ContactResolutionVerb.phoneCallOrFacetimeAudio(_:);
  }

  (*(v8 + 104))(v7, *v14, v11);
  v15 = async function pointer to dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 80) = v16;
  *v16 = v17;
  v16[1] = static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:);
  v18 = *(v0 + 72);
  v19 = *(v0 + 40);
  v20 = *(v0 + 16);
  v23 = *(v0 + 24);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(v20, v19, v18, 0xD000000000000029, 0x8000000000458B10, 0xD000000000000028, 0x8000000000458B40, v10);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[9];
  v8 = v5[8];
  v9 = v5[7];
  v10 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v11 = v10;
  *(v3 + 88) = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v15 = *(v3 + 72);

    OUTLINED_FUNCTION_11();

    return v16();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 88);

  return v2();
}

void *CallingIntentConfirmationFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v20 = *(v11 + 48);
  v21 = *(v11 + 52);
  swift_allocObject();
  return CallingIntentConfirmationFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *CallingIntentConfirmationFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v17 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
  v18 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v11 + v17, 1, 1, v18);
  *(v11 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm) = 0;
  outlined init with copy of SignalProviding(a3, v28);
  outlined init with copy of SignalProviding(a7, v27);
  outlined init with copy of SignalProviding(a9, v26);
  outlined init with copy of SignalProviding(a10, v25);
  outlined init with copy of SignalProviding(a11, v24);
  v19 = CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v28, a4, a5, a6, v27, a8, v26, v25, v24);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v19;
}

void CallingIntentConfirmationFlowStrategy.__ivar_destroyer()
{
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v1 = *(v0 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = type metadata accessor for CallingIntentConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 368);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 264);
  v14 = *(a4 + 272);
  v15 = type metadata accessor for CallingIntentConfirmationFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 264);
  v14 = *(a4 + 272);
  v15 = type metadata accessor for CallingIntentConfirmationFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = type metadata accessor for CallingIntentConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = type metadata accessor for CallingIntentConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 376);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 264);
  v16 = *(a5 + 272);
  v17 = type metadata accessor for CallingIntentConfirmationFlowStrategy();
  *v14 = v6;
  v14[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v17, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 264);
  v18 = *(a6 + 272);
  v19 = type metadata accessor for CallingIntentConfirmationFlowStrategy();
  *v16 = v7;
  v16[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v19, a7);
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames specialized static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(uint64_t a1, void *a2)
{
  result = _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  if (a2)
  {

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v5).value;
    if ((result & 0xFE) == 4)
    {
      _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }
  }

  return result;
}

uint64_t outlined assign with take of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s11SiriKitFlow20ConfirmationResponseOACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for CallingIntentConfirmationFlowStrategy()
{
  type metadata accessor for ConfirmationResponse?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void type metadata accessor for ConfirmationResponse?()
{
  if (!lazy cache variable for type metadata for ConfirmationResponse?)
  {
    type metadata accessor for ConfirmationResponse();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ConfirmationResponse?);
    }
  }
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized Array.count.getter(a3);
  OUTLINED_FUNCTION_131();
  while (v6 != v7)
  {
    if (v4)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_107();
    v13(v11, v12);
    if (v3)
    {

      return;
    }

    if (v15)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_95(_swiftEmptyArrayStorage);
      if (v14)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    ++v7;
  }
}

{
  specialized Array.count.getter(a3);
  OUTLINED_FUNCTION_131();
  while (v6 != v7)
  {
    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_107();
    v12(v10, v11);
    if (v3)
    {

      return;
    }

    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_95(_swiftEmptyArrayStorage);
      if (v13)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    ++v7;
  }
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v10 = OUTLINED_FUNCTION_126_0();
  v37 = type metadata accessor for PhoneRRTarget(v10);
  v11 = OUTLINED_FUNCTION_7(v37);
  v34 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_76_2(v15, v32);
  __chkstk_darwin(v16);
  v33 = &v32 - v17;
  result = specialized Array.count.getter(a3);
  v19 = result;
  v20 = 0;
  v39 = a3 & 0xC000000000000001;
  v21 = a3 & 0xFFFFFFFFFFFFFF8;
  v22 = _swiftEmptyArrayStorage;
  v35 = a3;
  while (1)
  {
    if (v19 == v20)
    {
      return v22;
    }

    if (v39)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v23 = result;
    }

    else
    {
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_20;
      }

      v23 = *(a3 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      break;
    }

    v40 = v23;
    v38(&v40);
    if (v3)
    {

      return v22;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v37) == 1)
    {
      result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
    }

    else
    {
      v24 = v33;
      outlined init with take of PhoneRRTarget(v4, v33);
      outlined init with take of PhoneRRTarget(v24, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = v22[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v30;
      }

      v25 = v22[2];
      if (v25 >= v22[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v31;
      }

      v22[2] = v25 + 1;
      v26 = *(v34 + 80);
      OUTLINED_FUNCTION_19_1();
      result = outlined init with take of PhoneRRTarget(v36, v22 + v27 + *(v28 + 72) * v25);
      a3 = v35;
    }

    ++v20;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_126_0();
  v11 = type metadata accessor for RRResult();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_76_2(v17, v33);
  __chkstk_darwin(v18);
  v34 = &v33 - v19;
  result = specialized Array.count.getter(a3);
  v21 = 0;
  v41 = a3 & 0xC000000000000001;
  v42 = result;
  v40 = a3 & 0xFFFFFFFFFFFFFF8;
  v35 = v14;
  v38 = (v14 + 32);
  v22 = _swiftEmptyArrayStorage;
  v36 = a1;
  v37 = a3;
  while (1)
  {
    if (v42 == v21)
    {
      return v22;
    }

    if (v41)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v23 = result;
    }

    else
    {
      if (v21 >= *(v40 + 16))
      {
        goto LABEL_20;
      }

      v23 = *(a3 + 8 * v21 + 32);
    }

    if (__OFADD__(v21, 1))
    {
      break;
    }

    v43 = v23;
    a1(&v43);
    if (v3)
    {

      return v22;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
    {
      result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
    }

    else
    {
      v24 = *v38;
      v25 = v34;
      (*v38)(v34, v4, v11);
      v24(v39, v25, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = v22[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v31;
      }

      v26 = v22[2];
      if (v26 >= v22[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v32;
      }

      v22[2] = v26 + 1;
      v27 = *(v35 + 80);
      OUTLINED_FUNCTION_19_1();
      result = (v24)(v22 + v28 + *(v29 + 72) * v26, v39, v11);
      a1 = v36;
      a3 = v37;
    }

    ++v21;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::EmergencyType_optional __swiftcall EmergencyType.init(for:)(Swift::OpaquePointer a1)
{
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1._rawValue);
  if (v2)
  {

    return 0;
  }

  else
  {
    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(a1._rawValue);
    v5 = v4;

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t EmergencyType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C61636F6CLL;
  }

  else
  {
    return 0x6E676965726F66;
  }
}

PhoneCallFlowDelegatePlugin::EmergencyType_optional __swiftcall EmergencyType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EmergencyType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyType_local;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyType_unknownDefault;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::EmergencyType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance EmergencyType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::EmergencyType_optional *a2@<X8>)
{
  result.value = EmergencyType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EmergencyType@<X0>(uint64_t *a1@<X8>)
{
  result = EmergencyType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate : <A>CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate.getter()
{
  v1 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  OUTLINED_FUNCTION_146();
  v2 = *(v0 + v1);
}

void key path setter for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson : <A>CallingIntentContactNeedsDisambiguationFlowStrategy<A>(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson.getter()
{
  v1 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
  OUTLINED_FUNCTION_146();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CallingIntentContactNeedsDisambiguationFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1)
{
  v116 = *v1;
  v118 = type metadata accessor for Parse();
  v3 = OUTLINED_FUNCTION_7(v118);
  v117 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for Input();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);
  (*(v13 + 16))(v18, a1, v10);
  v119 = v1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000000458B70, &v122);
    *(v22 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v13 + 8))(v18, v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v122);
    OUTLINED_FUNCTION_109();

    *(v22 + 14) = v23;
    _os_log_impl(&dword_0, v20, v21, "#CallingIntentContactNeedsDisambiguationFlowStrategy %s input: %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    v26 = (*(v13 + 8))(v18, v10);
  }

  v27 = v120;
  v28 = (*v120 + 320);
  v29 = *v28;
  v30 = (*v28)(v26);
  outlined init with copy of SignalProviding(v120 + 264, &v123);
  outlined init with copy of SignalProviding(v120 + 24, &v124);
  v122 = v30;
  Input.parse.getter();
  v31 = ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)(v9);
  v33 = v32;
  (*(v117 + 8))(v9, v118);
  v34 = outlined destroy of ContactDisambiguationPromptResponseParser(&v122);
  switch(v33)
  {
    case 0u:
      switch(v31)
      {
        case 0:
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_10_0(v100))
          {
            v101 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_103(v101);
            OUTLINED_FUNCTION_44(&dword_0, v102, v103, "#CallingIntentContactNeedsDisambiguationFlowStrategy user said yes to options");
            OUTLINED_FUNCTION_52();
          }

          *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 1;
          goto LABEL_58;
        case 1:
        case 2:
          v35 = *(v116 + 264);
          OUTLINED_FUNCTION_43_9(*(v116 + 272));
          swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_89();
          v36 = ParameterResolutionRecord.intent.getter();
          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (!v37)
          {
            goto LABEL_60;
          }

          v38 = [v37 isGroupCall];
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v39.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
          isa = v39.super.super.isa;
          if (v38)
          {
            OUTLINED_FUNCTION_117_0();
            v41 = static NSObject.== infix(_:_:)();

            if (v41)
            {
              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.debug.getter();
              if (OUTLINED_FUNCTION_10_0(v43))
              {
                v44 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_102(v44);
                _os_log_impl(&dword_0, v42, v119, "#CallingIntentContactNeedsDisambiguationFlowStrategy user said no, but this is a GFT call, so remove the contact and proceed.", isa, 2u);
                OUTLINED_FUNCTION_35();
              }

              static ActionForInput.handle()();
              goto LABEL_63;
            }
          }

          else
          {
          }

LABEL_60:

          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_10_0(v112))
          {
            v113 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_103(v113);
            OUTLINED_FUNCTION_44(&dword_0, v114, v115, "#CallingIntentContactNeedsDisambiguationFlowStrategy Intent cancelled");
            OUTLINED_FUNCTION_52();
          }

          static ActionForInput.cancel()();
LABEL_63:
          v84 = v31;
          v85 = 0;
          break;
        case 5:
        case 6:
          goto LABEL_18;
        case 7:
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_10_0(v105))
          {
            v106 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_103(v106);
            OUTLINED_FUNCTION_44(&dword_0, v107, v108, "#CallingIntentContactNeedsDisambiguationFlowStrategy intent resetting context");
            OUTLINED_FUNCTION_52();
          }

          v109 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
          OUTLINED_FUNCTION_114_1();
          v110 = *(v120 + v109);
          *(v120 + v109) = 0;

          *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 1;
LABEL_58:
          static ActionForInput.handle()();
          goto LABEL_63;
        default:
          goto LABEL_14;
      }

      goto LABEL_64;
    case 1u:
      v121 = v31;
      outlined copy of ContactDisambiguationPromptResponse(v31, 1u);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
      swift_dynamicCast();
      v70 = v122;
      v71 = v122;
      goto LABEL_31;
    case 2u:
      if (v31 < 0 || (v53 = v29(v34), specialized Array.count.getter(v53), OUTLINED_FUNCTION_40_0(), v54 = , v31 >= v120))
      {
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = OUTLINED_FUNCTION_42();
          v121 = v31;
          v122 = OUTLINED_FUNCTION_36();
          *v88 = 136315138;
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v122);

          *(v88 + 4) = v91;
          v27 = v120;
          _os_log_impl(&dword_0, v86, v87, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedIndex: %s is out of bounds", v88, 0xCu);
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_52();
        }
      }

      else
      {
        v55 = v29(v54);
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v31, (v55 & 0xC000000000000001) == 0, v55);
        if ((v55 & 0xC000000000000001) != 0)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v56 = *(v55 + 8 * v31 + 32);
        }

        v57 = v56;

        v58 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
        OUTLINED_FUNCTION_114_1();
        v59 = *(v120 + v58);
        *(v120 + v58) = v57;

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *v62 = 136315394;
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v121);

          *(v62 + 4) = v65;
          *(v62 + 12) = 2080;
          (*(*v120 + 344))(v66);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
          v67 = String.init<A>(describing:)();
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v121);

          *(v62 + 14) = v69;
          _os_log_impl(&dword_0, v60, v61, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedIndex: %s. selectedPerson:%s", v62, 0x16u);
          swift_arrayDestroy();
          v27 = v120;
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }
      }

      v92 = (*(*v27 + 344))();
      if (v92)
      {

        static ActionForInput.handle()();
      }

      else
      {
        static ActionForInput.ignore()();
      }

      v84 = v31;
      v85 = 2;
      goto LABEL_64;
    case 3u:
      v70 = v31;
      v71 = v31;
LABEL_31:
      v72 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
      OUTLINED_FUNCTION_114_1();
      v73 = *(v120 + v72);
      *(v120 + v72) = v71;
      v74 = v70;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = OUTLINED_FUNCTION_42();
        v78 = OUTLINED_FUNCTION_36();
        v121 = v78;
        *v77 = 136315138;
        (*(*v120 + 344))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
        v79 = String.init<A>(describing:)();
        v81 = v31;
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v121);

        *(v77 + 4) = v82;
        v31 = v81;

        _os_log_impl(&dword_0, v75, v76, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedPerson: %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
      }

      v83 = (*(*v120 + 344))();
      if (!v83)
      {
        goto LABEL_36;
      }

      static ActionForInput.handle()();
      goto LABEL_37;
    case 4u:
      if (!v31)
      {
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v94))
        {
          v95 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v95);
          OUTLINED_FUNCTION_77_3(&dword_0, v93, v119, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedNonMatchingLabel: reprompting…");
          OUTLINED_FUNCTION_12_3();
        }

        *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 1;
        static ActionForInput.handle()();
        v84 = 0;
        goto LABEL_51;
      }

      if (v31 != 1)
      {
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v97))
        {
          v98 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v98);
          OUTLINED_FUNCTION_77_3(&dword_0, v96, v119, "#CallingIntentContactNeedsDisambiguationFlowStrategy intent belongs to this task, but no contact selected, reprompting…");
          OUTLINED_FUNCTION_12_3();
        }

        *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 1;
        static ActionForInput.handle()();
        v84 = &dword_0 + 2;
LABEL_51:
        v85 = 4;
        goto LABEL_64;
      }

LABEL_18:
      v45 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v51))
      {
        v52 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v52);
        v50 = "#CallingIntentContactNeedsDisambiguationFlowStrategy intent does not belong to this task, ignoring…";
LABEL_20:
        OUTLINED_FUNCTION_44(&dword_0, v48, v49, v50);
        OUTLINED_FUNCTION_52();
      }

LABEL_21:

LABEL_36:
      static ActionForInput.ignore()();
LABEL_37:
      v84 = v31;
      v85 = v33;
LABEL_64:
      outlined consume of ContactDisambiguationPromptResponse?(v84, v85);
      return;
    default:
LABEL_14:
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_10_0(v46))
      {
        goto LABEL_21;
      }

      v47 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v47);
      v50 = "#CallingIntentContactNeedsDisambiguationFlowStrategy Coudln't parse response at disambiguation, ignoring…";
      goto LABEL_20;
  }
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
  if (a3 && specialized Array.count.getter(a3))
  {
    v40 = a3;

    v7 = a3;
  }

  if (specialized Array.count.getter(v7) <= a1)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_17:
      v17 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v19))
      {
        v20 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v20);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v21, v22, v23, v24, v25, 2u);
        OUTLINED_FUNCTION_35();
      }

      v26 = a2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v40;
      goto LABEL_22;
    }

LABEL_28:
    OUTLINED_FUNCTION_6_2();
    goto LABEL_17;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_42();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    OUTLINED_FUNCTION_115(&dword_0, v13, v11, "#CallingIntentContactNeedsDisambiguationFlowStrategy updateForDisambiguatedContact: Updating confirmed contact at selectedIndex=%ld");
    OUTLINED_FUNCTION_26_0();
  }

  v14 = a2;
  OUTLINED_FUNCTION_5();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
    __break(1u);
    return result;
  }

  v16 = *(&stru_20.cmd + 8 * a1 + (v7 & 0xFFFFFFFFFFFFFF8));
  *(&stru_20.cmd + 8 * a1 + (v7 & 0xFFFFFFFFFFFFFF8)) = v10;

  v40 = v7;
LABEL_22:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = *v4;
    v32 = _typeName(_:qualified:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v39);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);

    v35 = Array.description.getter();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v39);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_0, v28, v29, "#%s updated contacts : %s)", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_52();
  }

  return v7;
}

unint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.updateForRejectedContact(selectedIndex:currentContacts:)(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

  v5 = v2;
  if (!(a2 >> 62))
  {
    if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_18:

    return v4;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_18;
  }

LABEL_4:
  v7 = specialized Array.count.getter(v4);
  v8 = one-time initialization token for siriPhone;
  if (v7 <= a1)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_15:
      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_42();
        v36 = OUTLINED_FUNCTION_83();
        *v3 = 136315138;
        v26 = *v5;
        v27 = _typeName(_:qualified:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);

        *(v3 + 4) = v29;
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_35();
      }

      goto LABEL_18;
    }

LABEL_23:
    OUTLINED_FUNCTION_6_2();
    goto LABEL_15;
  }

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v9, static Logger.siriPhone);

  v10 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v3))
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_36();
    v36 = v12;
    *v11 = 136315138;
    v13 = *v5;
    v14 = _typeName(_:qualified:)();
    v5 = v15;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v36);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v10, v3, "#%s contact was not confirmed. Removing from the list.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_14_0();
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v4 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v18 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (v18 <= a1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = v18 - 1;
  v20 = v18 - 1 - a1;
  v21 = (v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32;
  v22 = *(&stru_20.cmd + 8 * a1 + (v4 & 0xFFFFFFFFFFFFFF8));
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v21 + 8, v20, v21);
  *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) = v19;

  return v4;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  type metadata accessor for SiriKitDisambiguationListAdapter();
  OUTLINED_FUNCTION_63_0();
  *v3 = v4;
  v3[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, uint64_t *a2)
{
  v30 = a1;
  v3 = *a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v28);
  v27 = v22 - v6;
  v7 = type metadata accessor for ParameterIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[2];
  v25 = *(v3 + 272);
  v26 = *(*(v25 + 8) + 16);
  v12 = *(v3 + 264);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v24 = ParameterResolutionRecord.app.getter();
  v23 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v13 = ParameterIdentifier.name.getter();
  v22[0] = v14;
  v22[1] = v13;
  (*(v8 + 8))(v11, v7);
  v15 = ParameterResolutionRecord.result.getter();
  v17 = v27;
  v16 = v28;
  (*(v4 + 16))(v27, v30, v28);
  v18 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 2) = v12;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  (*(v4 + 32))(&v19[v18], v17, v16);

  v21 = v23;
  dispatch thunk of RCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)();
}

uint64_t closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UnlockDevicePolicy();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a2[6];
  v6 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v5);
  v7 = (*(v6 + 8))(v12, v5, v6);
  (*(*a2 + 312))(v7);
  v8 = type metadata accessor for SiriKitDisambiguationListAdapter();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v12[0] = SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[51] = v2;
  v1[52] = v0;
  v1[49] = v3;
  v1[50] = v4;
  v5 = *v0;
  v6 = type metadata accessor for ParameterIdentifier();
  v1[53] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[54] = v7;
  v9 = *(v8 + 64);
  v1[55] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for Parse();
  v1[56] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[57] = v11;
  v13 = *(v12 + 64);
  v1[58] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  v15 = *(v14 + 272);
  v1[59] = v15;
  OUTLINED_FUNCTION_43_9(v15);
  OUTLINED_FUNCTION_49_1();
  v1[60] = *(v16 + 264);
  v1[61] = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for IntentPromptAnswer();
  v1[62] = v17;
  OUTLINED_FUNCTION_13_2(v17);
  v1[63] = v18;
  v20 = *(v19 + 64);
  v1[64] = OUTLINED_FUNCTION_62_4();
  v1[65] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 544);
  v3 = *(v1 + 536);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();

  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_8_1();

  return v1();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t (**a12)(void), uint64_t (*a13)(void), uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_79_1();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_101();
  a26 = v28;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.siriPhone);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v35))
  {
    OUTLINED_FUNCTION_42();
    *&a15 = OUTLINED_FUNCTION_83();
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000000458BD0, &a15);
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  if (*(*(v28 + 416) + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) == 1)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v42))
    {
      v43 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v43);
      OUTLINED_FUNCTION_14_1(&dword_0, v44, v45, "#CallingIntentContactNeedsDisambiguationFlowStrategy clearing context (clearing all existing selected contacts) so we can start over...");
      OUTLINED_FUNCTION_12_3();
    }

    v46 = *(v28 + 520);
    v47 = *(v28 + 496);
    v48 = *(v28 + 504);
    v49 = *(v28 + 488);
    v51 = *(v28 + 408);
    v50 = *(v28 + 416);
    v52 = *(v28 + 392);

    type metadata accessor for ParameterResolutionRecord();
    v53 = ParameterResolutionRecord.intent.getter();
    *(v28 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    *(v28 + 360) = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_118();
    NSObject.update(with:at:)((v28 + 360), v54, 0xE800000000000000);

    __swift_destroy_boxed_opaque_existential_1((v28 + 360));
    CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()();
    a15 = 0u;
    a16 = 0u;
    ParameterResolutionRecord.intent.getter();
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_55();
    static DisambiguationResult.chosenItem(_:)();
    v55 = *(v48 + 8);
    v56 = OUTLINED_FUNCTION_55();
    v57(v56);
    goto LABEL_46;
  }

  a11 = v33;
  OUTLINED_FUNCTION_2_0();
  v58 += 43;
  v59 = *v58;
  v60 = v58;
  v61 = (*v58)();
  a12 = v60;
  a13 = v59;
  if (v61)
  {
    a10 = v61;
    v62 = *(v28 + 456);
    v63 = *(v28 + 464);
    v64 = *(v28 + 448);
    v65 = *(v28 + 416);
    v66 = *(v28 + 400);
    v67 = v65[7];
    __swift_project_boxed_opaque_existential_1(v65 + 3, v65[6]);
    v68 = *(v67 + 72);
    v69 = OUTLINED_FUNCTION_109();
    v71 = v70(v69, v67);
    Input.parse.getter();
    (*(*v71 + 192))(v63);

    v72 = *(v62 + 8);
    v73 = OUTLINED_FUNCTION_123();
    v74(v73);
    if (*(v28 + 312))
    {
      outlined init with take of SPHConversation((v28 + 288), v28 + 248);
      v59 = a13;
    }

    else
    {
      v75 = v65[7];
      __swift_project_boxed_opaque_existential_1(v65 + 3, v65[6]);
      v76 = *(v75 + 72);
      v77 = OUTLINED_FUNCTION_123();
      v79 = v78(v77);
      (*(*v79 + 152))(v79);

      if (*(v28 + 152))
      {
        _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v28 + 168, v28 + 248, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        outlined destroy of TransformationResult(v28 + 120);
      }

      else
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28 + 120, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
        *(v28 + 248) = 0u;
        *(v28 + 264) = 0u;
        *(v28 + 280) = 0;
      }

      v59 = a13;
      if (*(v28 + 312))
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28 + 288, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      }
    }

    if (*(v28 + 272))
    {
      outlined init with take of SPHConversation((v28 + 248), v28 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_426260;
      *(v80 + 32) = a10;
      v81 = one-time initialization token for instance;
      v82 = a10;
      if (v81 != -1)
      {
        OUTLINED_FUNCTION_60_2();
      }

      _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(v65 + 3, v80, (v28 + 208), 0, static EligibleAppFinder.instance);

      __swift_destroy_boxed_opaque_existential_1((v28 + 208));
    }

    else
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28 + 248, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }
  }

  v83 = *(v28 + 488);
  v84 = *(v28 + 432);
  v85 = *(v28 + 440);
  v87 = *(v28 + 416);
  v86 = *(v28 + 424);
  v88 = *(v28 + 408);
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v89 = ParameterIdentifier.multicardinalIndex.getter();
  v91 = v90;
  v92 = (*(v84 + 8))(v85, v86);
  if (v91)
  {
    v93 = 0;
  }

  else
  {
    v93 = v89;
  }

  v94 = (v59)(v92);
  *(v28 + 528) = v94;
  if (!v94)
  {
LABEL_33:
    if ((*(*(v28 + 416) + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) & 1) == 0)
    {
      v102 = v59();
      if (v102)
      {
        v103 = v102;
        v104 = v102;
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = OUTLINED_FUNCTION_42();
          v108 = swift_slowAlloc();
          *v107 = 138412290;
          *(v107 + 4) = v104;
          *v108 = v103;
          v109 = v104;
          _os_log_impl(&dword_0, v105, v106, "#CallingIntentContactNeedsDisambiguationFlowStrategy parseDisambiguationResult confirmed contact: %@", v107, 0xCu);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v111 = *(v28 + 480);
        v110 = *(v28 + 488);
        v112 = *(v28 + 472);
        v113 = *(v28 + 408);
        v114 = *(v28 + 416);

        v115 = ParameterResolutionRecord.intent.getter();
        OUTLINED_FUNCTION_130_0();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_127_0(AssociatedConformanceWitness);
        v118 = v117(v110);

        CallingIntentContactNeedsDisambiguationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(v93, v104, v118);

        goto LABEL_39;
      }

      v120 = *(v28 + 480);
      v119 = *(v28 + 488);
      v121 = *(v28 + 472);
      v122 = *(v28 + 408);
      v123 = *(v28 + 416);
      v124 = ParameterResolutionRecord.intent.getter();
      v125 = swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_127_0(v125);
      v127 = v126(v119);

      v128 = CallingIntentContactNeedsDisambiguationFlowStrategy.updateForRejectedContact(selectedIndex:currentContacts:)(v93, v127);

      if (v128)
      {
LABEL_39:

        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = OUTLINED_FUNCTION_42();
          v132 = OUTLINED_FUNCTION_36();
          *&a15 = v132;
          *v131 = 136315138;
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v133 = Array.description.getter();
          v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &a15);

          *(v131 + 4) = v135;
          _os_log_impl(&dword_0, v129, v130, "#CallingIntentContactNeedsDisambiguationFlowStrategy updated contacts: %s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v132);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_14_0();
        }

        v59 = a13;
        v136 = *(v28 + 408);
        type metadata accessor for ContactResolution();
        v137 = static ContactResolution.dedupeContacts(contacts:)();

        v138 = ParameterResolutionRecord.intent.getter();
        *(v28 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        *(v28 + 328) = v137;
        OUTLINED_FUNCTION_118();
        NSObject.update(with:at:)((v28 + 328), v139, 0xE800000000000000);

        __swift_destroy_boxed_opaque_existential_1((v28 + 328));
      }
    }

    v140 = *(v28 + 416);
    v141 = CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()();
    v142 = (v59)(v141);
    v143 = v142;
    if (v142)
    {
      v142 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    }

    else
    {
      *(&a15 + 1) = 0;
      *&a16 = 0;
    }

    v145 = *(v28 + 504);
    v144 = *(v28 + 512);
    v147 = *(v28 + 488);
    v146 = *(v28 + 496);
    v148 = *(v28 + 408);
    v149 = *(v28 + 392);
    *&a15 = v143;
    *(&a16 + 1) = v142;
    ParameterResolutionRecord.intent.getter();
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_117_0();
    static DisambiguationResult.chosenItem(_:)();
    v150 = *(v145 + 8);
    v151 = OUTLINED_FUNCTION_117_0();
    v152(v151);
LABEL_46:
    OUTLINED_FUNCTION_144();

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_42_5();

    return v154(v153, v154, v155, v156, v157, v158, v159, v160, a9, a10, a11, a12, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, a18, a19, a20);
  }

  v95 = v94;
  if (INPerson.hasHandleValue.getter())
  {
    goto LABEL_32;
  }

  v96 = [v95 customIdentifier];
  if (v96)
  {
    v97 = v96;
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;
  }

  else
  {
    v98 = 0;
    v100 = 0;
  }

  v101 = specialized Optional<A>.isNilOrEmpty.getter(v98, v100);

  if (v101 & 1) == 0 || (INPerson.isEmergency.getter())
  {
LABEL_32:

    goto LABEL_33;
  }

  v162 = v93;
  v163 = v95;
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v164, v165))
  {
    v166 = OUTLINED_FUNCTION_42();
    v167 = swift_slowAlloc();
    *v166 = 138412290;
    *(v166 + 4) = v163;
    *v167 = v95;
    v168 = v163;
    OUTLINED_FUNCTION_115(&dword_0, v169, v165, "#CallingIntentContactNeedsDisambiguationFlowStrategy with CRRHandleRecommendation for selectedPerson %@");
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v167, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v170 = *(v28 + 496);
  v190 = *(v28 + 408);

  *(v28 + 48) = 0;
  *(v28 + 32) = 0u;
  *(v28 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  OUTLINED_FUNCTION_88();
  v171 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_13_2(v171);
  v173 = *(v172 + 72);
  v175 = (*(v174 + 80) + 32) & ~*(v174 + 80);
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_424FD0;
  INPerson.toContactQuery()();
  *(v28 + 56) = _swiftEmptyArrayStorage;
  *(v28 + 64) = 2;
  *(v28 + 72) = 0;
  *(v28 + 80) = 0x1123030905050204;
  *(v28 + 88) = 518;
  *(v28 + 96) = _swiftEmptyArrayStorage;
  *(v28 + 104) = v176;
  *(v28 + 112) = _swiftEmptyArrayStorage;
  v177 = swift_task_alloc();
  *(v28 + 536) = v177;
  v177[1] = vextq_s8(v190, v190, 8uLL);
  v177[2].i64[0] = v28 + 16;
  v177[2].i64[1] = v162;
  v178 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v179 = swift_task_alloc();
  *(v28 + 544) = v179;
  type metadata accessor for DisambiguationResult();
  *v179 = v28;
  v179[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  v180 = *(v28 + 392);
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_42_5();

  return withCheckedContinuation<A>(isolation:function:_:)(v181, v182, v183, v184, v185, v186, v187, v188, a9, a10, a11, a12, v190.i64[0], v190.i64[1], a15, *(&a15 + 1), a16, *(&a16 + 1), a17, a18, a19, a20);
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v22 = a1;
  v7 = *a2;
  v23 = *(*a2 + 272);
  v8 = *(*(v23 + 8) + 16);
  v9 = *(v7 + 264);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer();
  type metadata accessor for DisambiguationResult();
  v10 = type metadata accessor for CheckedContinuation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  type metadata accessor for ParameterResolutionRecord();
  v15 = ParameterResolutionRecord.intent.getter();
  v25[3] = &type metadata for PhoneCallDirectInvocationNLIntent;
  v25[4] = &protocol witness table for PhoneCallDirectInvocationNLIntent;
  v25[0] = swift_allocObject();
  outlined init with copy of PhoneCallDirectInvocationNLIntent(a4, v25[0] + 16);
  v16 = ParameterResolutionRecord.app.getter();
  (*(v11 + 16))(v14, v22, v10);
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 2) = v9;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  (*(v11 + 32))(&v18[v17], v14, v10);
  v20 = *(*a2 + 248);

  v20(v15, v25, v16, v24, partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:), v18);

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*(*(*a2 + 272) + 8) + 16);
  v6 = *(v4 + 264);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for IntentPromptAnswer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for DisambiguationResult();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v24[1] = v24 - v14;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24[0] = v7;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#CallingIntentContactNeedsDisambiguationFlowStrategy updated contact slot", v18, 2u);
    v7 = v24[0];
  }

  v19 = CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()();
  v20 = (*(*a2 + 344))(v19);
  v21 = v20;
  if (v20)
  {
    v20 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  }

  else
  {
    v24[3] = 0;
    v24[4] = 0;
  }

  v24[2] = v21;
  v24[5] = v20;
  v22 = a1;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  static DisambiguationResult.chosenItem(_:)();
  (*(v8 + 8))(v11, v7);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(returning:)();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[25] = *v0;
  v5 = type metadata accessor for PhoneError();
  v1[26] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ParameterIdentifier();
  v1[28] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[29] = v9;
  v11 = *(v10 + 64);
  v1[30] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[31] = v12;
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  v1[32] = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for SiriKitDisambiguationItemPair();
  v1[33] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[34] = v16;
  v18 = *(v17 + 64);
  v1[35] = OUTLINED_FUNCTION_62_4();
  v1[36] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = *(v2 + 328);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_91_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_76_1();
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(*(v2 + 320));
  if ((v3 & 1) == 0)
  {
    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(*(v2 + 320));
    if ((v4 & 1) == 0)
    {
      v19 = *(v2 + 296);
      Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v20))
      {
        v21 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v21);
        OUTLINED_FUNCTION_14_1(&dword_0, v22, v23, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for non emergency.");
        OUTLINED_FUNCTION_12_3();
      }

      OUTLINED_FUNCTION_97();
      v24 = *(v0 + 264);
      OUTLINED_FUNCTION_43_9(*(v0 + 272));
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_89();
      *(v2 + 376) = ParameterResolutionRecord.app.getter();
      v25 = ParameterResolutionRecord.intent.getter();
      OUTLINED_FUNCTION_140(v25);
      v26 = ParameterIdentifier.name.getter();
      v28 = OUTLINED_FUNCTION_85_0(v26, v27);
      v29(v28);
      *(v2 + 400) = ParameterResolutionRecord.result.getter();
      v30 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
      v31 = *(v30 + 8);
      v32 = OUTLINED_FUNCTION_40_0();
      v33(v32, v30);
      *(v2 + 88) = 0;
      *(v2 + 72) = 0u;
      *(v2 + 56) = 0u;
      v34 = *(*v1 + 480);
      v40 = v34 + *v34;
      v35 = v34[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v2 + 408) = v36;
      *v36 = v37;
      OUTLINED_FUNCTION_25_7(v36);
      OUTLINED_FUNCTION_31_0();

      __asm { BRAA            X8, X16 }
    }
  }

  v5 = *(v2 + 320);
  v6 = *(v2 + 296);

  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v9);
    OUTLINED_FUNCTION_77_3(&dword_0, v7, v0, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for emergency.");
    OUTLINED_FUNCTION_12_3();
  }

  v10 = *(v2 + 304);
  v11 = *(v2 + 200);
  v13 = *(v2 + 176);
  v12 = *(v2 + 184);

  v14 = *(v11 + 264);
  OUTLINED_FUNCTION_43_9(*(v11 + 272));
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  v15 = ParameterResolutionRecord.app.getter();
  *(v2 + 352) = OUTLINED_FUNCTION_141(v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 360) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_33_8(v16);

  return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)();
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[45];
  *v4 = *v1;
  *(v3 + 368) = v0;

  v6 = v2[44];
  v7 = v2[43];

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  v3[52] = v0;

  v6 = v2[50];
  v7 = v2[49];
  v8 = v2[48];
  v9 = v2[47];
  v10 = v2[40];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v3 + 7), &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v3 + 2);
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_76_1();
  v3 = *(v2 + 256);
  v4 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(*(v2 + 320));
  if ((v5 & 1) == 0)
  {
    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(*(v2 + 320));
    if ((v6 & 1) == 0)
    {
      v21 = *(v2 + 296);
      Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v22))
      {
        v23 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v23);
        OUTLINED_FUNCTION_14_1(&dword_0, v24, v25, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for non emergency.");
        OUTLINED_FUNCTION_12_3();
      }

      OUTLINED_FUNCTION_97();
      v26 = *(v0 + 264);
      OUTLINED_FUNCTION_43_9(*(v0 + 272));
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_89();
      *(v2 + 376) = ParameterResolutionRecord.app.getter();
      v27 = ParameterResolutionRecord.intent.getter();
      OUTLINED_FUNCTION_140(v27);
      v28 = ParameterIdentifier.name.getter();
      v30 = OUTLINED_FUNCTION_85_0(v28, v29);
      v31(v30);
      *(v2 + 400) = ParameterResolutionRecord.result.getter();
      v32 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
      v33 = *(v32 + 8);
      v34 = OUTLINED_FUNCTION_40_0();
      v35(v34, v32);
      *(v2 + 88) = 0;
      *(v2 + 72) = 0u;
      *(v2 + 56) = 0u;
      v36 = *(*v1 + 480);
      v42 = v36 + *v36;
      v37 = v36[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v2 + 408) = v38;
      *v38 = v39;
      OUTLINED_FUNCTION_25_7(v38);
      OUTLINED_FUNCTION_31_0();

      __asm { BRAA            X8, X16 }
    }
  }

  v7 = *(v2 + 320);
  v8 = *(v2 + 296);

  v9 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v11);
    OUTLINED_FUNCTION_77_3(&dword_0, v9, v0, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for emergency.");
    OUTLINED_FUNCTION_12_3();
  }

  v12 = *(v2 + 304);
  v13 = *(v2 + 200);
  v15 = *(v2 + 176);
  v14 = *(v2 + 184);

  v16 = *(v13 + 264);
  OUTLINED_FUNCTION_43_9(*(v13 + 272));
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  v17 = ParameterResolutionRecord.app.getter();
  *(v2 + 352) = OUTLINED_FUNCTION_141(v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 360) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_33_8(v18);

  return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2 = *(v1 + 368);
  OUTLINED_FUNCTION_78_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v0[20] = v0[52];
  v2 = v0[26];
  v1 = v0[27];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_19_0();
  if (swift_dynamicCast())
  {
    v3 = v0[26];
    v4 = v0[27];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v5 = v0[52];

      OUTLINED_FUNCTION_2_32();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v4, v6);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[53] = v7;
      *v7 = v8;
      v7[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
      v9 = v0[39];
      v10 = v0[23];
      v11 = v0[24];
      v12 = v0[21];
      OUTLINED_FUNCTION_65_1();

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)();
    }

    v16 = v0[39];
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[32], &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v4, v17);
  }

  else
  {
    v15 = v0[39];
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[32], &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  v18 = v0[20];

  v19 = v0[52];
  OUTLINED_FUNCTION_78_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 432) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2 = *(v1 + 160);

  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2 = *(v1 + 160);

  v3 = *(v1 + 432);
  OUTLINED_FUNCTION_78_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_136();
  a27 = v30;
  a28 = v31;
  a26 = v29;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_6_2();
  }

  v32 = type metadata accessor for Logger();
  *(v29 + 296) = __swift_project_value_buffer(v32, static Logger.siriPhone);
  v33 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v35);
    OUTLINED_FUNCTION_77_3(&dword_0, v33, v28, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForDisambiguation");
    OUTLINED_FUNCTION_12_3();
  }

  v36 = *(v29 + 176);

  *(v29 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMd, &_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMR);
  v37 = PaginatedItemContainer.items.getter();
  a16 = _swiftEmptyArrayStorage;
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = *(v29 + 272);
    v42 = *(v39 + 16);
    v40 = v39 + 16;
    v41 = v42;
    v43 = *(v40 + 64);
    OUTLINED_FUNCTION_19_1();
    v46 = v44 + v45;
    v47 = *(v40 + 56);
    v48 = _swiftEmptyArrayStorage;
    do
    {
      v49 = *(v29 + 288);
      v50 = *(v29 + 264);
      v41(v49, v46, v50);
      SiriKitDisambiguationItemPair.rawItem.getter();
      (*(v40 - 8))(v49, v50);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      if ((swift_dynamicCast() & 1) != 0 && *(v29 + 152))
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_95(a16);
        if (v51)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_130_0();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v48 = a16;
      }

      v46 += v47;
      --v38;
    }

    while (v38);
  }

  else
  {

    v48 = _swiftEmptyArrayStorage;
  }

  v52 = *(v29 + 192);
  v53 = *(v29 + 176);
  v54 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  swift_beginAccess();
  v55 = *(v52 + v54);
  *(v52 + v54) = v48;

  v56 = PaginatedItemContainer.items.getter();
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = *(v29 + 272);
    a16 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v61 = *(v58 + 16);
    v59 = v58 + 16;
    v60 = v61;
    v62 = *(v59 + 64);
    OUTLINED_FUNCTION_19_1();
    v64 = v56 + v63;
    v65 = *(v59 + 56);
    do
    {
      v66 = *(v29 + 280);
      v67 = *(v29 + 264);
      v60(v66, v64, v67);
      SiriKitDisambiguationItemPair.formattedItem.getter();
      (*(v59 - 8))(v66, v67);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v68 = a16[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_123();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v64 += v65;
      --v57;
    }

    while (v57);
  }

  v69 = *(v29 + 192);
  OUTLINED_FUNCTION_2_0();
  v70 += 40;
  v71 = *v70;
  v72 = (*v70)();

  (v71)(v73);
  specialized _arrayForceCast<A, B>(_:)();

  if (specialized Array.count.getter(v72) <= 5)
  {

    goto LABEL_21;
  }

  v74 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v72);

  if (v74)
  {
LABEL_21:
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v72);

    goto LABEL_22;
  }

LABEL_22:
  v75 = *(v29 + 192);
  v76 = type metadata accessor for SiriKitDisambiguationList();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0();
  *(v29 + 312) = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  v28 = v71();
  v79 = specialized Array.count.getter(v28);
  for (i = 0; ; ++i)
  {
    *(v29 + 320) = _swiftEmptyArrayStorage;
    if (v79 == i)
    {
      break;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_38;
      }

      v81 = *(v28 + 8 * i + 32);
    }

    v82 = v81;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v83 = *(v29 + 192);
    a15 = v81;
    closure #3 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(&a15, v83, &a16);

    if (a16)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v100 = *(v29 + 184);

  v84 = swift_task_alloc();
  *(v29 + 328) = v84;
  v84[1] = vextq_s8(v100, v100, 8uLL);
  v85 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v29 + 336) = v86;
  *v86 = v87;
  v86[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v89 = *(v29 + 248);
  v88 = *(v29 + 256);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_21_7();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v90, v91, v92, v93, v94, v95, v96, v97);
}

uint64_t closure #3 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  isa = INPerson.mutableCopyOrCrash()().super.isa;
  v13 = a2[6];
  v14 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v13);
  (*(v14 + 8))(v18, v13, v14);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = INPerson.withTranslatedHandleLabel(locale:)();

  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  *a3 = v15;
  return result;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_27();
  v1[221] = v0;
  v1[215] = v2;
  v1[209] = v3;
  v1[203] = v4;
  v5 = *v0;
  v6 = type metadata accessor for PhoneError();
  v1[222] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[223] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for NLContextUpdate();
  v1[224] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[225] = v10;
  v12 = *(v11 + 64);
  v1[226] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for TemplatingResult();
  v1[227] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[228] = v14;
  v16 = *(v15 + 64) + 15;
  v1[229] = swift_task_alloc();
  v1[230] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  v18 = *(v17 + 272);
  v1[231] = v18;
  OUTLINED_FUNCTION_43_9(v18);
  OUTLINED_FUNCTION_49_1();
  v1[232] = *(v19 + 264);
  swift_getAssociatedTypeWitness();
  v20 = OUTLINED_FUNCTION_89();
  v1[233] = v20;
  OUTLINED_FUNCTION_13_2(v20);
  v1[234] = v21;
  v1[235] = *(v22 + 64);
  v1[236] = OUTLINED_FUNCTION_62_4();
  v1[237] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[238] = v23;
  OUTLINED_FUNCTION_21(v23);
  v25 = *(v24 + 64);
  v1[239] = OUTLINED_FUNCTION_62_4();
  v1[240] = swift_task_alloc();
  v1[241] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v26, v27, v28);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[221];
  v2 = v0[215];
  v3 = v0[209];
  v4 = swift_task_alloc();
  v0[242] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[243] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  OUTLINED_FUNCTION_63_0();
  *v6 = v7;
  v6[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_65_1();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 1944);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 1952) = v0;

  if (!v0)
  {
    v9 = *(v3 + 1936);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  v18 = v0[238];
  v19 = v0[241];
  v15 = v0[237];
  v20 = v0[236];
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[233];
  v4 = v0[232];
  v5 = v0[231];
  v23 = v0[230];
  v6 = v0[221];
  v21 = v0[215];
  v22 = v0[227];
  v7 = v0[209];
  v0[245] = v0[197];
  v16 = *(v2 + 16);
  v17 = v7;
  v16();
  v8 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[246] = v9;
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  *(v9 + 4) = v6;
  v10 = *(v2 + 32);
  v10(&v9[v8], v15, v3);

  swift_asyncLet_begin();
  (v16)(v20, v17, v3);
  v11 = swift_allocObject();
  v0[247] = v11;
  *(v11 + 2) = v4;
  *(v11 + 3) = v5;
  *(v11 + 4) = v6;
  v10(&v11[v8], v20, v3);
  *&v11[(v8 + v1 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;

  swift_asyncLet_begin();
  v12 = v0[241];
  OUTLINED_FUNCTION_138();

  return _swift_asyncLet_get();
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[240];
  v2 = v0[224];
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0[241], v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[245];
    v4 = v0[240];
    v5 = v0[223];
    v6 = v0[222];

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_21();
    lazy protocol witness table accessor for type Input and conformance Input(v7, v8);
    v0[250] = OUTLINED_FUNCTION_147();
    PhoneError.logged()(v9);
    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v5, v10);
    swift_willThrow();
    v11 = OUTLINED_FUNCTION_61_8();

    return _swift_asyncLet_finish(v11, v12, v13, v0 + 172);
  }

  else
  {
    (*(v0[225] + 32))(v0[226], v0[240], v0[224]);
    v14 = [objc_allocWithZone(SAAceConfirmationContext) init];
    v0[248] = v14;
    [v14 setReason:SAAceConfirmationReasonCONFIRM_CONTACTValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_426260;
    *(v15 + 32) = v14;
    v16 = v14;
    NLContextUpdate.conversationStateAttachments.setter();
    v17 = OUTLINED_FUNCTION_61_8();

    return _swift_asyncLet_get_throwing(v17, v18, v19, v0 + 192);
  }
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 1992) = v0;
  if (v0)
  {
    v2 = *(v1 + 1960);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  v30 = *(v0 + 1960);
  v31 = *(v0 + 1984);
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1824);
  v32 = *(v0 + 1816);
  v28 = *(v0 + 1808);
  v29 = *(v0 + 1832);
  v4 = *(v0 + 1800);
  v27 = *(v0 + 1792);
  v5 = *(v0 + 1768);
  v6 = *(v0 + 1624);
  (*(v3 + 16))();
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_40_0();
  v10(v9, v7);
  v11 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_40_0();
  v14(v13, v11);
  v15 = *(v0 + 1448);
  __swift_project_boxed_opaque_existential_1((v0 + 1416), *(v0 + 1440));
  OUTLINED_FUNCTION_40_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v4 + 16))(v1, v28, v27);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v27);
  v19 = type metadata accessor for AceOutput();
  *(v0 + 1496) = 0u;
  *(v0 + 1512) = 0u;
  *(v0 + 1528) = 0;
  v6[3] = v19;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1496, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1336));
  (*(v3 + 8))(v29, v32);
  v20 = *(v4 + 8);
  v21 = OUTLINED_FUNCTION_117_0();
  v22(v21);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1416));
  v23 = OUTLINED_FUNCTION_61_8();

  return _swift_asyncLet_finish(v23, v24, v25, v0 + 1680);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return _swift_asyncLet_finish(v0 + 16, *(v0 + 1928), CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), v0 + 1728);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return OUTLINED_FUNCTION_70_2(v0 + 16, *(v0 + 1928), CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1792);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_61_8();

  return _swift_asyncLet_finish(v7, v8, v9, v0 + 1584);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return _swift_asyncLet_finish(v0 + 16, *(v0 + 1928), CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), v0 + 1632);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[247];
  v14 = v12[246];
  v15 = v12[241];
  OUTLINED_FUNCTION_68_2();
  v26 = v16;

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = v16[250];
  v29 = v16[246];
  v30 = v16[247];
  v18 = v16[221];
  OUTLINED_FUNCTION_2_0();
  (*(v19 + 240))(v17);
  swift_willThrow();
  OUTLINED_FUNCTION_30_9();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v29, v30, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = v16[249];
  v29 = v16[246];
  v30 = v16[247];
  v18 = v16[221];
  OUTLINED_FUNCTION_2_0();
  (*(v19 + 240))(v17);
  swift_willThrow();
  OUTLINED_FUNCTION_30_9();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v29, v30, a13, a14, a15, a16);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v15 = v14[242];

  v16 = v14[244];
  v17 = v14[221];
  OUTLINED_FUNCTION_2_0();
  (*(v18 + 240))(v16);
  swift_willThrow();
  v19 = v14[241];
  OUTLINED_FUNCTION_68_2();
  v30 = v20;
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(0);
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(0);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, a11, a12, a13, a14);
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v34 = a1;
  v5 = *a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v6 = *(v33 - 8);
  v32 = *(v6 + 64);
  __chkstk_darwin(v33);
  v31 = v29 - v7;
  v29[0] = type metadata accessor for ParameterIdentifier();
  v8 = *(v29[0] - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v29[0]);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(*(v5 + 272) + 8) + 16);
  v13 = *(v5 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v14 = *(v35 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = v29 - v15;
  v17 = a2[2];
  dispatch thunk of RCHFlowDelegate.makeAceViewProvider()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v29[3] = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v18 = ParameterIdentifier.name.getter();
  v29[1] = v19;
  v29[2] = v18;
  (*(v8 + 8))(v11, v29[0]);
  v20 = ParameterResolutionRecord.intent.getter();
  v21 = a2[6];
  v22 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v21);
  (*(v22 + 8))(v37, v21, v22);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  DeviceState.isAuthenticatedForPhone.getter();
  __swift_destroy_boxed_opaque_existential_1(v37);
  v23 = v31;
  v24 = v33;
  (*(v6 + 16))(v31, v34, v33);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v25, v23, v24);
  v28 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of AceViewProviding.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)();

  return (*(v35 + 8))(v16, v28);
}

uint64_t closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), 0, 0);
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_27();
  v23 = swift_task_alloc();
  *(v22 + 40) = v23;
  *(v23 + 16) = *(v22 + 24);
  v24 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v25 = swift_task_alloc();
  *(v22 + 48) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_63_0();
  *v25 = v26;
  v25[1] = implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:);
  v27 = *(v22 + 16);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();

  return withCheckedContinuation<A>(isolation:function:_:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_8_1();

  return v6();
}

uint64_t closure #4 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v47 = a1;
  v8 = *a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_7(v46);
  v10 = v9;
  v45 = *(v11 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v43 = v39 - v13;
  v41 = type metadata accessor for ParameterIdentifier();
  v14 = OUTLINED_FUNCTION_7(v41);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = *(*(*(v8 + 272) + 8) + 16);
  v23 = *(v8 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v44 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v27);
  v28 = a2[2];
  dispatch thunk of RCHFlowDelegate.makeNLContextProvider()();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  v40 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v39[1] = ParameterIdentifier.name.getter();
  (*(v16 + 8))(v21, v41);
  v29 = ParameterResolutionRecord.result.getter();
  v30 = v43;
  v31 = v46;
  (*(v10 + 16))(v43, v47, v46);
  v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = swift_allocObject();
  (*(v10 + 32))(v33 + v32, v30, v31);
  OUTLINED_FUNCTION_55();
  swift_getAssociatedConformanceWitness();
  v34 = v40;
  dispatch thunk of NLContextProviding.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)();

  v35 = *(v44 + 8);
  v36 = OUTLINED_FUNCTION_129();
  return v37(v36);
}

uint64_t closure #1 in closure #4 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_124();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  return CheckedContinuation.resume(returning:)();
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), 0, 0);
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_63_0();
  *v4 = v5;
  v4[1] = implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:);
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_11();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v41 = a1;
  v5 = *a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v6 = *(v40 - 8);
  v39 = *(v6 + 64);
  __chkstk_darwin(v40);
  v38 = &v31 - v7;
  v8 = type metadata accessor for ParameterIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(*(v5 + 272) + 8) + 16);
  v14 = *(v5 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v15 = *(v42 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v37 = &v31 - v16;
  v17 = a2[2];
  dispatch thunk of RCHFlowDelegate.makeDialogTemplating()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v35 = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v18 = ParameterIdentifier.name.getter();
  v33 = v19;
  v34 = v18;
  (*(v9 + 8))(v12, v8);
  v32 = ParameterResolutionRecord.result.getter();
  v21 = a2[6];
  v20 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v21);
  (*(v20 + 8))(v44, v21, v20);
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  DeviceState.isAuthenticatedForPhone.getter();
  __swift_destroy_boxed_opaque_existential_1(v44);
  v22 = ParameterResolutionRecord.intent.getter();
  v23 = v38;
  v24 = v40;
  (*(v6 + 16))(v38, v41, v40);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v25, v23, v24);
  v30 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v27 = v32;
  v28 = v37;
  dispatch thunk of DialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)();

  return (*(v42 + 8))(v28, v30);
}

uint64_t closure #1 in closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v12 - v9);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a1, v12 - v9, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()()
{
  v1 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = _swiftEmptyArrayStorage;

  *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  return result;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 168) = v33;
  *(v1 + 176) = v0;
  *(v1 + 152) = v32;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 112) = v6;
  *(v1 + 184) = *v0;
  v7 = type metadata accessor for PhoneError();
  *(v1 + 192) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for ContactResolutionPatternID();
  *(v1 + 208) = v10;
  OUTLINED_FUNCTION_13_2(v10);
  *(v1 + 216) = v11;
  v13 = *(v12 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  *(v1 + 232) = v14;
  OUTLINED_FUNCTION_21(v14);
  v16 = *(v15 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_62_4();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_45();
  v23 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 288) = v23;
  OUTLINED_FUNCTION_13_2(v23);
  *(v1 + 296) = v24;
  v26 = *(v25 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_45();
  v27 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v27, v28, v29);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_101();
  v23 = *(v22 + 120);
  App.appIdentifier.getter();
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  if (App.isFirstParty()())
  {
    v26 = *(v22 + 184);
    v27 = *(v22 + 152);
    v28 = *(v22 + 136);
    v29 = *(v26 + 264);
    v30 = *(*(*(v26 + 272) + 8) + 16);
    swift_getAssociatedTypeWitness();
    v31 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v32 = *(v31 + 8);
    v33 = swift_checkMetadataState();
    v34 = v32(v33, v31);
    static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(v34, v27);
    v36 = v35;

    v25 = v36;
  }

  *(v22 + 312) = v25;
  v37 = *(v22 + 304);
  v39 = *(v22 + 272);
  v38 = *(v22 + 280);
  v41 = *(v22 + 160);
  v40 = *(v22 + 168);
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v41, v39, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v40, v22 + 56, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  if (*(v22 + 80))
  {
    outlined init with take of SPHConversation((v22 + 56), v22 + 16);
  }

  else
  {
    type metadata accessor for CATGlobals();

    CATGlobals.__allocating_init()();
    OUTLINED_FUNCTION_88();
    v42 = type metadata accessor for ContactResolutionSnippetGenerator();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
    *(v22 + 40) = v42;
    *(v22 + 48) = &protocol witness table for ContactResolutionSnippetGenerator;
    *(v22 + 16) = v45;
    if (*(v22 + 80))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22 + 56, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    }
  }

  v162 = v25;
  v46 = *(v22 + 264);
  v47 = *(v22 + 232);
  v48 = *(v22 + 128);
  v49 = *(v47 + 48);
  *v46 = static ContactResolutionHelper.nullHandleLabelHelper(contacts:)() & 1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v50 = *(v22 + 256);
  v51 = *(v22 + 264);
  v52 = *(v22 + 248);
  v53 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v53, static Logger.siriPhone);
  OUTLINED_FUNCTION_124();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v54, v55, v56, v57);
  OUTLINED_FUNCTION_124();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v58, v59, v60, v61);
  v62 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  v64 = os_log_type_enabled(v62, v63);
  v66 = *(v22 + 248);
  v65 = *(v22 + 256);
  if (v64)
  {
    v67 = v47;
    a9 = v47;
    v68 = *(v22 + 240);
    v157 = v49;
    v69 = *(v22 + 216);
    a10 = *(v22 + 208);
    v159 = v46;
    v70 = swift_slowAlloc();
    v163 = OUTLINED_FUNCTION_36();
    *v70 = 136315394;
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v65, v68, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    v71 = *(v67 + 48);
    v72 = ContactResolutionPatternID.rawValue.getter();
    HIDWORD(a11) = v50;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    v73 = *(v69 + 8);
    v73(&v68[v71], a10);
    v74 = OUTLINED_FUNCTION_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v76);
    OUTLINED_FUNCTION_40_0();

    *(v70 + 4) = v72;
    *(v70 + 12) = 1024;
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v66, v68, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    v77 = *v68;
    v73(&v68[*(a9 + 48)], a10);
    v49 = v157;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    *(v70 + 14) = v77;
    _os_log_impl(&dword_0, v62, BYTE4(a11), "#CallingIntentContactNeedsDisambiguationFlowStrategy ContactResolutionHelper.NullLabelHelper results - Pattern: %s NeedsAuth: %{BOOL}d", v70, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v163);
    OUTLINED_FUNCTION_26_0();
    v46 = v159;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v22 + 248), &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  }

  v78 = *(v22 + 216);
  v79 = *(v22 + 224);
  v80 = *(v22 + 208);
  (*(v78 + 16))(v79, &v46[v49], v80);
  v81 = (*(v78 + 88))(v79, v80);
  if (v81 == enum case for ContactResolutionPatternID.detailedDisambiguationContactNames(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 384) = v82;
    *v82 = v83;
    OUTLINED_FUNCTION_8_23(v82);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v84, v85, v86, v87, v88, v89);
  }

  else if (v81 == enum case for ContactResolutionPatternID.simpleDisambiguationUniqueLabels(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 320) = v91;
    *v91 = v92;
    OUTLINED_FUNCTION_8_23(v91);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v93, v94, v95, v96, v97, v98);
  }

  else if (v81 == enum case for ContactResolutionPatternID.simpleDisambiguationMixedLabels(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 352) = v99;
    *v99 = v100;
    OUTLINED_FUNCTION_8_23(v99);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v101, v102, v103, v104, v105, v106);
  }

  else if (v81 == enum case for ContactResolutionPatternID.detailedDisambiguationMixedLabelsNoWindowing(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 368) = v107;
    *v107 = v108;
    OUTLINED_FUNCTION_8_23(v107);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v109, v110, v111, v112, v113, v114);
  }

  else if (v81 == enum case for ContactResolutionPatternID.detailedDisambiguationMultipleHandlesSameLabelNoWindowing(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 336) = v115;
    *v115 = v116;
    OUTLINED_FUNCTION_8_23(v115);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v117, v118, v119, v120, v121, v122);
  }

  else
  {
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v124))
    {
      v125 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v125);
      OUTLINED_FUNCTION_14_1(&dword_0, v126, v127, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: chose ContactResolutionPattern that is not supported");
      OUTLINED_FUNCTION_12_3();
    }

    v128 = *(v22 + 296);
    v158 = *(v22 + 288);
    v160 = *(v22 + 304);
    v156 = *(v22 + 264);
    v129 = *(v22 + 216);
    v161 = *(v22 + 224);
    v130 = *(v22 + 200);
    v131 = *(v22 + 208);
    v132 = *(v22 + 192);

    _StringGuts.grow(_:)(23);
    *(v22 + 96) = 0;
    *(v22 + 104) = 0xE000000000000000;
    v133._object = 0x8000000000458C50;
    v133._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v133);
    _print_unlocked<A, B>(_:_:)();
    v134 = *(v22 + 104);
    *v130 = *(v22 + 96);
    v130[1] = v134;
    v130[2] = 0xD000000000000055;
    v130[3] = 0x8000000000458C70;
    v130[4] = 0xD00000000000009CLL;
    v130[5] = 0x8000000000458CD0;
    v130[6] = 366;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_21();
    lazy protocol witness table accessor for type Input and conformance Input(v135, v136);
    swift_allocError();
    PhoneError.logged()(v137);
    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v130, v138);
    swift_willThrow();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v156, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    (*(v128 + 8))(v160, v158);
    __swift_destroy_boxed_opaque_existential_1((v22 + 16));
    (*(v129 + 8))(v161, v131);
    v139 = *(v22 + 304);
    v140 = *(v22 + 272);
    v141 = *(v22 + 280);
    v143 = *(v22 + 256);
    v142 = *(v22 + 264);
    v145 = *(v22 + 240);
    v144 = *(v22 + 248);
    v146 = *(v22 + 224);
    v147 = *(v22 + 200);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_5();

    return v149(v148, v149, v150, v151, v152, v153, v154, v155, a9, a10, a11, v156, v158, v160, v161, v162, 0, 0xE000000000000000, a19, a20, a21, a22);
  }
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v16 = v14[38];
  v15 = v14[39];
  v17 = v14[36];
  v18 = v14[37];
  v20 = v14[34];
  v19 = v14[35];
  v22 = v14[32];
  v21 = v14[33];
  v24 = v14[30];
  v23 = v14[31];
  v37 = v14[28];
  v38 = v14[25];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v25 = *(v18 + 8);
  v26 = OUTLINED_FUNCTION_0();
  v27(v26);
  __swift_destroy_boxed_opaque_existential_1(v14 + 2);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_15_11();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  v16 = *(v13 + 328);
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  v16 = *(v13 + 344);
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  v16 = *(v13 + 360);
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  v16 = *(v13 + 376);
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  v16 = *(v13 + 392);
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating simple disambiguation for unique labels by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = *(v0 + 32);

  OUTLINED_FUNCTION_28_10();
  v8 = async function pointer to dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_4_15(v9);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)(v11);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating detailed disambiguation for multiple handles with the same label by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = *(v0 + 32);

  OUTLINED_FUNCTION_28_10();
  v8 = async function pointer to dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_4_15(v9);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)(v11);
}