BOOL protocol witness for static Player._Command.isAvailable(in:) in conformance Player.FavoriteCommand(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [a1 tracklist];
  v6 = [v5 playingItem];

  v7 = [v6 *a4];
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  return v7 != 0;
}

BOOL static Player.ChangeCommand.isAvailable(in:)(void *a1, SEL *a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 *a2];

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  return v4 != 0;
}

id Player.VocalsCommand.request(from:)(void *a1, uint64_t a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 vocalsControlCommand];

  if (!v4)
  {
    return 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    v6 = [v4 activateVocalsControl:0];
  }

  else if ((a2 & 0x100000000) != 0)
  {
    v6 = [v4 activateVocalsControl:1];
  }

  else
  {
    LODWORD(v5) = a2;
    v6 = [v4 setVocalsLevel:v5];
  }

  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

uint64_t static Player.VocalsCommand.localizedDisablementMessage(for:)()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Player.VocalsCommand.description.getter(uint64_t a1)
{
  strcpy(v8, "VocalCommand(");
  HIWORD(v8[1]) = -4864;
  if ((a1 & 0x10000000000) != 0)
  {
    v4 = 6710895;
    v5 = 0xE300000000000000;
LABEL_6:
    String.append(_:)(*&v4);
    goto LABEL_7;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v4 = 28271;
    v5 = 0xE200000000000000;
    goto LABEL_6;
  }

  v1._countAndFlagsBits = 2649711;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  Float.write<A>(to:)();
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

LABEL_7:
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v8[0];
}

uint64_t static Player.VocalsCommand.Prepare.isAvailable(in:)(void *a1)
{
  v2 = [a1 tracklist];
  v3 = [v2 prepareVocalsControlCommand];

  if (!v3)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  v4 = [a1 tracklist];
  v5 = [v4 vocalsControlCommand];

  if (v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

id Player.VocalsCommand.Prepare.request(from:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 prepareVocalsControlCommand];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 prepare];
  swift_unknownObjectRelease();
  return v3;
}

