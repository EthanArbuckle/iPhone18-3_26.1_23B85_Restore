uint64_t closure #1 in closure #1 in Player.getNowPlaying()(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    swift_allocError();
    *v4 = a2;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v6 = a1;

    return swift_continuation_throwingResume();
  }
}

void Player.nowPlayingConfiguration.didset()
{
  v1 = Player.nowPlayingDataSource.getter();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

  v3 = (v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = *v3;
  v6 = v4;

  v8 = specialized Player.NowPlayingConfiguration.tracklistRange.getter(v7);
  v10 = v9;

  v11 = [v2 playingItemProperties];
  if (v11 && (v12 = v11, v13 = [v11 containsPropertySet:*v3], v12, v13) && (v14 = objc_msgSend(v2, "queueSectionProperties")) != 0)
  {
    v15 = v14;
    v16 = [v14 containsPropertySet:v3[1]];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  if ([v2 tracklistRange] != v8 || (v17 & 1) != 0 || v18 != v10)
  {
    [v2 setPlayingItemProperties:*v3];
    [v2 setQueueItemProperties:*v3];
    [v2 setQueueSectionProperties:v3[1]];
    [v2 setTracklistRange:{v8, v10}];
    v19 = Player.playbackDataSource.getter();
    v20 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

    [v20 setPlayingItemProperties:*v3];
    v21 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v0 + v21) == 2)
    {
      v22 = *(*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource) + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller);
      v23 = v22;
      v24 = &selRef_setNeedsReloadForSignificantRequestChange;
      if (!v17)
      {
        v24 = &selRef_setNeedsReload;
      }

      [v22 *v24];
    }
  }
}

id Player.nowPlayingConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;

  return v2;
}

void Player.nowPlayingConfiguration.setter(void *a1, void *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v10 = a1;
  v11 = a2;

  Player.nowPlayingConfiguration.didset();
}

void (*Player.nowPlayingConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Player.nowPlayingConfiguration.modify;
}

void Player.nowPlayingConfiguration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Player.nowPlayingConfiguration.didset();
  }
}

unint64_t specialized Player.NowPlayingConfiguration.BadCountedSet.insert(_:)(Swift::UInt a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = v10;
LABEL_6:
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Dictionary.subscript.getter();
  if (v11)
  {
    (*(v4 + 16))(v6, a1, v3);
    v7 = 1;
LABEL_4:
    v10 = v7;
    v11 = 0;
    type metadata accessor for Dictionary();
    return Dictionary.subscript.setter();
  }

  v8 = v10;
  result = (*(v4 + 16))(v6, a1, v3);
  v7 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

Swift::UInt specialized Player.NowPlayingConfiguration.BadCountedSet.remove(_:)(Swift::UInt result, Swift::UInt a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v5 = a2;
    v6 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * result);
      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v9 > 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v3;
        result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v6, v5, isUniquelyReferenced_nonNull_native);
        *v3 = v15;
        return result;
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      if (v11)
      {
        v5 = result;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v3;
        v14 = *v3;
        if (v12)
        {
LABEL_8:
          result = specialized _NativeDictionary._delete(at:)(v5, v13);
          *v3 = v13;
          return result;
        }

LABEL_11:
        specialized _NativeDictionary.copy()();
        v13 = v14;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Dictionary.subscript.getter();
  if (v10 != 1)
  {
    v8 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      if (v8 < 1)
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v9 = v8;
        v10 = 0;
      }

      type metadata accessor for Dictionary();
      return Dictionary.subscript.setter();
    }
  }

  return result;
}

double Player.NowPlayingConfiguration.BadCountedSet.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Player.NowPlayingConfiguration.BadCountedSet.makeIterator()(a1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);
  result = *&v7;
  v5 = v8;
  *a2 = v7;
  *(a2 + 16) = v5;
  *(a2 + 32) = v9;
  return result;
}

double protocol witness for Sequence.makeIterator() in conformance Player.NowPlayingConfiguration.BadCountedSet<A>@<D0>(uint64_t a1@<X8>)
{
  specialized Player.NowPlayingConfiguration.BadCountedSet.makeIterator()(*v1, &v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v3 = type metadata accessor for Dictionary.Iterator._Variant();
  (*(*(v3 - 8) + 16))(&v6, v10, v3);

  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v9;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Player.NowPlayingConfiguration.BadCountedSet<A>()
{
  v0 = specialized Sequence._copyToContiguousArray()();

  return v0;
}

BOOL Player.canPerform(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0Tm(a1, v2);

  return specialized Player.canPerform(_:)(v4, v1, v2, v3);
}

uint64_t Player.canPerform(anyOf:)(uint64_t a1)
{
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v2 = swift_conformsToProtocol2();
    v3 = 0;
    if (v2 && a1)
    {
      v3 = (*(v2 + 16))(v5, a1, v2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 376) = v6;
  *(v7 + 368) = a6;
  *(v7 + 352) = a4;
  *(v7 + 360) = a5;
  *(v7 + 608) = a3;
  *(v7 + 336) = a1;
  *(v7 + 344) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  *(v7 + 400) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_GGMd);
  *(v7 + 408) = v8;
  v9 = *(v8 - 8);
  *(v7 + 416) = v9;
  *(v7 + 424) = *(v9 + 64);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = type metadata accessor for Player.CommandIssuance();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = type metadata accessor for MainActor();
  *(v7 + 496) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 504) = v11;
  *(v7 + 512) = v10;

  return _swift_task_switch(Player.performWhenAvailable(_:options:issuer:timeout:), v11, v10);
}

uint64_t Player.performWhenAvailable(_:options:issuer:timeout:)()
{
  v76 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(v2, v3);
  if (specialized Player.canPerform(_:)(v5, v1, v3, v4))
  {
    v6 = *(v0 + 336);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
    v7 = swift_allocObject();
    *(v0 + 576) = v7;
    *(v7 + 16) = xmmword_1004F2400;
    outlined init with copy of ActionPerforming(v6, v7 + 32);
    v8 = swift_task_alloc();
    *(v0 + 584) = v8;
    *v8 = v0;
    v8[1] = Player.performWhenAvailable(_:options:issuer:timeout:);
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = *(v0 + 608);
    v12 = *(v0 + 344);

    return Player.perform(_:options:issuer:)(v7, v12, v11, v9, v10);
  }

  else
  {
    outlined init with copy of TaskPriority?(*(v0 + 360), v0 + 80, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    v14 = *(v0 + 104);
    if (v14)
    {
      v15 = *(v0 + 112);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 80), *(v0 + 104));
      v16 = (*(v15 + 8))(v14, v15);
      v14 = v17;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 80, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
      v16 = 0;
    }

    v18 = *(v0 + 480);
    v19 = *(v0 + 448);
    UUID.init()();
    v20 = (v18 + *(v19 + 20));
    *v20 = v16;
    v20[1] = v14;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    *(v0 + 520) = __swift_project_value_buffer(v21, static Player.logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "╭ ⏱️ Await for command", v24, 2u);
    }

    v26 = *(v0 + 472);
    v25 = *(v0 + 480);

    outlined init with copy of Player.CommandIssuance(v25, v26);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 472);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136446210;
      v33 = Player.CommandIssuance.description.getter();
      v35 = v34;
      outlined destroy of Player.CommandIssuance(v30);
      v36 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v33, v35, &v75);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "| issuance=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {

      outlined destroy of Player.CommandIssuance(v30);
    }

    v37 = *(v0 + 352);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 608);
      v42 = *(v0 + 344);
      v41 = *(v0 + 352);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v43 = 136446210;
      v45 = Player.CommandOptions.description.getter(v42, v40, v41);
      v47 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v45, v46, &v75);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "╰ options=%{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
    }

    outlined init with copy of ActionPerforming(*(v0 + 336), v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC18_NowPlayingCommand_pMd);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 160);
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    v48 = *(v0 + 432);
    v49 = *(v0 + 440);
    v50 = *(v0 + 416);
    v71 = *(v0 + 424);
    v51 = *(v0 + 408);
    v68 = v51;
    v69 = v48;
    v52 = *(v0 + 384);
    v53 = *(v0 + 376);
    v70 = *(v0 + 360);
    v74 = *(v0 + 352);
    v73 = *(v0 + 608);
    v54 = *(v0 + 336);
    v72 = *(v0 + 344);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
    AsyncPublisher.init(_:)();
    v55 = type metadata accessor for TaskPriority();
    *(v0 + 528) = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 56);
    *(v0 + 536) = v57;
    *(v0 + 544) = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57(v52, 1, 1, v55);
    (*(v50 + 16))(v48, v49, v51);
    outlined init with copy of ActionPerforming(v54, v0 + 200);
    outlined init with copy of TaskPriority?(v70, v0 + 240, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    v58 = v37;

    v59 = static MainActor.shared.getter();
    v60 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v61 = (v71 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 47) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    *(v64 + 24) = &protocol witness table for MainActor;
    (*(v50 + 32))(v64 + v60, v69, v68);
    outlined init with take of ActionPerforming((v0 + 200), v64 + v61);
    *(v64 + v62) = v53;
    v65 = v64 + v63;
    *v65 = v72;
    *(v65 + 8) = v73;
    *(v65 + 16) = v74;
    v66 = v64 + ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
    v67 = *(v0 + 256);
    *v66 = *(v0 + 240);
    *(v66 + 16) = v67;
    *(v66 + 32) = *(v0 + 272);
    *(v0 + 552) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22MPCPlayerCommandStatusCSg_Tt2g5(0, 0, v52, &async function pointer to partial apply for closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:), v64);

    return _swift_task_switch(Player.performWhenAvailable(_:options:issuer:timeout:), 0, 0);
  }
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 41;
  v5 = v0[69];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[48];
  v9 = v1[46];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = Player.performWhenAvailable(_:options:issuer:timeout:);
  v10 = swift_continuation_init();
  v6(v8, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v9;
  v11[6] = v5;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22MPCPlayerCommandStatusCSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for specialized closure #1 in closure #1 in Task.withTimeout(_:), v11);

  return _swift_continuation_await(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = v1[63];
    v4 = v1[64];
    v5 = Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  else
  {
    v1[71] = v1[41];
    v3 = v1[63];
    v4 = v1[64];
    v5 = Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v25 = v0;
  v1 = v0[60];
  v2 = v0[58];

  outlined init with copy of Player.CommandIssuance(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[60];
  v7 = v0[58];
  v8 = v0[55];
  v10 = v0[51];
  v9 = v0[52];
  if (v5)
  {
    v23 = v0[51];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v21 = v8;
    v22 = v6;
    v13 = Player.CommandIssuance.description.getter();
    v15 = v14;
    outlined destroy of Player.CommandIssuance(v7);
    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "⏱️✅ Command became available (%{public}s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);

    (*(v9 + 8))(v21, v23);
    v17 = v22;
  }

  else
  {

    outlined destroy of Player.CommandIssuance(v7);
    (*(v9 + 8))(v8, v10);
    v17 = v6;
  }

  outlined destroy of Player.CommandIssuance(v17);
  v18 = v0[71];

  v19 = v0[1];

  return v19(v18);
}

{
  v20 = v0;
  v1 = v0[60];
  v2 = v0[57];

  outlined init with copy of Player.CommandIssuance(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[57];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = Player.CommandIssuance.description.getter();
    v11 = v10;
    outlined destroy of Player.CommandIssuance(v6);
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "⌛️❌ Timed out waiting for command (%{public}s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {

    outlined destroy of Player.CommandIssuance(v6);
  }

  v13 = v0[60];
  v14 = v0[55];
  v15 = v0[51];
  v16 = v0[52];
  swift_willThrow();
  (*(v16 + 8))(v14, v15);
  outlined destroy of Player.CommandIssuance(v13);

  v17 = v0[1];

  return v17();
}

{
  v1 = *(v0 + 592);

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

    v3 = *(*(v0 + 592) + 32);
  }

LABEL_9:

  v4 = *(v0 + 8);

  return v4(v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1)
{
  v3 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v4 = v3[63];
    v5 = v3[64];
    v6 = Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  else
  {

    v4 = v3[63];
    v5 = v3[64];
    v6 = Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = v14;
  *(v8 + 200) = v15;
  *(v8 + 328) = a8;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 152) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_G_GMd);
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = type metadata accessor for MainActor();
  *(v8 + 240) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 248) = v11;
  *(v8 + 256) = v10;

  return _swift_task_switch(closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:), v11, v10);
}

uint64_t closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_GGMd);
  AsyncPublisher.makeAsyncIterator()();
  v0[33] = static MainActor.shared.getter();
  v1 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<MPCPlayerResponse?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_G_GMd);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:);
  v3 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 17, v3, v1);
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  return _swift_task_switch(v7, v4, v6);
}

{

  v0[36] = v0[17];
  v1 = v0[31];
  v2 = v0[32];

  return _swift_task_switch(closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:), v1, v2);
}

{
  v1 = *(v0 + 288);
  if (v1)
  {
    if (v1 == 1)
    {
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

      **(v0 + 152) = 0;

      v2 = *(v0 + 8);

      return v2();
    }

    outlined init with copy of ActionPerforming(*(v0 + 168), v0 + 56);
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC8_Command_pMd);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 288);
    if (v5)
    {
      outlined init with take of ActionPerforming((v0 + 96), v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 16), v7);
      v9 = (*(v8 + 24))(v4, v7, v8);
      outlined consume of MPCPlayerResponse??(v6);
      if (v9)
      {
        v10 = *(v0 + 168);

        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
        v11 = swift_allocObject();
        *(v0 + 296) = v11;
        *(v11 + 16) = xmmword_1004F2400;
        outlined init with copy of ActionPerforming(v10, v11 + 32);
        v12 = swift_task_alloc();
        *(v0 + 304) = v12;
        *v12 = v0;
        v12[1] = closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:);
        v13 = *(v0 + 192);
        v14 = *(v0 + 200);
        v15 = *(v0 + 328);
        v16 = *(v0 + 184);

        return Player.perform(_:options:issuer:)(v11, v16, v15, v13, v14);
      }

      outlined consume of MPCPlayerResponse??(*(v0 + 288));
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
    }

    else
    {
      outlined consume of MPCPlayerResponse??(*(v0 + 288));
      outlined consume of MPCPlayerResponse??(v6);
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      outlined destroy of TaskPriority?(v0 + 96, &_s9MusicCore6PlayerC8_Command_pSgMd);
    }
  }

  *(v0 + 264) = static MainActor.shared.getter();
  v17 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<MPCPlayerResponse?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_G_GMd);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:);
  v19 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 136, v19, v17);
}

{
  *(v0 + 144) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v1 = *(v0 + 312);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = *(v0 + 288);

    outlined consume of MPCPlayerResponse??(v5);
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

    v3 = *(*(v0 + 312) + 32);
  }

  v4 = *(v0 + 288);

  outlined consume of MPCPlayerResponse??(v4);
LABEL_9:
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  **(v0 + 152) = v3;

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  outlined consume of MPCPlayerResponse??(v1);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  else
  {
    v7 = closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:);
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t Player.perform(_:options:issuer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return _swift_task_switch(Player.perform(_:options:issuer:), v8, v7);
}

{
  *(v6 + 272) = a5;
  *(v6 + 280) = v5;
  *(v6 + 256) = a2;
  *(v6 + 264) = a4;
  *(v6 + 512) = a3;
  *(v6 + 248) = a1;
  v7 = type metadata accessor for Player.CommandIssuance();
  *(v6 + 288) = v7;
  v8 = *(v7 - 8);
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 + 64);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = type metadata accessor for MainActor();
  *(v6 + 400) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 408) = v10;
  *(v6 + 416) = v9;

  return _swift_task_switch(Player.perform(_:options:issuer:), v10, v9);
}

uint64_t Player.perform(_:options:issuer:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(v1, v2 + 32);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = Player.perform(_:options:issuer:);
  v4 = *(v0 + 40);
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return Player.perform(_:options:issuer:)(v2, v6, v5, v7, v4);
}

{
  v1 = *(v0 + 96);

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

    v3 = *(*(v0 + 96) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v77 = v0;
  v1 = *(*(v0 + 248) + 16);
  *(v0 + 424) = v1;
  if (v1)
  {
    outlined init with copy of TaskPriority?(*(v0 + 272), v0 + 128, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    v2 = *(v0 + 152);
    if (v2)
    {
      v3 = *(v0 + 160);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 128), *(v0 + 152));
      v4 = (*(v3 + 8))(v2, v3);
      v2 = v5;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 128);
    }

    else
    {
      outlined destroy of TaskPriority?(v0 + 128, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
      v4 = 0;
    }

    v8 = *(v0 + 384);
    v9 = *(v0 + 288);
    v10 = *(v0 + 248);
    UUID.init()();
    v11 = (v8 + *(v9 + 20));
    *v11 = v4;
    v11[1] = v2;
    *(v0 + 513) = specialized Collection<>.shouldPerformOnNowPlayingResponse.getter(v10) & 1;
    if (v1 == 1)
    {
      v12 = 0x646E616D6D6F63;
    }

    else
    {
      v12 = 0x73646E616D6D6F63;
    }

    if (v1 == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    *(v0 + 432) = __swift_project_value_buffer(v14, static Player.logger);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v75 = v12;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v76 = v18;
      *v17 = 136315138;
      *(v17 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v76);
      _os_log_impl(&_mh_execute_header, v15, v16, "╭ Will perform %s…", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    outlined init with copy of Player.CommandIssuance(*(v0 + 384), *(v0 + 376));
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 376);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136446210;
      v25 = Player.CommandIssuance.description.getter();
      v27 = v26;
      outlined destroy of Player.CommandIssuance(v22);
      v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v27, &v76);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "| issuance=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    else
    {

      outlined destroy of Player.CommandIssuance(v22);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd);
      v33 = Array.description.getter();
      v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v33, v34, &v76);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "| %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    v36 = *(v0 + 264);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 512);
      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 136446210;
      v44 = Player.CommandOptions.description.getter(v41, v39, v40);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v76);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "╰ options=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
    }

    v47 = *(v0 + 280);
    v48 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v47 + v48) != 2)
    {

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      v74 = v47;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136315138;
        *(v51 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v75, v13, &v76);
        _os_log_impl(&_mh_execute_header, v49, v50, "╭ 🕛 Pausing execution for %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
      }

      outlined init with copy of Player.CommandIssuance(*(v0 + 384), *(v0 + 368));
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 368);
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v76 = v58;
        *v57 = 136446210;
        v59 = Player.CommandIssuance.description.getter();
        v61 = v60;
        outlined destroy of Player.CommandIssuance(v56);
        v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, &v76);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "| issuance=%{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
      }

      else
      {

        outlined destroy of Player.CommandIssuance(v56);
      }

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v65 = 136446210;
        if (*(v74 + v48) > 1u)
        {
          if (*(v74 + v48) == 2)
          {
            v67 = 0xA900000000000079;
            v68 = 0x6461655220859CE2;
          }

          else
          {
            v67 = 0xAE0064656C6C6174;
            v68 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v74 + v48))
        {
          v67 = 0xAD0000676E697472;
          v68 = 0x61745320809A9FF0;
        }

        else
        {
          v67 = 0xA700000000000000;
          v68 = 0x66664F208C9DE2;
        }

        v69 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v68, v67, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "| engine state=%{public}s)", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
      }

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "╰ Awaiting on engine to be ready", v72, 2u);
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 440) = v73;
    *v73 = v0;
    v73[1] = Player.perform(_:options:issuer:);

    return Player.startEngineIfNeeded()();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(Player.perform(_:options:issuer:), v3, v2);
}

{
  v112 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = 0xE800000000000000;
    v3 = objc_allocWithZone(MPCPlayerRequest);
    v4 = v1;
    v5 = [v3 init];
    *(v0 + 448) = v5;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      if (*(v0 + 424) == 1)
      {
        v8 = 0x646E616D6D6F63;
      }

      else
      {
        v8 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v2 = 0xE700000000000000;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v111[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v2, v111);
      _os_log_impl(&_mh_execute_header, v6, v7, "╭ 🔊 Resolving specified route for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    outlined init with copy of Player.CommandIssuance(*(v0 + 384), *(v0 + 360));
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 360);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v111[0] = v16;
      *v15 = 136446210;
      v17 = Player.CommandIssuance.description.getter();
      v19 = v18;
      outlined destroy of Player.CommandIssuance(v14);
      v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, v111);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "| issuance=%{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    else
    {

      outlined destroy of Player.CommandIssuance(v14);
    }

    v40 = *(v0 + 264);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 264);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111[0] = v45;
      *v44 = 136446210;
      v46 = v43;
      v47 = [v46 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v48, v50, v111);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "╰ 🔊 Route=%{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
    }

    v52 = *(v0 + 264);
    v53 = objc_opt_self();
    v54 = one-time initialization token for systemMusic;
    v55 = v52;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = String._bridgeToObjectiveC()();
    v59 = [v53 systemMusicPathWithRoute:v57 playerID:v58];

    [v5 setPlayerPath:v59];
    v60 = OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
    swift_beginAccess();
    [v5 setPlayingItemProperties:*(v56 + v60)];
    v61 = static MainActor.shared.getter();
    *(v0 + 456) = v61;
    if (v61)
    {
      swift_getObjectType();
      v62 = dispatch thunk of Actor.unownedExecutor.getter();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    return _swift_task_switch(Player.perform(_:options:issuer:), v62, v64);
  }

  else
  {
    if (*(v0 + 513))
    {
      v21 = 232;
    }

    else
    {
      v21 = 216;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = *(v0 + v21);
    *(v0 + 480) = v22;
    if (v22)
    {
      v23 = 0xE800000000000000;

      v24 = v22;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        if (*(v0 + 424) == 1)
        {
          v27 = 0x646E616D6D6F63;
        }

        else
        {
          v27 = 0x73646E616D6D6F63;
        }

        if (*(v0 + 424) == 1)
        {
          v23 = 0xE700000000000000;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v111[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v23, v111);
        _os_log_impl(&_mh_execute_header, v25, v26, "╭ Performing %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
      }

      outlined init with copy of Player.CommandIssuance(*(v0 + 384), *(v0 + 344));
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 344);
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v111[0] = v35;
        *v34 = 136446210;
        v36 = Player.CommandIssuance.description.getter();
        v38 = v37;
        outlined destroy of Player.CommandIssuance(v33);
        v39 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v36, v38, v111);

        *(v34 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "| issuance=%{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
      }

      else
      {

        outlined destroy of Player.CommandIssuance(v33);
      }

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(v0 + 513);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v111[0] = v83;
        *v82 = 136446210;
        if (v81)
        {
          v84 = 0xD000000000000014;
        }

        else
        {
          v84 = 0x5220726579616C50;
        }

        if (v81)
        {
          v85 = 0x80000001004CCD90;
        }

        else
        {
          v85 = 0xEF65736E6F707365;
        }

        v86 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v84, v85, v111);

        *(v82 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v79, v80, "| on=%{public}s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
      }

      v87 = v24;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v111[0] = v91;
        *v90 = 136446210;
        v92 = [v87 playerPath];
        v93 = [v92 description];
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v95;

        v97 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v94, v96, v111);

        *(v90 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v88, v89, "╰ playerPath=%{public}s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v91);
      }

      v98 = *(v0 + 336);
      v99 = *(v0 + 288);
      UUID.init()();
      v100 = (v98 + *(v99 + 20));
      *v100 = 0;
      v100[1] = 0;
      v101 = swift_task_alloc();
      *(v0 + 488) = v101;
      *v101 = v0;
      v101[1] = Player.perform(_:options:issuer:);
      v102 = *(v0 + 336);
      v103 = *(v0 + 512);
      v105 = *(v0 + 248);
      v104 = *(v0 + 256);

      return specialized MPCPlayerResponse.perform(_:issuance:options:)(v105, v102, v104, v103);
    }

    else
    {
      v65 = *(v0 + 384);
      v66 = *(v0 + 312);

      v67 = 0xE700000000000000;
      outlined init with copy of Player.CommandIssuance(v65, v66);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 312);
      if (v70)
      {
        if (*(v0 + 424) == 1)
        {
          v72 = 0x646E616D6D6F63;
        }

        else
        {
          v67 = 0xE800000000000000;
          v72 = 0x73646E616D6D6F63;
        }

        v73 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v73 = 136315394;
        v74 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v72, v67, v111);

        *(v73 + 4) = v74;
        *(v73 + 12) = 2082;
        v75 = Player.CommandIssuance.description.getter();
        v77 = v76;
        outlined destroy of Player.CommandIssuance(v71);
        v78 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v75, v77, v111);

        *(v73 + 14) = v78;
        _os_log_impl(&_mh_execute_header, v68, v69, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        outlined destroy of Player.CommandIssuance(v71);
      }

      v106 = *(v0 + 248);
      lazy protocol witness table accessor for type Player.CommandError and conformance Player.CommandError();
      swift_allocError();
      *v107 = v106;
      *(v107 + 40) = 1;
      swift_willThrow();
      v108 = *(v0 + 384);

      outlined destroy of Player.CommandIssuance(v108);

      v109 = *(v0 + 8);

      return v109();
    }
  }
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 30;
  v23 = v0[56];
  v6 = v0[53];
  v7 = v0[48];
  v8 = v0[44];
  v11 = v0 + 37;
  v9 = v0[37];
  v10 = v11[1];
  v21 = v1[33];
  v22 = v3;
  if (v6 == 1)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v6 == 1)
  {
    v13 = 0x646E616D6D6F63;
  }

  else
  {
    v13 = 0x73646E616D6D6F63;
  }

  v1[2] = v2;
  v1[7] = v5;
  v1[3] = Player.perform(_:options:issuer:);
  v14 = swift_continuation_init();
  outlined init with copy of Player.CommandIssuance(v7, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  outlined init with take of Player.CommandIssuance(v8, v17 + v15, type metadata accessor for Player.CommandIssuance);
  *(v17 + v16) = v21;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v1[14] = partial apply for closure #1 in closure #1 in Player.perform(_:options:issuer:);
  v1[15] = v17;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_105;
  v18 = _Block_copy(v4);

  v19 = v21;

  [v23 performWithCompletion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v22);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {

    swift_willThrow();

    v3 = v1[51];
    v4 = v1[52];
    v5 = Player.perform(_:options:issuer:);
  }

  else
  {

    v1[59] = v1[30];
    v3 = v1[51];
    v4 = v1[52];
    v5 = Player.perform(_:options:issuer:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v67 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 472);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = 0xE800000000000000;

    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      if (*(v0 + 424) == 1)
      {
        v7 = 0x646E616D6D6F63;
      }

      else
      {
        v7 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v3 = 0xE700000000000000;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v66[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v3, v66);
      _os_log_impl(&_mh_execute_header, v5, v6, "╭ Performing %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    outlined init with copy of Player.CommandIssuance(*(v0 + 384), *(v0 + 344));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 344);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v66[0] = v15;
      *v14 = 136446210;
      v16 = Player.CommandIssuance.description.getter();
      v18 = v17;
      outlined destroy of Player.CommandIssuance(v13);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, v66);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "| issuance=%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    else
    {

      outlined destroy of Player.CommandIssuance(v13);
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 513);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66[0] = v38;
      *v37 = 136446210;
      if (v36)
      {
        v39 = 0xD000000000000014;
      }

      else
      {
        v39 = 0x5220726579616C50;
      }

      if (v36)
      {
        v40 = 0x80000001004CCD90;
      }

      else
      {
        v40 = 0xEF65736E6F707365;
      }

      v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v39, v40, v66);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "| on=%{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
    }

    v42 = v4;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66[0] = v46;
      *v45 = 136446210;
      v47 = [v42 playerPath];
      v48 = [v47 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v49, v51, v66);

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "╰ playerPath=%{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
    }

    v53 = *(v0 + 336);
    v54 = *(v0 + 288);
    UUID.init()();
    v55 = (v53 + *(v54 + 20));
    *v55 = 0;
    v55[1] = 0;
    v56 = swift_task_alloc();
    *(v0 + 488) = v56;
    *v56 = v0;
    v56[1] = Player.perform(_:options:issuer:);
    v57 = *(v0 + 336);
    v58 = *(v0 + 512);
    v60 = *(v0 + 248);
    v59 = *(v0 + 256);

    return specialized MPCPlayerResponse.perform(_:issuance:options:)(v60, v57, v59, v58);
  }

  else
  {
    v20 = *(v0 + 384);
    v21 = *(v0 + 312);

    v22 = 0xE700000000000000;
    outlined init with copy of Player.CommandIssuance(v20, v21);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 312);
    if (v25)
    {
      if (*(v0 + 424) == 1)
      {
        v27 = 0x646E616D6D6F63;
      }

      else
      {
        v22 = 0xE800000000000000;
        v27 = 0x73646E616D6D6F63;
      }

      v28 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v22, v66);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2082;
      v30 = Player.CommandIssuance.description.getter();
      v32 = v31;
      outlined destroy of Player.CommandIssuance(v26);
      v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v32, v66);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      outlined destroy of Player.CommandIssuance(v26);
    }

    v62 = *(v0 + 248);
    lazy protocol witness table accessor for type Player.CommandError and conformance Player.CommandError();
    swift_allocError();
    *v63 = v62;
    *(v63 + 40) = 1;
    swift_willThrow();
    v64 = *(v0 + 384);

    outlined destroy of Player.CommandIssuance(v64);

    v65 = *(v0 + 8);

    return v65();
  }
}