BOOL static Player.VocalsCommand.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x10000000000) != 0)
  {
    return (a2 & 0x10000000000) != 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return (a2 & 0x100000000) != 0;
  }

  return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Player.VocalsCommand(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    return (*(a2 + 5) & 1) != 0;
  }

  if (*(a2 + 5))
  {
    return 0;
  }

  v3 = *a2 | (*(a2 + 4) << 32);
  v4 = *a1;
  if (((v4 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((v3 & 0x100000000) == 0 && *&v4 == *a2)
  {
    return 1;
  }

  return 0;
}

BOOL protocol witness for static Player._Command.isAvailable(in:) in conformance Player.ChangeCommand(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [a1 tracklist];
  v6 = [v5 *a4];

  if (v6)
  {
    swift_unknownObjectRelease();
  }

  return v6 != 0;
}

Swift::Bool __swiftcall MPCPlayerResponse.canPerform(any:)(Swift::OpaquePointer any)
{
  v2 = specialized _arrayConditionalCast<A, B>(_:)(any._rawValue);
  if (!v2)
  {
    v10 = 0;
LABEL_11:
    LOBYTE(v2) = v10;
    return v2;
  }

  v3 = v2;
  v4 = v2[2];
  if (!v4)
  {
LABEL_7:

    v10 = 0;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
LABEL_10:
    outlined destroy of Player._Command?(v16);
    goto LABEL_11;
  }

  v5 = 0;
  v6 = (v2 + 4);
  while (v5 < v3[2])
  {
    outlined init with copy of ActionPerforming(v6, &v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_0Tm(&v13, v14);
    v9 = (*(v8 + 24))(v1, v7, v8);
    if (v9)
    {
      v11 = v9;

      outlined init with take of ActionPerforming(&v13, v16);
      v10 = 1;
      goto LABEL_10;
    }

    ++v5;
    LOBYTE(v2) = __swift_destroy_boxed_opaque_existential_0Tm(&v13);
    v6 += 40;
    if (v4 == v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return v2;
}

id *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of ActionPerforming(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC8_Command_pMd);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      outlined init with take of ActionPerforming(v8, v11);
      outlined init with take of ActionPerforming(v11, v10);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = (v6 + 1);
      outlined init with take of ActionPerforming(v10, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined destroy of Player._Command?(v8);
    return 0;
  }

  return v3;
}

Swift::Bool __swiftcall MPCPlayerResponse.canPerform(all:)(Swift::OpaquePointer all)
{
  v2 = specialized _arrayConditionalCast<A, B>(_:)(all._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = v2[2];
    if (v4)
    {
      v5 = 0;
      v6 = (v2 + 4);
      while (v5 < v3[2])
      {
        outlined init with copy of ActionPerforming(v6, v11);
        v7 = v12;
        v8 = v13;
        __swift_project_boxed_opaque_existential_0Tm(v11, v12);
        v9 = (*(v8 + 24))(v1, v7, v8);
        if (!v9)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          LOBYTE(v2) = 0;
          return v2;
        }

        ++v5;

        LOBYTE(v2) = __swift_destroy_boxed_opaque_existential_0Tm(v11);
        v6 += 40;
        if (v4 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

uint64_t MPCPlayerResponse.perform(_:issuance:options:)()
{
  v1 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  *(inited + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(v1, inited + 32);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = MPCPlayerResponse.perform(_:issuance:options:);
  v4 = *(v0 + 104);
  v5 = *(v0 + 152);
  v6 = *(v0 + 96);

  return specialized MPCPlayerResponse.perform(_:issuance:options:)(inited, v6, v4, v5);
}

{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 136) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v1 = *(v0 + 120);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 32);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #3 in MPCPlayerResponse.perform(_:issuance:options:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  v7 = [v5 error];

  if (v7)
  {
    lazy protocol witness table accessor for type Player.PlaybackError and conformance Player.PlaybackError();
    v8 = swift_allocError();
    *v9 = v7;
    v9[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    swift_allocError();
    *v10 = v8;

    return swift_continuation_throwingResumeWithError();
  }

LABEL_11:
  **(*(a2 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [MPCPlayerCommandStatus]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerCommandStatus);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

id Artwork.Placeholder.background.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id MPCPlayerResponse.isPlayingItemFavorited.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 likeCommand];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t outlined destroy of Player._Command?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC8_Command_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Player.CommandIssuance()
{
  result = type metadata singleton initialization cache for Player.CommandIssuance;
  if (!type metadata singleton initialization cache for Player.CommandIssuance)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static Player.ChangeCommand.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return !a2;
      case 1:
        return a2 == 1;
      case 2:
        return a2 == 2;
    }

LABEL_16:
    if (a2 >= 6)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    goto LABEL_16;
  }

  return a2 == 4;
}

uint64_t specialized static Player.CommandOptions.__derived_struct_equals(_:_:)(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6)
{
  result = 0;
  if (a1 == a4 && ((a2 ^ a5) & 1) == 0)
  {
    if (a3)
    {
      if (a6)
      {
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPAVRoute);
        v10 = a6;
        v11 = a3;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static Player.CommandIssuance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)())
  {
    v4 = *(type metadata accessor for Player.CommandIssuance() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized MPCPlayerResponse.perform(_:issuance:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 352) = a4;
  *(v5 + 304) = a3;
  *(v5 + 312) = v4;
  *(v5 + 288) = a1;
  *(v5 + 296) = a2;
  return _swift_task_switch(specialized MPCPlayerResponse.perform(_:issuance:options:), 0, 0);
}

uint64_t specialized MPCPlayerResponse.perform(_:issuance:options:)()
{
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  v46 = v2;
  if (v2)
  {
    v3 = v1 + 32;
    v4 = &_s9MusicCore6PlayerC7Command_pMd;
    do
    {
      outlined init with copy of ActionPerforming(v3, v0 + 144);
      outlined init with copy of ActionPerforming(v0 + 144, v0 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC8_Command_pMd);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 312);
        v6 = v4;
        v7 = *(v0 + 232);
        v8 = *(v0 + 240);
        __swift_project_boxed_opaque_existential_0Tm((v0 + 208), v7);
        v9 = v7;
        v4 = v6;
        v10 = (*(v8 + 24))(v5, v9, v8);
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 144);
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 208);
        if (v10)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v4 = v6;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      else
      {
        *(v0 + 240) = 0;
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 144);
        outlined destroy of Player._Command?(v0 + 208);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_29;
  }

  v11 = v46;
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) != v46)
  {
LABEL_35:

    lazy protocol witness table accessor for type Player.CommandError and conformance Player.CommandError();
    swift_allocError();
    v45 = v31;
    if (!v11)
    {
LABEL_50:
      *v45 = _swiftEmptyArrayStorage;
      *(v45 + 40) = 1;
      swift_willThrow();
      v40 = *(v0 + 8);

      return v40();
    }

    v32 = *(v0 + 288) + 32;
    while (1)
    {
      outlined init with copy of ActionPerforming(v32, v0 + 144);
      outlined init with copy of ActionPerforming(v0 + 144, v0 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC8_Command_pMd);
      if (!swift_dynamicCast())
      {
        break;
      }

      v33 = *(v0 + 312);
      v34 = *(v0 + 232);
      v35 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 208), v34);
      v36 = (*(v35 + 24))(v33, v34, v35);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 208);
      if (!v36)
      {
        goto LABEL_42;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 144);
LABEL_39:
      v32 += 40;
      if (!--v46)
      {
        goto LABEL_50;
      }
    }

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    outlined destroy of Player._Command?(v0 + 208);
LABEL_42:
    outlined init with take of ActionPerforming((v0 + 144), v0 + 208);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v38 = _swiftEmptyArrayStorage[2];
    v37 = _swiftEmptyArrayStorage[3];
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = (v38 + 1);
    outlined init with take of ActionPerforming((v0 + 208), &_swiftEmptyArrayStorage[5 * v38 + 4]);
    goto LABEL_39;
  }

  if (v46)
  {
    do
    {
      v12 = 0;
      v42 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
      v43 = v11;
      v44 = kMRMediaRemoteOptionCommandID;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v13 = _swiftEmptyArrayStorage[v12 + 4];
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        UUID.uuidString.getter();
        if (v46 < 2)
        {
          v18 = 0;
          v19 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 144) = v12;
          v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v16);

          v17._countAndFlagsBits = 93;
          v17._object = 0xE100000000000000;
          String.append(_:)(v17);
          v18 = 23341;
          v19 = 0xE200000000000000;
        }

        v20._countAndFlagsBits = v18;
        v20._object = v19;
        String.append(_:)(v20);

        v21 = String._bridgeToObjectiveC()();

        if (!v44)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          return _swift_continuation_await(v22);
        }

        v23 = *(v0 + 296);
        [v14 setCommandOptionValue:v21 forKey:v44];

        if (*(v23 + *(type metadata accessor for Player.CommandIssuance() + 20) + 8))
        {
          v22 = String._bridgeToObjectiveC()();
          if (!v42)
          {
            goto LABEL_54;
          }

          v24 = v22;
          v25 = v42;
          [v14 setCommandOptionValue:v24 forKey:v25];
        }

        ++v12;
        if (v15 == v43)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v11 = v46;
      if (_CocoaArrayWrapper.endIndex.getter() != v46)
      {
        goto LABEL_35;
      }

      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    while (v11);
  }

LABEL_31:
  v26 = *(v0 + 352);
  v27 = *(v0 + 304);
  v28 = objc_allocWithZone(MPCPlayerChangeRequest);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerCommandRequest);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v30 = [v28 initWithCommandRequests:isa];
  *(v0 + 320) = v30;

  [v30 setOptions:v27];
  if (v26 != 1)
  {
    *(v0 + 16) = v0;
    *(v0 + 24) = specialized MPCPlayerResponse.perform(_:issuance:options:);
    v39 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 168) = &block_descriptor_133_1;
    *(v0 + 176) = v39;
    [v30 performWithCompletion:v0 + 144];
    v22 = v0 + 16;

    return _swift_continuation_await(v22);
  }

  return _swift_task_switch(specialized MPCPlayerResponse.perform(_:issuance:options:), 0, 0);
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 10;
  v5 = v0 + 26;
  v6 = v0[40];
  v1[10] = v2;
  v1[15] = v5;
  v1[11] = specialized MPCPlayerResponse.perform(_:issuance:options:);
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[22] = partial apply for closure #1 in closure #3 in MPCPlayerResponse.perform(_:issuance:options:);
  v1[23] = v8;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [MPCPlayerCommandStatus]) -> ();
  v1[21] = &block_descriptor_138;
  v9 = _Block_copy(v3);

  [v6 performWithExtendedStatusCompletion:v9];
  _Block_release(v9);

  return _swift_continuation_await(v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 328) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = specialized MPCPlayerResponse.perform(_:issuance:options:);
  }

  else
  {
    *(v1 + 336) = *(v1 + 208);
    v3 = specialized MPCPlayerResponse.perform(_:issuance:options:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = specialized MPCPlayerResponse.perform(_:issuance:options:);
  }

  else
  {
    v2 = specialized MPCPlayerResponse.perform(_:issuance:options:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1(&_swiftEmptyArrayStorage);
}

{
  v1 = *(v0 + 320);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Player.PlaybackCommand and conformance Player.PlaybackCommand()
{
  result = lazy protocol witness table cache variable for type Player.PlaybackCommand and conformance Player.PlaybackCommand;
  if (!lazy protocol witness table cache variable for type Player.PlaybackCommand and conformance Player.PlaybackCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.PlaybackCommand and conformance Player.PlaybackCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Player.ShuffleCommand and conformance Player.ShuffleCommand()
{
  result = lazy protocol witness table cache variable for type Player.ShuffleCommand and conformance Player.ShuffleCommand;
  if (!lazy protocol witness table cache variable for type Player.ShuffleCommand and conformance Player.ShuffleCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.ShuffleCommand and conformance Player.ShuffleCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Player.FavoriteCommand and conformance Player.FavoriteCommand()
{
  result = lazy protocol witness table cache variable for type Player.FavoriteCommand and conformance Player.FavoriteCommand;
  if (!lazy protocol witness table cache variable for type Player.FavoriteCommand and conformance Player.FavoriteCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.FavoriteCommand and conformance Player.FavoriteCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Player.RepeatCommand and conformance Player.RepeatCommand()
{
  result = lazy protocol witness table cache variable for type Player.RepeatCommand and conformance Player.RepeatCommand;
  if (!lazy protocol witness table cache variable for type Player.RepeatCommand and conformance Player.RepeatCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.RepeatCommand and conformance Player.RepeatCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Player.QueueEndCommand and conformance Player.QueueEndCommand()
{
  result = lazy protocol witness table cache variable for type Player.QueueEndCommand and conformance Player.QueueEndCommand;
  if (!lazy protocol witness table cache variable for type Player.QueueEndCommand and conformance Player.QueueEndCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.QueueEndCommand and conformance Player.QueueEndCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Player.InsertCommand.Location and conformance Player.InsertCommand.Location()
{
  result = lazy protocol witness table cache variable for type Player.InsertCommand.Location and conformance Player.InsertCommand.Location;
  if (!lazy protocol witness table cache variable for type Player.InsertCommand.Location and conformance Player.InsertCommand.Location)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.InsertCommand.Location and conformance Player.InsertCommand.Location);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Player.ClearCommand and conformance Player.ClearCommand()
{
  result = lazy protocol witness table cache variable for type Player.ClearCommand and conformance Player.ClearCommand;
  if (!lazy protocol witness table cache variable for type Player.ClearCommand and conformance Player.ClearCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.ClearCommand and conformance Player.ClearCommand);
  }

  return result;
}

uint64_t sub_100219DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_100219EA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void type metadata completion function for Player.CommandIssuance()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Player.ChangeCommand(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Player.ChangeCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Player.InsertCommand.Location(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Player.InsertCommand.Location(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Player.MoveCommand(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for Player.MoveCommand(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Player.VocalsCommand(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Player.VocalsCommand(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 6) = v3;
  return result;
}

uint64_t getEnumTag for Player.VocalsCommand(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Player.VocalsCommand(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC12CommandErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t SampleReceiver.waveforms()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySaySfG__GMd);
  __chkstk_darwin(v0);
  *(&v4 - v1) = 1;
  (*(v2 + 104))(&v4 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in SampleReceiver.waveforms()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = SampleReceiver.continuations.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v9;
  (*(v3 + 32))(&v12[v11], v5, v2);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in SampleReceiver.waveforms(), v12);
}

uint64_t closure #1 in closure #1 in SampleReceiver.waveforms()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GSgMd);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in SampleReceiver.waveforms(), a4, 0);
}

uint64_t closure #1 in closure #1 in SampleReceiver.waveforms()()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  UUID.init()();
  v7 = *(v4 + 16);
  v0[13] = v7;
  v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd);
  v0[15] = v8;
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v6, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v2);
  swift_endAccess();
  SampleReceiver.ContinuationStorage.continuations.didset();

  return _swift_task_switch(closure #1 in closure #1 in SampleReceiver.waveforms(), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  (*(v0 + 104))(v2, v1, v3);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v4 + 32))(v7 + v6, v2, v3);

  AsyncStream.Continuation.onTermination.setter();
  (*(v4 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms(), v13);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GSgMd);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms(), a4, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms()()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(v2, v1);
  outlined destroy of TaskPriority?(v1, &_sScS12ContinuationVySaySfG_GSgMd);
  swift_endAccess();
  SampleReceiver.ContinuationStorage.continuations.didset();

  v3 = v0[1];

  return v3();
}

void *SampleReceiver.continuations.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = SampleReceiver.tapDelegate.getter();
    v3 = *(SampleReceiver.sampleProcessor.getter() + 104);

    type metadata accessor for SampleReceiver.ContinuationStorage();
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    v1[16] = _swiftEmptyDictionarySingleton;
    v1[17] = 0;
    v1[14] = v2;
    v1[15] = v3;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t SampleReceiver.ContinuationStorage.yield(_:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySaySfG__GMd);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(SampleReceiver.ContinuationStorage.yield(_:), v1, 0);
}

uint64_t SampleReceiver.ContinuationStorage.yield(_:)()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  swift_beginAccess();
  v26 = v3;
  v4 = *(v3 + 128);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;
  v27 = v1;
  v28 = v4;
  v24 = (v2 + 8);
  v25 = (v1 + 8);

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[11];
      (*(v27 + 16))(v13, *(v28 + 56) + *(v27 + 72) * (__clz(__rbit64(v8)) | (v12 << 6)), v15);
      (*(v27 + 32))(v14, v13, v15);
      v16 = *(v26 + 136);
      if (!v16)
      {
        (*v25)(v0[13], v0[11]);
        goto LABEL_13;
      }

      v17 = v16;
      v18 = [v17 isEnabled];
      v19 = v0[13];
      v20 = v0[11];
      if ((v18 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v21 = v0[10];
      v22 = v0[8];
      v0[5] = v0[6];

      AsyncStream.Continuation.yield(_:)();

      (*v24)(v21, v22);
      result = (*v25)(v19, v20);
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    (*v25)(v0[13], v0[11]);

LABEL_14:

    v23 = v0[1];

    return v23();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void SampleReceiver.ContinuationStorage.continuations.didset()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0[16] + 16);
  if (one-time initialization token for sampleReceiver != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.sampleReceiver);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1[16] + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "SampleReceiver continuation count %ld", v6, 0xCu);

    v7 = v1[17];
    if (v2)
    {
LABEL_5:
      if (v7)
      {
        v8 = v7;
        v9 = v7;
      }

      else
      {
        v14 = [objc_allocWithZone(NSNumber) initWithInteger:v1[15]];
        v9 = [objc_allocWithZone(MPCProcessAudioTap) initWithRefreshRate:v14 delegate:v1[14]];

        v8 = 0;
        v7 = v1[17];
      }

      v1[17] = v9;
      v13 = v9;
      v15 = v8;
      SampleReceiver.ContinuationStorage.audioTap.didset(v7);

      [v13 setEnabled:1];
      [v13 start];
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "SampleReceiver audio tap active", v18, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {

    v7 = v1[17];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  [v7 stop];
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SampleReceiver audio tap inactive", v12, 2u);
  }

  v13 = v1[17];
  v1[17] = 0;
  SampleReceiver.ContinuationStorage.audioTap.didset(v13);
LABEL_15:
}

void SampleReceiver.ContinuationStorage.audioTap.didset(void *a1)
{
  v3 = *(v1 + 136);
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_11;
  }

  if (a1)
  {
    v4 = v1;
    type metadata accessor for MPCProcessAudioTap();
    v5 = v3;
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    v3 = *(v4 + 136);
    if (!v3)
    {
LABEL_11:
      v17 = one-time initialization token for sampleReceiver;
      v18 = v6;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.sampleReceiver);
      v11 = v18;
      oslog = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(oslog, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = a1;
      v15 = v11;
      v16 = "Audio tap destroyed: %@";
      goto LABEL_15;
    }
  }

  v8 = one-time initialization token for sampleReceiver;
  v9 = v3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sampleReceiver);
  v11 = v9;
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(oslog, v12))
  {
    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 138412290;
  *(v13 + 4) = v11;
  *v14 = v3;
  v15 = v11;
  v16 = "Audio tap created: %@";
LABEL_15:
  _os_log_impl(&_mh_execute_header, oslog, v12, v16, v13, 0xCu);
  outlined destroy of TaskPriority?(v14, &_sSo8NSObjectCSgMd_0);

  v11 = oslog;
  oslog = v15;
LABEL_16:
}

uint64_t SampleReceiver.ContinuationStorage.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t closure #1 in SampleReceiver.receive(samples:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(closure #1 in SampleReceiver.receive(samples:count:), 0, 0);
}

uint64_t closure #1 in SampleReceiver.receive(samples:count:)()
{
  v0[4] = SampleReceiver.continuations.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = closure #1 in SampleReceiver.receive(samples:count:);
  v2 = v0[3];

  return SampleReceiver.ContinuationStorage.yield(_:)(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SampleReceiver.sampleProcessor.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    type metadata accessor for SampleReceiver.SampleTransformer();
    v1 = swift_allocObject();
    SampleReceiver.SampleTransformer.init(sampleRate:refreshRate:)(48000, 15);
    *(v2 + 24) = v1;
  }

  return v1;
}

id SampleReceiver.tapDelegate.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = type metadata accessor for SampleReceiver.TapDelegate();
    v4 = objc_allocWithZone(v3);
    swift_weakInit();
    swift_weakAssign();
    v9.receiver = v4;
    v9.super_class = v3;
    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 32);
    *(v0 + 32) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t SampleReceiver.TapDelegate.processAudioTapDidReceiveAudioSamples(_:numberOfSamples:)(float *a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3)
    {
      v33 = result;
      v9 = SampleReceiver.sampleProcessor.getter();
      swift_beginAccess();
      v10 = *(v9 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 24) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        *(v9 + 24) = v10;
      }

      swift_beginAccess();
      v12 = *(v9 + 32);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 32) = v12;
      if ((v13 & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
        *(v9 + 32) = v12;
      }

      swift_beginAccess();
      v14 = *(v9 + 40);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 40) = v14;
      if ((v15 & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        *(v9 + 40) = v14;
      }

      swift_beginAccess();
      v16 = *(v9 + 48);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 48) = v16;
      if ((v17 & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        *(v9 + 48) = v16;
      }

      v18 = *(v9 + 72);
      __Z.realp = (v10 + 4);
      __Z.imagp = (v12 + 4);
      if (v18 >= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v18;
      }

      v35.realp = (v14 + 4);
      v35.imagp = (v16 + 4);
      if (v18 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v18)
        {
          v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v19[2] = v18;
        }

        else
        {
          v19 = _swiftEmptyArrayStorage;
        }

        __B = 0;
        v37[0] = v19 + 4;
        v37[1] = v18;
        v20 = a1;
        a1 = 0;
        closure #1 in closure #1 in closure #1 in SampleReceiver.SampleTransformer.computeFFT(_:numberOfSamples:)(v37, &__B, v20, v3, v9);
        if (v18 >= __B)
        {
          v19[2] = __B;
          v3 = *(v9 + 80);
          swift_beginAccess();
          _s10Accelerate4vDSPO8multiply__6resultyx_q_q0_ztAA0A6BufferRzAaFR_AA0a7MutableE0R0_Sf7ElementRtzSfAHRt_SfAHRt0_r1_lFZSaySfG_A2LTt2g5(v19, v3, (v9 + 16));
          swift_endAccess();

          v21 = *(v9 + 16);
          v22 = *(v21 + 16);
          if (!(v22 >> 61))
          {
            v32 = v10;
            if (v22 >= 2)
            {
              v24 = v22 >> 1;
              v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10DSPComplexV_Tt1g5(v22 >> 1, 0);
              memcpy(v23 + 4, (v21 + 32), 8 * v24);
            }

            else
            {
              v23 = _swiftEmptyArrayStorage;
            }

            v25 = v23[2];

            vDSP_ctoz(v23 + 4, 2, &__Z, 1, v25);

            dispatch thunk of vDSP.FFT.forward(input:output:)();

            v26 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g50100_s9MusicCore14SampleReceiverC0C11TransformerC10computeFFT_15numberOfSamplesSaySfGSv_s6UInt32VtFAHSpyt15G_A3KtXEfU_ySryT13Gz_SiztXEfU1_0G4Core0iJ0C0iM0CSo15DSPSplitComplexVTf1nc_nTf4ngn_n(v18, v9, &v35);

            v37[0] = v26;

            _s10Accelerate6vForceO4sqrt_6resultyx_q_ztAA0A6BufferRzAA0a7MutableE0R_Sf7ElementRtzSfAHRt_r0_lFZSaySfG_AKTt1g5(v27, v37);

            v2 = *(v9 + 64);
            a1 = v37[0];
            v3 = *(v37[0] + 2);

            v28 = a1;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          v28 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
LABEL_27:
          LODWORD(__B) = v2;
          vDSP_vsmul(a1 + 8, 1, &__B, v28 + 8, 1, v3);

          *(v9 + 48) = v16;
          swift_endAccess();
          *(v9 + 40) = v14;
          swift_endAccess();
          *(v9 + 32) = v12;
          swift_endAccess();
          *(v9 + 24) = v32;
          swift_endAccess();

          v29 = type metadata accessor for TaskPriority();
          (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
          v30 = swift_allocObject();
          v30[2] = 0;
          v30[3] = 0;
          v30[4] = v33;
          v30[5] = v28;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v7, &async function pointer to partial apply for closure #1 in SampleReceiver.receive(samples:count:), v30);
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  return result;
}

id SampleReceiver.TapDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleReceiver.TapDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SampleReceiver.SampleTransformer.init(sampleRate:refreshRate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for vDSP.Radix();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for vDSP.WindowSequence();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v14 = log2f(ceilf(a1 / a2));
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v14 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 1.8447e19)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 >= 0x40)
  {
    v15 = 0;
  }

  else
  {
    v15 = (1 << v14) / 2;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v33 = v7;
  if (v15)
  {
    v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v32 = v6;
    v17 = v9;
    v18 = v16;
    *(v16 + 16) = v15;
    bzero((v16 + 32), 4 * v15);
    *(v3 + 16) = v18;
    v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v19 + 16) = v15;
    bzero((v19 + 32), 4 * v15);
    *(v3 + 24) = v19;
    v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v20 + 16) = v15;
    bzero((v20 + 32), 4 * v15);
    *(v3 + 32) = v20;
    v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v21 + 16) = v15;
    bzero((v21 + 32), 4 * v15);
    *(v3 + 40) = v21;
    v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v22 + 16) = v15;
    bzero((v22 + 32), 4 * v15);
    *(v3 + 48) = v22;
    v9 = v17;
    v6 = v32;
    v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v23[2] = v15;
    bzero(v23 + 4, 4 * v15);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    *(v3 + 16) = _swiftEmptyArrayStorage;
    *(v3 + 24) = _swiftEmptyArrayStorage;
    *(v3 + 32) = _swiftEmptyArrayStorage;
    *(v3 + 40) = _swiftEmptyArrayStorage;
    *(v3 + 48) = _swiftEmptyArrayStorage;
  }

  *(v3 + 56) = v23;
  *(v3 + 64) = 2.0 / v15;
  v24 = (*(v11 + 104))(v13, enum case for vDSP.WindowSequence.hanningDenormalized(_:), v10);
  if (!v15)
  {
    goto LABEL_18;
  }

  __chkstk_darwin(v24);
  *(&v31 - 4) = v13;
  *(&v31 - 24) = 0;
  v29 = v15;
  v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v15, partial apply for closure #1 in static vDSP.window<A>(ofType:usingSequence:count:isHalfWindow:));
  v26 = specialized _arrayForceCast<A, B>(_:)(v25);

  (*(v11 + 8))(v13, v10);
  *(v3 + 72) = v15;
  *(v3 + 80) = v26;
  (*(v33 + 104))(v9, enum case for vDSP.Radix.radix2(_:), v6);
  type metadata accessor for DSPSplitComplex(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate4vDSPO3FFTCy_So15DSPSplitComplexVGMd);
  swift_allocObject();
  v27 = vDSP.FFT.init(log2n:radix:ofType:)();
  if (v27)
  {
    *(v3 + 88) = v27;
    return v3;
  }

LABEL_19:
  v30 = 0;
  v29 = 177;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in SampleReceiver.SampleTransformer.computeFFT(_:numberOfSamples:)(void **a1, void *a2, void *__src, char *a4, uint64_t a5)
{
  v7 = 0;
  v8 = *a1;
  if (a4)
  {
    v9 = a1[1];
    if (v9)
    {
      if (v9 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = a1[1];
      }

      memcpy(*a1, __src, 4 * v7);
    }
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = *(a5 + 72);
  v11 = __OFSUB__(v10, v7);
  v12 = v10 - v7;
  if (v11)
  {
    __break(1u);
  }

  else if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      bzero(&v8[4 * v7], 4 * v12);
    }

LABEL_12:
    *a2 = *(a5 + 72);
    return;
  }

  __break(1u);
}

void _s10Accelerate4vDSPO8multiply__6resultyx_q_q0_ztAA0A6BufferRzAaFR_AA0a7MutableE0R0_Sf7ElementRtzSfAHRt_SfAHRt0_r1_lFZSaySfG_A2LTt2g5(uint64_t a1, uint64_t a2, id **a3)
{
  v6 = *a3;
  v7 = (*a3)[2];
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  vDSP_vmul((v5 + 32), 1, (v4 + 32), 1, v6 + 8, 1, v7);
  *v3 = v6;
}

void _s10Accelerate6vForceO4sqrt_6resultyx_q_ztAA0A6BufferRzAA0a7MutableE0R_Sf7ElementRtzSfAHRt_r0_lFZSaySfG_AKTt1g5(uint64_t a1, id **a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  if (v4 != (*a2)[2])
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >> 31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = a2;
  v3 = a1;
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  vvsqrtf(v5 + 8, (v3 + 32), &v6);
  *v2 = v5;
}

uint64_t SampleReceiver.SampleTransformer.deinit()
{

  return v0;
}

uint64_t SampleReceiver.SampleTransformer.__deallocating_deinit()
{
  SampleReceiver.SampleTransformer.deinit();

  return swift_deallocClassInstance();
}

uint64_t SampleReceiver.deinit()
{

  return v0;
}

uint64_t SampleReceiver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for sampleReceiver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sampleReceiver);
  __swift_project_value_buffer(v0, static Logger.sampleReceiver);
  return Logger.init(subsystem:category:)();
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(uint64_t result, uint64_t (*a2)(void *, void **))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5[2] = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5 + 4;
  v8 = 0;
  v7[0] = v5 + 4;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        v5[2] = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      v5[2] = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

id *_sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g50100_s9MusicCore14SampleReceiverC0C11TransformerC10computeFFT_15numberOfSamplesSaySfGSv_s6UInt32VtFAHSpyt15G_A3KtXEfU_ySryT13Gz_SiztXEfU1_0G4Core0iJ0C0iM0CSo15DSPSplitComplexVTf1nc_nTf4ngn_n(int64_t a1, uint64_t a2, DSPSplitComplex *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v6[2] = a1;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = *(a2 + 72);
  v9 = *a3;
  vDSP_zvmags(&v9, 1, v6 + 8, 1, a1);
  if (v7 > a1)
  {
LABEL_8:
    __break(1u);
  }

  v6[2] = v7;
  return v6;
}

uint64_t sub_10021CC3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SampleReceiver.receive(samples:count:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in SampleReceiver.receive(samples:count:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in static vDSP.window<A>(ofType:usingSequence:count:isHalfWindow:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>();
  result = static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)();
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>;
  if (!lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSrySfGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>);
  }

  return result;
}

uint64_t sub_10021CE30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SampleReceiver.waveforms()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in SampleReceiver.waveforms()(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10021D00C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms()(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms()(a1, v4, v5);
}

uint64_t sub_10021D144()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms()(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in closure #1 in SampleReceiver.waveforms()(a1, v6, v7, v8, v1 + v5);
}

unint64_t type metadata accessor for MPCProcessAudioTap()
{
  result = lazy cache variable for type metadata for MPCProcessAudioTap;
  if (!lazy cache variable for type metadata for MPCProcessAudioTap)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MPCProcessAudioTap);
  }

  return result;
}

uint64_t SequentialVocalCommandsFilter.__allocating_init(playbackController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 124) = 0;
  *(v2 + 120) = 0;
  *(v2 + 126) = 1;
  *(v2 + 132) = 0;
  *(v2 + 128) = 0;
  *(v2 + 134) = 1;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t SequentialVocalCommandsFilter.init(playbackController:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 124) = 0;
  *(v1 + 120) = 0;
  *(v1 + 126) = 1;
  *(v1 + 132) = 0;
  *(v1 + 128) = 0;
  *(v1 + 134) = 1;
  *(v1 + 112) = a1;
  return v1;
}

void SequentialVocalCommandsFilter.append(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for vocalCommandsFilter != -1)
  {
    swift_once();
  }

  v4 = a1 & 0xFFFFFFFFFFLL;
  v5 = a1 & 0x10000000000;
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.vocalCommandsFilter);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v9 = 136446210;
    LOBYTE(v44) = v5 != 0;
    v11 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, v45);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "↪️ Queuing %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);

    v4 = a1 & 0xFFFFFFFFFFLL;
    v5 = a1 & 0x10000000000;
  }

  if (*(v1 + 134))
  {
    goto LABEL_6;
  }

  v22 = *(v1 + 128) | (*(v1 + 132) << 32);
  if (v5)
  {
    if ((v22 & 0x10000000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v22 & 0x10000000000) == 0)
  {
    if ((v4 & 0x100000000) != 0)
    {
      if ((v22 & 0x100000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((v22 & 0x100000000) != 0 || *&a1 != *(v1 + 128))
    {
      goto LABEL_6;
    }

LABEL_14:
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136446210;
      LOBYTE(v44) = v5 != 0;
      v26 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
      v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, v45);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, oslog, v23, "↪️❌ Ignored %{public}s; already executing.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    else
    {
    }

    return;
  }

LABEL_6:
  swift_beginAccess();
  if ((*(v1 + 126) & 1) == 0)
  {
    v14 = *(v1 + 120) | (*(v1 + 124) << 32);
    if ((v14 & 0x10000000000) != 0)
    {
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else if (!v5)
    {
      if ((v14 & 0x100000000) != 0)
      {
        if ((v4 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v4 & 0x100000000) == 0 && *(v1 + 120) == *&a1)
      {
LABEL_9:
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v44 = v18;
          *v17 = 136446210;
          v19 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
          v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, &v44);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "↪️❌ Ignored %{public}s; Already enqueued.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
        }

        return;
      }
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136446210;
      v33 = Player.VocalsCommand.description.getter(v14 & 0xFFFFFFFFFFLL | (((v14 >> 40) & 1) << 40));
      v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v33, v34, &v44);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "↪️🫳 Dropping queued command %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v38 = 136446210;
    v40 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v42 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v40, v41, &v44);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "↪️✅ Queued %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  *(v2 + 120) = a1 | v5;
  *(v2 + 124) = (a1 & 0xFFFFFFFFFFLL | v5) >> 32;
  *(v2 + 126) = 0;
  SequentialVocalCommandsFilter.dequeueCommandIfNeeded()();
}

uint64_t SequentialVocalCommandsFilter.executingCommand.didset(unint64_t a1)
{
  if ((*(v1 + 134) & 1) == 0)
  {
    v12 = *(v1 + 128) | (*(v1 + 132) << 32);
    v13 = swift_beginAccess();
    if ((*(v1 + 126) & 1) == 0)
    {
      v14 = *(v1 + 120) | (*(v1 + 124) << 32);
      if ((v12 & 0x10000000000) == 0)
      {
        if ((v14 & 0x10000000000) != 0)
        {
          goto LABEL_17;
        }

        if ((v12 & 0x100000000) != 0)
        {
          if ((v14 & 0x100000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else if ((v14 & 0x100000000) != 0 || *&v12 != *(v1 + 120))
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      if ((v14 & 0x10000000000) != 0)
      {
LABEL_10:
        *(v1 + 124) = 0;
        *(v1 + 120) = 0;
        *(v1 + 126) = 1;
        SequentialVocalCommandsFilter.dequeueCommandIfNeeded()(v13);
      }
    }

LABEL_17:
    if (one-time initialization token for vocalCommandsFilter != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.vocalCommandsFilter);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v16 = Player.VocalsCommand.description.getter(v12 & 0xFFFFFFFFFFLL | (((v12 >> 40) & 1) << 40));
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v20);

    *(v6 + 4) = v18;
    v11 = "▶️ Executing %{public}s";
    goto LABEL_21;
  }

  if ((a1 & 0x1000000000000) == 0)
  {
    if (one-time initialization token for vocalCommandsFilter != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.vocalCommandsFilter);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136446210;
    v8 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | (((a1 >> 40) & 1) << 40));
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, v21);

    *(v6 + 4) = v10;
    v11 = "✅ Finished executing %{public}s";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v4, v5, v11, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);

LABEL_22:
  }

  return SequentialVocalCommandsFilter.dequeueCommandIfNeeded()(a1);
}

uint64_t SequentialVocalCommandsFilter.dequeueCommandIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  if (*(v0 + 134) == 1)
  {
    result = swift_beginAccess();
    if ((*(v0 + 126) & 1) == 0)
    {
      v6 = *(v0 + 120) | (*(v0 + 124) << 32);
      v7 = v6 & 0xFFFFFFFFFFLL;
      if (one-time initialization token for vocalCommandsFilter != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.vocalCommandsFilter);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = (v6 >> 40) & 1;
      if (os_log_type_enabled(v9, v10))
      {
        v12 = swift_slowAlloc();
        v23 = v6 & 0xFFFFFFFFFFLL;
        v13 = v12;
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136446210;
        v15 = Player.VocalsCommand.description.getter(v6 & 0xFFFFFFFFFFLL | (v11 << 40));
        v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v24);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "↪️ Dequeuing %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);

        v7 = v23;
      }

      v18 = *(v1 + 128) | (*(v1 + 132) << 32);
      v19 = *(v1 + 134);
      *(v1 + 128) = v6;
      *(v1 + 132) = WORD2(v6) & 0x1FF;
      *(v1 + 134) = 0;
      LOBYTE(v24) = v19;
      SequentialVocalCommandsFilter.executingCommand.didset(v18 | (v19 << 48));
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
      v21 = lazy protocol witness table accessor for type SequentialVocalCommandsFilter and conformance SequentialVocalCommandsFilter();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      *(v22 + 24) = v21;
      *(v22 + 32) = v1;
      *(v22 + 44) = BYTE4(v7);
      *(v22 + 40) = v7;
      *(v22 + 45) = v11;
      swift_retain_n();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v5, &async function pointer to partial apply for closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded(), v22);
    }
  }

  return result;
}