{
  v1 = *(v0 + 264);

  outlined destroy of Player.CommandIssuance(*(v0 + 384));

  v2 = *(v0 + 8);

  return v2();
}

{
  v34 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[53];
  if (v3)
  {
    v5 = v4 == 1;
    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v5)
    {
      v7 = 0x646E616D6D6F63;
    }

    else
    {
      v7 = 0x73646E616D6D6F63;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v6, &v33);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "╭ ✅ Successfully performed %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
  }

  outlined init with copy of Player.CommandIssuance(v0[48], v0[40]);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446210;
    v17 = Player.CommandIssuance.description.getter();
    v19 = v18;
    outlined destroy of Player.CommandIssuance(v14);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "| issuance=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {

    outlined destroy of Player.CommandIssuance(v14);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[60];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136446210;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerCommandStatus);
    v26 = Array.description.getter();
    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, &v33);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "╰ statuses=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    v29 = v0[60];
  }

  outlined destroy of Player.CommandIssuance(v0[48]);
  v32 = v0[62];

  v30 = v0[1];

  return v30(v32);
}

{
  v23 = v0;
  v1 = v0[48];
  v2 = v0[41];

  v3 = 0xE800000000000000;
  outlined init with copy of Player.CommandIssuance(v1, v2);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[63];
    v7 = v0[41];
    if (v0[53] == 1)
    {
      v3 = 0xE700000000000000;
      v8 = 0x646E616D6D6F63;
    }

    else
    {
      v8 = 0x73646E616D6D6F63;
    }

    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136315650;
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v3, v22);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2082;
    v11 = Player.CommandIssuance.description.getter();
    v13 = v12;
    outlined destroy of Player.CommandIssuance(v7);
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v13, v22);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v0[28] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v15 = String.init<A>(describing:)();
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, v22);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "╭ ❌ Failed to perform commands %s\n| issuance=%{public}s\n╰ error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[41];

    outlined destroy of Player.CommandIssuance(v18);
  }

  v19 = v0[60];
  swift_willThrow();

  outlined destroy of Player.CommandIssuance(v0[48]);

  v20 = v0[1];

  return v20();
}

uint64_t Player.perform(_:options:issuer:)(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = Player.perform(_:options:issuer:);
  }

  else
  {

    v4 = v3[8];
    v5 = v3[9];
    v6 = Player.perform(_:options:issuer:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[62] = a1;
  v4[63] = v1;

  outlined destroy of Player.CommandIssuance(v3[42]);
  v5 = v3[52];
  v6 = v3[51];
  if (v1)
  {
    v7 = Player.perform(_:options:issuer:);
  }

  else
  {
    v7 = Player.perform(_:options:issuer:);
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t specialized Collection<>.shouldPerformOnNowPlayingResponse.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  v2 = a1 + 32;
  while (1)
  {
    outlined init with copy of ActionPerforming(v2, v9);
    outlined init with copy of ActionPerforming(v9, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC18_NowPlayingCommand_pMd);
    if (swift_dynamicCast())
    {
      break;
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    outlined destroy of TaskPriority?(&v10, &_s9MusicCore6PlayerC18_NowPlayingCommand_pSgMd);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    v2 += 40;
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  v3 = *(&v11 + 1);
  v4 = v12;
  __swift_project_boxed_opaque_existential_0Tm(&v10, *(&v11 + 1));
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  outlined init with take of ActionPerforming(v9, &v10);
  v6 = 1;
LABEL_9:
  outlined destroy of TaskPriority?(&v10, &_s9MusicCore6PlayerC7Command_pSgMd);
  return v6;
}

uint64_t closure #1 in closure #1 in Player.perform(_:options:issuer:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v12 = type metadata accessor for Player.CommandIssuance();
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  if (a1)
  {
    v18 = one-time initialization token for logger;
    v19 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Player.logger);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75 = v24;
      *v23 = 136315138;
      *(v23 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(a3, a4, &v75);
      _os_log_impl(&_mh_execute_header, v21, v22, "╭ 🔊✅ Successfully resolved specified route for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    outlined init with copy of Player.CommandIssuance(a5, v17);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v75 = v28;
      *v27 = 136446210;
      v29 = Player.CommandIssuance.description.getter();
      v31 = v30;
      outlined destroy of Player.CommandIssuance(v17);
      v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v29, v31, &v75);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "| issuance=%{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    else
    {

      outlined destroy of Player.CommandIssuance(v17);
    }

    v46 = v73;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75 = v50;
      *v49 = 136446210;
      v51 = v46;
      v52 = [v51 description];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v53, v55, &v75);

      *(v49 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "╰ 🔊 Route=%{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    **(*(v74 + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Player.logger);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136315138;
      *(v36 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(a3, a4, &v75);
      _os_log_impl(&_mh_execute_header, v34, v35, "╭ 🔊❌ Failed to resolve specified route for %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    outlined init with copy of Player.CommandIssuance(a5, v15);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75 = v41;
      *v40 = 136446210;
      v42 = Player.CommandIssuance.description.getter();
      v44 = v43;
      outlined destroy of Player.CommandIssuance(v15);
      v45 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v44, &v75);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "| issuance=%{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
    }

    else
    {

      outlined destroy of Player.CommandIssuance(v15);
    }

    v58 = v73;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v75 = v62;
      *v61 = 136446210;
      v63 = v58;
      v64 = [v63 description];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v65, v67, &v75);

      *(v61 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "╰ 🔊 Route=%{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
    }

    if (a2)
    {
      v69 = a2;
    }

    else
    {
      lazy protocol witness table accessor for type Player.CommandError and conformance Player.CommandError();
      v69 = swift_allocError();
      *v70 = 0u;
      *(v70 + 16) = 0u;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    swift_allocError();
    *v71 = v69;
    swift_errorRetain();
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t Player.prepareForBufferedAirPlay()()
{
  v1[60] = v0;
  v1[61] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v1[62] = swift_task_alloc();
  v1[63] = type metadata accessor for MainActor();
  v1[64] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[65] = v3;
  v1[66] = v2;

  return _swift_task_switch(Player.prepareForBufferedAirPlay(), v3, v2);
}

{
  v35 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[56];
  v2 = [v1 route];
  v0[67] = v2;

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      goto LABEL_9;
    }

    v4 = v3;
    v5 = v2;
    if ([v4 isDeviceRoute])
    {

LABEL_9:

      v10 = v0[1];

      return v10(v2);
    }

    v11 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
    v12 = objc_allocWithZone(MPAVRoutingController);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithDataSource:v11 name:v13];
    v0[68] = v14;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v0[69] = __swift_project_value_buffer(v15, static Player.logger);
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v25, &v34);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "🚏 Switching to buffered AirPlay onto route=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    v27 = v0[60];
    v28 = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v0[70] = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v29 = *(v27 + v28);
    *(v27 + v28) = v14;
    v30 = v14;

    v31 = objc_opt_self();
    v0[71] = v31;
    v0[2] = v0;
    v0[3] = Player.prepareForBufferedAirPlay();
    v32 = swift_continuation_init();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    v0[72] = v33;
    v0[41] = v33;
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[37] = &block_descriptor_109;
    v0[38] = v32;
    [v31 setActiveRoute:0 completion:v0 + 34];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = v0[57];
    lazy protocol witness table accessor for type BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay() and conformance BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay()();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = Player.prepareForBufferedAirPlay();
  }

  else
  {
    v5 = Player.prepareForBufferedAirPlay();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];
  v0[10] = v0;
  v0[11] = Player.prepareForBufferedAirPlay();
  v4 = swift_continuation_init();
  v0[49] = v1;
  v0[42] = _NSConcreteStackBlock;
  v0[43] = 1107296256;
  v0[44] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[45] = &block_descriptor_112;
  v0[46] = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 42];

  return _swift_continuation_await(v0 + 10);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 592) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = Player.prepareForBufferedAirPlay();
  }

  else
  {
    v5 = Player.prepareForBufferedAirPlay();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = static MainActor.shared.getter();
  *(v0 + 600) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(Player.prepareForBufferedAirPlay(), v2, v4);
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 50;
  v5 = v0 + 59;
  v6 = v0[71];
  v1[18] = v2;
  v1[23] = v5;
  v1[19] = Player.prepareForBufferedAirPlay();
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[54] = partial apply for closure #1 in closure #1 in Player.prepareForBufferedAirPlay();
  v1[55] = v8;
  v1[50] = _NSConcreteStackBlock;
  v1[51] = 1107296256;
  v1[52] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
  v1[53] = &block_descriptor_118;
  v9 = _Block_copy(v4);

  [v6 getActiveRouteWithTimeout:v9 completion:2.0];
  _Block_release(v9);

  return _swift_continuation_await(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 608) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[66];
    v4 = v1[65];
    v5 = Player.prepareForBufferedAirPlay();
  }

  else
  {

    v1[77] = v1[59];
    v3 = v1[66];
    v4 = v1[65];
    v5 = Player.prepareForBufferedAirPlay();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v23 = v0;
  v1 = *(v0 + 616);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 616);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = v4;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚏 Awaiting updated player response for route=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v13 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 616);

  closure #1 in Player.updatePlayerPath(with:)(v15);

  v16 = type metadata accessor for TaskPriority();
  *(v0 + 624) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  *(v0 + 632) = v18;
  *(v0 + 640) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v13, 1, 1, v16);

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v14;
  *(v0 + 648) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v13, &async function pointer to partial apply for closure #2 in Player.prepareForBufferedAirPlay(), v20);

  return _swift_task_switch(Player.prepareForBufferedAirPlay(), 0, 0);
}