uint64_t closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return _swift_task_switch(closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded(), a4, 0);
}

uint64_t closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded()()
{
  v1 = *(v0 + 104);
  *(v0 + 112) = *(*(v0 + 96) + 112);
  *(v0 + 40) = &type metadata for Player.VocalsCommand;
  *(v0 + 48) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 16) = v1;
  *(v0 + 20) = BYTE4(v1);
  *(v0 + 21) = BYTE5(v1) & 1;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = 0x726564696C534156;
  *(v0 + 64) = 0xE800000000000000;
  *(v0 + 120) = type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;

  return _swift_task_switch(closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded(), v3, v2);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
  v1 = swift_allocObject();
  v0[19] = v1;
  *(v1 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 2), v1 + 32);
  v0[20] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded();

  return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 1, 0, 0, (v0 + 7));
}

{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded(), v1, v2);
}

{
  v1 = *(v0 + 176);

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  v2 = *(v0 + 96);
  outlined destroy of Player.CommandIssuer?(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return _swift_task_switch(closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded(), v2, 0);
}

{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded(), v1, v2);
}

{
  v1 = *(v0 + 96);

  return _swift_task_switch(closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded(), v1, 0);
}

{
  outlined destroy of Player.CommandIssuer?(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = *(v0 + 96);
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  SequentialVocalCommandsFilter.executingCommand.didset(v2 | (v3 << 48));
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 96);
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  SequentialVocalCommandsFilter.executingCommand.didset(v2 | (v3 << 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded()(uint64_t a1)
{
  *(*v2 + 176) = a1;

  if (v1)
  {

    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded();
  }

  else
  {
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded();
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t SequentialVocalCommandsFilter.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t one-time initialization function for vocalCommandsFilter()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.vocalCommandsFilter);
  __swift_project_value_buffer(v0, static Logger.vocalCommandsFilter);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10021E780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 120);
  v6 = *(v3 + 126);
  *(a2 + 4) = *(v3 + 124);
  *a2 = v5;
  *(a2 + 6) = v6;
  return result;
}

uint64_t sub_10021E7D8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 6);
  v5 = *a2;
  swift_beginAccess();
  *(v5 + 124) = v3;
  *(v5 + 120) = v2;
  *(v5 + 126) = v4;
  return SequentialVocalCommandsFilter.dequeueCommandIfNeeded()();
}

unint64_t lazy protocol witness table accessor for type SequentialVocalCommandsFilter and conformance SequentialVocalCommandsFilter()
{
  result = lazy protocol witness table cache variable for type SequentialVocalCommandsFilter and conformance SequentialVocalCommandsFilter;
  if (!lazy protocol witness table cache variable for type SequentialVocalCommandsFilter and conformance SequentialVocalCommandsFilter)
  {
    type metadata accessor for SequentialVocalCommandsFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SequentialVocalCommandsFilter and conformance SequentialVocalCommandsFilter);
  }

  return result;
}

uint64_t sub_10021E8B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32) | (*(v1 + 45) << 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in SequentialVocalCommandsFilter.dequeueCommandIfNeeded()(a1, v4, v5, v6, v7);
}

uint64_t outlined destroy of Player.CommandIssuer?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static PlaylistCovers.ArtworkDataSource.shared;
}

__n128 PlaylistCovers.Recipe.init(_:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
  v7 = v6;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v5, v7);
  if (!v3)
  {
    *(a3 + 64) = v13;
    *(a3 + 80) = v14;
    *(a3 + 96) = v15;
    *a3 = v9;
    *(a3 + 16) = v10;
    result = v12;
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
  }

  return result;
}

void PlaylistCovers.Recipe.asCoverRepresentation(_:)(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3 == 3157553 && v3[1] == 0xE300000000000000;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[9];
    v13 = v3[10];
    v14 = specialized static PlaylistCovers.color(from:)(v3[3], v3[4]);
    if (!v14)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_14;
    }

    v15 = specialized static PlaylistCovers.color(from:)(v8, v9);
    if (!v15)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      goto LABEL_16;
    }

    v16 = specialized static PlaylistCovers.color(from:)(v10, v11);
    if (!v16)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_17;
    }

    v17 = specialized static PlaylistCovers.color(from:)(v12, v13);
    if (!v17)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v18 = specialized PlaylistCovers.Expression.init(rawValue:)(v3[2]);
    if (v18 != 8)
    {
      v22 = v18;
      type metadata accessor for UIGraphicsImageRendererFormat();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = v14;
      v27 = v15;
      v24 = v16;
      v28 = v17;
      v25 = [ObjCClassFromMetadata preferredFormat];
      v20 = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v29, v27, v24, v28, v25, v22, a2, a3);
      v21 = v26;

      v19 = v22;
      goto LABEL_19;
    }
  }

  v19 = 0;
  v20 = 0;
  v14 = 0;
LABEL_14:
  v15 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = 0;
LABEL_18:
  v21 = 0;
LABEL_19:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v21;
}

id PlaylistCovers.ArtworkToken.__allocating_init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 6) = *(a1 + 48);
  v10 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, "init");
}

id PlaylistCovers.ArtworkToken.init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v6 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v6 = a2;
  *(v6 + 1) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for PlaylistCovers.ArtworkToken();
  return objc_msgSendSuper2(&v8, "init");
}

id PlaylistCovers.ArtworkToken.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v3 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8);
  v4 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v5 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24);
  v6 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v7 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40);
  v8 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  v10 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v9 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);
  v11 = type metadata accessor for PlaylistCovers.ArtworkToken();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  *v13 = v2;
  *(v13 + 1) = v3;
  *(v13 + 2) = v4;
  *(v13 + 3) = v5;
  *(v13 + 4) = v6;
  *(v13 + 5) = v7;
  *(v13 + 6) = v8;
  v14 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v14 = v10;
  *(v14 + 1) = v9;
  v23.receiver = v12;
  v23.super_class = v11;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  result = objc_msgSendSuper2(&v23, "init");
  a1[3] = v11;
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall PlaylistCovers.ArtworkToken.stringRepresentation()()
{
  v1 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v16[0] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v16[1] = v1;
  v16[2] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v17 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  outlined init with copy of PlaylistCovers.Cover.Representation(v16, &v14);
  v2 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v4 = v3;
  outlined destroy of PlaylistCovers.Cover.Representation(v16);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v14 = 0xD000000000000011;
  v15 = 0x80000001004CD860;
  v5 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v6 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8 = v14;
  v9 = v15;
  v14 = v2;
  v15 = v4;

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v11 = v14;
  v12 = v15;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

id static PlaylistCovers.ArtworkDataSource.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static PlaylistCovers.ArtworkDataSource.shared;

  return v1;
}

id PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(void *a1)
{
  v3 = [a1 token];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    [a1 fittingSize];
    v4 = specialized PlaylistCovers.ArtworkDataSource.cacheIdentifier(for:with:)(v8);
    if (v4)
    {
      v5 = v4;
      v6 = [*(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) objectForKey:v4];

      return v6;
    }
  }

  return 0;
}

uint64_t PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  type metadata accessor for Locale();
  v2[27] = swift_task_alloc();
  v3 = type metadata accessor for String.LocalizationValue();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(PlaylistCovers.ArtworkDataSource.loadRepresentation(for:), 0, 0);
}