{
  v1 = v0[70];
  v2 = v0[60];

  v3 = *(v2 + v1);
  v4 = v0[68];
  if (v3 && v4 == v3)
  {
    v5 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v5 = v0[67];
  }

  v6 = v0[1];

  return v6();
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 26;
  v4 = v0[81];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[62];
  v1[26] = v2;
  v1[27] = Player.prepareForBufferedAirPlay();
  v8 = swift_continuation_init();
  v5(v7, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = 0x4014000000000000;
  v9[6] = v4;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v7, &async function pointer to partial apply for specialized closure #1 in closure #1 in Task.withTimeout(_:), v9);

  return _swift_continuation_await(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 656) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = Player.prepareForBufferedAirPlay();
  }

  else
  {
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = Player.prepareForBufferedAirPlay();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[77];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v6 = v6;
    v9 = [v6 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v22);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "🚏✅ Successfully switched to buffered AirPlay onto route=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v14 = v0[70];
  v15 = v0[60];
  v16 = *(v15 + v14);
  v17 = v0[68];
  if (v16)
  {
    v18 = v0[67];
    if (v17 == v16)
    {
      *(v15 + v14) = 0;
    }
  }

  else
  {
    v18 = v0[67];
  }

  v19 = v0[77];

  v20 = v0[1];

  return v20(v19);
}

{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = v5;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "🚏❌ Timed out waiting for a valid ReplaceCommand on route=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = v0[77];
  v15 = v0[70];
  v16 = v0[60];
  swift_willThrow();

  v17 = *(v16 + v15);
  v18 = v0[68];
  if (v17 && v18 == v17)
  {
    v19 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v19 = v0[67];
  }

  v20 = v0[1];

  return v20();
}

{
  v25 = v0;

  v1 = v0[73];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v14 = String.init<A>(describing:)();
    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

{
  v25 = v0;

  v1 = v0[74];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v14 = String.init<A>(describing:)();
    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

uint64_t closure #1 in closure #1 in Player.prepareForBufferedAirPlay()(void *a1, uint64_t a2)
{
  if (a1)
  {
    **(*(a2 + 64) + 40) = a1;
    v2 = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    lazy protocol witness table accessor for type BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay() and conformance BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay()();
    v4 = swift_allocError();
    *v5 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    swift_allocError();
    *v6 = v4;

    return swift_continuation_throwingResumeWithError();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t closure #2 in Player.prepareForBufferedAirPlay()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_GGMd);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_G_GMd);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(closure #2 in Player.prepareForBufferedAirPlay(), v8, v7);
}

uint64_t closure #2 in Player.prepareForBufferedAirPlay()()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  AsyncPublisher.init(_:)();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[20] = static MainActor.shared.getter();
  v4 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<MPCPlayerResponse?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_G_GMd);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = closure #2 in Player.prepareForBufferedAirPlay();
  v6 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v6, v4);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #2 in Player.prepareForBufferedAirPlay();
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #2 in Player.prepareForBufferedAirPlay();
  }

  return _swift_task_switch(v7, v4, v6);
}

{

  v0[23] = v0[5];
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(closure #2 in Player.prepareForBufferedAirPlay(), v1, v2);
}

{
  v1 = *(v0 + 184);
  if (v1 == 1)
  {
LABEL_6:
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v9 = *(v0 + 8);

    return v9();
  }

  if (v1)
  {
    v2 = v1;
    v3 = [v2 tracklist];
    v4 = [v3 resetCommand];
    outlined consume of MPCPlayerResponse??(v1);

    if (v4 && (swift_unknownObjectRelease(), v5 = [v2 playerPath], v6 = objc_msgSend(v5, "route"), v5, v6))
    {
      v7 = *(v0 + 184);
      v8 = [v6 isDeviceRoute];
      outlined consume of MPCPlayerResponse??(v7);

      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      outlined consume of MPCPlayerResponse??(*(v0 + 184));
    }
  }

  *(v0 + 160) = static MainActor.shared.getter();
  v11 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<MPCPlayerResponse?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_G_GMd);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = closure #2 in Player.prepareForBufferedAirPlay();
  v13 = *(v0 + 104);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 40, v13, v11);
}

{
  *(v0 + 48) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void Player.engineState.didset(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Player.logger);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "╭ Updated Engine State", v8, 2u);
      }

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v38[0] = v12;
        *v11 = 136446210;
        if (*(v2 + v4) > 1u)
        {
          if (*(v2 + v4) == 2)
          {
            v13 = 0xA900000000000079;
            v14 = 0x6461655220859CE2;
          }

          else
          {
            v13 = 0xAE0064656C6C6174;
            v14 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v2 + v4))
        {
          v13 = 0xAD0000676E697472;
          v14 = 0x61745320809A9FF0;
        }

        else
        {
          v13 = 0xA700000000000000;
          v14 = 0x66664F208C9DE2;
        }

        v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v13, v38);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "╰ %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
      }

      if (*(v2 + v4) <= 1u)
      {
        break;
      }

      if (*(v2 + v4) != 2)
      {
        return;
      }

      v26 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
      swift_beginAccess();
      v27 = *(v2 + v26);
      v28 = *(v27 + 16);

      if (!v28)
      {
LABEL_28:

        *(v2 + v26) = &_swiftEmptyArrayStorage;

        return;
      }

      v29 = 0;
      v30 = v27 + 40;
      while (v29 < *(v27 + 16))
      {
        ++v29;
        v31 = *(v30 - 8);

        v31(v32);

        v30 += 16;
        if (v28 == v29)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    if (*(v2 + v4))
    {
      [*(v2 + OBJC_IVAR____TtC9MusicCore6Player_engine) start];
      v33 = Player.playbackDataSource.getter();
      v34 = v33;
      v35 = v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if (v35 != 1)
      {
        [*&v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] beginAutomaticResponseLoading];
      }

      v22 = Player.nowPlayingDataSource.getter();
      v36 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if ((v36 & 1) == 0)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "beginAutomaticResponseLoading";
        goto LABEL_34;
      }
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "❌ Stopped engine… which is not supposed to happen", v18, 2u);
      }

      v19 = Player.playbackDataSource.getter();
      v20 = v19;
      v21 = v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v21)
      {
        [*&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] endAutomaticResponseLoading];
      }

      v22 = Player.nowPlayingDataSource.getter();
      v23 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v23)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "endAutomaticResponseLoading";
LABEL_34:
        v37 = v22;
        [v24 v25];

        return;
      }
    }
  }
}

uint64_t Player.engineState.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Player.EngineState.description.getter(unsigned __int8 a1)
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (a1 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (a1)
  {
    v1 = 0x61745320809A9FF0;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Player.EngineState()
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (*v0 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (*v0)
  {
    v1 = 0x61745320809A9FF0;
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

void Player.playerResponse.didset()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v1 = [v5 tracklist];
    v2 = [v1 resetCommand];

    if (v2)
    {
      swift_unknownObjectRelease();
      v3 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
      swift_beginAccess();
      v4 = *(v0 + v3);
      *(v0 + v3) = 2;
      Player.engineState.didset(v4);
    }
  }
}

char *Player.playbackDataSource.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  }

  else
  {
    v4 = v0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = type metadata accessor for Player.DataSource();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v9 = objc_allocWithZone(MPCPlayerRequest);

    *&v7[v8] = [v9 init];
    v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
    v10 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    *&v7[v10] = [objc_allocWithZone(MPRequestResponseController) init];
    *&v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v27;
    v11 = &v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged];
    *v11 = partial apply for closure #1 in Player.playbackDataSource.getter;
    v11[1] = v5;
    v12 = &v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError];
    *v12 = partial apply for closure #2 in Player.playbackDataSource.getter;
    v12[1] = v4;
    v28.receiver = v7;
    v28.super_class = v6;
    v26 = v27;

    v13 = objc_msgSendSuper2(&v28, "init");
    v14 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    v15 = *&v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v16 = v13;
    [v15 setDelegate:v16];
    v17 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v18 = one-time initialization token for emptyNowPlayingItem;
    v19 = *&v16[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
    if (v18 != -1)
    {
      swift_once();
    }

    [v19 setPlayingItemProperties:{static MPPropertySet.emptyNowPlayingItem, v5}];

    [*&v16[v17] setTracklistRange:{0, 0}];
    [*&v16[v17] setPlayerPath:v26];
    v20 = *&v16[v17];
    v21._countAndFlagsBits = 0x6B63616279616C50;
    v21._object = 0xEF646E616D6D6F43;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    [v20 setLabel:v22];

    [*&v13[v14] setRequest:*&v16[v17]];

    v23 = *(v4 + v1);
    *(v4 + v1) = v13;
    v3 = v16;

    v2 = 0;
  }

  v24 = v2;
  return v3;
}

uint64_t closure #1 in Player.playbackDataSource.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in Player.playbackDataSource.getter);
  }

  return result;
}

void closure #1 in closure #1 in Player.playbackDataSource.getter(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 playerPath];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = specialized Dictionary._Variant.removeValue(forKey:)(v6);
    swift_endAccess();

    if (v7)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Player.logger);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "| Cancelling ongoing timer for switching back to system route", v11, 2u);
      }

      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = a3;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = a3;
    if (a3)
    {
      v14 = [a3 tracklist];
      v15 = [v14 resetCommand];

      if (v15)
      {
        swift_unknownObjectRelease();
        v16 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
        swift_beginAccess();
        v17 = *(a1 + v16);
        *(a1 + v16) = 2;
        Player.engineState.didset(v17);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in Player.playbackDataSource.getter(void *a1)
{
  v1 = [a1 playerPath];
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Player.logger);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v8 = String.init<A>(describing:)();
      v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v25);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "╭ Player Response failed to load with error=%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    v11 = _convertErrorToNSError(_:)();
    v12 = NSError.isInvalidRouteError.getter();

    if (v12)
    {
      __chkstk_darwin(v13);
      UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #2 in Player.playbackDataSource.getter);
    }

    else
    {
      v14 = v2;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25 = v18;
        *v17 = 136446210;
        v19 = v14;
        v20 = [v19 description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v23, &v25);

        *(v17 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v15, v16, "╰ playerPath=%{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NSError.isInvalidRouteError.getter()
{
  v1 = v0;
  v2 = [v0 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v1 code];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v7 == v5)
  {

    if (v6 == 2)
    {
LABEL_7:
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) != 0 && v6 == 2)
    {
      goto LABEL_7;
    }
  }

  v35 = &_swiftEmptyArrayStorage;
  v11 = [v1 userInfo];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v12 + 16))
  {

    goto LABEL_14;
  }

  v15 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v12 + 56) + 32 * v15, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSErrorCGMd);
  if (swift_dynamicCast())
  {
    specialized Array.append<A>(contentsOf:)(v33);
  }

LABEL_15:
  v18 = [v1 userInfo];
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v19 + 16))
  {
    v22 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v20, v21);
    v24 = v23;

    if (v24)
    {
      outlined init with copy of Any(*(v19 + 56) + 32 * v22, v34);

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSError);
      if (swift_dynamicCast())
      {
        v25 = v33;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_23:
  v26 = v35;
  if (v35 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v10 = NSError.isInvalidRouteError.getter();

      if ((v10 & 1) == 0)
      {
        ++v28;
        if (v31 != i)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v10 = 0;
LABEL_38:

  return v10 & 1;
}

uint64_t closure #1 in closure #2 in Player.playbackDataSource.getter(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v4 - 8);
  v90 = v4;
  v5 = __chkstk_darwin(v4);
  v88 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v87 = (&v73 - v7);
  v91 = type metadata accessor for DispatchTime();
  v86 = *(v91 - 8);
  v8 = __chkstk_darwin(v91);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v73 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v11 - 8);
  __chkstk_darwin(v11);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Player.logger);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v92 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v75 = v11;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    v24 = v17;
    v25 = a2;
    v26 = v24;
    v27 = [v24 description];
    v74 = v16;
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    a2 = v25;
    v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v29, v31, aBlock);

    *(v21 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v18, v19, "| Invalid playerPath=%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v11 = v75;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "╰ Stalling engine while attempting to reload", v35, 2u);
  }

  v36 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  v37 = *(a2 + v36);
  *(a2 + v36) = 3;
  Player.engineState.didset(v37);
  v38 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  swift_beginAccess();
  v39 = *(a2 + v38);

  v40 = specialized Dictionary.subscript.getter(v92, v39);

  if (v40)
  {
    return swift_unknownObjectRelease();
  }

  v75 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "╰ Switching back to system route in 5seconds.", v43, 2u);
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_source);
  aBlock[0] = &_swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, &type metadata accessor for OS_dispatch_source.TimerFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd);
  v44 = v76;
  v45 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v46 = static OS_dispatch_queue.main.getter();
  v47 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  v77[1](v44, v45);
  v74 = v47;
  ObjectType = swift_getObjectType();
  v49 = swift_allocObject();
  v73 = a2;
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v92;
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in Player.playbackDataSource.getter;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_266;
  v52 = _Block_copy(aBlock);
  v77 = v51;

  v53 = v79;
  static DispatchQoS.unspecified.getter();
  v54 = v81;
  v78 = ObjectType;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v52);
  (*(v83 + 8))(v54, v11);
  (*(v80 + 8))(v53, v82);

  v55 = v84;
  static DispatchTime.now()();
  v56 = v87;
  *v87 = 5;
  v57 = v89;
  v58 = v90;
  v59 = *(v89 + 104);
  v59(v56, enum case for DispatchTimeInterval.seconds(_:), v90);
  v60 = v85;
  + infix(_:_:)();
  v92 = *(v57 + 8);
  (v92)(v56, v58);
  v61 = *(v86 + 8);
  v61(v55, v91);
  v59(v56, enum case for DispatchTimeInterval.never(_:), v58);
  v62 = v88;
  *v88 = 0;
  v59(v62, enum case for DispatchTimeInterval.nanoseconds(_:), v58);
  v63 = v74;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v64 = v62;
  v65 = v92;
  (v92)(v64, v58);
  v65(v56, v58);
  v61(v60, v91);
  v66 = v73;
  v67 = v63;
  OS_dispatch_source.resume()();
  v68 = v75;
  swift_beginAccess();
  v69 = *(v66 + v68);
  if ((v69 & 0xC000000000000001) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_17;
  }

  if (v69 < 0)
  {
    v70 = *(v66 + v68);
  }

  else
  {
    v70 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  swift_unknownObjectRetain();
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(v66 + v68) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo13MPCPlayerPathC_So24OS_dispatch_source_timer_pTt1g5(v70, result + 1);
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = *(v66 + v68);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v77, isUniquelyReferenced_nonNull_native);
    *(v66 + v68) = v94;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #2 in Player.playbackDataSource.getter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(a2);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath);
    v3 = a2;
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Player.logger);
      v6 = v3;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 136446210;
        v11 = v6;
        v12 = [v11 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v15, &v19);

        *(v9 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "Engine stalled for too long trying to resolve playerPath=%{public}s. Switching back to system route.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
      }

      v17 = objc_opt_self();
      v18 = [v17 systemRoute];
      [v17 setActiveRoute:v18 completion:0];
    }
  }
}

char *Player.nowPlayingDataSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
  }

  else
  {
    v3 = v0;
    v33 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v4 = [v34 route];

    if (!v4)
    {
      v4 = [objc_opt_self() systemRoute];
    }

    v5 = [v4 isDeviceRoute];
    v6 = objc_opt_self();
    if (v5)
    {
      v7 = v6;
      if (one-time initialization token for systemMusic != -1)
      {
        swift_once();
      }

      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 systemMusicPathWithRoute:v4 playerID:v8];
    }

    else
    {
      v9 = [v6 pathWithRoute:v4 bundleID:0 playerID:0];
    }

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = type metadata accessor for Player.DataSource();
    v13 = objc_allocWithZone(v12);
    v14 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    *&v13[v14] = [objc_allocWithZone(MPCPlayerRequest) init];
    v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
    v15 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    *&v13[v15] = [objc_allocWithZone(MPRequestResponseController) init];
    *&v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v9;
    v16 = &v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged];
    *v16 = partial apply for closure #1 in Player.nowPlayingDataSource.getter;
    v16[1] = v10;
    v17 = &v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError];
    *v17 = partial apply for closure #2 in Player.nowPlayingDataSource.getter;
    v17[1] = v11;
    v35.receiver = v13;
    v35.super_class = v12;
    v18 = v9;

    v19 = objc_msgSendSuper2(&v35, "init");
    v20 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    v21 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v22 = v19;
    [v21 setDelegate:v22];
    v23 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v24 = one-time initialization token for emptyNowPlayingItem;
    v25 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
    if (v24 != -1)
    {
      swift_once();
    }

    [v25 setPlayingItemProperties:{static MPPropertySet.emptyNowPlayingItem, v10}];

    [*&v22[v23] setTracklistRange:{0, 0}];
    [*&v22[v23] setPlayerPath:v18];
    v26 = *&v22[v23];
    v27._countAndFlagsBits = 0x6979616C50776F4ELL;
    v27._object = 0xEA0000000000676ELL;
    String.append(_:)(v27);
    v28 = v18;
    v29 = String._bridgeToObjectiveC()();

    [v26 setLabel:v29];

    [*&v19[v20] setRequest:*&v22[v23]];

    v30 = *(v3 + v33);
    *(v3 + v33) = v19;
    v2 = v22;

    v1 = 0;
  }

  v31 = v1;
  return v2;
}

uint64_t closure #1 in Player.nowPlayingDataSource.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in Player.nowPlayingDataSource.getter);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Player.nowPlayingDataSource.getter(id a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = [a1 tracklist];
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  p_class_meths = &OBJC_PROTOCOL___CAAnimationDelegate.class_meths;
  if (!v50)
  {
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_11:
    v7 = v5;
    goto LABEL_13;
  }

  v7 = [v50 tracklist];

  if (v5)
  {
    if (v7)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerResponseTracklist);
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        if (!a1)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }

LABEL_21:
      if (a1)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_13:

  if (!a1)
  {
LABEL_22:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Player.logger);
    v24 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v24, v32, "╭ Nil Now Playing Response", v33, 2u);
    }

    goto LABEL_29;
  }

LABEL_14:
  v9 = one-time initialization token for logger;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Player.logger);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = v16;
    *v15 = 136446210;
    v49 = a3;
    v17 = [v12 tracklist];
    v18 = [v17 uniqueIdentifier];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v19;
    a3 = v49;
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v21, &v50);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "╭ Received Now Playing response with tracklistID=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  v24 = v12;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67240192;
    v28 = [v24 playerPath];
    v29 = [v28 representedBundleID];

    if (v29)
    {

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    p_class_meths = &OBJC_PROTOCOL___CAAnimationDelegate.class_meths;
    *(v27 + 4) = v30;

    _os_log_impl(&_mh_execute_header, v25, v26, "| is Music App=%{BOOL,public}d", v27, 8u);
  }

  else
  {

    p_class_meths = (&OBJC_PROTOCOL___CAAnimationDelegate + 32);
  }

LABEL_29:

  if (p_class_meths[112] != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Player.logger);
  v35 = a3;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    v40 = [v35 playerPath];
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "╰ playerPath=%{public}@", v38, 0xCu);
    outlined destroy of TaskPriority?(v39, &_sSo8NSObjectCSgMd_0);
  }

  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = 0;

    static Published.subscript.setter();
    v47 = 0;
    goto LABEL_40;
  }

LABEL_34:
  v41 = [a1 playerPath];
  v42 = [v41 isSystemMusicPath];

  if ((v42 & 1) != 0 || (v43 = [a1 playerPath], v44 = objc_msgSend(v43, "representedBundleID"), v43, !v44))
  {
    v46 = a1;
    v45 = a1;
  }

  else
  {

    v45 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v45;

  static Published.subscript.setter();
  v47 = [a1 playerPath];
LABEL_40:
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v47;

  return static Published.subscript.setter();
}

uint64_t closure #2 in Player.nowPlayingDataSource.getter(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Player.logger);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v8 = String.init<A>(describing:)();
      v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "╭ Now Playing failed to load with error=%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = [v11 playerPath];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "╰ playerPath=%{public}@", v14, 0xCu);
      outlined destroy of TaskPriority?(v15, &_sSo8NSObjectCSgMd_0);
    }
  }

  return result;
}

void Player.updatePlayerPath(with:)(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  if (a1)
  {

    v5 = a1;
    closure #1 in Player.updatePlayerPath(with:)();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = closure #1 in Player.updatePlayerPath(with:)partial apply;
    *(v7 + 24) = v4;
    v9[4] = closure #2 in Player.updatePlayerPath(with:)partial apply;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
    v9[3] = &block_descriptor_327;
    v8 = _Block_copy(v9);

    [v6 getActiveRouteWithTimeout:v8 completion:1.0];

    _Block_release(v8);
  }
}

void closure #1 in Player.updatePlayerPath(with:)(void *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Player.logger);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v6 = 136446210;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating playerPath with route=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  __chkstk_darwin(v13);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in Player.updatePlayerPath(with:));
}

void closure #1 in closure #1 in Player.updatePlayerPath(with:)(uint64_t a1, void *a2)
{
  v4 = Player.nowPlayingDataSource.getter();
  v5 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];

  v6 = [v5 route];
  if (v6 && (type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPAVRoute), v7 = v6, v8 = a2, v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9 & 1) != 0) && ((v10 = [v7 connection]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "isInvalidated"), v11, (v12 & 1) == 0)))
  {
  }

  else
  {
    v13 = [a2 isDeviceRoute];
    v14 = objc_opt_self();
    if (v13)
    {
      v15 = v14;
      if (one-time initialization token for systemMusic != -1)
      {
        swift_once();
      }

      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 systemMusicPathWithRoute:a2 playerID:v16];
    }

    else
    {
      v17 = [v14 pathWithRoute:a2 bundleID:0 playerID:0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;

    static Published.subscript.setter();
    Player.path.didset();

    v19 = *(a1 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
    v20 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
    v21 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
    *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath);
    v22 = v18;
    v23 = v19;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v24 = *&v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
      v25 = [v24 request];
      if (v25)
      {
        v26 = *&v19[v20];
        v27 = v25;
        [v25 setPlayerPath:v26];
      }

      [v24 setNeedsReloadForSignificantRequestChange];
    }

    v28 = _MPAVRouteConnectionDidInvalidateNotification;
    v29 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v30 = v22;
    *(a1 + OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, v22, 1, 1, partial apply for closure #1 in closure #1 in closure #1 in Player.updatePlayerPath(with:), v29);

    v31 = [v30 route];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v31 outputDeviceRoute:0];
      v34 = [objc_opt_self() sharedController];
      [v34 setActiveDataSource:v33];
    }

    else
    {
    }
  }
}

uint64_t closure #2 in Player.init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Player.updatePlayerPath(with:)(0);
  }

  return result;
}

void closure #2 in Player.updatePlayerPath(with:)(void *a1, void (*a2)(id))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = [objc_opt_self() systemRoute];
  }

  v4 = a1;
  a2(v5);
}

void Player.updateSharePlayTogetherSession()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v23 route];

  if (v0)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
LABEL_14:

      return;
    }

    v2 = v1;
    v3 = [v1 endpointObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 isEligibleForHostingGroupSessionExcludingAcknowledgements];

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v23) = v5;

      static Published.subscript.setter();
      v6 = [v2 endpointObject];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 groupSessionInfo];

        if (!v8)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v22 = v23;
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
          Player.sharePlayTogetherSession.didset(v23);
          goto LABEL_13;
        }

        if (one-time initialization token for sharePlayTogether != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.sharePlayTogether);
        v10 = v0;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138543362;
          *(v13 + 4) = v2;
          *v14 = v2;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v11, v12, "Getting session from %{public}@", v13, 0xCu);
          outlined destroy of TaskPriority?(v14, &_sSo8NSObjectCSgMd_0);
        }

        v16 = [v2 endpointObject];
        if (v16)
        {
          v17 = v16;
          v18 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSession(0));
          v19 = v8;
          SharePlayTogetherSession.init(info:endpoint:)(v19, v17);
          v21 = v20;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v22 = v23;
          swift_getKeyPath();
          swift_getKeyPath();

          v0 = v21;
          static Published.subscript.setter();
          Player.sharePlayTogetherSession.didset(v23);

LABEL_13:
          v0 = v22;
          goto LABEL_14;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t Player.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9MusicCore6Player__path;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCSgGMd);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionCSgGMd);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession, v11);

  v13 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  v14 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration + 8);

  v5(v0 + OBJC_IVAR____TtC9MusicCore6Player__playerResponse, v4);

  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance Player@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Player(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id Player.DataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Player.DataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void one-time initialization function for emptyNowPlayingItem()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = [v2 emptyPropertySet];
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1004F2EB0;
  *(v6 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 40) = v7;
  *(v6 + 48) = [v2 emptyPropertySet];
  *(v6 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 64) = v8;
  *(v6 + 72) = [v2 emptyPropertySet];
  *(v6 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 88) = v9;
  *(v6 + 96) = [v2 emptyPropertySet];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithProperties:isa relationships:v12];

  *(inited + 120) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MPPropertySet);
  v15 = Array._bridgeToObjectiveC()().super.isa;
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithProperties:v15 relationships:v16];

  static MPPropertySet.emptyNowPlayingItem = v17;
}

uint64_t Player.with(_:)(void (*a1)(id *))
{
  v3 = v1 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v16 = *v3;
  v17 = v4;
  v18 = v5;
  v6 = v16;
  v7 = v4;

  a1(&v16);
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = *v3;
  v12 = *(v3 + 8);
  *v3 = v16;
  *(v3 + 8) = v9;
  *(v3 + 16) = v10;
  v13 = v8;
  v14 = v9;

  Player.nowPlayingConfiguration.didset();
}

uint64_t MusicItemState.item.didset(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 120);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);

  dispatch thunk of MusicPlayer.ItemState.item.setter();
}

uint64_t MusicItemState.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicItemState.item.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  MusicItemState.item.didset(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*MusicItemState.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MusicItemState.item.modify;
}

uint64_t MusicItemState.item.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return MusicItemState.item.didset(result);
  }

  return result;
}

uint64_t property wrapper backing initializer of MusicItemState.playabilityStatus(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v6 + 16);
  v12(&v15 - v10, a1, v5);
  v12(v9, v11, v5);
  Published.init(initialValue:)();
  v13 = *(v6 + 8);
  v13(a1, v5);
  return v13(v11, v5);
}

uint64_t closure #1 in MusicItemState.init(item:musicKitItemState:player:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MusicItemState.updatePlayabilityStatus()();
  }

  return result;
}

uint64_t closure #2 in MusicItemState.init(item:musicKitItemState:player:)()
{
  v0 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
    MusicItemState.previewCapabilityStatus.setter(v2);
  }

  return result;
}