uint64_t PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)()
{
  v1 = [*(v0 + 200) token];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (!swift_dynamicCast())
  {
    v10 = *(v0 + 200);
    _StringGuts.grow(_:)(58);
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    v11._countAndFlagsBits = 0x206E656B6F54;
    v11._object = 0xE600000000000000;
    String.append(_:)(v11);
    v12 = [v10 token];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    _print_unlocked<A, B>(_:_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 144);
    v13._object = 0x80000001004CD8A0;
    v13._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v13);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    *v16 = v14;
    v16[1] = v15;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  [v2 fittingSize];
  v5 = v4;
  v7 = v6;
  v8 = PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(v2);
  if (v8)
  {
    v9 = v8;
LABEL_4:

    goto LABEL_28;
  }

  aBlock = (v0 + 16);
  v71 = v3;
  v19 = *(v0 + 200);
  v20 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8];
  v21 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16];
  v22 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24];
  v23 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32];
  v25 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40];
  v24 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48];
  type metadata accessor for UIGraphicsImageRendererFormat();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = v20;
  v65 = v21;
  v66 = v22;
  v67 = v23;
  v68 = v25;
  v27 = v24;
  v28 = [ObjCClassFromMetadata preferredFormat];
  [v19 destinationScale];
  [v28 setScale:?];
  [v19 fittingSize];
  v30 = v29;
  v32 = v31;
  v34 = *&v71[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  v33 = *&v71[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8];

  v35 = String.trim()();

  v36 = (v35._object >> 56) & 0xF;
  if ((v35._object & 0x2000000000000000) == 0)
  {
    v36 = v35._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    goto LABEL_13;
  }

  v38 = *(v0 + 240);
  v37 = *(v0 + 248);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);

  String.LocalizationValue.init(stringLiteral:)();
  (*(v39 + 16))(v38, v37, v40);
  if (one-time initialization token for module != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v41 = *(v0 + 248);
    v43 = *(v0 + 224);
    v42 = *(v0 + 232);
    v44 = static NSBundle.module;
    static Locale.current.getter();
    v34 = String.init(localized:table:bundle:locale:comment:)();
    v33 = v45;
    (*(v42 + 8))(v41, v43);
LABEL_13:

    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 _containsEmoji];

    v48 = 270.0;
    if (v30 > 270.0)
    {
      v48 = v30;
    }

    if (v47)
    {
      v49 = v48;
    }

    else
    {
      v49 = v30;
    }

    if (v47)
    {
      v50 = v48;
    }

    else
    {
      v50 = v32;
    }

    v51 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v49, v50}];
    v52 = swift_allocObject();
    *(v52 + 16) = v49;
    *(v52 + 24) = v50;
    *(v52 + 32) = v69;
    *(v52 + 40) = v28;
    *(v52 + 48) = v34;
    *(v52 + 56) = v33;
    *(v52 + 64) = v27;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for closure #2 in static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:);
    *(v53 + 24) = v52;
    *(v0 + 48) = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    *(v0 + 56) = v53;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    *(v0 + 40) = &block_descriptor_33;
    v54 = _Block_copy(aBlock);
    v69 = v69;
    aBlock = v28;
    v28 = v27;

    v55 = v51;
    v27 = [v51 imageWithActions:v54];
    _Block_release(v54);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if (v54)
    {
      __break(1u);
      goto LABEL_33;
    }

    v73.width = v49;
    v73.height = v50;
    v74.width = v30;
    v74.height = v32;
    if (CGSizeEqualToSize(v73, v74))
    {

      goto LABEL_26;
    }

    v64 = v28;
    v56 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:aBlock format:{v30, v32}];
    v57 = swift_allocObject();
    *(v57 + 16) = v27;
    *(v57 + 24) = v30;
    *(v57 + 32) = v32;
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for closure #3 in static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:);
    *(v58 + 24) = v57;
    *(v0 + 96) = partial apply for thunk for @callee_guaranteed (@guaranteed MPMutableLocalLibraryIdentifiers) -> ();
    *(v0 + 104) = v58;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    *(v0 + 88) = &block_descriptor_13_1;
    v59 = _Block_copy((v0 + 64));
    v28 = *(v0 + 104);
    v60 = v27;

    v27 = [v56 imageWithActions:v59];

    _Block_release(v59);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if ((v60 & 1) == 0)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v28 = v64;
LABEL_26:
  v3 = v71;
  v9 = [objc_opt_self() representationForVisualIdentity:v71 withSize:v27 image:{v5, v7}];
  v61 = specialized PlaylistCovers.ArtworkDataSource.cacheIdentifier(for:with:)(v71);
  if (!v61)
  {

    goto LABEL_4;
  }

  v62 = v61;
  [*(*(v0 + 208) + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) setObject:v9 forKey:v61];

LABEL_28:

  v63 = *(v0 + 8);

  return v63(v9);
}

uint64_t @objc closure #1 in PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in PlaylistCovers.ArtworkDataSource.loadRepresentation(for:);

  return PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(v6);
}

uint64_t @objc closure #1 in PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t PlaylistCovers.ArtworkDataSource.visualIdenticalityIdentifier(for:)(void *a1)
{
  v1 = [a1 token];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id PlaylistCovers.ArtworkDataSource.init()()
{
  v1 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  *&v0[v1] = [objc_allocWithZone(NSCache) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource();
  return objc_msgSendSuper2(&v3, "init");
}

id PlaylistCovers.ArtworkToken.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t PlaylistCovers.Recipe.textColor.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PlaylistCovers.Recipe.textColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t SharedListening.Reaction.senderID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SharedListening.Reaction.senderID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaylistCovers.Recipe.HexColors.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PlaylistCovers.Recipe.HexColors.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaylistCovers.Recipe.HexColors.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaylistCovers.Recipe.HexColors.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.HexColors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore14PlaylistCoversO6RecipeV9HexColorsV10CodingKeys33_93215C2D181A38C67BD032EB0C9FAFF3LLOGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double PlaylistCovers.Recipe.HexColors.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized PlaylistCovers.Recipe.HexColors.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlaylistCovers.Recipe.HexColors(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static PlaylistCovers.Recipe.HexColors.__derived_struct_equals(_:_:)(v7, v8) & 1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaylistCovers.Recipe.rawJSONRepresentation()()
{
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v6 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v6;
  v17 = *(v0 + 96);
  v7 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v7;
  v8 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v8;
  lazy protocol witness table accessor for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v11 = v9;
    v12 = v10;
    static String.Encoding.utf8.getter();
    v13 = String.init(data:encoding:)();
    if (!v14)
    {
      __break(1u);
      goto LABEL_7;
    }

    v5 = v13;
    v2 = v14;
    outlined consume of Data._Representation(v11, v12);
  }

  v13 = v5;
  v14 = v2;
LABEL_7:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaylistCovers.Recipe.CodingKeys()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x666E49726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F4374786574;
  }

  if (*v0)
  {
    v1 = 0x6973736572707865;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaylistCovers.Recipe.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PlaylistCovers.Recipe.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaylistCovers.Recipe.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaylistCovers.Recipe.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore14PlaylistCoversO6RecipeV10CodingKeys33_93215C2D181A38C67BD032EB0C9FAFF3LLOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 24);
    v11 = *(v3 + 56);
    v20[1] = *(v3 + 40);
    v20[2] = v11;
    v20[3] = *(v3 + 72);
    v12 = *(v3 + 40);
    v16 = *(v3 + 24);
    v17 = v12;
    v18 = *(v3 + 56);
    v19 = *(v3 + 72);
    v20[0] = v10;
    v15 = 2;
    outlined init with copy of PlaylistCovers.Recipe.HexColors(v20, v14);
    lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    outlined destroy of PlaylistCovers.Recipe.HexColors(v14);
    v13[15] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 PlaylistCovers.Recipe.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PlaylistCovers.Recipe.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlaylistCovers.Recipe(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static PlaylistCovers.Recipe.__derived_struct_equals(_:_:)(v11, v13) & 1;
}

void PlaylistCovers.Recipe.HexColors.init(from:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v21 = v11;
  v22 = v10;
  v20 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v13 = v12;
  v14 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v16 = v15;
  v17 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v19 = v18;

  *a5 = v22;
  a5[1] = v21;
  a5[2] = v20;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v16;
  a5[6] = v17;
  a5[7] = v19;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of ActionPerforming(__src, &v41);
    __swift_project_boxed_opaque_existential_0Tm(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of TaskPriority?(__src, &_s10Foundation15ContiguousBytes_pSgMd);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v35, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t PlaylistCovers.Recipe.init(from:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v29 = *a1 + 1;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 2);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v27 = v12;
  v28 = v11;
  v13 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v25 = v14;
  v26 = v13;
  v15 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v17 = v16;
  v18 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v20 = v19;

  v21 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v23 = v22;
  result = outlined destroy of PlaylistCovers.Cover.Representation(a1);
  *a2 = 3157553;
  a2[1] = 0xE300000000000000;
  a2[2] = v29;
  a2[3] = v28;
  a2[4] = v27;
  a2[5] = v26;
  a2[6] = v25;
  a2[7] = v15;
  a2[8] = v17;
  a2[9] = v18;
  a2[10] = v20;
  a2[11] = v21;
  a2[12] = v23;
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);

    return v21;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1004F3030;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1004F3030;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static PlaylistCovers.Recipe.HexColors.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized static PlaylistCovers.Recipe.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v16 = a1[10];
  v17 = a1[9];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v14 = a2[10];
  v15 = a2[9];
  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((v5 != v9 || v6 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v7 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17 != v15 || v16 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[11] == a2[11] && a1[12] == a2[12])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id specialized PlaylistCovers.ArtworkToken.__allocating_init(rawJSON:playlistTitle:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
  v10 = v9;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v8, v10);
  v30[4] = v24;
  v30[5] = v25;
  v31 = v26;
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  PlaylistCovers.Recipe.asCoverRepresentation(_:)(&v20, 180.0, 180.0);
  outlined destroy of PlaylistCovers.Recipe(v30);
  v11 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v12 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v13 = type metadata accessor for PlaylistCovers.ArtworkToken();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
    *v15 = v12;
    *(v15 + 1) = v11;
    v16 = v28;
    *(v15 + 1) = v27;
    *(v15 + 2) = v16;
    *(v15 + 6) = v29;
    v17 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
    *v17 = a3;
    *(v17 + 1) = a4;
    v19.receiver = v14;
    v19.super_class = v13;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {

    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe and conformance PlaylistCovers.Recipe);
  }

  return result;
}

unint64_t type metadata accessor for UIGraphicsImageRendererFormat()
{
  result = lazy cache variable for type metadata for UIGraphicsImageRendererFormat;
  if (!lazy cache variable for type metadata for UIGraphicsImageRendererFormat)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIGraphicsImageRendererFormat);
  }

  return result;
}

id specialized PlaylistCovers.ArtworkDataSource.cacheIdentifier(for:with:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v25[0] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v25[1] = v2;
  v25[2] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v26 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  outlined init with copy of PlaylistCovers.Cover.Representation(v25, &v23);
  v3 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v5 = v4;
  outlined destroy of PlaylistCovers.Cover.Representation(v25);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v23 = 0xD000000000000011;
  v24 = 0x80000001004CD860;
  v6 = a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle;
  v7 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v8 = *(v6 + 8);

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = v23;
  v11 = v24;
  v23 = v3;
  v24 = v5;

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v14 = v23;
  v13 = v24;
  v23 = 0x203A657A6973202CLL;
  v24 = 0xE800000000000000;
  v15._countAndFlagsBits = CGSize.description.getter();
  String.append(_:)(v15);

  v16 = v23;
  v17 = v24;
  v23 = v14;
  v24 = v13;

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  String.append(_:)(v18);

  v19 = objc_allocWithZone(NSString);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithString:v20];

  return v21;
}

unint64_t lazy protocol witness table accessor for type Error and conformance Error()
{
  result = lazy protocol witness table cache variable for type Error and conformance Error;
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error and conformance Error);
  }

  return result;
}

uint64_t sub_100222E80()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100222F0C()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys);
  }

  return result;
}

uint64_t specialized PlaylistCovers.Recipe.HexColors.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000)
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

uint64_t specialized PlaylistCovers.Recipe.HexColors.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore14PlaylistCoversO6RecipeV9HexColorsV10CodingKeys33_93215C2D181A38C67BD032EB0C9FAFF3LLOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors.CodingKeys and conformance PlaylistCovers.Recipe.HexColors.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v13;
  v33 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  outlined init with copy of PlaylistCovers.Recipe.HexColors(&v28, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = outlined destroy of PlaylistCovers.Recipe.HexColors(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors);
  }

  return result;
}

uint64_t specialized PlaylistCovers.Recipe.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEC00000064496E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F6C6F63 && a2 == 0xE90000000000006FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072)
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