uint64_t MusicItemState.updatePlayabilityStatus()()
{
  v1 = *v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v62[-v7];
  v68 = type metadata accessor for MusicMovie();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = type metadata accessor for TVEpisode();
  v66 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = type metadata accessor for Track();
  v70 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = type metadata accessor for Song();
  v74 = *(v80 - 8);
  v12 = __chkstk_darwin(v80);
  v79 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = *(v1 + 80);
  v14 = __chkstk_darwin(v12);
  v77 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v65 = &v62[-v17];
  v18 = __chkstk_darwin(v16);
  v69 = &v62[-v19];
  v20 = __chkstk_darwin(v18);
  v73 = &v62[-v21];
  __chkstk_darwin(v20);
  v78 = &v62[-v22];
  v23 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v83 = &v62[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v62[-v28];
  __chkstk_darwin(v27);
  v31 = &v62[-v30];
  v85 = v0;

  dispatch thunk of MusicPlayer.ItemState.playabilityStatus.getter();

  v32 = *(v24 + 16);
  v84 = v31;
  v33 = v31;
  v34 = v23;
  v35 = v24;
  v82 = v32;
  v32(v29, v33, v34);
  v36 = (*(v24 + 88))(v29, v34);
  v37 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v36 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v36 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      v50 = v83;
      v51 = v84;
      v82(v83, v84, v34);
      MusicItemState.playabilityStatus.setter(v50);
      v52 = *(v35 + 8);
      v52(v51, v34);
      return (v52)(v29, v34);
    }

    v63 = v36;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (!v86 || (v86, swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v86 & 1) != 0) || (, v45 = Player.supportsDelegation.getter(), , (v45 & 1) != 0))
    {
LABEL_9:
      v46 = v83;
      v47 = v84;
      v82(v83, v84, v34);
      MusicItemState.playabilityStatus.setter(v46);
      return (*(v35 + 8))(v47, v34);
    }

    MusicItemState.item.getter(v78);
    v54 = v79;
    v53 = v80;
    if (swift_dynamicCast())
    {
      v55 = v74;
    }

    else
    {
      MusicItemState.item.getter(v73);
      v54 = v75;
      v53 = v76;
      if (!swift_dynamicCast())
      {
        MusicItemState.item.getter(v69);
        v61 = v71;
        if (swift_dynamicCast())
        {
          (*(v66 + 8))(v72, v61);
        }

        else
        {
          MusicItemState.item.getter(v65);
          if (!swift_dynamicCast())
          {
            goto LABEL_9;
          }

          (*(v64 + 8))(v67, v68);
        }

LABEL_19:
        MusicItemState.item.getter(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd);
        if (swift_dynamicCast())
        {
          v56 = *(&v87 + 1);
          v57 = v88;
          __swift_project_boxed_opaque_existential_0Tm(&v86, *(&v87 + 1));
          (*(v57 + 8))(v56, v57);
          v59 = v58;
          __swift_destroy_boxed_opaque_existential_0Tm(&v86);
          if (v59)
          {

            v60 = v83;
            (*(v35 + 104))(v83, v63, v34);
LABEL_24:
            MusicItemState.playabilityStatus.setter(v60);
            return (*(v35 + 8))(v84, v34);
          }
        }

        else
        {
          v88 = 0;
          v86 = 0u;
          v87 = 0u;
          outlined destroy of TaskPriority?(&v86, &_s9MusicCore18CatalogIDProviding_pSgMd);
        }

        v60 = v83;
        (*(v3 + 104))(v83, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
        (*(v35 + 104))(v60, v37, v34);
        goto LABEL_24;
      }

      v55 = v70;
    }

    (*(v55 + 8))(v54, v53);
    goto LABEL_19;
  }

  v38 = v35;
  v39 = *(v35 + 96);
  v40 = v34;
  v39(v29, v34);
  (*(v3 + 32))(v8, v29, v2);
  (*(v3 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
  v41 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v42 = *(v3 + 8);
  v42(v6, v2);
  if ((v41 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v86))
  {

    v43 = v83;
    (*(v38 + 104))(v83, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v40);
    MusicItemState.playabilityStatus.setter(v43);
    v42(v8, v2);
    return (*(v38 + 8))(v84, v40);
  }

  else
  {
    v48 = v83;
    v49 = v84;
    v82(v83, v84, v40);
    MusicItemState.playabilityStatus.setter(v48);
    v42(v8, v2);
    return (*(v38 + 8))(v49, v40);
  }
}

uint64_t MusicItemState.playabilityStatus.getter()
{
  return MusicItemState.playabilityStatus.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t MusicItemState.previewCapabilityStatus.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = a2(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  v13 = *(v4 + 80);
  v9 = v13;
  v10 = *(v4 + 88);
  v14 = v10;
  swift_getKeyPath();
  v12[0] = v9;
  v12[1] = v10;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, v5);

  static Published.subscript.setter();
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*MusicItemState.playabilityStatus.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.videoBounds.modify;
}

uint64_t MusicItemState.$playabilityStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE17PlayabilityStatusOGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MusicItemState.$playabilityStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE17PlayabilityStatusOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MusicItemState.$playabilityStatus.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  MusicItemState.$playabilityStatus.getter();
  return MusicItemState.$playabilityStatus.modify;
}

uint64_t key path setter for MusicItemState.playabilityStatus : <A>MusicItemState<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t (*MusicItemState.previewCapabilityStatus.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t MusicItemState.$previewCapabilityStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE23PreviewCapabilityStatusOGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MusicItemState.$previewCapabilityStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE23PreviewCapabilityStatusOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MusicItemState.$previewCapabilityStatus.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  MusicItemState.$previewCapabilityStatus.getter();
  return MusicItemState.$previewCapabilityStatus.modify;
}

void MusicItemState.$playabilityStatus.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t *MusicItemState.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(*v0 + 128);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE17PlayabilityStatusOGMd);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 136);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE23PreviewCapabilityStatusOGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t Player.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MusicItemState<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicItemState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized closure #1 in closure #1 in Task.withTimeout(_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 136) = a6;
  *(v6 + 128) = a1;
  *(v6 + 120) = a5;
  v7 = type metadata accessor for DispatchTime();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = type metadata accessor for DispatchWorkItemFlags();
  *(v6 + 208) = swift_task_alloc();

  return _swift_task_switch(specialized closure #1 in closure #1 in Task.withTimeout(_:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in Task.withTimeout(_:)()
{
  v1 = v0[23];
  v11 = v0[22];
  v14 = v0[21];
  v2 = v0[19];
  v12 = v0[24];
  v13 = v0[20];
  v15 = v0[18];
  v3 = v0[15];
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[6] = partial apply for specialized closure #1 in closure #1 in closure #1 in Task.withTimeout(_:);
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_275;
  _Block_copy(v0 + 2);
  v0[14] = _swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v0[28] = DispatchWorkItem.init(flags:block:)();

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v1 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v12, v11);
  static DispatchTime.now()();
  + infix(_:_:)();
  v7 = *(v2 + 8);
  v7(v13, v15);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v7(v14, v15);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in closure #1 in Task.withTimeout(_:);
  v9 = v0[17];

  return Task.value.getter(v8, v9, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in Task.withTimeout(_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in Task.withTimeout(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 216);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVyyts5NeverO_GMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Task<(), Never>.Timeout and conformance Task<A, B>.Timeout, &_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVyyts5NeverO_GMd);
    v2 = swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 216);
    swift_beginAccess();
    if ((*(v3 + 16) & 1) == 0)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      swift_allocError();
      *v4 = v2;
      swift_errorRetain();
      swift_continuation_throwingResumeWithError();
    }

    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    swift_continuation_throwingResume();

    v5 = *(v0 + 8);
  }

  return v5();
}

{
  v1 = v0[30];
  v2 = v0[27];
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    swift_allocError();
    *v3 = v1;
    swift_errorRetain();
    swift_continuation_throwingResumeWithError();
  }

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[24];
  v13 = v0[23];
  v16 = v0[22];
  v2 = v0[20];
  v14 = v0[25];
  v15 = v0[21];
  v17 = v0[19];
  v3 = v0[16];
  v4 = swift_allocObject();
  v0[28] = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[6] = partial apply for specialized closure #1 in closure #1 in closure #1 in Task.withTimeout(_:);
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_287;
  _Block_copy(v0 + 2);
  v0[14] = _swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v0[29] = DispatchWorkItem.init(flags:block:)();

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v1 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v13);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v14, v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v7 = *(v2 + 8);
  v7(v15, v17);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v7(v16, v17);
  v8 = swift_task_alloc();
  v0[30] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22MPCPlayerCommandStatusCSgMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v0[31] = v10;
  *v8 = v0;
  v8[1] = specialized closure #1 in closure #1 in Task.withTimeout(_:);
  v11 = v0[18];

  return Task.value.getter(v0 + 15, v11, v9, v10, &protocol self-conformance witness table for Error);
}

{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in Task.withTimeout(_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in Task.withTimeout(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 224);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVySo22MPCPlayerCommandStatusCSgs5Error_p_GMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Task<MPCPlayerCommandStatus?, Error>.Timeout and conformance Task<A, B>.Timeout, &_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVySo22MPCPlayerCommandStatusCSgs5Error_p_GMd);
    v2 = swift_allocError();
    swift_willThrow();

    v3 = *(v0 + 224);
    swift_beginAccess();
    if ((*(v3 + 16) & 1) == 0)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
      swift_allocError();
      *v4 = v2;
      swift_errorRetain();
      swift_continuation_throwingResumeWithError();
    }

    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 128);
    dispatch thunk of DispatchWorkItem.cancel()();
    v8 = *(v0 + 120);
    **(*(v7 + 64) + 40) = v8;
    v9 = v8;
    swift_continuation_throwingResume();

    v10 = *(v0 + 8);

    return v10(v8);
  }
}

{
  v1 = v0[32];
  v2 = v0[28];
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    swift_allocError();
    *v3 = v1;
    swift_errorRetain();
    swift_continuation_throwingResumeWithError();
  }

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t specialized closure #1 in closure #1 in closure #1 in Task.withTimeout(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(a5, a3);
  v8 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_allocError();
  *v9 = v8;
  return swift_continuation_throwingResumeWithError();
}

uint64_t Player.NowPlayingObserver.init(player:)()
{
  v0 = specialized Player.NowPlayingObserver.init(player:)();

  return v0;
}