uint64_t specialized PlaylistCovers.Recipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore14PlaylistCoversO6RecipeV10CodingKeys33_93215C2D181A38C67BD032EB0C9FAFF3LLOGMd);
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type PlaylistCovers.Recipe.CodingKeys and conformance PlaylistCovers.Recipe.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v26[0]) = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v22 = v8;
  LOBYTE(v26[0]) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = 2;
  lazy protocol witness table accessor for type PlaylistCovers.Recipe.HexColors and conformance PlaylistCovers.Recipe.HexColors();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v33 = 3;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = *(v5 + 8);
  v14 = v13;
  v12(v7, v43);
  v15 = v22;
  *&v23 = v22;
  *(&v23 + 1) = v10;
  *&v24[0] = v21;
  *(v24 + 8) = v39;
  *(&v24[1] + 8) = v40;
  *(&v24[2] + 8) = v41;
  *(&v24[3] + 8) = v42;
  *(&v24[4] + 1) = v11;
  v25 = v14;
  outlined init with copy of PlaylistCovers.Recipe(&v23, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v26[0] = v15;
  v26[1] = v10;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v26[2] = v21;
  v31 = v11;
  v32 = v14;
  result = outlined destroy of PlaylistCovers.Recipe(v26);
  v17 = v24[4];
  *(a2 + 64) = v24[3];
  *(a2 + 80) = v17;
  *(a2 + 96) = v25;
  v18 = v24[0];
  *a2 = v23;
  *(a2 + 16) = v18;
  v19 = v24[2];
  *(a2 + 32) = v24[1];
  *(a2 + 48) = v19;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistCovers.Recipe(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for PlaylistCovers.Recipe(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistCovers.Recipe.HexColors(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for PlaylistCovers.Recipe.HexColors(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100223E0C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return @objc closure #1 in PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t sub_1002240D8()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_71(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.stringRepresentation.getter()
{
  _StringGuts.grow(_:)(68);
  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x80000001004CDA30;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x80000001004CDA60;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  v4._countAndFlagsBits = PlaylistCovers.RecipeColors.description.getter(v0[2], v0[3], v0[4], v0[5]);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F4374786574202CLL;
  v5._object = 0xED0000203A726F6CLL;
  String.append(_:)(v5);
  v6 = [v0[6] description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0;
}

uint64_t static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(void *a1, __objc2_prop *a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7)
{
  v46 = a1;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  isEscapingClosureAtFileLocation = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  if (!a4)
  {
LABEL_7:
    String.LocalizationValue.init(stringLiteral:)();
    (*(isEscapingClosureAtFileLocation + 16))(v17, v20, v14);
    if (one-time initialization token for module != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v45 = a5;

  v21 = String.trim()();

  v22 = (v21._object >> 56) & 0xF;
  if ((v21._object & 0x2000000000000000) == 0)
  {
    v22 = v21._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    a5 = v45;
    goto LABEL_7;
  }

  a5 = v45;
  while (1)
  {
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 _containsEmoji];

    v27 = 270.0;
    if (a6 > 270.0)
    {
      v27 = a6;
    }

    v28 = v26 ? v27 : a6;
    v29 = v26 ? v27 : a7;
    v20 = MPModelMovie_ptr;
    v30 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{v28, v29}];
    v14 = swift_allocObject();
    *(v14 + 16) = v28;
    *(v14 + 24) = v29;
    v31 = v46;
    *(v14 + 32) = v46;
    *(v14 + 40) = a5;
    *(v14 + 48) = a3;
    *(v14 + 56) = a4;
    *(v14 + 64) = a2;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for closure #2 in static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:);
    *(v32 + 24) = v14;
    v51 = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
    v52 = v32;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    v50 = &block_descriptor_34;
    v33 = _Block_copy(&aBlock);
    v34 = v31;
    a5 = a5;
    v35 = a2;

    a2 = &stru_1005F2000;
    v36 = [v30 imageWithActions:v33];
    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
LABEL_8:
    v23 = static NSBundle.module;
    static Locale.current.getter();
    a3 = String.init(localized:table:bundle:locale:comment:)();
    a4 = v24;
    (*(isEscapingClosureAtFileLocation + 8))(v20, v14);
  }

  v53.width = v28;
  v53.height = v29;
  v54.width = a6;
  v54.height = a7;
  if (CGSizeEqualToSize(v53, v54))
  {

    return v36;
  }

  v37 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = a6;
  *(v38 + 32) = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = _s9MusicCore14PlaylistCoversO18playlistCoverImage4size010backgroundG09textColor5title14graphicsFormatSo7UIImageCSo6CGSizeV_AKSo7UIColorCSSSgSo010UIGraphicsg8RendererN0CtFZySo0rgS7ContextCXEfU1_TA_0;
  *(v39 + 24) = v38;
  v51 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v52 = v39;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v50 = &block_descriptor_13_2;
  v40 = _Block_copy(&aBlock);
  v41 = v36;

  v36 = [v37 imageWithActions:v40];

  _Block_release(v40);
  v42 = swift_isEscapingClosureAtFileLocation();

  if ((v42 & 1) == 0)
  {
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.init(expression:backgroundImage:recipeColors:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void *PlaylistCovers.Cover.Representation.recipeColors.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v1;
  v6 = v2;
  v7 = v4;
  v8 = v3;
  return v1;
}

uint64_t PlaylistCovers.Cover.Representation.hash(into:)()
{
  Hasher._combine(_:)(*v0 + 1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int PlaylistCovers.Cover.Representation.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlaylistCovers.Cover.Representation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static PlaylistCovers.Cover.Representation.== infix(_:_:)(v5, v7) & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlaylistCovers.Cover.Representation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PlaylistCovers.Cover.Representation()
{
  Hasher._combine(_:)(*v0 + 1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlaylistCovers.Cover.Representation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

__n128 PlaylistCovers.Cover.init(image:representation:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 5);
  v22 = *(a2 + 6);
  v20 = *(a2 + 24);
  v21 = *(a2 + 8);
  outlined init with copy of PlaylistCovers.Cover.Representation(a2, v23);
  v8 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v10 = v9;
  v11 = *a2;
  v12 = PlaylistCovers.Expression.accessibilityLabel.getter();
  v14 = v13;
  outlined destroy of PlaylistCovers.Cover.Representation(a2);
  v15 = PlaylistCovers.Expression.accessibilityIdentifier.getter(v11);
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  result = v21;
  *(a3 + 32) = v21;
  *(a3 + 48) = v20;
  *(a3 + 64) = v7;
  *(a3 + 72) = v22;
  *(a3 + 80) = v12;
  *(a3 + 88) = v14;
  *(a3 + 96) = v15;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  return result;
}

double PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  result = 0.0;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance PlaylistCovers.Cover@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlaylistCovers.Cover(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return specialized static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(v13, v14) & 1;
}

id one-time initialization function for fallbackColors()
{
  v0 = [objc_opt_self() whiteColor];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIColor);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 128, 128, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 230, 230, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(250, 35, 59, 1.0);
  static PlaylistCovers.Specs.fallbackColors = v0;
  *algn_10063D6E8 = v1;
  qword_10063D6F0 = v2;
  unk_10063D6F8 = result;
  return result;
}

id one-time initialization function for blackAndWhiteColors()
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIColor);
  v0 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(238, 238, 238, 1.0);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(187, 187, 187, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(70, 70, 70, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(17, 17, 17, 1.0);
  static PlaylistCovers.Specs.blackAndWhiteColors = v0;
  *algn_10063D708 = v1;
  qword_10063D710 = v2;
  unk_10063D718 = result;
  return result;
}

void closure #2 in static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(int a1, id a2, double a3, double a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  [a2 drawInRect:{0.0, 0.0, a3, a4}];
  v11 = String.count.getter();
  v12 = objc_opt_self();
  [a5 scale];
  if (v11 <= 30)
  {
    v13 = 33.0;
  }

  else
  {
    v13 = 27.0;
  }

  CGFloat.roundValue(scale:)();
  v14 = [v12 systemFontOfSize:? weight:?];
  v15 = [v14 fontDescriptor];

  v16 = kCTFontIgnoreLegibilityWeightAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = v16;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCTFontOpticalSizeAttribute;
  *(inited + 104) = &type metadata for CGFloat;
  *(inited + 80) = v13;
  v18 = v16;
  v19 = kCTFontOpticalSizeAttribute;
  v45 = v18;
  v44 = v19;
  v20 = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29UIFontDescriptorAttributeNamea_yptMd);
  swift_arrayDestroy();
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = [v20 fontDescriptorByAddingAttributes:isa];

  v22 = [v12 fontWithDescriptor:v42 size:0.0];
  [a5 scale];
  CGFloat.roundValue(scale:)();
  v24 = v23;
  v25 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v25 setMinimumLineHeight:v24];
  [v25 setMaximumLineHeight:v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1004F2EE0;
  *(v26 + 32) = NSFontAttributeName;
  v27 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIFont);
  *(v26 + 40) = v22;
  *(v26 + 64) = v27;
  *(v26 + 72) = NSForegroundColorAttributeName;
  v28 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIColor);
  *(v26 + 80) = a8;
  *(v26 + 104) = v28;
  *(v26 + 112) = NSKernAttributeName;
  *(v26 + 120) = -0.25 / (270.0 / a3);
  *(v26 + 144) = &type metadata for CGFloat;
  *(v26 + 152) = NSParagraphStyleAttributeName;
  *(v26 + 184) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  *(v26 + 160) = v25;
  v29 = NSFontAttributeName;
  v30 = v22;
  v31 = NSForegroundColorAttributeName;
  v32 = a8;
  v33 = NSKernAttributeName;
  v34 = NSParagraphStyleAttributeName;
  v35 = v25;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v26);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v36 = type metadata accessor for LanguageAwareString();
  static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
  v37 = objc_allocWithZone(v36);

  v38 = LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)();
  v39 = dispatch thunk of LanguageAwareString.attributedString.getter();

  [a5 scale];
  CGFloat.roundValue(scale:)();
  UIEdgeInsets.init(edges:inset:)();
  [v39 drawWithRect:1 options:0 context:{UIEdgeInsetsInsetRect(0.0, 0.0, a3, a4, v40, v41)}];
}

uint64_t sub_100225760()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002257F8()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of PlaylistCovers.Cover.Representation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO5CoverV14RepresentationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static PlaylistCovers.Cover.Representation.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v4 = v3;
  v26 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v27 = v5;
  v25 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v29 = v6;
  v23 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v30 = v7;
  v8 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v10 = v9;
  v11 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v13 = v12;
  v24 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v28 = v14;
  v22 = specialized static PlaylistCovers.hexRepresentation(for:)();
  v16 = v15;
  if (v2 == v8 && v4 == v10)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v26 == v11 && v27 == v13)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v25 == v24 && v29 == v28)
  {

    goto LABEL_14;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
LABEL_21:

    return 0;
  }

LABEL_14:
  if (v23 == v22 && v30 == v16)
  {

LABEL_19:
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
    return static NSObject.== infix(_:_:)() & 1;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t specialized static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v35 = *(a1 + 24);
  v5 = *(a1 + 56);
  v36 = *(a1 + 40);
  v37 = v5;
  v6 = *(a1 + 72);
  v38 = v6;
  v7 = *(a2 + 40);
  v32[0] = *(a2 + 24);
  v32[1] = v7;
  v33 = *(a2 + 56);
  v8 = *(a2 + 72);
  v34 = v8;
  v9 = v35;
  v10 = v36;
  v11 = v32[0];
  v12 = *(&v33 + 1);
  if (!*(&v35 + 1))
  {
    if (!*(&v32[0] + 1))
    {
      v18 = *(&v37 + 1);
      v19 = v36;
      v20 = v37;
      v21 = v35;
      v22 = *(&v36 + 1);
      outlined init with copy of PlaylistCovers.Cover.Representation?(&v35, v44);
      outlined init with copy of PlaylistCovers.Cover.Representation?(v32, v44);
      outlined consume of PlaylistCovers.Cover.Representation?(v21, 0, v19, v22, v20, v18, v6);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!*(&v32[0] + 1))
  {
LABEL_12:
    v13 = *(&v37 + 1);
    v14 = v37;
    v26 = *(&v33 + 1);
    v28 = v7;
    v15 = *(&v36 + 1);
    v30 = v33;
    outlined init with copy of PlaylistCovers.Cover.Representation?(&v35, v44);
    outlined init with copy of PlaylistCovers.Cover.Representation?(v32, v44);
    outlined consume of PlaylistCovers.Cover.Representation?(v9, *(&v9 + 1), v10, v15, v14, v13, v6);
    outlined consume of PlaylistCovers.Cover.Representation?(v11, *(&v11 + 1), v28, *(&v28 + 1), v30, v26, v8);
    goto LABEL_13;
  }

  v44[0] = v32[0];
  v45 = *(&v32[0] + 1);
  v46 = v7;
  v47 = v33;
  v48 = v8;
  v39[0] = v35;
  v40 = *(&v35 + 1);
  v41 = v36;
  v42 = v37;
  v43 = v6;
  v25 = v37;
  v24 = *(&v36 + 1);
  v29 = v33;
  v27 = v7;
  outlined init with copy of PlaylistCovers.Cover.Representation?(&v35, v31);
  outlined init with copy of PlaylistCovers.Cover.Representation?(v32, v31);
  v23 = specialized static PlaylistCovers.Cover.Representation.== infix(_:_:)(v39, v44);
  outlined consume of PlaylistCovers.Cover.Representation?(v11, *(&v11 + 1), v27, *(&v27 + 1), v29, v12, v8);
  outlined consume of PlaylistCovers.Cover.Representation?(v9, *(&v9 + 1), v10, v24, v25, *(&v25 + 1), v6);
  if ((v23 & 1) == 0)
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

LABEL_16:
  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.Cover.Representation and conformance PlaylistCovers.Cover.Representation()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Cover.Representation and conformance PlaylistCovers.Cover.Representation;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Cover.Representation and conformance PlaylistCovers.Cover.Representation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Cover.Representation and conformance PlaylistCovers.Cover.Representation);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO5CoverV14RepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PlaylistCovers.Cover(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for PlaylistCovers.Cover(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void outlined consume of PlaylistCovers.Cover.Representation?(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

unint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName()
{
  result = lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName;
  if (!lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName)
  {
    type metadata accessor for UIFontDescriptorAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName);
  }

  return result;
}

uint64_t PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int8 a6, double a7, double a8)
{
  if (a6 > 3u)
  {
    if (a6 > 5u)
    {
      if (a6 == 6)
      {
        v8 = specialized static PlaylistCovers.expression7(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      static PlaylistCovers.expression8(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
    }

    else
    {
      if (a6 == 4)
      {
        v8 = static PlaylistCovers.expression5(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      v11 = static PlaylistCovers.expression6(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
    }

LABEL_17:
    v9 = v11;
    v10 = &selRef_whiteColor;
    goto LABEL_18;
  }

  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      v8 = static PlaylistCovers.expression3(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
      goto LABEL_12;
    }

    v11 = static PlaylistCovers.expression4(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  if (a6)
  {
    v11 = static PlaylistCovers.expression2(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  v8 = static PlaylistCovers.expression1(_:_:_:)(a1, a2, a3, a4, a5, a7, a8);
LABEL_12:
  v9 = v8;
  v10 = &selRef_blackColor;
LABEL_18:
  v12 = [objc_opt_self() *v10];
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityLabel.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        if (one-time initialization token for playlistEditorMetadataArtworkExpression7 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
      }

      else
      {
        if (one-time initialization token for playlistEditorMetadataArtworkExpression8 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
      }
    }

    else if (a1 == 4)
    {
      if (one-time initialization token for playlistEditorMetadataArtworkExpression5 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
    }

    else
    {
      if (one-time initialization token for playlistEditorMetadataArtworkExpression6 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (one-time initialization token for playlistEditorMetadataArtworkExpression3 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
    }

    else
    {
      if (one-time initialization token for playlistEditorMetadataArtworkExpression4 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
    }
  }

  else if (a1)
  {
    if (one-time initialization token for playlistEditorMetadataArtworkExpression2 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
  }

  else
  {
    if (one-time initialization token for playlistEditorMetadataArtworkExpression1 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
  }

  v2 = *v1;

  return v2;
}

id PlaylistCovers.Expression.textColor.getter(char a1)
{
  v1 = [objc_opt_self() *off_1005BB268[a1]];

  return v1;
}

uint64_t static PlaylistCovers.expression1(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static PlaylistCovers.expression1(_:_:_:);
  *(v15 + 24) = v14;
  v23[4] = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v23[3] = &block_descriptor_35;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t static PlaylistCovers.expression2(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static PlaylistCovers.expression2(_:_:_:);
  *(v15 + 24) = v14;
  v24[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v24[5] = v15;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v24[3] = &block_descriptor_34_0;
  v16 = _Block_copy(v24);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v13;

  v22 = [v21 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t static PlaylistCovers.expression3(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static PlaylistCovers.expression3(_:_:_:);
  *(v15 + 24) = v14;
  v23[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v23[3] = &block_descriptor_57;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t static PlaylistCovers.expression4(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static PlaylistCovers.expression4(_:_:_:);
  *(v15 + 24) = v14;
  v23[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v23[3] = &block_descriptor_70_0;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t static PlaylistCovers.expression5(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static PlaylistCovers.expression5(_:_:_:);
  *(v15 + 24) = v14;
  v23[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v23[3] = &block_descriptor_92;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t static PlaylistCovers.expression6(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static PlaylistCovers.expression6(_:_:_:);
  *(v15 + 24) = v14;
  v23[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v23[3] = &block_descriptor_104;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

void static PlaylistCovers.expression8(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6 * 1.1, a7 * 1.1}];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a6 * 1.1;
  *(v16 + 56) = a7 * 1.1;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in static PlaylistCovers.expression8(_:_:_:);
  *(v17 + 24) = v16;
  v52 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v53 = v17;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v51 = &block_descriptor_140;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v23 = [v15 imageWithActions:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v21;
  v47 = v15;
  [v23 scale];
  v25 = v24;
  [v23 scale];
  v27 = v26;
  v28 = [v23 CGImage];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v14;
  v55.size.height = v27 * a7;
  v55.origin.y = v27 * a7 * 0.05;
  v55.size.width = v25 * a6;
  v55.origin.x = v25 * a6 * 0.05;
  v31 = CGImageCreateWithImageInRect(v28, v55);

  if (v31)
  {
    v32 = [objc_allocWithZone(UIImage) initWithCGImage:v31];

    v54 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = a6;
    *(v33 + 24) = a7;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for closure #2 in static PlaylistCovers.expression8(_:_:_:);
    *(v34 + 24) = v33;
    v52 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    v51 = &block_descriptor_150;
    v35 = _Block_copy(&aBlock);

    v36 = [v14 imageWithActions:v35];
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = v19;
      *(v37 + 24) = v20;
      *(v37 + 32) = v46;
      *(v37 + 40) = v22;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = a6;
      *(v37 + 72) = a7;
      *(v37 + 80) = v36;
      *(v37 + 88) = &v54;
      v38 = swift_allocObject();
      *(v38 + 16) = partial apply for closure #3 in static PlaylistCovers.expression8(_:_:_:);
      *(v38 + 24) = v37;
      v52 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
      v53 = v38;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
      v51 = &block_descriptor_160_0;
      v39 = _Block_copy(&aBlock);
      v40 = v19;
      v41 = v20;
      v42 = v46;
      v43 = v22;
      v44 = v36;

      [v30 imageWithActions:v39];

      _Block_release(v39);
      LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

      if ((v39 & 1) == 0)
      {
        v45 = v54;

        return;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlaylistCovers.Expression()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlaylistCovers.Expression()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PlaylistCovers.Expression@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PlaylistCovers.Expression.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  return _swift_task_switch(static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:), 0, 0);
}

uint64_t static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColorttMd);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  *(v6 + 56) = v8;
  *(v6 + 72) = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore14PlaylistCoversO5CoverV14RepresentationVGMd);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v9, 0, 0, &async function pointer to partial apply for closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:), v6, v5);
}

{

  return _swift_task_switch(static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v10 + 168) = a7;
  *(v10 + 176) = a8;
  *(v10 + 152) = a5;
  *(v10 + 160) = a6;
  *(v10 + 144) = a4;
  *(v10 + 128) = a9;
  *(v10 + 136) = a10;
  *(v10 + 112) = a2;
  *(v10 + 120) = a3;
  *(v10 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_GMd);
  *(v10 + 200) = v11;
  *(v10 + 208) = *(v11 - 8);
  *(v10 + 216) = swift_task_alloc();

  return _swift_task_switch(closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:), 0, 0);
}

uint64_t closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = **(v0 + 112);
    v3 = (v1 + 32);
    v38 = type metadata accessor for TaskPriority();
    v4 = *(v38 - 8);
    v37 = *(v4 + 56);
    v36 = (v4 + 48);
    v35 = (v4 + 8);
    do
    {
      v40 = v2;
      v6 = *(v0 + 168);
      v5 = *(v0 + 176);
      v7 = *(v0 + 152);
      v8 = *(v0 + 160);
      v9 = *(v0 + 144);
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = v3 + 1;
      v13 = *v3;
      v41 = v12;
      v37(*(v0 + 192), 1, 1, v38);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v13;
      *(v14 + 40) = v11;
      *(v14 + 48) = v10;
      *(v14 + 56) = v9;
      *(v14 + 64) = v7;
      *(v14 + 72) = v8;
      *(v14 + 80) = v6;
      *(v14 + 88) = v5;
      v15 = v9;
      v16 = v7;
      v17 = v8;
      v18 = v6;
      v19 = v5;
      v20 = swift_taskGroup_addPending();
      v21 = *(v0 + 192);
      if (v20)
      {
        v22 = *(v0 + 184);
        outlined init with copy of TaskPriority?(v21, v22);
        v23 = (*v36)(v22, 1, v38);
        v24 = *(v0 + 184);
        if (v23 == 1)
        {
          outlined destroy of TaskPriority?(*(v0 + 184));
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*v35)(v24, v38);
        }

        v3 = v41;
        if (*(v14 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = dispatch thunk of Actor.unownedExecutor.getter();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = swift_allocObject();
        *(v28 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:);
        *(v28 + 24) = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColorttMd);
        v29 = v27 | v25;
        if (v27 | v25)
        {
          v29 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v25;
          *(v0 + 40) = v27;
        }

        v30 = *(v0 + 192);
        *(v0 + 72) = 1;
        *(v0 + 80) = v29;
        *(v0 + 88) = v39;
        swift_task_create();

        outlined destroy of TaskPriority?(v30);
      }

      else
      {
        outlined destroy of TaskPriority?(v21);

        v3 = v41;
      }

      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColorttMd);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 224) = _swiftEmptyDictionarySingleton;
  v31 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Expression, (image: UIImage, textColor: UIColor))>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_GMd);
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  *v32 = v0;
  v32[1] = closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:);
  v33 = *(v0 + 200);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 48, v33, v31);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 216);
    v6 = v2 + 200;
    v4 = *(v2 + 200);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = CFRange.init(_:);
  }

  else
  {
    v7 = closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = v1;
    v10 = v7;
    v11 = v9;
    v12 = v10;
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v2;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v20 = *(v2 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v3) = v19;
      if (*(*(v0 + 224) + 24) < v23)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
        if ((v3 & 1) != (v24 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_21:
        v46 = *(v0 + 96);
        v48 = *(v0 + 160);
        v47 = *(v0 + 168);
        v50 = *(v0 + 144);
        v49 = *(v0 + 152);
        if (v3)
        {
          v51 = v46[7] + 56 * v18;
          v52 = *(v51 + 8);
          v53 = *(v51 + 16);
          v54 = *(v51 + 24);
          v55 = *(v51 + 32);
          v56 = *(v51 + 40);
          v57 = *(v51 + 48);
          *v51 = v8;
          *(v51 + 8) = v11;
          *(v51 + 16) = v50;
          *(v51 + 24) = v49;
          *(v51 + 32) = v48;
          *(v51 + 40) = v47;
          *(v51 + 48) = v12;
        }

        else
        {
          v46[(v18 >> 6) + 8] |= 1 << v18;
          *(v46[6] + v18) = v8;
          v58 = v46[7] + 56 * v18;
          *v58 = v8;
          *(v58 + 8) = v11;
          *(v58 + 16) = v50;
          *(v58 + 24) = v49;
          *(v58 + 32) = v48;
          *(v58 + 40) = v47;
          *(v58 + 48) = v12;

          v62 = v46[2];
          v22 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v22)
          {
            __break(1u);
            return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
          }

          v46[2] = v63;
        }

        *(v0 + 224) = v46;
        v64 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Expression, (image: UIImage, textColor: UIColor))>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_GMd);
        v65 = swift_task_alloc();
        *(v0 + 232) = v65;
        *v65 = v0;
        v65[1] = closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:);
        v60 = *(v0 + 200);
        v59 = v0 + 48;
        v61 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }
    }

    v66 = v18;
    specialized _NativeDictionary.copy()();
    v18 = v66;
    goto LABEL_21;
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v67 = v0;
  do
  {
    if (*(v2 + 16))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(*(&outlined read-only object #0 of static PlaylistCovers.Expression.allCases.getter + v26 + 32));
      if (v30)
      {
        v31 = *(v2 + 56) + 56 * v29;
        v69 = *v31;
        v32 = *(v31 + 16);
        v33 = *(v31 + 24);
        v34 = *(v31 + 32);
        v35 = *(v31 + 40);
        v36 = *(v31 + 48);
        v68 = *(v31 + 8);
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v40 = v35;
        v41 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v43 = v27[2];
        v42 = v27[3];
        if (v43 >= v42 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v27);
        }

        v27[2] = (v43 + 1);
        v28 = &v27[7 * v43];
        *(v28 + 32) = v69;
        v0 = v67;
        v28[5] = v68;
        v28[6] = v37;
        v28[7] = v38;
        v28[8] = v39;
        v28[9] = v40;
        v28[10] = v41;
      }
    }

    ++v26;
  }

  while (v26 != 8);
  v44 = *(v0 + 104);

  *v44 = v27;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t closure #1 in closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 48) = a8;
  *(v10 + 56) = a9;
  *(v10 + 40) = a7;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 80) = a6;
  *(v10 + 16) = a1;
  return _swift_task_switch(closure #1 in closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:), 0, 0);
}

uint64_t closure #1 in closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 80);
  *v8 = v9;
  *(v8 + 8) = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v5, v3, v4, v1, v2, v9, v6, v7);
  *(v8 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

CGColorSpaceRef one-time initialization function for colorsSpace()
{
  result = CGColorSpaceCreateDeviceRGB();
  static PlaylistCovers.colorsSpace = result;
  return result;
}

void closure #1 in static PlaylistCovers.expression1(_:_:_:)(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a2 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  [a1 fillRect:{0.0, 0.0, a4, a5}];
  if (one-time initialization token for colorsSpace != -1)
  {
    swift_once();
  }

  v15 = static PlaylistCovers.colorsSpace;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004F2FF0;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a7 CGColor];
  type metadata accessor for CGColorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = CGGradientCreateWithColors(v15, isa, dbl_1005A63D0);

  if (v18)
  {
    v19 = [a1 CGContext];
    v49.x = 0.0;
    v49.y = 0.0;
    v54.x = a4;
    v54.y = a5;
    CGContextDrawLinearGradient(v19, v18, v49, v54, 0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004F2F80;
  *(v20 + 32) = [a7 CGColor];
  *(v20 + 40) = [a7 CGColor];
  v21 = [a7 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v20 + 48) = v22;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = CGGradientCreateWithColors(v15, v23, dbl_1005A6400);

  if (v24)
  {
    v25 = [a1 CGContext];
    v50.x = a4;
    v50.y = a5;
    v55.x = a4;
    v55.y = a5;
    CGContextDrawRadialGradient(v25, v24, v50, 0.0, v55, a4, 0);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004F2F80;
  *(v26 + 32) = [a3 CGColor];
  v27 = [a3 colorWithAlphaComponent:0.0];
  v28 = [v27 CGColor];

  *(v26 + 40) = v28;
  v29 = [a3 colorWithAlphaComponent:0.0];
  v30 = [v29 CGColor];

  *(v26 + 48) = v30;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  v32 = CGGradientCreateWithColors(v15, v31, dbl_1005A6438);

  if (v32)
  {
    v33 = [a1 CGContext];
    v51.x = 0.0;
    v56.x = 0.0;
    v51.y = a5;
    v56.y = a5;
    CGContextDrawRadialGradient(v33, v32, v51, 0.0, v56, a4, 0);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1004F2F80;
  *(v34 + 32) = [a3 CGColor];
  v35 = [a3 colorWithAlphaComponent:0.0];
  v36 = [v35 CGColor];

  *(v34 + 40) = v36;
  v37 = [a3 colorWithAlphaComponent:0.0];
  v38 = [v37 CGColor];

  *(v34 + 48) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = CGGradientCreateWithColors(v15, v39, dbl_1005A6470);

  if (v40)
  {
    v41 = [a1 CGContext];
    v52.y = 0.0;
    v57.y = 0.0;
    v52.x = a4;
    v57.x = a4;
    CGContextDrawRadialGradient(v41, v40, v52, 0.0, v57, a4, 0);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1004F2FF0;
  *(v42 + 32) = [a2 CGColor];
  v43 = [a2 colorWithAlphaComponent:0.0];
  v44 = [v43 CGColor];

  *(v42 + 40) = v44;
  v45 = Array._bridgeToObjectiveC()().super.isa;

  v46 = CGGradientCreateWithColors(v15, v45, dbl_1005A64A8);

  if (v46)
  {
    v47 = [a1 CGContext];
    v53.x = 0.0;
    v53.y = 0.0;
    v58.x = 0.0;
    v58.y = 0.0;
    CGContextDrawRadialGradient(v47, v46, v53, 0.0, v58, a4, 0);
  }
}

void closure #1 in static PlaylistCovers.expression2(_:_:_:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, CGFloat a7, CGFloat a8)
{
  v119 = a6;
  v117 = a3;
  v125 = type metadata accessor for CGPathFillRule();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a2;
  v16 = [a2 CGColor];
  v118 = a4;
  v17 = [a4 CGColor];
  v120 = a5;
  v18 = [a5 CGColor];
  if (one-time initialization token for colorsSpace != -1)
  {
    swift_once();
  }

  v19 = static PlaylistCovers.colorsSpace;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004F3040;
  *(v20 + 32) = v18;
  *(v20 + 40) = v18;
  *(v20 + 48) = v16;
  *(v20 + 56) = v16;
  type metadata accessor for CGColorRef(0);
  v22 = v21;
  v23 = v18;
  v24 = v16;
  v25 = v23;
  v26 = v24;
  v121 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v122 = v19;
  v28 = CGGradientCreateWithColors(v19, isa, dbl_1005A64D8);

  if (v28)
  {
    v29 = [a1 CGContext];
    v132.x = 0.0;
    v132.y = 0.0;
    v135.x = a7;
    v135.y = a8;
    CGContextDrawLinearGradient(v29, v28, v132, v135, 0);
  }

  v30 = [a1 CGContext];
  CGContextSaveGState(v30);

  v31 = a7 * -0.235;
  v32 = a7 * 1.47;
  v137.origin.x = a7 * -0.235;
  v137.origin.y = a8 * 0.15;
  v137.size.width = a7 * 1.47;
  v137.size.height = a8 * 0.7;
  v33 = -CGRectGetMidX(v137);
  v138.origin.x = a7 * -0.235;
  v138.origin.y = a8 * 0.15;
  v138.size.width = a7 * 1.47;
  v138.size.height = a8 * 0.7;
  MidY = CGRectGetMidY(v138);
  CGAffineTransformMakeTranslation(&t1, v33, -MidY);
  tx = t1.tx;
  ty = t1.ty;
  v126 = *&t1.a;
  v123 = *&t1.c;
  *&v111 = 0xBFE0C152382D7365;
  CGAffineTransformMakeRotation(&t1, -0.523598776);
  v37 = *&t1.a;
  v38 = *&t1.c;
  v39 = *&t1.tx;
  *&t1.a = v126;
  *&t1.c = v123;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v37;
  *&t2.c = v38;
  *&t2.tx = v39;
  CGAffineTransformConcat(&v129, &t1, &t2);
  v40 = v129.tx;
  *&v126 = a7;
  v41 = v129.ty;
  v123 = *&v129.a;
  v115 = *&v129.c;
  v139.origin.x = v31;
  v139.origin.y = a8 * 0.15;
  v139.size.width = v32;
  v139.size.height = a8 * 0.7;
  MidX = CGRectGetMidX(v139);
  v140.origin.x = v31;
  v140.origin.y = a8 * 0.15;
  v140.size.width = v32;
  v140.size.height = a8 * 0.7;
  v43 = CGRectGetMidY(v140);
  CGAffineTransformMakeTranslation(&t1, MidX, v43);
  *&t2.a = v123;
  *&t2.c = v115;
  t2.tx = v40;
  t2.ty = v41;
  v44 = *&v126;
  v129 = t1;
  CGAffineTransformConcat(&t1, &t2, &v129);
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.addEllipse(in:transform:)();
  v46 = [a1 CGContext];
  *&v115 = Mutable;
  CGContextAddPath(v46, Mutable);

  v47 = [a1 CGContext];
  v48 = v127;
  v49 = *(v127 + 104);
  v114 = enum case for CGPathFillRule.winding(_:);
  v50 = v125;
  v113 = v49;
  v49(v15);
  CGContextRef.clip(using:)();

  v51 = *(v48 + 8);
  v110 = v15;
  v127 = v48 + 8;
  v112 = v51;
  v51(v15, v50);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1004F3050;
  *(v52 + 32) = v17;
  *(v52 + 40) = v17;
  *(v52 + 48) = v25;
  *(v52 + 56) = v25;
  *(v52 + 64) = v26;
  *(v52 + 72) = v26;
  *(v52 + 80) = v25;
  *(v52 + 88) = v25;
  *(v52 + 96) = v17;
  *(v52 + 104) = v17;
  *(v52 + 112) = v25;
  v53 = v25;
  v54 = v17;
  v55 = v53;
  v56 = v54;
  v57 = v55;
  v58 = v26;
  v59 = v56;
  v60 = v57;
  *&v123 = v58;
  v61 = v59;
  v62 = v60;
  v63 = v120;
  v64 = [v120 colorWithAlphaComponent:0.8];
  v65 = [v64 CGColor];

  *(v52 + 120) = v65;
  v66 = [v63 colorWithAlphaComponent:0.5];
  v67 = [v66 CGColor];

  *(v52 + 128) = v67;
  v68 = [v63 colorWithAlphaComponent:0.5];
  v69 = [v68 CGColor];

  *(v52 + 136) = v69;
  v70 = [v63 colorWithAlphaComponent:0.8];
  v71 = [v70 CGColor];

  *(v52 + 144) = v71;
  *(v52 + 152) = v62;
  *(v52 + 160) = v61;
  *(v52 + 168) = v61;
  v72 = v61;
  v73 = v62;
  v109 = v72;
  v74 = Array._bridgeToObjectiveC()().super.isa;

  v75 = v122;
  v76 = CGGradientCreateWithColors(v122, v74, dbl_1005A6518);

  if (v76)
  {
    v77 = [a1 CGContext];
    v133.x = v44 * 0.5;
    v133.y = a8 * 0.5;
    CGContextDrawConicGradient(v77, v76, v133, 0.0);
  }

  v78 = [a1 CGContext];
  CGContextRestoreGState(v78);

  v79 = v44 * 0.26375;
  v80 = v44 * 0.4725;
  v141.origin.x = v44 * 0.26375;
  v141.origin.y = a8 * 0.388888889;
  v141.size.width = v44 * 0.4725;
  v141.size.height = a8 * 0.2225;
  v81 = -CGRectGetMidX(v141);
  v142.origin.x = v44 * 0.26375;
  v142.origin.y = a8 * 0.388888889;
  v142.size.width = v44 * 0.4725;
  v142.size.height = a8 * 0.2225;
  v82 = CGRectGetMidY(v142);
  CGAffineTransformMakeTranslation(&t2, v81, -v82);
  v83 = t2.tx;
  v84 = t2.ty;
  v108 = *&t2.a;
  v107 = *&t2.c;
  CGAffineTransformMakeRotation(&t2, *&v111);
  v85 = *&t2.a;
  v86 = *&t2.c;
  v87 = *&t2.tx;
  *&t2.a = v108;
  *&t2.c = v107;
  t2.tx = v83;
  t2.ty = v84;
  *&v129.a = v85;
  *&v129.c = v86;
  *&v129.tx = v87;
  CGAffineTransformConcat(&v128, &t2, &v129);
  v88 = v128.tx;
  v89 = v128.ty;
  v111 = *&v128.a;
  v108 = *&v128.c;
  v143.origin.x = v79;
  v143.origin.y = a8 * 0.388888889;
  v143.size.width = v80;
  v143.size.height = a8 * 0.2225;
  v90 = CGRectGetMidX(v143);
  v144.origin.x = v79;
  v144.origin.y = a8 * 0.388888889;
  v144.size.width = v80;
  v144.size.height = a8 * 0.2225;
  v91 = CGRectGetMidY(v144);
  CGAffineTransformMakeTranslation(&t2, v90, v91);
  *&v129.c = v108;
  *&v129.a = v111;
  v129.tx = v88;
  v92 = *&v126;
  v129.ty = v89;
  v128 = t2;
  CGAffineTransformConcat(&t2, &v129, &v128);
  v93 = getter of smallEllipseBorder #1 in closure #1 in static PlaylistCovers.expression2(_:_:_:)(v119, v116, v117, v118, v63, &t2, v79, a8 * 0.388888889, v80, a8 * 0.2225);
  [v93 drawInRect:{0.0, 0.0, v92, a8}];

  v94 = [a1 CGContext];
  CGContextSetFillColorWithColor(v94, v123);

  v95 = CGPathCreateMutable();
  CGMutablePathRef.addEllipse(in:transform:)();
  v96 = [a1 CGContext];
  CGContextAddPath(v96, v95);

  v97 = [a1 CGContext];
  v98 = v110;
  v99 = v125;
  v113(v110, v114, v125);
  CGContextRef.fillPath(using:)();

  v112(v98, v99);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1004F2FF0;
  *(v100 + 32) = v73;
  v101 = v73;
  v102 = [v63 colorWithAlphaComponent:0.0];
  v103 = [v102 CGColor];

  *(v100 + 40) = v103;
  v104 = Array._bridgeToObjectiveC()().super.isa;

  v105 = CGGradientCreateWithColors(v75, v104, dbl_1005A65C8);

  if (v105)
  {
    v106 = [a1 CGContext];
    v134.y = 0.0;
    v136.y = 0.0;
    v134.x = v92 * 0.5;
    v136.x = v92 * 0.5;
    CGContextDrawRadialGradient(v106, v105, v134, 0.0, v136, v134.x, 0);

    v95 = v106;
  }

  else
  {
    v105 = v115;
  }
}

uint64_t getter of smallEllipseBorder #1 in closure #1 in static PlaylistCovers.expression2(_:_:_:)(void *a1, void *a2, void *a3, void *a4, void *a5, _OWORD *a6, double a7, double a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  *(v20 + 64) = a9;
  *(v20 + 72) = a10;
  v21 = a6[1];
  *(v20 + 80) = *a6;
  *(v20 + 96) = v21;
  *(v20 + 112) = a6[2];
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in getter of smallEllipseBorder #1 in closure #1 in static PlaylistCovers.expression2(_:_:_:);
  *(v22 + 24) = v20;
  v37[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v37[5] = v22;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v37[3] = &block_descriptor_47;
  v23 = _Block_copy(v37);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;

  v28 = [a1 imageWithActions:v23];
  _Block_release(v23);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    v30 = [v28 CGImage];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_allocWithZone(CIImage) initWithCGImage:v30];
      v33 = [v32 imageByClampingToExtent];
      v34 = [v33 imageByApplyingGaussianBlurWithSigma:20.0];
      [v32 extent];
      v35 = [v34 imageByCroppingToRect:?];
      v36 = [objc_allocWithZone(UIImage) initWithCIImage:v35];

      return v36;
    }

    else
    {
    }

    return v28;
  }

  return result;
}

uint64_t closure #1 in getter of smallEllipseBorder #1 in closure #1 in static PlaylistCovers.expression2(_:_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = type metadata accessor for CGPathFillRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 CGContext];
  v12 = [a5 colorWithAlphaComponent:0.55];
  v13 = [v12 CGColor];

  CGContextSetFillColorWithColor(v11, v13);
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.addEllipse(in:transform:)();
  v15 = [a1 CGContext];
  CGContextAddPath(v15, Mutable);

  v16 = [a1 CGContext];
  (*(v8 + 104))(v10, enum case for CGPathFillRule.winding(_:), v7);
  CGContextRef.fillPath(using:)();

  return (*(v8 + 8))(v10, v7);
}

void closure #1 in static PlaylistCovers.expression3(_:_:_:)(void *a1, void *a2, void *a3, void *a4, double a5, CGFloat a6)
{
  if (one-time initialization token for colorsSpace != -1)
  {
    swift_once();
  }

  v12 = static PlaylistCovers.colorsSpace;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F3060;
  *(v13 + 32) = [a2 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  *(v13 + 56) = [a4 CGColor];
  *(v13 + 64) = [a3 CGColor];
  *(v13 + 72) = [a3 CGColor];
  type metadata accessor for CGColorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1005A65F8);

  if (v15)
  {
    v16 = [a1 CGContext];
    v31.x = 0.0;
    v31.y = 0.0;
    v34.x = 0.0;
    v34.y = a6;
    CGContextDrawLinearGradient(v16, v15, v31, v34, 0);
  }

  v17 = [a1 CGContext];
  CGContextSaveGState(v17);

  v18 = a5 * 0.5;
  [a1 clipToRect:{v18, 0.0, v18, a6}];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004F3060;
  *(v19 + 32) = [a2 CGColor];
  *(v19 + 40) = [a2 CGColor];
  *(v19 + 48) = [a3 CGColor];
  *(v19 + 56) = [a4 CGColor];
  *(v19 + 64) = [a3 CGColor];
  *(v19 + 72) = [a3 CGColor];
  v20 = Array._bridgeToObjectiveC()().super.isa;

  v21 = CGGradientCreateWithColors(v12, v20, dbl_1005A6648);

  if (v21)
  {
    v22 = [a1 CGContext];
    v35.y = 0.0;
    v32.x = v18;
    v32.y = a6;
    v35.x = v18;
    CGContextDrawLinearGradient(v22, v21, v32, v35, 0);
  }

  v23 = [a1 CGContext];
  CGContextRestoreGState(v23);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1004F2FF0;
  *(v24 + 32) = [a2 CGColor];
  v25 = [a2 colorWithAlphaComponent:0.0];
  v26 = [v25 CGColor];

  *(v24 + 40) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = CGGradientCreateWithColors(v12, v27, dbl_1005A6698);

  if (v28)
  {
    v29 = [a1 CGContext];
    v36.y = a6 * 0.5;
    v33.x = 0.0;
    v33.y = 0.0;
    v36.x = 0.0;
    CGContextDrawLinearGradient(v29, v28, v33, v36, 0);
  }
}

void closure #1 in static PlaylistCovers.expression4(_:_:_:)(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a7 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  v15 = 0.0;
  [a1 fillRect:{0.0, 0.0, a4, a5}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004F2F80;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a3 CGColor];
  v17 = [a7 colorWithAlphaComponent:0.0];
  v18 = [v17 CGColor];

  *(v16 + 48) = v18;
  type metadata accessor for CGColorRef(0);
  colors = Array._bridgeToObjectiveC()().super.isa;

  if (one-time initialization token for colorsSpace != -1)
  {
    swift_once();
  }

  v19 = 0;
  v20 = static PlaylistCovers.colorsSpace;
  v21 = a4 / 9.0;
  while (1)
  {
    v22 = *(&outlined read-only object #0 of closure #1 in static PlaylistCovers.expression4(_:_:_:) + v19 + 32);
    v23 = CGGradientCreateWithColors(v20, colors, *(&outlined read-only object #11 of closure #1 in static PlaylistCovers.expression4(_:_:_:) + v19 + 32) + 4);
    if (v23)
    {
      v24 = v23;
      v25 = v22 * a5;
      v26 = [a1 CGContext];
      CGContextSaveGState(v26);

      [a1 clipToRect:{v15, a5 - v25, v21, v25}];
      v27 = [a1 CGContext];
      v38.x = v15;
      v38.y = a5;
      v40.x = v15;
      v40.y = a5 - v25;
      CGContextDrawLinearGradient(v27, v24, v38, v40, 0);

      v28 = [a1 CGContext];
      CGContextRestoreGState(v28);
    }

    if (v19 == 64)
    {
      break;
    }

    v15 = v21 + v15;
    v19 += 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd);
  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004F2FF0;
  *(v29 + 32) = [a7 CGColor];
  v30 = [a7 colorWithAlphaComponent:0.0];
  v31 = [v30 CGColor];

  *(v29 + 40) = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = CGGradientCreateWithColors(v20, isa, dbl_1005A6928);

  if (v33)
  {
    v34 = [a1 CGContext];
    v39.x = a4 * 0.145;
    v39.y = a5 * 0.23;
    v41.x = a4 * 0.145;
    v41.y = a5 * 0.23;
    CGContextDrawRadialGradient(v34, v33, v39, 0.0, v41, a4 * 0.3715, 0);

    v35 = v34;
  }

  else
  {
    v35 = colors;
  }
}

void closure #1 in static PlaylistCovers.expression5(_:_:_:)(void *a1, void *a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  if (one-time initialization token for colorsSpace != -1)
  {
    swift_once();
  }

  v13 = static PlaylistCovers.colorsSpace;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F3060;
  *(v14 + 32) = [a2 CGColor];
  *(v14 + 40) = [a6 CGColor];
  *(v14 + 48) = [a7 CGColor];
  *(v14 + 56) = [a2 CGColor];
  *(v14 + 64) = [a6 CGColor];
  *(v14 + 72) = [a7 CGColor];
  type metadata accessor for CGColorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = CGGradientCreateWithColors(v13, isa, dbl_1005A69C0);

  if (v16)
  {
    v17 = [a1 CGContext];
    v27.x = a3 * 0.5;
    v27.y = a4 * 0.5;
    CGContextDrawConicGradient(v17, v16, v27, -0.77562432);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004F2F80;
  *(v18 + 32) = [a2 CGColor];
  v19 = [a2 colorWithAlphaComponent:0.7];
  v20 = [v19 CGColor];

  *(v18 + 40) = v20;
  v21 = [a2 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v18 + 48) = v22;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = CGGradientCreateWithColors(v13, v23, dbl_1005A6A10);

  if (v24)
  {
    v25 = [a1 CGContext];
    v29.y = a4 * 0.5;
    v28.x = 0.0;
    v28.y = 0.0;
    v29.x = 0.0;
    CGContextDrawLinearGradient(v25, v24, v28, v29, 0);
  }
}

void closure #1 in static PlaylistCovers.expression6(_:_:_:)(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  if (one-time initialization token for colorsSpace != -1)
  {
    swift_once();
  }

  v12 = static PlaylistCovers.colorsSpace;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F2F80;
  *(v13 + 32) = [a7 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  type metadata accessor for CGColorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1005A6A48);

  if (v15)
  {
    v16 = [a1 CGContext];
    v35.x = 0.0;
    v35.y = 0.0;
    v38.x = 0.0;
    v38.y = a5;
    CGContextDrawLinearGradient(v16, v15, v35, v38, 0);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004F2F80;
  *(v18 + 32) = [a7 CGColor];
  *(v18 + 40) = [a7 CGColor];
  v19 = [a7 colorWithAlphaComponent:0.0];
  v20 = [v19 CGColor];

  *(v18 + 48) = v20;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  v22 = CGGradientCreateWithColors(DeviceRGB, v21, dbl_1005A6A80);

  if (v22)
  {
    v23 = [a1 CGContext];
    v36.x = a4 * 0.5;
    v36.y = a5 * 0.907407407;
    v39.y = a5 * 0.5;
    v39.x = a4 * 0.5;
    CGContextDrawRadialGradient(v23, v22, v36, a4 * 0.0185185185, v39, a4 * 0.472222222, 3u);
  }

  v24 = CGColorSpaceCreateDeviceRGB();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004F3040;
  *(v25 + 32) = [a2 CGColor];
  *(v25 + 40) = [a2 CGColor];
  v26 = [a7 colorWithAlphaComponent:0.0];
  v27 = [v26 CGColor];

  *(v25 + 48) = v27;
  v28 = [a7 colorWithAlphaComponent:0.0];
  v29 = [v28 CGColor];

  *(v25 + 56) = v29;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  v31 = CGGradientCreateWithColors(v24, v30, dbl_1005A6AB8);

  if (v31)
  {
    v33 = [a1 CGContext];
    v37.x = a4 * 0.5;
    v37.y = a5 * 0.907407407;
    v40.y = a5 * 0.5;
    v40.x = a4 * 0.5;
    CGContextDrawRadialGradient(v33, v31, v37, a4 * 0.0185185185, v40, a4 * 0.472222222, 3u);
  }
}

void closure #1 in static PlaylistCovers.expression7(_:_:_:)(double a1, double a2, double a3, double a4)
{
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    [v10 drawInRect:{a1, a2, a3, a4}];
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in static PlaylistCovers.expression7(_:_:_:)(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, void *a11, void *a12)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1004F3040;
  *(v24 + 32) = [a2 CGColor];
  *(v24 + 40) = [a2 CGColor];
  *(v24 + 48) = [a3 CGColor];
  *(v24 + 56) = [a11 CGColor];
  type metadata accessor for CGColorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = CGGradientCreateWithColors(DeviceRGB, isa, dbl_1005A6AF8);

  if (v26)
  {
    v27 = [a1 CGContext];
    v48.x = a4 * 0.324074074;
    v51.x = a4 * 0.724074074;
    v48.y = 0.0;
    v51.y = a5;
    CGContextDrawLinearGradient(v27, v26, v48, v51, 3u);
  }

  v28 = [a1 CGContext];
  CGContextSaveGState(v28);

  v29 = [a1 CGContext];
  CGContextTranslateCTM(v29, 0.0, a9);

  v30 = [a1 CGContext];
  CGContextScaleCTM(v30, 1.0, -1.0);

  v31 = [a1 CGContext];
  v32 = [a12 CGImage];
  if (v32)
  {
    v33 = v32;
    v54.origin.x = a6;
    v54.origin.y = a7;
    v54.size.width = a8;
    v54.size.height = a9;
    CGContextClipToMask(v31, v54, v32);

    v34 = CGColorSpaceCreateDeviceRGB();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1004F3040;
    *(v35 + 32) = [a11 CGColor];
    *(v35 + 40) = [a3 CGColor];
    *(v35 + 48) = [a2 CGColor];
    *(v35 + 56) = [a2 CGColor];
    v36 = Array._bridgeToObjectiveC()().super.isa;

    v37 = CGGradientCreateWithColors(v34, v36, dbl_1005A6B38);

    if (v37)
    {
      v38 = [a1 CGContext];
      v49.y = 0.0;
      v52.x = 0.0;
      v49.x = a4;
      v52.y = a5;
      CGContextDrawLinearGradient(v38, v37, v49, v52, 0);
    }

    v39 = [a1 CGContext];
    CGContextRestoreGState(v39);

    v40 = CGColorSpaceCreateDeviceRGB();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1004F2FF0;
    *(v41 + 32) = [a2 CGColor];
    v42 = [a3 colorWithAlphaComponent:0.0];
    v43 = [v42 CGColor];

    *(v41 + 40) = v43;
    v44 = Array._bridgeToObjectiveC()().super.isa;

    v45 = CGGradientCreateWithColors(v40, v44, dbl_1005A6B78);

    if (v45)
    {
      v46 = [a1 CGContext];
      v53.y = a5 * 0.5;
      v50.x = 0.0;
      v50.y = 0.0;
      v53.x = 0.0;
      CGContextDrawLinearGradient(v46, v45, v50, v53, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in static PlaylistCovers.expression8(_:_:_:)(void *a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v13 = [a1 CGContext];
  CGContextSetBlendMode(v13, kCGBlendModeNormal);

  [a2 setFill];
  [a1 fillRect:{0.0, 0.0, a3, a4}];
  if (one-time initialization token for colorsSpace != -1)
  {
    swift_once();
  }

  v14 = static PlaylistCovers.colorsSpace;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004F3000;
  *(v15 + 32) = [a2 CGColor];
  *(v15 + 40) = [a2 CGColor];
  *(v15 + 48) = [a6 CGColor];
  v16 = [a7 colorWithAlphaComponent:0.9];
  v17 = [v16 CGColor];

  *(v15 + 56) = v17;
  *(v15 + 64) = [a7 CGColor];
  type metadata accessor for CGColorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = CGGradientCreateWithColors(v14, isa, dbl_1005A6BA8);

  if (v19)
  {
    v20 = [a1 CGContext];
    v30.x = 0.0;
    v30.y = 0.0;
    v28.x = a3;
    v28.y = a4;
    CGContextDrawLinearGradient(v20, v19, v28, v30, 3u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2FF0;
  *(v21 + 32) = [a7 CGColor];
  v22 = [a7 colorWithAlphaComponent:0.0];
  v23 = [v22 CGColor];

  *(v21 + 40) = v23;
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = CGGradientCreateWithColors(v14, v24, dbl_1005A6BF0);

  if (v25)
  {
    v26 = [a1 CGContext];
    v31.y = a4 * 0.5;
    v29.x = 0.0;
    v29.y = 0.0;
    v31.x = 0.0;
    CGContextDrawLinearGradient(v26, v25, v29, v31, 3u);
  }
}

uint64_t closure #2 in static PlaylistCovers.expression8(_:_:_:)(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for CGPathFillRule();
  result = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 / 3.0;
  if (a2 / 3.0 == 0.0)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v12 = a2 >= 0.0;
  if (v11 > 0.0)
  {
    v12 = a2 <= 0.0;
  }

  if (!v12)
  {
    v13 = 0;
    v14 = a3 / 3.0;
    v15 = a3 >= 0.0;
    if (a3 / 3.0 > 0.0)
    {
      v15 = a3 <= 0.0;
    }

    v29 = v15;
    v31 = enum case for CGPathFillRule.winding(_:);
    v16 = (v8 + 104);
    v17 = (v8 + 8);
    v28 = a2;
    while (1)
    {
      v20 = __OFADD__(v13, 1);
      v21 = v13 + 1;
      if (v20)
      {
        break;
      }

      if (v14 == 0.0)
      {
        goto LABEL_23;
      }

      v30 = v21;
      if (!v29)
      {
        v22 = 0;
        while (!__OFADD__(v22, 1))
        {
          v23 = (v22 + 1) * v14 + 0.0;
          Mutable = CGPathCreateMutable();
          v33 = 0;
          v34 = 0;
          v32 = 0x3FF0000000000000;
          v35 = 0x3FF0000000000000;
          v36 = 0;
          v37 = 0;
          CGMutablePathRef.addRoundedRect(in:cornerWidth:cornerHeight:transform:)();
          v25 = [a1 CGContext];
          CGContextAddPath(v25, Mutable);

          v26 = [a1 CGContext];
          (*v16)(v10, v31, v6);
          CGContextRef.fillPath(using:)();

          result = (*v17)(v10, v6);
          v27 = v23 <= a3;
          if (v14 > 0.0)
          {
            v27 = v23 >= a3;
          }

          ++v22;
          if (v27)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

LABEL_9:
      v13 = v30;
      v18 = v30 * v11 + 0.0;
      v19 = v18 <= v28;
      if (v11 > 0.0)
      {
        v19 = v18 >= v28;
      }

      if (v19)
      {
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void closure #3 in static PlaylistCovers.expression8(_:_:_:)(void *a1, int a2, int a3, int a4, id a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, void *a10, id *a11)
{
  [a5 setFill];
  [a1 fillRect:0 blendMode:{a6, a7, a8, a9}];
  v18 = [a1 CGContext];
  CGContextSaveGState(v18);

  v19 = [a1 CGContext];
  v20 = [a10 CGImage];
  if (v20)
  {
    v21 = v20;
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGContextClipToMask(v19, v24, v20);

    [*a11 drawInRect:0 blendMode:a6 alpha:{a7, a8, a9, 1.0}];
    v22 = [a1 CGContext];
    CGContextRestoreGState(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t specialized PlaylistCovers.Expression.init(rawValue:)(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t specialized static PlaylistCovers.expression7(_:_:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in static PlaylistCovers.expression7(_:_:_:);
  *(v14 + 24) = v13;
  v33 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v34 = v14;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v32 = &block_descriptor_117_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 imageWithActions:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    *(v18 + 48) = a6;
    *(v18 + 56) = a7;
    *(v18 + 64) = 0;
    *(v18 + 72) = 0;
    *(v18 + 80) = a6;
    *(v18 + 88) = a7;
    *(v18 + 96) = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #2 in static PlaylistCovers.expression7(_:_:_:);
    *(v19 + 24) = v18;
    v33 = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
    v34 = v19;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    v32 = &block_descriptor_127;
    v20 = _Block_copy(&aBlock);
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = v16;

    v26 = [v12 imageWithActions:v20];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(a1, a2, v6, v9, v10, v11, v12, v13, v7, v8);
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.Expression and conformance PlaylistCovers.Expression()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.Expression and conformance PlaylistCovers.Expression;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.Expression and conformance PlaylistCovers.Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.Expression and conformance PlaylistCovers.Expression);
  }

  return result;
}

uint64_t sub_10022C2B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(a1, v6, v7, v4, v5, v12, v8, v9, v10, v11);
}

uint64_t sub_10022C41C()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MusicCore14PlaylistCoversO10ExpressionO_So7UIImageC5image_So7UIColorC9textColortt_TG5(a1, v4);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10022C53C()
{

  return swift_deallocObject();
}

uint64_t sub_10022C654()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{

  return swift_deallocObject();
}

uint64_t sub_10022C764()
{

  return swift_deallocObject();
}

uint64_t Logger.playlistCovers.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistCovers != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.playlistCovers);
}

uint64_t PlaylistCovers.RecipeColors.description.getter(void *a1, void *a2, void *a3, void *a4)
{
  _StringGuts.grow(_:)(60);
  v8._object = 0x80000001004CDB00;
  v8._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v8);
  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x32726F6C6F63202CLL;
  v14._object = 0xEA0000000000203ALL;
  String.append(_:)(v14);
  v15 = [a2 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x33726F6C6F63202CLL;
  v20._object = 0xEA0000000000203ALL;
  String.append(_:)(v20);
  v21 = [a3 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x34726F6C6F63202CLL;
  v26._object = 0xEA0000000000203ALL;
  String.append(_:)(v26);
  v27 = [a4 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  return 0;
}

uint64_t static PlaylistCovers.RecipeColors.__derived_struct_equals(_:_:)()
{
  type metadata accessor for NSObject();
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PlaylistCovers.RecipeColors.hash(into:)()
{
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int PlaylistCovers.RecipeColors.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlaylistCovers.RecipeColors()
{
  type metadata accessor for NSObject();
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlaylistCovers.RecipeColors()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PlaylistCovers.RecipeColors()
{
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlaylistCovers.RecipeColors()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)(uint64_t a1)
{
  v1[17] = a1;
  v2 = type metadata accessor for Playlist.Entry.InternalItem();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Entry();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  v1[24] = swift_task_alloc();
  v4 = type metadata accessor for Track();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
  v1[31] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
  v1[32] = v5;
  v1[33] = *(v5 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = type metadata accessor for PlaylistCovers.Source();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(static PlaylistCovers.recipeColorsForSource(_:), 0, 0);
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)()
{
  outlined init with copy of PlaylistCovers.Source(*(v0 + 136), *(v0 + 288));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 288);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    *(v0 + 344) = *v2;
    v4 = *(v3 + 16);
    *(v0 + 352) = v4;
    if (!v4)
    {
LABEL_19:

      goto LABEL_20;
    }

    *(v0 + 404) = *(*(v0 + 176) + 80);
    *(v0 + 408) = enum case for Playlist.Entry.InternalItem.musicMovie(_:);
    *(v0 + 412) = enum case for Playlist.Entry.InternalItem.musicVideo(_:);
    *(v0 + 416) = enum case for Playlist.Entry.InternalItem.song(_:);
    *(v0 + 360) = 0;
    if (*(v3 + 16))
    {
      v5 = 0;
      do
      {
        (*(*(v0 + 176) + 16))(*(v0 + 184), v3 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v5, *(v0 + 168));
        v6 = Playlist.Entry.catalogID.getter();
        *(v0 + 368) = v7;
        if (v7)
        {
          v8 = v7;
          v9 = v6;
          v10 = *(v0 + 408);
          v12 = *(v0 + 152);
          v11 = *(v0 + 160);
          v13 = *(v0 + 144);
          Playlist.Entry.internalItem.getter();
          v14 = (*(v12 + 88))(v11, v13);
          if (v14 != v10)
          {
            v15 = *(v0 + 412);
            if (v14 == v15 || v14 == *(v0 + 416))
            {
              v63 = v14 == v15;
              (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
              Playlist.Entry.artwork.getter();
              v64 = swift_task_alloc();
              *(v0 + 376) = v64;
              *v64 = v0;
              v64[1] = static PlaylistCovers.recipeColorsForSource(_:);
              v59 = *(v0 + 192);
              v60 = v9;
              v61 = v8;
              v62 = v63;
              goto LABEL_33;
            }
          }

          v18 = *(v0 + 152);
          v17 = *(v0 + 160);
          v19 = *(v0 + 144);

          (*(v18 + 8))(v17, v19);
        }

        v20 = *(v0 + 352);
        v21 = *(v0 + 360) + 1;
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        if (v21 == v20)
        {
          goto LABEL_19;
        }

        v5 = *(v0 + 360) + 1;
        *(v0 + 360) = v5;
        v3 = *(v0 + 344);
      }

      while (v5 < *(v3 + 16));
    }

    __break(1u);
  }

  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v26 = *(v0 + 240);
  (*(v23 + 32))(v22, v2, v24);
  (*(v23 + 16))(v25, v22, v24);
  *(v0 + 392) = *(v26 + 36);
  *(v0 + 296) = lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>();
  dispatch thunk of Collection.startIndex.getter();
  *(v0 + 396) = enum case for Track.song(_:);
  *(v0 + 400) = enum case for Track.musicVideo(_:);
  v27 = *(v0 + 392);
  v28 = *(v0 + 248);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v28 + v27) == *(v0 + 128))
  {
LABEL_18:
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    outlined destroy of TaskPriority?(*(v0 + 248), &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
    (*(v41 + 8))(v40, v42);
LABEL_20:
    if (one-time initialization token for fallbackColors != -1)
    {
      swift_once();
    }

    v43 = *algn_10063D6E8;
    v45 = qword_10063D6F0;
    v44 = unk_10063D6F8;
    v68 = static PlaylistCovers.Specs.fallbackColors;
    v66 = v43;
    v46 = v45;
    v47 = v44;

    v48 = *(v0 + 8);

    return v48(v68, v66, v46, v47);
  }

  while (1)
  {
    v29 = *(v0 + 232);
    v67 = *(v0 + 224);
    v30 = *(v0 + 208);
    v65 = *(v0 + 200);
    v31 = dispatch thunk of Collection.subscript.read();
    v32 = *(v30 + 16);
    v32(v29);
    v31(v0 + 96, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v30 + 32))(v67, v29, v65);
    v33 = Track.catalogID.getter();
    v35 = v34;
    *(v0 + 304) = v34;
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    if (v35)
    {
      break;
    }

    v38 = *(v0 + 392);
    v39 = *(v0 + 248);
    (*(v37 + 8))(*(v0 + 224), v36);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v39 + v38) == *(v0 + 128))
    {
      goto LABEL_18;
    }
  }

  v50 = *(v0 + 400);
  v51 = *(v0 + 396);
  v52 = *(v0 + 216);
  v69 = v33;
  v53 = *(v0 + 200);
  (v32)(v52, *(v0 + 224), v36);
  v54 = (*(v37 + 88))(v52, v53);
  v56 = v54 != v51 && v54 == v50;
  v57 = *(v37 + 8);
  *(v0 + 312) = v57;
  *(v0 + 320) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v52, v53);
  Track.artwork.getter();
  v58 = swift_task_alloc();
  *(v0 + 328) = v58;
  *v58 = v0;
  v58[1] = static PlaylistCovers.recipeColorsForSource(_:);
  v59 = *(v0 + 192);
  v60 = v69;
  v61 = v35;
  v62 = v56;
LABEL_33:

  return static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:)(v60, v61, v62, v59);
}

{
  v1 = *(v0 + 336);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  if (v1)
  {
    v37 = *(v0 + 32);
    v39 = *(v0 + 336);
    v36 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    outlined destroy of TaskPriority?(*(v0 + 248), &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
    (*(v3 + 8))(v4, v5);
LABEL_9:

    v22 = *(v0 + 8);

    return v22(v39, v37, v36, v2);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 248);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v7 + v6) == *(v0 + 128))
  {
LABEL_6:
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    outlined destroy of TaskPriority?(*(v0 + 248), &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
    (*(v17 + 8))(v16, v18);
    if (one-time initialization token for fallbackColors != -1)
    {
      swift_once();
    }

    v19 = *algn_10063D6E8;
    v20 = qword_10063D6F0;
    v21 = unk_10063D6F8;
    v39 = static PlaylistCovers.Specs.fallbackColors;
    v37 = v19;
    v36 = v20;
    v2 = v21;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = *(v0 + 232);
    v40 = *(v0 + 224);
    v9 = *(v0 + 208);
    v35 = *(v0 + 200);
    v10 = dispatch thunk of Collection.subscript.read();
    v11 = *(v9 + 16);
    v11(v8);
    v10(v0 + 96, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v9 + 32))(v40, v8, v35);
    v12 = Track.catalogID.getter();
    *(v0 + 304) = v13;
    if (v13)
    {
      break;
    }

    v14 = *(v0 + 392);
    v15 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    dispatch thunk of Collection.endIndex.getter();
    if (*(v15 + v14) == *(v0 + 128))
    {
      goto LABEL_6;
    }
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 396);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v0 + 200);
  v38 = v13;
  v41 = v12;
  (v11)(v27, *(v0 + 224), v28);
  v29 = (*(v26 + 88))(v27, v28);
  v31 = v29 != v25 && v29 == v24;
  v32 = *(v26 + 8);
  *(v0 + 312) = v32;
  *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v28);
  Track.artwork.getter();
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *v33 = v0;
  v33[1] = static PlaylistCovers.recipeColorsForSource(_:);
  v34 = *(v0 + 192);

  return static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:)(v41, v38, v31, v34);
}

{
  v1 = *(v0 + 384);
  if (!v1)
  {
    while (1)
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 360) + 1;
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      if (v9 == v8)
      {
        break;
      }

      v10 = *(v0 + 360) + 1;
      *(v0 + 360) = v10;
      v11 = *(v0 + 344);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_17:
        v27 = *algn_10063D6E8;
        v28 = qword_10063D6F0;
        v29 = unk_10063D6F8;
        v1 = static PlaylistCovers.Specs.fallbackColors;
        v33 = v27;
        v32 = v28;
        v31 = v29;
        goto LABEL_18;
      }

      (*(*(v0 + 176) + 16))(*(v0 + 184), v11 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v10, *(v0 + 168));
      v12 = Playlist.Entry.catalogID.getter();
      *(v0 + 368) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v0 + 408);
        v18 = *(v0 + 152);
        v17 = *(v0 + 160);
        v19 = *(v0 + 144);
        Playlist.Entry.internalItem.getter();
        v20 = (*(v18 + 88))(v17, v19);
        if (v20 != v16)
        {
          v21 = *(v0 + 412);
          if (v20 == v21 || v20 == *(v0 + 416))
          {
            v23 = v20 == v21;
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
            Playlist.Entry.artwork.getter();
            v24 = swift_task_alloc();
            *(v0 + 376) = v24;
            *v24 = v0;
            v24[1] = static PlaylistCovers.recipeColorsForSource(_:);
            v25 = *(v0 + 192);

            return static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:)(v15, v14, v23, v25);
          }
        }

        v6 = *(v0 + 152);
        v5 = *(v0 + 160);
        v7 = *(v0 + 144);

        (*(v6 + 8))(v5, v7);
      }
    }

    if (one-time initialization token for fallbackColors != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 72);
  v31 = *(v0 + 88);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v2 + 8))(v3, v4);
LABEL_18:

  v30 = *(v0 + 8);

  return v30(v1, v33, v32, v31);
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[24];
  v6[42] = a1;

  outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd);

  return _swift_task_switch(static PlaylistCovers.recipeColorsForSource(_:), 0, 0);
}

{
  v5 = *v4;
  v6 = *v4;
  v6[7] = v4;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v7 = v5[24];
  v6[48] = a1;

  outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd);

  return _swift_task_switch(static PlaylistCovers.recipeColorsForSource(_:), 0, 0);
}

uint64_t static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 256) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for Artwork();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:), 0, 0);
}

uint64_t static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  outlined init with copy of Artwork?(*(v0 + 32), v3);
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  *(v0 + 96) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 48), &_s8MusicKit7ArtworkVSgMd);
LABEL_16:
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:);
    v16 = *(v0 + 40);
    v17 = *(v0 + 256);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    return static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:)(v16, v18, v19, v17);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  v5 = Artwork.backgroundColor.getter();
  *(v0 + 104) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    goto LABEL_16;
  }

  v6 = v5;
  v7 = Artwork.primaryTextColor.getter();
  *(v0 + 112) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  v9 = Artwork.secondaryTextColor.getter();
  *(v0 + 120) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v10 = v9;
  v11 = Artwork.tertiaryTextColor.getter();
  *(v0 + 128) = v11;
  if (!v11)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

    goto LABEL_14;
  }

  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:);

  return specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:)(v6, v8, v10, v12);
}

{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

{

  return _swift_task_switch(static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if ((*(v0 + 88))(v2, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s8MusicKit7ArtworkVSgMd);
LABEL_16:

    v13 = *(v0 + 8);

    return v13(0, 0, 0, 0);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 72), v2, v1);
  v3 = Artwork.backgroundColor.getter();
  *(v0 + 184) = v3;
  if (!v3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_16;
  }

  v4 = v3;
  v5 = Artwork.primaryTextColor.getter();
  *(v0 + 192) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v6 = v5;
  v7 = Artwork.secondaryTextColor.getter();
  *(v0 + 200) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v8 = v7;
  v9 = Artwork.tertiaryTextColor.getter();
  *(v0 + 208) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    goto LABEL_14;
  }

  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:);

  return specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:)(v4, v6, v8, v10);
}

{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}