uint64_t Player.NowPlayingObserver.isSharedListeningSession.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type Player.NowPlayingObserver and conformance Player.NowPlayingObserver, type metadata accessor for Player.NowPlayingObserver);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id Player.NowPlayingObserver.updateProperties(with:)(void *a1)
{
  swift_getKeyPath();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type Player.NowPlayingObserver and conformance Player.NowPlayingObserver, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = a1;
  v4 = *(v1 + 16);
  if (result)
  {
    result = [result isSharedListeningSession];
    if (v4 == result)
    {
      return result;
    }

    if (result == *(v1 + 16))
    {
      *(v1 + 16) = result;
      return result;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in Player.NowPlayingObserver.init(player:)(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    *(result + 24) = v1;
    v4 = v1;

    Player.NowPlayingObserver.updateProperties(with:)(v1);
  }

  return result;
}

uint64_t Player.NowPlayingObserver.isSharedListeningSession.getter()
{
  swift_getKeyPath();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type Player.NowPlayingObserver and conformance Player.NowPlayingObserver, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t key path getter for Player.NowPlayingObserver.isSharedListeningSession : Player.NowPlayingObserver@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type Player.NowPlayingObserver and conformance Player.NowPlayingObserver, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

void (*Player.NowPlayingObserver.isSharedListeningSession.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type Player.NowPlayingObserver and conformance Player.NowPlayingObserver, type metadata accessor for Player.NowPlayingObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return Player.NowPlayingObserver.isSharedListeningSession.modify;
}

void Player.NowPlayingObserver.isSharedListeningSession.modify(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t Player.NowPlayingObserver.deinit()
{

  v1 = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Player.NowPlayingObserver.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t key path getter for SharePlayTogetherSession.connectedParticipantsCount : SharePlayTogetherSession@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for SharePlayTogetherSession.connectedParticipantsCount : SharePlayTogetherSession(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void key path setter for Player.playerResponse : Player(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  static Published.subscript.setter();
  Player.playerResponse.didset();
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v20 = *(v13 - 8);
    outlined init with take of Player.CommandIssuance(v12 + *(v20 + 72) * v7, a2, type metadata accessor for PushNotificationObserver.RegisteredHandler);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo13MPCPlayerPathC_So24OS_dispatch_source_timer_pTt1g5(v4, v7);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo13MPCPlayerPathC_So24OS_dispatch_source_timer_pTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo13MPCPlayerPathCSo24OS_dispatch_source_timer_pGMd);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24OS_dispatch_source_timer_pMd);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      Hasher.init(_seed:)();
      if (v10)
      {
        Hasher._combine(_:)(1uLL);
        v12 = v11;

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
        v13 = v11;
      }

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
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v40 = a2 + 64;
    v38 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v39 = v7;
    do
    {
      v45 = v3;
      v43 = 56 * v6;
      v8 = *(v2 + 48) + 56 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 32);
      v42 = *(v8 + 40);
      v44 = *(v8 + 48);
      Hasher.init(_seed:)();
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v9;
      }

      Hasher._combine(_:)(*&v12);
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      Hasher._combine(_:)(*&v13);

      String.hash(into:)();
      Hasher._combine(_:)(*(v11 + 16));
      v14 = *(v11 + 16);
      if (v14)
      {
        v15 = (v11 + 80);
        do
        {
          v16 = *(v15 - 6);
          v17 = *(v15 - 5);
          v19 = *(v15 - 2);
          v18 = *(v15 - 1);
          v21 = *v15;
          v15 += 7;
          v20 = *&v21;
          if (v16 == 0.0)
          {
            v16 = 0.0;
          }

          Hasher._combine(_:)(*&v16);
          if (v17 == 0.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v17;
          }

          Hasher._combine(_:)(*&v22);

          String.hash(into:)();
          Hasher._combine(_:)(v19);
          Hasher._combine(_:)(v18);
          Hasher._combine(_:)(v20);

          --v14;
        }

        while (v14);
      }

      if (v44)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v42;
        }

        else
        {
          v23 = 0;
        }

        Hasher._combine(_:)(v23);
      }

      v2 = a2;
      v3 = v45;
      v24 = Hasher._finalize()();

      v25 = v24 & v39;
      if (v45 >= v38)
      {
        v4 = v40;
        if (v25 < v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v40;
        if (v25 >= v38)
        {
          goto LABEL_30;
        }
      }

      if (v45 >= v25)
      {
LABEL_30:
        v26 = *(a2 + 48);
        v27 = v26 + 56 * v45;
        v28 = (v26 + v43);
        if (56 * v45 < v43 || v27 >= v28 + 56 || v45 != v6)
        {
          v29 = *v28;
          v30 = v28[1];
          v31 = v28[2];
          *(v27 + 48) = *(v28 + 6);
          *(v27 + 16) = v30;
          *(v27 + 32) = v31;
          *v27 = v29;
        }

        v32 = *(a2 + 56);
        v33 = (v32 + 8 * v45);
        v34 = (v32 + 8 * v6);
        if (v45 != v6 || v33 >= v34 + 1)
        {
          *v33 = *v34;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v39;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v35 = *(v2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v37;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = NSObject._rawHashValue(seed:)(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
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
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

BOOL specialized Player.canPerform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  __swift_project_boxed_opaque_existential_0Tm(v10, v11);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    v7 = MPCPlayerResponse.canPerform(_:)(v10);
  }

  else
  {
    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v7;
}

uint64_t specialized closure #1 in closure #1 in Task.withTimeout(_:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = specialized closure #1 in closure #1 in Task.withTimeout(_:);

  return specialized closure #1 in closure #1 in Task.withTimeout(_:)(a5, a6, a2);
}

uint64_t specialized closure #1 in closure #1 in Task.withTimeout(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t specialized Player.NowPlayingConfiguration.BadCountedSet.makeIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  return result;
}

char *specialized MusicItemState.init(item:musicKitItemState:player:)(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a1;
  v72 = a3;
  v69 = a2;
  *&v82 = *v3;
  v5 = v82;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd);
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v76 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMd);
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v79 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  __chkstk_darwin(v10 - 8);
  v83 = &v64 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd);
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMd);
  v14 = *(v13 - 8);
  v74 = v13;
  v75 = v14;
  __chkstk_darwin(v13);
  v68 = &v64 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE23PreviewCapabilityStatusOGMd);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v17 = &v64 - v16;
  v64 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v18 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE17PlayabilityStatusOGMd);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  __chkstk_darwin(v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5;
  v3[4] = &_swiftEmptyArrayStorage;
  v29 = v3 + 4;
  v30 = *(v28 + 128);
  (*(v31 + 104))(v27, enum case for MusicPlayer.PlayabilityStatus.playable(_:));
  v82 = *(v82 + 80);
  v32 = v27;
  v33 = v29;
  property wrapper backing initializer of MusicItemState.playabilityStatus(v32, v34, v35);
  (*(v22 + 32))(&v4[v30], v24, v21);
  v36 = *(*v4 + 136);
  v37 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v38 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v38 - 8) + 104))(v20, v37, v38);
  (*(v18 + 104))(v20, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v64);
  property wrapper backing initializer of MusicItemState.previewCapabilityStatus(v20, v39, v40);
  (*(v65 + 32))(&v4[v36], v17, v66);
  v41 = v69;
  (*(*(v82 - 8) + 16))(&v4[*(*v4 + 120)], v71);
  v42 = v72;
  *(v4 + 2) = v41;
  *(v4 + 3) = v42;

  MusicItemState.updatePlayabilityStatus()();
  dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
  MusicItemState.previewCapabilityStatus.setter(v20);
  v43 = v67;
  dispatch thunk of MusicPlayer.ItemState.$playabilityStatus.getter();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v44 = static OS_dispatch_queue.main.getter();
  v84 = v44;
  v45 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v46 = *(v45 - 8);
  v47 = v83;
  v71 = *(v46 + 56);
  v72 = v45;
  v66 = v46 + 56;
  v71(v83, 1, 1);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicPlayer.PlayabilityStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd);
  v48 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v49 = v68;
  v50 = v47;
  v51 = v70;
  v65 = v48;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v50, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v73 + 8))(v43, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v82;
  *(v53 + 32) = v52;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicPlayer.PlayabilityStatus>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMd);

  v54 = v74;
  Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v49, v54);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  *&v82 = v33;
  v55 = v76;
  dispatch thunk of MusicPlayer.ItemState.$previewCapabilityStatus.getter();
  v56 = static OS_dispatch_queue.main.getter();
  v84 = v56;
  v57 = v83;
  (v71)(v83, 1, 1, v72);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicPlayer.PreviewCapabilityStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd);
  v58 = v78;
  v59 = v79;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v57, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v77 + 8))(v55, v58);
  v60 = swift_allocObject();
  swift_weakInit();

  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v41;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicPlayer.PreviewCapabilityStatus>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMd);

  v62 = v81;
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v59, v62);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v4;
}

char *specialized MusicItemState.__allocating_init(item:musicKitItemState:player:)(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for MusicItemState();
  swift_allocObject();
  return specialized MusicItemState.init(item:musicKitItemState:player:)(a1, a2, a3);
}

uint64_t sub_100212168()
{

  return swift_deallocObject();
}

uint64_t sub_1002121A8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for OS_dispatch_queue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #7 in Player.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #7 in Player.init()(a1, v4, v5, v6);
}

uint64_t specialized Player.NowPlayingObserver.init(player:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMd);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGGMd);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v30;
  v17 = *(v1 + 24);
  *(v1 + 24) = v30;
  v24 = v16;

  Player.NowPlayingObserver.updateProperties(with:)(v16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18 = static OS_dispatch_queue.main.getter();
  v30 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v4, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v25 + 8))(v7, v5);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MPCPlayerResponse?>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMd);
  v20 = v26;
  Publisher.dropFirst(_:)();
  (*(v27 + 8))(v11, v20);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Drop<Publishers.ReceiveOn<Published<MPCPlayerResponse?>.Publisher, OS_dispatch_queue>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGGMd);
  v21 = v28;
  Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v15, v21);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_100212908()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100212964()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t specialized Player.NowPlayingConfiguration.tracklistRange.getter(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  for (i = 0uLL; v4; i = vbslq_s8(vcgtq_s64(v9, i), v9, i))
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(result + 48) + ((v7 << 10) | (16 * v8)));
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return i.i64[0];
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Player.CommandIssuance(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player.CommandIssuance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Player.CommandIssuance(uint64_t a1)
{
  v2 = type metadata accessor for Player.CommandIssuance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100212B50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_GGMd);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v4);

  v6 = v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo17MPCPlayerResponseCSg_GGMd) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v14 = *(v1 + 16);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + v7 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Player.performWhenAvailable(_:options:issuer:timeout:)(a1, v14, v8, v1 + v4, v1 + v5, v9, v10, v11);
}

uint64_t partial apply for specialized closure #1 in closure #1 in Task.withTimeout(_:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #1 in Task.withTimeout(_:)(a1, v7, v4, v5, v6, v8);
}

{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #1 in Task.withTimeout(_:)(v7, a1, v4, v5, v6, v8);
}

unint64_t lazy protocol witness table accessor for type Player.CommandError and conformance Player.CommandError()
{
  result = lazy protocol witness table cache variable for type Player.CommandError and conformance Player.CommandError;
  if (!lazy protocol witness table cache variable for type Player.CommandError and conformance Player.CommandError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.CommandError and conformance Player.CommandError);
  }

  return result;
}

uint64_t sub_100212F34()
{
  v1 = *(type metadata accessor for Player.CommandIssuance() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Player.perform(_:options:issuer:)(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Player.CommandIssuance() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in Player.perform(_:options:issuer:)(a1, a2, v8, v9, v2 + v6, v10, v11);
}

unint64_t lazy protocol witness table accessor for type BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay() and conformance BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay()()
{
  result = lazy protocol witness table cache variable for type BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay() and conformance BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay();
  if (!lazy protocol witness table cache variable for type BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay() and conformance BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay() and conformance BufferedAirPlayError #1 in Player.prepareForBufferedAirPlay());
  }

  return result;
}

uint64_t partial apply for closure #2 in Player.prepareForBufferedAirPlay()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Player.prepareForBufferedAirPlay()(a1, v4, v5, v6);
}

uint64_t objectdestroy_90Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1002133CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t partial apply for closure #1 in Player.NowPlayingObserver.isSharedListeningSession.setter()
{
  return partial apply for closure #1 in Player.NowPlayingObserver.isSharedListeningSession.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Player.EngineState and conformance Player.EngineState()
{
  result = lazy protocol witness table cache variable for type Player.EngineState and conformance Player.EngineState;
  if (!lazy protocol witness table cache variable for type Player.EngineState and conformance Player.EngineState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.EngineState and conformance Player.EngineState);
  }

  return result;
}

uint64_t sub_10021357C@<X0>(uint64_t *a1@<X8>)
{
  result = Player.nowPlayingObserver.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002135A8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver) = *a1;
}

uint64_t sub_100213708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_100213760(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  Player.engineState.didset(v5);
}

void type metadata completion function for Player()
{
  type metadata accessor for Published<MPCPlayerPath>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<MPCPlayerResponse?>, &_sSo17MPCPlayerResponseCSgMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<MPCPlayerPath?>, &_sSo13MPCPlayerPathCSgMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<SharePlayTogetherSession?>, &_s9MusicCore24SharePlayTogetherSessionCSgMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<Bool>();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<MPCPlayerPath>()
{
  if (!lazy cache variable for type metadata for Published<MPCPlayerPath>)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for MPCPlayerPath);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<MPCPlayerPath>);
    }
  }
}

void type metadata accessor for Published<MPCPlayerResponse?>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata instantiation function for Player.NowPlayingConfiguration.BadCountedSet()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for MusicItemState()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<MusicPlayer.PreviewCapabilityStatus>(319, &lazy cache variable for type metadata for Published<MusicPlayer.PlayabilityStatus>, &type metadata accessor for MusicPlayer.PlayabilityStatus);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<MusicPlayer.PreviewCapabilityStatus>(319, &lazy cache variable for type metadata for Published<MusicPlayer.PreviewCapabilityStatus>, &type metadata accessor for MusicPlayer.PreviewCapabilityStatus);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<MusicPlayer.PreviewCapabilityStatus>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for Player.NowPlayingObserver()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC25prepareForBufferedAirPlaySo9MPAVRouteCSgyYaKF0fgH5ErrorL_O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void specialized Player.DataSource.controller(_:defersResponseReplacement:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a3);
  if (![a1 request])
  {
    return;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = *(a2 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged);
    if ([a1 response])
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
LABEL_12:
        v10 = v9;
        v7(v6);
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    v9 = 0;
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100213F58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Player.sharePlayTogetherSession.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Player.sharePlayTogetherSession.didset(a1, v4, v5, v7, v6);
}

uint64_t sub_10021408C()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in Task.withTimeout(_:)()
{
  return specialized closure #1 in closure #1 in closure #1 in Task.withTimeout(_:)(*(v0 + 16), *(v0 + 24), &_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVyyts5NeverO_GMd, &_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVyyts5NeverO_GMR, &lazy protocol witness table cache variable for type Task<(), Never>.Timeout and conformance Task<A, B>.Timeout);
}

{
  return specialized closure #1 in closure #1 in closure #1 in Task.withTimeout(_:)(*(v0 + 16), *(v0 + 24), &_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVySo22MPCPlayerCommandStatusCSgs5Error_p_GMd, &_sScT9MusicCoreE7Timeout33_031AD420BBF8BBF113A2662767DAC2BBLLVySo22MPCPlayerCommandStatusCSgs5Error_p_GMR, &lazy protocol witness table cache variable for type Task<MPCPlayerCommandStatus?, Error>.Timeout and conformance Task<A, B>.Timeout);
}

void outlined consume of MPCPlayerResponse??(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t specialized closure #1 in closure #1 in Task.withTimeout(_:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 144) = a2;
  *(v3 + 136) = a3;
  *(v3 + 128) = a1;
  v4 = type metadata accessor for DispatchTime();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  *(v3 + 184) = v5;
  *(v3 + 192) = *(v5 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = type metadata accessor for DispatchWorkItemFlags();
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(specialized closure #1 in closure #1 in Task.withTimeout(_:), 0, 0);
}

uint64_t sub_100214B54()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Player.requestSharePlayTogether(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in Player.requestSharePlayTogether(completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100214CA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Player.path.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Player.path.didset(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #4 in Player.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #4 in Player.init()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #3 in Player.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #3 in Player.init()(a1, v4, v5, v6);
}

uint64_t outlined init with take of Player.CommandIssuance(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100214FF4()
{

  return swift_deallocObject();
}

uint64_t sub_100215038()
{

  return swift_deallocObject();
}

uint64_t static Player.InsertCommand.Location.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return !a2;
    }

    if (a1 == 1)
    {
      return a2 == 1;
    }

LABEL_10:
    if (a2 >= 4)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      return a2 == 3;
    }

    goto LABEL_10;
  }

  return a2 == 2;
}

uint64_t Player.CommandOptions.with(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v6 = a5;
  a1(&v8);
  return v8;
}

uint64_t static Player.CommandOptions.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  a1(&v2);
  return v2;
}

BOOL MPCPlayerResponse.canPerform(_:)(uint64_t a1)
{
  outlined init with copy of ActionPerforming(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC8_Command_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of ActionPerforming(v7, v10);
    v2 = v11;
    v3 = v12;
    __swift_project_boxed_opaque_existential_0Tm(v10, v11);
    v4 = (*(v3 + 24))(v1, v2, v3);
    v5 = v4 != 0;
    if (v4)
    {
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    outlined destroy of Player._Command?(v7);
    return 0;
  }

  return v5;
}

uint64_t MPCPlayerResponse.canPerform(anyOf:)(uint64_t a1)
{
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    return (*(v3 + 16))(v1, a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Player.CommandIssuance.init(uuid:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for Player.CommandIssuance() + 20));
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(a4, a1, v9);
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t MPCPlayerResponse.perform(_:issuance:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = MPCPlayerResponse.perform(_:issuance:options:);

  return specialized MPCPlayerResponse.perform(_:issuance:options:)(a1, a2, a3, a4);
}

{
  *(v5 + 152) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  return _swift_task_switch(MPCPlayerResponse.perform(_:issuance:options:), 0, 0);
}

uint64_t MPCPlayerResponse.perform(_:issuance:options:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = MPCPlayerResponse.perform(_:issuance:options:);
  }

  else
  {
    v5 = v3[15];
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0Tm(v5 + 32);
    v4 = MPCPlayerResponse.perform(_:issuance:options:);
  }

  return _swift_task_switch(v4, 0, 0);
}

unint64_t Player.CommandOptions.description.getter(uint64_t a1, char a2, void *a3)
{
  type metadata accessor for MPCPlayerChangeRequestOptions(0);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6F69747563657865;
  v6._object = 0xEA00000000003D6ELL;
  String.append(_:)(v6);

  _StringGuts.grow(_:)(24);

  if (a2)
  {
    v7 = 7562585;
  }

  else
  {
    v7 = 28494;
  }

  if (a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x80000001004CD2F0;
  String.append(_:)(v10);

  if (a3)
  {
    v11 = a3;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x3D6574756F72202CLL;
    v17._object = 0xE800000000000000;
    String.append(_:)(v17);
  }

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return 0xD000000000000016;
}

uint64_t Player.CommandIssuance.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Player.CommandIssuance.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Player.CommandIssuance.origin.getter()
{
  v1 = *(v0 + *(type metadata accessor for Player.CommandIssuance() + 20));

  return v1;
}

uint64_t Player.CommandIssuance.origin.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Player.CommandIssuance() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t Player.CommandIssuance.description.getter()
{
  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D44495555;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);

  v3 = (v0 + *(type metadata accessor for Player.CommandIssuance() + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    String.append(_:)(*(&v4 - 1));
    v6._countAndFlagsBits = 0x6E696769726F202CLL;
    v6._object = 0xE90000000000003DLL;
    String.append(_:)(v6);
  }

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000017;
}

id Player.PlaybackCommand.request(from:)(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = &selRef_stop;
    }

    else
    {
      v3 = a1;
      result = [a1 play];
      if (result)
      {
        return result;
      }

      v2 = &selRef_pause;
      a1 = v3;
    }
  }

  else if (a2)
  {
    v2 = &selRef_pause;
  }

  else
  {
    v2 = &selRef_play;
  }

  return [a1 *v2];
}

id Player.ChangeCommand.request(from:)(void *a1, uint64_t a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 changeItemCommand];

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (v4)
        {
          v5 = [v4 nextChapter];
          goto LABEL_22;
        }

        break;
      case 4:
        if (v4)
        {
          v5 = [v4 previousSection];
          goto LABEL_22;
        }

        return 0;
      case 5:
        if (v4)
        {
          v5 = [v4 nextSection];
          goto LABEL_22;
        }

        break;
      default:
LABEL_16:
        if (v4)
        {
          v5 = [v4 changeToItem:a2];
          goto LABEL_22;
        }

        return 0;
    }

    return 0;
  }

  if (!a2)
  {
    if (v4)
    {
      v5 = [v4 previousItem];
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (v4)
    {
      v5 = [v4 nextItem];
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 != 2)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 previousChapter];
LABEL_22:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

id Player.ShuffleCommand.request(from:)(void *a1, char a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 shuffleCommand];

  if (!a2)
  {
    if (v4)
    {
      v5 = [v4 advance];
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (v4)
    {
      v5 = [v4 setShuffleType:1];
      goto LABEL_9;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 setShuffleType:0];
LABEL_9:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

id Player.FavoriteCommand.request(from:)(void *a1, char a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 playingItem];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 likeCommand];

  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v6 = a2 == 1;
  }

  else
  {
    v6 = [v5 value] ^ 1;
  }

  v8 = [v5 changeValue:v6];
  swift_unknownObjectRelease();
  return v8;
}

id Player.RepeatCommand.request(from:)(void *a1, unsigned __int8 a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 repeatCommand];

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (v4)
      {
        v5 = [v4 setRepeatType:1];
        goto LABEL_12;
      }
    }

    else if (v4)
    {
      v5 = [v4 setRepeatType:2];
      goto LABEL_12;
    }

    return 0;
  }

  if (a2)
  {
    if (v4)
    {
      v5 = [v4 setRepeatType:0];
      goto LABEL_12;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 advance];
LABEL_12:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

id Player.QueueEndCommand.request(from:)(void *a1, unsigned __int8 a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 actionAtQueueEndCommand];

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v5 = 0;
      v6 = 0;
      if (!v4)
      {
        return v6;
      }

      goto LABEL_12;
    }

    if (v4)
    {
      v5 = 2;
      goto LABEL_12;
    }

    return 0;
  }

  if (a2 != 2)
  {
    if (v4)
    {
      v5 = 1;
      goto LABEL_12;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 3;
LABEL_12:
  v6 = [v4 setQueueEndAction:v5];
  swift_unknownObjectRelease();
  return v6;
}

void Player.InsertCommand.Location.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
    return;
  }

  if (!a2)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  Hasher._combine(_:)(v2);
}

Swift::Int Player.InsertCommand.Location.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v2 = 2;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(1uLL);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Player.InsertCommand.Location()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(1uLL);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Player.InsertCommand.Location()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
    return;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Player.InsertCommand.Location()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(1uLL);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Player.InsertCommand.Location(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

LABEL_10:
      if (v3 >= 4)
      {
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

id Player.InsertCommand.request(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 tracklist];
  v6 = [v5 insertCommand];

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (v6)
      {
        v7 = [v6 insertAtEndOfUpNextWithPlaybackIntent:a2];
        goto LABEL_17;
      }

      return 0;
    }

    if (a3 == 3)
    {
      if (v6)
      {
        v8 = [v6 insertAfterLastSection];
        if (v8)
        {
          v9 = [v8 insertWithPlaybackIntent:a2];
          swift_unknownObjectRelease();
LABEL_18:
          swift_unknownObjectRelease();
          return v9;
        }

        swift_unknownObjectRelease();
      }

      return 0;
    }
  }

  else
  {
    if (!a3)
    {
      if (v6)
      {
        v7 = [v6 insertAfterPlayingItemWithPlaybackIntent:a2];
        goto LABEL_17;
      }

      return 0;
    }

    if (a3 == 1)
    {
      if (v6)
      {
        v7 = [v6 insertAtEndOfTracklistWithPlaybackIntent:a2];
LABEL_17:
        v9 = v7;
        goto LABEL_18;
      }

      return 0;
    }
  }

  if (v6)
  {
    v7 = [v6 insertPlaybackIntent:a2 afterItem:a3];
    goto LABEL_17;
  }

  return 0;
}

unint64_t Player.InsertCommand.description.getter(void *a1, void *a2)
{
  _StringGuts.grow(_:)(38);

  v4 = a1;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x697461636F6C202CLL;
  v10._object = 0xEB000000003D6E6FLL;
  String.append(_:)(v10);
  outlined copy of Player.InsertCommand.Location(a2);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 10537;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  return 0xD000000000000015;
}

uint64_t static Player.InsertCommand.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (a2 != 3)
      {
        return a4 >= 4 && (static NSObject.== infix(_:_:)() & 1) != 0;
      }

      if (a4 != 3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a4 == 1;
      }

      return a4 >= 4 && (static NSObject.== infix(_:_:)() & 1) != 0;
    }

    if (a4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Player.InsertCommand(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      return v3 >= 4 && (static NSObject.== infix(_:_:)() & 1) != 0;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      return v3 >= 4 && (static NSObject.== infix(_:_:)() & 1) != 0;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

id Player.ClearCommand.request(from:)(void *a1, char a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 resetCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = &selRef_clearUpNextItems;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_clear;
  }

  v6 = [v4 *v5];
  swift_unknownObjectRelease();
  return v6;
}

id Player.ReplaceCommand.request(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 tracklist];
  v6 = [v5 resetCommand];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 replaceWithPlaybackIntent:a2 replaceIntent:a3];
  swift_unknownObjectRelease();
  return v7;
}

unint64_t Player.ReplaceCommand.description.getter(void *a1)
{
  _StringGuts.grow(_:)(44);

  v2 = a1;
  v3 = [v2 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._object = 0x80000001004CD370;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 10537;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  return 0xD000000000000016;
}

id protocol witness for Player._Command.request(from:) in conformance Player.ReplaceCommand(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [a1 tracklist];
  v5 = [v4 resetCommand];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 replaceWithPlaybackIntent:v2 replaceIntent:v3];
  swift_unknownObjectRelease();
  return v6;
}

uint64_t static Player.MoveCommand.Location.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Player.MoveCommand.Location(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  return static NSObject.== infix(_:_:)() & 1;
}

id Player.MoveCommand.request(from:)(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = [a1 tracklist];
  v9 = [v8 reorderCommand];

  if ((a4 & 1) == 0)
  {
    if (v9)
    {
      v10 = [v9 moveItem:a2 beforeItem:v7];
      goto LABEL_6;
    }

LABEL_7:

    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [v9 moveItem:a2 afterItem:v7];
LABEL_6:
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

BOOL static Player.LeaveSessionCommand.isAvailable(in:)(void *a1)
{
  v1 = [a1 leaveSession];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id Player.LeaveSessionCommand.request(from:)(void *a1)
{
  v1 = [a1 leaveSession];

  return v1;
}

uint64_t Player.BuildSharedSessionCommand.init(intentHandler:)()
{
  v0 = objc_allocWithZone(ICLiveLinkIdentity);
  v4[4] = CFRange.init(_:);
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v4[3] = &block_descriptor_32;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

BOOL static Player.BuildSharedSessionCommand.isAvailable(in:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 playingItem];

  if (v2)
  {
  }

  return v2 != 0;
}

id Player.BuildSharedSessionCommand.request(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
  v9[3] = &block_descriptor_8;
  v6 = _Block_copy(v9);

  v7 = [a1 createSharedSessionWithIdentity:a2 intentHandler:v6];
  _Block_release(v6);
  return v7;
}

id protocol witness for Player._Command.request(from:) in conformance Player.BuildSharedSessionCommand(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v9[4] = v3;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
  v9[3] = &block_descriptor_126;
  v6 = _Block_copy(v9);

  v7 = [a1 createSharedSessionWithIdentity:v4 intentHandler:v6];
  _Block_release(v6);
  return v7;
}

id Player.SeekCommand.request(from:)(void *a1, uint64_t a2, char a3)
{
  v5 = [a1 tracklist];
  v6 = [v5 playingItem];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 seekCommand];

  if (!v7)
  {
    return 0;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v8 = [v7 changePositionToElapsedInterval:*&a2];
    }

    else
    {
      v8 = [v7 endSeek];
    }
  }

  else
  {
    v8 = [v7 beginSeekWithDirection:a2];
  }

  v10 = v8;
  swift_unknownObjectRelease();
  return v10;
}

void Player.JumpCommand.resolvedTimeInterval(for:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1)
  {
    v5 = [a1 tracklist];
    v6 = [v5 playingItem];

    v7 = [v6 seekCommand];
    v8 = a3;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v8 = a3;
    if (!a3)
    {
LABEL_6:
      swift_unknownObjectRelease();
      return;
    }
  }

  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    if (v7)
    {
      v9 = [v7 preferredForwardJumpIntervals];
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_27;
        }

        goto LABEL_12;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((v10 & 0xC000000000000001) != 0)
        {
          goto LABEL_28;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_20:
          v12 = *(v10 + 32);
LABEL_21:
          v13 = v12;

          static Double._conditionallyBridgeFromObjectiveC(_:result:)();
          swift_unknownObjectRelease();

          return;
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_27:
      swift_unknownObjectRelease();
    }
  }

  else if (v7)
  {
    v11 = [v7 preferredBackwardJumpIntervals];
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
LABEL_26:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v10 & 0xC000000000000001) == 0)
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        goto LABEL_20;
      }

LABEL_28:
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

BOOL static Player.FavoriteCommand.isAvailable(in:)(void *a1, SEL *a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 playingItem];

  v5 = [v4 *a2];
  if (v5)
  {
    swift_unknownObjectRelease();
  }

  return v5 != 0;
}

id Player.JumpCommand.request(from:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = [a1 tracklist];
  v7 = [v6 playingItem];

  v8 = [v7 seekCommand];
  Player.JumpCommand.resolvedTimeInterval(for:)(a1, a2, a3);
  if (a3 != 1)
  {
    if (v8)
    {
      v9 = &selRef_jumpByInterval_;
      goto LABEL_6;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = &selRef_changePositionToElapsedInterval_;
LABEL_6:
  v10 = [v8 *v9];
  swift_unknownObjectRelease();
  return v10;
}